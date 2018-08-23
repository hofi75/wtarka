unit QfrmMedicine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, DB, DBClient, uTALSimpleDataSet,
  Mask, DBCtrls, uTALLabel, uTALBevel, uValidedit, uDBValidedit, uTALDBEdit,
  uTALDBLookupComboBox, ADODB, uTalQuery, Wwkeycb, uTALSearch, uTALComboBox;

type
  TfrmMedicine = class(TfrmModOs)
    sdsGYOGYSZEREK: TTalSimpleDataSet;
    dsGYOGYSZEREK: TDataSource;
    sdsGYOGYSZEREKID: TBCDField;
    sdsGYOGYSZEREKKOD: TWidestringField;
    sdsGYOGYSZEREKNEV: TWidestringField;
    sdsGYOGYSZEREKFORGALMAZO_NEV: TWidestringField;
    sdsGYOGYSZEREKFORGALMAZO_CIM: TWidestringField;
    Label1: TTalLabel;
    DBEdit1: TTalDBEdit;
    Label2: TTalLabel;
    DBEdit2: TTalDBEdit;
    Label3: TTalLabel;
    DBEdit3: TTalDBEdit;
    Label4: TTalLabel;
    DBEdit4: TTalDBEdit;
    Label5: TTalLabel;
    DBEdit5: TTalDBEdit;
    Label6: TTalLabel;
    DBEdit6: TTalDBEdit;
    Label7: TTalLabel;
    DBEdit7: TTalDBEdit;
    TalLabel1: TTalLabel;
    TalBevel1: TTalBevel;
    TalLabel2: TTalLabel;
    TalDBEdit1: TTalDBEdit;
    TalLabel3: TTalLabel;
    TalLabel4: TTalLabel;
    TalLabel5: TTalLabel;
    TalDBLookupComboBox1: TTalDBLookupComboBox;
    sdsGYOGYSZEREKHATOANYAG: TWidestringField;
    sdsGYOGYSZEREKBETEGSEGTIPUS: TWidestringField;
    sdsBetTip: TTalQuery;
    StringField33: TWidestringField;
    StringField34: TWidestringField;
    dtsBetTip: TDataSource;
    sdsGYOGYSZEREKCELCSOPORT: TWidestringField;
    pnlKereses: TPanel;
    Label8: TLabel;
    TalSearch1: TTalSearch;
    TalLabel6: TTalLabel;
    TalLabel7: TTalLabel;
    cbBetTipSzuro: TTalComboBox;
    btnLeker: TBitBtn;
    sdsGYOGYSZEREKVARAKOZAS_HUS: TBCDField;
    sdsGYOGYSZEREKVARAKOZAS_TEJ: TBCDField;
    procedure FormActivate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
    procedure grdValKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnLekerClick(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure TalSearch1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    bt_kod : array of string;
    procedure SetEditors(Enable: boolean);    
  public
    { Public declarations }
    Bongesz : boolean;
    Id : Variant;
    Kod : Variant;
    Nev : Variant;
    sAlapSql : string;
  end;

var
  frmMedicine: TfrmMedicine;

function GyogyszerKarb(pBongesz : boolean = false; Szuro:integer = 0): boolean;


implementation

uses udtmTarka;

{$R *.dfm}


function GyogyszerKarb(pBongesz : boolean = false; Szuro:integer = 0): boolean;
var
  i : integer;
begin
  with frmMedicine do
  begin
    sdsGYOGYSZEREK.Connection := dtmTarka.cnTarka;
    sdsBetTip.Connection := dtmTarka.cnTarka;
    Bongesz := pBongesz;
    TalSearch1.Text := '';
    sdsGYOGYSZEREK.Connection := dtmTarka.cnTarka;
    sAlapSql := sdsGYOGYSZEREK.DataSet.CommandText;
    sdsBetTip.Open;
    cbBetTipSzuro.Items.Clear;
    i := 0;
    cbBetTipSzuro.Items.Add('Mind');
    i := i+1;
    SetLength(bt_kod ,i);
    bt_kod[i-1] := '*';

    cbBetTipSzuro.Items.Add('Nincs megadva');
    i := i+1;
    SetLength(bt_kod ,i);
    bt_kod[i-1] := '';

    cbBetTipSzuro.ItemIndex := 0;

    while not sdsBetTip.Eof do begin
      cbBetTipSzuro.Items.Add(sdsBetTip.Fields[1].AsString);
      i := i+1;
      SetLength(frmMedicine.bt_kod ,i);
      frmMedicine.bt_kod[i-1] := sdsBetTip.Fields[0].AsString;
      sdsBetTip.Next;
    end;
    sdsBetTip.Close;
//    sdsGYOGYSZEREK.Open;
    btnLekerClick(NIL);
    sdsBetTip.Open;
    if Bongesz then
    begin
      frmMedicine.btnOK.Enabled := True;
      frmMedicine.btnCancel.Enabled := True;
      frmMedicine.btnUj.Enabled := True;
      frmMedicine.btnModosit.Enabled := True;
      frmMedicine.btnTorol.Enabled := True;
    end
    else
    begin
      SetEditors(False);
      frmMedicine.btnUj.Enabled := False;
      frmMedicine.btnModosit.Enabled := False;
      frmMedicine.btnTorol.Enabled := False;
    end;
    frmMedicine.btnCancel.Caption := 'Kilépés';

    if Szuro > 0 then begin
      frmMedicine.cbBetTipSzuro.ItemIndex := Szuro;
      frmMedicine.btnLekerClick(NIL);
    end;

    Result := ShowModal = mrOK;
    if Result then
    begin
      Id  := sdsGYOGYSZEREK.FieldByName('ID').Value;
      Kod := sdsGYOGYSZEREK.FieldByName('KOD').Value;
      Nev := sdsGYOGYSZEREK.FieldByName('NEV').Value;
    end;

    sdsGYOGYSZEREK.Close;
    sdsGYOGYSZEREK.DataSet.CommandText := sAlapSql;
    sdsBetTip.Close;
  end;
end;


procedure TfrmMedicine.FormActivate(Sender: TObject);
begin
  inherited;
//  Caption := 'Gyógyszerek, Telep ENAR tenyészet kódja:'+dtmTalp.sTenyeszetKod;
  if Bongesz then
  begin
    frmMedicine.btnOK.Enabled := True;
    frmMedicine.btnCancel.Enabled := True;
  end;
  frmMedicine.grdVal.SortField := 'NEV';
  frmMedicine.grdVal.SortShow := true;
end;


procedure TfrmMedicine.SetEditors(Enable: boolean);
begin
  btnOK.Enabled := True;
  btnCancel.Enabled := True;
  btnUj.Enabled := not Enable;
  btnTorol.Enabled := not Enable;
  btnModosit.Enabled := not Enable;
  grdVal.Enabled := not Enable;
  pnlMod.Enabled := Enable;
  if btnUj.Enabled then
    btnCancel.Caption := 'Kilépés'
  else
    btnCancel.Caption := 'Mégsem';

  if Enable then
    DBEdit1.SetFocus;
end;


procedure TfrmMedicine.btnOKClick(Sender: TObject);
begin
  inherited;
  if sdsGYOGYSZEREK.State = dsInsert then
    if dtmTarka.VaneGyogyszer(DBEdit1.Text) = true then begin
      dtmTarka.MsgDlg('Már van ilyen kóddal gyógyszer felvéve!',mterror,[mbOK],0 );
      dbedit1.SelectAll;
      if dbedit1.CanFocus then dbedit1.SetFocus;
      exit;
    end;
  if sdsGYOGYSZEREK.State in [dsEdit, dsInsert] then begin
    sdsGYOGYSZEREK.Post;
    sdsGYOGYSZEREK.ApplyUpdates(0);
    SetEditors(False);
  end else begin
//    if not Bongesz then
    ModalResult := mrOK;
  end;
//  if Bongesz then
//    ModalResult := mrOK;
end;


procedure TfrmMedicine.btnCancelClick(Sender: TObject);
begin
  inherited;
  if sdsGYOGYSZEREK.State in [dsEdit, dsInsert] then begin
    sdsGYOGYSZEREK.Cancel;
    SetEditors(False);
    exit;
  end else begin
    ModalResult := mrCancel;
  end;
  if Bongesz then
    ModalResult := mrCancel;
end;


procedure TfrmMedicine.btnUjClick(Sender: TObject);
var
  ujkod : string;
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
  sdsGYOGYSZEREK.Append;
  try
    if dtmTarka.GetKodNev('SELECT NVL(MAX(KOD), 0) AS KOD FROM GYOGYSZEREK', 'KOD', UJKOD) then
         sdsGYOGYSZEREKKOD.AsString := IntToStr(strToInt(UJKOD)+1);
  except
  end;
  SetEditors(True);
end;



procedure TfrmMedicine.btnModositClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
  sdsGYOGYSZEREK.Edit;
  SetEditors(True);
end;

procedure TfrmMedicine.btnTorolClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
  if dtmTarka.MsgDlg('Biztos törli a tételt?', mtConfirmation , [mbYes, mbNo],0) = mrYes then begin
    sdsGYOGYSZEREK.Delete;
    sdsGYOGYSZEREK.ApplyUpdates(0);
  end;
end;





procedure TfrmMedicine.grdValKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not bongesz then begin
    if Key = 13	then
      ModalResult := mrOK;
    if Key = 27 then
      Modalresult := mrCancel;
  end;
end;

procedure TfrmMedicine.btnLekerClick(Sender: TObject);
var
  sFelt : string;
begin
    if sdsGYOGYSZEREK.Active then
      sdsGYOGYSZEREK.Close;

    sFelt := '';
    if cbBetTipSzuro.Text = 'Mind' then
      sFelt := '';

    if cbBetTipSzuro.Text = 'Nincs megadva' then
      sFelt := ' where ((Betegsegtipus='''') or (Betegsegtipus is null)) ';

    if (cbBetTipSzuro.Text <> 'Mind') and (cbBetTipSzuro.Text <> 'Nincs megadva')  then
      sFelt := ' where Betegsegtipus = ' + Quotedstr( bt_kod[cbBetTipSzuro.ItemIndex]);

    sdsGYOGYSZEREK.DataSet.CommandText := sAlapSql + sFelt;
    sdsGYOGYSZEREK.Open;
end;



procedure TfrmMedicine.FormDblClick(Sender: TObject);
begin
  btnOKClick(Sender);
  inherited;
end;

procedure TfrmMedicine.TalSearch1KeyDown(Sender: TObject; var Key: Word;
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
  inherited;
end;



procedure TfrmMedicine.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Bongesz then
    inherited;
end;

end.
