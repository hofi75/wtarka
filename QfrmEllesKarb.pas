unit QfrmEllesKarb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, StdCtrls, uTALLabel, Grids, Wwdbigrd, Wwdbgrid,
  uTALDBGrid, uTALPanel, ActnList, Buttons, ExtCtrls, DBCtrls, DB,
  uTALDBComboBox, uTALDBLookupComboBox, Mask, uValidedit, uDBValidedit,
  uTALDBEdit, uTALDBNavigator, uTALBitBtn, dbcgrids, uTALEdit, uTalParams,
  uTALSpeedButton, uTALCheckBox, Wwkeycb, uTALSearch, uTALMaskEdit, uTalQuery,
  uTALButton, wwcheckbox, uTALDBCheckBox;

const
  order = ' ORDER BY EGYEDEK.ENAR, EGYEDEK.FULSZAM, EGYEDEK.TEHENSZAM, E.ELLES_DATUM ';

type
  TfrmEllesKarb = class(TfrmKarbOs)
    TalPanel1: TTalPanel;
    TalLabel1: TTalLabel;
    TalLabel3: TTalLabel;
    TalLabel4: TTalLabel;
    lucEllLef: TTalDBLookupComboBox;
    TalPanel2: TTalPanel;
    edtAzonosito: TTalDBEdit;
    TalBitBtn1: TTalBitBtn;
    TalBitBtn2: TTalBitBtn;
    TalBitBtn3: TTalBitBtn;
    TalPanel3: TTalPanel;
    TalDBGrid1: TTalDBGrid;
    TalLabel8: TTalLabel;
    edtEnar: TTalDBEdit;
    TalLabel7: TTalLabel;
    lucIvar: TTalDBLookupComboBox;
    TalLabel9: TTalLabel;
    lucSzin: TTalDBLookupComboBox;
    TalLabel10: TTalLabel;
    TalLabel11: TTalLabel;
    TalLabel13: TTalLabel;
    lucHvKod: TTalDBLookupComboBox;
    TalPanel4: TTalPanel;
    grdVal: TTalDBGrid;
    btnUj: TBitBtn;
    btnModosit: TBitBtn;
    btnTorol: TBitBtn;
    edtBsuly: TDBEdit;
    edtTermdatum: TTalDBEdit;
    TalLabel15: TTalLabel;
    edtTermBika: TTalDBEdit;
    TalLabel16: TTalLabel;
    edtVemhNap: TTalEdit;
    TalSpeedButton1: TTalSpeedButton;
    pnlKeres: TTalPanel;
    lblS2: TTalLabel;
    lblS1: TTalLabel;
    TalLabel18: TTalLabel;
    edtDatTol: TTalMaskEdit;
    btnLeker: TBitBtn;
    TalSearch1: TTalSearch;
    TalLabel2: TTalLabel;
    edtDatum: TTalDBEdit;
    TalLabel5: TTalLabel;
    lucVH1: TTalDBLookupComboBox;
    edtVSZ1: TDBEdit;
    TalLabel6: TTalLabel;
    TalLabel12: TTalLabel;
    lucVH2: TTalDBLookupComboBox;
    edtVSZ2: TDBEdit;
    TalLabel14: TTalLabel;
    TalLabel17: TTalLabel;
    lucVH3: TTalDBLookupComboBox;
    edtVSZ3: TDBEdit;
    TalLabel19: TTalLabel;
    TalLabel20: TTalLabel;
    lucVH4: TTalDBLookupComboBox;
    edtVSZ4: TDBEdit;
    TalLabel21: TTalLabel;
    TalLabel22: TTalLabel;
    TalLabel23: TTalLabel;
    edtFulszam: TTalDBEdit;
    TalLabel25: TTalLabel;
    edtIdENAR: TTalDBEdit;
    TalLabel24: TTalLabel;
    edtAFulszam: TTalDBEdit;
    TalLabel27: TTalLabel;
    edtTehenszam: TTalDBEdit;
    TalButton1: TTalButton;
    cbSzarvaltsag: TTalDBCheckBox;
    lucKonstrukciosKod: TTalDBLookupComboBox;
    procedure TalBitBtn1Click(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure TalBitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actMegsemExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtAzonositoExit(Sender: TObject);
    procedure grdValRowChanged(Sender: TObject);
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure edtTermSszExit(Sender: TObject);
    procedure edtEnarExit(Sender: TObject);
    procedure edtDatumExit(Sender: TObject);
    procedure TalSpeedButton1Click(Sender: TObject);
    procedure TalBitBtn3Click(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
    procedure TalCheckBox1Click(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure lucHvKodExit(Sender: TObject);
    procedure TalButton1Click(Sender: TObject);
    procedure SetDataSource;
  private
    { Private declarations }
    mode : string;
    azonosito : string;
    azonosito_id : string;
    sEllesSQl : string;
    AktDatum : TDate;
    function Mezok_kitoltve:Boolean;
    function BMezok_kitoltve:Boolean;
    function EllesMentes:Boolean;
    function BorjunakNincsTortenete(Egyed_azonosito:string):Boolean;
    procedure BKarb;
    procedure EllesKarb(azonosito_id,azonosito:string;ssz:integer; mode:string);
    procedure FuljelzoKltVissza(EnarAzonosito:string);
    procedure EgyedTorles(EnarAzonosito:string);
    function EllesTorolheto(Egyed_id,elles_datum:string):Boolean;
    procedure VerhanyadFeltotltes;
  public
    { Public declarations }
  end;

var
  frmEllesKarb: TfrmEllesKarb;

function OpenEllesek(egyed_id, azonosito:string;datum:string):Boolean;
function OpenEllesekBrow:Boolean;


implementation

uses udtmTarka , DateUtils, StrUtils, QfrmhTerm, QfrmTermKarbm, QfrmValaszt,
  QfrmFuljelzok, QSysTools,
  Math;

{$R *.dfm}

procedure TfrmEllesKarb.SetDataSource;
begin;
    grdVal.DataSource := dtmTarka.dtsEllesek;
    TalDBGrid1.DataSource := dtmTarka.dtsBorjak;

    edtAzonosito.DataSource := dtmTarka.dtsEllesek;
    edtAFulszam.DataSource := dtmTarka.dtsEllesek;
    edtTehenszam.DataSource := dtmTarka.dtsEllesek;
    edtDatum.DataSource := dtmTarka.dtsEllesek;
    edtTermdatum.DataSource := dtmTarka.dtsEllesek;
    // edtVemhNap.DataSource := dtmTarka.dtsEllesek;
    edtTermBika.DataSource := dtmTarka.dtsEllesek;
    lucEllLef.DataSource := dtmTarka.dtsEllesek;
    lucEllLef.ListSource := dtmTarka.dtsEllLef;

    edtEnar.DataSource := dtmTarka.dtsBorjak;
    edtFulszam.DataSource := dtmTarka.dtsBorjak;
    edtIdENAR.DataSource := dtmTarka.dtsBorjak;
    lucIvar.DataSource := dtmTarka.dtsBorjak;
    lucSzin.DataSource := dtmTarka.dtsBorjak;
    edtBsuly.DataSource := dtmTarka.dtsBorjak;
    lucKonstrukciosKod.DataSource := dtmTarka.dtsBorjak;
    lucVH1.DataSource := dtmTarka.dtsBorjak;
    lucVH2.DataSource := dtmTarka.dtsBorjak;
    lucVH3.DataSource := dtmTarka.dtsBorjak;
    lucVH4.DataSource := dtmTarka.dtsBorjak;
    edtVSZ1.DataSource := dtmTarka.dtsBorjak;
    edtVSZ2.DataSource := dtmTarka.dtsBorjak;
    edtVSZ3.DataSource := dtmTarka.dtsBorjak;
    edtVSZ4.DataSource := dtmTarka.dtsBorjak;
    cbSzarvaltsag.DataSource := dtmTarka.dtsBorjak;
    lucHvKod.DataSource := dtmTarka.dtsBorjak;

    lucIvar.ListSource := dtmTarka.dtsBIvar;
    lucSzin.ListSource := dtmTarka.dtsBSzin;
    lucKonstrukciosKod.ListSource := dtmTarka.dtsBKons;
    lucVH1.ListSource := dtmTarka.dtsBVer1;
    lucVH2.ListSource := dtmTarka.dtsBVer2;
    lucVH3.ListSource := dtmTarka.dtsBVer3;
    lucVH4.ListSource := dtmTarka.dtsBVer4;
    lucHvKod.ListSource := dtmTarka.dtsBKiesKod;
end;

function OpenEllesek(egyed_id, azonosito: string; datum: string): boolean;
const
  EllesSql = ' SELECT ' +
             ' E.E_TERM_ID, ' +
             ' E.EGYED_ID, ' +
             ' E.ELLES_DATUM, ' +
             ' E.ELLES_LEF, ' +
             ' KODOK.KOD_NEV AS LEF_NEV, ' +
             ' E.ID, ' +
             ' E.TENYESZET, ' +
             ' E.UTMOD_DAT, ' +
             ' E.UTMOD_KOD, ' +
             ' EGYEDEK.ENAR, ' +
             ' EGYEDEK.FULSZAM, ' +
             ' EGYEDEK.TEHENSZAM, ' +
             ' E.BIKA, E.E_TERM_DAT ' +
             ' FROM ELLESEK E ' +
             ' LEFT JOIN kodok ON KODOK.KODTIPUSOK_TIPUSKOD=''ELL_LEF'' AND KODOK.KOD=E.ELLES_LEF ' +
             ' JOIN egyedek ON EGYEDEK.ID = E.EGYED_ID ' +
             ' WHERE E.EGYED_ID = :EGYED_ID ';

  EllesSql1 = ' and e.ELLES_DATUM =';
var
  test: string;

begin
  frmEllesKarb.azonosito := azonosito;
  frmEllesKarb.azonosito_id := egyed_id;
  frmEllesKarb.mode := 'BROWSE';
  frmEllesKarb.AktDatum := today;
  //  if ssz = 0 then ssz := 1;

  if dtmTarka.sdsEllesek.Active then
    dtmTarka.sdsEllesek.Close;

  if datum = '' then
  begin
    dtmTarka.sdsEllesek.DataSet.CommandText := EllesSql; (* + ' ' +  dtmTarka.TenyeszetWhereE; *);
    frmEllesKarb.sEllesSQl := EllesSql;
  end
  else
  begin
    dtmTarka.sdsEllesek.DataSet.CommandText := EllesSql + EllesSql1 + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(datum))) + ' '  (* +  dtmTarka.TenyeszetWhereE; *);
    frmEllesKarb.sEllesSQl := EllesSql + EllesSql1 + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(datum)));
  end;

  // test := dtmTarka.sdsEllesek.DataSet.CommandText;
  // StringReplace(dtmTarka.sdsEllesek.DataSet.CommandText,'ALMA', egyed_id, [rfReplaceAll]);
  // dtmTarka.sdsEllesek.DataSet.CommandText := test;
  dtmTarka.sdsEllesek.DataSet.Parameters.ParamByName('EGYED_ID').Value := egyed_id;
  dtmTarka.sdsEllesek.Open;

  dtmTarka.qryBkiesok.Open;
  dtmTarka.qryBKiesKod.Open;
  dtmTarka.qryBszin.Open;
  dtmTarka.qryBIvar.Open;
  dtmTarka.qryEllLef.Open;
  dtmTarka.qrybVer1.Open;
  dtmTarka.qrybVer2.Open;
  dtmTarka.qrybVer3.Open;
  dtmTarka.qrybVer4.Open;
  dtmTarka.qrybKons.Open;

  if dtmTarka.sdsBorjak.Active then
    dtmTarka.sdsBorjak.Close;

  frmEllesKarb.SetDataSource;

  dtmTarka.sdsBorjak.DataSet.Parameters.ParamByName('elles_id').Value := dtmTarka.sdsEllesekID.AsInteger;

  dtmTarka.sdsBorjak.Open;
  frmEllesKarb.BitBtn2.Caption := 'Kilépés';
  frmEllesKarb.Caption := dtmTarka.AzonIr(azonosito) +' egyed ellései';
  frmEllesKarb.Position := poDesigned;
  frmEllesKarb.grdValRowChanged(NIL);
  frmEllesKarb.Width := frmEllesKarb.Width - frmEllesKarb.grdVal.Width;
  frmEllesKarb.Left := 245;
  frmEllesKarb.grdVal.Visible := false;
  frmEllesKarb.pnlKeres.Visible := false;
  frmEllesKarb.TalCheckBox1Click(NIL);
  if dtmTarka.UserKarb = '0' then
  begin
    frmEllesKarb.btnUj.Enabled := false;
    frmEllesKarb.btnModosit.Enabled := false;
    frmEllesKarb.btnTorol.Enabled := false;
    frmEllesKarb.TalBitBtn1.Enabled := false;
    frmEllesKarb.TalBitBtn2.Enabled := false;
    frmEllesKarb.TalBitBtn3.Enabled := false;
  end;

  frmEllesKarb.ShowModal;
  Result := true;

  dtmTarka.sdsEllesek.Close;
  dtmTarka.sdsBorjak.Close;
  dtmTarka.qryBkiesok.Close;
  dtmTarka.qryBKiesKod.Close;
  dtmTarka.qryEllLef.Close;
  dtmTarka.qryBszin.Close;
  dtmTarka.qryBIvar.Close;
  dtmTarka.qrybVer1.Close;
  dtmTarka.qrybVer2.Close;
  dtmTarka.qrybVer3.Close;
  dtmTarka.qrybVer4.Close;
  dtmTarka.qrybKons.Close;
