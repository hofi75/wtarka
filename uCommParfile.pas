//------------------------------------------------------------------------------
// WTarka
// QdtmComm.pas
// Kommunik�ci�s param�ter file kezel� oszt�ly
// 2010.02.26 Path� Endre
//------------------------------------------------------------------------------
unit uCommParfile;

interface

uses
  SysUtils, Classes, Forms, ADODB, uTALStoredProc, DB, DBClient, IniFiles,
  Contnrs, uTALSimpleDataSet, uTALConnection, StrUtils;

const
  // lev�logatand� csomag
//  out_parfile_name = 'C:\wtarka\komm\tarka_out.par';

  tarka_out = 'DUMPFILE=%s' + #13#10 +
              'DIRECTORY=PUMP_DIR_OUT' + #13#10 +
              'LOGFILE=%s ' + #13#10 +
              'EXCLUDE=TRIGGER' + #13#10 +
              'CONTENT=DATA_ONLY' + #13#10 +
              'TABLES=%s' + #13#10 +
              'QUERY=%s';

  // befel� j�v� csomag
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


// Kommunik�ci�s t�bl�k �sszeszed�se
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

// T�bl�k list�ja
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


// Els� csomag where list�j�nak �ssze�ll�t�sa
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


// V�ltoz�s csomag where list�j�nak �ssze�ll�t�sa
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


// kifel� men� csomag param�ter file �ssz�ll�t�sa
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

  // param�ter file k�pz�se
  out_parfile_name := dtmTarka.AppPath + '\komm\tarka_out.par';


  AssignFile(f, out_parfile_name);
  Rewrite(f);
  WriteLn(f, par);
  CloseFile(f);

  Result := out_parfile_name;
end;


// T�bl�k sz�ma
function TParfile.TableCount: integer;
begin
  Result := FTables.Count;
end;


// Index szerinti t�bla n�v visszaad�s
function TParfile.GetTables(i: integer): string;
begin
  Result := TTableInfo(FTables.Items[i]).TableName;
end;


// befel� j�v� csomag param�ter file �ssz�ll�t�sa
function TParfile.PrepareInParfile(const DmpFile, LogFile: string): string;
var
  f : TextFile;
  par : string;
begin
  par := Format(tarka_in, [DmpFile, LogFile]);
  in_parfile_name  := dtmTarka.AppPath + '\komm\tarka_in.par';

  // param�ter file k�pz�se
  AssignFile(f, in_parfile_name);
  Rewrite(f);
  WriteLn(f, par);
  CloseFile(f);

  Result := in_parfile_name;
end;


// index alapj�n sequence visszaad�sa
function TParfile.GetSequences(i: integer): string;
begin
  Result := TTableInfo(FTables.Items[i]).SeqName;
end;


// index alapj�n a feloldott mez�n�v visszaad�sa
function TParfile.GetResolved(i: integer): string;
begin
  Result := TTableInfo(FTables.Items[i]).ResolvedField;
end;


// index alapj�n a felold� f�ggv�ny visszaad�sa
function TParfile.GetResolver(i: integer): string;
begin
  Result := TTableInfo(FTables.Items[i]).ResolverFunc;
end;


// table info visszaad�sa
function TParfile.GetInfo(i: integer): TTableInfo;
begin
  Result := TTableInfo(FTables.Items[i]);
end;

end.
