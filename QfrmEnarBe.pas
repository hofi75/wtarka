unit QfrmEnarBe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid, Db,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, DBCtrls, uTALDBLookupComboBox,
  uDBValidedit, uTALDBEdit, uTALRadioButton, Mask, uValidedit, uTALEdit,
  uTALLabel, wwcheckbox, uTALDBCheckBox, Wwkeycb, uTALSearch, frxClass,
  frxDBSet, DBClient, uTALSimpleDataSet, StrUtils;

const
  w1 = 'where (trim(E.ENAR) IS NOT NULL) AND (e.ENAR_BE_DATUM is NULL)';
  w2 = 'where (trim(E.ENAR) IS NOT NULL) AND not (e.ENAR_BE_DATUM is NULL)';

type
  TfrmEnarBe = class(TfrmModOs)
    TalPanel1: TTalPanel;
    TalLabel1: TTalLabel;
    lblTenyeszet: TTalLabel;
    rbNemBejelentett: TTalRadioButton;
    TalRadioButton2: TTalRadioButton;
    TalLabel3: TTalLabel;
    TalLabel4: TTalLabel;
    TalLabel5: TTalLabel;
    TalLabel6: TTalLabel;
    TalLabel7: TTalLabel;
    TalLabel8: TTalLabel;
    TalLabel10: TTalLabel;
    TalLabel11: TTalLabel;
    TalLabel14: TTalLabel;
    TalLabel15: TTalLabel;
    TalLabel16: TTalLabel;
    TalLabel17: TTalLabel;
    TalDBEdit1: TTalDBEdit;
    TalDBEdit2: TTalDBEdit;
    TalDBEdit3: TTalDBEdit;
    TalDBEdit4: TTalDBEdit;
    TalDBEdit5: TTalDBEdit;
    TalDBEdit6: TTalDBEdit;
    TalDBEdit7: TTalDBEdit;
    lucFajta: TTalDBLookupComboBox;
    TalDBEdit10: TTalDBEdit;
    TalLabel18: TTalLabel;
    TalDBEdit11: TTalDBEdit;
    TalDBEdit12: TTalDBEdit;
    TalDBCheckBox1: TTalDBCheckBox;
    TalDBEdit8: TTalDBEdit;
    btnCsopKez: TBitBtn;
    btnUjrakuld: TBitBtn;
    TalSearch1: TTalSearch;
    sdsEnarBe: TTalSimpleDataSet;
    dtsEnarBe: TDataSource;
    sdsEnarBeID: TBCDField;
    sdsEnarBeENAR: TWideStringField;
    sdsEnarBeSZULDAT: TDateTimeField;
    sdsEnarBeIVAR: TWideStringField;
    sdsEnarBeIVARNEV: TWideStringField;
    sdsEnarBeSZIN: TWideStringField;
    sdsEnarBeSZINNEV: TWideStringField;
    sdsEnarBeFAJTAKOD: TWideStringField;
    sdsEnarBeFULSZAM: TWideStringField;
    sdsEnarBeALLDAT: TDateTimeField;
    sdsEnarBeANYA_ENAR: TWideStringField;
    sdsEnarBeIKER: TBCDField;
    sdsEnarBeELLES_LEF: TWideStringField;
    sdsEnarBeELLLEFNEV: TWideStringField;
    sdsEnarBeBORJU_SULY: TBCDField;
    sdsEnarBeENAR_BE_DATUM: TDateTimeField;
    sdsEnarBeMOD_DAT: TDateTimeField;
    sdsEnarBeMOD_KOD: TWideStringField;
    frxDBDataset1: TfrxDBDataset;
    frxRepLista: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rbNemBejelentettClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure TalEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure TalEdit1Change(Sender: TObject);
    procedure btnCsopKezClick(Sender: TObject);
    procedure btnUjrakuldClick(Sender: TObject);
    procedure btnUjClick(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure sdsEnarBeENARGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
    EredetiSql : string;
    procedure DataOpen;
    procedure KarbGombBeallit(mire:Boolean);
    procedure IkerEllesBeallit;
  public
    { Public declarations }
  end;

var
  frmEnarBe: TfrmEnarBe;

function EnarBe:Boolean;

implementation

uses udtmTarka, QfrmCsopFajta;

{$R *.dfm}

function EnarBe : Boolean;
begin
  Result := false;
  frmEnarBe := TfrmEnarBe.Create(Application);
  with frmEnarBe do begin
    sdsEnarBe.Connection := dtmTarka.cnTarka;
    frmEnarBe.EredetiSql := sdsEnarBe.DataSet.CommandText;
    frmEnarBe.WindowState := wsNormal;
    frmEnarBe.Position := poDesktopCenter ;
    frmEnarBe.KarbGombBeallit(true);
    frmEnarBe.lblTenyeszet.Caption := 'Telep ENAR tenyészet kódja:' + dtmTarka.TenyeszetTKod;
    try
      frmEnarBe.DataOpen;
      dtmTarka.qryInfFajta.Open;

     if frmEnarBe.ShowModal = mrOK then
        Result := true;
     finally
       if sdsEnarBe.Active then sdsEnarBe.Close;
       if dtmTarka.qryInfFajta.Active then dtmTarka.qryInfFajta.Close;
       sdsEnarBe.DataSet.CommandText := frmEnarBe.EredetiSql;

     end;
   end;
end;

procedure TfrmEnarBe.DataOpen;
begin
  if sdsEnarBe.Active then sdsEnarBe.Close;
  if Self.rbNemBejelentett.Checked then begin
    sdsEnarBe.DataSet.CommandText := Self.EredetiSql + w1 + dtmTarka.TenyeszetWhereE;
    IkerEllesBeallit;
  end else begin
    sdsEnarBe.DataSet.CommandText := Self.EredetiSql + w2 + dtmTarka.TenyeszetWhereE;
  end;
  try
    screen.Cursor := crHourGlass;
    sdsEnarBe.Open;
  finally
    screen.cursor := crArrow;
  end;
end;

procedure TfrmEnarBe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  inherited;

end;

procedure TfrmEnarBe.rbNemBejelentettClick(Sender: TObject);
begin
  Self.DataOpen;
  if rbNemBejelentett.Checked then
    Self.btnUjrakuld.Visible := false
  else
    Self.btnUjrakuld.Visible := true;
  btnNyomtat.Visible := rbNemBejelentett.Checked;
  inherited;
end;

procedure TfrmEnarBe.actOKExecute(Sender: TObject);
begin
  if sdsEnarBe.State = dsBrowse then begin
//    ModalResult := mrOK;
    exit;
  end;
//  if not Mezok_kitoltve then exit;
  sdsEnarBeMOD_DAT.AsDateTime := now();
  sdsEnarBeMOD_KOD.AsString := dtmTarka.UserKod;
  sdsEnarBe.Post;
  dtmTarka.cnTarka.BeginTrans;
  try
    sdsEnarBe.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);

