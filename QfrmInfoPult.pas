unit QfrmInfoPult;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTALButton, Grids, DBCtrls, Db, uTalParams,StrUtils,
  uTALDBLookupComboBox, StdCtrls, Buttons, uTALBitBtn, ExtCtrls, uTALPanel,
  Mask, uValidedit, uDBValidedit, uTALDBEdit, uTALLabel, uTALDBGrid,
  Wwdbigrd, Wwdbgrid, uTALSpeedButton, uTALEdit, uTALDBComboBox, uTALBevel,
  uTALDBListBox, uTALRXDBComboBox, Wwkeycb, uTALSearch, uTALComboBox,
  wwcheckbox, uTALDBCheckBox, uTALDBMemo, UtalStoredProc, DateUtils,
  DBClient, uTALSimpleDataSet, Atkotes;

type
  TfrmInfoPult = class(TForm)
    TalPanel2: TTalPanel;
    TalPanel3: TTalPanel;
    btnUj: TTalBitBtn;
    btnModosit: TTalBitBtn;
    btnKilepes: TTalBitBtn;
    TalLabel5: TTalLabel;
    TalLabel6: TTalLabel;
    TalLabel7: TTalLabel;
    TalLabel8: TTalLabel;
    TalLabel10: TTalLabel;
    TalLabel11: TTalLabel;
    TalLabel12: TTalLabel;
    edtSzulDat: TTalDBEdit;
    edtAnyaEnar: TTalDBEdit;
    edtApaKlsz: TTalDBEdit;
    edtKiesesDatum: TTalDBEdit;
    lucIvar: TTalDBLookupComboBox;
    lucKIOK: TTalDBLookupComboBox;
    lucKiMod: TTalDBLookupComboBox;
    btnIvadekok: TTalBitBtn;
    btnKiBehajt: TTalBitBtn;
    btnEuAdatok: TTalBitBtn;
    btnTenyErt: TTalBitBtn;
    btnElap: TTalBitBtn;
    TalDBGrid1: TTalDBGrid;
    TalPanel4: TTalPanel;
    TalPanel5: TTalPanel;
    TalPanel6: TTalPanel;
    btnElles: TTalButton;
    btnTermekenyites: TTalButton;
    TalDBGrid3: TTalDBGrid;
    TalPanel7: TTalPanel;
    btnMeres: TTalButton;
    btnKullem: TTalBitBtn;
    TalLabel14: TTalLabel;
    edtAzonosito: TTalDBEdit;
    TalDBGrid2: TTalDBGrid;
    lucKonstr: TTalDBLookupComboBox;
    TalLabel1: TTalLabel;
    btnKereses: TTalSpeedButton;
    TalLabel2: TTalLabel;
    edtFulszam: TTalDBEdit;
    TalLabel3: TTalLabel;
    edtNev: TTalDBEdit;
    TalBevel1: TTalBevel;
    TalDBGrid1IButton: TwwIButton;
    lucSzin: TTalDBLookupComboBox;
    lucFajta: TTalDBLookupComboBox;
    TalLabel15: TTalLabel;
    TalLabel16: TTalLabel;
    TalLabel17: TTalLabel;
    edtTehenszam: TTalDBEdit;
    cbBikanevelo: TTalDBCheckBox;
    TalLabel19: TTalLabel;
    edtMegjegyzes: TTalDBMemo;
    TalLabel20: TTalLabel;
    edtMarhalevelszam: TTalDBEdit;
    TalLabel22: TTalLabel;
    btnTorol: TTalBitBtn;
    TalSpeedButton3: TTalSpeedButton;
    TalSpeedButton1: TTalSpeedButton;
    TalLabel23: TTalLabel;
    lucKikhely: TTalDBLookupComboBox;
    TalSpeedButton2: TTalSpeedButton;
    btnEgyed: TTalSpeedButton;
    edtKeres: TTalEdit;
    TalLabel26: TTalLabel;
    edtBekerDat: TTalDBEdit;
    TalLabel29: TTalLabel;
    edtkiesesTomeg: TTalDBEdit;
    lblEllDat: TTalLabel;
    lblTermDat: TTalLabel;
    TalLabel4: TTalLabel;
    TalLabel31: TTalLabel;
    edtSzulSuly: TTalDBEdit;
    TalLabel32: TTalLabel;
    TalLabel33: TTalLabel;
    edtAnyaEll: TTalDBEdit;
    TalLabel34: TTalLabel;
    edtAnyaDonor: TTalDBEdit;
    TalLabel35: TTalLabel;
    TalLabel36: TTalLabel;
    edtApaFuszam: TTalDBEdit;
    TalLabel37: TTalLabel;
    edtApaNev: TTalDBEdit;
    TalLabel38: TTalLabel;
    lucVer1: TTalDBLookupComboBox;
    TalLabel39: TTalLabel;
    edtVer1_old: TDBEdit;
    TalLabel40: TTalLabel;
    lucVer2: TTalDBLookupComboBox;
    TalLabel41: TTalLabel;
    edtVer2_old: TDBEdit;
    TalLabel42: TTalLabel;
    lucVer3: TTalDBLookupComboBox;
    edtVer3_old: TDBEdit;
    lucVer4: TTalDBLookupComboBox;
    edtVer4_old: TDBEdit;
    TalLabel47: TTalLabel;
    TalLabel48: TTalLabel;
    TalLabel49: TTalLabel;
    TalLabel50: TTalLabel;
    TalLabel9: TTalLabel;
    edtTko: TTalDBEdit;
    TalLabel13: TTalLabel;
    TalLabel25: TTalLabel;
    edtSzarv: TTalDBEdit;
    edtMarhalev2: TTalDBEdit;
    lblKezeles: TTalLabel;
    TalLabel18: TTalLabel;
    edtTenyeszetKod: TTalDBEdit;
    TalLabel21: TTalLabel;
    edtValNap: TTalDBEdit;
    TalLabel24: TTalLabel;
    edtValsuly: TTalDBEdit;
    TalLabel27: TTalLabel;
    TalLabel28: TTalLabel;
    edt205suly: TTalDBEdit;
    TalLabel30: TTalLabel;
    TalLabel43: TTalLabel;
    edtSv: TTalDBEdit;
    TalLabel44: TTalLabel;
    btnHterm: TTalButton;
    edtMin: TTalDBEdit;
    TalLabel45: TTalLabel;
    edtSzarmTeny: TTalDBEdit;
    qryInfElles: TTalSimpleDataSet;
    qryInfEllesELLES_DATUM: TDateTimeField;
    qryInfEllesKOD_NEV: TWideStringField;
    qryInfEllesVegDatum: TDateTimeField;
    dtsInfElles: TDataSource;
    qryInfTerm: TTalSimpleDataSet;
    qryInfTermDATUM: TDateTimeField;
    qryInfTermKPLSZ: TWideStringField;
    qryInfTermKOD_NEV: TWideStringField;
    dtsInfTerm: TDataSource;
    qryInfMeres: TTalSimpleDataSet;
    dtsInfMeres: TDataSource;
    edtTKVSZAM: TTalDBEdit;
    qryInfMeresKOD_NEV: TWideStringField;
    qryInfMeresDATUM: TDateTimeField;
    qryInfMeresTOMEG: TIntegerField;
    edtVer1: TTalEdit;
    edtVer3: TTalEdit;
    edtVer2: TTalEdit;
    edtVer4: TTalEdit;
    procedure btnKilepesClick(Sender: TObject);
    procedure btnKeresesClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure edtKeres1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnUjClick(Sender: TObject);
    procedure edtAzonositoExit(Sender: TObject);
    procedure btnEllesClick(Sender: TObject);
    procedure btnTermekenyitesClick(Sender: TObject);
    procedure btnMeresClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TalDBGrid1RowChanged(Sender: TObject);
    procedure TalDBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure btnKiBehajtClick(Sender: TObject);
    procedure btnEuAdatokClick(Sender: TObject);
    procedure btnElapClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnTorolClick(Sender: TObject);
    procedure TalSpeedButton3Click(Sender: TObject);
    procedure TalSpeedButton1Click(Sender: TObject);
    procedure btnKullemClick(Sender: TObject);
    procedure btnIvadekokClick(Sender: TObject);
    procedure btnOsokClick(Sender: TObject);
    procedure edtKiesesDatumExit(Sender: TObject);
    procedure TalSpeedButton2Click(Sender: TObject);
    procedure btnEgyedClick(Sender: TObject);
    procedure edtKeresExit(Sender: TObject);
    procedure TalSpeedButton4Click(Sender: TObject);
    procedure btnTenyErtClick(Sender: TObject);
    procedure TalDBGrid2RowChanged(Sender: TObject);
    procedure btnHtermClick(Sender: TObject);
    procedure edtSzulDatExit(Sender: TObject);
    procedure btnAtkotesClick(Sender: TObject);
    procedure edtVerhanyadChanged(Sender: TObject);
    procedure VerhanyadDB2Edit();
  private
    { Private declarations }
    EditMode : string;
    AktId : string;
    CurrentID : Integer;
    VerhanyadChanged : Boolean;
    SQL_statement: string;
    procedure ControlokBeallitasa(mode:Boolean);
    procedure GombokBeallitasa(mode:Boolean);
    function Mezok_Kitoltve:Boolean;
    function megsemNyomas(activecontrol:TWinControl):Boolean;
  public
    { Public declarations }
  end;

