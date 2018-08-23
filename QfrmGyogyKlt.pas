unit QfrmGyogyKlt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, uTALCheckBox, Wwkeycb, uTALParams,
  uTALSearch, uTALLabel, Mask, uValidedit, uDBValidedit,
  uTALDBEdit, ADODB, uTalQuery, DB, DBClient, uTALSimpleDataSet, DBCtrls,
  uTALDBLookupComboBox, uTALSpeedButton, uTALEdit;

type
  TfrmGyogyKlt = class(TfrmModOs)
    AIRPanel1: TTALPanel;
    TalLabel18: TTalLabel;
    TalSearch1: TTalSearch;
    btnLeker: TBitBtn;
    cbCsakKeszlettel: TTalCheckBox;
    dsGYOGYKlt: TDataSource;
    sdsMe: TTalQuery;
    StringField33: TWidestringField;
    StringField34: TWidestringField;
    TalLabel1: TTalLabel;
    Label4: TTalLabel;
    edtTej: TTalDBEdit;
    TalLabel3: TTalLabel;
    Label3: TTalLabel;
    edtHus: TTalDBEdit;
    TalLabel4: TTalLabel;
    Label9: TTalLabel;
    edtGyogyszerKod: TTalDBEdit;
    btnGyogyszer: TTalSpeedButton;
    edtGyogyszerNev: TTalDBEdit;
    TalLabel2: TTalLabel;
    edtHatoanyag: TTalDBEdit;
    TalLabel5: TTalLabel;
    edtDatum: TTalDBEdit;
    TalLabel6: TTalLabel;
    cbMe: TTalDBLookupComboBox;
    TalLabel7: TTalLabel;
    edtBeszMenny: TTalDBEdit;
    TalLabel8: TTalLabel;
    TalLabel9: TTalLabel;
    edtAktKeszl: TTalDBEdit;
    Label6: TTalLabel;
    DBEdit6: TTalDBEdit;
    sdsGYOGYKlt: TTalSimpleDataSet;
    sdsGYOGYKltGYOGYSZER_KOD: TWidestringField;
    sdsGYOGYKltNEV: TWidestringField;
    sdsGYOGYKltHATOANYAG: TWidestringField;
    sdsGYOGYKltFORGALMAZO_NEV: TWidestringField;
    sdsGYOGYKltBEVET_DATUM: TDateTimeField;
    sdsGYOGYKltBEV_MENNY: TBCDField;
    sdsGYOGYKltAKT_KESZLET: TBCDField;
    sdsGYOGYKltME: TWidestringField;
    actLeker: TAction;
    dtsMe: TDataSource;
    btnFelh: TBitBtn;
    sdsGYOGYKltID: TBCDField;
    sdsGYOGYKltGYOGYSZER_ID: TBCDField;
    sdsGYOGYKltUTMOD_DAT: TDateTimeField;
    sdsGYOGYKltUTMOD_KOD: TWidestringField;
    TalLabel10: TTalLabel;
    btnEgyebFelh: TBitBtn;
    sdsFelh: TTalSimpleDataSet;
    dtsFelh: TDataSource;
    edtFelh: TTalEdit;
    edtEgyeb: TTalEdit;
    sdsFelhSUMFELH: TBCDField;
    sdsFelhEGYEB: TBCDField;
    sdsGYOGYKltVARAKOZAS_TEJ: TBCDField;
    sdsGYOGYKltVARAKOZAS_HUS: TBCDField;
    procedure actLekerExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure btnGyogyszerClick(Sender: TObject);
    procedure edtGyogyszerKodExit(Sender: TObject);
    procedure edtBeszMennyExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdValKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TalSearch1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdValDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnFelhClick(Sender: TObject);
    procedure btnEgyebFelhClick(Sender: TObject);
    procedure sdsGYOGYKltAfterScroll(DataSet: TDataSet);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
    AlapSelect : string;
    mode : string;
    plusWhere : string;
    AlapPlusWhere : string;
    function Mezok_kitoltve:Boolean;
    procedure SetEditors(Enable: boolean);
  public
    { Public declarations }
  end;


