//------------------------------------------------------------------------------
// WTarka
// QdtmComm.pas
// Kommunik�ci�s elj�r�sok
// 2010.02.17 Path� Endre
//------------------------------------------------------------------------------
unit udtmComm;

interface

uses
  Windows, SysUtils, Classes, Forms, ADODB, uTALStoredProc, DB, DBClient,
  IniFiles, uTALSimpleDataSet, uTALConnection, Variants, uCommParfile, FMTBcd,
  Dialogs, uTALDataset, uTalQuery;


// Ne t�r�ld ki!! Compiler direkt�va
{$J+}

const
  // Telephely
  Telep = 'Depot';
  Center = 'Center';

  // �llom�ny nevek
  CommDataFileName = 'komm_data.dmp';
  CommLogFileName  = 'komm.log';

  // be�rkez� csomag helye
//  CommInboxDir : string = 'c:\wtarka\komm\inbox\';

  // lok�lis telephely
  SQLLocalSite = 'select tenyeszet from param';

  // jogok a l�trehozott t�bl�khoz
  GrantRights = 'grant select, insert, update, delete on KOMM.%s to TARKA';

  // t�bla takar�t�sa
  TruncateTable = 'truncate table %s';

  // comm status m�dos�t�sa
  SetOutStatus = 'update comm_pack_out set status = 1 where id = %s';
  SetInStatus = 'update comm_pack_in set status = 1 where id = %s';

  // adatfile l�trehoz�s�hoz, bet�lt�s�hez sz�ks�ges parancs
  //RunOutput = 'exp tarka/tarka TABLES=%s TRIGGERS=n FILE=%s LOG=%s QUERY=\"WHERE CHANGED >= TO_DATE(%s, ''yyyy.mm.dd HH24:mi:ss'')\"';
  RunOutput = 'expdp tarka/tarka PARFILE=%s';
  RunInput = 'impdp komm/komm PARFILE=%s';

  SQLFieldList = 'SELECT COLUMN_NAME' +
                 '  FROM USER_TAB_COLUMNS ' +
                 ' WHERE TABLE_NAME = %s ' +
                 ' ORDER BY COLUMN_ID';

  {
  ///////////////////////////////////////////////////////////////
  // Egyszer� p�ros�t�s
  select SRC.* from KOMM.FAJTA SRC
  left join TARKA.FAJTA DEST on DEST.ROW_ID = SRC.ROW_ID

  ///////////////////////////////////////////////////////////////
  // Minta mondat
  merge into FAJTA DST
  using (select * from KOMM.FAJTA) SRC
   on (SRC.ROW_ID = DST.ROW_ID)
   when matched then update set DST.FKOD = SRC.FKOD, DST.FNEV = SRC.FNEV, DST.PRI = SRC.PRI, DST.CHANGED = TO_DATE('2000.01.01','yyyy.mm.dd')
   when not matched then insert (DST.FKOD, DST.FNEV, DST.PRI, DST.CHANGED) values (SRC.FKOD, SRC.FNEV, SRC.PRI, TO_DATE('2000.01.01','yyyy.mm.dd'));
  }

  // Adatm�dos�t� elj�r�s
  SimpleMerge = 'merge into %s DST ' +
                'using (select * from KOMM.%s) SRC ' +
                ' on (SRC.ROW_ID = DST.ROW_ID) ' +
                ' when matched then update set %s ' +
                ' when not matched then insert (%s) values (%s)';

  // t�rl�si inform�ci�k beemel�se
  InsertDelInfo = 'INSERT INTO COMM_DEL_COMMAND ( TABLE_NAME, ROW_ID, CHANGE_DATE, STATUS ) '+
                  'SELECT TABLE_NAME, ROW_ID, CHANGE_DATE, ''0'' FROM KOMM.COMM_DEL_INFO SRC '+
                  'WHERE NOT EXISTS(SELECT 1 FROM COMM_DEL_COMMAND CDC WHERE CDC.TABLE_NAME = SRC.TABLE_NAME AND CDC.ROW_ID = SRC.ROW_ID)';

  // t�rl�s v�grehajt�s
  ExecDelCommand = 'delete from %s where row_id = %s';