Procedure EgyedInfoPult;


implementation

uses udtmtarka, QfrmEgyedValaszto, QfrmTomeg1, QfrmEllesKarb,
  QfrmTermKarbm, QfrmKullem, QfrmhTerm, QfrmEgyediLapLista, QSysTools;
  // QfrmInfoPult; //, QfrmFejesekm, QfrmTomeg1,  QfrmTermKarbm,
//  QfrmEllesKarb, QfrmKezelesek, Qfrmosza, QfrmKullem,
//  QfrmEuAdatok, QfrmIvadek, QfrmOsok, QfrmEgyedValaszto, QfrmHgi,
//  QfrmParosit;

{$R *.dfm}


Procedure EgyedInfoPult;
var
  frmInfoPult: TfrmInfoPult;
begin
  frmInfoPult := TfrmInfoPult.create(Application);

  // frmInfoPult.sdsInfo.Connection := dtmTarka.cnTarka;
  frmInfoPult.qryInfElles.Connection := dtmTarka.cnTarka;
  frmInfoPult.qryInfTerm.Connection := dtmTarka.cnTarka;
  frmInfoPult.qryInfMeres.Connection := dtmTarka.cnTarka;
  frmInfoPult.ControlokBeallitasa(false);
  frmInfoPult.GombokBeallitasa(false);
  frmInfoPult.edtKeres.Text := dtmtarka.ElsoEgyed;
  frmInfoPult.lucKonstr.ListSource := dtmTarka.dtsKonstr;
  frmInfoPult.lucSzin.ListSource := dtmTarka.dtsInfSzin;
  frmInfoPult.lucFajta.ListSource := dtmTarka.dtsInfFajta;
  frmInfoPult.lucVer1.ListSource := dtmTarka.dtsVer1;
  frmInfoPult.lucVer2.ListSource := dtmTarka.dtsVer2;
  frmInfoPult.lucVer3.ListSource := dtmTarka.dtsVer3;
  frmInfoPult.lucVer4.ListSource := dtmTarka.dtsVer4;
  frmInfoPult.lucIvar.ListSource := dtmTarka.dtsIvar;
  frmInfoPult.lucKIOK.ListSource := dtmTarka.dtsKiesesOK;
  frmInfoPult.lucKiMod.ListSource := dtmTarka.dtsKiesesKod;
  frmInfoPult.lucKikhely.ListSource := dtmTarka.dtsKikHely;

    // dtmTarka.sdsInfo.DataSet.CommandText := StringReplace( frmInfoPult.SQL_statement,':ID','0', [rfReplaceAll]);
  dtmTarka.sdsInfo.Open;
  dtmtarka.qryIvar.Open;
  dtmtarka.qryStatus.Open;
  // dtmtarka.qryTermCsop.Open;
  dtmtarka.qryKiesesOk.Open;
  dtmtarka.qryKiesesKod.Open;
  dtmtarka.qryKonstr.Open;
  dtmtarka.qryInfFajta.Open;
  dtmtarka.qryInfSzin.Open;
  dtmtarka.qryKikHely.Open;
  dtmTarka.qryVer1.Open;
  dtmTarka.qryVer2.Open;
  dtmTarka.qryVer3.Open;
  dtmTarka.qryVer4.Open;
  // dtmtarka.qryTulaj.Open;
  dtmtarka.qryTartHely.Open;

  frmInfoPult.EditMode := 'L';

  try
    frmInfoPult.showmodal;
  finally
    if dtmTarka.sdsInfo.Active then
      dtmTarka.sdsInfo.Close;
    dtmtarka.qryIvar.Close;
    dtmtarka.qryStatus.Close;
    // dtmtarka.qryTermCsop.Close;
    dtmtarka.qryKiesesOk.Close;
    dtmtarka.qryKiesesKod.Close;
    dtmtarka.qryKonstr.Close;
    frmInfoPult.qryInfElles.Close;
    frmInfoPult.qryInfTerm.Close;
    frmInfoPult.qryInfMeres.Close;
    dtmtarka.qryInfFajta.Close;
    dtmtarka.qryKikHely.Close;
    dtmtarka.qryInfSzin.Close;
    // dtmtarka.qryTulaj.Close;
    dtmtarka.qryTartHely.Close;
    dtmTarka.qryVer1.Close;
    dtmTarka.qryVer2.Close;
    dtmTarka.qryVer3.Close;
    dtmTarka.qryVer4.Close;

    FreeAndNil(frmInfoPult);
  end;