end;

procedure TfrmEnarBe.actMegsemExecute(Sender: TObject);
begin
  if sdsEnarBe.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsEnarBe.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

procedure TfrmEnarBe.KarbGombBeallit(mire:Boolean);
begin
  Self.btnUj.Enabled := false;
  Self.btnModosit.Enabled := mire;
  Self.btnTorol.Enabled := false;
  if mire = false then
    Self.btnCancel.Caption := 'Mégsem'
  else
    Self.btnCancel.Caption := 'Kilépés';
  if rbNemBejelentett.Checked then
    btnUjrakuld.Visible := false
  else
    if mire then begin
      btnUjrakuld.Visible := true;
      btnUjrakuld.Enabled := true;
    end else begin
      btnUjrakuld.Visible := true;
      btnUjrakuld.Enabled := false;
    end;
end;


procedure TfrmEnarBe.btnModositClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
  sdsEnarBe.Edit;
  Self.KarbGombBeallit(false);
  if Self.lucFajta.CanFocus then lucFajta.SetFocus;

end;

procedure TfrmEnarBe.TalEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if grdVal <> ActiveControl then
  case Key of
    Vk_Up: grdVal.DataSource.DataSet.Prior;
    Vk_Down: grdVal.DataSource.DataSet.Next;
    Vk_Prior: grdVal.DataSource.DataSet.MoveBy(-10);
    Vk_Next: grdVal.DataSource.DataSet.MoveBy(10);
  end;