type
  TdtmComm = class(TDataModule)
  // TdtmComm = class(TForm)
    sdsPackIn: TTalSimpleDataSet;
    sdsPackOut: TTalSimpleDataSet;
    sdsCommTable: TTalSimpleDataSet;
    prcPackIn: TTalStoredProc;
    prcPackOut: TTalStoredProc;
    ConnKomm: TTalConnection;
    sdsPackOutID: TBCDField;
    sdsPackOutDEST_SITE: TWideStringField;
    sdsPackOutPACK_NR: TIntegerField;
    sdsPackOutPACK_DATE: TDateTimeField;
    sdsPackOutFROM_DATE: TDateTimeField;
    sdsPackOutTO_DATE: TDateTimeField;
    sdsPackOutSTATUS: TBCDField;
    sdsPackInID: TBCDField;
    sdsPackInSRC_SITE: TWideStringField;
    sdsPackInPACK_NR: TIntegerField;
    sdsPackInPACK_DATE: TDateTimeField;
    sdsPackInFROM_DATE: TDateTimeField;
    sdsPackInTO_DATE: TDateTimeField;
    sdsPackInSTATUS: TBCDField;
    dsDelCommand: TTalDataset;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FParfile : TParfile;
    function GetLocalSite: string;
    function GenerateOutput(PackNr: integer; DestSite, DateFrom: string) : boolean;
    function CompressPack(PackNr: integer; DestSite: string) : boolean;
    function LoadInput(FileName: string) : boolean;
    function LoadPack : boolean;
    function GetTableUpdateFields(Info: TTableInfo): string;
    procedure GetTableInsertFields(Info: TTableInfo; var FieldListA, FieldListB: string);
    procedure GetFieldNames(TableName: string; List: TStringList);
    function DeleteData: boolean;
  public
    { Public declarations }
    IsCenter : boolean;  // k�zpont-e
    PackFilePath : string;
    CommInboxDir : string;
    function IsLinux : boolean;
    function OutboxPath: string;
    function InboxPath: string;
    function GetDestSite : string;
    function CommOut(DestSite: string) : boolean;
    function CommIn(FileName: string): boolean;
    procedure KommLevalogatas;
    procedure KommBeolvasas;
    function Comm_pack_in(P_SITE:string; P_PACKNR:integer; P_DEST:string): integer;
  end;

var
  dtmComm: TdtmComm;

implementation

uses udtmTarka, QSysTools, ufrmMain;

{$R *.dfm}

{ TdtmComm }
// Datamodul l�trehoz�sa
procedure TdtmComm.DataModuleCreate(Sender: TObject);
var
  CurrentIniFile : string;
  CurrentIniPath : string;
  ConnStr : string;
  IniFile : TIniFile;
begin
  IsCenter := False;

  // inifile megnyit�sa
  GetDir(0, CurrentIniPath);
  CurrentIniFile := CurrentIniPath + '\WTarka.ini';
  IniFile := TIniFile.Create(CurrentIniFile);

  CommInboxDir := dtmTarka.AppPath +  '\komm\inbox\';


  try
    ConnStr := IniFile.ReadString(dtmTarka.SectionName, 'CommConnectionString', '');
    ConnKomm.Close;
    ConnKomm.ConnectionString := ConnStr;
  finally
    IniFile.Free;
  end;

  try
    ConnKomm.Open;
  except
    Dialogs.ShowMessage('Hiba a komm adatb�zishoz kapcsol�d�s k�zben!' + #10#13 +
                        '   K�rem ellen�rizze a param�tereket!' );
    Exit;
  end;

  sdsPackIn.Connection := dtmTarka.cnTarka;
  sdsPackOut.Connection := dtmTarka.cnTarka;
  sdsCommTable.Connection := dtmTarka.cnTarka;
  prcPackIn.Connection := dtmTarka.cnTarka;
  prcPackOut.Connection := dtmTarka.cnTarka;
  dsDelCommand.Connection := dtmTarka.cnTarka;
  FParfile := TParfile.Create(sdsCommTable);

end;


// Datamodul felszabad�t�sa
procedure TdtmComm.DataModuleDestroy(Sender: TObject);
begin
  FParfile.Free;
end;


// Kommunik�ci�s lev�logat�s �s csomagk�pz�s
function TdtmComm.CommOut(DestSite: string): boolean;
var
  PackNr : integer;
  Id : variant;
  StartDate : string;
begin
  Log('== Kommunik�ci�s lev�logat�s elindult v1.0 ==');
  Log('C�mzett: ' + DestSite);

  {if (DestSite = GetLocalSite()) then
    raise Exception.Create('Nem lehet �nmag�nak csomagot k�sz�teni!');}

  // csomag sor legener�l�sa a proc_comm_out t�rolt �ltal
  prcPackOut.Parameters.ParamByName('P_SITE').Value := DestSite;
  prcPackOut.ExecProc;
  Id := prcPackOut.Parameters.ParamByName('P_PACK_ID').Value;
  prcPackOut.Close;

  // sor adatainak kiolvas�sa, csomagsz�m �s d�tum miatt
  sdsPackOut.Close;
  sdsPackOut.DataSet.Parameters.ParamByName('P_ID').Value := Id;
  sdsPackOut.Open;

  PackNr := sdsPackOut.FieldByName('PACK_NR').AsInteger;
