//------------------------------------------------------------------------------
// WTarka
// QdtmComm.pas
// Kommunikációs paraméter file kezelõ osztály
// 2010.02.26 Pathó Endre
//------------------------------------------------------------------------------
unit uCommParfile;

interface

uses
  SysUtils, Classes, Forms, ADODB, uTALStoredProc, DB, DBClient, IniFiles,
  Contnrs, uTALSimpleDataSet, uTALConnection, StrUtils;

const
  // leválogatandó csomag
//  out_parfile_name = 'C:\wtarka\komm\tarka_out.par';

  tarka_out = 'DUMPFILE=%s' + #13#10 +
              'DIRECTORY=PUMP_DIR_OUT' + #13#10 +
              'LOGFILE=%s ' + #13#10 +
              'EXCLUDE=TRIGGER' + #13#10 +
              'CONTENT=DATA_ONLY' + #13#10 +
              'TABLES=%s' + #13#10 +
              'QUERY=%s';

  // befelé jövõ csomag
//  in_parfile_name  = 'C:\wtarka\komm\tarka_in.par';

  tarka_in  = 'DIRECTORY=PUMP_DIR_IN' + #13#10 +
              'FULL=y' + #13#10 +
              'CONTENT=DATA_ONLY' + #13#10 +
              'REMAP_SCHEMA=TARKA:KOMM' + #13#10 +
              'TABLE_EXISTS_ACTION=TRUNCATE' + #13#10 +
              'DUMPFILE=%s' + #13#10 +
              'LOGFILE=%s';
var
  in_parfile_name : string;
  out_parfile_name : string;


type
  TTableInfo = class
    TableName : string;
    Where : string;
    ChangedWhere : string;
    SeqName : string;
    ResolvedField : string;
    ResolverFunc : string;
    SiteWhere : string;
    SpecMerge : string;
  end;


  TParfile = class
  private
    FTables : TObjectList;
    sdsCommTable : TTalSimpleDataSet;
    procedure CollectCommTables;
    function GetTables(i: integer): string;
    function GetSequences(i: integer): string;
    function GetResolved(i: integer): string;
    function GetResolver(i: integer): string;
    function GetInfo(i: integer): TTableInfo;
  public
    constructor Create(aDataSet: TTalSimpleDataSet);
    destructor Free;
    function TableList: string;
    function WhereList(const Center: boolean; const Site: string): string; overload;
    function WhereList(const Center: boolean; const Site, DateStr: string): string; overload;
    function TableCount : integer;
    function PrepareOutParfile(const FirstPack, Center: boolean; const DmpFile, LogFile, Site, DateFrom: string): string;
    function PrepareInParfile(const DmpFile, LogFile: string): string;
    property Tables[i: integer]: string read GetTables;
    property Sequences[i: integer]: string read GetSequences;
    property ResolvedField[i: integer]: string read GetResolved;
    property ResolverFunc[i: integer]: string read GetResolver;
    property InfoRec[i: integer]: TTableInfo read GetInfo;
  end;

implementation

uses udtmTarka;


constructor TParfile.Create(aDataSet: TTalSimpleDataSet);
begin
  FTables := TObjectList.Create;
  sdsCommTable := aDataSet;

  CollectCommTables;
end;


destructor TParfile.Free;
begin
  FTables.Free;
end;


// Kommunikációs táblák összeszedése
procedure TParfile.CollectCommTables;
var
  ti :TTableInfo;
begin
  FTables.Clear;

  sdsCommTable.Close;
  sdsCommTable.Open;

  while not sdsCommTable.Eof do
  begin
    ti := TTableInfo.Create;
    ti.TableName := sdsCommTable.FieldByName('TABLE_NAME').AsString;
    ti.Where := sdsCommTable.FieldByName('WHERE_CLAUSE').AsString;
    ti.ChangedWhere := sdsCommTable.FieldByName('CHANGED_WHERE').AsString;
    ti.SeqName := sdsCommTable.FieldByName('SEQ_NAME').AsString;
    ti.ResolvedField := sdsCommTable.FieldByName('RESOLVED_FIELD').AsString;
    ti.ResolverFunc := sdsCommTable.FieldByName('RESOLVER_FUNC').AsString;
    ti.SiteWhere := sdsCommTable.FieldByName('SITE_WHERE').AsString;
    ti.SpecMerge := sdsCommTable.FieldByName('SPEC_MERGE').AsString;
    FTables.Add(ti);
    
    sdsCommTable.Next;
  end;

  sdsCommTable.Close;
end;