end;


procedure TfrmInfoPult.ControlokBeallitasa(mode:Boolean);
// A komponens összes elemének  a letíltása/engedélyezése
begin
  edtKeres.Enabled := not mode;
  btnEgyed.Enabled := not mode;
  btnKereses.Enabled := not mode;

  self.edtSzulDat.Enabled := mode;
  self.edtBekerDat.Enabled := mode;
  self.edtSzarmTeny.Enabled := mode;
  edtFulszam.Enabled := mode;
  edtTehenszam.Enabled := mode;
  edtNev.Enabled := mode;
  edtAnyaEnar.Enabled := mode;
  edtApaKlsz.Enabled := mode;
  edtAzonosito.Enabled := mode;
  edtKiesesDatum.Enabled := mode;
  lucKonstr.Enabled := mode;
  lucSzin.Enabled := mode;
  lucFajta.Enabled := mode;
  cbBikanevelo.Enabled := mode;
  edtMegjegyzes.Enabled := mode;
  lucIvar.Enabled := mode;
  lucKiMod.Enabled := mode;
  lucKikhely.Enabled := mode;
  edtkiesesTomeg.Enabled := mode;
  edtTenyeszetKod.Enabled := mode;
  edtAnyaEll.Enabled := mode;
  edtAnyaDonor.Enabled := mode;
  edtSzarv.Enabled := mode;
  edtTko.Enabled := mode;
  edtTKVSZAM.Enabled := mode;
  edtSzulSuly.Enabled := mode;
//  lucTulaj.Enabled := mode;
  lucKIOK.Enabled := mode;
  edtMin.Enabled := mode;
  TalSpeedButton1.Enabled := mode;
  TalSpeedButton3.Enabled := mode;
  TalSpeedButton2.Enabled := mode;
  edtMarhalevelszam.Enabled := mode;
  edtMarhalev2.Enabled := mode;
  btnModosit.Enabled := mode;
  lucVer1.Enabled := mode;
  lucVer2.Enabled := mode;
  lucVer3.Enabled := mode;
  lucVer4.Enabled := mode;
  edtVer1.Enabled := mode;
  edtVer2.Enabled := mode;
  edtVer3.Enabled := mode;
  edtVer4.Enabled := mode;
  edtValNap.Enabled := mode;
  edtValsuly.Enabled := mode;
  edt205suly.Enabled := mode;
  edtSv.Enabled := mode;
  (* if dtmTarka.UserKarb = '0' then
  begin
    btnTorol.Enabled := false;
    btnModosit.Enabled := false;
    btnUj.Enabled := false;
  end; *)

  if mode = true then begin
    btnModosit.Caption := 'Mentés';
    btnKilepes.Caption := 'Mégsem';
  end else begin
    btnModosit.Caption := 'Módosit';
    btnKilepes.Caption := 'Kilépés';
  end;
end;



procedure TfrmInfoPult.GombokBeallitasa(mode:Boolean);
// A komponens összes elemének  a letíltása/engedélyezése
begin
  btnElles.Enabled := mode;
  btnTermekenyites.Enabled := mode;
  btnMeres.Enabled := mode;
  btnHterm.Enabled := mode;
  btnIvadekok.Enabled := mode;
  btnKiBehajt.Enabled := mode;
  btnEuAdatok.Enabled := mode;
  btnTenyErt.Enabled := mode;
  btnElap.Enabled := mode;
  btnKullem.Enabled := mode;