//  StartDate := FormatDateTime('yyyy.mm.dd hh.mm.ss', sdsPackOut.FieldByName('FROM_DATE').AsDateTime);
  StartDate := sdsPackOut.FieldByName('FROM_DATE').AsString;
  sdsPackOut.Close;

  Log(Format('Comm Id: %s Csomagsz�m: %d, Ind�t� d�tum: %s', [VarToStr(Id), PackNr, StartDate]));

  try
    // bulk adatok lev�logat�sa, a comm_table t�bl�ban megadott t�bl�kra
    if GenerateOutput(PackNr, DestSite, StartDate) then
    begin
      // t�m�r�t�s, csomag �llom�ny k�pz�s
      Result := CompressPack(PackNr, DestSite);

      // �llapot vissza�r�sa
      dtmTarka.cnTarka.Execute(Format(SetOutStatus, [VarToStr(id)]));

      Log('== Kommunik�ci�s lev�logat�s lefutott ==');
    end
    else
    begin
      Result := False;
      Log('== Kommunik�ci�s lev�logat�s nem siker�lt ==');
    end;
  except
    on E: Exception do
    begin
      Result := False;
      Log('== Kommunik�ci�s lev�logat�s nem siker�lt ==');
      Log(E.Message);
    end;
  end;
end;


// Kommunik�ci�s lev�logat�s �s csomagk�pz�s
function TdtmComm.CommIn(FileName: string): boolean;
var
  PackNr : integer;
  Id : variant;
  SenderSite : string;
  DestSite : string;
  wStr : string;
begin
  Log('== Kommunik�ci�s beolvas�s elindult v1.0 ==');

  if (FileName = EmptyStr) then
    raise Exception.Create('Nincs adat file!');

  // csomag adatainak �sszegy�jt�se
  // File n�v fel�p�t�se: komm_forras_cel_pckNr.pck
  wStr := ExtractFileName(FileName);
  wStr := Copy(wStr, 6, Length(wStr));

  // K�ld�
  SenderSite := Copy(wStr, 1, Pos('_', wStr) - 1);
  wStr := Copy(wStr, Length(SenderSite) + 2, Length(wStr)); // +2 a '_' miatt

  // Fogad�
  DestSite := Copy(wStr, 1, Pos('_', wStr) - 1);
  wStr := Copy(wStr, Length(DestSite) + 2, Length(wStr)); // +2 a '_' miatt

  wStr := Copy(wStr, 1, Pos('.pck', wStr) - 1);

  if not TryStrToInt(wStr, PackNr) then
    raise Exception.Create('Nem megfelel� a csomagn�v!');

  if (SenderSite = GetLocalSite()) then
    raise Exception.Create('Nem lehet �nmag�t�l csomagot fogadni!');

  // Felad� �s c�mzett ellen�rz�se
  //......

  // csomag sor legener�l�sa a proc_comm_in t�ro�lt �ltal
(*
  prcPackIn.Connection := dtmTarka.cnTarka;
  prcPackIn.Parameters.ParamByName('P_SITE').Value := SenderSite;
  prcPackIn.Parameters.ParamByName('P_PACKNR').Value := PackNr;
  prcPackIn.Parameters.ParamByName('P_DEST').Value := DestSite;

  try
    prcPackIn.ExecProc;
  except
    on E:Exception do
    begin
      Log(E.Message);
      Log('== Kommunik�ci�s beolvas�s nem siker�lt ==');
      Result := False;
      Exit;
    end;
  end;

  Id := prcPackIn.Parameters.ParamByName('P_PACK_ID').Value;
  prcPackIn.Close;
*)
  Id := dtmComm.Comm_pack_in(SenderSite, PackNr, DestSite);
  Log(Format('Comm Id: %s K�ld�: %s, Fogad�: %s, Csomagsz�m: %d', [VarToStr(Id), SenderSite, DestSite, PackNr]));

  try
    // bulk adatok bet�lt�se, a komm s�m�ba
    if LoadInput(FileName) then
    begin
      // csomag adatok ellen�rz�se
      // ....

      // t�m�r�t�s, csomag �llom�ny k�pz�s
      Result := LoadPack;

      // t�rl�sek �tvezet�se
      if Result then
        Result := DeleteData;

      // sor �llapot m�dos�t�s, ha az eredm�ny ok
      if Result then
        dtmTarka.cnTarka.Execute(Format(SetInStatus, [VarToStr(id)]));

      Log('== Kommunik�ci�s beolvas�s lefutott ==');
    end
    else
    begin
      Result := False;
      Log('== Kommunik�ci�s beolvas�s nem siker�lt ==');
    end;
  except
    on E: Exception do
    begin
      Result := False;
      Log('== Kommunik�ci�s beolvas�s nem siker�lt ==');
      Log(E.Message);
    end;
  end;
end;


// Csomag kompressz�l�sa �s elnevez�se
function TdtmComm.CompressPack(PackNr: integer; DestSite: string): boolean;
var
  Local : string;
  DmpFile : string;
  OutFile : string;