end;


function OpenEllesekBrow:Boolean;
const
  EllesSql = ' SELECT ' +
             ' E.E_TERM_ID, ' +
             ' E.EGYED_ID, ' +
             ' E.ELLES_DATUM, ' +
             ' E.ELLES_LEF, ' +
             ' KODOK.KOD_NEV AS LEF_NEV, ' +
             ' E.ID, ' +
             ' E.TENYESZET, ' +
             ' E.UTMOD_DAT, ' +
             ' E.UTMOD_KOD, ' +
             ' EGYEDEK.ENAR, ' +
             ' EGYEDEK.FULSZAM, ' +
             ' EGYEDEK.TEHENSZAM, ' +
             ' E.BIKA, E.E_TERM_DAT ' +
             ' FROM ELLESEK E ' +
             ' LEFT JOIN kodok ON KODOK.KODTIPUSOK_TIPUSKOD=''ELL_LEF'' AND KODOK.KOD=E.ELLES_LEF ' +
             ' JOIN egyedek ON EGYEDEK.ID = E.EGYED_ID ' +
             ' where E.UTMOD_DAT >= ';
//             ' where Datediff(day, ee.UTMOD_DAT, getdate())<1 ';

var
  s : string;
begin
  Result := false;
  frmEllesKarb.azonosito := '';
  frmEllesKarb.azonosito_id := '';
  frmEllesKarb.mode := 'BROWSE';
  frmEllesKarb.AktDatum := today;
  frmEllesKarb.sEllesSQl := EllesSql;
  s := FormatDateTime('yyyy.mm.dd',date-1);
  frmEllesKarb.edtDatTol.Text := s;
  dtmTarka.sdsEllesek.DataSet.CommandText := EllesSql + Quotedstr(s) + ' ' +  dtmTarka.TenyeszetWhereE + order;
  dtmTarka.sdsEllesek.Open;

  dtmTarka.qryBkiesok.Open;
  dtmTarka.qryBKiesKod.Open;
  dtmTarka.qryBszin.Open;
  dtmTarka.qryBIvar.Open;
  dtmTarka.qryEllLef.Open;
  dtmTarka.qrybVer1.Open;
  dtmTarka.qrybVer2.Open;
  dtmTarka.qrybVer3.Open;
  dtmTarka.qrybVer4.Open;
  dtmTarka.qrybKons.Open;

  if dtmTarka.sdsBorjak.Active then
    dtmTarka.sdsBorjak.Close;

  frmEllesKarb.SetDataSource;

  frmEllesKarb.Width := 947;
  frmEllesKarb.grdVal.Visible := true;
  frmEllesKarb.pnlKeres.Visible := true;
  frmEllesKarb.BitBtn2.Caption := 'Kilépés';
  frmEllesKarb.Caption := 'Ellések rögzítése - a mai napon rögzített adatok';
  frmEllesKarb.Position := poMainFormCenter;
  dtmTarka.sdsEllesekENAR.Visible := true;
  frmEllesKarb.grdValRowChanged(NIL);
  frmEllesKarb.TalCheckBox1Click(NIL);
  if dtmTarka.UserKarb = '0' then
  begin
    frmEllesKarb.btnUj.Enabled := false;
    frmEllesKarb.btnModosit.Enabled := false;
    frmEllesKarb.btnTorol.Enabled := false;
    frmEllesKarb.TalBitBtn1.Enabled := false;
    frmEllesKarb.TalBitBtn2.Enabled := false;
    frmEllesKarb.TalBitBtn3.Enabled := false;
  end;
  frmEllesKarb.ShowModal;
  dtmTarka.sdsEllesek.Close;
  dtmTarka.sdsBorjak.Close;
  dtmTarka.qryBkiesok.Close;
  dtmTarka.qryBKiesKod.Close;
  dtmTarka.qryEllLef.Close;
  dtmTarka.qryBszin.Close;
  dtmTarka.qryBIvar.Close;
  dtmTarka.qrybVer1.Close;
  dtmTarka.qrybVer2.Close;
  dtmTarka.qrybVer3.Close;
  dtmTarka.qrybVer4.Close;
  dtmTarka.qrybKons.Close;
