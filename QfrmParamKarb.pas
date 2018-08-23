unit QfrmParamKarb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, ActnList, StdCtrls, Buttons, uTALBitBtn, ExtCtrls,
  uTALLabel, Mask, uValidedit, uDBValidedit, uTALDBEdit, wwcheckbox,
  uTALDBCheckBox, DB, DBClient, uTALSimpleDataSet, uTALBevel, DBCtrls,
  uTALDBComboBox, uTALSpeedButton;

type
  TfrmParamKarb = class(TfrmKarbOs)
    sdsParam: TTalSimpleDataSet;
    dtsParam: TDataSource;
    cbInduloAdatToltes: TTalDBCheckBox;
    edtVemhNap: TTalDBEdit;
    edtSzaraz: TTalDBEdit;
    edtDBver: TTalDBEdit;
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    TalLabel5: TTalLabel;
    sdsParamTOR_NAME: TWidestringField;
    sdsParamLAK_NAME: TWidestringField;
    sdsParamDB_VER: TWidestringField;
    sdsTeny: TTalSimpleDataSet;
    dtsTeny: TDataSource;
    TalLabel3: TTalLabel;
    edtAtKftKod: TTalDBEdit;
    TalLabel4: TTalLabel;
    edtEnarTKod: TTalDBEdit;
    TalLabel6: TTalLabel;
    edtTelepKod: TTalDBEdit;
    TalLabel7: TTalLabel;
    edtTelepNev: TTalDBEdit;
    TalLabel8: TTalLabel;
    edtIrszam: TTalDBEdit;
    TalLabel9: TTalLabel;
    edtCim: TTalDBEdit;
    TalBevel1: TTalBevel;
    sdsParamTOMEG_ELLESKOR: TSmallintField;
    cbTomeg: TTalDBCheckBox;
    sdsParamGYOGYSZ_KLT: TSmallintField;
    cbGyogyszerKlt: TTalDBCheckBox;
    TalSpeedButton1: TTalSpeedButton;
    TalDBCheckBox2: TTalDBCheckBox;
    TalDBCheckBox3: TTalDBCheckBox;
    TalDBCheckBox4: TTalDBCheckBox;
    TalDBCheckBox5: TTalDBCheckBox;
    TalDBCheckBox6: TTalDBCheckBox;
    TalDBCheckBox7: TTalDBCheckBox;
    TalDBCheckBox8: TTalDBCheckBox;
    GroupBox1: TGroupBox;
    cbKellMentes: TTalDBCheckBox;
    sdsParamAUT_MENT_KELL: TSmallintField;
    sdsParamUT_MENT_DAT: TDateTimeField;
    sdsParamAM0: TSmallintField;
    sdsParamAM1: TSmallintField;
    sdsParamAM2: TSmallintField;
    sdsParamAM3: TSmallintField;
    sdsParamAM4: TSmallintField;
    sdsParamAM5: TSmallintField;
    sdsParamAM6: TSmallintField;
    TalLabel15: TTalLabel;
    TalDBEdit1: TTalDBEdit;
    sdsParamSZARM_KEZELES: TSmallintField;
    sdsParamATL_VEMH_NAP: TBCDField;
    sdsParamATL_SZARAZ_NAP: TBCDField;
    sdsParamMIGRAL_JEL: TBCDField;
    sdsTenyTKOD: TWideStringField;
    sdsTenyEKOD: TWideStringField;
    sdsTenyRKOD: TWideStringField;
    sdsTenyALLAPOT: TWideStringField;
    sdsTenyTIPUS: TWideStringField;
    sdsTenyBDAT: TDateTimeField;
    sdsTenyIRSZ: TIntegerField;
    sdsTenyVAROS: TWideStringField;
    sdsTenyKTNEV: TWideStringField;
    sdsTenyKTJELL: TWideStringField;
    sdsTenyHSZ: TWideStringField;
    sdsTenyTNEV1: TWideStringField;
    sdsTenyTNEV2: TWideStringField;
    sdsTenyTNEV3: TWideStringField;
    sdsTenyTEL: TWideStringField;
    sdsTenyEMAIL: TWideStringField;
    sdsTenyFAX: TWideStringField;
    sdsTenyTIRSZ: TWideStringField;
    sdsTenyTVAROS: TWideStringField;
    sdsTenyTKTNEV: TWideStringField;
    sdsTenyTKTJELL: TWideStringField;
    sdsTenyTHSZ: TWideStringField;
    sdsTenyKKOD: TWideStringField;
    sdsTenyKOD: TWideStringField;
    sdsParamTENYESZET: TWideStringField;
    TalSpeedButton2: TTalSpeedButton;
    sdsTenyTMEGYE: TWideStringField;
    procedure actMegsemExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TalSpeedButton1Click(Sender: TObject);
    procedure cbKellMentesClick(Sender: TObject);
    procedure edtEnarTKodExit(Sender: TObject);
    procedure TalSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    function Mezok_Kitoltve:Boolean;
  public
    { Public declarations }
  end;

procedure ParamKarb;

implementation

uses udtmTarka, QfrmIrszam, QfrmTenyKarb;