begin
  //lok�lis telephely k�dja
  if IsCenter then
    Local := Center
  else
    Local := GetLocalSite;

  // �llom�ny nevek, windows
  if not IsLinux then
  begin
    DmpFile := dtmTarka.AppPath + '\komm\outbox\' + CommDataFileName;
    OutFile := dtmTarka.AppPath + '\komm\outbox\komm_' +  Local + '_' + DestSite + '_' + IntToStr(PackNr) + '.pck';
  end
  else // linux eset�n, a linux samba megoszt�sa KELL a / a v�g�re!
  begin
    DmpFile := OutboxPath + CommDataFileName;
    OutFile := OutboxPath + 'komm_' +  Local + '_' + DestSite + '_' + IntToStr(PackNr) + '.pck';
  end;

  Result := RenameFile(DmpFile, OutFile);

  if Result then
      PackFilePath := OutFile
  else
      PackFilePath := '';
end;


// Kimen� kommunik�ci�s csomag l�trehoz�sa
function TdtmComm.GenerateOutput(PackNr: integer; DestSite, DateFrom : string): boolean;
var
  DmpFile : string;
begin
  // output �llom�nyok
  DmpFile := dtmTarka.AppPath + '\komm\outbox\' + CommDataFileName;

  // c�l ter�let t�rl�se
  if FileExists(DmpFile) then
    DeleteFile(DmpFile);

  // Export�l�s
  try
    log(Format(RunOutput, [FParfile.PrepareOutParfile(PackNr=1, IsCenter, CommDataFileName, CommLogFileName, DestSite, DateFrom)]));
    RunApplication(Format(RunOutput, [FParfile.PrepareOutParfile(PackNr=1, IsCenter, CommDataFileName, CommLogFileName, DestSite, DateFrom)]), []);
    Result := FileExists(DmpFile);
  except
    on E:Exception do
    begin
      Log(E.Message);
      Result := False;
    end;
  end
end;


// DestSite kiolvas�sa a WTraka.ini �llom�nyb�l
function TdtmComm.GetDestSite: string;
var
  Ini : TIniFile;
  FileName : string;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'wtarka.ini';
  Ini := TIniFile.Create(FileName);
  try
    Result := Ini.ReadString('Comm', 'DestSite', Telep);
  finally
    Ini.Free;
  end;
end;


// Lok�lis telephely kiolvas�sa a param t�bml�b�l
function TdtmComm.GetLocalSite: string;
var
  aData : _RecordSet;
begin
  aData := dtmTarka.cnTarka.Execute(SQLLocalSite);

  if not VarIsNull(aData.Fields.Item[0].Value) then
    Result := aData.Fields.Item[0].Value
  else
    Result := '';
end;


// Csomag fizikai bet�lt�se
function TdtmComm.LoadInput(FileName: string): boolean;
var
  i : integer;
  DmpFile : string;
begin
  DmpFile := ExtractFileName(FileName);

  // Linux eset�n m�shova m�solunk, a linux samba megoszt�s�ra
  if IsLinux then
    CommInboxDir := InboxPath;

  log( ExtractFilePath(FileName));
  log(CommInboxDir);
  // file m�sol�sa megfelel� mapp�ba
  if AnsiLowerCase(ExtractFilePath(FileName)) <> AnsiLowerCase(CommInboxDir) then
  begin
    // file m�sol�s
    if not CopyFile(PChar(FileName), PChar(CommInboxDir + DmpFile), False) then
      raise Exception.Create('File m�sol�s sikertelen');
  end;

  ConnKomm.Open;

  // T�bl�k takar�t�sa
  for i := 0 to FParfile.TableCount -1 do
    ConnKomm.Execute(Format(TruncateTable, [FParfile.Tables[i]]));

  ConnKomm.Close;

  // bet�lt�s
  try
    RunApplication(Format(RunInput, [FParfile.PrepareInParfile(DmpFile, CommLogFileName)]), []);
    Result := True;
  except
    on E:Exception do
    begin
      Log(E.Message);
      Result := False;
    end;
  end
end;


// Csomag adatok bet�lt�se
function TdtmComm.LoadPack: boolean;
var
  i : integer;
  SQLStmt : string;
  DstFields, SrcFields : string;
  // Test : TextFile;
