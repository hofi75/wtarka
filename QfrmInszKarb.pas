unit QfrmInszKarb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, DB, DBClient, uTALSimpleDataSet, ActnList, Grids,
  Wwdbigrd, Wwdbgrid, uTALDBGrid, uTALPanel, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, uTALDBLookupComboBox, Mask, uValidedit, uDBValidedit,
  uTALDBEdit, uTALLabel, uTalParams, frxClass, frxDBSet, ADODB, uTalQuery,
  Wwkeycb, uTALSearch;

type
  TfrmInszKarb = class(TfrmModOs)
    dtsInsz: TDataSource;
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    TalLabel6: TTalLabel;
    edtKOD: TTalDBEdit;
    edtNev: TTalDBEdit;
    edtTelefon: TTalDBEdit;
    Label1: TLabel;
    TalPanel1: TTalPanel;
    TalSearch1: TTalSearch;
    TalLabel3: TTalLabel;
    sdsInsz: TTalSimpleDataSet;
    sdsInszKOD: TWideStringField;
    sdsInszNEV: TWideStringField;
    sdsInszIRSZ: TWideStringField;
    sdsInszIRSZAM_ID: TBCDField;
    sdsInszUTCA: TWideStringField;
    sdsInszTELEFONSZAM: TWideStringField;
    sdsInszCHANGED: TDateTimeField;
    sdsInszROW_ID: TVarBytesField;
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure edtKODExit(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
    procedure KarbGombBeallit(mire:Boolean);
    function Mezok_kitoltve:Boolean;
  public
    { Public declarations }
    function InszKarb():Boolean;
  end;

var
  frmInszKarb: TfrmInszKarb;

implementation

uses udtmTarka, Listak;

{$R *.dfm}


procedure TfrmInszKarb.btnUjClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;

  sdsInsz.Append;
  Self.edtKOD.Enabled := true;
  Self.KarbGombBeallit(false);
  if Self.edtKOD.CanFocus then edtKOD.SetFocus;
end;


procedure TfrmInszKarb.KarbGombBeallit(mire: Boolean);
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



function TfrmInszKarb.Mezok_kitoltve: Boolean;
begin
  result := false;
  if edtKOD.Text = EmptyStr then begin
    MessageDlg('A kód megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtKOD.SetFocus;
    exit;
  end;
  if edtNev.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A név megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtNev.SetFocus;
    exit;
  end;

  Result := true;

end;

procedure TfrmInszKarb.btnModositClick(Sender: TObject);
begin
  inherited;
  if dtmTarka.JogosultsagEllenorzes('karb') then
    sdsInsz.Edit
  else
     exit;
  Self.edtKOD.Enabled := false;
  Self.KarbGombBeallit(false);
  if Self.edtNev.CanFocus then edtNev.SetFocus;
end;


procedure TfrmInszKarb.actOKExecute(Sender: TObject);
begin
  if sdsInsz.State = dsBrowse then begin
//    ModalResult := mrOK;
  exit;
  end;
  if not Mezok_kitoltve then exit;
  sdsInsz.Post;

  dtmTarka.cnTarka.BeginTrans;

  try
    sdsInsz.ApplyUpdates(0);
    sdsInsz.Refresh;
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;

  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;


procedure TfrmInszKarb.btnCancelClick(Sender: TObject);
begin
  if sdsInsz.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsInsz.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

function TfrmInszKarb.InszKarb(): Boolean;
begin
  try
    btnCancel.Caption := 'Mégsem';
    btnOK.Visible := true;
    btnUj.Visible := true;
    btnModosit.Visible := true;
    btnTorol.Visible := true;
    if not dtmTarka.isAdmin() then btnTorol.Enabled := false;

    sdsInsz.Connection := dtmTarka.cnTarka;
    sdsInsz.Open;
    if Self.ShowModal = mrOK then begin
      Result := true;
    end else begin
      Result := false;
    end;

  finally
    if sdsInsz.Active then sdsInsz.Close;
  end;
end;


procedure TfrmInszKarb.actMegsemExecute(Sender: TObject);
begin
  if sdsInsz.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsInsz.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;


procedure TfrmInszKarb.edtKODExit(Sender: TObject);
begin
  if sdsInsz.State = dsInsert then begin
    if edtKOD.Text <> EmptyStr then begin
      if dtmTarka.megsemNyomas(ActiveControl) then exit;
      if dtmTarka.VaneInszKod(edtKOD.Text,'') then begin
        dtmTarka.MsgDlg('Már van ilyen Inszeminátor kód!', mtWarning, [mbOK], 0);
        edtKOD.SetFocus;
        exit;
      end;
    end;
  end;
  inherited;
end;

procedure TfrmInszKarb.btnNyomtatClick(Sender: TObject);
begin
  InszeminatorList;
end;

procedure TfrmInszKarb.btnTorolClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.JogosultsagEllenorzes('skarb') then  exit;


  dtmTarka.cnTarka.BeginTrans;

  try
    sdsInsz.Delete;
    sdsInsz.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;

  // sdsInsz.Refresh;

end;

end.