function GyogyszerKlt(Kapott:TTalParamList; var Vissza: TTalParamList):Boolean;

implementation

uses udtmTarka, QfrmMedicine, QSysTools, QfrmGyFelh, QfrmEgyEgyeb;

{$R *.dfm}

function GyogyszerKlt(Kapott:TTalParamList; var Vissza: TTalParamList):Boolean;
var
  frmGyogyKlt: TfrmGyogyKlt;
  bKellShow : Boolean;
begin
  frmGyogyKlt := TfrmGyogyKlt.Create(Application);
  try
    with frmGyogyKlt do begin
      if Kapott.ItemsByName('mode') <> NIL then
        mode := Kapott.ItemsByName('mode').values[0]
      else
        mode := 'BON';
      plusWhere := '';
      if Kapott.ItemsByName('GYOGYSZER_KOD') <> NIL then begin
        AlapPlusWhere := 'WHERE GK.GYOGYSZER_KOD = ' + quotedstr(Kapott.ItemsByName('GYOGYSZER_KOD').values[0]);
      end;
      AlapSelect := sdsGYOGYKlt.DataSet.CommandText;
      sdsGYOGYKlt.Connection := dtmTarka.cnTarka;
      sdsMe.Connection := dtmTarka.cnTarka;
      sdsFelh.Connection := dtmTarka.cnTarka;
      SetEditors(false);
      sdsMe.Open;

      bKellShow := true;
      actLekerExecute(NIL);
      sdsGYOGYKltAfterScroll(NIL);

      Result := false;
      if Kapott.ItemsByName('GYOGYSZER_KOD') <> NIL then begin
        if sdsGYOGYKlt.RecordCount = 1 then begin
          bKellShow := false;
          result := true;
        end;
      end ;

      if bKellShow then
        Result := ShowModal = mrOK;
        
      if Result then begin
        Vissza.Add('ID', sdsGYOGYKltID.AsString);
        Vissza.Add('KOD', sdsGYOGYKltGYOGYSZER_KOD.AsString);
        Vissza.Add('NEV', sdsGYOGYKltNEV.AsString);
        Vissza.Add('KESZLET', sdsGYOGYKltAKT_KESZLET.AsCurrency);
        Vissza.Add('GYOGYSZER_ID', sdsGYOGYKltGYOGYSZER_ID.AsString);
        Vissza.Add('ME', sdsGYOGYKltME.AsString);
      end;
    end;
  finally
    if frmGyogyKlt.sdsGYOGYKlt.Active then frmGyogyKlt.sdsGYOGYKlt.Close;
    if frmGyogyKlt.sdsMe.Active then frmGyogyKlt.sdsMe.Close;
    FreeAndNil(frmGyogyKlt);
  end;

end;


procedure TfrmGyogyKlt.actLekerExecute(Sender: TObject);
const
  cplusWhere = ' GK.AKT_KESZLET > 0';
begin
  if sdsGYOGYKlt.Active then sdsGYOGYKlt.Close;
  PlusWhere := AlapPlusWhere;
  if cbCsakKeszlettel.Checked then begin
    if plusWhere = '' then begin
      plusWhere := 'where ' + cplusWhere;
    end else begin
      plusWhere := AlapPlusWhere + ' and ' + cplusWhere;
    end;
  end ;

  sdsGYOGYKlt.DataSet.CommandText := AlapSelect + PlusWhere;
  sdsGYOGYKlt.Open;

end;

procedure TfrmGyogyKlt.actOKExecute(Sender: TObject);
begin
  if not Mezok_kitoltve then exit;