begin
  Log('Adatok �tvezet�se');

  //AssignFile(Test, 'c:\test_file.sql');
  //Rewrite(Test);

  {
  ConnKomm.Open;
  try
    // Jogosults�g oszt�s
    for i := 0 to FParfile.TableCount -1 do
      ConnKomm.Execute(Format(GrantRights, [FParfile.Tables[i]]));
      //Writeln(Test, Format(GrantRights, [FParfile.Tables[i]]));
  finally
    ConnKomm.Close;
  end;
  }

  // beforgat� elj�r�s
  try
    dtmTarka.cnTarka.BeginTrans;

    for i := 0 to FParfile.TableCount -1 do
    begin
      // A COMM_DEL_INFO t�bl�t m�sk�pp kezelt�k!
      if FParfile.Tables[i] = 'COMM_DEL_INFO' then
        Continue;

      Log('Feldolgoz�s alatt:' + FParfile.Tables[i]);

      DstFields := '';
      SrcFields := '';

      if FParfile.InfoRec[i].SpecMerge = EmptyStr then
      begin
        GetTableInsertFields(FParfile.InfoRec[i], DstFields, SrcFields);

        SQLStmt := Format(SimpleMerge, [FParfile.Tables[i], FParfile.Tables[i], GetTableUpdateFields(FParfile.InfoRec[i]), DstFields, SrcFields]);
      end
      else
        SQLStmt := FParfile.InfoRec[i].SpecMerge;

      //Writeln(Test, SQLStmt);
      //Writeln(Test, '---------------------------');

      dtmTarka.cnTarka.Execute(SQLStmt);
    end;

    // T�rl�si inform�ci�k beemel�se
    Log('T�rl�si inform�ci�k beemel�se');
    dtmTarka.cnTarka.Execute(InsertDelInfo);

    //CloseFile(Test);
    Log('Ell�sek update');
    dtmTarka.EllesekUpdate('');

    Log('Tranzakci� �rv�nyes�t�se (COMMIT)');
    dtmTarka.cnTarka.CommitTrans;

    Result := True;
  except
    on E:Exception do
    begin
      //CloseFile(Test);

      Log(E.Message);
      Log(SQLStmt);
      dtmTarka.cnTarka.RollbackTrans;
      Result := False;
    end;
  end;
end;


// T�rl�s inform�ci�k feldolgoz�sa
function TdtmComm.DeleteData: boolean;
var
  TableName : string;
  Buffer : pointer;
  Src : pointer;
  RowId : array [0..15] of Byte;
  HexStr : string;
  i : integer;
begin
  dsDelCommand.Open;
  GetMem(Buffer, 32);
                               
  if not dsDelCommand.IsEmpty then
  begin
    dtmTarka.cnTarka.BeginTrans;
    try
      while not dsDelCommand.Eof do
      begin
        TableName := dsDelCommand.FieldByName('TABLE_NAME').AsString;
        dsDelCommand.FieldByName('ROW_ID').GetData(Buffer);

        // hex adat konvert�l�s "var�zsl�s"
        Src := Buffer;
        Inc(Longint(Src), 2);
        FillChar(RowId[0], 16, 0);
        Move(Src^, RowId[0], 16);
        HexStr := '';

        for i := 0 to 15 do
          HexStr := HexStr + IntToHex(RowId[i], 2);

        //t�rl�s
        dtmTarka.cnTarka.Execute(Format(ExecDelCommand, [TableName, QuotedStr(HexStr)]));

        // Fut�s vissza�r�sa
        dsDelCommand.Edit;
        dsDelCommand.FieldByName('STATUS').AsString := '1';
//        dsDelCommand.FieldByName('EXECUTED').AsDateTime := Now;
        dsDelCommand.Post;

        dsDelCommand.Next;
      end;

      dtmTarka.cnTarka.CommitTrans;
    except
      on E:Exception do
      begin
        Log(E.Message);
        dtmTarka.cnTarka.RollbackTrans;
      end;
    end;
  end;

  dsDelCommand.Close;
  FreeMem(Buffer, 32);
  Result := True;
end;


// T�bla mez�k visszaad�sa Update-hez
function TdtmComm.GetTableUpdateFields(Info: TTableInfo): string;
var
  AList : TStringList;
  FieldList : string;
  i : integer;
begin
  AList := TStringList.Create;
  try
    // lek�rj�k a mez�ket
    GetFieldNames(Info.TableName, AList);

    for i := 0 to AList.Count -1 do
    begin
      // id-t �s row_id-t kihagjuk a m�dos�t�sb�l
      if (AList[i] = 'ID') or (AList[i] = 'ROW_ID') then
        Continue;

      // telephelyen a 'CHANGED' mez� �rt�ke nem v�ltozik update eset�n
      if not IsCenter and (AList[i] = 'CHANGED') then
      begin
        FieldList := FieldList + 'DST."' + AList[i] + '" = TO_DATE(''2000.01.01'',''yyyy.mm.dd''),';
        Continue;
      end;

      // id felold�s
      if (AList[i] = Info.ResolvedField) then
      begin
        FieldList := FieldList + 'DST."' + AList[i] + '" = ' + Info.ResolverFunc +',';
        Continue;
      end;

      FieldList := FieldList + 'DST."' + AList[i] + '" = SRC."' + AList[i] + '",';
    end;

    // utols� vessz�t lev�gjuk
    Delete(FieldList, Length(FieldList), 1);

    Result := FieldList;
  finally
    AList.Free;
  end;
end;


// T�bla mez�k visszaad�sa insert-hez
procedure TdtmComm.GetTableInsertFields(Info: TTableInfo; var FieldListA, FieldListB: string);
var
  AList : TStringList;
  i : integer;