// Táblák listája
function TParfile.TableList: string;
var
  i : integer;
begin
  Result := '';

  for i := 0 to FTables.Count-1 do
    if Result = EmptyStr then
      Result := TTableInfo(FTables.Items[i]).TableName
    else
      Result := Result + ',' + TTableInfo(FTables.Items[i]).TableName;
end;


// Elsõ csomag where listájának összeállítása
function TParfile.WhereList(const Center: boolean; const Site: string): string;
var
  i : integer;
  SQLWhere : string;
begin
  Result := '';

  for i := 0 to FTables.Count-1 do
  begin
    if Center then
      SQLWhere := TTableInfo(FTables.Items[i]).Where
    else
      SQLWhere := TTableInfo(FTables.Items[i]).SiteWhere;

    if SQLWhere <> EmptyStr then
      if Result = EmptyStr then
        Result := TTableInfo(FTables.Items[i]).TableName + ':"' + Format(SQLWhere, [QuotedStr(Site)]) + '"'
      else
        Result := Result + ',' + TTableInfo(FTables.Items[i]).TableName+ ':"' + Format(SQLWhere, [QuotedStr(Site)]) + '"';
  end;
end;


// Változás csomag where listájának összeállítása
function TParfile.WhereList(const Center: boolean; const Site, DateStr: string): string;
var
  i : integer;
  SQLWhere : string;
begin
  Result := '';

  for i := 0 to FTables.Count-1 do
  begin
    if Center then
      SQLWhere := TTableInfo(FTables.Items[i]).ChangedWhere
    else
      SQLWhere := TTableInfo(FTables.Items[i]).SiteWhere;

    if Result = EmptyStr then
      Result := TTableInfo(FTables.Items[i]).TableName + ':"' + Format(SQLWhere, [QuotedStr(DateStr), QuotedStr(Site)]) + '"'
    else
      Result := Result + ',' + TTableInfo(FTables.Items[i]).TableName+ ':"' + Format(SQLWhere, [QuotedStr(DateStr), QuotedStr(Site)]) + '"';
  end;
end;


// kifelé menõ csomag paraméter file összállítása
function TParfile.PrepareOutParfile(const FirstPack, Center: boolean; const DmpFile, LogFile, Site, DateFrom: string): string;
var
  f : TextFile;
  par : string;
begin
  if FirstPack then
  begin
    if Center then
      par := Format(tarka_out, [DmpFile, LogFile, TableList, WhereList(Center, Site)])
    else
      par := Format(tarka_out, [DmpFile, LogFile, TableList, WhereList(Center, Site, DateFrom)]);    
  end
  else
    par := Format(tarka_out, [DmpFile, LogFile, TableList, WhereList(Center, Site, DateFrom)]);

  // paraméter file képzése
  out_parfile_name := dtmTarka.AppPath + '\komm\tarka_out.par';


  AssignFile(f, out_parfile_name);
  Rewrite(f);
  WriteLn(f, par);
  CloseFile(f);

  Result := out_parfile_name;
end;


// Táblák száma
function TParfile.TableCount: integer;
begin
  Result := FTables.Count;
end;


// Index szerinti tábla név visszaadás
function TParfile.GetTables(i: integer): string;
begin
  Result := TTableInfo(FTables.Items[i]).TableName;
end;


// befelé jövõ csomag paraméter file összállítása
function TParfile.PrepareInParfile(const DmpFile, LogFile: string): string;
var
  f : TextFile;
  par : string;
begin
  par := Format(tarka_in, [DmpFile, LogFile]);
  in_parfile_name  := dtmTarka.AppPath + '\komm\tarka_in.par';

  // paraméter file képzése
  AssignFile(f, in_parfile_name);
  Rewrite(f);
  WriteLn(f, par);
  CloseFile(f);

  Result := in_parfile_name;
end;


// index alapján sequence visszaadása
function TParfile.GetSequences(i: integer): string;
begin
  Result := TTableInfo(FTables.Items[i]).SeqName;
end;


// index alapján a feloldott mezõnév visszaadása
function TParfile.GetResolved(i: integer): string;
begin
  Result := TTableInfo(FTables.Items[i]).ResolvedField;
end;


// index alapján a feloldó függvény visszaadása
function TParfile.GetResolver(i: integer): string;
begin
  Result := TTableInfo(FTables.Items[i]).ResolverFunc;
end;


// table info visszaadása
function TParfile.GetInfo(i: integer): TTableInfo;
begin
  Result := TTableInfo(FTables.Items[i]);
end;

end.
