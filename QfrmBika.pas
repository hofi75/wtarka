unit QfrmBika;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, DB, DBClient, uTALSimpleDataSet,
  Wwkeycb, uTALSearch, uTALLabel, Mask, uValidedit, uDBValidedit,uTalParams,
  uTALDBEdit, DBCtrls, uTALDBLookupComboBox, uTALGroupBox, ADODB, uTalQuery,
  QSysTools;

type
  TfrmBika = class(TfrmModOs)
    TalPanel1: TTalPanel;
    sdsBika: TTalSimpleDataSet;
    sdBika: TDataSource;
    Label1: TLabel;
    edtKLSZ: TTalDBEdit;
    edtNev: TTalDBEdit;
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    TalLabel3: TTalLabel;
    edtKeres: TTalSearch;
    TalLabel10: TTalLabel;
    edtSzulDat: TTalDBEdit;
    lucSzin: TTalDBLookupComboBox;
    TalLabel13: TTalLabel;
    edtFsz: TTalDBEdit;
    edtIdEnar: TTalDBEdit;
    TalLabel14: TTalLabel;
    edtEnar: TTalDBEdit;
    TalLabel15: TTalLabel;
    TalGroupBox1: TTalGroupBox;
    TalLabel16: TTalLabel;
    TalLabel17: TTalLabel;
    edtAnEnar: TTalDBEdit;
    edtRec: TTalDBEdit;
    TalLabel18: TTalLabel;
    edtAnIenar: TTalDBEdit;
    edtFulszam: TTalDBEdit;
    TalLabel19: TTalLabel;
    edtAnEll: TTalDBEdit;
    TalLabel20: TTalLabel;
    TalLabel21: TTalLabel;
    edtAnyNev: TTalDBEdit;
    TalGroupBox2: TTalGroupBox;
    TalLabel4: TTalLabel;
    TalLabel6: TTalLabel;
    TalLabel9: TTalLabel;
    TalLabel11: TTalLabel;
    TalLabel12: TTalLabel;
    edtApaKplsz: TTalDBEdit;
    edtApaFsz: TTalDBEdit;
    edtApaIEnar: TTalDBEdit;
    edtApaEnar: TTalDBEdit;
    edtApaNev: TTalDBEdit;
    TalLabel5: TTalLabel;
    edtAnaAna: TTalDBEdit;
    TalLabel22: TTalLabel;
    edtAnaAnaNev: TTalDBEdit;
    TalLabel23: TTalLabel;
    edtAnyApa: TTalDBEdit;
    TalLabel24: TTalLabel;
    edtAnyApaNev: TTalDBEdit;
    TalLabel7: TTalLabel;
    edtApaAny: TTalDBEdit;
    TalLabel8: TTalLabel;
    edtApaAnyNev: TTalDBEdit;
    TalLabel25: TTalLabel;
    edtApaApa: TTalDBEdit;
    TalLabel26: TTalLabel;
    edtApaApaNev: TTalDBEdit;
    TalLabel27: TTalLabel;
    LucOrsz: TTalDBLookupComboBox;
    TalLabel28: TTalLabel;
    lucFajta: TTalDBLookupComboBox;
    TalLabel29: TTalLabel;
    LucVer1: TTalDBLookupComboBox;
    edtVsz1: TTalDBEdit;
    TalLabel30: TTalLabel;
    lucVer4: TTalDBLookupComboBox;
    edtVsz4: TTalDBEdit;
    TalLabel31: TTalLabel;
    TalLabel32: TTalLabel;
    TalLabel33: TTalLabel;
    lucVer3: TTalDBLookupComboBox;
    edtVsz3: TTalDBEdit;
    TalLabel34: TTalLabel;
    lucVer5: TTalDBLookupComboBox;
    edtVsz5: TTalDBEdit;
    TalLabel35: TTalLabel;
    TalLabel36: TTalLabel;
    TalLabel37: TTalLabel;
    lucKonstr: TTalDBLookupComboBox;
    TalLabel38: TTalLabel;
    edtTkv: TTalDBEdit;
    TalLabel39: TTalLabel;
    edtSzarv: TTalDBEdit;
    TalLabel40: TTalLabel;
    edtTgy: TTalDBEdit;
    TalLabel41: TTalLabel;
    edt205: TTalDBEdit;
    TalLabel42: TTalLabel;
    edtSv: TTalDBEdit;
    TalLabel43: TTalLabel;
    edtSTV: TTalDBEdit;
    qryInfSzin: TTalQuery;
    StringField19: TWidestringField;
    StringField20: TWidestringField;
    dtsInfSzin: TDataSource;
    qryInfFajta: TTalQuery;
    qryInfFajtaFKOD: TSmallintField;
    qryInfFajtaFNEV: TWidestringField;
    dtsInfFajta: TDataSource;
    qryKonstr: TTalQuery;
    StringField3: TWidestringField;
    StringField4: TWidestringField;
    dtsKonstr: TDataSource;
    qryVer1: TTalQuery;
    qryVer1FKOD: TSmallintField;
    qryVer1FNEV: TWidestringField;
    qryVer2: TTalQuery;
    SmallintField1: TSmallintField;
    StringField5: TWidestringField;
    qryVer3: TTalQuery;
    SmallintField2: TSmallintField;
    StringField6: TWidestringField;
    qryVer4: TTalQuery;
    SmallintField3: TSmallintField;
    StringField7: TWidestringField;
    dtsVer4: TDataSource;
    dtsVer3: TDataSource;
    dtsVer2: TDataSource;
    dtsVer1: TDataSource;
    qryOrsz: TTalQuery;
    dtsOrsz: TDataSource;
    qryOrszKOD1: TWidestringField;
    qryOrszKOD2: TWidestringField;
    qryOrszNEV: TWidestringField;
    BitBtn1: TBitBtn;
    sdsBikaENAR: TWideStringField;
    sdsBikaFSZ: TWideStringField;
    sdsBikaIENAR: TWideStringField;
    sdsBikaNEV: TWideStringField;
    sdsBikaAENAR: TWideStringField;
    sdsBikaAELL: TWideStringField;
    sdsBikaIAENAR: TWideStringField;
    sdsBikaAFSZ: TWideStringField;
    sdsBikaRANYA: TWideStringField;
    sdsBikaANYANEV: TWideStringField;
    sdsBikaAPAENAR: TWideStringField;
    sdsBikaAPAFSZ: TWideStringField;
    sdsBikaAPAIENAR: TWideStringField;
    sdsBikaAPANEV: TWideStringField;
    sdsBikaANAN: TWideStringField;
    sdsBikaANANNEV: TWideStringField;
    sdsBikaANAP: TWideStringField;
    sdsBikaANAPNEV: TWideStringField;
    sdsBikaAPAN: TWideStringField;
    sdsBikaAPANNEV: TWideStringField;
    sdsBikaAPAP: TWideStringField;
    sdsBikaAPAPNEV: TWideStringField;
    sdsBikaSZULDAT: TDateTimeField;
    sdsBikaKKOD: TWideStringField;
    sdsBikaSZKOD: TWideStringField;
    sdsBikaSZARV: TWideStringField;
    sdsBikaSZORSZ: TWideStringField;
    sdsBikaTKV: TWideStringField;
    sdsBikaTGY: TIntegerField;
    sdsBikaTOM205: TIntegerField;
    sdsBikaSV: TIntegerField;
    sdsBikaTGYSTV: TIntegerField;
    sdsBikaUTMOD_DAT: TDateTimeField;
    sdsBikaUTMOD_KOD: TWideStringField;
    sdsBikaVER1: TWideStringField;
    sdsBikaVER2: TWideStringField;
    sdsBikaVER3: TWideStringField;
    sdsBikaVER4: TWideStringField;
    sdsBikaAPAKPLSZ: TWideStringField;
    sdsBikaFKOD: TWideStringField;
    sdsVal: TTalSimpleDataSet;
    dtsval: TDataSource;
    sdsValKPLSZ: TWideStringField;
    sdsValENAR: TWideStringField;
    sdsValFSZ: TWideStringField;
    sdsValNEV: TWideStringField;
    sdsBikaKPLSZ: TWideStringField;
    TalLabel44: TTalLabel;
    lucVer2: TTalDBLookupComboBox;
    edtVsz2: TTalDBEdit;
    TalLabel45: TTalLabel;
    qryVer5: TTalQuery;
    SmallintField4: TSmallintField;
    WideStringField1: TWideStringField;
    dtsVer5: TDataSource;
    sdsBikaVER5: TWideStringField;
    TalLabel46: TTalLabel;
    sdsBikaVSZ1: TBCDField;
    sdsBikaVSZ2: TBCDField;
    sdsBikaVSZ3: TBCDField;
    sdsBikaVSZ4: TBCDField;
    sdsBikaVSZ5: TBCDField;
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure edtKLSZExit(Sender: TObject);
    procedure edtKeresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdValKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure grdValRowChanged(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
    mode : string;
    procedure KarbGombBeallit(mire:Boolean);
    function Mezok_kitoltve:Boolean;
  public
    { Public declarations }
    function BikaVal(Var vissza:TTalParamList):Boolean;
    function BikaKarb(Var vissza:TTalParamList):Boolean;
  end;

var
  frmBika: TfrmBika;

implementation

uses udtmTarka, QfrmKullem;

{$R *.dfm}

{ TfrmBika }

function TfrmBika.BikaVal(var vissza: TTalParamList): Boolean;
begin
  try
    sdsVal.Connection := dtmTarka.cnTarka;
    sdsBika.Connection := dtmTarka.cnTarka;
    btnCancel.Caption := 'Mégsem';
    btnOK.Visible := true;
    if vissza.ItemsByName('MODE') <> NIL then
      if vissza.ItemsByName('MODE').values[0]='BROWSE' then begin
        btnCancel.Caption := 'Kilépés';
        btnOK.Visible := false;
        mode := 'KARB';
      end else begin
        btnCancel.Caption := 'Mégsem';
        btnOK.Visible := true;
        mode := 'VAL';
      end;
    try
      Screen.Cursor := crHourGlass;
      sdsVal.Open;
      sdsBika.DataSet.Parameters.ParamByName('KPLSZ').Value := sdsValKPLSZ.AsString;
      sdsBika.Open;
    finally
      Screen.Cursor := crArrow;
    end;
    qryKonstr.Open;
    qryInfSzin.Open;
    qryInfFajta.Open;
    qryVer1.Open;
    qryVer2.Open;
    qryVer3.Open;
    qryVer4.Open;
    qryVer5.Open;
    qryOrsz.Open;
    dtmTarka.qryKonstr.Open;
    if Self.ShowModal = mrOK then begin
      Vissza.Add('KLSZ',sdsBikaKPLSZ.AsString);
      Vissza.Add('BIKA_NEV',sdsBikaNEV.AsString);
      Result := true;
    end else begin
      Result := false;
    end;

  finally
    if sdsBika.Active then sdsBika.Close;
    if qryKonstr.Active then qryKonstr.Close;
    sdsVal.Close;
    qryInfSzin.Close;
    qryKonstr.Close;
    qryInfFajta.Close;
    qryVer1.Close;
    qryVer2.Close;
    qryVer3.Close;
    qryVer4.Close;
    qryVer5.Close;
    qryOrsz.Close;
  end;
end;



function TfrmBika.BikaKarb(var vissza: TTalParamList): Boolean;
begin
  try
    btnCancel.Caption := 'Kilépés';
    btnOK.Visible := true;
    btnUj.Visible := true;
    btnModosit.Visible := true;
    btnTorol.Visible := true;
    if dtmTarka.UserKarb = '0' then
    begin
       btnTorol.Enabled := false;
       btnUj.Enabled := false;
       btnModosit.Enabled := false;
    end;
    sdsVal.Connection :=dtmTarka.cnTarka;
    sdsBika.Connection :=dtmTarka.cnTarka;

    try
      Screen.Cursor := crHourGlass;
      sdsVal.Open;
      sdsBika.DataSet.Parameters.ParamByName('KPLSZ').Value := sdsValKPLSZ.AsString;
      sdsBika.Open;
    finally
      Screen.Cursor := crArrow;
    end;
    qryKonstr.Open;
    qryInfSzin.Open;
    qryInfFajta.Open;
    qryVer1.Open;
    qryVer2.Open;
    qryVer3.Open;
    qryVer4.Open;
    qryVer5.Open;
    qryOrsz.Open;
    if Self.ShowModal = mrOK then begin
      Vissza.Add('KLSZ',sdsBikaKPLSZ.AsString);
      Vissza.Add('NEV',sdsBikaNEV.AsString);
      Result := true;
    end else begin
      Result := false;
    end;

  finally
    if sdsBika.Active then sdsBika.Close;
    if qryKonstr.Active then qryKonstr.Close;
    sdsVal.Close;
    qryInfSzin.Close;
    qryKonstr.Close;
    qryInfFajta.Close;
    qryVer1.Close;
    qryVer2.Close;
    qryVer3.Close;
    qryVer4.Close;
    qryVer5.Close;
    qryOrsz.Close;
  end;
end;


procedure TfrmBika.actOKExecute(Sender: TObject);
var
  ujKplsz : string;
begin
  if sdsBika.State = dsBrowse then begin
    if Self.mode='VAL' then
      ModalResult := mrOK;
    exit;
  end;

  if not Mezok_kitoltve then exit;
  sdsBikaUTMOD_DAT.AsDateTime := now();
  sdsBikaUTMOD_KOD.AsString := dtmTarka.UserKod;
  if sdsBika.State = dsInsert then begin
    ujKplsz := sdsBikaKPLSZ.AsString;
//    sdsBika.Provider.UpdateMode := upWhereAll;
  end else begin
    ujKplsz := '';
//    sdsBika.Provider.UpdateMode := upWhereKeyOnly;
  end;

  sdsBika.Post;

  dtmTarka.cnTarka.BeginTrans;
  Screen.Cursor := crHourGlass;
  try
  try
    sdsBika.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
    sdsBika.CancelUpdates;
  end;

  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  if ujKplsz <> EmptyStr then begin
    sdsVal.Refresh;
    sdsVal.Locate('KPLSZ',ujKplsz,[]);
  end else
    sdsVal.Refresh;
  finally
    Screen.Cursor := crArrow;
  end;

  Self.KarbGombBeallit(true);
end;


procedure TfrmBika.actMegsemExecute(Sender: TObject);
begin
  if sdsBika.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsBika.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;


procedure TfrmBika.KarbGombBeallit(mire: Boolean);
begin
  Self.btnUj.Enabled := mire;
  Self.btnModosit.Enabled := mire;
  Self.btnTorol.Enabled := mire;
  if mire = false then
    Self.btnCancel.Caption := 'Mégsem'
  else
    Self.btnCancel.Caption := 'Kilépés';
  if mire then
    if Self.btnUj.CanFocus then Self.btnUj.SetFocus;
end;


procedure TfrmBika.btnUjClick(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  inherited;
  sdsBika.Append;
  Self.edtKlsz.Enabled := true;
  Self.KarbGombBeallit(false);
  if Self.edtKlsz.CanFocus then edtKlsz.SetFocus;
end;

procedure TfrmBika.btnModositClick(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  inherited;
  sdsBika.Edit;
  Self.edtKlsz.Enabled := false;
  Self.KarbGombBeallit(false);
  if Self.edtNev.CanFocus then edtNev.SetFocus;
end;


function TfrmBika.Mezok_kitoltve: Boolean;
begin
  result := false;
  if edtKlsz.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A bika azonosító megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtKlsz.SetFocus;
    exit;
  end;
  if edtNev.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A név megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtNev.SetFocus;
    exit;
  end;

  Result := true;
end;


procedure TfrmBika.edtKLSZExit(Sender: TObject);
begin
  if sdsBika.State = dsInsert then begin
    if edtKLSZ.Text <> EmptyStr then begin
      if dtmTarka.megsemNyomas(ActiveControl) then exit;
      if dtmTarka.VaneBika(edtKLSZ.Text,'') then begin
        dtmTarka.MsgDlg('Már van ilyen bika KLSZ!', mtWarning, [mbOK], 0);
        edtKlsz.SetFocus;
        exit;
      end;
    end;
  end;
  inherited;
end;

procedure TfrmBika.edtKeresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if grdVal <> ActiveControl then
  case Key of
    Vk_Up: grdVal.DataSource.DataSet.Prior;
    Vk_Down: grdVal.DataSource.DataSet.Next;
    Vk_Prior: grdVal.DataSource.DataSet.MoveBy(-10);
    Vk_Next: grdVal.DataSource.DataSet.MoveBy(10);
  end;
  grdValKeyDown(Sender,Key,Shift);
end;


procedure TfrmBika.grdValKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Modalresult := mrCancel;
end;

procedure TfrmBika.BitBtn1Click(Sender: TObject);
begin
  OpenBikaKullem(sdsBikaKPLSZ.AsString)
end;

procedure TfrmBika.grdValRowChanged(Sender: TObject);
begin
  inherited;
  if sdsBika.Active then sdsBika.Close;
  sdsBika.DataSet.Parameters.ParamByName('KPLSZ').Value := sdsValKPLSZ.AsString;
  sdsBika.Open;
end;

procedure TfrmBika.btnTorolClick(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  inherited;

end;

end.
