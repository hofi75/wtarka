unit QfrmFuljRend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, frxClass, frxDBSet, ADODB, uTalQuery, DB, DBClient,
  uTALSimpleDataSet, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,DateUtils,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, Mask, uValidedit, uDBValidedit,
  uTALDBEdit, DBCtrls, uTALDBLookupComboBox, uTALLabel, uTALDBMemo;

type
  TfrmFuljRend = class(TfrmModOs)
    sdsFuljelzok: TTalSimpleDataSet;
    dtsFulJelzok: TDataSource;
    qryRendKod: TTalQuery;
    dtsRendKod: TDataSource;
    qryLista: TTalQuery;
    qryListaID: TBCDField;
    qryListaFULJ_AZON: TStringField;
    qryListaBEVET_DATUM: TDateTimeField;
    qryListaRENDELES_DATUM: TDateTimeField;
    qryListaJELENTES_DATUM: TDateTimeField;
    qryListaKIADAS_DATUM: TDateTimeField;
    qryListaRENDELESI_KOD: TStringField;
    qryListaUTMOD_DAT: TDateTimeField;
    qryListaUTMOD_KOD: TStringField;
    qryListaREND_NEV: TStringField;
    frxDBLista: TfrxDBDataset;
    frxRepLista: TfrxReport;
    TalLabel1: TTalLabel;
    lucRend: TTalDBLookupComboBox;
    TalLabel2: TTalLabel;
    edtRendDat: TTalDBEdit;
    TalLabel3: TTalLabel;
    edtBeerkDat: TTalDBEdit;
    TalLabel8: TTalLabel;
    edtMenny: TTalDBEdit;
    sdsFuljelzokID: TBCDField;
    sdsFuljelzokDATUM: TDateTimeField;
    sdsFuljelzokVARHATO_ERK: TDateTimeField;
    sdsFuljelzokUTMOD_DAT: TDateTimeField;
    TalLabel4: TTalLabel;
    TalDBMemo1: TTalDBMemo;
    TalLabel5: TTalLabel;
    sdsFuljelzokREND_MOD: TWideStringField;
    sdsFuljelzokUTMOD_KOD: TWideStringField;
    sdsFuljelzokMEGJEGYZES: TWideStringField;
    qryRendKodKOD: TWideStringField;
    qryRendKodKOD_NEV: TWideStringField;
    sdsFuljelzokREND_NEV: TWideStringField;
    sdsFuljelzokMENNYISEG: TBCDField;
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
    procedure edtRendDatExit(Sender: TObject);
    procedure edtBeerkDatExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure KarbGombBeallit(mire:Boolean; csop:Boolean=false);
    function Mezok_kitoltve:Boolean;
  public
    { Public declarations }
  end;

procedure OpenFuljelzoRend;

implementation

uses udtmTarka;

{$R *.dfm}

procedure OpenFuljelzoRend;
var
  frmFuljRend: TfrmFuljRend;
  likestr : string;
  original_sql: string;
begin
  frmFuljRend := TfrmFuljRend.Create(Application);
  frmFuljRend.WindowState := wsNormal;
  frmFuljRend.Position := poDesktopCenter ;
  frmFuljRend.KarbGombBeallit(true);
  try
    if frmFuljRend.sdsFuljelzok.Active then frmFuljRend.sdsFuljelzok.Close;
    (*
    original_sql := frmFuljRend.sdsFuljelzok.DataSet.CommandText;
    likestr := 'AND FF.FULJ_AZON LIKE ''' + dtmTarka.TenyeszetEKOD + '%''';
    frmFuljRend.sdsFuljelzok.DataSet.CommandText := StringReplace(original_sql,'/*LIKE*/',likestr,[rfReplaceAll]);
    *)
    frmFuljRend.sdsFuljelzok.Open;
    frmFuljRend.qryRendKod.Open;

    if dtmTarka.UserKarb = '0' then
    begin
      frmFuljRend.btnUj.Enabled := false;
      frmFuljRend.btnModosit.Enabled := false;
      frmFuljRend.btnTorol.Enabled := false;
    end;
   if frmFuljRend.ShowModal = mrOK then begin

   end;
   finally
     if frmFuljRend.sdsFuljelzok.Active then frmFuljRend.sdsFuljelzok.Close;
     if frmFuljRend.qryRendKod.Active then frmFuljRend.qryRendKod.Close;
   end;