end;



procedure TfrmInfoPult.btnKilepesClick(Sender: TObject);
begin
  if EditMode <> 'L' then begin
    dtmTarka.sdsInfo.Cancel;
    ControlokBeallitasa(false);
    GombokBeallitasa(true);
    Self.EditMode := 'L';
    Self.btnUj.Enabled := true;
    Self.btnModosit.Enabled := true;
    Self.btnTorol.Enabled := true;
    Self.edtKeres.Enabled := true;
    Self.Caption := 'Egyed adatainak lekérdezése';
    if qryInfElles.Active then
      qryInfElles.Close;
//    qryInfElles.DataSet.Parameters.ParamByName('ID').Value := frmInfoPult.sdsInfo.fieldByName('ID').AsInteger;
//    qryInfElles.Open;
//    qryInfElles.Last;
    exit;
  end;
  ModalResult := mrOK;
end;


procedure TfrmInfoPult.btnKeresesClick(Sender: TObject);
var
  sAzon : string;
  sAzonId : string;
  sEllDat : string;
  sTermDat : string;
  vk : string;
  sDatumt, sDatumh : string;
begin
  if megsemNyomas(ActiveControl) then exit;

  if (trim(edtKeres.text) = EmptyStr) //  and (aktId > '')
  then exit;

  if (trim(edtKeres.Text) > EmptyStr) then
  begin
    sAzon := edtKeres.Text;
    if not dtmtarka.VaneEgyedEnar(edtKeres.Text, sAzon, sAzonId) then
      sAzonId := '0';
  end
  else
  begin
    sAzonId := aktId;
  end;

  if sAzonId = EmptyStr then sAzonId := '0';
  if dtmTarka.sdsInfo.Active then dtmTarka.sdsInfo.Close;

  // dtmTarka.sdsInfo.DataSet.CommandText :=
  //     StringReplace( SQL_statement,':ID',
  //                 sAzonId, [rfReplaceAll]);
  dtmTarka.sdsInfo.DataSet.Parameters.ParamByName('ID').Value := StrToInt64(sAzonId);
  dtmTarka.sdsInfo.Open;

  if dtmTarka.sdsInfo.RecordCount = 0 then   // nincs ilyen egyed
  begin
    dtmTarka.sdsInfo.Close;
    dtmTarka.MsgDlg('Nincs ilyen egyed!',mterror,[mbOK],0 );
    edtKeres.SelectAll;
    GombokBeallitasa(false);

    if qryInfElles.Active then
      qryInfElles.Close;

    qryInfElles.DataSet.Parameters.ParamByName('ID').Value := 0;
    qryInfElles.Open;
    qryInfMeres.DataSet.Parameters.ParamByName('ID').Value := 0;
    qryInfMeres.Open;

    btnModosit.Enabled := false;
    edtKeres.SetFocus;
    exit;
  end
  else
  begin
    VerhanyadDB2Edit;
    CurrentID := dtmTarka.sdsInfoID.AsVariant;

    if qryInfElles.Active then
      qryInfElles.Close;
    qryInfElles.DataSet.Parameters.ParamByName('ID').Value := dtmTarka.sdsInfo.FieldByName('ID').Value;

    qryInfElles.Open;
      if not qryInfElles.Eof then
      qryInfElles.Last;

    qryInfMeres.Close;
    qryInfMeres.DataSet.Parameters.ParamByName('ID').Value := dtmTarka.sdsInfo.FieldByName('ID').Value;
    qryInfMeres.Open;

    sEllDat := dtmtarka.UtolsoElles(dtmTarka.sdsInfo.FieldByName('ID').AsString);
    dtmtarka.UtolsoTermekenyites(dtmTarka.sdsInfo.FieldByName('ID').AsString, sTermDat, vk);
    lblEllDat.Caption := '';
    lblTermDat.Caption := '';

    if (dtmTarka.sdsInfo.FieldByName('KIKOD').AsString = EmptyStr) then
    begin
      if sEllDat > EmptyStr then
      begin
        lblEllDat.Caption := IntToStr(DaysBetween(today,strToDate(sEllDAt)));
      end;

      if (sTermDat > EmptyStr) and (sEllDat<sTermDat) then
      begin
        // lblTermDat.Caption := IntToStr(DaysBetween(today,strToDate(sTermDat)));
        lblTermDat.Caption := dtmtarka.EllesekKoztiNap;
      end;
    end;

    lblKezeles.Visible := false;
    if dtmtarka.EgyedKezelesAlatt(sAzon,sDatumt, sDatumh) then
    begin
      lblKezeles.Caption := 'Az egyed kezelés alatt áll! Az eü. várakozási idõ letelik:';
      if sDatumt <> EmptyStr then
      begin
        lblKezeles.Caption := lblKezeles.Caption + ' tej: '+ sDatumt;
        lblKezeles.Visible := true;
      end;

      if sDatumh <> EmptyStr then
      begin
        lblKezeles.Caption := lblKezeles.Caption + ' - hús: '+ sDatumh;
        lblKezeles.Visible := true;
      end;
    end;

    edtKeres.Text := '';
    btnModosit.Enabled := true;
    GombokBeallitasa(true);
    btnModosit.SetFocus;
  end;
end;


procedure TfrmInfoPult.btnModositClick(Sender: TObject);
var
  EgyedAzon, azon, id : string;
  RegiKorcs : string;
  RegiOk, sql : string;
  nof_errors : Integer;