begin
  AList := TStringList.Create;
  try
    // lek�rj�k a mez�ket
    GetFieldNames(Info.TableName, AList);

    for i := 0 to AList.Count -1 do
    begin
      FieldListA := FieldListA + 'DST."' + AList[i] + '",';

      // �j id kioszt�sa
      if (AList[i] = 'ID') and (Info.SeqName <> EmptyStr) then
        FieldListB := FieldListB + Info.SeqName + '.NEXTVAL,'
      else if (AList[i] = Info.ResolvedField) then
        FieldListB := FieldListB + Info.ResolverFunc + ','
      else
        FieldListB := FieldListB + 'SRC."' + AList[i] + '",';
    end;

    // utols� vessz�t lev�gjuk
    Delete(FieldListA, Length(FieldListA), 1);
    Delete(FieldListB, Length(FieldListB), 1);
  finally
    AList.Free;
  end;
end;


// T�bla mez� nevek visszaad�sa
procedure TdtmComm.GetFieldNames(TableName: string; List: TStringList);
var
  aData : _RecordSet;
begin
  aData := dtmTarka.cnTarka.Execute(Format(SQLFieldList, [QuotedStr(TableName)]));

  while not aData.EOF do
  begin
    List.Add(aData.Fields.Item[0].Value);
    aData.MoveNext;
  end;
end;


// Komm lev�logat�s
procedure TdtmComm.KommLevalogatas;
var
  hol : string;
begin
  // K�zpont a be�ll�t�s, a leg�rd�l� kiv�lasztott telepnek v�logat le
  hol := GetDestSite;
  if UpperCase(hol) <> UpperCase(Center) then
  begin
    IsCenter := True;

    if (dtmTarka.TenyeszetTKOD = EmptyStr) then
      raise Exception.Create('Nincs kiv�lasztott teny�szet, akinek le kellene v�logatni');

    // lev�logat�s
    if CommOut(dtmTarka.TenyeszetTKOD) then
      dtmTarka.MsgDlg('A kommunik�ci�s lev�logat�s sikeresen megt�rt�nt! Az �llom�ny el�r�si helye:' + dtmComm.PackFilePath, mtInformation, [mbOK], 0)
    else
      dtmTarka.MsgDlg('Sikertelen lev�logat�s!', mtError, [mbOK], 0);
  end
  else
  begin
    // A telephely a k�zpont fel� v�logat le
    IsCenter := False;

    if (CommOut(Center)) then
      dtmTarka.MsgDlg('A kommunik�ci�s lev�logat�s sikeresen megt�rt�nt  Az �llom�ny el�r�si helye:' + dtmComm.PackFilePath, mtInformation, [mbOK], 0)
    else
      dtmTarka.MsgDlg('Sikertelen lev�logat�s!', mtError, [mbOK], 0);

  end;
end;


// Komm beolvas�s
procedure TdtmComm.KommBeolvasas;
var
  Dlg : TOpenDialog;
  FileName : string;
begin
  Dlg := TOpenDialog.Create(Application);
  try
    Dlg.Options := Dlg.Options + [ofNoChangeDir, ofPathMustExist, ofDontAddToRecent];
    if Dlg.Execute then
    begin
      FileName := Dlg.FileName;
      if CommIn(FileName) then
        dtmTarka.MsgDlg('A kommunik�ci�s beolvas�s sikeresen megt�rt�nt', mtInformation, [mbOK], 0)
      else
        dtmTarka.MsgDlg('Sikertelen beolvas�s!', mtError, [mbOK], 0);
    end;
  finally
    Dlg.Free;
  end;
end;

function TdtmComm.IsLinux: boolean;
var
  ds : TTalQuery;
begin
  ds := TTalQuery.Create(nil);
  ds.Connection := dtmTarka.cnTarka;
  ds.SQL.Add('select linux from param');
  ds.Open;
  Result := ds.FieldByName('LINUX').Value = 1;
  ds.Close;
  ds.Free;
end;


function TdtmComm.OutboxPath: string;
var
  ds : TTalQuery;
begin
  ds := TTalQuery.Create(nil);
  ds.Connection := dtmTarka.cnTarka;
  ds.SQL.Add('select OUTBOX_PATH from PARAM');
  ds.Open;
  Result := ds.FieldByName('OUTBOX_PATH').AsString;
  ds.Close;
  ds.Free;
end;


function TdtmComm.InboxPath: string;
var
  ds : TTalQuery;
begin
  ds := TTalQuery.Create(nil);
  ds.Connection := dtmTarka.cnTarka;
  ds.SQL.Add('select INBOX_PATH from PARAM');
  ds.Open;
  Result := ds.FieldByName('INBOX_PATH').AsString;
  ds.Close;
  ds.Free;
end;

function TdtmComm.Comm_pack_in(P_SITE: string; P_PACKNR: integer;
  P_DEST: string): integer;
var
  v_PACK_IN : integer;
  v_INV_PACK : integer;
  v_DATE : TDateTime;
  v_INSERT : integer;
  p_pack_id : integer;
  ds : TTalQuery;
  SQL : string;
