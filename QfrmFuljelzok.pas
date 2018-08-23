unit QfrmFuljelzok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, frxClass, frxDBSet, ADODB,
  uTalQuery, DB, DBClient, uTALSimpleDataSet, uTALEdit, DBCtrls,StrUtils,
  uTALDBLookupComboBox, Mask, uValidedit, uDBValidedit, uTALDBEdit,
  uTALLabel, uTALMaskEdit;

type
  TfrmFuljelzo = class(TfrmModOs)
    sdsFuljelzok: TTalSimpleDataSet;
    dtsFulJelzok: TDataSource;
    qryLista: TTalQuery;
    frxDBLista: TfrxDBDataset;
    TalLabel8: TTalLabel;
    edtEnar: TTalDBEdit;
    TalLabel1: TTalLabel;
    lucRend: TTalDBLookupComboBox;
    TalLabel2: TTalLabel;
    edtRendDat: TTalDBEdit;
    TalLabel3: TTalLabel;
    edtBeerkDat: TTalDBEdit;
    TalLabel4: TTalLabel;
    edtKiadasDat: TTalDBEdit;
    TalLabel5: TTalLabel;
    TalLabel6: TTalLabel;
    edtHsz: TTalEdit;
    TalLabel7: TTalLabel;
    edtCrc: TTalEdit;
    pnlRogz: TTalPanel;
    qryRendKod: TTalQuery;
    dtsRendKod: TDataSource;
    sdsFuljelzokID: TBCDField;
    sdsFuljelzokBEVET_DATUM: TDateTimeField;
    sdsFuljelzokRENDELES_DATUM: TDateTimeField;
    sdsFuljelzokJELENTES_DATUM: TDateTimeField;
    sdsFuljelzokKIADAS_DATUM: TDateTimeField;
    sdsFuljelzokUTMOD_DAT: TDateTimeField;
    edtEnar5: TTalMaskEdit;
    btnOKUj: TBitBtn;
    lblDb: TTalLabel;
    pnlCsop: TTalPanel;
    TalLabel9: TTalLabel;
    TalLabel10: TTalLabel;
    TalLabel11: TTalLabel;
    edtHszTol: TTalEdit;
    edtHszIg: TTalEdit;
    edtEnar51: TTalMaskEdit;
    btnCsopRogz: TBitBtn;
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
    sdsFuljelzokFULJ_AZON: TWideStringField;
    sdsFuljelzokRENDELESI_KOD: TWideStringField;
    sdsFuljelzokUTMOD_KOD: TWideStringField;
    qryRendKodKOD: TWideStringField;
    qryRendKodKOD_NEV: TWideStringField;
    frxRepLista: TfrxReport;
    procedure btnUjClick(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure edtEnar5Exit(Sender: TObject);
    procedure edtHszExit(Sender: TObject);
    procedure edtHszKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actOKExecute(Sender: TObject);
    procedure edtBeerkDatExit(Sender: TObject);
    procedure btnOKUjClick(Sender: TObject);
    procedure sdsFuljelzokFULJ_AZONGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnTorolClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure btnCsopRogzClick(Sender: TObject);
    procedure edtEnar51Exit(Sender: TObject);
    procedure edtHszTolExit(Sender: TObject);
    procedure edtHszIgExit(Sender: TObject);
    procedure edtRendDatExit(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    EredetiSql : string;
    sEnar : string;
    En5 : string;
    BevDat : TDate;
    RendDat : TDate;
    RendKod : string;
    RendKodNev : string;
    db : integer;
    procedure KarbGombBeallit(mire:Boolean; csop:Boolean=false);
    function Mezok_kitoltve:Boolean;
    procedure CsoportosEnarGen;
  public
    { Public declarations }
    procedure OpenFuljelzoKlt;
  end;

var
  frmFuljelzo: TfrmFuljelzo;

implementation

uses udtmTarka;

{$R *.dfm}

{ TfrmFuljelzo }

procedure TfrmFuljelzo.KarbGombBeallit(mire: Boolean; csop:Boolean=false);
begin
  Self.btnUj.Enabled := mire;
  Self.btnModosit.Enabled := mire;
  Self.btnTorol.Visible := mire;
  Self.btnCsopRogz.Enabled := mire;

  if mire = false then
    Self.btnCancel.Caption := 'Mégsem'
  else
    Self.btnCancel.Caption := 'Kilépés';
  if csop=false then begin
    Self.pnlCsop.Visible := false;
    Self.btnOKUj.Visible := not mire;
    if mire = false then
      Self.pnlRogz.Visible := true
    else begin
      Self.pnlRogz.Visible := false;
      Self.pnlCsop.Visible := false;
    end;
  end else begin
    Self.btnOKUj.Visible := false;
    if mire = false then begin
      Self.pnlCsop.Visible := true;
      Self.pnlRogz.Visible := false;
    end else begin
      Self.pnlRogz.Visible := false;
      Self.pnlCsop.Visible := false;
    end;
  end;
end;


procedure TfrmFuljelzo.OpenFuljelzoKlt;
var
    likestr : string;
begin
  Self.EredetiSql := Self.sdsFuljelzok.DataSet.CommandText;
  Self.WindowState := wsNormal;
  Self.Position := poDesktopCenter ;
  KarbGombBeallit(true);
  Self.sEnar := '';
  Self.En5 := ''  ;
  Self.BevDat := 0;
  Self.RendDat := 0;
  Self.RendKod := '';
  Self.RendKodNev := '';
  Self.db := 0;
  Self.lblDb.Caption := 'Rögzített tétel: '+IntToStr(db);
  try
    if Self.sdsFuljelzok.Active then Self.sdsFuljelzok.Close;
    likestr := 'AND FF.FULJ_AZON LIKE ''' + dtmTarka.TenyeszetEKOD + '%''';
    Self.sdsFuljelzok.DataSet.CommandText := StringReplace(Self.EredetiSql,'/*LIKE*/',likestr,[rfReplaceAll]);
    Self.sdsFuljelzok.Open;
    Self.qryRendKod.Open;

    if dtmTarka.UserKarb = '0' then
    begin
      Self.btnUj.Enabled := false;
      Self.btnModosit.Enabled := false;
      Self.btnTorol.Enabled := false;
    end;
   if Self.ShowModal = mrOK then begin

   end;
   finally
     if self.sdsFuljelzok.Active then self.sdsFuljelzok.Close;
     if Self.qryRendKod.Active then Self.qryRendKod.Close;
     Self.sdsFuljelzok.DataSet.CommandText := Self.EredetiSql;
   end;
end;

procedure TfrmFuljelzo.btnUjClick(Sender: TObject);
var
  e5 : string;
begin
  if not dtmTarka.LicenceDatEll then exit;
  e5 := '';
  sdsFuljelzok.Append;
  if Self.BevDat > 0 then
    Self.sdsFuljelzokBEVET_DATUM.AsDateTime := Self.BevDat;
  if Self.sdsFuljelzokRENDELESI_KOD.AsString > EmptyStr then begin
    Self.sdsFuljelzokRENDELESI_KOD.AsString := Self.RendKod;
//    Self.sdsFuljelzokREND_NEV.AsString := Self.RendKodNev;
  end;
  if Self.RendDat > 0 then
    Self.sdsFuljelzokRENDELES_DATUM.AsDateTime := Self.RendDat;

  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  Self.edtEnar.Enabled := False;
  Self.pnlRogz.Visible := true;
  if Self.En5 <> EmptyStr then begin
    edtEnar5.Text := Self.En5;
    if edtHsz.CanFocus then edtHsz.SetFocus;
  end else begin
    if lucRend.Text = EmptyStr then begin
      if lucRend.CanFocus then lucRend.SetFocus;
      exit;
    end else if sdsFuljelzokRENDELES_DATUM.AsInteger = 0 then begin
      if edtRendDat.CanFocus then edtRendDat.SetFocus;
      exit;
    end else if sdsFuljelzokBEVET_DATUM.AsInteger = 0 then begin
      if edtBeerkDat.CanFocus then edtBeerkDat.SetFocus;
      exit;
    end else
      if edtHsz.CanFocus then edtHsz.SetFocus;
  end;
end;

procedure TfrmFuljelzo.actMegsemExecute(Sender: TObject);
begin
  if sdsFuljelzok.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsFuljelzok.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;



procedure TfrmFuljelzo.edtEnar5Exit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if Length(trim(edtEnar5.Text))<> 5 then begin
    dtmTarka.MsgDlg('Hibás ENAR szám! 5 hosszúnak kell lennie!',mterror,[mbOK],0 );
    edtEnar5.SelectAll;
    edtEnar5.SetFocus;
    exit;
  end;
  if edtHsz.CanFocus then edtHsz.SetFocus;
end;


procedure TfrmFuljelzo.edtHszExit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if ActiveControl.Name = 'edtEnar5' then Exit;

  if Length(trim(edtHsz.Text))<> 4 then begin
    dtmTarka.MsgDlg('Hibás használati szám! 4 hosszúnak kell lennie!',mterror,[mbOK],0 );
    edtHsz.SelectAll;
    edtHsz.SetFocus;
    exit;
  end;
  edtCrc.Text := dtmTarka.EnarCdvGen(trim(edtEnar5.Text) + trim(edtHsz.Text));
  if dtmTarka.VaneEgyed(edtEnar5.Text+edtHsz.Text+edtCrc.Text) then begin
    if sdsFuljelzokRENDELESI_KOD.AsString <>'2' then begin
      dtmTarka.MsgDlg('Már van ilyen azonosítójú egyed!',mterror,[mbOK],0 );
      edtHsz.SelectAll;
      edtHsz.SetFocus;
      exit;
    end;
  end;
  if dtmTarka.VaneFuljelzo(edtEnar5.Text+edtHsz.Text+edtCrc.Text) then begin
    dtmTarka.MsgDlg('Már van ilyen füljelzõ!',mterror,[mbOK],0 );
    edtHsz.SelectAll;
    edtHsz.SetFocus;
    exit;
  end;
  btnOKUj.SetFocus;
end;



procedure TfrmFuljelzo.edtHszKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Length(edtHsz.Text)=4 then
    btnOKUj.SetFocus;
end;

procedure TfrmFuljelzo.actOKExecute(Sender: TObject);
begin
  if sdsFuljelzok.State = dsBrowse then begin
//    ModalResult := mrOK;
    exit;
  end;
  if not Mezok_kitoltve then exit;

  Self.RendDat := Self.sdsFuljelzokRENDELES_DATUM.AsDateTime ;
  Self.RendKod := Self.sdsFuljelzokRENDELESI_KOD.AsString;
//  Self.RendKodNev := Self.sdsFuljelzokREND_NEV.AsString;
  Self.BevDat := Self.sdsFuljelzokBEVET_DATUM.AsDateTime ;
  Self.En5 := edtEnar5.Text;

  if pnlCsop.Visible = false then begin
    if pnlRogz.Visible then begin
      if sdsFuljelzok.State = dsInsert then begin
        db := db+1;
      end;
      if Self.edtEnar5.Visible then
        Self.En5 := edtEnar5.Text
      else begin
        if edtEnar.Text <> EmptyStr then begin
          Self.En5 := midstr(edtEnar.Text,3,5);
        end;
      end;
      sdsFuljelzokFULJ_AZON.AsString := edtEnar5.Text+edtHsz.Text+edtCrc.Text;
    end;

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
  end else begin
    CsoportosEnarGen;
  end;
  Self.lblDb.Caption := 'Rögzített tétel: '+ IntToStr(Db);
  Self.grdVal.Enabled := true;
  Self.grdVal.DataSource.DataSet.Refresh;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;


function TfrmFuljelzo.Mezok_kitoltve: Boolean;
begin
  result := false;
  if edtBeerkDat.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A beérkezés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtBeerkDat.SetFocus;
    exit;
  end;

  if pnlRogz.Enabled and pnlRogz.Visible then
    if edtEnar5.Text = EmptyStr then begin
      dtmTarka.MsgDlg('Az ENAR szám elejének megadása megadása kötelezõ!', mtWarning, [mbOK], 0);
      edtEnar5.SetFocus;
      exit;
    end;
  if pnlRogz.Enabled and pnlRogz.Visible then
    if edtHsz.Text = EmptyStr then begin
      dtmTarka.MsgDlg('A használati szám megadása kötelezõ!', mtWarning, [mbOK], 0);
      edtHsz.SetFocus;
      exit;
    end;
  if pnlCsop.Enabled and pnlCsop.Visible then
    if edtEnar51.Text = EmptyStr then begin
      dtmTarka.MsgDlg('Az ENAR szám elejének megadása megadása kötelezõ!', mtWarning, [mbOK], 0);
      edtEnar51.SetFocus;
      exit;
    end;
  if pnlCsop.Enabled and pnlCsop.Visible then
    if edtHszTol.Text = EmptyStr then begin
      dtmTarka.MsgDlg('A használati szám tartomány elejének megadása kötelezõ!', mtWarning, [mbOK], 0);
      edtHszTol.SetFocus;
      exit;
    end;
  if pnlCsop.Enabled and pnlCsop.Visible then
    if edtHszIg.Text = EmptyStr then begin
      dtmTarka.MsgDlg('A használati szám tartomány végének megadása kötelezõ!', mtWarning, [mbOK], 0);
      edtHszIg.SetFocus;
      exit;
    end;
  if edtRendDat.Text <> '    .  .  ' then  begin
    if StrToDate(edtBeerkDat.Text) < strToDate(edtRendDat.Text) then begin
      dtmTarka.MsgDlg('A beérkezés dátuma nem lehet korábbi a rendelés dátumánál!', mtWarning, [mbOK], 0);
      edtBeerkDat.SelectAll;
      edtBeerkDat.SetFocus;
      exit;
    end;
  end;
  Result := true;
end;


procedure TfrmFuljelzo.edtBeerkDatExit(Sender: TObject);
begin
  inherited;
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if StrToDate(edtBeerkDat.Text)  > Date then begin
    dtmTarka.MsgDlg('Hibás dátum, nagyobb mint a mai nap!', mtWarning, [mbOK], 0);
    edtBeerkDat.SelectAll;
    edtBeerkDat.SetFocus;
    exit;
  end;
  if StrToDate(edtBeerkDat.Text) < strToDate(edtRendDat.Text)   then begin
    dtmTarka.MsgDlg('A beérkezés dátuma nem lehet korábbi a rendelés dátumánál!', mtWarning, [mbOK], 0);
    edtBeerkDat.SelectAll;
    edtBeerkDat.SetFocus;
    exit;    
  end;

  if edtEnar5.Text = EmptyStr then begin
    if edtEnar5.CanFocus then edtEnar5.SetFocus;
  end else begin
    if edtHsz.CanFocus then edtHsz.SetFocus;
  end;
end;


procedure TfrmFuljelzo.btnOKUjClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if not Mezok_kitoltve then exit;
  // OK
  RendDat := Self.sdsFuljelzokRENDELES_DATUM.AsDateTime ;
  RendKod := Self.sdsFuljelzokRENDELESI_KOD.AsString;
//  RendKodNev := Self.sdsFuljelzokREND_NEV.AsString;
  BevDat := Self.sdsFuljelzokBEVET_DATUM.AsDateTime ;
  En5 := edtEnar5.Text;

  sdsFuljelzokFULJ_AZON.AsString := edtEnar5.Text+edtHsz.Text+edtCrc.Text;
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
  db := db+1;
  Self.lblDb.Caption := 'Rögzített tétel: '+ IntToStr(Db);
  // UJ
  sdsFuljelzok.Append;
  if Self.BevDat > 0 then
    Self.sdsFuljelzokBEVET_DATUM.AsDateTime := BevDat;
  Self.sdsFuljelzokRENDELESI_KOD.AsString := RendKod;
//  Self.sdsFuljelzokREND_NEV.AsString := RendKodNev;
  if Self.RendDat > 0 then
    Self.sdsFuljelzokRENDELES_DATUM.AsDateTime := RendDat;
  if Self.BevDat > 0 then
    Self.sdsFuljelzokBEVET_DATUM.AsDateTime := BevDat;

  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  Self.edtEnar.Enabled := False;
  Self.pnlRogz.Visible := true;
  if Self.En5 <> EmptyStr then begin
    edtEnar5.Text := Self.En5;
    edtHsz.Text := RightStr('0000' + intTostr(StrToInt(edtHsz.Text)+1),4);
    edtHsz.SelectAll;
    if edtHsz.CanFocus then edtHsz.SetFocus;
  end;

end;

procedure TfrmFuljelzo.sdsFuljelzokFULJ_AZONGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
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

procedure TfrmFuljelzo.btnTorolClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if sdsFuljelzok.RecordCount = 0 then exit;
  if not ((sdsFuljelzokKIADAS_DATUM.AsString = EmptyStr) or
       (sdsFuljelzokKIADAS_DATUM.AsString = '    .  .  ')) then begin
      dtmTarka.MsgDlg('A ENAR számot már használják, nem törölhetõ!', mtWarning, [mbOK], 0);
      exit;
  end;
  if dtmTarka.MsgDlg('Biztos törli a tételt?', mtConfirmation , [mbYes, mbNo],0) = mrYes then begin
//    sdsFuljelzok.Edit;
    sdsFuljelzok.Delete;
//    dtmTarka.cnTarka.BeginTrans;
    try
      sdsFuljelzok.ApplyUpdates(0);
//      dtmTarka.cnTarka.CommitTrans;
    except
//     if dtmTarka.cnTarka.InTransaction then
//        dtmTarka.cnTarka.RollbackTrans;
    end;
    sdsFuljelzok.Close;
    sdsFuljelzok.Open;
  end;
  inherited;
end;

procedure TfrmFuljelzo.btnModositClick(Sender: TObject);
begin
  if sdsFuljelzok.RecordCount = 0 then exit;
  inherited;
  sdsFuljelzok.Edit;

  Self.btnUj.Enabled := false;
  Self.btnModosit.Enabled := false;
  Self.btnTorol.Visible := false;
  Self.btnCancel.Caption := 'Mégsem';

  if lucRend.CanFocus then lucRend.SetFocus;
end;



procedure TfrmFuljelzo.btnCsopRogzClick(Sender: TObject);
var
  e5 : string;
begin
  if not dtmTarka.LicenceDatEll then exit;
  e5 := '';
  sdsFuljelzok.Append;
  if Self.BevDat > 0 then
    Self.sdsFuljelzokBEVET_DATUM.AsDateTime := Self.BevDat;
  if Self.sdsFuljelzokRENDELESI_KOD.AsString > EmptyStr then begin
    Self.sdsFuljelzokRENDELESI_KOD.AsString := Self.RendKod;
//    Self.sdsFuljelzokREND_NEV.AsString := Self.RendKodNev;
  end;
  if Self.RendDat > strToDate('2000.01.01') then
    Self.sdsFuljelzokRENDELES_DATUM.AsDateTime := Self.RendDat;

  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false,true);
  Self.edtEnar.Enabled := False;
  if Self.En5 <> EmptyStr then begin
    edtEnar51.Text := Self.En5;
    if edtHszTol.CanFocus then edtHszTol.SetFocus;
  end else begin
    if lucRend.Text = EmptyStr then begin
      if lucRend.CanFocus then lucRend.SetFocus;
      exit;
    end else if sdsFuljelzokRENDELES_DATUM.AsInteger = 0 then begin
      if edtRendDat.CanFocus then edtRendDat.SetFocus;
      exit;
    end else if sdsFuljelzokBEVET_DATUM.AsInteger = 0 then begin
      if edtBeerkDat.CanFocus then edtBeerkDat.SetFocus;
      exit;
    end else
      if edtHszTol.CanFocus then edtHszTol.SetFocus;
  end;
end;



procedure TfrmFuljelzo.edtEnar51Exit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if Length(trim(edtEnar51.Text))<> 5 then begin
    dtmTarka.MsgDlg('Hibás ENAR szám! 5 hosszúnak kell lennie!',mterror,[mbOK],0 );
    edtEnar51.SelectAll;
    edtEnar51.SetFocus;
    exit;
  end;
  if edtHszTol.CanFocus then edtHszTol.SetFocus;
  
end;



procedure TfrmFuljelzo.edtHszTolExit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if Length(trim(edtHszTol.Text))<> 4 then begin
    dtmTarka.MsgDlg('Hibás használati szám! 4 hosszúnak kell lennie!',mterror,[mbOK],0 );
    edtHszTol.SelectAll;
    edtHszTol.SetFocus;
    exit;
  end;
  edtHszIg.SetFocus;
end;



procedure TfrmFuljelzo.edtHszIgExit(Sender: TObject);
begin
  if Length(trim(edtHszIg.Text))<> 4 then begin
    dtmTarka.MsgDlg('Hibás használati szám! 4 hosszúnak kell lennie!',mterror,[mbOK],0 );
    edtHszIg.SelectAll;
    edtHszIg.SetFocus;
    exit;
  end;
  if strToInt(edtHszTol.Text) > strtoint(edtHszIg.Text) then begin
    dtmTarka.MsgDlg('Hibás a megadott tartomány! ',mterror,[mbOK],0 );
    edtHszIg.SelectAll;
    edtHszIg.SetFocus;
    exit;
  end;
  btnOK.SetFocus;
end;

procedure TfrmFuljelzo.edtRendDatExit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if StrToDate(edtRendDat.Text)  > Date then begin
    dtmTarka.MsgDlg('Hibás dátum!', mtWarning, [mbOK], 0);
    edtRendDat.SelectAll;
    edtRendDat.SetFocus;
  end;
end;



procedure TfrmFuljelzo.CsoportosEnarGen;
var
  cdv : string;
  ujenar : string;
  ahsz : string;
  ok : Boolean;
begin
  Self.RendDat := Self.sdsFuljelzokRENDELES_DATUM.AsDateTime ;
  Self.RendKod := Self.sdsFuljelzokRENDELESI_KOD.AsString;
//  Self.RendKodNev := Self.sdsFuljelzokREND_NEV.AsString;
  Self.BevDat := Self.sdsFuljelzokBEVET_DATUM.AsDateTime ;
  Self.En5 := edtEnar51.Text;

  ahsz := edtHszTol.Text;
  while ahsz <= edtHszIg.Text do begin
    cdv := dtmTarka.EnarCdvGen(trim(edtEnar51.Text) + ahsz);
    ujEnar := edtEnar51.Text + ahsz + cdv;
    ok := dtmTarka.VaneEgyed(ujEnar) ;
    if ok = false then
      if dtmTarka.VaneFuljelzo(ujEnar) then ok := true;

    if OK = false then begin
      if sdsFuljelzok.State <> dsInsert then begin
        sdsFuljelzok.Append;
      end;
      if Self.RendDat > strToDate('2000.01.01') then
        Self.sdsFuljelzokRENDELES_DATUM.AsDateTime := Self.RendDat;
      Self.sdsFuljelzokRENDELESI_KOD.AsString := Self.RendKod;
 //     Self.sdsFuljelzokREND_NEV.AsString := Self.RendKodNev;
      Self.sdsFuljelzokBEVET_DATUM.AsDateTime := Self.BevDat ;
      sdsFuljelzokFULJ_AZON.AsString := UjEnar;
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
      db := db+1;
      Self.lblDb.Caption := 'Rögzített tétel: '+ IntToStr(Db);
    end;
    ahsz := rightstr('0000'+IntToStr(strToInt(ahsz)+1),4);
  end;
  if sdsFuljelzok.State = dsInsert then sdsFuljelzok.Cancel;

end;



procedure TfrmFuljelzo.btnNyomtatClick(Sender: TObject);
begin
  if frxRepLista.LoadFromFile('FuljelzoLista.fr3') then begin
     // paraméter átadás a lista fejhez
     frmFuljelzo.qryLista.SQL.Text := StringReplace( frmFuljelzo.qryLista.SQL.Text, ':TENYESZET', QuotedStr( dtmTarka.TenyeszetEKOD + '%'), [rfReplaceAll]);
     frmFuljelzo.qryLista.Open;
     try
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['ENAR_KOD']:=dtmTarka.TenyeszetTKOD;
       frxRepLista.Script.Variables['TENYESZET_NEV']:=dtmTarka.TenyeszetTNEV;
       frxRepLista.Script.Variables['AT_KFTKOD']:=dtmTarka.sATKFT_KOD;
       frxRepLista.ShowReport();
     finally
       frmFuljelzo.qryLista.Close;
     end;
  End;
end;

procedure TfrmFuljelzo.FormCreate(Sender: TObject);
begin
  inherited;
  sdsFuljelzok.Connection := dtmTarka.cnTarka;
  qryLista.Connection := dtmTarka.cnTarka;
  qryRendKod.Connection := dtmTarka.cnTarka;
end;

end.