begin
  if Self.EditMode = 'L' then begin
    if not dtmtarka.LicenceDatEll then exit;
    if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
    Self.Caption := 'Egyed adatainak módosítása';
    Self.ControlokBeallitasa(True);
    Self.edtAzonosito.Enabled := false;  // módosításkor nem módosíthatja az azonosítót
    if not dtmTarka.isAdmin then begin
       Self.lucKonstr.Enabled := false;
       Self.lucFajta.Enabled := false;
       Self.lucSzin.Enabled := false;
       Self.lucVer1.Enabled := false;
       Self.lucVer2.Enabled := false;
       Self.lucVer3.Enabled := false;
       Self.lucVer4.Enabled := false;
       Self.edtVer1.Enabled := false;
       Self.edtVer2.Enabled := false;
       Self.edtVer3.Enabled := false;
       Self.edtVer4.Enabled := false;
    end;
    GombokBeallitasa(false);
    Self.EditMode := 'U';
    Self.btnUj.Enabled := false;
    Self.btnTorol.Enabled := false;
    Self.edtKeres.Enabled := false;
    edtSzulDat.SetFocus;
    VerhanyadChanged := false;
    dtmTarka.sdsInfo.Edit;
  end else begin
    if not Mezok_kitoltve then exit;
    EgyedAzon := dtmTarka.sdsInfo.FieldByName('ENAR').AsString;
    dtmTarka.sdsInfo.FieldByName('MOD_DAT').AsDateTime := now();
    dtmTarka.sdsInfo.FieldByName('MOD_KOD').AsString := dtmtarka.UserKod;
    // sdsInfo.FieldByName('VSZ1').Value := 55/2;
    // sdsInfoVSZ1.AsBCD := 55;
    if EditMode = 'N' then begin
//      sdsInfoTULAJDONOS_TENYESZET_ID.AsString := dtmtarka.sTenyeszetId;
      RegiKorcs := '';
      RegiOk := '';
    end else begin
      if dtmTarka.sdsInfo.FieldByName('KIKOK').OldValue <> NULL then
        RegiOk := dtmTarka.sdsInfo.FieldByName('KIKOK').OldValue
      else
        RegiOk := '';
    end;

    // edtVer1_old.EditText := '55.1';
    dtmTarka.sdsInfo.Post;
    EgyedAzon := dtmTarka.sdsInfoENAR.AsString;
    nof_errors := dtmTarka.sdsInfo.ApplyUpdates(0);
    dtmTarka.sdsInfo.Close;
    Self.Caption := 'Egyed adatainak lekérdezése';

    if VerhanyadChanged then begin
      sql := 'update egyedek ' +
             ' set vsz1 = ' + StringReplace( edtVer1.EditText,',','.',[]) + ', ' +
             ' vsz2 = ' + StringReplace( edtVer2.EditText,',','.',[]) + ', ' +
             ' vsz3 = ' + StringReplace( edtVer3.EditText,',','.',[]) + ', ' +
             ' vsz4 = ' + StringReplace( edtVer4.EditText,',','.',[]) +
             ' where ID = ' + IntToStr(CurrentID);
      log(sql);

      dtmTarka.cnTarka.BeginTrans;
      try
         dtmTarka.cnTarka.Execute(SQL);
         dtmTarka.cnTarka.CommitTrans;
      except
         if dtmTarka.cnTarka.InTransaction then begin
            dtmTarka.cnTarka.RollbackTrans;
         end;
         dtmTarka.MsgDlg( 'Az adatok mentése nem sikerült!' + dtmTarka.cnTarka.Errors.Item[0].Description, mtWarning, [mbOK], 0);
      end;
    end;

    dtmTarka.sdsInfo.Close;
    if EditMode = 'N' then begin
      if dtmTarka.VaneEgyedEnar(EgyedAzon, azon, Id) then
        dtmTarka.sdsInfo.DataSet.Parameters.ParamByName('ID').Value := ID;
    end;

    dtmTarka.sdsInfo.Open;
    VerhanyadDB2Edit;

    ControlokBeallitasa(false);
    GombokBeallitasa(true);
    if qryInfElles.Active then
      qryInfElles.Close;
    qryInfElles.DataSet.Parameters.ParamByName('ID').Value := dtmTarka.sdsInfo.fieldByName('ID').AsInteger;
    qryInfElles.Open;
    Self.EditMode := 'L';
    Self.btnUj.Enabled := true;
    Self.btnModosit.Enabled := true;
    btnTorol.Enabled := true;
    Self.edtKeres.Enabled := true;
    exit;
  end;
end;



procedure TfrmInfoPult.edtKeres1Exit(Sender: TObject);
begin
  if megsemNyomas(ActiveControl) then exit;
  if edtKeres.Text <> EmptyStr then begin
    btnKeresesClick(NIL);
  end;
end;

procedure TfrmInfoPult.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dtmTarka.sdsInfo.State in [dsInsert, dsEdit] then
    btnKilepesClick(NIL);
end;

procedure TfrmInfoPult.btnUjClick(Sender: TObject);
begin
  if not dtmtarka.LicenceDatEll then exit;
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  Self.Caption := 'Új egyed felvétele';
  if dtmTarka.sdsInfo.Active = false then
    dtmTarka.sdsInfo.Open;
  dtmTarka.sdsInfo.Append;
  dtmTarka.sdsInfoTENYESZET.AsString := dtmTarka.TenyeszetTKOD;
  if qryInfElles.Active then
    qryInfElles.Close;
  qryInfElles.DataSet.Parameters.ParamByName('ID').Value := 0;
    qryInfElles.Open;

  Self.ControlokBeallitasa(True);
  GombokBeallitasa(false);
  Self.EditMode := 'N';
  Self.btnUj.Enabled := false;
  Self.btnTorol.Enabled := false;
  Self.edtKeres.Enabled := false;
  Self.edtAzonosito.SetFocus;
