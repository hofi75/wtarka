unit QfrmKullem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, uValidedit, uDBValidedit,
  uTALDBEdit, DB, DBClient, uTALSimpleDataSet, Wwkeycb, uTALSearch, Mask,
  uTALMaskEdit, uTALLabel, uTalParams, DateUtils, frxClass, frxDBSet;

type
  TfrmKullem = class(TfrmModOs)
  lblFarmag: TTalLabel;
  lblFarHossz: TTalLabel;
  lblFarSzel: TTalLabel;
  lblTorzsHossz: TTalLabel;
  lblTorzsMely: TTalLabel;
  lblCombIzom: TTalLabel;
  lblLapIzom: TTalLabel;
  lblFarlejt: TTalLabel;
  lblHatlab: TTalLabel;
  lblCsud: TTalLabel;
  lblTogyMely: TTalLabel;
  lblBimbo: TTalLabel;
  lblTogy: TTalLabel;
  lblTipus: TTalLabel;
  lblIzom: TTalLabel;
  lblLabszer: TTalLabel;

    pnlKeres: TTalPanel;
    lblS2: TTalLabel;
    lblS1: TTalLabel;
    TalLabel18: TTalLabel;
    edtDatTol: TTalMaskEdit;
    btnLeker: TBitBtn;
    TalSearch1: TTalSearch;
    sdsKeres: TTalSimpleDataSet;
    dtsKeres: TDataSource;
    TalLabel1: TTalLabel;
    lblEnar: TTalLabel;
    lblBika: TTalLabel;
    edtEnar: TTalDBEdit;
    edtKplsz: TTalDBEdit;
    edtBirDat: TTalDBEdit;
    edtFarm: TTalDBEdit;
    edtTorzsHossz: TTalDBEdit;
    edtTorzsMely: TTalDBEdit;
    lblFsz: TTalLabel;
    edtFulszam: TTalDBEdit;
    lblTehsz: TTalLabel;
    edtTsz: TTalDBEdit;
    edtTeny: TTalDBEdit;
    lblNev: TTalLabel;
    edtNev: TTalDBEdit;
    frxDBDataset1: TfrxDBDataset;
    edtFarhossz: TTalDBEdit;
    edtFarszel: TTalDBEdit;
    edtCombIzom: TTalDBEdit;
    edtLapIzom: TTalDBEdit;
    edtFarLejt : TTalDBEdit;
    edtHatsoLab : TTalDBEdit;
    edtCsud: TTalDBEdit;
    edtIzom: TTalDBEdit;
    edtTogyMely: TTalDBEdit;
    edtBimbo: TTalDBEdit;
    edtTogy: TTalDBEdit;
    sdsKeresID: TBCDField;
    sdsKeresENAR: TWideStringField;
    sdsKeresFULSZAM: TWideStringField;
    sdsKeresTEHENSZAM: TWideStringField;
    sdsKeresKPLSZ: TWideStringField;
    sdsKeresBIRDAT: TDateTimeField;
    sdsKeresFARMAG: TIntegerField;
    sdsKeresFARHOSSZ: TIntegerField;
    sdsKeresFARSZEL: TIntegerField;
    sdsKeresTORZSHOSSZ: TIntegerField;
    sdsKeresTORZSMELY: TIntegerField;
    sdsKeresCOMBIZOM: TIntegerField;
    sdsKeresLAPIZOM: TIntegerField;
    sdsKeresFARLEJT: TIntegerField;
    sdsKeresHATSOLAB: TIntegerField;
    sdsKeresCSUD: TIntegerField;
    sdsKeresTOGYMELY: TIntegerField;
    sdsKeresBIMBO: TIntegerField;
    sdsKeresTIPUS: TIntegerField;
    sdsKeresIZOM: TIntegerField;
    sdsKeresLAB: TIntegerField;
    sdsKeresTOGY: TIntegerField;
    sdsKeresBIKANEV: TWideStringField;
    sdsKeresTENYESZET: TWideStringField;
    frxRepLista: TfrxReport;
    procedure btnLekerClick(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure edtEnarExit(Sender: TObject);
    procedure edtKplszExit(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    // procedure edtMellExit(Sender: TObject);
    procedure CalculateTipus(Sender: TObject);
    procedure CalculateIzom(Sender: TObject);
    procedure CalculateLabszerkezet(Sender: TObject);
    procedure CalculateTogy(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
    // procedure edtIzomExit(Sender: TObject);
    // procedure edtLabszExit(Sender: TObject);
  private
    { Private declarations }
    sSQL : string;
    rd : string;
    azonosito : string;
    procedure KarbGombBeallit(mire:Boolean);
    function Mezok_kitoltve:Boolean;

  public
    { Public declarations }
  end;

var
  frmKullem: TfrmKullem;

procedure OpenKullem(azon:string);
procedure BikaKullemBrow;
procedure KullemBrow;
procedure OpenBikaKullem(azon:string);


implementation

uses udtmTarka;

{$R *.dfm}

procedure KullemBrow;
const
  KullemSql = 'SELECT KULLEM.ID, KULLEM.ENAR, E.FULSZAM, E.TEHENSZAM, E.TENYESZET, ' +
        ' KULLEM.KPLSZ, BIRDAT, FARMAG, FARHOSSZ, FARSZEL, TORZSHOSSZ, ' +
        ' TORZSMELY, COMBIZOM, LAPIZOM, FARLEJT, HATSOLAB, ' +
        ' CSUD, TOGYMELY, BIMBO, KULLEM.TIPUS, IZOM, KULLEM.LAB, ' +
        ' KULLEM.TOGY, APA.NEV AS BIKANEV ' +
        ' FROM KULLEM ' +
        ' LEFT JOIN EGYEDEK E ON E.ENAR = KULLEM.ENAR ' +
        ' LEFT JOIN APA ON APA.KPLSZ = KULLEM.KPLSZ ' +
        ' WHERE ((KULLEM.KPLSZ = '''') or (KULLEM.KPLSZ IS NULL)) ';
begin
  frmKullem := TfrmKullem.Create(Application);
  try
    With frmKullem do begin
      lblBika.Visible := false;
      edtKplsz.Visible := false;
      edtEnar.Visible := true;
      lblEnar.Visible := true;
      lblFsz.Visible := true;
      lblTehsz.Visible := true;
      edtFulszam.Visible := true;
      edtTsz.Visible := true;
      edtNev.Visible := false;
      lblNev.Visible := false;
      pnlKeres.Visible := true;

      sdsKeres.Connection := dtmTarka.cnTarka;
      if sdsKeres.Active then sdsKeres.Close;
      sSql := KullemSql;
      sdsKeres.DataSet.CommandText := sSQL + dtmTarka.TenyeszetWhereE;
      sdsKeresENAR.Visible := True;
      sdsKeresFULSZAM.Visible := True;
      sdsKeresTEHENSZAM.Visible := True;
      sdsKeresKPLSZ.Visible := false;
      sdsKeres.Open;
      WindowState := wsNormal;
      Position := poDesigned ;
      Caption := 'Egyedek küllembírálati adatai';
      btnCancel.Caption := 'Kilépés';
    end;
    if dtmTarka.UserKarb = '0' then
    begin
      frmKullem.btnUj.Enabled := false;
      frmKullem.btnModosit.Enabled := false;
      frmKullem.btnTorol.Enabled := false;
    end;
    frmKullem.ShowModal;
  finally
    frmKullem.sdsKeres.Close;
    frmKullem := TfrmKullem.Create(Application);
  end;
end;



procedure OpenKullem(azon:string);
const
  KullemSql = 'SELECT KULLEM.ID, KULLEM.ENAR, E.FULSZAM, E.TEHENSZAM, E.TENYESZET, ' +
        ' KULLEM.KPLSZ, BIRDAT, FARMAG, FARHOSSZ, FARSZEL, TORZSHOSSZ, ' +
        ' TORZSMELY, COMBIZOM, LAPIZOM, FARLEJT, HATSOLAB, ' +
        ' CSUD, TOGYMELY, BIMBO, KULLEM.TIPUS, IZOM, KULLEM.LAB, ' +
        ' KULLEM.TOGY, APA.NEV AS BIKANEV ' +
        ' FROM KULLEM ' +
        ' LEFT JOIN EGYEDEK E ON E.ID = KULLEM.ENAR ' +
        ' LEFT JOIN APA ON APA.KPLSZ = KULLEM.KPLSZ ' +
        ' WHERE ((KULLEM.KPLSZ = '''') or (KULLEM.KPLSZ IS NULL)) ';
  (*
  KullemSql = 'SELECT KULLEM.ID, KULLEM.ENAR, E.FULSZAM, E.TEHENSZAM,  E.TENYESZET,' +
              ' KPLSZ, BIRDAT, FARMAG, MED, FARSZEL, MELL, FARLEJT, HATLAB, ' +
              ' CSANK, CSUD, PARTA, RAMA, IZOM, LAB, FARHOSSZ, IZOME, LAPOC, ' +
              ' IZOMS, OSSZP, APA.NEV AS BIKANEV ' +
              ' FROM KULLEM ' +
              ' LEFT JOIN EGYEDEK E ON E.ENAR = KULLEM.ENAR ' +
              ' LEFT JOIN APA ON APA.KPLSZ = KULLEM.KPLSZ' +
              ' WHERE ((KULLEM.KPLSZ = '''') or (KULLEM.KPLSZ IS NULL)) ';
    *)
begin
  frmKullem := TfrmKullem.Create(Application);
  try
    With frmKullem do begin
      azonosito := azon;
      lblBika.Visible := false;
      edtKplsz.Visible := false;
      edtEnar.Visible := true;
      lblEnar.Visible := true;
      lblFsz.Visible := true;
      lblTehsz.Visible := true;
      edtFulszam.Visible := true;
      edtTsz.Visible := true;
      edtNev.Visible := false;
      lblNev.Visible := false;
      pnlKeres.Visible := false;

      if dtmTarka.UserKarb = '0' then
      begin
        frmKullem.btnTorol.Enabled := false;
        frmKullem.btnModosit.Enabled := false;
        frmKullem.btnUj.Enabled := false;
      end;

      sdsKeres.Connection := dtmTarka.cnTarka;
      sSql := KullemSql;
      sdsKeres.DataSet.CommandText := sSQL +  ' and E.ENAR =' + quotedstr(azonosito);

      sdsKeresENAR.Visible := True;
      sdsKeresFULSZAM.Visible := True;
      sdsKeresTEHENSZAM.Visible := True;
      sdsKeresKPLSZ.Visible := false;

      sdsKeres.Open;
      WindowState := wsNormal;
      Position := poDesigned ;
      Caption := Azonosito +  'Egyedek küllembírálati adatai';
      btnCancel.Caption := 'Kilépés';
    end;
    frmKullem.ShowModal;
  finally
    frmKullem.sdsKeres.Close;
    FreeAndNil(frmKullem);
  end;
end;


procedure BikaKullemBrow;
const
  KullemSql = 'SELECT KULLEM.ID, KULLEM.ENAR, E.FULSZAM, E.TEHENSZAM, E.TENYESZET, ' +
              ' KULLEM.KPLSZ, BIRDAT, FARMAG, FARHOSSZ, FARSZEL, TORZSHOSSZ, ' +
              ' TORZSMELY, COMBIZOM, LAPIZOM, FARLEJT, HATSOLAB, ' +
              ' CSUD, TOGYMELY, BIMBO, KULLEM.TIPUS, IZOM, KULLEM.LAB, ' +
              ' KULLEM.TOGY, APA.NEV AS BIKANEV ' +
              ' FROM KULLEM ' +
              ' LEFT JOIN EGYEDEK E ON E.ENAR = KULLEM.ENAR ' +
              ' LEFT JOIN APA ON APA.KPLSZ = KULLEM.KPLSZ' +
              ' WHERE KULLEM.KPLSZ is not null';
begin
  frmKullem := TfrmKullem.Create(Application);
  try
    With frmKullem do begin
      lblBika.Visible := true;
      edtKplsz.Visible := true;
      edtEnar.Visible := false;
      lblEnar.Visible := false;
      lblFsz.Visible := false;
      lblTehsz.Visible := false;
      edtFulszam.Visible := false;
      edtTsz.Visible := false;
      edtNev.Visible := true;
      lblNev.Visible := true;
      pnlKeres.Visible := true;

      sdsKeres.Connection := dtmTarka.cnTarka;
      sSql := KullemSql;
      sdsKeres.DataSet.CommandText := sSQL + dtmTarka.TenyeszetWhereE;
      sdsKeresENAR.Visible := false;
      sdsKeresFULSZAM.Visible := false;
      sdsKeresTEHENSZAM.Visible := false;
      sdsKeresKPLSZ.Visible := true;

      edtFarm.Enabled := false;
      edtFarHossz.Enabled := false;
      edtFarSzel.Enabled := false;
      edtTorzsHossz.Enabled := false;
      edtTorzsMely.Enabled := false;
      edtCombIzom.Enabled := false;
      edtLapIzom.Enabled := false;
      edtFarlejt.Enabled := false;
      edtHatsolab.Enabled := false;
      edtCsud.Enabled := false;
      edtTogyMely.Enabled := false;
      edtBimbo.Enabled := false;
      edtTogy.Enabled := false;

      edtFarm.Visible := false;
      edtFarHossz.Visible := false;
      edtFarSzel.Visible := false;
      edtTorzsHossz.Visible := false;
      edtTorzsMely.Visible := false;
      edtCombIzom.Visible := false;
      edtLapIzom.Visible := false;
      edtFarlejt.Visible := false;
      edtHatsolab.Visible := false;
      edtCsud.Visible := false;
      edtTogyMely.Visible := false;
      edtBimbo.Visible := false;
      edtTogy.Visible := false;
      lblFarmag.Visible := false;
      lblFarHossz.Visible := false;
      lblFarSzel.Visible := false;
      lblTorzsHossz.Visible := false;
      lblTorzsMely.Visible := false;
      lblCombIzom.Visible := false;
      lblLapIzom.Visible := false;
      lblFarlejt.Visible := false;
      lblHatlab.Visible := false;
      lblCsud.Visible := false;
      lblTogyMely.Visible := false;
      lblBimbo.Visible := false;
      lblTogy.Visible := false;

      lblTipus.Left := lblfarmag.Left;
      lblIzom.Left := lblfarmag.Left;
      lblLabszer.Left := lblfarmag.Left;

      sdsKeres.Open;

      WindowState := wsNormal;
      Position := poDesigned ;
      Caption := 'Bikák küllembírálati adatai';
      btnCancel.Caption := 'Kilépés';
    end;
    if dtmTarka.UserKarb = '0' then
    begin
      frmKullem.btnUj.Enabled := false;
      frmKullem.btnModosit.Enabled := false;
      frmKullem.btnTorol.Enabled := false;
    end;
    frmKullem.ShowModal;
  finally
    frmKullem.sdsKeres.Close;
    FreeAndNil(frmKullem);
  end;
end;


procedure OpenBikaKullem(azon:string);
const
  KullemSql = 'SELECT KULLEM.ID, KULLEM.ENAR, E.FULSZAM, E.TEHENSZAM, E.TENYESZET, ' +
              ' KPLSZ, BIRDAT, FARMAG, MED, FARSZEL, MELL, FARLEJT, HATLAB, ' +
              ' CSANK, CSUD, PARTA, RAMA, IZOM, LAB, FARHOSSZ, IZOME, LAPOC, ' +
              ' IZOMS, OSSZP, APA.NEV AS BIKANEV ' +
              ' FROM KULLEM ' +
              ' LEFT JOIN EGYEDEK E ON E.ENAR = KULLEM.ENAR ' +
              ' LEFT JOIN APA ON APA.KPLSZ = KULLEM.KPLSZ' +
              ' WHERE KULLEM.KPLSZ > '''' ';
begin
  frmKullem := TfrmKullem.Create(Application);
  try
    With frmKullem do begin
      azonosito := azon;
      lblBika.Visible := true;
      edtKplsz.Visible := true;
      edtEnar.Visible := false;
      lblEnar.Visible := false;
      lblFsz.Visible := false;
      lblTehsz.Visible := false;
      edtFulszam.Visible := false;
      edtTsz.Visible := false;
      edtNev.Visible := true;
      lblNev.Visible := true;
      pnlKeres.Visible := true;

      sdsKeres.Connection := dtmTarka.cnTarka;
      sSql := KullemSql;
      sdsKeres.DataSet.CommandText := sSQL + ' and APA.KPLSZ =' + quotedstr(azonosito);
      sdsKeresENAR.Visible := false;
      sdsKeresFULSZAM.Visible := false;
      sdsKeresTEHENSZAM.Visible := false;
      sdsKeresKPLSZ.Visible := true;
      sdsKeres.Open;
      WindowState := wsNormal;
      Position := poDesigned ;
      Caption := Azonosito +  ' egyed küllembírálati adatai';
      btnCancel.Caption := 'Kilépés';
    end;
    frmKullem.ShowModal;
  finally
    frmKullem.sdsKeres.Close;
    FreeAndNil(frmKullem);
  end;
end;


procedure TfrmKullem.btnLekerClick(Sender: TObject);
begin
    if edtDatTol.Text = '    .  .  ' then exit;
    if sdsKeres.Active then
      sdsKeres.Close;

    sdsKeres.DataSet.CommandText := sSQL  + ' and birdat >=' + quotedstr(edtDatTol.Text) + dtmTarka.TenyeszetWhereE;
    sdsKeres.Open;
end;

procedure TfrmKullem.actMegsemExecute(Sender: TObject);
begin
  inherited;
  if sdsKeres.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsKeres.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

procedure TfrmKullem.KarbGombBeallit(mire: Boolean);
begin
  Self.btnUj.Enabled := mire;
  Self.btnModosit.Enabled := mire;
  Self.btnTorol.Enabled := mire;
  Self.btnNyomtat.Enabled := mire;
  Self.pnlKeres.Enabled := mire;
  if mire = false then
    Self.btnCancel.Caption := 'Mégsem'
  else
    Self.btnCancel.Caption := 'Kilépés';
  if mire then
    if Self.btnUj.CanFocus then Self.btnUj.SetFocus;
end;

function TfrmKullem.Mezok_kitoltve: Boolean;
begin
(*
  result := false;
  if (edtEnar.Text = EmptyStr) and (edtFulszam.Text = EmptyStr) and
    (edtTsz.Text = EmptyStr) and edtEnar.Visible then begin
    dtmTarka.MsgDlg('Az egyed azonosítójának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtEnar.SetFocus;
    exit;
  end;
  if (edtKplsz.Text = EmptyStr) and edtKplsz.Visible then begin
    dtmTarka.MsgDlg('A bika KPLSZ megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtKplsz.SetFocus;
    exit;
  end;
  if edtBirDat.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A bírálat dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtBirDat.SetFocus;
    exit;
  end;
  if edtFarm.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A farmagasság megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtFarm.SetFocus;
    exit;
  end;

  if edtFarm.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A farmagasság megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtFarm.SetFocus;
    exit;
  end;
  if edtFarhossz.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A farhossz megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtFarhossz.SetFocus;
    exit;
  end;
  if edtLejt.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A farlejtés megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtLejt.SetFocus;
    exit;
  end;
  if edtCsank.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A csánk állaga megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtCsank.SetFocus;
    exit;
  end;
  if edtParta.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A pártamagasság megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtParta.SetFocus;
    exit;
  end;
  if edtMed.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A medencehossz megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtMed.SetFocus;
    exit;
  end;
  if edtMell.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A mellkasmélység megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtMell.SetFocus;
    exit;
  end;
  if edtHatLab.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A hátulsó láb oldalnézet megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtHatLab.SetFocus;
    exit;
  end;
  if edtCsud.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A csüd megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtCsud.SetFocus;
    exit;
  end;
  if edtRama.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A ráma megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtRama.SetFocus;
    exit;
  end;
  if edtIzm.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az izmoltság megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtIzm.SetFocus;
    exit;
  end;
  if edtLabsz.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A lábszerkezet megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtLabsz.SetFocus;
    exit;
  end;
  *)
  Result := true;

end;

procedure TfrmKullem.btnUjClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if (sdsKeres.RecordCount>0) and (rd='') then begin
    rd := sdsKeresBIRDAT.AsString;
  end;
  sdsKeres.Append;
  if Self.azonosito > EmptyStr then begin
    if edtEnar.Visible then
      sdsKeresENAR.AsString := self.azonosito;
    if edtKplsz.Visible then
      sdsKeresKPLSZ.AsString := self.azonosito;
  end;
  if rd>EmptyStr then begin
    sdsKeresBIRDAT.AsString := rd;
  end;
  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  if edtEnar.Visible then
    if Self.azonosito=EmptyStr then begin
      Self.edtEnar.Enabled := true;
      if Self.edtEnar.CanFocus then Self.edtEnar.SetFocus;
    end else begin
      if edtBirDat.Text = '    .  .  ' then
        edtBirDat.Value := today();
      if edtBirDat.CanFocus then edtBirDat.SetFocus;
    end;
  if edtKplsz.Visible then
    if Self.azonosito=EmptyStr then begin
      Self.edtKplsz.Enabled := true;
      if Self.edtKplsz.CanFocus then Self.edtKplsz.SetFocus;
    end else begin
      if edtBirDat.Text = '    .  .  ' then
        edtBirDat.Value := today();
      if edtBirDat.CanFocus then edtBirDat.SetFocus;
    end;

end;

procedure TfrmKullem.btnModositClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if sdsKeres.RecordCount=0 then exit;
  sdsKeres.Edit;
  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  if edtEnar.Visible then
    Self.edtEnar.Enabled := false;
  if edtKplsz.Visible then
    edtKplsz.Enabled := false;  
  if edtBirDat.CanFocus then edtBirDat.SetFocus;
end;

procedure TfrmKullem.actOKExecute(Sender: TObject);
var
  ed : string;
  mode : string;
begin
  if sdsKeres.State = dsBrowse then begin
//    ModalResult := mrOK;
    exit;
  end;
  if not Mezok_kitoltve then exit;
  mode := 'MAS';
  if sdsKeres.State = dsInsert then begin
    mode := 'INSERT';
  end;
  if sdsKeres.State = dsEdit then begin
    mode := 'EDIT';
  end;
  rd := sdsKeresBIRDAT.AsString;

//  sdsTomegMOD_DAT.AsDateTime := now();
//  sdsTomegMOD_KOD.AsString := dtmTarka.UserKod;
  ed := sdsKeresBIRDAT.AsString;
  sdsKeres.Post;

  dtmTarka.cnTarka.BeginTrans;
  try
    sdsKeres.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;
  // sdsKeres.Refresh;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;



procedure TfrmKullem.edtEnarExit(Sender: TObject);
var
  sAzon : string;
  sAzonId : string;
  vissza : TTalParamList;
begin
  if edtEnar.Enabled and dtmTarka.megsemNyomas(ActiveControl) then exit;
  if edtEnar.Text > EmptyStr then begin
    sAzon := edtEnar.Text;
      if not dtmTarka.VaneIlyenEgyed(edtEnar.Text, sAzon,sAzonId,false) then begin
        sAzon := '';
        sAzonId := '';
        dtmTarka.MsgDlg('Nincs ilyen egyed, vagy az egyed már kikerült a tenyészetbõl!',mterror,[mbOK],0 );
        edtEnar.SelectAll;
        edtEnar.SetFocus;
      end else begin
        sdsKeresENAR.AsString:=sAzon;
        vissza := TTalParamList.Create;
        try
          dtmTarka.EgyedInfo(sAzonId,vissza);
          sdsKeresFULSZAM.AsString := vissza.itemsByName('FULSZAM').values[0];
          sdsKeresTEHENSZAM.AsString := vissza.itemsByName('TEHENSZAM').values[0];
          // dtmTarka.sdsTomegTENYESZET.AsString := vissza.itemsByName('TENYESZET').values[0];
        finally
          vissza.Free;
        end;
      end;
  end;
end;



procedure TfrmKullem.edtKplszExit(Sender: TObject);
var
  klsz, nev : string;
begin
  if edtKplsz.Enabled and dtmTarka.megsemNyomas(ActiveControl) then exit;
  if not dtmTarka.VaneBika(edtKplsz.Text,'') then begin
     dtmTarka.MsgDlg('Nincs ilyen azonosítójú bika!', mtWarning, [mbOK], 0);
     edtKplsz.SelectAll;
     edtKplsz.SetFocus;
     exit;
  end;
  klsz := edtKplsz.Text;
  if dtmTarka.BikaAdat(klsz,nev) then begin
     sdsKeresKPLSZ.AsString := klsz;
     sdsKeresBIKANEV.AsString := nev;
  end;
end;


procedure TfrmKullem.btnNyomtatClick(Sender: TObject);
var
  sazon : string;
  aa : string;
begin
  inherited;
  if frmKullem.Caption = 'Egyedek küllembírálati adatai' then begin
     aa := dtmTarka.sATKFT_KOD;
     if frxRepLista.LoadFromFile('KullemLista.fr3') then begin
       // paraméter átadás a lista fejhez
       sazon := sdsKeresID.AsString;
       sdsKeres.DisableControls;
       try
         frxRepLista.Variables.Clear;
         frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
         frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
         aa := dtmTarka.sATKFT_KOD;
         frxRepLista.Script.Variables['SzuroFeltetelek']:= edtDatTol.Text;
         frxRepLista.ShowReport();
       finally
         sdsKeres.Locate('ID',sazon,[]);
         sdsKeres.EnableControls;
       end;
     End;
  end;

  if frmKullem.Caption = 'Bikák küllembírálati adatai' then begin
     aa := dtmTarka.sATKFT_KOD;
     if frxRepLista.LoadFromFile('BKullemLista.fr3') then begin
       // paraméter átadás a lista fejhez
       sazon := sdsKeresID.AsString;
       sdsKeres.DisableControls;
       try
         frxRepLista.Variables.Clear;
         frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
         frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
         aa := dtmTarka.sATKFT_KOD;
         frxRepLista.Script.Variables['SzuroFeltetelek']:= edtDatTol.Text;
         frxRepLista.ShowReport();
       finally
         sdsKeres.Locate('ID',sazon,[]);
         sdsKeres.EnableControls;
       end;
     End;
  end;


end;
(*
procedure TfrmKullem.edtMellExit(Sender: TObject);
var
  rr : real;
begin
  inherited;
  if edtRama.Text = EmptyStr then begin
    rr := round(( 3 * sdsKeresFARMAG.AsInteger + sdsKeresFARSZEL.AsInteger + sdsKeresFARHOSSZ.AsInteger +
          StrToInt(edtMell.text)) / 6);
      // sdsKeresRAMA.AsFloat := rr;
  end else begin
    rr := round(( 3 * sdsKeresFARMAG.AsInteger + sdsKeresFARSZEL.AsInteger + sdsKeresFARHOSSZ.AsInteger +
          StrToInt(edtMell.text)) / 6);
      if sdsKeresRAMA.AsFloat <> rr then begin
        if dtmTarka.MsgDlg('A Ráma értéke megváltozott! Felülírja?', mtWarning, [mbYes, mbNo], 0) = mrYes then
          sdsKeresRAMA.AsFloat := rr;
      end;
  end;
end;
*)
procedure TfrmKullem.CalculateTipus(Sender: TObject);
var
  xx : real;
  rr : Integer;
begin
  inherited;
  xx := 40 * edtFarm.IntValue +
        15 * edtFarHossz.IntValue +
        15 * edtFarSzel.IntValue +
        15 * edtTorzsHossz.IntValue +
        15 * edtTorzsMely.IntValue;
  rr := round( xx / 100);
  sdsKeresTIPUS.AsInteger := rr;
end;

procedure TfrmKullem.CalculateIzom(Sender: TObject);
var
  xx : real;
  rr : Integer;
begin
  inherited;
  xx := 60 * edtCombIzom.IntValue +
        40 * edtLapIzom.IntValue;
  rr := round( xx / 100);
  sdsKeresIZOM.AsInteger := rr;
end;

procedure TfrmKullem.CalculateLabszerkezet(Sender: TObject);
var
  xx : real;
  rr : Integer;
begin
  inherited;
  xx := 3333 * edtFarLejt.IntValue +
        3333 * edtHatsoLab.IntValue +
        3334 * edtCsud.IntValue;
  rr := round( xx / 10000);
  sdsKeresLAB.AsInteger := rr;
end;

procedure TfrmKullem.CalculateTogy(Sender: TObject);
var
  xx : real;
  rr : Integer;
begin
  inherited;
  xx := 60 * edtTogyMely.IntValue +
        40 * edtBimbo.IntValue;
  rr := round( xx / 100);
  sdsKeresTOGY.AsInteger := rr;
end;

(*
procedure TfrmKullem.edtIzomExit(Sender: TObject);
var
  rr : real;
begin
  inherited;
  if edtIzm.Text = EmptyStr then begin
    rr := round((StrToInt(edtIzome.text) + StrToInt(edtIzom.text)) / 2);
      // sdsKeresIZOMS.AsFloat := rr;
  end else begin
    rr := round((StrToInt(edtIzome.text) + StrToInt(edtIzom.text)) / 2);
    (*
    if sdsKeresIZOMS.AsFloat <> rr then begin
        if dtmTarka.MsgDlg('Az Izmoltság értéke megváltozott! Felülírja?', mtWarning, [mbYes, mbNo], 0) = mrYes then
          sdsKeresIZOMS.AsFloat := rr;
    end;
  end;
end;

procedure TfrmKullem.edtLabszExit(Sender: TObject);
var
  rr : real;
begin
  inherited;
  //4 x ráma + 3 x izmoltság + 3 x lábszerkezet
  if edtOsszp.Text = EmptyStr then begin
    rr :=  round( 4 * StrToInt(edtRama.text) + 3 * StrToInt(edtIzm.text) + 3 * StrToInt(edtLabsz.text));
      //sdsKeresOSSZP.AsFloat := rr;
  end else begin
    rr :=  round( 4 * StrToInt(edtRama.text) + 3 * StrToInt(edtIzm.text) + 3 * StrToInt(edtLabsz.text));
    (*
    if sdsKeresOSSZP.AsFloat <> rr then begin
        if dtmTarka.MsgDlg('Az Összpontszám értéke megváltozott! Felülírja?', mtWarning, [mbYes, mbNo], 0) = mrYes then
          sdsKeresOSSZP.AsFloat := rr;
    end;
  end;
end;
*)

procedure TfrmKullem.btnTorolClick(Sender: TObject);
var
  sql : String;
begin
  inherited;

  dtmTarka.cnTarka.BeginTrans;
  try
    sql := 'delete from kullem where id = ''' + sdsKeresID.AsString + '''';
    dtmTarka.cnTarka.Execute(sql);
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

end.