{$R *.dfm}

procedure ParamKarb;
var
  frmParamKarb: TfrmParamKarb;
begin
  frmParamKarb:= TfrmParamKarb.Create(Application);
  frmParamKarb.sdsParam.Connection := dtmTarka.cnTarka;
  frmParamKarb.sdsTeny.Connection := dtmTarka.cnTarka;
  frmParamKarb.sdsParam.Open;

  frmParamKarb.sdsParam.Edit;
  frmParamKarb.sdsTeny.dataset.Parameters.ParamByName('TKOD').Value := frmParamKarb.sdsParamTENYESZET.AsString;
  frmParamKarb.sdsTeny.Open;
//  frmParamKarb.sdsTeny.Edit;
  try
    if frmParamKarb.ShowModal = mrOK then begin

    end;
  finally
    frmParamKarb.sdsParam.Close;
    frmParamKarb.sdsTeny.Close;
    frmParamKarb.Release;
  end;
end;


procedure TfrmParamKarb.actMegsemExecute(Sender: TObject);
begin
  Self.sdsParam.Cancel;
  inherited;
end;


procedure TfrmParamKarb.actOKExecute(Sender: TObject);
begin
  if not mezok_Kitoltve then exit;

  if trim(edtAtKftKod.Text) = EmptyStr then edtAtKftKod.Text := '';
  Self.sdsParam.Post;
//  Self.sdsTeny.Post;
  dtmTarka.cnTarka.BeginTrans;
  try
    if Self.sdsParam.ChangeCount > 0 then
      Self.sdsParam.ApplyUpdates(0);
//    if (Self.sdsTeny.ChangeCount > 0) and (Self.sdsTenyTKOD.AsString > EmptyStr) then
//      Self.sdsTeny.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  finally
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;
  dtmTarka.TenyeszetAlapAdatai;
  inherited;
end;


function TfrmParamKarb.Mezok_Kitoltve: Boolean;
begin
  result := false;
  if edtVemhNap.Text = EmptyStr then begin
    MessageDlg('Az átlagos vemhességi napok számának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtVemhNap.SetFocus;
    exit;
  end;
  if edtSzaraz.Text = EmptyStr then begin
    MessageDlg('Az átlagos szárazon állási napok számának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtSzaraz.SetFocus;
    exit;
  end;
  if (edtTelepKod.Text <> EmptyStr) and (edtEnarTKod.Text = EmptyStr) then begin
    MessageDlg('Az Enar tenyészet kód megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtEnarTKod.SetFocus;
    exit;
  end;

  Result := true;
end;


procedure TfrmParamKarb.FormShow(Sender: TObject);
begin
  if (dtmTarka.UserKarb = 'S') or (dtmTarka.UserKarb = '2') then begin
    cbInduloAdatToltes.Enabled := true;
    edtAtKftKod.Enabled := true;
//    edtEnarTKod.Enabled := true;
//    edtTelepKod.Enabled := true;
//    edtTelepNev.Enabled := true;
//    edtIrszam.Enabled := true;
//    edtCim.Enabled := true;
  end else begin
    cbInduloAdatToltes.Enabled := false;
    edtAtKftKod.Enabled := false;
    edtEnarTKod.Enabled := false;
    edtTelepKod.Enabled := false;
    edtTelepNev.Enabled := false;
    edtIrszam.Enabled := false;
    edtCim.Enabled := false;
  end;
  Self.GroupBox1.Enabled :=  sdsParamAUT_MENT_KELL.AsInteger = 1 ;
  inherited;
end;


procedure TfrmParamKarb.TalSpeedButton1Click(Sender: TObject);
var
  varos : string;
  id : Integer;
  irsz : string;
begin
  inherited;
  irsz := edtIrszam.Text;
  if IrszVal(irsz, varos, Id ) then begin
    edtIrszam.Text := irsz;
    edtCim.Text := varos;
  end;
end;

procedure TfrmParamKarb.cbKellMentesClick(Sender: TObject);
begin
  inherited;
  Self.GroupBox1.Enabled := cbKellMentes.Checked;
end;

procedure TfrmParamKarb.edtEnarTKodExit(Sender: TObject);
begin
  inherited;
  if trim(edtAtKftKod.Text) = EmptyStr then begin
    edtEnarTKod.Enabled := false;
    edtTelepKod.Enabled := false;
    edtTelepNev.Enabled := false;
    edtIrszam.Enabled := false;
  end else begin
    edtEnarTKod.Enabled := true;
    edtTelepKod.Enabled := true;
    edtTelepNev.Enabled := true;
    edtIrszam.Enabled := true;
  end;
end;


procedure TfrmParamKarb.TalSpeedButton2Click(Sender: TObject);
var
  TENY : string;
begin
  TENY := '';
  Teny := TenyVal();
  if teny <> emptyStr then begin
    edtAtKftKod.text := teny;
    if sdsTeny.Active then sdsTeny.Open;
    sdsTeny.dataset.Parameters.ParamByName('TKOD').Value := teny;
    sdsTeny.Open;
  end;

end;

end.