end;


procedure TfrmInfoPult.edtAzonositoExit(Sender: TObject);
var
 a : string;
 kulfoldi : Boolean;
begin
  if EditMode='N' then begin
    kulfoldi := false;
    if not megsemNyomas(ActiveControl) then
      if edtAzonosito.Text <> EmptyStr then begin
        if dtmtarka.VaneEgyed(edtAzonosito.Text) then begin
          dtmTarka.MsgDlg('Már van ilyen azonosítójú egyed!',mterror,[mbOK],0 );
          edtAzonosito.SetFocus;
          exit;
        end;
        if (LeftStr(edtAzonosito.Text,2)<>'HU') then begin
          a := leftstr(edtAzonosito.Text,1);
          if ((a='0') or (a='1')  or (a='2') or (a='3') or (a='4') or (a='5')
            or (a='6') or (a='7') or (a='8') or (a='9')) then begin
            if (Length(edtAzonosito.Text) <> 10) then begin
              dtmTarka.MsgDlg('Hibás az azonosító hossza!',mterror,[mbOK],0 );
              edtAzonosito.SetFocus;
              exit;
            end else begin
              if (a='3') then
              if dtmtarka.EnarCdvEll(edtAzonosito.Text)=false then begin
                edtAzonosito.SetFocus;
                exit;
              end;  
            end;
          end else kulfoldi := true;
        end;
        if (leftstr(edtAzonosito.Text,2)='HU') and (Length(edtAzonosito.Text) <> 12) then begin
          dtmTarka.MsgDlg('Hibás az azonosító hossza!',mterror,[mbOK],0 );
          edtAzonosito.SetFocus;
        end else begin
          if kulfoldi = false then
            if dtmtarka.EnarCdvEll(edtAzonosito.Text)=false then begin
              edtAzonosito.SetFocus;
              exit;
            end;
        end;
      end else begin
        dtmTarka.MsgDlg('Az azonosító megadása kötelezõ!',mterror,[mbOK],0 );
        edtAzonosito.SetFocus;
        exit;
      end;
      if (LeftStr(edtAzonosito.Text,2)<>'HU') then begin
        edtFulszam.Text := midstr(edtAzonosito.Text,6,4) ;
      end;
      if (LeftStr(edtAzonosito.Text,2)='HU') then begin
        edtFulszam.Text := midstr(edtAzonosito.Text,8,4) ;
      end;

  end;
end;

function TfrmInfoPult.megsemNyomas(activecontrol: TWinControl): Boolean;
begin
    result:=false;
    if activeControl is TTalBitBtn then
       if (ActiveControl as TTalBitBtn).Name = 'btnKilepes' then
           result:=true;
end;

procedure TfrmInfoPult.btnEllesClick(Sender: TObject);
var
  datum : string;
begin
  datum := qryInfEllesELLES_DATUM.AsString;

  if OpenEllesek(dtmTarka.sdsInfo.FieldByName('ID').AsString, dtmTarka.sdsInfo.FieldByName('ENAR').AsString,
                 qryInfEllesELLES_DATUM.AsString) then
  begin
    qryInfElles.Close;
    qryInfElles.Open;

    if qryInfElles.RecordCount > 0 then
    begin
      if datum <> EmptyStr then
        qryInfElles.Locate('ELLES_DATUM',datum,[]);
      dtmTarka.sdsInfo.Refresh;
    end;
  end;
end;

procedure TfrmInfoPult.btnTermekenyitesClick(Sender: TObject);
var
  vissza : TTalParamList;
begin
  vissza := TTalParamList.Create;
  try
    OpenTermekenyitesek(dtmTarka.sdsInfo.FieldByName('ID').AsString, dtmTarka.sdsInfo.FieldByName('ENAR').AsString,'B',vissza);
    qryInfTerm.Close;
    qryInfTerm.Open;
  finally
    FreeAndNil(vissza);
  end;
end;

procedure TfrmInfoPult.btnMeresClick(Sender: TObject);
begin
  OpenTestTomegek(dtmTarka.sdsInfo.FieldByName('ID').AsString, dtmTarka.sdsInfo.FieldByName('ENAR').AsString);
  qryInfMeres.Close;
  qryInfMeres.Open;
end;

procedure TfrmInfoPult.FormShow(Sender: TObject);
begin
  btnKeresesClick(NIL);
  if edtKeres.CanFocus then
    edtKeres.SetFocus;
end;

procedure TfrmInfoPult.TalDBGrid1RowChanged(Sender: TObject);
var
  datum_tol, datum_ig : string;