begin
  // ha nincs csomagsz�m, az hiba
  IF P_PACKNR = 0 THEN begin
    dtmTarka.MsgDlg('Hi�nyz� P_PACKNR param�ter!', mtError, [mbOK], 0);
  END;

  Result := 0;
  v_INSERT := 1;  // kell insert

  IF P_DEST = '' THEN BEGIN
    // utols� csomag kikeres�se
    SQL := ' SELECT MAX(PACK_NR) as v_PACK_IN ' +
           ' FROM COMM_PACK_IN ' +
           ' WHERE STATUS = 1 AND SRC_SITE = ' + quotedstr(P_SITE);

    ds := TTalQuery.Create(nil);
    ds.Connection := dtmTarka.cnTarka;
    ds.SQL.Add(SQL);
    ds.Open;
    if ds.FieldByName('v_PACK_IN').IsNull then
      v_PACK_IN := 0
    else
      v_PACK_IN := ds.FieldByName('v_PACK_IN').Value;
    ds.Close;
    ds.Free;

  //  utols� hib�s csomag kikeres�se
    SQL := '  SELECT MAX(PACK_NR) as v_INV_PACK ' +
           ' FROM COMM_PACK_IN ' +
           ' WHERE STATUS != 1 AND SRC_SITE = ' + quotedstr(P_SITE);
             ds.Connection := dtmTarka.cnTarka;

    ds := TTalQuery.Create(nil);
    ds.Connection := dtmTarka.cnTarka;
    ds.SQL.Add(SQL);
    ds.Open;
    if  ds.FieldByName('v_INV_PACK').IsNull then
      v_INV_PACK := 0
    else
      v_INV_PACK := ds.FieldByName('v_INV_PACK').Value;
    ds.Close;
    ds.Free;

    // ha van hib�s csomag, akkor annak a sz�m�val dolgozunk
    IF (v_INV_PACK > 0) AND (v_INV_PACK > v_PACK_IN) (*AND (v_INV_PACK IS NOT NULL)*) THEN begin
      v_PACK_IN := v_INV_PACK;
      v_INSERT := 0;  // �s nem kell insert
    END ELSE IF P_PACKNR <> v_PACK_IN + 1 THEN BEGIN
      // csomagsz�m ellen?rz�s
      dtmTarka.MsgDlg('Invalid pack in PROC_COMM_IN procedure', mtError, [mbOK], 0);
    END;

    // az "to" ig d�tum kikeres�se
    sql := ' SELECT "TO_DATE" as v_DATE ' +
           ' FROM COMM_PACK_IN ' +
           '  WHERE SRC_SITE = ' + quotedstr(P_SITE) + ' AND PACK_NR = ' + IntToStr( v_PACK_IN);
    ds := TTalQuery.Create(nil);
    ds.Connection := dtmTarka.cnTarka;
    ds.SQL.Add(SQL);
    ds.Open;
    if ds.FieldByName('v_DATE').IsNull then
      v_DATE := StrToDate('2000.01.01')
    else
      v_DATE := ds.FieldByName('v_DATE').Value;
    ds.Close;
    ds.Free;

    // ha kell be�rni
    IF v_INSERT = 1 THEN begin
      // insert info into COMM_PACK_IN table

      sql := ' SELECT COMM_PACK_IN_SEQ.NEXTVAL INTO P_PACK_ID FROM DUAL';
      ds := TTalQuery.Create(nil);
      ds.Connection := dtmTarka.cnTarka;
      ds.SQL.Add(SQL);
      ds.Open;
      P_PACK_ID := ds.FieldByName('P_PACK_ID').Value;
      ds.Close;
      ds.Free;

      sql := ' INSERT INTO COMM_PACK_IN (ID ,SRC_SITE, PACK_NR, PACK_DATE ,FROM_DATE ,TO_DATE,STATUS)' +
             ' VALUES ( ' + intToStr( P_PACK_ID) +  ',' +
              quotedstr(P_SITE) + ',' +
              intToStr( P_PACKNR) + ', CURRENT_TIMESTAMP, ' +
              ' to_date( ' + quotedstr( DateToStr( v_DATE)) + ', ''YYYY.MM.DD''),' +
              ' CURRENT_TIMESTAMP, 0)';
      dtmTarka.cnTarka.Execute(SQL);

    end ELSE begin
      // hib�s csomag ID kikeres�se
      sql := 'SELECT COMM_PACK_IN.ID ' +
             ' AS P_PACK_ID ' +
             ' FROM COMM_PACK_IN ' +
             ' WHERE SRC_SITE = ' + quotedstr(P_SITE) + ' AND PACK_NR = ' + intToStr(v_PACK_IN);
      ds := TTalQuery.Create(nil);
      ds.Connection := dtmTarka.cnTarka;
      ds.SQL.Add(SQL);
      ds.Open;
      P_PACK_ID := ds.FieldByName('P_PACK_ID').Value;
      ds.Close;
      ds.Free;
    END;

  END ;

  IF P_DEST > ' ' THEN BEGIN
  // utols� csomag kikeres�se
    // utols� csomag kikeres�se
    SQL := ' SELECT MAX(PACK_NR) AS v_PACK_IN ' +
           ' FROM COMM_PACK_IN ' +
           ' WHERE STATUS = 1 AND SRC_SITE = ' + quotedstr(P_SITE) + ' AND dest_site = ' + quotedstr(p_dest);
    ds := TTalQuery.Create(nil);
    ds.Connection := dtmTarka.cnTarka;
    ds.SQL.Add(SQL);
    ds.Open;
    if ds.FieldByName('v_PACK_IN').IsNull then
      v_PACK_IN := 0
    else
      v_PACK_IN := ds.FieldByName('v_PACK_IN').Value;
    ds.Close;
    ds.Free;

  //  utols� hib�s csomag kikeres�se
    SQL := '  SELECT MAX(PACK_NR) AS v_INV_PACK ' +
           ' FROM COMM_PACK_IN ' +
           ' WHERE STATUS != 1 AND SRC_SITE = ' + quotedstr(P_SITE) + ' AND dest_site = ' + quotedstr(p_dest);
    ds := TTalQuery.Create(nil);
    ds.Connection := dtmTarka.cnTarka;
    ds.SQL.Add(SQL);
    ds.Open;
    if  ds.FieldByName('v_INV_PACK').IsNull then
      v_INV_PACK := 0
    else
      v_INV_PACK := ds.FieldByName('v_INV_PACK').Value;
    ds.Close;
    ds.Free;

    // ha van hib�s csomag, akkor annak a sz�m�val dolgozunk
    IF (v_INV_PACK > 0) AND (v_INV_PACK > v_PACK_IN) (*AND (v_INV_PACK IS NOT NULL)*) THEN begin
      v_PACK_IN := v_INV_PACK;
      v_INSERT := 0;  // �s nem kell insert
    END ELSE IF P_PACKNR <> v_PACK_IN + 1 THEN BEGIN
      // csomagsz�m ellen?rz�s
      dtmTarka.MsgDlg('Invalid pack in PROC_COMM_IN procedure', mtError, [mbOK], 0);
    END;

    // az "to" ig d�tum kikeres�se
    sql := ' SELECT "TO_DATE" AS v_DATE ' +
           ' FROM COMM_PACK_IN ' +
           '  WHERE SRC_SITE = ' + quotedstr(P_SITE) + ' AND PACK_NR = ' + IntToStr( v_PACK_IN) + ' AND dest_site = ' + quotedstr(p_dest);
    ds := TTalQuery.Create(nil);
    ds.Connection := dtmTarka.cnTarka;
    ds.SQL.Add(SQL);
    ds.Open;
    if ds.FieldByName('v_DATE').IsNull then
      v_DATE := StrToDate('2000.01.01')
    else
      v_DATE := ds.FieldByName('v_DATE').Value;
    ds.Close;
    ds.Free;

    // ha kell be�rni
    IF v_INSERT = 1 THEN begin
      // insert info into COMM_PACK_IN table

      sql := ' SELECT COMM_PACK_IN_SEQ.NEXTVAL AS P_PACK_ID FROM DUAL';
      ds := TTalQuery.Create(nil);
      ds.Connection := dtmTarka.cnTarka;
      ds.SQL.Add(SQL);
      ds.Open;
      P_PACK_ID := ds.FieldByName('P_PACK_ID').Value;
      ds.Close;
      ds.Free;

      sql := ' INSERT INTO COMM_PACK_IN (ID ,SRC_SITE, PACK_NR, PACK_DATE ,FROM_DATE ,TO_DATE,STATUS ,dest_site)' +
             ' VALUES ( ' + intToStr( P_PACK_ID) +  ',' +
              quotedstr(P_SITE) + ',' +
              intToStr( P_PACKNR) + ', CURRENT_TIMESTAMP, ' +
              ' to_date( ' + quotedstr(DateToStr( v_DATE)) + ', ''YYYY.MM.DD''),' +
              ' CURRENT_TIMESTAMP, 0,' + quotedstr(p_dest) + ')';
      dtmTarka.cnTarka.Execute(SQL);

    end ELSE begin
      // hib�s csomag ID kikeres�se
      sql := 'SELECT COMM_PACK_IN.ID ' +
             ' AS P_PACK_ID ' +
             ' FROM COMM_PACK_IN ' +
             ' WHERE SRC_SITE = ' + quotedstr(P_SITE) + ' AND PACK_NR = ' + intToStr(v_PACK_IN);
      ds := TTalQuery.Create(nil);
      ds.Connection := dtmTarka.cnTarka;
      ds.SQL.Add(SQL);
      ds.Open;
      P_PACK_ID := ds.FieldByName('P_PACK_ID').Value;
      ds.Close;
      ds.Free;
    END;
  end;
  Result := P_PACK_ID;
end;

end.
