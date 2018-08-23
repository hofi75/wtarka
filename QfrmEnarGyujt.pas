unit QfrmEnarGyujt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, StdCtrls, uTALLabel, ActnList, Buttons, uTALBitBtn,
  ExtCtrls, DB, ADODB, uTalQuery, frxClass, frxDBSet;

const
  cPsionPath = '\dbf\';
  cSQL = ' SELECT ' +
              ' CASE WHEN trim(e.szorsz) is null THEN ''HU'' ' +
              ' ELSE SUBSTR(E.szorsz,1,2) END AS ORSZAG, ' +
              ' SUBSTR(E.ENAR,LENGTH(E.ENAR)-10,10) AS AZON, ' +
              ' E.SZULDAT, ' +
              ' E.IVAR, ' +
              ' E.SZIN, ' +
              ' E.FAJTAKOD, ' +
              ' CASE WHEN ((trim(e.anya_enar) is null) and (trim(E.ANYA_id_ENAR) is not null))  THEN substr(e.anya_id_enar,1,2) ' +
              ' ELSE ''HU'' END AS ANYAORSZAG, ' +
              ' CASE WHEN ((trim(e.anya_enar) is null) and (trim(E.ANYA_id_ENAR) is not null))  THEN trim(e.anya_id_enar) ' +
              ' ELSE E.ANYA_ENAR END AS ANYA_AZON, ' +
              ' coalesce(E.IKER,0) as iker, ' +
              ' ELLESEK.ELLES_LEF, ' +
              ' BORJAK.BORJU_SULY, ' +
              ' CASE WHEN E.alldat IS NULL THEN E.SZULDAT ELSE ' +
              ' E.ALLDAT END AS BEKERULES ' +
              ' FROM EGYEDEK E ' +
              ' JOIN BORJAK ON BORJAK.BORJU_ENAR=E.enar ' +
              ' JOIN ELLESEK ON ELLESEK.ID=BORJAK.ELLESEK_ID ' +
              ' WHERE E.ENAR_BE_DATUM IS NULL AND TRIM(e.enar) IS NOT NULL ';

  cSQLHibaWhere = ' AND ((FAJTAKOD = '''') OR (trim(FAJTAKOD) IS NULL)) ';


type
  TfrmEnarGyujt = class(TfrmKarbOs)
    TalLabel1: TTalLabel;
    qryBejelent: TTalQuery;
    frxDBDataset1: TfrxDBDataset;
    qryHiba: TTalQuery;
    qryHibaORSZAG: TWideStringField;
    qryHibaAZON: TWideStringField;
    qryHibaSZULDAT: TDateTimeField;
    qryHibaIVAR: TWideStringField;
    qryHibaSZIN: TWideStringField;
    qryHibaFAJTAKOD: TWideStringField;
    qryHibaANYAORSZAG: TWideStringField;
    qryHibaANYA_AZON: TWideStringField;
    qryHibaIKER: TBCDField;
    qryHibaELLES_LEF: TWideStringField;
    qryHibaBORJU_SULY: TBCDField;
    qryHibaBEKERULES: TDateTimeField;
    frxRepLista: TfrxReport;
    qryBejelentORSZAG: TWideStringField;
    qryBejelentAZON: TWideStringField;
    qryBejelentSZULDAT: TDateTimeField;
    qryBejelentIVAR: TWideStringField;
    qryBejelentSZIN: TWideStringField;
    qryBejelentFAJTAKOD: TWideStringField;
    qryBejelentANYAORSZAG: TWideStringField;
    qryBejelentANYA_AZON: TWideStringField;
    qryBejelentIKER: TBCDField;
    qryBejelentELLES_LEF: TWideStringField;
    qryBejelentBORJU_SULY: TBCDField;
    qryBejelentBEKERULES: TDateTimeField;
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
    SQL : string;
    SQLHiba : string;
    Procedure EnarGyujt;
    function  Ellenorzes:boolean;
    procedure LegyujtottUpdate;
  public
    { Public declarations }
  end;

procedure OpenEnarGyujt;

implementation

uses udtmTarka, StrUtils;

{$R *.dfm}

procedure OpenEnarGyujt;
var
  frmEnarGyujt: TfrmEnarGyujt;
begin
  frmEnarGyujt := TfrmEnarGyujt.Create(Application);
  frmEnarGyujt.qryBejelent.Connection := dtmTarka.cnTarka;
  frmEnarGyujt.qryHiba.Connection := dtmTarka.cnTarka;
  frmEnarGyujt.qryHiba.SQL.clear;
  frmEnarGyujt.qryHiba.SQL.Add(cSQL + cSQLHibaWhere + dtmTarka.TenyeszetWhereE);
  frmEnarGyujt.qryBejelent.SQL.clear;
  frmEnarGyujt.qryBejelent.SQL.Add(cSQL + dtmTarka.TenyeszetWhereE);
  frmEnarGyujt.ShowModal;
  FreeAndNil(frmEnarGyujt);
end;



procedure TfrmEnarGyujt.EnarGyujt;
var
  FileName : string;
  OutFile  : TextFile;
  Buffer   : string;
  i : Integer;
begin
  FileName := dtmTarka.AppPath + cPsionPath + 'H'+dtmTarka.sTenyeszetKod+'.inp';
  if not FileExists(FileName) then
  begin
    try
    Screen.Cursor := crHourGlass;
    // állomány megnyitása
    AssignFile(OutFile, FileName);
    Rewrite(OutFile);
    qryBejelent.Open;
    i := 0;
    while not qryBejelent.Eof do begin
      Buffer := '30133';
      Buffer := Buffer + dtmTarka.sTenyeszetKod;
      Buffer := Buffer + qryBejelentORSZAG.AsString;
      Buffer := Buffer + qryBejelentAZON.AsString + '  ';
      Buffer := Buffer + FormatDateTime('YYYYMMDD',qryBejelentSZULDAT.AsDateTime);
      Buffer := Buffer + RightStr(' '+qryBejelentIVAR.AsString,1);
      Buffer := Buffer + RightStr(' '+qryBejelentSZIN.AsString,1);
      Buffer := Buffer + RightStr('  '+qryBejelentFAJTAKOD.AsString,2);
      Buffer := Buffer + '                     ';
      if qryBejelentANYAORSZAG.AsString = 'HU' then
        Buffer := Buffer + ' HU'
      else
        Buffer := Buffer + RightStr('   '+qryBejelentANYAORSZAG.AsString,3);

//      if leftstr(qryBejelentANYA_AZON.asstring,1) = '1' then
        Buffer := Buffer + leftStr(qryBejelentANYA_AZON.asstring+'             ',13) ;
(*        Buffer := Buffer + leftstr(RightStr(qryBejelentANYA_AZON.asstring,10) +'   ',13)
      else if leftstr(qryBejelentANYA_AZON.asstring,2) = 'HU' then
        Buffer := Buffer + leftstr(RightStr(qryBejelentANYA_AZON.asstring,10) +'   ',13)
      else
        Buffer := Buffer + leftStr(qryBejelentANYA_AZON.asstring+'             ',13) ;*)
      Buffer := Buffer + leftstr(trim(qryBejelentIKER.asstring)+' ',1);
      Buffer := Buffer + leftstr(trim(qryBejelentELLES_LEF.AsString)+' ',1);
      Buffer := Buffer + RightStr('00'+qryBejelentBORJU_SULY.AsString,2);
      Buffer := Buffer + '        '+#13#10;
      Write(OutFile, Buffer );
      i := i + 1;
      qryBejelent.Next;
    end;
    finally
      CloseFile(OutFile);
      Screen.Cursor := crArrow;
      dtmTarka.MsgDlg( IntToStr(i)+ ' db egyed adatainak legyûjtése megtörtént.'+#10#13+'A legyûjtött adatok a '+filename+' fájlban vannak.',mtInformation,[mbOK],0 );
    end;
    LegyujtottUpdate;
  end else begin
    dtmTarka.MsgDlg('A korábbi adatokat még nem küldte el, új legyûjtés nem lehetséges!'+#10#13+'A korábban legyûjtött adatok a '+filename+' fájlban vannak.',mtInformation,[mbOK],0 );
  end;
end;



procedure TfrmEnarGyujt.actOKExecute(Sender: TObject);
begin
  if Ellenorzes = false then begin
    Application.MessageBox('Pótolja a hiányzó fajta kódokat, majd ismételje meg a legyûjtést!', 'Figyelem', MB_OK);
    Inherited;
    exit;
  end;
  EnarGyujt;
  inherited;
end;

procedure TfrmEnarGyujt.LegyujtottUpdate;
var
  SQl : string;
begin
  SQL := 'UPDATE EGYEDEK SET ENAR_BE_DATUM = CURRENT_DATE '+
         ' WHERE TRIM(egyedek.enar) IS NOT NULL ' + dtmTarka.TenyeszetWhereS +
         ' AND EXISTS(SELECT 1 FROM EGYEDEK EG '+
         ' JOIN BORJAK ON BORJAK.BORJU_ENAR=EG.ENAR '+
         ' JOIN ELLESEK ON ELLESEK.ID=BORJAK.ELLESEK_ID '+
         ' WHERE EG.ID=EGYEDEK.ID and EG.ENAR_BE_DATUM IS NULL ) ';
  dtmTarka.cnTarka.BeginTrans;
  try
  try
    Screen.Cursor := crHourGlass;
    dtmTarka.cnTarka.Execute(SQL);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then begin
      dtmTarka.cnTarka.RollbackTrans;
    end;
  end;
  finally
    Screen.Cursor := crArrow;
  end;

end;

function TfrmEnarGyujt.Ellenorzes: boolean;
var
  db : integer;
begin
   db := 0;
   qryHiba.Open;
   while not qryHiba.eof do begin
     db := db + 1;
     qryHiba.Next;
   end;
   if db = 0 then begin
     result := true;
     exit;
   end;
   qryHiba.First;

   if frxRepLista.LoadFromFile(dtmTarka.fr3Path + '\HibasEnarGyujt.fr3') Then begin
     // paraméter átadás a lista fejhez
     frxRepLista.Variables.Clear;
     frxRepLista.Script.Variables['SzuroFeltetelek'] := '';
     frxRepLista.Script.Variables['Rendezettseg']:= '';
     frxRepLista.ShowReport;
   End;
   Result := false;
end;

end.