(*  if sdsGYOGYKlt.State = dsInsert then
    if dtmTalp.VaneGyogyszerKlt(DBEdit1.Text) = true then begin
      dtmTarka.MsgDlg('Már van ilyen kóddal gyógyszer felvéve!',mterror,[mbOK],0 );
      dbedit1.SelectAll;
      if dbedit1.CanFocus then dbedit1.SetFocus;
      exit;
    end;*)
  if sdsGYOGYKlt.State in [dsEdit, dsInsert] then begin
    sdsGYOGYKlt.FieldByName('UTMOD_DAT').AsDateTime := Now();
    sdsGYOGYKlt.FieldByName('UTMOD_KOD').AsString := dtmTarka.UserKod;

    sdsGYOGYKlt.Post;

    dtmTarka.cnTarka.BeginTrans;
    try
      sdsGYOGYKlt.ApplyUpdates(0);
      dtmTarka.cnTarka.CommitTrans;
      sdsGYOGYKlt.Refresh;
    except
      on E:Exception do begin
        dtmTarka.cnTarka.RollbackTrans;
        Log('sdsGYOGYKlt : Rollback  :');
        Log(E.Message);
        Exit;
      end;
    end;

    SetEditors(False);
  end else begin
    ModalResult := mrOK;
  end;

  inherited;
end;



function TfrmGyogyKlt.Mezok_kitoltve: Boolean;
begin
  result := false;
  if edtGyogyszerKod.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az gyógyszerkód megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtGyogyszerKod.SetFocus;
    exit;
  end;
  if edtDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A bevételezés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtDatum.SetFocus;
    exit;
  end;
  if cbMe.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A mennyiségi egység megadása kötelezõ!', mtWarning, [mbOK], 0);
    cbMe.SetFocus;
    exit;
  end;
  if edtBeszMenny.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A bevételezett mennyiség megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtBeszMenny.SetFocus;
    exit;
  end;
  if edtAktKeszl.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az aktuális készlet megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtAktKeszl.SetFocus;
    exit;
  end;

  Result := true;

end;

procedure TfrmGyogyKlt.SetEditors(Enable: boolean);
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

end;


procedure TfrmGyogyKlt.btnUjClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
  sdsGYOGYKlt.Append;
  SetEditors(True);
  if edtGyogyszerKod.CanFocus then edtGyogyszerKod.SetFocus;
end;

procedure TfrmGyogyKlt.btnModositClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if edtFelh.Value > 0 then begin
    ShowMessage('Már van felhasználás, nem módosítható!');
    exit;
  end;
  inherited;
  sdsGYOGYKlt.Edit;
  SetEditors(True);
  edtGyogyszerKod.Enabled := false;
  edtDatum.Enabled := false;
  if edtBeszMenny.CanFocus then edtBeszMenny.SetFocus;
end;



procedure TfrmGyogyKlt.actMegsemExecute(Sender: TObject);
begin
  inherited;
  if sdsGYOGYKlt.State in [dsEdit, dsInsert] then begin
    sdsGYOGYKlt.Cancel;
    SetEditors(False);
    exit;
  end else begin
    ModalResult := mrCancel;
  end;
  if mode <> 'BON' then
    ModalResult := mrCancel;
end;


procedure TfrmGyogyKlt.btnGyogyszerClick(Sender: TObject);
begin
  if GyogyszerKarb(True) then begin
    sdsGYOGYKltGYOGYSZER_KOD.Value := frmMedicine.Kod;
    sdsGYOGYKltNEV.Value := frmMedicine.Nev;
    sdsGYOGYKltHATOANYAG.Value := frmMedicine.Nev;
    Self.edtDatum.SetFocus;
  end;
end;


procedure TfrmGyogyKlt.edtGyogyszerKodExit(Sender: TObject);
var
  Nev : string;
  tej, hus :integer;
  Hatoanyag,Forgalmazo : string;