begin
    if qryInfTerm.Active then
      qryInfTerm.Close;
    log('1');
    qryInfTerm.DataSet.Parameters.ParamByName('ID').Value := dtmTarka.sdsInfo.fieldByName('ID').Value;
    qryInfTerm.DataSet.Parameters.ParamByName('ID').Value := dtmTarka.sdsInfo.fieldByName('ID').Value;
    log('2');
    if qryInfElles.RecNo <> qryInfElles.RecordCount then
    begin
    log('3');
      if qryInfElles.RecNo > 1 then begin
    log('4');
        datum_tol := qryInfElles.fieldByName('ELLES_DATUM').AsString ;
        datum_ig  := qryInfElles.fieldByName('VegDatum').AsString ;
        qryInfTerm.DataSet.Parameters.ParamByName('DATUMTOL').Value := LeftStr(datum_tol,10);
        qryInfTerm.DataSet.Parameters.ParamByName('DATUMTOL1').Value := LeftStr(datum_tol,10);
      end else begin
    log('5');
        datum_ig  := qryInfElles.fieldByName('VegDatum').AsString ;
        qryInfTerm.DataSet.Parameters.ParamByName('DATUMTOL').Value := '1900.01.01';
        qryInfTerm.DataSet.Parameters.ParamByName('DATUMTOL1').Value := LeftStr(datum_ig,10) ;
      end;
    end else begin
    log('6');
      if qryInfElles.RecNo > 1 then begin
    log('7');
        datum_ig  := qryInfElles.fieldByName('VegDatum').AsString ;
        datum_tol := qryInfElles.fieldByName('ELLES_DATUM').AsString ;
      end else begin
    log('8');
        datum_ig  := qryInfElles.fieldByName('VegDatum').AsString ;
        datum_tol := '1900.01.01';
      end;
      if datum_ig = '' then datum_ig := '3000.01.01';
    log('9');
      qryInfTerm.DataSet.Parameters.ParamByName('DATUMTOL').Value := LeftStr(datum_tol,10);
      qryInfTerm.DataSet.Parameters.ParamByName('DATUMTOL1').Value := LeftStr(datum_tol,10);
    end;
    log('10');
    qryInfTerm.Open;
    qryInfTerm.Last;
    log('11');
end;


procedure TfrmInfoPult.TalDBGrid2DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if (LeftStr(dtmtarka.qryInfTermKOD_NEV.AsString ,1 ) = '1') or
      (LeftStr(dtmtarka.qryInfTermKOD_NEV.AsString ,1 ) = 'V') then begin
     TalDBGrid2.Canvas.Font.Color := clFuchsia;
  end;
  TalDBGrid2.DefaultDrawDataCell(Rect, Field, State);
end;


procedure TfrmInfoPult.btnKiBehajtClick(Sender: TObject);
begin
//  OpenTestTomegek(sdsInfoID.AsString,sdsInfoAZONOSITO.AsString);
end;

procedure TfrmInfoPult.btnEuAdatokClick(Sender: TObject);
begin
//  EuAdatok(sdsInfoID.AsString,sdsInfoAZONOSITO.AsString );
end;


procedure TfrmInfoPult.btnElapClick(Sender: TObject);
var
  tehenszam: string;
begin
  if dtmTarka.sdsInfo.FieldByName('ENAR').AsString <> NULL then
    EgyediLapLista(dtmTarka.sdsInfo.FieldByName('ID').AsInteger);
end;


procedure TfrmInfoPult.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;


procedure TfrmInfoPult.btnTorolClick(Sender: TObject);
var
  azon : string;
  SQL : string;
begin
  // törlés
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  if Application.MessageBox('Valóban törli a kiválasztott egyedet?','Figyelem!', MB_YESNO) = IDYES then
  begin
    if Application.MessageBox('Az egyed minden adata törlõdik a rendszerbõl, kivéve az anyja ellésének adatait! Biztos folytatja?','Figyelem!', MB_YESNO) = IDYES then
    begin
      Azon := dtmTarka.sdsInfo.FieldByName('ENAR').AsString;
      dtmTarka.stpEgyedTorles.Connection := dtmTarka.cnTarka;
      dtmtarka.stpEgyedTorles.Parameters.ParamByName('P_EGYED_ID').Value := dtmTarka.sdsInfoID.Value;
      try
//        SQL := 'EXEC EGYED_TORLES( ' + sdsInfoID.AsString + ' );';
        dtmTarka.sdsInfo.Close;
//        dtmtarka.cnTarka.Execute(SQL);
        dtmTarka.stpEgyedTorles.ExecProc;
      finally
        dtmtarka.stpEgyedTorles.Close;
        edtKeres.Text := dtmtarka.ElsoEgyed;
        btnKeresesClick(Sender);
      end;
    end;
  end;
end;

procedure TfrmInfoPult.TalSpeedButton3Click(Sender: TObject);
begin
  dtmTarka.sdsInfo.FieldByName('KIKOK').AsVariant := NULL ;
end;

procedure TfrmInfoPult.TalSpeedButton1Click(Sender: TObject);
begin
  dtmTarka.sdsInfo.FieldByName('KIKOD').AsVariant := NULL ;
end;

procedure TfrmInfoPult.btnKullemClick(Sender: TObject);
begin
  OpenKullem(dtmTarka.sdsInfo.FieldByName('ENAR').AsString);
end;

procedure TfrmInfoPult.btnIvadekokClick(Sender: TObject);
begin
//   OpenIvadekok(edtAzonosito.Text,sdsInfoID.AsString);
end;

procedure TfrmInfoPult.btnOsokClick(Sender: TObject);
begin
//  OsokAdatai(edtAzonosito.Text,sdsInfoID.AsString);
end;

procedure TfrmInfoPult.edtKiesesDatumExit(Sender: TObject);
begin
  if edtKiesesDatum.Text = '    .  .  ' then exit;
  if StrToDate(edtKiesesDatum.Text)  > Date then
  begin
    dtmTarka.MsgDlg('Hibás dátum!', mtWarning, [mbOK], 0);
    edtKiesesDatum.SelectAll;
    edtKiesesDatum.SetFocus;
  end;
(*  if dtmtarka.VaneDatumnalKesobbiAdat(sdsInfoAZONOSITO.AsString,edtKiesesDatum.Text) then begin
    dtmTarka.MsgDlg('A megadott kiesés dátumánál késõbbi dátummal van adata az egyednek!', mtWarning, [mbOK], 0);
    edtKiesesDatum.SelectAll;
    edtKiesesDatum.SetFocus;
  end;*)
end;