end;


procedure TfrmEnarBe.btnCsopKezClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if frmEnarBe.rbNemBejelentett.Checked then
    if sdsEnarBe.RecordCount > 0 then
      if OpenCsopFajta then begin
        sdsEnarBe.Close;
        sdsEnarBe.Open;
      end;
end;


procedure TfrmEnarBe.btnUjrakuldClick(Sender: TObject);
var
  SQL : string;
begin
  if sdsEnarBe.RecordCount = 0 then exit;
  SQL := 'update egyedek set enar_be_datum=NULL' +
         ' where egyedek.id= '+ sdsEnarBeID.AsString;
  dtmTarka.cnTarka.BeginTrans;
  try
    dtmTarka.cnTarka.Execute(SQL);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then begin
      dtmTarka.cnTarka.RollbackTrans;
    end;
  end;
  sdsEnarBe.Refresh;
  grdVal.Enabled := true;
  inherited;
end;

procedure TfrmEnarBe.btnUjClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
end;


procedure TfrmEnarBe.IkerEllesBeallit;
var
  SQL : string;
begin
  SQL := 'UPDATE EGYEDEK SET IKER = 1 ' +
   ' where exists (select 1 from BORJAK where borjak.ELLESEK_ID=(select borjak.ELLESEK_ID '+
   '           from borjak where borjak.BORJU_ENAR=egyedek.ENAR AND ROWNUM = 1) '+
   '           and borjak.BORJU_SSZ <> (select borjak.BORJU_SSZ                 '+
   '           from borjak where borjak.BORJU_ENAR=egyedek.enar AND ROWNUM = 1)) ';
  dtmTarka.cnTarka.BeginTrans;
  try
    dtmTarka.cnTarka.Execute(SQL);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then begin
      dtmTarka.cnTarka.RollbackTrans;
    end;
  end;
end;




procedure TfrmEnarBe.btnNyomtatClick(Sender: TObject);
var
  sazon : string;
  aa : string;
begin
  if rbNemBejelentett.Checked then begin
    aa := dtmTarka.sATKFT_KOD;
    if frxRepLista.LoadFromFile('NemEnar.fr3') then begin
       // paraméter átadás a lista fejhez
       sazon := sdsEnarBeENAR.AsString;
       sdsEnarBe.DisableControls;
       try
         frxRepLista.Variables.Clear;
         frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
         frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
         aa := dtmTarka.sATKFT_KOD;
         frxRepLista.Script.Variables['SzuroFeltetelek']:= '';
         frxRepLista.ShowReport();
       finally
         sdsEnarBe.Locate('ENAR',sazon,[]);
         sdsEnarBe.EnableControls;
       end;
    End;
  end;
end;

procedure TfrmEnarBe.sdsEnarBeENARGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  aa : string;
begin
  if Sender.Value = Null then
    aa := ''
  else
    aa := Sender.Value;

  if ((LeftStr(aa,1) = '3') and (Length(aa)= 10)) then
      Text := LeftStr(aa,5) + '-'+ midstr(aa ,6, 4) + '-'  + RightStr(aa,1)
  else if ((LeftStr(aa,3) = 'HU3') and (Length(aa)=12)) then
         Text :=LeftStr(aa,7) + '-'+ midstr(aa ,8, 4) + '-' + RightStr(aa,1)
       else
         Text := aa;
end;

procedure TfrmEnarBe.btnTorolClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;

end;

end.