begin
  inherited;
  tej := 0;
  hus := 0;
  Nev := '';
  Forgalmazo := '';
  Hatoanyag := '';
  if edtGyogyszerKod.Text <> '' then
  begin
    if dtmTarka.GyogyszerAdat(edtGyogyszerKod.Text, Tej, Hus,
         Nev, Hatoanyag, Forgalmazo) then
    begin
      sdsGYOGYKltNEV.AsString := Nev;
      sdsGYOGYKltVARAKOZAS_TEJ.AsInteger := Tej;
      sdsGYOGYKltVARAKOZAS_HUS.AsInteger := Hus;
      sdsGYOGYKltHATOANYAG.AsString := Hatoanyag;
      sdsGYOGYKltFORGALMAZO_NEV.AsString := Forgalmazo;
    end
    else
    begin
      ShowMessage('Nincs ilyen gyógyszer azonosító!');
      edtGyogyszerKod.SetFocus;
    end;
  end;
end;

procedure TfrmGyogyKlt.edtBeszMennyExit(Sender: TObject);
begin
  inherited;
  if (edtFelh.Value = 0) or (edtFelh.Value = NULL) then
  begin
    edtAktKeszl.Value := edtBeszMenny.Value;
  end;
end;

procedure TfrmGyogyKlt.FormShow(Sender: TObject);
begin
  if mode = 'BON' then
    if btnUj.CanFocus then btnUj.SetFocus
  else
    if TalSearch1.CanFocus then TalSearch1.SetFocus;
end;

procedure TfrmGyogyKlt.grdValKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if mode = 'VAL' then begin
    if Key = 13	then
      ModalResult := mrOK;
    if Key = 27 then
      Modalresult := mrCancel;
  end;
end;

procedure TfrmGyogyKlt.TalSearch1KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmGyogyKlt.grdValDblClick(Sender: TObject);
begin
  inherited;
  actOKExecute(Nil);
end;

procedure TfrmGyogyKlt.FormActivate(Sender: TObject);
begin
  inherited;
  grdVal.SortField := 'NEV';
  grdVal.SortShow := true;
  grdVal.DataSource.DataSet.First;
end;

procedure TfrmGyogyKlt.btnFelhClick(Sender: TObject);
begin
  inherited;
  Felh(sdsGYOGYKltID.AsString);
end;

procedure TfrmGyogyKlt.btnEgyebFelhClick(Sender: TObject);
begin
  inherited;
  GyEgyeb(sdsGYOGYKltID.AsString , sdsGYOGYKltGYOGYSZER_KOD.AsString,
        sdsGYOGYKltNEV.AsString, sdsGYOGYKltME.AsString);
  sdsGYOGYKlt.Refresh;
  sdsGYOGYKltAfterScroll(NIL);   
end;


procedure TfrmGyogyKlt.sdsGYOGYKltAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if sdsFelh.Active then sdsFelh.Close;
  if sdsGYOGYKltID.AsString <> EmptyStr then begin
    sdsFelh.DataSet.Parameters.ParamByName('ID').Value := sdsGYOGYKltID.AsString;
    sdsFelh.Open;
    edtFelh.Value := sdsFelhSUMFELH.AsFloat;
    edtEgyeb.Value := sdsFelhEGYEB.AsFloat;
  end else begin
    edtFelh.Value := 0;
    edtEgyeb.Value := 0;
  end;
end;


procedure TfrmGyogyKlt.btnTorolClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if sdsGYOGYKlt.RecordCount = 0 then exit;
  if dtmTarka.MsgDlg('Biztos törli a tételt?', mtConfirmation , [mbYes, mbNo],0) = mrYes then begin
    if (edtFelh.Value > 0) or (edtEgyeb.Value <> 0) then begin
      dtmTarka.MsgDlg('A tétel nem törölhetõ, mert már volt felhasználás!', mtConfirmation , [mbOk],0);
      exit;
    end else begin
      sdsGYOGYKlt.Delete;
      sdsGYOGYKlt.ApplyUpdates(0);
    end;
  end;
end;

end.