end;



procedure TfrmEllesKarb.EllesKarb(azonosito_id,azonosito:string;ssz:integer; mode:string);
begin
  Self.mode := mode;
  if dtmTarka.sdsEllesek.Active = false then begin
    dtmTarka.sdsEllesek.Open;
  end;
  if mode = 'UJ' then begin
    dtmTarka.sdsEllesekENAR.AsString := azonosito;
    dtmTarka.sdsEllesekEGYED_ID.AsString := azonosito_id;
    if azonosito <> EmptyStr then
      Self.edtAzonosito.Enabled := false
    else
      Self.edtAzonosito.Enabled := true;
  end else begin
    Self.edtAzonosito.Enabled := false;
  end;
  Self.btnUj.Enabled := false;
  Self.btnModosit.Enabled := false;
  Self.btnTorol.Enabled := false;
  Self.pnlKeres.Enabled := false;
  Self.BitBtn2.Caption := 'Mégsem';
{  Self.TalBitBtn1.Enabled := false;
  Self.TalBitBtn2.Enabled := false;
  Self.TalBitBtn3.Enabled := false;}

  Self.TalPanel1.Enabled := true;
  if mode='UJ' then begin
    if Self.edtAzonosito.CanFocus then
      Self.edtAzonosito.SetFocus;
  end else begin
    Self.edtAzonosito.Enabled := false;
  end;
end;


function TfrmEllesKarb.EllesMentes: Boolean;
var
  egyed : string;
  eldatum : string;
  SQL : string;
//  SQL1 : string;
//  SQL2 : string;
  SQL3 : string;
//  SQL4 : string;
  vissza : TTalParamList;
begin
  result := false;
  if not Mezok_kitoltve then exit;
  SQL3 := '';
  dtmTarka.sdsEllesekUTMOD_DAT.AsDateTime := now();
  dtmTarka.sdsEllesekUTMOD_KOD.AsString := dtmTarka.UserKod;
  dtmTarka.sdsEllesekTENYESZET.AsString := dtmTarka.sTenyeszetKod;
  if dtmTarka.sdsEllesekTENYESZET.AsString = EmptyStr then begin
    vissza := TTalParamList.Create;
    try
      if dtmTarka.EgyedInfo(dtmTarka.sdsEllesekEGYED_ID.AsString,vissza) then begin
        dtmTarka.sdsEllesekTENYESZET.AsString := Vissza.ItemsByName('TENYESZET').values[0];
      end;
    finally
      vissza.Free;
    end;
  end;
  egyed := dtmTarka.sdsEllesekEGYED_ID.AsString;
  eldatum := dtmTarka.sdsEllesekELLES_DATUM.AsString;
  AktDatum := dtmTarka.sdsEllesekELLES_DATUM.AsDateTime;
  SQL := '';
  dtmTarka.sdsEllesek.Post;
  dtmTarka.cnTarka.BeginTrans;
  try
    dtmTarka.sdsEllesek.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;
  dtmTarka.sdsEllesek.Close;
  dtmTarka.sdsEllesek.Open;
  dtmTarka.sdsEllesek.Locate('EGYED_ID;ELLES_DATUM',varArrayOf([egyed, eldatum]),[]);
  Self.TalPanel1.Enabled := false;
  result := true;
end;


