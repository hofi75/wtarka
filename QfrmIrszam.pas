unit QfrmIrszam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, DB, DBClient, uTALSimpleDataSet, ActnList, Grids,
  Wwdbigrd, Wwdbgrid, uTALDBGrid, uTALPanel, StdCtrls, Buttons, ExtCtrls,
  uTALLabel, Mask, uValidedit, uDBValidedit, uTALDBEdit, Wwkeycb,
  uTALSearch;

type
  TfrmIrszam = class(TfrmModOs)
    sdsIrszam: TTalSimpleDataSet;
    dtsIrszam: TDataSource;
    edtKod: TTalDBEdit;
    edtNev: TTalDBEdit;
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    TalPanel1: TTalPanel;
    TalSearch1: TTalSearch;
    TalLabel3: TTalLabel;
    sdsIrszamID: TBCDField;
    sdsIrszamKOD: TWidestringField;
    sdsIrszamTELEPULES: TWidestringField;
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
    mode : string;
    procedure KarbGombBeallit(mire:Boolean);    
  public
    { Public declarations }
  end;

procedure IrszKarb;
function IrszVal(var IRSZ, Nev : string; var ID:Integer):Boolean;

implementation

uses udtmTarka;

{$R *.dfm}

procedure IrszKarb;
var
  frmIrszam: TfrmIrszam;
begin
  frmIrszam := TfrmIrszam.Create(Application);
  with frmIrszam do begin
    try
      mode := 'BONG';
      sdsIrszam.Connection := dtmTarka.cnTarka;
      sdsIrszam.Open;
      ShowModal;
    finally
      sdsIrszam.Close;
    end;
  end;
end;


function IrszVal(var IRSZ, Nev : string; var ID:Integer):Boolean;
var
  frmIrszam: TfrmIrszam;
begin
  frmIrszam := TfrmIrszam.Create(Application);
  with frmIrszam do begin
    try
      result := false;
      mode := 'VAL';
      sdsIrszam.Connection := dtmTarka.cnTarka;
      sdsIrszam.Open;
      if ShowModal = mrOK then begin
        Result := true;
        ID := sdsIrszamID.AsInteger;
        IRSZ := sdsIrszamKOD.AsString;
        Nev := sdsIrszamTELEPULES.AsString;
      end;
    finally
      sdsIrszam.Close;
    end;
  end;
end;



{ TfrmIrszam }

procedure TfrmIrszam.KarbGombBeallit(mire: Boolean);
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



procedure TfrmIrszam.btnUjClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.JogosultsagEllenorzes('karb') then
  sdsIrszam.Append;
  Self.edtKOD.Enabled := true;
  Self.KarbGombBeallit(false);
  if Self.edtKOD.CanFocus then edtKOD.SetFocus;
end;



procedure TfrmIrszam.btnModositClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.JogosultsagEllenorzes('karb') then
  sdsIrszam.Edit;
  Self.edtKOD.Enabled := false;
  Self.KarbGombBeallit(false);
  if Self.edtNev.CanFocus then edtNev.SetFocus;
end;



procedure TfrmIrszam.actMegsemExecute(Sender: TObject);
begin
  inherited;
  inherited;
  if sdsIrszam.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsIrszam.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;


procedure TfrmIrszam.actOKExecute(Sender: TObject);
begin
  inherited;
  inherited;
  if sdsIrszam.State = dsBrowse then begin
    if Mode = 'VAL' then
      ModalResult := mrOK;
      exit;
  end;
  if edtKOD.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A kód megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtKOD.SetFocus;
    exit;
  end;
  if edtNev.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A név megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtNev.SetFocus;
    exit;
  end;

  sdsIrszam.Post;

  dtmTarka.cnTarka.BeginTrans;
  try
    sdsIrszam.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;
  
  sdsIrszam.Refresh;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

procedure TfrmIrszam.FormShow(Sender: TObject);
begin
  inherited;
  KarbGombBeallit(true);
end;

procedure TfrmIrszam.btnTorolClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.JogosultsagEllenorzes('karb') then

end;

end.
