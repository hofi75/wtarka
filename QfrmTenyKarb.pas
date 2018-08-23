unit QfrmTenyKarb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, DB, DBClient, uTALSimpleDataSet,
  DBCtrls, uTALDBLookupComboBox, uTALGroupBox, uValidedit, uDBValidedit,
  uTALDBEdit, uTALLabel, Mask, Wwkeycb, uTALSearch;

type
  TfrmTenyKarb = class(TfrmModOs)
    sdsKeres: TTalSimpleDataSet;
    dtsKeres: TDataSource;
    sdsKeresTKOD: TWidestringField;
    sdsKeresEKOD: TWidestringField;
    sdsKeresRKOD: TWidestringField;
    sdsKeresALLAPOT: TWidestringField;
    sdsKeresTIPUS: TWidestringField;
    sdsKeresBDAT: TDateTimeField;
    sdsKeresIRSZ: TSmallintField;
    sdsKeresVAROS: TWidestringField;
    sdsKeresKTNEV: TWidestringField;
    sdsKeresKTJELL: TWidestringField;
    sdsKeresHSZ: TWidestringField;
    sdsKeresTNEV1: TWidestringField;
    sdsKeresTNEV2: TWidestringField;
    sdsKeresTNEV3: TWidestringField;
    sdsKeresTEL: TWidestringField;
    sdsKeresEMAIL: TWidestringField;
    sdsKeresFAX: TWidestringField;
    sdsKeresTVAROS: TWidestringField;
    sdsKeresTKTNEV: TWidestringField;
    sdsKeresTKTJELL: TWidestringField;
    sdsKeresTHSZ: TWidestringField;
    sdsMegye: TTalSimpleDataSet;
    dtsMegye: TDataSource;
    sdsMegyeKOD: TWidestringField;
    sdsMegyeNEV: TWidestringField;
    Label1: TLabel;
    edtEnar: TDBEdit;
    Label2: TLabel;
    edtEnar5: TDBEdit;
    Label3: TLabel;
    edtTkod: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    TalPanel1: TTalPanel;
    TalLabel1: TTalLabel;
    Label11: TLabel;
    Label17: TLabel;
    TalDBEdit1: TTalDBEdit;
    TalGroupBox1: TTalGroupBox;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    TalLabel2: TTalLabel;
    TalLabel3: TTalLabel;
    cbMegye: TTalDBLookupComboBox;
    pnlKeres: TTalPanel;
    TalLabel18: TTalLabel;
    TalSearch1: TTalSearch;
    sdsKeresTIRSZ: TWideStringField;
    sdsKeresKKOD: TWideStringField;
    sdsKeresTMEGYE: TWideStringField;
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure edtEnar5Exit(Sender: TObject);
    procedure edtEnarExit(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
    kmode : string;
    procedure KarbGombBeallit(mire:Boolean);
    function Mezok_kitoltve:Boolean;
  public
    { Public declarations }
  end;

var
  frmTenyKarb: TfrmTenyKarb;

procedure TenyBrow;
function TenyVal: string;


implementation

uses udtmTarka;

{$R *.dfm}

procedure TenyBrow;
begin
  With frmTenyKarb do begin
    sdsMegye.Open;
    sdsKeres.Open;
    Position := poDesktopCenter ;
    Caption := 'Tenyészetek adatai';
    btnCancel.Caption := 'Kilépés';
    kmode :=  'KARB';
    if dtmTarka.UserKarb = '0' then
    begin
      btnTorol.Enabled := false;
      btnUj.Enabled := false;
      btnModosit.Enabled := false;
    end;

    ShowModal;
    sdsKeres.Close;
    sdsMegye.Close
  end;
end;


function TenyVal: string;
begin
  With frmTenyKarb do begin
    Result := '';
    sdsMegye.Open;
    sdsKeres.Open;
    Position := poDesktopCenter ;
    Caption := 'Tenyészetek adatai';
    btnCancel.Caption := 'Kilépés';
    kmode :=  'VAL';
    if ShowModal = mrOK then begin
      Result := sdsKeresTKOD.AsString;
    end;
    sdsKeres.Close;
    sdsMegye.Close
  end;
end;



{ TfrmTenyKarb }

procedure TfrmTenyKarb.KarbGombBeallit(mire: Boolean);
begin
  Self.btnUj.Enabled := mire;
  Self.btnModosit.Enabled := mire;
  Self.btnTorol.Enabled := mire;
  Self.btnNyomtat.Enabled := mire;
  Self.pnlKeres.Enabled := mire;
  grdVal.Enabled := mire;
  if mire = false then
    Self.btnCancel.Caption := 'Mégsem'
  else
    Self.btnCancel.Caption := 'Kilépés';
  if mire then
    if Self.btnUj.CanFocus then Self.btnUj.SetFocus;
end;

function TfrmTenyKarb.Mezok_kitoltve: Boolean;
begin
  result := false;
  if (edtEnar.Text = EmptyStr)then begin
    dtmTarka.MsgDlg('Az ENÁR kód megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtEnar.SetFocus;
    exit;
  end;
  if edtEnar5.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az ENÁR elsõ 5 jegyének megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtEnar5.SetFocus;
    exit;
  end;
  Result := true;
end;



procedure TfrmTenyKarb.actOKExecute(Sender: TObject);
var
  mode : string;
begin
  if sdsKeres.State = dsBrowse then begin
    if kmode = 'KARB' then
      exit
    else begin
      modalResult := mrok;
      exit;
    end;
  end;
  if not Mezok_kitoltve then exit;
  mode := 'MAS';
  if sdsKeres.State = dsInsert then begin
    mode := 'INSERT';
  end;
  if sdsKeres.State = dsEdit then begin
    mode := 'EDIT';
  end;

  sdsKeres.Post;

  dtmTarka.cnTarka.BeginTrans;
  try
    sdsKeres.ApplyUpdates(0);

    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;
  sdsKeres.Refresh;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

procedure TfrmTenyKarb.actMegsemExecute(Sender: TObject);
begin
  if sdsKeres.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsKeres.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

procedure TfrmTenyKarb.btnUjClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  sdsKeres.Append;

  Self.pnlMod.Enabled := true;

  KarbGombBeallit(false);

  if Self.edtEnar.Text = EmptyStr then begin
    Self.edtEnar.Enabled := true;
    if Self.edtEnar.CanFocus then Self.edtEnar.SetFocus;
  end;

end;

procedure TfrmTenyKarb.btnModositClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if sdsKeres.RecordCount=0 then exit;
  sdsKeres.Edit;
  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  Self.edtEnar.Enabled := false;
  if edtEnar5.CanFocus then edtEnar5.SetFocus;

end;


procedure TfrmTenyKarb.edtEnar5Exit(Sender: TObject);
var
  mode : string;
begin
  if dtmTarka.MegsemNyomas(ActiveControl) then exit;
  if sdsKeres.State = dsInsert then
    mode := 'uj'
  else
    mode := 'edit';
  if dtmTarka.oszlopbanEzAzErtekSzerepel(sdsKeres,'EKOD',edtEnar5.Text,
          'Már rögzítette ezt a tenyészetet',mode,'EKOD',edtEnar5.Text) then begin
     edtEnar5.SelectAll;
     if edtEnar5.CanFocus then edtEnar5.SetFocus;
      exit;
  end;
end;


procedure TfrmTenyKarb.edtEnarExit(Sender: TObject);
var
  mode : string;
begin
  if dtmTarka.MegsemNyomas(ActiveControl) then exit;
  if sdsKeres.State = dsInsert then
    mode := 'uj'
  else
    mode := 'edit';
  if dtmTarka.oszlopbanEzAzErtekSzerepel(sdsKeres,'TKOD',edtEnar.Text,
          'Már rögzítette ezt a tenyészetet',mode,'TKOD',edtEnar.Text) then begin
     edtEnar.SelectAll;
     if edtEnar.CanFocus then edtEnar.SetFocus;
      exit;
  end;
end;

procedure TfrmTenyKarb.btnTorolClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.JogosultsagEllenorzes('karb') then

end;

end.