function TfrmEllesKarb.Mezok_kitoltve: Boolean;
begin
  result := false;

  if edtDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('Az ellés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtDatum.SetFocus;
    exit;
  end;
  if lucEllLef.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az ellés lefolyásának megadása kötelezõ!', mtWarning, [mbOK], 0);
    lucEllLef.SetFocus;
    exit;
  end;
  Result := true;
end;


procedure TfrmEllesKarb.TalBitBtn1Click(Sender: TObject);
var
  ssz : integer;
begin
  if not dtmTarka.LicenceDatEll then
    Exit;

  if dtmTarka.sdsEllesek.State in [dsEdit,dsInsert] then
    if not EllesMentes then
      Exit;

  if dtmTarka.sdsEllesek.RecordCount = 0 then
    Exit;

  with dtmTarka do
  begin
    sdsBorjak.First;
    ssz := -1;

    while not sdsBorjak.Eof do
    begin
      if sdsBorjakBORJU_SSZ.AsInteger > ssz THEN
        ssz := sdsBorjakBORJU_SSZ.AsInteger;

      sdsBorjak.Next;
    end;

    sdsBorjak.Append;

    if ssz = -1 then
      ssz := 0
    else
      if ssz = 0 then
        ssz := 2
      else
        ssz := ssz + 1;

    sdsBorjakBORJU_SSZ.AsInteger := ssz ;
    sdsBorjakBORJU_KIESES_KOD.AsString := '0';
    VerhanyadFeltotltes;
  end;

  BKarb;
end;



procedure TfrmEllesKarb.actOKExecute(Sender: TObject);
var
  borju_enar : string;
  ssz : string;
  bMode : string;
begin
  if (dtmTarka.sdsEllesek.State = dsBrowse)
     and (dtmTarka.sdsBorjak.State = dsBrowse) then begin
//    ModalResult := mrOK;
    exit;
  end;

  if dtmTarka.sdsEllesek.State in [dsEdit,dsInsert] then begin
    if not EllesMentes then exit;
    AktDatum := dtmTarka.sdsEllesekELLES_DATUM.AsDateTime;
  end;

  borju_enar := '';
  if dtmTarka.sdsBorjak.State in [dsEdit,dsInsert] then begin
    if not Self.bmezok_kitoltve then exit;
    if dtmTarka.sdsBorjak.State = dsEdit then
      bMode := 'Edit'
    else
      bMode := 'Uj';
    borju_enar := dtmTarka.sdsBorjakBORJU_ENAR.AsString;
    dtmTarka.sdsBorjakELLESEK_ID.AsString := dtmTarka.sdsEllesekID.AsString;
    dtmTarka.sdsBorjakkikod_nev.AsString := lucHvKod.Text;
    dtmTarka.sdsBorjakBORJU_KIESES_OK.AsString := '0';
    dtmTarka.sdsBorjakivar_nev.AsString := lucIvar.Text;
    dtmTarka.sdsBorjakszin.AsString := lucSzin.Text;
    dtmTarka.sdsBorjakUTMOD_DAT.AsDateTime := now();
    dtmTarka.sdsBorjakUTMOD_KOD.AsString := dtmTarka.UserKod;
    dtmTarka.sdsBorjak.Post;
  end;
  ssz := dtmTarka.sdsBorjakBORJU_SSZ.AsString;

  dtmTarka.cnTarka.BeginTrans;
  try
    if dtmTarka.sdsEllesek.ChangeCount > 0 then
      dtmTarka.sdsEllesek.ApplyUpdates(0);
    if dtmTarka.sdsBorjak.ChangeCount > 0 then
      dtmTarka.sdsBorjak.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;
  dtmTarka.sdsBorjak.Close;
  dtmTarka.sdsBorjak.Open;
  if ssz <> EmptyStr then
    dtmTarka.sdsBorjak.Locate('BORJU_SSZ',ssz,[]);
  if borju_enar <> EmptyStr then begin
    if dtmTarka.sdsBorjakBORJU_KIESES_KOD.AsString = '0' then
      if bMode = 'Uj' then begin
        dtmTarka.UjBorjuEgyedtorzsbe(Borju_Enar);
        dtmTarka.FuljelzoKiadva(Borju_Enar);
      end else begin
        dtmTarka.BorjuEgyedtorzsbeUpdate(Borju_Enar);
      end;
  end;

  Self.TalPanel3.Enabled := false;
  Self.TalPanel1.Enabled := false;
  Self.btnUj.Enabled := true;
  Self.btnModosit.Enabled := true;
  Self.btnTorol.Enabled := true;
  Self.pnlKeres.Enabled := true;
  Self.TalBitBtn1.Enabled := true;
  Self.TalBitBtn2.Enabled := true;
  Self.TalBitBtn3.Enabled := true;
  if btnUj.CanFocus then btnUj.SetFocus;
  Self.BitBtn2.Caption := 'Kilépés';
end;

procedure TfrmEllesKarb.TalBitBtn2Click(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if dtmTarka.sdsBorjak.RecordCount = 0 then exit;
  if dtmTarka.sdsEllesek.State in [dsEdit,dsInsert] then begin
    if not EllesMentes then exit;
  end;
  dtmTarka.sdsBorjak.Edit;
  BKarb;
  inherited;
end;

procedure TfrmEllesKarb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//
end;

procedure TfrmEllesKarb.actMegsemExecute(Sender: TObject);
begin
  if (dtmTarka.sdsEllesek.State = dsBrowse)
     and (dtmTarka.sdsBorjak.State = dsBrowse) then begin
    dtmTarka.sdsEllesek.Cancel;
    dtmTarka.sdsBorjak.Cancel;
    Self.TalPanel3.Enabled := false;
    Self.TalPanel1.Enabled := false;
    Self.btnUj.Enabled := true;
    Self.pnlKeres.Enabled := true;    
    Self.btnModosit.Enabled := true;
    Self.btnTorol.Enabled := true;
    Self.TalBitBtn1.Enabled := true;
    Self.TalBitBtn2.Enabled := true;
    Self.TalBitBtn3.Enabled := true;
    ModalResult := mrCancel;
    exit;
  end;

  dtmTarka.sdsEllesek.Cancel;
  dtmTarka.sdsBorjak.Cancel;
  Self.TalPanel3.Enabled := false;
  Self.TalPanel1.Enabled := false;
  Self.btnUj.Enabled := true;
  Self.pnlKeres.Enabled := true;
  Self.btnModosit.Enabled := true;
  Self.btnTorol.Enabled := true;
  Self.TalBitBtn1.Enabled := true;
  Self.TalBitBtn2.Enabled := true;
  Self.TalBitBtn3.Enabled := true;
  Self.BitBtn2.Caption := 'Kilépés';
end;



procedure TfrmEllesKarb.FormShow(Sender: TObject);
begin
  if Self.mode = 'BROWSE' then begin
    Self.TalPanel3.Enabled := false;
    Self.TalPanel1.Enabled := false;
  end;
  inherited;
end;



procedure TfrmEllesKarb.edtAzonositoExit(Sender: TObject);
var
  sAzon : string;
  sAzonId : string;
begin
  if edtAzonosito.Enabled and dtmTarka.megsemNyomas(ActiveControl) then exit;

  if edtAzonosito.Text > EmptyStr then begin
    sAzon := edtAzonosito.Text;
      if not dtmTarka.VaneIlyenEgyed(edtAzonosito.Text, sAzon,sAzonId,true) then begin
        sAzon := '';
        sAzonId := '';
        dtmTarka.MsgDlg('Nincs ilyen egyed, vagy az egyed már kikerült a tenyészetbõl!',mterror,[mbOK],0 );
        edtAzonosito.SelectAll;
        if edtAzonosito.CanFocus then edtAzonosito.SetFocus;
      end else begin
        dtmTarka.sdsEllesekEGYED_ID.AsString:=sAzonId;
        dtmTarka.sdsEllesekENAR.AsString:=sAzon;
      end;
  end;
end;


Procedure TfrmEllesKarb.BKarb;
begin
  Self.btnUj.Enabled := false;
  Self.btnModosit.Enabled := false;
  Self.btnTorol.Enabled := false;
  Self.pnlKeres.Enabled := false;
  Self.TalBitBtn1.Enabled := false;
  Self.TalBitBtn2.Enabled := false;
  Self.TalBitBtn3.Enabled := false;
  Self.BitBtn2.Caption := 'Mégsem';

  Self.TalPanel3.Enabled := true;
  if dtmTarka.sdsBorjak.State = dsInsert then begin
    edtEnar.Enabled := true;
    TalSpeedButton1.Enabled := true;
    edtEnar.SetFocus;
  end;
  if dtmTarka.sdsBorjak.State = dsEdit then begin
    if edtEnar.Text = EmptyStr then begin
      edtEnar.SetFocus;
    end else begin
      edtEnar.Enabled := false;
      TalSpeedButton1.Enabled := false;
      lucIvar.SetFocus;
    end;
  end;
end;

// Sor adatok változása
procedure TfrmEllesKarb.grdValRowChanged(Sender: TObject);
var
  vNap : integer;
begin
  if dtmTarka.sdsBorjak.Active then
    dtmTarka.sdsBorjak.Close;

  if dtmTarka.sdsEllesekID.AsString = EmptyStr then
    dtmTarka.sdsBorjak.DataSet.Parameters.ParamByName('elles_id').Value := '0'
  else
    dtmTarka.sdsBorjak.DataSet.Parameters.ParamByName('elles_id').Value :=
      dtmTarka.sdsEllesekID.AsString;

  dtmTarka.sdsBorjak.Open;

  if (dtmTarka.sdsEllesekELLES_DATUM.AsString > '') and (dtmTarka.sdsEllesekE_TERM_DAT.AsString > '') then
  begin
    vNap :=  DaysBetween( dtmTarka.sdsEllesekELLES_DATUM.AsDateTime , dtmTarka.sdsEllesekE_TERM_DAT.AsdateTime);
    edtVemhNap.Value := vNap;
  end
  else
    edtVemhNap.Text := '';

  inherited;
end;


procedure TfrmEllesKarb.btnUjClick(Sender: TObject);
var
  ssz : integer;
begin
  if not dtmTarka.LicenceDatEll then exit;
  with dtmTarka do begin
    if Self.azonosito <> EmptyStr then begin
      sdsEllesek.First;
    end else begin
    end;
    edtVemhNap.Text := '';
    sdsEllesek.Append;
    sdsEllesekELLES_DATUM.AsDateTime := AktDatum;
  end;
  EllesKarb(Self.azonosito_id,Self.azonosito,ssz,'UJ');
  inherited;
end;

procedure TfrmEllesKarb.btnModositClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if dtmTarka.sdsEllesek.RecordCount=0 then exit;
  dtmTarka.sdsEllesek.Edit;
  EllesKarb(Self.azonosito_id,Self.azonosito,0,'MOD');
  inherited;
end;

function TfrmEllesKarb.BMezok_kitoltve: Boolean;
begin
  result := false;
  if (edtEnar.Text = EmptyStr)
       and (dtmTarka.sdsEllesekELLES_LEF.AsString<>'9')
       and not (dtmTarka.sdsBorjakBORJU_KIESES_KOD.AsString='8') then begin
    dtmTarka.MsgDlg('Nem adott meg ENAR azonosítót!', mtWarning, [mbOK], 0);
    edtEnar.SetFocus;
    exit;
  end;
  if (edtEnar.Text <> EmptyStr)
        and (dtmTarka.sdsBorjakBORJU_KIESES_KOD.AsString='8') then begin
    dtmTarka.MsgDlg('Holt elléshez ENAR számot adott meg!', mtWarning, [mbOK], 0);
    edtEnar.SetFocus;
    exit;
  end;

  if lucIvar.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az IVAR megadása kötelezõ!', mtWarning, [mbOK], 0);
    lucIvar.SetFocus;
    exit;
  end;
  if lucSzin.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A szín megadása kötelezõ!', mtWarning, [mbOK], 0);
    lucSzin.SetFocus;
    exit;
  end;
  if edtBSuly.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A borjú súlyának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtBSuly.SetFocus;
    exit;
  end;
  if (StrToInt(edtBsuly.Text) < 15) or (StrToInt(edtBsuly.Text)>70) then begin
    dtmTarka.MsgDlg('A borjú súlyának 15 és 70 között kell lennie!', mtWarning, [mbOK], 0);
    edtBSuly.SetFocus;
    exit;
  end;
  result := true;
end;



procedure TfrmEllesKarb.edtTermSszExit(Sender: TObject);
var
  id : string;
  vNap : integer;
begin
  if Self.mode='UJ' then
    if not dtmTarka.megsemNyomas(ActiveControl) then
      if edtTermdatum.Text <> '    .  .  ' then begin
        if (ActiveControl is TTalButton) then
          if (ActiveControl as TTalButton).Caption = 'Termékenyítések' then exit;      
        id := '';
        if not dtmTarka.VaneTerm(dtmTarka.sdsEllesekEGYED_ID.AsString, edtTermdatum.Text,id) then begin
          dtmTarka.MsgDlg('Nincs ilyen termékenyítés rögzítve!',mterror,[mbOK],0 );
          edtTermdatum.SetFocus;
        end else begin
          dtmTarka.sdsEllesekE_TERM_ID.AsString := id;
          if edtTermdatum.text <> '    .  .  ' then
            vNap :=  DaysBetween( strToDateTime(edtDatum.text) , strToDateTime(edtTermdatum.text))
          else
            vNap := 0;
          edtVemhNap.Value := vNap;
          if (vnap<dtmTarka.iAtlVemhNapSzam-20) or (vnap>dtmTarka.iAtlVemhNapSzam+20) then begin
            edtVemhNap.Font.Color := clRed;
            if dtmTarka.MsgDlg('A vemhességi napok száma nem megfelelõ! Folytatja?',mtConfirmation,[mbYes,mbNo],0 )= mrNo then begin
              actMegsemExecute(Sender);
            end;
          end else begin
            edtVemhNap.Font.Color := clWindowText;
          end;

        end;
      end else begin
        if (ActiveControl is TTalButton) then
          if (ActiveControl as TTalButton).Caption = 'Termékenyítések' then exit;

        dtmTarka.MsgDlg('A termékenyítés dátumának megadása kötelezõ!',mterror,[mbOK],0 );
        edtTermdatum.SetFocus;
      end;
end;

procedure TfrmEllesKarb.edtEnarExit(Sender: TObject);
begin
  if edtEnar.Text = EmptyStr then exit;
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if dtmTarka.sdsBorjak.State = dsInsert then
    if dtmTarka.VaneEgyed(edtEnar.Text, true) then begin
      dtmTarka.MsgDlg('Már van ilyen ENAR azonosítójú egyed!', mtWarning, [mbOK], 0);
      edtEnar.SetFocus;
      exit;
    end;
  if dtmTarka.EnarCdvEll(edtEnar.Text) = false then begin;
      edtEnar.SetFocus;
      exit;
  end;
(*  if dtmTarka.VaneFuljelzo(edtEnar.Text) = false then begin
      MessageDlg('Nics készleten ilyen ENAR számmal füljelzõ!', mtWarning, [mbOK], 0);
      edtEnar.SetFocus;
      exit;
  end; *)
  inherited;
end;



procedure TfrmEllesKarb.edtDatumExit(Sender: TObject);
var
  vNap : integer;
  td, term_id, bklsz : string;
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if edtDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('Az ellés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtDatum.SetFocus;
    exit;
  end;
  if strToDateTime(edtDatum.text) > today() then begin
    dtmTarka.MsgDlg('Hibás dátum!',mterror,[mbOK],0 );
    if edtDatum.CanFocus then edtDatum.SetFocus;
    exit;
  end;
  if Self.mode='UJ' then
    if not dtmTarka.megsemNyomas(ActiveControl) then
      IF edtDatum.Text > EmptyStr then begin
        if dtmTarka.VaneElles( dtmTarka.sdsEllesekENAR.AsString, edtDatum.Text) then begin
          dtmTarka.MsgDlg('Már van ilyen ellés rögzítve!',mterror,[mbOK],0 );
          edtDatum.SetFocus;
        end else begin
          term_id := '';
          bklsz := '';
          dtmTarka.sdsEllesekE_TERM_DAT.AsString :=
               dtmTarka.EllesEredmTerm(dtmTarka.sdsEllesekEGYED_ID.AsString,
                                    edtTermdatum.Text,
                                    td, term_id, bklsz);
          dtmTarka.sdsEllesekE_TERM_DAT.AsString := td;
          dtmTarka.sdsEllesekE_TERM_ID.AsString := term_id;
          dtmTarka.sdsEllesekBIKA.AsString := bklsz;
        end;
      end else begin
        dtmTarka.MsgDlg('Az ellés sorszám megadása kötelezõ!',mterror,[mbOK],0 );
        edtDatum.SetFocus;
      end;


  if edtTermdatum.text <> '    .  .  ' then begin
    vNap :=  DaysBetween( strToDateTime(edtDatum.text) , strToDateTime(edtTermdatum.text));
    edtVemhNap.Value := vNap;
    if (vnap<dtmTarka.iAtlVemhNapSzam-20) or (vnap>dtmTarka.iAtlVemhNapSzam+20) then begin
      edtVemhNap.Font.Color := clRed;
      if dtmTarka.MsgDlg('A vemhességi napok száma nem megfelelõ! Folytatja?',mtConfirmation,[mbYes,mbNo],0 )= mrNo then begin
        actMegsemExecute(Sender);
      end;
    end else begin
      edtVemhNap.Font.Color := clWindowText;
    end;
  end else begin
    vNap := 0;
  end;
  inherited;
end;



procedure TfrmEllesKarb.TalSpeedButton1Click(Sender: TObject);
var
  vissza : TTalParamList;
begin
  vissza := TTalParamList.Create;
  try
    if FuljelzoValaszto(vissza) then begin
      edtEnar.Text := vissza.ItemsByName('ENAR').values[0];
      if edtEnar.CanFocus then edtEnar.SetFocus;
    end;
  finally
  end;
end;

procedure TfrmEllesKarb.TalBitBtn3Click(Sender: TObject);
var
  Enar : string;
begin
  if dtmTarka.sdsBorjak.RecordCount = 0 then exit;
  if BorjunakNincsTortenete(dtmTarka.sdsBorjakBORJU_ENAR.AsString) = true then begin
    if Application.MessageBox('Biztos törli a borjút?','Figyelem!', MB_YESNO) = IDYES then begin
      Enar := dtmTarka.sdsBorjakBORJU_ENAR.AsString;
      if Enar = '0000000000' then ENAR := '';
      dtmTarka.cnTarka.BeginTrans;
      try
        dtmTarka.cnTarka.Execute('delete from borjak where id = ' + dtmTarka.sdsBorjakID.AsString);
        dtmTarka.cnTarka.CommitTrans;
      except
        if dtmTarka.cnTarka.InTransaction then
          dtmTarka.cnTarka.RollbackTrans;
      end;
      dtmTarka.sdsBorjak.Close;
      dtmTarka.sdsBorjak.Open;
      if ENAR <> EmptyStr then begin
        if (LeftStr(ENAR,1)= '3') or (LeftStr(ENAR,3)= 'HU3') then begin
          EgyedTorles(ENAR);
          FuljelzoKltVissza(ENAR);
        end;
      end;
    end;
  end;
  inherited;
end;

function TfrmEllesKarb.BorjunakNincsTortenete( Egyed_azonosito: string): Boolean;
var
  Egyed_id : string;
  SQL : string;
  OK : string;
begin
  result := false;
  if Egyed_azonosito = EmptyStr then begin
    Result := true;
    exit;
  end;
  if not dtmTarka.GetKodNev('SELECT ID FROM EGYEDEK WHERE EGYEDEK.ENAR = '
        +quotedstr(Egyed_azonosito) + ' or EGYEDEK.ENAR = ' + quotedstr('HU'+Egyed_azonosito)
           ,'ID',EGYED_ID) then begin
    Result := true;
    exit;
  end;
  SQL := 'SELECT 1 AS VAN FROM TERMEKENYITESEK ' +
         ' WHERE TERMEKENYITESEK.EGYED_ID= '+ EGYED_ID +
         ' UNION SELECT 1 AS VAN FROM ELLESEK ' +
         ' WHERE ELLESEK.EGYED_ID= '+ EGYED_ID +
         ' UNION SELECT 1 AS VAN FROM TOMEGEK ' +
         ' WHERE TOMEGEK.EGYED_ID= '+ EGYED_ID;
  if not dtmTarka.GetKodNev(SQL ,'VAN',OK) then begin
    Result := true;
    exit;
  end else begin
    dtmTarka.MsgDlg('A borjúnak van története, nem törölhetõ', mtConfirmation , [mbOK],0);
  end;
end;


procedure TfrmEllesKarb.FuljelzoKltVissza(EnarAzonosito: string);
var
  SQL : string;
begin
  if LeftStr(EnarAzonosito,2) <> 'HU' then
    EnarAzonosito := (*'HU'+*)EnarAzonosito;
  SQL := ' UPDATE FULJELZO SET FULJELZO.KIADAS_DATUM = NULL ' +
         ' WHERE FULJELZO.FULJ_AZON='+quotedstr(EnarAzonosito);
  dtmTarka.cnTarka.Execute(SQL);
end;


procedure TfrmEllesKarb.EgyedTorles(EnarAzonosito : string);
var
  EgyedId : string;
begin
  if EnarAzonosito = EmptyStr then begin
    exit;
  end;
  if not dtmTarka.GetKodNev('SELECT ID FROM EGYEDEK WHERE EGYEDEK.ENAR ='
        + quotedstr(EnarAzonosito) + ' or EGYEDEK.ENAR=' + quotedstr('HU'+EnarAzonosito)
           ,'ID',EgyedId) then begin
    exit;
  end;
  try
    if EgyedId <> EmptyStr then
      dtmTarka.cnTarka.Execute('delete from egyedek where id = '+ EgyedId);
  finally
  end;
end;


procedure TfrmEllesKarb.btnTorolClick(Sender: TObject);
begin
  if dtmTarka.sdsEllesek.RecordCount = 0 then exit;
  if dtmTarka.sdsBorjak.RecordCount>0 then begin
     dtmTarka.MsgDlg('Az elléshez tartozik borjú, így nem törölhetõ!',mterror,[mbOK],0 );
     exit;
  end;
  if not EllesTorolheto(dtmTarka.sdsEllesekEGYED_ID.AsString,dtmTarka.sdsEllesekELLES_DATUM.AsString) then exit;
  if Application.MessageBox('Biztos törli az ellést?','Figyelem!', MB_YESNO) = IDYES then begin
      dtmTarka.cnTarka.BeginTrans;
      try
        dtmTarka.cnTarka.Execute('delete from ellesek where id = ' + dtmTarka.sdsEllesekID.AsString );
        dtmTarka.cnTarka.CommitTrans;
      except
        if dtmTarka.cnTarka.InTransaction then
          dtmTarka.cnTarka.RollbackTrans;
      end;
      dtmTarka.sdsEllesek.Close;
      dtmTarka.sdsEllesek.Open;
  end;
end;




function TfrmEllesKarb.EllesTorolheto(Egyed_id, elles_datum: string): Boolean;
var
  SQL : string;
  OK : string;
begin
  result := false;
  if Egyed_id = EmptyStr then begin
    Result := true;
    exit;
  end;
  SQL := 'SELECT 1 AS VAN FROM TERMEKENYITESEK ' +
         ' WHERE TERMEKENYITESEK.EGYED_ID= '+ EGYED_ID +
         ' AND TERMEKENYITESEK.DATUM > ' + quotedstr(ELLES_DATUM) +
         ' UNION SELECT 1 AS VAN FROM ELLESEK ' +
         ' WHERE ELLESEK.EGYED_ID= '+ EGYED_ID +
         ' AND ELLESEK.ELLES_DATUM> ' + quotedstr(ELLES_DATUM);
  if not dtmTarka.GetKodNev(SQL ,'VAN',OK) then begin
    Result := true;
    exit;
  end else begin
    dtmTarka.MsgDlg('Az ellés után már van termékenyítés (vagy ellés), nem törölhetõ!', mtError , [mbOK],0);
  end;
end;

procedure TfrmEllesKarb.TalCheckBox1Click(Sender: TObject);
begin
  inherited;
//  lucElletos.TabStop := TalCheckBox1.Checked;
end;

procedure TfrmEllesKarb.btnLekerClick(Sender: TObject);
begin
    if dtmTarka.sdsEllesek.Active then
      dtmTarka.sdsEllesek.Close;

    dtmTarka.sdsEllesek.DataSet.CommandText := sEllesSQL + Quotedstr(edtDatTol.text) + ' ' +  dtmTarka.TenyeszetWhereE + order;
    dtmTarka.sdsEllesek.Open;
    grdValRowChanged(NIL);
end;


procedure TfrmEllesKarb.lucHvKodExit(Sender: TObject);
begin
  inherited;
  BitBtn1.SetFocus;
end;


procedure TfrmEllesKarb.TalButton1Click(Sender: TObject);
var
  vissza : TTalParamList;
begin
  vissza := TTalParamList.Create;
  try
//    OpenHTermE('ELLES',dtmtarka.sdsEllesekEGYED_ID.AsString, dtmtarka.sdsEllesekENAR.AsString, vissza);
    if OpenTermekenyitesek(dtmtarka.sdsEllesekEGYED_ID.AsString, dtmtarka.sdsEllesekENAR.AsString,'V',vissza) then begin
      if vissza.ItemsByName('TERM_DATUM') <> NIL then begin
        dtmTarka.sdsEllesekE_TERM_DAT.AsDateTime := vissza.ItemsByName('TERM_DATUM').values[0];
        dtmTarka.sdsEllesekE_TERM_ID.AsString := vissza.ItemsByName('TERM_ID').values[0];
        dtmTarka.sdsEllesekBIKA.AsString := vissza.ItemsByName('KPLSZ').values[0];
        edtTermdatum.SetFocus;
      end;
    end;
  finally
    vissza.Free;
  end;
end;

procedure TfrmEllesKarb.VerhanyadFeltotltes;
type
  Verhanyad = record
    id : integer;
    value : real;
  end;

var
  SQL : string;
  v1,v2,v3,v4, pv1,pv2,pv3,pv4, uv1,uv2,uv3,uv4, fkod, kkod: string;
  s1,s2,s3,s4, ps1,ps2,ps3,ps4, us1,us2,us3,us4 , maxszaz: real;
  summ: real;
  tq : TTalQuery;
  vh: array[1..8] of Verhanyad;
  result_vh: array[1..8] of Verhanyad;
  temp_vh: Verhanyad;
  vID : string;
  i, k, j : integer;

begin
  // if dtmTarka.sdsEllesekENAR.AsString = EmptyStr then exit;
  if dtmTarka.sdsEllesekBIKA.AsString = EmptyStr then exit;

  sql := 'select e.ver1,e.vsz1,e.ver2,e.vsz2,e.ver3,e.vsz3,e.ver4,e.vsz4 ' +
         ' from egyedek e where e.ID = ' + dtmTarka.sdsEllesekEGYED_ID.AsString;

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;

  for i := 1 to 8 do
  begin
    vh[i].id := -1;
    vh[i].value := 0;
    result_vh[i].id := -1;
    result_vh[i].value := 0;
  end;

  for i := 1 to 4 do
  begin
    vID := tq.FieldByName('ver'+ IntToStr(i)).AsString;
    if vID <> EmptyStr then
       vh[i].ID := StrToInt( vID);
    vh[i].value := tq.FieldByName('vsz' + IntToStr(i)).AsFloat;
  end;
  tq.Close;
  tq.free;

  sql := 'select a.ver1,a.vsz1,a.ver2,a.vsz2,a.ver3,a.vsz3,a.ver4,a.vsz4 ' +
         ' from apa a where a.kplsz = ' + quotedstr(dtmTarka.sdsEllesekBIKA.AsString);

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  log('Open 2 OK');

  for i := 1 to 4 do
  begin
    vID := tq.FieldByName('ver'+ IntToStr(i)).AsString;
    if vID <> EmptyStr then
       vh[i+4].ID := StrToInt( vID);;
    vh[i+4].value := tq.FieldByName('vsz' + IntToStr(i)).AsFloat;
  end;

  (*
  vh[1].id := 1;
  vh[1].value := 50;
  vh[2].id := 2;
  vh[2].value := 25;
  vh[3].id := 3;
  vh[3].value := 25;
  vh[4].id := -1;
  vh[4].value := 0;
  vh[5].id := 1;
  vh[5].value := 50;
  vh[6].id := 4;
  vh[6].value := 25;
  vh[7].id := 5;
  vh[7].value := 20;
  vh[8].id := 6;
  vh[8].value := 5;
  *)
  j := 1;
  for i := 1 to 8 do
  begin
     if vh[i].id = -1 then Continue;

     result_vh[j].id := vh[i].id;
     result_vh[j].value := vh[i].value;

     for k := i + 1 to 8 do
     begin
        if vh[k].id = -1 then Continue;

        if vh[i].id = vh[k].id then
        begin
           result_vh[j].value := result_vh[j].value + vh[k].value;
           vh[k].id := -1;
        end;
     end;
     j := j + 1;
  end;

  for i := 1 to j do
     result_vh[i].value := result_vh[i].value / 2;

  // rendezes
  for i := 1 to j do
    for k := i + 1 to j do
      if result_vh[i].value < result_vh[k].value then
      begin
        temp_vh := result_vh[i];
        result_vh[i] := result_vh[k];
        result_vh[k] := temp_vh;
      end;

  // egeszre hozas
  summ := 0;
  for i := 1 to j do
    summ := summ + result_vh[i].value;

  // if summ <> 100 then
    for i := 1 to j do
      result_vh[i].value := RoundTo( result_vh[i].value * 100 / summ, -2);

      if result_vh[1].ID <> -1 then
      begin
        dtmTarka.sdsBorjakVER1.AsString := IntToStr( result_vh[1].ID);
        dtmTarka.sdsBorjakVSZ1.AsFloat := result_vh[1].value;
      end;
      if result_vh[2].ID <> -1 then
      begin
        dtmTarka.sdsBorjakVER2.AsString := IntToStr( result_vh[2].ID);
        dtmTarka.sdsBorjakVSZ2.AsFloat := result_vh[2].value;
      end;
      if result_vh[3].ID <> -1 then
      begin
        dtmTarka.sdsBorjakVER3.AsString := IntToStr( result_vh[3].ID);
        dtmTarka.sdsBorjakVSZ3.AsFloat := result_vh[3].value;
      end;
      if result_vh[4].ID <> -1 then
      begin
        dtmTarka.sdsBorjakVER4.AsString := IntToStr( result_vh[4].ID);
        dtmTarka.sdsBorjakVSZ4.AsFloat := result_vh[4].value;
      end;


    (*
    fkod := '';
    maxszaz := 0;
    if uv1 <> '' then begin
      dtmTarka.sdsBorjakVER1.AsString := uv1;
      if (us1 < 100) and (us2 = 0) and (us3 = 0) and (us4 = 0) then
        us1 := 100;
      dtmTarka.sdsBorjakVSZ1.AsFloat := us1;
      fkod := uv1;
      maxszaz := us1;
    end;
    if uv2 <> '' then begin
      dtmTarka.sdsBorjakVER2.AsString := uv2;
      if (us1 < 100) and (us2 > 0) and (us3 = 0) and (us4 = 0) then
        us2 := 100 - dtmTarka.sdsBorjakVSZ1.AsFloat;
      dtmTarka.sdsBorjakVSZ2.AsFloat := us2;
      if maxszaz < us2 then begin
        fkod := uv2;
        maxszaz := us2;
      end;
    end;
    if uv3 <> '' then begin
      dtmTarka.sdsBorjakVER3.AsString := uv3;
      if (us1 < 100) and (us2 > 0) and (us3 > 0) and (us4 = 0) then
        us3 := 100 - dtmTarka.sdsBorjakVSZ1.AsFloat - dtmTarka.sdsBorjakVSZ2.AsFloat;
      dtmTarka.sdsBorjakVSZ3.AsFloat := us3;
      if maxszaz < us3 then begin
        fkod := uv3;
        maxszaz := us3;
      end;
    end;
    if uv4 <> '' then begin
      dtmTarka.sdsBorjakVER4.AsString := uv4;
      if (us1 < 100) and (us2 > 0) and (us3 > 0) and (us4 > 0) then
        us4 := 100 - dtmTarka.sdsBorjakVSZ1.AsFloat - dtmTarka.sdsBorjakVSZ2.AsFloat - dtmTarka.sdsBorjakVSZ3.AsFloat;
      dtmTarka.sdsBorjakVSZ4.AsFloat := us4;
      if maxszaz < us4 then begin
        fkod := uv4;
        maxszaz := us4;
      end;
    end;
    kkod := '';
    if fkod <> EmptyStr then begin
      sql := 'SELECT KONSKOD(' + quotedstr(fkod) + ',' + StringReplace( FloatToStr(maxszaz),',','.',[]) + ' ) as kkod  FROM DUAL' ;
      log(sql);
      tq := TTalQuery.Create(Self);
      tq.Connection := dtmTarka.cnTarka;
      tq.SQL.Add(SQL);
      tq.Open;
      log('Open 3 OK');
      if tq.FieldByName('kkod').AsString <> EmptyStr then begin
         kkod := tq.FieldByName('kkod').AsString;

         if kkod <> EmptyStr then begin

           SQL := 'INSERT INTO KODOK(KODTIPUSOK_TIPUSKOD, KOD, KOD_NEV) ' +
                  ' SELECT ''KONSTR'', ' + quotedstr(kkod) + ',' +  quotedstr(kkod) + ' FROM DUAL ' +
                  ' WHERE NOT EXISTS( ' +
                  ' select 1 from kodok where KODOK.KODTIPUSOK_TIPUSKOD = ''KONSTR'' and kodok.kod =' + quotedstr(kkod) + ')';
           dtmTarka.cnTarka.Execute(SQL);
           dtmTarka.qrybKons.Close;
           dtmTarka.qrybKons.Open;
         end;
      end;
      if tq.FieldByName('kkod').AsString <> EmptyStr then begin
         kkod := tq.FieldByName('kkod').AsString;
      end;
      tq.Close;
      tq.free;
      if kkod  <> '' then begin
         dtmTarka.sdsBorjakBORJU_KONS_KOD.AsString := kkod;
      end;
    end;
    *)
end;

end.