function TfrmInfoPult.Mezok_Kitoltve: Boolean;
begin
  result := false;
  if (dtmTarka.sdsInfoKIKOK.AsString <> EmptyStr) and (dtmTarka.sdsInfoKIKOD.AsString <> EmptyStr) and
    (dtmTarka.sdsInfoKIKOK.AsString <> '0') and (dtmTarka.sdsInfoKIKOD.AsString <> '0') and
    (dtmTarka.sdsInfoKIKHELY.AsString = EmptyStr) then begin
    dtmTarka.MsgDlg('Ha az egyed már kiesett, akkor a kikerülés helyét meg kell adnia!', mtWarning, [mbOK], 0);
    lucKikhely.SetFocus;
    exit;
  end;
  if (dtmTarka.sdsInfoKIKOK.AsString <> EmptyStr) and (dtmTarka.sdsInfoKIKOD.AsString <> EmptyStr) and
    (dtmTarka.sdsInfoKIKOK.AsString <> '0') and (dtmTarka.sdsInfoKIKOD.AsString <> '0') and
    (dtmTarka.sdsInfoKIKDAT.AsString = '') then begin
    dtmTarka.MsgDlg('Ha az egyed már kiesett, akkor a kikerülés dátumát meg kell adnia!', mtWarning, [mbOK], 0);
    lucKikhely.SetFocus;
    exit;
  end;
  if (dtmTarka.sdsInfo.FieldByName('ALLDAT').AsString = EmptyStr) then begin
    dtmTarka.MsgDlg('A bekerülés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtBekerDat.SetFocus;
    exit;
  end;

  Result := true;
end;


procedure TfrmInfoPult.TalSpeedButton2Click(Sender: TObject);
begin
  dtmTarka.sdsInfoKIKHELY.AsVariant := NULL ;
end;

procedure TfrmInfoPult.btnEgyedClick(Sender: TObject);
var
  Szuro, vissza : TTalParamList;
  Volt : Boolean;
begin
  inherited;
  Szuro := TTalParamList.Create;
  Vissza := TTalParamList.Create;
  try
    if EgyedValaszto( Szuro, vissza ) then
    begin
      if trim(vissza.ItemsByName('ENAR').Values[0]) > '' then begin
        edtKeres.Text := vissza.ItemsByName('ENAR').Values[0];
      end else if trim(vissza.ItemsByName('FULSZAM').Values[0]) > '' then begin
        edtKeres.Text := vissza.ItemsByName('FULSZAM').Values[0];
      end else if trim(vissza.ItemsByName('TEHENSZAM').Values[0]) > '' then begin
        edtKeres.Text := vissza.ItemsByName('TEHENSZAM').Values[0];
      end else if trim(vissza.ItemsByName('ID_ENAR').Values[0]) > '' then begin
        edtKeres.Text := vissza.ItemsByName('ID_ENAR').Values[0];
      end;
      AktId := vissza.ItemsByName('ID_ENAR').Values[0];
      edtKeres.SetFocus;
      Volt := true;
    end else
      volt := false;
  finally
    szuro.Free;
  end;
  if Volt then
    btnKeresesClick(NIL);
end;


procedure TfrmInfoPult.edtKeresExit(Sender: TObject);
begin
  btnKeresesClick(NIL);
end;


procedure TfrmInfoPult.TalSpeedButton4Click(Sender: TObject);
begin
//  sdsInfoTULAJDONOS_TENYESZET_ID.AsString := '';
end;


procedure TfrmInfoPult.btnTenyErtClick(Sender: TObject);
begin
//  HgiMutat(sdsInfoID.AsString);
end;


procedure TfrmInfoPult.TalDBGrid2RowChanged(Sender: TObject);
begin
  if (dtmTarka.sdsInfo.FieldByName('KIKOD').AsString = EmptyStr) then
  begin
    if (qryInfTerm.RecordCount > 0) then
    begin
      lblTermDat.Caption := dtmtarka.EllesekKoztiNap;
    end;
  end;
end;


procedure TfrmInfoPult.btnHtermClick(Sender: TObject);
var
  vissza : TTalParamList;
begin
  vissza := TTalParamList.Create;
  try
    OpenHTermE('INFOPULT',dtmTarka.sdsInfo.FieldByName('ID').AsString, dtmTarka.sdsInfo.FieldByName('ENAR').AsString,vissza);
  finally
    vissza.Free;
  end;
end;

procedure TfrmInfoPult.edtSzulDatExit(Sender: TObject);
begin
  if dtmTarka.sdsInfo.State = dsInsert then begin
    if dtmTarka.sdsInfoALLDAT.Value = 0 then
      dtmTarka.sdsInfoALLDAT.Value := edtSzulDat.Value ;
  end;
end;

procedure TfrmInfoPult.btnAtkotesClick(Sender: TObject);
begin
  // ( sdsInfo.FieldByName('ID').AsString, sdsInfo.FieldByName('ENAR').AsString, sdsInfo.FieldByName('Tenyeszet').AsString);
end;

procedure TfrmInfoPult.edtVerhanyadChanged(Sender: TObject);
begin
    VerhanyadChanged := true;
end;

procedure TfrmInfoPult.VerhanyadDB2Edit;
begin
    try
       edtVer1.Value := dtmTarka.sdsInfoVSZ1.AsVariant;
    except
       edtVer1.EditText := '0';
    end;
    try
       edtVer2.Value := dtmTarka.sdsInfoVSZ2.AsVariant;
    except
       edtVer2.EditText := '0';
    end;

    try
       edtVer3.Value := dtmTarka.sdsInfoVSZ3.AsVariant;
    except
       edtVer3.EditText := '0';
    end;

    try
       edtVer4.Value := dtmTarka.sdsInfoVSZ4.AsVariant;
    except
       edtVer4.EditText := '0';
    end;
end;

end.