end;

{ TfrmFuljRend }

procedure TfrmFuljRend.KarbGombBeallit(mire, csop: Boolean);
begin
  Self.btnUj.Enabled := mire;
  Self.btnModosit.Enabled := mire;
  Self.btnTorol.Visible := mire;

  if mire = false then
    Self.btnCancel.Caption := 'Mégsem'
  else
    Self.btnCancel.Caption := 'Kilépés';
  if mire and Self.Visible then 
    if Self.btnUj.CanFocus then Self.btnUj.SetFocus;
end;

function TfrmFuljRend.Mezok_kitoltve: Boolean;
begin
  result := false;
  if edtRendDat.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A rendelés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtRendDat.SetFocus;
    exit;
  end;

  if edtMenny.Text = EmptyStr then begin
      dtmTarka.MsgDlg('A mennyiség megadása megadása kötelezõ!', mtWarning, [mbOK], 0);
      edtMenny.SetFocus;
      exit;
  end;

  Result := true;
end;

procedure TfrmFuljRend.btnUjClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  sdsFuljelzok.Append;
  Self.sdsFuljelzokDATUM.AsDateTime := today();

  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  if lucRend.CanFocus then lucRend.SetFocus;
end;



procedure TfrmFuljRend.btnModositClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if sdsFuljelzok.RecordCount = 0 then exit;
  inherited;
  sdsFuljelzok.Edit;

  Self.btnUj.Enabled := false;
  Self.btnModosit.Enabled := false;
  Self.btnTorol.Visible := false;
  Self.btnCancel.Caption := 'Mégsem';

  if lucRend.CanFocus then lucRend.SetFocus;
end;

procedure TfrmFuljRend.actOKExecute(Sender: TObject);
begin
  if sdsFuljelzok.State = dsBrowse then begin
//    ModalResult := mrOK;
    exit;
  end;
  if not Mezok_kitoltve then exit;

  sdsFuljelzokUTMOD_DAT.AsDateTime := now();
  sdsFuljelzokUTMOD_KOD.AsString := dtmTarka.UserKod;

  sdsFuljelzok.Post;
  dtmTarka.cnTarka.BeginTrans;
  try
    sdsFuljelzok.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;

  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

procedure TfrmFuljRend.actMegsemExecute(Sender: TObject);
begin
  if sdsFuljelzok.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsFuljelzok.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;



procedure TfrmFuljRend.btnTorolClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if sdsFuljelzok.RecordCount = 0 then exit;
  if dtmTarka.MsgDlg('Biztos törli a tételt?', mtConfirmation , [mbYes, mbNo],0) = mrYes then begin
    sdsFuljelzok.Edit;
    sdsFuljelzok.Delete;
    dtmTarka.cnTarka.BeginTrans;
    try
      sdsFuljelzok.ApplyUpdates(0);
      dtmTarka.cnTarka.CommitTrans;
    except
      if dtmTarka.cnTarka.InTransaction then
        dtmTarka.cnTarka.RollbackTrans;
    end;
    sdsFuljelzok.Refresh;
  end;
  inherited;
end;

procedure TfrmFuljRend.edtRendDatExit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if StrToDate(edtRendDat.Text)  > Date then begin
    dtmTarka.MsgDlg('Hibás dátum!', mtWarning, [mbOK], 0);
    edtRendDat.SelectAll;
    edtRendDat.SetFocus;
  end;
end;


procedure TfrmFuljRend.edtBeerkDatExit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if StrToDate(edtBeerkDat.Text) < Date then begin
    dtmTarka.MsgDlg('Hibás dátum!', mtWarning, [mbOK], 0);
    edtBeerkDat.SelectAll;
    edtBeerkDat.SetFocus;
  end;
end;

procedure TfrmFuljRend.FormCreate(Sender: TObject);
begin
  sdsFuljelzok.Connection := dtmTarka.cnTarka;
  qryRendKod.Connection := dtmTarka.cnTarka;
  qryLista.Connection := dtmTarka.cnTarka;
  inherited;  
end;

end.
