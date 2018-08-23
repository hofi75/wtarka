unit QfrmTermKarbm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, DBCtrls, uTALDBLookupComboBox, StdCtrls, Mask, DB,
  uValidedit, uDBValidedit, uTALDBEdit, uTALLabel, ActnList, Grids,
  Wwdbigrd, Wwdbgrid, uTALDBGrid, uTALPanel, Buttons, ExtCtrls,uTalQuery,
  uTALSpeedButton, uTalParams, frxClass, frxDBSet, Wwkeycb, uTALSearch,
  uTALMaskEdit, DateUtils, uTALCheckBox, uTALBitBtn;

type
  TfrmTermKarbm = class(TfrmModOs)
    TalLabel7: TTalLabel;
    edtAzonosito: TTalDBEdit;
    TalLabel10: TTalLabel;
    edtTermDatum: TTalDBEdit;
    TalLabel2: TTalLabel;
    edtTermBika: TTalDBEdit;
    TalLabel3: TTalLabel;
    lucInsz: TTalDBLookupComboBox;
    TalLabel4: TTalLabel;
    edtSpermaAzon: TTalDBEdit;
    TalLabel5: TTalLabel;
    lucTermMod: TTalDBLookupComboBox;
    TalLabel6: TTalLabel;
    lucVemhKod: TTalDBLookupComboBox;
    TalLabel1: TTalLabel;
    edtVemhDat: TTalDBEdit;
    TalLabel11: TTalLabel;
    edtBikanev: TTalDBEdit;
    TalLabel12: TTalLabel;
    TalLabel13: TTalLabel;
    TalSpeedButton1: TTalSpeedButton;
    SpermaKltValaszt: TAction;
    TalLabel14: TTalLabel;
    tbVemhKod: TTalSpeedButton;
    tbInsz: TTalSpeedButton;
    frxDBDataset1: TfrxDBDataset;
    pnlKeres: TTalPanel;
    lblS2: TTalLabel;
    edtDatTol: TTalMaskEdit;
    btnLeker: TBitBtn;
    lblS1: TTalLabel;
    TalSearch1: TTalSearch;
    TalLabel18: TTalLabel;
    cbCsakTerm: TTalCheckBox;
    lblIvFigy: TTalLabel;
    lucFigyelo: TTalDBLookupComboBox;
    tbIvFigy: TTalSpeedButton;
    cbIvFigy: TTalCheckBox;
    TalLabel8: TTalLabel;
    edtFulszam: TTalDBEdit;
    edtTehenszam: TTalDBEdit;
    TalLabel9: TTalLabel;
    lucSpermTip: TTalDBLookupComboBox;
    TalSpeedButton2: TTalSpeedButton;
    lucSperEred: TTalDBLookupComboBox;
    TalSpeedButton4: TTalSpeedButton;
    lucSperElo: TTalDBLookupComboBox;
    TalSpeedButton5: TTalSpeedButton;
    grdValIButton: TwwIButton;
    frxRepLista: TfrxReport;
    btnHterm: TTalBitBtn;
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure edtAzonositoExit(Sender: TObject);
    procedure edtTermSszExit(Sender: TObject);
    procedure SpermaKltValasztExecute(Sender: TObject);
    procedure edtTermBikaExit(Sender: TObject);
    procedure edtTermDatumExit(Sender: TObject);
    procedure KarbGombBeallit(mire:Boolean);
    procedure tbVemhKodClick(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
    procedure tbInszClick(Sender: TObject);
    procedure edtVemhDatExit(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbCsakTermClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbIvFigyClick(Sender: TObject);
    procedure tbIvFigyClick(Sender: TObject);
    procedure TalSpeedButton2Click(Sender: TObject);
    procedure TalSpeedButton4Click(Sender: TObject);
    procedure TalSpeedButton5Click(Sender: TObject);
    procedure btnHtermClick(Sender: TObject);
    procedure SetDataSource;
  private
    { Private declarations }
    azonosito : string;
    azonosito_id : string;
    vvizsDat : string;
    insz_kod : string;
    dTermDat : string;
    Func : string;
    mode : string;
    bVemhestTorolniKell : boolean;
    sVemhesRekordDatum : Tdate;
    sTermSql : string;
    bBecsukhat : Boolean;
    function Mezok_kitoltve:Boolean;
    procedure VemhesRekorbolVkTorles(sEgyedId: string; sVemhesRekorddatum : Tdate);
    procedure VaneParositas(sEgyedId: string);
  public
    { Public declarations }
  end;


function OpenTermekenyitesek(egyed_id, azonosito, mode:string; var vissza : TTalParamList):Boolean;
function OpenTermekenyitesBrow:Boolean;
function OpenVemhessegekBrow:Boolean;


implementation

uses (*QfrmSpermaKlt, QSysTools, QfrmBika,*) udtmTarka, QfrmBika,
  QfrmhTerm;

{$R *.dfm}

function OpenTermekenyitesek(egyed_id, azonosito, mode:string; var vissza : TTalParamList):Boolean;
const
  termSql = ' SELECT ' +
            ' t.ID, ' +
            ' E.ENAR, ' +
            ' e.FULSZAM, ' +
            ' e.TEHENSZAM, ' +
            ' e.ID_ENAR, ' +
            ' t.DATUM, ' +
            ' T.KPLSZ, ' +
            ' APA.NEV as BIKANEV, ' +
            ' T.TSZAM, ' +
            ' T.EREDET, ' +
            ' T.ALLOMAS, ' +
            ' T.EGYED_ID, ' +
            ' T.SZUPOV, ' +
            ' T.ISMBIK, ' +
            ' t.MOD, ' +
            ' T.INSZ, ' +
            ' T.TIP, ' +
            ' T.ALLAPOT, ' +
            ' t.VEMH_DATUM, ' +
            ' t.UTMOD_DAT, ' +
            ' t.UTMOD_KOD ' +
            ' from TERMEKENYITESEK t ' +
            ' JOIN APA ON APA.KPLSZ = T.KPLSZ ' +
            ' join egyedek E on E.id= t.egyed_id ';
var
  termSql1 : string;
  frmTermKarbm: TfrmTermKarbm;
begin
  Result := false;
  termSql1 := ' where t.EGYED_ID = ' + egyed_id  +
            ' order by DATUM ';
  frmTermKarbm := TfrmTermKarbm.Create(Application);
  try
    frmTermKarbm.azonosito := azonosito;
    frmTermKarbm.azonosito_id := egyed_id;
    frmTermKarbm.Func :='TERMKARB';
    With frmTermKarbm do begin
      lblS2.Visible := false;
      lblS1.Visible := false;
      edtDatTol.Visible := false;
      btnLeker.Visible := false;
      frmTermKarbm.SetDataSource;
    end;
    frmTermKarbm.mode := mode;
    if dtmTarka.sdsTermekenyitesek.Active then dtmTarka.sdsTermekenyitesek.close;
    dtmTarka.sdsTermekenyitesek.DataSet.CommandText := termSql  + termSql1;
  //  dtmTarka.sdsTermekenyitesekENAR.Visible := False;
  //  dtmTarka.sdsTermekenyitesek.DataSet.Parameters.ParamByName('EGYED_ID').Value := egyed_id;
    try
      Screen.Cursor := crHourGlass;
      dtmTarka.sdsTermekenyitesek.Open;
    finally
      Screen.Cursor := crArrow;
    end;
    frmTermKarbm.WindowState := wsNormal;
    frmTermKarbm.btnCancel.Caption := 'Kilépés';
    frmTermKarbm.Caption := dtmTarka.AzonIr(azonosito) +' egyed termékenyítései';
    dtmTarka.qryInsz.Open;
    dtmTarka.qryTermMod.Open;
    dtmTarka.qryVemhKod.Open;
    dtmTarka.qrySperTip.Open;
    dtmTarka.qrySperEred.Open;
    dtmTarka.qrySperElo.Open;
    dtmTarka.qryVemhKod.Open;
    frmTermKarbm.bBecsukhat := false;
    frmTermKarbm.btnHterm.Visible := true;

    if dtmTarka.UserKarb = '0' then
    begin
       frmTermKarbm.btnUj.Enabled := false;
       frmTermKarbm.btnModosit.Enabled := false;
       frmTermKarbm.btnTorol.Enabled := false;
     end;

    if frmTermKarbm.ShowModal = mrOK then begin
      vissza.Add('TERM_DATUM',dtmTarka.sdsTermekenyitesekDATUM.AsDateTime);
      vissza.Add('TERM_ID',dtmTarka.sdsTermekenyitesekID.AsString);
      vissza.Add('KPLSZ',dtmTarka.sdsTermekenyitesekKPLSZ.AsString);
      vissza.Add('BIKANEV',dtmTarka.sdsTermekenyitesekBIKANEV.AsString);
      Result := true;
    end;
    dtmTarka.sdsTermekenyitesek.Close;
    dtmTarka.qryInsz.Close;
    dtmTarka.qryTermMod.Close;
    dtmTarka.qryVemhKod.Close;
    dtmTarka.qrySperTip.Close;
    dtmTarka.qrySperEred.Close;
    dtmTarka.qrySperElo.Close;
    if dtmTarka.qryVemhKod.Active then dtmTarka.qryVemhKod.Close;
  finally
    FreeAndNil(frmTermKarbm);
  end;
end;

procedure TfrmTermKarbm.SetDataSource;
begin;
      grdVal.DataSource         := dtmTarka.dtsTermekenyitesek;
      edtAzonosito.DataSource   := dtmTarka.dtsTermekenyitesek;
      edtFulszam.DataSource     := dtmTarka.dtsTermekenyitesek;
      edtTehenszam.DataSource   := dtmTarka.dtsTermekenyitesek;
      lucTermMod.DataSource     := dtmTarka.dtsTermekenyitesek;
      lucTermMod.ListSource     := dtmTarka.dtsTermMod;
      edtTermDatum.DataSource   := dtmTarka.dtsTermekenyitesek;
      edtTermBika.DataSource    := dtmTarka.dtsTermekenyitesek;
      edtBikanev.DataSource     := dtmTarka.dtsTermekenyitesek;
      edtSpermaAzon.DataSource  := dtmTarka.dtsTermekenyitesek;
      lucSperElo.DataSource     := dtmTarka.dtsTermekenyitesek;
      lucSperEred.DataSource    := dtmTarka.dtsTermekenyitesek;
      lucSpermTip.DataSource    := dtmTarka.dtsTermekenyitesek;
      lucSperElo.ListSource     := dtmTarka.dtsSperElo;
      lucSperEred.ListSource    := dtmTarka.dtsSperEred;
      lucSpermTip.ListSource    := dtmTarka.dtsSperTip;
      lucFigyelo.DataSource     := dtmTarka.dtsTermekenyitesek;
      lucInsz.DataSource        := dtmTarka.dtsTermekenyitesek;
      lucVemhKod.DataSource     := dtmTarka.dtsTermekenyitesek;
      lucInsz.ListSource        := dtmTarka.dtsInsz;
      lucVemhKod.ListSource     := dtmTarka.dtsVemhKod;
      edtVemhDat.DataSource     := dtmTarka.dtsTermekenyitesek;
end;

function OpenTermekenyitesBrow:Boolean;
const
  termSql = ' SELECT ' +
            ' T.ID, ' +
            ' E.ENAR, ' +
            ' e.FULSZAM, ' +
            ' e.TEHENSZAM, ' +
            ' e.ID_ENAR, ' +
            ' T.DATUM, ' +
            ' T.KPLSZ, ' +
            ' APA.NEV as BIKANEV, ' +
            ' T.TSZAM, ' +
            ' T.EREDET, ' +
            ' T.ALLOMAS, ' +
            ' T.EGYED_ID, ' +
            ' T.SZUPOV, ' +
            ' T.ISMBIK, ' +
            ' T.MOD, ' +
            ' T.INSZ, ' +
            ' T.TIP, ' +
            ' T.ALLAPOT, ' +
            ' T.VEMH_DATUM, ' +
            ' T.UTMOD_DAT, ' +
            ' T.UTMOD_KOD ' +
            ' FROM TERMEKENYITESEK T ' +
            ' JOIN apa ON APA.KPLSZ = T.KPLSZ ' +
            ' JOIN egyedek E on E.id= T.egyed_id ' +
            ' where T.UTMOD_DAT > ';
//            ' where Datediff(day, t.UTMOD_DAT, getdate())<1';
var
  s : string;
  frmTermKarbm : TfrmTermKarbm;
begin
  Result := false;
  frmTermKarbm := TfrmTermKarbm.Create(Application);
  frmTermKarbm.SetDataSource;
  try
    frmTermKarbm.azonosito := '';
    frmTermKarbm.azonosito_id := '';
    frmTermKarbm.Func :='TERMKARB';
    With frmTermKarbm do begin
      lblS2.Visible := true;
      lblS1.Visible := true;
      edtDatTol.Visible := true;
      btnLeker.Visible := true;
      // SetDataSource;
    end;
    frmTermKarbm.mode := 'B';
    frmTermKarbm.sTermSql := termsql;

    dtmTarka.qryInsz.Open;
    dtmTarka.qryTermMod.Open;
    dtmTarka.qryVemhKod.Open;
    dtmTarka.qrySperTip.Open;
    dtmTarka.qrySperEred.Open;
    dtmTarka.qrySperElo.Open;

    dtmTarka.sdsTermekenyitesekENAR.Visible := true;
    s := FormatDateTime('yyyy.mm.dd',date-1);
    frmTermKarbm.edtDatTol.Text := s;
    if dtmTarka.sdsTermekenyitesek.Active then dtmTarka.sdsTermekenyitesek.Close;
    dtmTarka.sdsTermekenyitesek.DataSet.CommandText := termSql + Quotedstr(s) + ' ' +  dtmTarka.TenyeszetWhereE;
    (*dtmTarka.sdsTermekenyitesek.DataSet.CommandText :=
          termSql + 'TO_DATE( ' + Quotedstr('2010.01.01') + ',' +  Quotedstr('YYYY.MM.DD') + ')' + dtmTarka.TenyeszetWhereE; *)
    try
      Screen.Cursor := crHourGlass;
      dtmTarka.sdsTermekenyitesek.Open;
    finally
      Screen.Cursor := crArrow;
    end;

    frmTermKarbm.btnCancel.Caption := 'Kilépés';
    frmTermKarbm.dTermDat := '';
    frmTermKarbm.cbCsakTerm.Visible := true;
    frmTermKarbm.lucVemhKod.Enabled := false;
    frmTermKarbm.edtVemhDat.Enabled := false;
    frmTermKarbm.tbVemhKod.Enabled := false;

    frmTermKarbm.Caption := 'Termékenyítések rögzítése : adott naptól rögzített adatok';
    frmTermKarbm.bBecsukhat := false;
  if dtmTarka.UserKarb = '0' then
  begin
    frmTermKarbm.btnUj.Enabled := false;
    frmTermKarbm.btnModosit.Enabled := false;
    frmTermKarbm.btnTorol.Enabled := false;
  end;
    if frmTermKarbm.ShowModal = mrOK then
      Result := true;
    dtmTarka.qryInsz.Close;
    dtmTarka.qryTermMod.Close;
    dtmTarka.qryVemhKod.Close;
    dtmTarka.sdsTermekenyitesek.Close;

    frmTermKarbm.lucVemhKod.Enabled := true;
    frmTermKarbm.edtVemhDat.Enabled := true;
    frmTermKarbm.tbVemhKod.Enabled := true;
  finally
    FreeAndNil(frmTermKarbm);
  end;

end;

function OpenVemhessegekBrow:Boolean;
const
  termSql = ' SELECT ' +
            ' T.ID, ' +
            ' E.ENAR, ' +
            ' E.FULSZAM, ' +
            ' E.TEHENSZAM, ' +
            ' E.ID_ENAR, ' +
            ' T.DATUM, ' +
            ' T.KPLSZ, ' +
            ' APA.NEV as BIKANEV, ' +
            ' T.TSZAM, ' +
            ' T.EREDET, ' +
            ' T.ALLOMAS, ' +
            ' T.EGYED_ID, ' +
            ' T.SZUPOV, ' +
            ' T.ISMBIK, ' +
            ' T.MOD, ' +
            ' T.INSZ, ' +
            ' T.TIP, ' +
            ' T.ALLAPOT, ' +
            ' T.VEMH_DATUM, ' +
            ' T.UTMOD_DAT, ' +
            ' T.UTMOD_KOD ' +
            ' FROM TERMEKENYITESEK t ' +
            ' JOIN apa ON APA.KPLSZ = T.KPLSZ ' +
            ' JOIN egyedek E on E.id= t.egyed_id ' +
            ' where t.UTMOD_DAT > ';
//            and (Datediff(day, t.UTMOD_DAT, getdate())<1)';
var
  SQl : string;
  s : string;
  frmTermKarbm : TfrmTermKarbm;
begin
  frmTermKarbm := TfrmTermKarbm.Create(Application);
  try
    frmTermKarbm.azonosito := '';
    frmTermKarbm.azonosito_id := '';
    frmTermKarbm.Func:='VEMHKARB';
    frmTermKarbm.mode := 'B';
    frmTermKarbm.SetDataSource;
    With frmTermKarbm do begin
      lblS2.Visible := true;
      lblS1.Visible := true;
      edtDatTol.Visible := true;
      btnLeker.Visible := true;
    end;
    s := FormatDateTime('yyyy.mm.dd',date-1);
    frmTermKarbm.edtDatTol.Text := s;
    dtmTarka.sdsTermekenyitesek.DataSet.CommandText := termSql + Quotedstr(s) + ' ' +  dtmTarka.TenyeszetWhereE;
    frmTermKarbm.sTermSql := termSql;
    dtmTarka.sdsTermekenyitesekENAR.Visible := true;
    try
      Screen.Cursor := crHourGlass;
      dtmTarka.sdsTermekenyitesek.Open;
    finally
      Screen.Cursor := crArrow;
    end;

    dtmTarka.qryInsz.Open;
    dtmTarka.qryTermMod.Open;
    dtmTarka.qryVemhKod.Open;
    dtmTarka.qrySperTip.Open;
    dtmTarka.qrySperEred.Open;
    dtmTarka.qrySperElo.Open;
    frmTermKarbm.dTermDat := '';
    frmTermKarbm.cbCsakTerm.Visible := false;

    frmTermKarbm.Caption := 'Vemhességvizsgálat adatainak rögzítése : a mai napon rögzített adatok';
    frmTermKarbm.bBecsukhat := false;

    if dtmTarka.UserKarb = '0' then
    begin
      frmTermKarbm.btnUj.Enabled := false;
      frmTermKarbm.btnModosit.Enabled := false;
      frmTermKarbm.btnTorol.Enabled := false;
    end;
    frmTermKarbm.ShowModal;

      try
        try
          with dtmTarka do begin
            dtmTarka.cnTarka.BeginTrans;
            sdsTermekenyitesek.DisableControls;
            sdsTermekenyitesek.first;
            While not sdsTermekenyitesek.eof do begin
              if dtmTarka.sdsTermekenyitesekVEMH_DATUM.value <> NULL then begin
                SQL := 'update termekenyitesek ' +
                     ' SET ALLAPOT='+Quotedstr(dtmTarka.sdsTermekenyitesekALLAPOT.AsString) +
                     ' , VEMH_DATUM='+Quotedstr(FormatDateTime('yyyy.mm.dd',dtmTarka.sdsTermekenyitesekVEMH_DATUM.AsDateTime)) +
                     ' , UTMOD_DAT=' +Quotedstr(FormatDateTime('yyyy.mm.dd',dtmTarka.sdsTermekenyitesekUTMOD_DAT.AsDateTime)) +
                     ' , UTMOD_KOD='+Quotedstr(dtmTarka.sdsTermekenyitesekUTMOD_KOD.AsString) +
                     ' where EGYED_ID='+dtmTarka.sdsTermekenyitesekEGYED_ID.AsString +
                     ' and DATUM = '+Quotedstr(dtmTarka.sdsTermekenyitesekDATUM.AsString);
                dtmTarka.cnTarka.Execute(SQL);
              end;
              sdsTermekenyitesek.next;
            end;
           end;
           dtmTarka.cnTarka.CommitTrans;
        except
          if dtmTarka.cnTarka.InTransaction then
            dtmTarka.cnTarka.RollbackTrans;
          dtmTarka.MsgDlg('Az adatok mentése nem sikerült!', mtWarning, [mbOK], 0);
        end;
      finally
        dtmTarka.sdsTermekenyitesek.EnableControls;
      end;
    Result := true;
    dtmTarka.qryInsz.Close;
    dtmTarka.qryTermMod.Close;
    dtmTarka.qryVemhKod.Close;
    dtmTarka.sdsTermekenyitesek.Close;
    dtmTarka.qrySperTip.Close;
    dtmTarka.qrySperEred.Close;
    dtmTarka.qrySperElo.Close;
  finally
    FreeAndNil(frmTermKarbm);
  end;

end;






procedure TfrmTermKarbm.btnModositClick(Sender: TObject);
begin
  if dtmTarka.sdsTermekenyitesek.RecordCount = 0 then exit;
  inherited;
  dtmTarka.sdsTermekenyitesek.Edit;
  dtmTarka.dtsTermekenyitesek.Edit;
  Self.KarbGombBeallit(False);
  Self.pnlKeres.Enabled := false;
  edtAzonosito.Enabled := false;
  if Self.Func='TERMKARB' then begin
    edtTermDatum.Enabled := true;
    edtTermBika.Enabled := true;
    TalSpeedButton1.Enabled := true;
    edtSpermaAzon.Enabled := true;
    lucSperElo.Enabled := true;
    lucSperEred.Enabled := true;
    lucSpermTip.Enabled := true;
    lucFigyelo.Enabled := true;
    lucVemhKod.Enabled := true;
    edtVemhDat.Enabled := true;
    lucInsz.Enabled := true;
    lucTermMod.Enabled := true;
    tbInsz.Enabled := true;
    if lucTermMod.CanFocus then lucTermMod.SetFocus;
  end else begin
    edtTermDatum.Enabled := false;
    edtTermBika.Enabled := false;
    TalSpeedButton1.Enabled := false;
    lucInsz.Enabled := false;
    lucTermMod.Enabled := false;
    tbInsz.Enabled := false;
    edtSpermaAzon.Enabled := false;
    lucSperElo.Enabled := false;
    lucSperEred.Enabled := false;
    lucSpermTip.Enabled := false;
    if lucVemhKod.CanFocus then lucVemhKod.SetFocus;
  end;
end;


procedure TfrmTermKarbm.btnUjClick(Sender: TObject);
var
  tdat : tdate;
  vk : string;
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
  pnlKeres.Enabled := false;
  if azonosito_id>'' then begin
    with dtmTarka do begin
      sdsTermekenyitesek.First;
      vk := '';
      dtmTarka.ElozoTerm(azonosito_id,tdat, vk);
      if (vk = '1') or (vk = '2')  then begin
        dtmTarka.MsgDlg('A termékenyítendõ egyed megállapított vemhes! Vemhességi kód : '+ vk +#10+
                   'Az új termékenyítéssel a vemhességi kód törlõdik!',mterror,[mbOK],0 );
        bVemhestTorolniKell := true;
        sVemhesRekordDatum := Tdat;
      end else begin
        bVemhestTorolniKell := false;
      end;
    end;
  end;

  insz_kod := dtmTarka.sdsTermekenyitesekINSZ.AsString;
  dtmTarka.sdsTermekenyitesek.Append;
  edtAzonosito.Enabled := False;
  dtmTarka.sdsTermekenyitesekENAR.AsString := azonosito;
  dtmTarka.sdsTermekenyitesekEGYED_ID.AsString := azonosito_id;

  if cbCsakTerm.Visible and cbCsakTerm.Checked then
    dtmTarka.sdsTermekenyitesekMOD.AsString := '2'
  else
    dtmTarka.sdsTermekenyitesekMOD.AsString := '1';

  dtmTarka.sdsTermekenyitesekINSZ.AsString := insz_kod;
  Self.KarbGombBeallit(False);
  if Self.Func<>'VEMHKARB' then begin
    edtTermDatum.Enabled := true;
    edtTermBika.Enabled := true;
    TalSpeedButton1.Enabled := true;
    lucInsz.Enabled := true;
    tbInsz.Enabled := true;
    lucTermMod.Enabled := true;
    edtSpermaAzon.Enabled := true;
    lucSpermTip.Enabled := true;
    lucSperEred.Enabled := true;
    lucSperElo.Enabled := true;
    if dTermDat <> EmptyStr then
      dtmTarka.sdsTermekenyitesekDATUM.AsString := dTermDat;

  end else begin
    if vvizsDat <> EmptyStr then
      dtmTarka.sdsTermekenyitesekVEMH_DATUM.AsString := vvizsDat;

    edtTermDatum.Enabled := false;
    edtTermBika.Enabled := false;
    TalSpeedButton1.Enabled := false;
    lucInsz.Enabled := false;
    tbInsz.Enabled := false;
    lucTermMod.Enabled := false;
    edtSpermaAzon.Enabled := false;
    lucSpermTip.Enabled := false;
    lucSperEred.Enabled := false;
     lucSperElo.Enabled := false;
  end;
  if azonosito <> EmptyStr then
    edtAzonosito.Enabled := false
  else
    edtAzonosito.Enabled := true;
  if edtAzonosito.Enabled then begin
    if edtAzonosito.CanFocus then edtAzonosito.SetFocus;
  end else
    if lucTermMod.CanFocus
      then lucTermMod.SetFocus
    else
      if lucVemhKod.CanFocus then lucVemhKod.SetFocus;
end;



procedure TfrmTermKarbm.actOKExecute(Sender: TObject);
var
  sEgyedId : string;
  sTermDatum : string;
begin
  if dtmTarka.sdsTermekenyitesek.State = dsBrowse then begin
    if mode = 'V' then begin
      ModalResult := mrOK;
      bBecsukhat := true;
    end;
    exit;
  end;

  if not Mezok_kitoltve then exit;

  dtmTarka.sdsTermekenyitesekUTMOD_DAT.AsDateTime := now();
  dtmTarka.sdsTermekenyitesekUTMOD_KOD.AsString := dtmTarka.UserKod;
  if dtmTarka.sdsTermekenyitesekINSZ.AsString = EmptyStr then begin
     dtmTarka.sdsTermekenyitesekINSZ.AsVariant := NULL;
  end;

  if Self.Func <> 'VEMHKARB' then begin
    dtmTarka.cnTarka.BeginTrans;
    dTermDat :=dtmTarka.sdsTermekenyitesekDATUM.AsString;
  end;

  if dtmTarka.sdsTermekenyitesekMOD.AsString='1' then
  begin
    if dtmTarka.sdsTermekenyitesek.State = dsInsert then
    begin
      // if Self.Func <> 'VEMHKARB' then
      //  dtmTarka.SpermaKeszletMod(dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.AsString,1);
    end;
    if dtmTarka.sdsTermekenyitesek.State = dsEdit then begin
      //  if dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.OldValue <> dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.NewValue then begin
      //    dtmTarka.SpermaKeszletMod(dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.OldValue,-1);
      //    dtmTarka.SpermaKeszletMod(dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.NewValue,1);
      //  end;
    end;
    insz_kod := dtmTarka.sdsTermekenyitesekINSZ.AsString;
  end;

  sEgyedId := dtmTarka.sdsTermekenyitesekEGYEd_ID.AsString;
  sTermDatum := dtmTarka.sdsTermekenyitesekDATUM.AsString;

  if Self.Func='VEMHKARB' then
  begin
    vvizsDat := dtmTarka.sdsTermekenyitesekVEMH_DATUM.AsString;
  end;

  dtmTarka.sdsTermekenyitesek.Post;

  if Self.Func<>'VEMHKARB' then
  begin
    try
      // log('Termkarb_OK:Egyed:'+dtmTarka.sdsTermekenyitesekAZONOSITO.AsString);
      dtmTarka.sdsTermekenyitesek.ApplyUpdates(0);

      if bVemhestTorolniKell then
      begin
        try
          try
            VemhesRekorbolVkTorles(sEgyedId, sVemhesRekordDatum);
          except
          // Log('VemhesRekorbolVkTorles'+sEgyedId+sVemhesRekordEssz+sVemhesRekordTssz);
          end;
        finally
        end;
      end;

      dtmTarka.cnTarka.CommitTrans;

      try
        Screen.Cursor := crHourGlass;
        dtmTarka.sdsTermekenyitesek.Refresh;
      finally
        Screen.Cursor := crArrow;
      end;
      dtmTarka.sdsTermekenyitesek.Locate('EGYED_ID;DATUM', VarArrayOf([sEgyedId, sTermDatum]), []);
    except
      if dtmTarka.cnTarka.InTransaction then
        dtmTarka.cnTarka.RollbackTrans;
      dtmTarka.MsgDlg('Az adatok mentése nem sikerült!', mtWarning, [mbOK], 0);
//      Log('Termkarb: Rollback');
    end;
  end;
  Self.grdVal.Enabled := true;
  Self.pnlKeres.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;



procedure TfrmTermKarbm.actMegsemExecute(Sender: TObject);
begin
  if dtmTarka.sdsTermekenyitesek.State = dsBrowse then begin
    ModalResult := mrCancel;
    bBecsukhat := true;
  end else
    dtmTarka.sdsTermekenyitesek.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlKeres.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

function TfrmTermKarbm.Mezok_kitoltve: Boolean;
begin
  result := false;
  if edtAzonosito.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az egyed megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtAzonosito.SetFocus;
    exit;
  end;
  if edtTermDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A termékenyítés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtTermDatum.SetFocus;
    exit;
  end;
  if edtTermBika.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az termékenyítõ bika megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtTermBika.SetFocus;
    exit;
  end;
  if (dtmTarka.sdsTermekenyitesekMOD.AsString='1') and (lucInsz.Text = EmptyStr) and (lucInsz.Enabled) then begin
    dtmTarka.MsgDlg('Az inszeminátor megadása kötelezõ!', mtWarning, [mbOK], 0);
    lucInsz.SetFocus;
    exit;
  end;
  if lucTermMod.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az termékenyítés mód megadása kötelezõ!', mtWarning, [mbOK], 0);
    lucTermMod.SetFocus;
    exit;
  end;
//  if Self.Func = 'VEMHKARB' then begin
    if (lucVemhKod.Text <> EmptyStr) and (edtVemhDat.Text='    .  .  ') then begin
      if dtmTarka.sdsTermekenyitesekVEMH_DATUM.AsDateTime > StrToDate('2006.08.01') then begin
        dtmTarka.MsgDlg('A vemhesség dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
        edtVemhDat.SetFocus;
        exit;
      end;
    end;

//  end;

  Result := true;
end;

procedure TfrmTermKarbm.edtAzonositoExit(Sender: TObject);
var
  sAzon : string;
  sAzonId : string;
  vk : string;
  tdat : Tdate ;
  Vissza : TTAlParamList;
  id,bika_id,klsz,nev,eloall,tps,Sp_azon, Becenev, eredet, rnev: string;
begin
  if edtAzonosito.Enabled and dtmTarka.megsemNyomas(ActiveControl) then
    exit;

  if edtAzonosito.Text > EmptyStr then
  begin
    sAzon := edtAzonosito.Text;

    if not dtmTarka.VaneIlyenEgyed(edtAzonosito.Text, sAzon,sAzonId,true) then
    begin
      if sAzonId <> '-1' then
        dtmTarka.MsgDlg('Nincs ilyen élõ egyed, vagy az egyed már kikerült a tenyészetbõl!', mterror, [mbOK], 0);

      sAzon := '';
      sAzonId := '';
      edtAzonosito.SelectAll;
      if edtAzonosito.CanFocus then
        edtAzonosito.SetFocus;
    end else begin
      dtmTarka.sdsTermekenyitesekEGYED_ID.AsString:=sAzonId;
      dtmTarka.sdsTermekenyitesekENAR.AsString:=sAzon;

      if Self.Func = 'VEMHKARB' then begin
        Vissza := TTalParamList.Create;
        try
          if dtmTarka.UtolsoNvTermekenyites(sAzonId,Vissza) = false then begin
            dtmTarka.MsgDlg('Nem találtam az egyednek termékenyítést!',mterror,[mbOK],0 );
            edtAzonosito.SelectAll;
            if edtAzonosito.CanFocus then
              edtAzonosito.SetFocus;
          end else begin
            dtmTarka.sdsTermekenyitesekDATUM.AsString := Vissza.ItemsByName('DATUM').values[0];
            dtmTarka.sdsTermekenyitesekMOD.AsString := Vissza.ItemsByName('MOD').values[0];
            dtmTarka.sdsTermekenyitesekINSZ.AsString := Vissza.ItemsByName('INSZ').values[0];
            dtmTarka.sdsTermekenyitesekKPLSZ.AsString := Vissza.ItemsByName('KPLSZ').values[0];
            dtmTarka.sdsTermekenyitesekTSZAM.AsString := Vissza.ItemsByName('TSZAM').values[0];
            dtmTarka.sdsTermekenyitesekEREDET.AsString := Vissza.ItemsByName('EREDET').values[0];
            dtmTarka.sdsTermekenyitesekALLOMAS.AsString := Vissza.ItemsByName('ALLOMAS').values[0];
            dtmTarka.sdsTermekenyitesekTIP.AsString := Vissza.ItemsByName('TIP').values[0];

            if Vissza.ItemsByName('ALLAPOT').values[0] <> EmptyStr then begin
              dtmTarka.sdsTermekenyitesekALLAPOT.AsString := Vissza.ItemsByName('ALLAPOT').values[0];
              dtmTarka.sdsTermekenyitesekVEMH_DATUM.AsString := Vissza.ItemsByName('VEMH_DATUM').values[0];
            end;
            KLSZ := dtmTarka.sdsTermekenyitesekKPLSZ.AsString;

            if dtmTarka.BikaAdat(klsz,nev) then begin
              dtmTarka.sdsTermekenyitesekKPLSZ.AsString := klsz;
              dtmTarka.sdsTermekenyitesekBIKANEV.AsString := nev;
              exit;
            end;
          end;
        finally
          vissza.Free;
        end;
      end else begin
        vk := '';
         dtmTarka.ElozoTerm(sAzonId, tdat, vk);

        if (vk = '1') then begin
          dtmTarka.MsgDlg('A termékenyítendõ egyed megállapított vemhes! Vemhességi kód : '+ vk +#10+
                     'Az új termékenyítéssel a vemhességi kód törlõdik!',mterror,[mbOK],0 );
          bVemhestTorolniKell := true;
          sVemhesRekordDatum := tdat;

        end  else if vk = '2' then begin
          dtmTarka.MsgDlg('Az egyed vizsgálat alapján valószínû vemhes! Vemhességi kód : '+ vk +#10+
                     'Ha folytatja a rögzítést, a vemhességi kód törlõdik!',mterror,[mbOK],0 );
          bVemhestTorolniKell := true;
          sVemhesRekordDatum := tdat;

        end else if vk = '3' then begin
          dtmTarka.MsgDlg('Az egyednek vetélése volt!'+#10+
                     'Ez tájékoztató üzenet, folytassa az adatrögzítést!',mterror,[mbOK],0 );
          bVemhestTorolniKell := true;
          sVemhesRekordDatum := tdat;
        end else if vk = '4' then begin
          dtmTarka.MsgDlg('Embrió kimosás történt!'+#10+
                     'Ez tájékoztató üzenet, folytassa az adatrögzítést!',mterror,[mbOK],0 );
          bVemhestTorolniKell := true;
          sVemhesRekordDatum := tdat;
        end else if vk = '5' then begin
          dtmTarka.MsgDlg('Embrió beültetés történt!'+#10+
                     'Ez tájékoztató üzenet, folytassa az adatrögzítést!',mterror,[mbOK],0 );
          bVemhestTorolniKell := true;
          sVemhesRekordDatum := tdat;
        end else begin
          bVemhestTorolniKell := false;
        end;
      end;

    end;
  end;
end;


procedure TfrmTermKarbm.edtTermSszExit(Sender: TObject);
var
  id : string;
begin
  if dtmTarka.sdsTermekenyitesek.State = dsInsert  then
    if not dtmTarka.megsemNyomas(ActiveControl) then
      if (edtAzonosito.Text <> EmptyStr) and (edtTermDatum.Text <> EmptyStr) then begin
        if dtmTarka.VaneTerm(dtmTarka.sdsTermekenyitesekEGYED_ID.AsString,edtTermDatum.Text, id) then begin
          dtmTarka.MsgDlg('Már van ilyen termékenyítés rögzítve!',mterror,[mbOK],0 );
          edtTermDatum.SetFocus;
        end;
      end else begin
        dtmTarka.MsgDlg('A termékenyítés dátum megadása kötelezõ!',mterror,[mbOK],0 );
        edtTermDatum.SetFocus;
      end;
end;


procedure TfrmTermKarbm.SpermaKltValasztExecute(Sender: TObject);
var
  vissza : TTalParamList;
begin
(*  vissza := TTalParamList.Create;                                // spklt.választó
  if dtmTarka.sdsTermekenyitesekMOD.AsString = '1' then begin  // mesterséges term.
    if SperKltVal(Vissza) then begin
       dtmTarka.sdsTermekenyitesekKLSZ.AsString := Vissza.itemsByName('KLSZ').values[0];
       dtmTarka.sdsTermekenyitesekSPERMA_AZONOSITO.AsString := Vissza.itemsByName('SPERMA_AZONOSITO').values[0];
       dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.AsString := Vissza.itemsByName('ID').values[0];
       dtmTarka.sdsTermekenyitesekBIKANEV.AsString := Vissza.itemsByName('BIKA_NEV').values[0];
       dtmTarka.sdsTermekenyitesekBIKA_ID.AsString := Vissza.itemsByName('BIKA_ID').values[0];
       dtmTarka.sdsTermekenyitesekSPERMA_TIPUSNEV.AsString := Vissza.itemsByName('SPERMA_TIPUS').values[0];
       dtmTarka.sdsTermekenyitesekSPERMA_ELOALLITO.AsString := Vissza.itemsByName('FORGALMAZO').values[0];
       dtmTarka.sdsTermekenyitesekSPERMA_EREDETNEV.AsString := Vissza.itemsByName('EREDETNEV').values[0];
       dtmTarka.sdsTermekenyitesekBECENEV.AsString := Vissza.itemsByName('BECENEV').values[0];
       if Self.lucInsz.CanFocus then
         Self.lucInsz.SetFocus
       else
         if Self.lucVemhKod.CanFocus then
           Self.lucVemhKod.SetFocus;
    end;
  end else begin*)
    vissza := TTalParamList.Create;
    Vissza.Add('MODE','VAL');                               // spklt.választó;
    if frmBika.BikaVal(Vissza) then begin
       dtmTarka.sdsTermekenyitesekKPLSZ.AsString   := Vissza.itemsByName('KLSZ').values[0];
       dtmTarka.sdsTermekenyitesekBIKANEV.AsString   := Vissza.itemsByName('BIKA_NEV').values[0];
       if lucVemhKod.CanFocus then
         Self.lucVemhKod.SetFocus
       else
         if btnOK.CanFocus then
           btnOK.SetFocus;
    end;
//  end;
  vissza.free;
//  inherited;
end;

procedure TfrmTermKarbm.edtTermBikaExit(Sender: TObject);
var
  id,bika_id,klsz,nev,eloall,tps,Sp_azon, Becenev, eredet, rnev :string;
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
(*  if edtTermBika.Text <> EmptyStr then begin
    if dtmTarka.sdsTermekenyitesekMOD.AsString = '1' then begin
      if (dtmTarka.sdsTermekenyitesek.State = dsInsert) or
        (dtmTarka.sdsTermekenyitesekKLSZ.OldValue<>edtTermBika.Text ) then begin
        if edtSpermaAzon.Text = EmptyStr then begin
          sp_azon := dtmTarka.VaneSpermaKlsz(edtTermBika.Text,true);
          if sp_azon = '' then begin
            dtmTarka.MsgDlg('Ennek a bikának nincs sperma készlete!', mtWarning, [mbOK], 0);
            edtTermBika.SelectAll;
            edtTermBika.SetFocus;
            exit;
          end;
          edtSpermaAzon.Text := Sp_azon;
        end else begin
          sp_azon := edtSpermaAzon.Text;
        end;
        klsz := edtTermBika.Text;
        if dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.AsString <> EmptyStr then id := dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.AsString;
        if dtmTarka.SpermaAdat(Sp_azon,id,bika_id,klsz,nev,tps,eloall, becenev,eredet) then begin
          dtmTarka.sdsTermekenyitesekBIKA_ID.AsString := bika_id;
          dtmTarka.sdsTermekenyitesekKLSZ.AsString := klsz;
          dtmTarka.sdsTermekenyitesekBIKANEV.AsString := nev;
          dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.AsString := id;
          dtmTarka.sdsTermekenyitesekSPERMA_TIPUSNEV.AsString := tps;
          dtmTarka.sdsTermekenyitesekSPERMA_ELOALLITO.AsString := eloall;
          dtmTarka.sdsTermekenyitesekBECENEV.AsString := becenev;
          dtmTarka.sdsTermekenyitesekSPERMA_EREDETNEV.AsString := eredet;
        end;
      end;
    end else begin *)
      if (dtmTarka.sdsTermekenyitesek.State = dsInsert) or
        (dtmTarka.sdsTermekenyitesekKPLSZ.OldValue <> dtmTarka.sdsTermekenyitesekKPLSZ.NewValue) then
      begin
        if not dtmTarka.VaneBika(edtTermBika.Text,'') then
        begin
            dtmTarka.MsgDlg('Nincs ilyen azonosítójú bika!', mtWarning, [mbOK], 0);
            edtTermBika.SelectAll;
            edtTermBika.SetFocus;
            exit;
        end;
        klsz := edtTermBika.Text;
        if dtmTarka.BikaAdat(klsz,nev) then begin
//          dtmTarka.sdsTermekenyitesekBIKA_ID.AsString := bika_id;
          dtmTarka.sdsTermekenyitesekKPLSZ.AsString := klsz;
          dtmTarka.sdsTermekenyitesekBIKANEV.AsString := nev;
//          dtmTarka.sdsTermekenyitesekBECENEV.AsString := nev;
        end;
      end;
//    end;
//  end else begin
//    SpermaKltValasztExecute(Self);
    if edtTermBika.Text = EmptyStr then edtTermBika.SetFocus;
//  end;
end;

procedure TfrmTermKarbm.edtTermDatumExit(Sender: TObject);
var
  Term_dat, VK:string;
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if edtTermDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A termékenyítés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtTermDatum.SelectAll;
    edtTermDatum.SetFocus;
    exit;
  end;
  if StrToDate(edtTermDatum.Text)  > Date then begin
    dtmTarka.MsgDlg('Hibás dátum!', mtWarning, [mbOK], 0);
    edtTermDatum.SelectAll;
    edtTermDatum.SetFocus;
  end;
  dtmTarka.UtolsoTermekenyites(dtmTarka.sdsTermekenyitesekEGYED_ID.AsString,Term_dat,VK);
  if Term_Dat > emptyStr  then begin
    if strToDate(edtTermDatum.Text) < StrToDate(Term_dat) then begin
      dtmTarka.MsgDlg('A megadott dátum régebbi, mint az utolsó termékenyítés dátuma!', mtWarning, [mbOK], 0);
      if dtmTarka.sdsTermekenyitesek.State = dsInsert then begin
        edtTermDatum.SelectAll;
        edtTermDatum.SetFocus;
      end;
    end;
    if dtmTarka.sdsTermekenyitesek.State=dsInsert then
      if strToDate(edtTermDatum.Text) = StrToDate(Term_dat) then begin
        dtmTarka.MsgDlg('A megadott dátumra már van másik termékenyítés rögzítve!', mtWarning, [mbOK], 0);
        edtTermDatum.SelectAll;
        edtTermDatum.SetFocus;
      end;
  end;
  Term_dat := dtmTarka.UtolsoElles(dtmTarka.sdsTermekenyitesekEGYED_ID.AsString);
  if Term_Dat > emptyStr  then begin
    if strToDate(edtTermDatum.Text) < StrToDate(Term_dat) then begin
      dtmTarka.MsgDlg('A megadott dátum régebbi, mint az utolsó ellés dátuma!', mtWarning, [mbOK], 0);
      if dtmTarka.sdsTermekenyitesek.State = dsInsert then begin
        edtTermDatum.SelectAll;
        edtTermDatum.SetFocus;
      end;
    end;
  end;
  inherited;
end;

procedure TfrmTermKarbm.KarbGombBeallit(mire: Boolean);
begin
  Self.btnUj.Enabled := mire;
  Self.btnModosit.Enabled := mire;
  Self.btnTorol.Enabled := mire;
  Self.btnNyomtat.Enabled := mire;
  Self.pnlKeres.Enabled := mire;
  if self.btnHterm.Visible then
    Self.btnHterm.Enabled := mire;
  if mire = false then
    Self.btnCancel.Caption := 'Mégsem'
  else
    Self.btnCancel.Caption := 'Kilépés';
  if mire then
    if Self.btnUj.CanFocus then Self.btnUj.SetFocus;
end;

procedure TfrmTermKarbm.VemhesRekorbolVkTorles(sEgyedId: string; sVemhesRekorddatum : Tdate);
var
  SQL : string;
begin
  SQL := 'update TERMEKENYITESEK set allapot = NULL, VEMH_DATUM = NULL ' +
         ' where egyed_id=' + sEgyedId + ' and datum =  TO_DATE(' + quotedstr(DateToStr(sVemhesRekordDatum)) + ',''yyyy.mm.dd'')'   ;

  dtmTarka.cnTarka.Execute(SQL);
end;

procedure TfrmTermKarbm.tbVemhKodClick(Sender: TObject);
begin
  dtmTarka.sdsTermekenyitesekALLAPOT.AsString := '';
  inherited;
end;


procedure TfrmTermKarbm.btnTorolClick(Sender: TObject);
var
  SQL : string;
begin
  inherited;
  if dtmTarka.sdsTermekenyitesek.RecordCount = 0 then exit;
  if dtmTarka.vaneTermreHivatkozoElles(dtmTarka.sdsTermekenyitesekEGYED_ID.AsString, dtmTarka.sdsTermekenyitesekID.AsString) then begin
    dtmTarka.MsgDlg('A termékenyítés nem törölhetõ, mert egy ellés hivatkozik rá!', mtWarning, [mbOK], 0);
    exit;
  end;
  if dtmTarka.MsgDlg('Biztos törli a tételt?', mtConfirmation , [mbYes, mbNo],0) = mrYes then begin
//    if dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.AsString <> EmptyStr then
//      dtmTarka.SpermaKeszletMod(dtmTarka.sdsTermekenyitesekSPERMAKLT_ID.AsString,-1);
    SQL := 'delete from termekenyitesek where id = ' +  dtmTarka.sdsTermekenyitesekID.AsString;
    dtmTarka.sdsTermekenyitesek.Close;
    dtmTarka.cnTarka.BeginTrans;
    try
      dtmTarka.cnTarka.Execute(SQL);
      dtmTarka.cnTarka.CommitTrans;
    except
      if dtmTarka.cnTarka.InTransaction then begin
        dtmTarka.cnTarka.RollbackTrans;
      end;
    end;
    dtmTarka.sdsTermekenyitesek.Open;
  end;
end;

procedure TfrmTermKarbm.tbInszClick(Sender: TObject);
begin
  dtmTarka.sdsTermekenyitesekINSZ.AsString := '';
  inherited;
end;

procedure TfrmTermKarbm.edtVemhDatExit(Sender: TObject);
begin
  if edtVemhDat.Text = '    .  .  ' then exit;
  if StrToDate(edtVemhDat.Text)  > Date then begin
    dtmTarka.MsgDlg('Hibás dátum!', mtWarning, [mbOK], 0);
    edtVemhDat.SelectAll;
    edtVemhDat.SetFocus;
  end;
  inherited;
end;

procedure TfrmTermKarbm.btnNyomtatClick(Sender: TObject);
var
  sazon : string;
  aa : string;
begin
  if Func = 'TERMKARB' then begin
    aa := dtmTarka.sATKFT_KOD;
    if frxRepLista.LoadFromFile('RogzTerm.fr3') then begin
       // paraméter átadás a lista fejhez
       sazon := dtmTarka.sdsTermekenyitesekID.AsString;
       dtmTarka.sdsTermekenyitesek.DisableControls;
       try
         frxRepLista.Variables.Clear;
         frxRepLista.Script.Variables['ENAR_KOD']:=dtmTarka.sTenyeszetKod;
         frxRepLista.Script.Variables['TENYESZET_NEV']:=dtmTarka.sTenyeszetNev;
         aa := dtmTarka.sATKFT_KOD;
         frxRepLista.Script.Variables['SzuroFeltetelek']:= DateToStr(now);
         frxRepLista.ShowReport();
       finally
         dtmTarka.sdsTermekenyitesek.Locate('ID',sazon,[]);
         dtmTarka.sdsTermekenyitesek.EnableControls;
       end;
    End;
  end;
  if Func = 'VEMHKARB' then begin
    aa := dtmTarka.sATKFT_KOD;
    if frxRepLista.LoadFromFile('RogzVemh.fr3') then begin
       // paraméter átadás a lista fejhez
       sazon := dtmTarka.sdsTermekenyitesekID.AsString;
       dtmTarka.sdsTermekenyitesek.DisableControls;
       try
         frxRepLista.Variables.Clear;
         frxRepLista.Script.Variables['ENAR_KOD']:=dtmTarka.sTenyeszetKod;
         frxRepLista.Script.Variables['TENYESZET_NEV']:=dtmTarka.sTenyeszetNev;
         aa := dtmTarka.sATKFT_KOD;
         frxRepLista.Script.Variables['SzuroFeltetelek']:= DateToStr(now);
         frxRepLista.ShowReport();
       finally
         dtmTarka.sdsTermekenyitesek.Locate('ID',sazon,[]);
         dtmTarka.sdsTermekenyitesek.EnableControls;
       end;
    End;
  end;

end;

procedure TfrmTermKarbm.btnLekerClick(Sender: TObject);
begin
    if dtmTarka.sdsTermekenyitesek.Active then
      dtmTarka.sdsTermekenyitesek.Close;

    dtmTarka.sdsTermekenyitesek.DataSet.CommandText := sTermSql + Quotedstr(edtDatTol.text) + ' ' +  dtmTarka.TenyeszetWhereE;
    try
      Screen.Cursor := crHourGlass;
      dtmTarka.sdsTermekenyitesek.Open;
    finally
      Screen.Cursor := crArrow;
    end;
end;

procedure TfrmTermKarbm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
//    if cbIvFigy.Checked then
//      dtmTarka.IniFileWrite('TermRogz', 'IV_FIGY','1')
//    else
//      dtmTarka.IniFileWrite('TermRogz', 'IV_FIGY','0');
end;


procedure TfrmTermKarbm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  CanClose := bBecsukhat;
end;

procedure TfrmTermKarbm.cbCsakTermClick(Sender: TObject);
begin
  if cbCsakTerm.Checked then begin
    lucVemhKod.Enabled := true;
    edtVemhDat.Enabled := true;
    tbVemhKod.Enabled := true;
  end else begin
    lucVemhKod.Enabled := false;
    edtVemhDat.Enabled := false;
    tbVemhKod.Enabled := false;
  end;

end;



procedure TfrmTermKarbm.VaneParositas(sEgyedId: string);
var
  SQL : string;
  tq : Ttalquery;
  SS : string;
begin
  if sEgyedId <> EmptyStr then
  begin
    SQL := 'SELECT B1.KLSZ AS B1, B2.KLSZ AS B2, B3.KLSZ AS B3 ' +
           ' FROM PAROSIT P ' +
           ' JOIN EGYEDEK E ON E.ID = P.EGYED_ID ' +
           ' LEFT JOIN BIKA B1 ON B1.ID = P.BIKA1_ID ' +
           ' LEFT JOIN BIKA B2 ON B2.ID = P.BIKA2_ID ' +
           ' LEFT JOIN BIKA B3 ON B3.ID = P.BIKA3_ID ' +
           ' WHERE P.EGYED_ID = ' + sEgyedId + ' and P.STATUS = 1';
  end
  else
    exit;

  ss := '';
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  if tq.FieldByName('B1').AsString <> EmptyStr then
      ss := ss + tq.FieldByName('B1').AsString;
  if tq.FieldByName('B2').AsString <> EmptyStr then
      ss := ss + ' ,' + tq.FieldByName('B2').AsString;
  if tq.FieldByName('B3').AsString <> EmptyStr then
      ss := ss + ' ,' + tq.FieldByName('B3').AsString;
  tq.Close;
  tq.free;
  if ss > '' then begin
    dtmTarka.MsgDlg('Párosított bikák az egyedhez: ' + ss, mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmTermKarbm.FormShow(Sender: TObject);
begin
//  cbIvFigy.Checked := StrToInt(dtmTarka.IniFileRead('TermRogz', 'IV_FIGY','0')) = 1;
  if func = 'VEMHKARB' then begin
    cbIvFigy.Checked := false;
    cbIvFigy.Visible := false;
  end else begin
    cbIvFigy.Visible := false;
  end;
  lblIvFigy.Visible := cbIvFigy.Checked;
  lucFigyelo.Visible := cbIvFigy.Checked;
  tbIvFigy.Visible := cbIvFigy.Checked;

  inherited;
end;


procedure TfrmTermKarbm.cbIvFigyClick(Sender: TObject);
begin
  lblIvFigy.Visible := cbIvFigy.Checked;
  lucFigyelo.Visible := cbIvFigy.Checked;
  tbIvFigy.Visible := cbIvFigy.Checked;
  inherited;  
end;

procedure TfrmTermKarbm.tbIvFigyClick(Sender: TObject);
begin
//  dtmTarka.sdsTermekenyitesekIV_JELZO.AsString := '';
  inherited;
end;

procedure TfrmTermKarbm.TalSpeedButton2Click(Sender: TObject);
begin
  inherited;
  dtmTarka.sdsTermekenyitesekTIP.AsString := '';
end;

procedure TfrmTermKarbm.TalSpeedButton4Click(Sender: TObject);
begin
  inherited;
  dtmTarka.sdsTermekenyitesekEREDET.AsString := '';
end;

procedure TfrmTermKarbm.TalSpeedButton5Click(Sender: TObject);
begin
  inherited;
  dtmTarka.sdsTermekenyitesekALLOMAS.AsString := '';
end;

procedure TfrmTermKarbm.btnHtermClick(Sender: TObject);
var
  vissza : TTalParamList;
begin
  vissza := TTalParamList.Create;
  try
    if dtmTarka.sdsTermekenyitesek.RecordCount = 0 then begin
      if (azonosito > EmptyStr) and  (azonosito_id > '0') then begin
        if OpenHTermE('TERM',azonosito_id, azonosito, vissza) then begin
            if not dtmTarka.LicenceDatEll then exit;
            if vissza.ItemsByName('BIKA') <> NIL then begin
              pnlKeres.Enabled := false;
              pnlMod.Enabled := true;
              insz_kod := dtmTarka.sdsTermekenyitesekINSZ.AsString;
              dtmTarka.sdsTermekenyitesek.Append;
              edtAzonosito.Enabled := False;
              dtmTarka.sdsTermekenyitesekENAR.AsString := vissza.itemsByName('ENAR').values[0];
              dtmTarka.sdsTermekenyitesekEGYED_ID.AsString := vissza.itemsByName('EGYED_ID').values[0];

              dtmTarka.sdsTermekenyitesekMOD.AsString := '4'; //háremszerû termékenyítés
              dtmTarka.sdsTermekenyitesekKPLSZ.AsString := vissza.itemsByName('BIKA').values[0];
              dtmTarka.sdsTermekenyitesekDATUM.AsDateTime := DateOf( vissza.itemsByName('DATUMTOL').values[0] +
                                                             (vissza.itemsByName('DATUMIG').values[0] -
                                                             vissza.itemsByName('DATUMTOL').values[0]) / 2) ;

              edtSpermaAzon.Enabled := false;
              lucSpermTip.Enabled := false;
              lucSperEred.Enabled := false;
              lucSperElo.Enabled := false;

              Self.KarbGombBeallit(False);
              edtTermDatum.Enabled := true;
              edtTermBika.Enabled := false;
              TalSpeedButton1.Enabled := false;
              lucInsz.Enabled := false;
              tbInsz.Enabled := false;
              lucTermMod.Enabled := false;
              btnHterm.Enabled := false;

              if edtTermDatum.CanFocus then edtTermDatum.SetFocus;
            end;
        end;
      end else begin
        OpenHTerm(vissza);
      end;
    end else begin
      if OpenHTermE('TERM',dtmtarka.sdsTermekenyitesekEGYED_ID.AsString, dtmtarka.sdsTermekenyitesekENAR.AsString, vissza) then begin
          if not dtmTarka.LicenceDatEll then exit;
          if vissza.ItemsByName('BIKA') <> NIL then begin
            pnlKeres.Enabled := false;
            pnlMod.Enabled := true;
            insz_kod := dtmTarka.sdsTermekenyitesekINSZ.AsString;
            dtmTarka.sdsTermekenyitesek.Append;
            edtAzonosito.Enabled := False;
            dtmTarka.sdsTermekenyitesekENAR.AsString := vissza.itemsByName('ENAR').values[0];
            dtmTarka.sdsTermekenyitesekEGYED_ID.AsString := vissza.itemsByName('EGYED_ID').values[0];

            dtmTarka.sdsTermekenyitesekMOD.AsString := '4'; //háremszerû termékenyítés
            dtmTarka.sdsTermekenyitesekKPLSZ.AsString := vissza.itemsByName('BIKA').values[0];
            dtmTarka.sdsTermekenyitesekDATUM.AsDateTime := DateOf( vissza.itemsByName('DATUMTOL').values[0] +
                                                           (vissza.itemsByName('DATUMIG').values[0] -
                                                           vissza.itemsByName('DATUMTOL').values[0]) / 2) ;

            edtSpermaAzon.Enabled := false;
            lucSpermTip.Enabled := false;
            lucSperEred.Enabled := false;
            lucSperElo.Enabled := false;

            Self.KarbGombBeallit(False);
            edtTermDatum.Enabled := true;
            edtTermBika.Enabled := false;
            TalSpeedButton1.Enabled := false;
            lucInsz.Enabled := false;
            tbInsz.Enabled := false;
            lucTermMod.Enabled := false;
            btnHterm.Enabled := false;

            if edtTermDatum.CanFocus then edtTermDatum.SetFocus;
          end;
      end;
    end;
  finally
    vissza.free;
  end;
end;

end.
