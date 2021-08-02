unit ufrmMain;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Menus, ComCtrls, ActnList, uTALBitBtn, uTALPanel,
  uTalParams, jpeg, uTALImage, XPMan, DateUtils, uTALControlBar, DBCtrls,
  uTALDBLookupComboBox, uTALSpeedButton, ToolWin, uTALComboBox,
  uTALProgressBar, Mask, uValidedit, uDBValidedit, uTALDBEdit, DB,
  DBClient, uTALSimpleDataSet, ADODB, uTALDataset;


const
  PSR_MESSAGE = WM_USER + 1112;

type
  TfrmMain = class(TForm)
    MainMenu: TMainMenu;
    HelpContentsItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    rzsadatok1: TMenuItem;
    Egyedek1: TMenuItem;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    Listk1: TMenuItem;
    Kilps1: TMenuItem;
    Bikkadatai1: TMenuItem;
    Kezelsekparamtereinekkarbantartsa1: TMenuItem;
    Gygyszerekkarbantartsa1: TMenuItem;
    Szervzfunkcik1: TMenuItem;
    Kdokkarbantartsa1: TMenuItem;
    Adatmentsek1: TMenuItem;
    Felhasznlkkarbantartsa1: TMenuItem;
    ActionList1: TActionList;
    ENARkontrollszmellenrzse1: TMenuItem;
    Vemhessginapkiszmts1: TMenuItem;
    L1: TMenuItem;
    Kdtipusok1: TMenuItem;
    Kdok1: TMenuItem;
    Inszemintorok1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Programparamterekbelltsa1: TMenuItem;
    Inszemintorokkarbantartsa1: TMenuItem;
    XPManifest1: TXPManifest;
    Gygyszerkszletek1: TMenuItem;
    N8: TMenuItem;
    Gygyszerkszletek2: TMenuItem;
    Gygyszerfelhasznlsoklistzsa1: TMenuItem;
    Irnytszmokkarbantartsa1: TMenuItem;
    TalControlBar1: TTalControlBar;
    Adatokkarbantartsa1: TMenuItem;
    actTomegKarb: TAction;
    megmrsiadatokkarbantartsa1: TMenuItem;
    actElles: TAction;
    Ellsekfelvitele1: TMenuItem;
    actEnarEll: TAction;
    actBikaKarb: TAction;
    actTermBrow: TAction;
    ermkenytsekrgztse1: TMenuItem;
    actVemhKarb: TAction;
    Vemhessgvizsglatrgztse1: TMenuItem;
    actKullem: TAction;
    Kllemadatokrgztse1: TMenuItem;
    actMigration: TAction;
    Induladatokbetltse1: TMenuItem;
    actParamKarb: TAction;
    actKihajtas: TAction;
    Kihajtsbehajtsrgztse1: TMenuItem;
    actMlev: TAction;
    OK1: TMenuItem;
    actKezelesek: TAction;
    Kezelsekrgztse1: TMenuItem;
    actUstv: TAction;
    STVrekerltborjakmegadsa1: TMenuItem;
    actITV: TAction;
    ITVrekerltborjakmegadsa1: TMenuItem;
    actKSTV: TAction;
    KSTVrekerltborjakmegadsa1: TMenuItem;
    actKieses: TAction;
    Kiessekkarbantartsa1: TMenuItem;
    actBikaKullem: TAction;
    Bikkkllembrlatiadatai1: TMenuItem;
    actValRogz: TAction;
    OK2: TMenuItem;
    actKonvNez: TAction;
    tolvasottadatokmegtekintse1: TMenuItem;
    N4: TMenuItem;
    Induladatokbetltse2: TMenuItem;
    actHibaNez: TAction;
    Hibsttelekmegtekintse1: TMenuItem;
    actTenyKarb: TAction;
    OK3: TMenuItem;
    actGyFelhLista: TAction;
    actEgyedLista: TAction;
    Listk2: TMenuItem;
    EgyedekListzsa1: TMenuItem;
    actTermLista: TAction;
    ermkenytseklistzsa1: TMenuItem;
    actEllesekLista: TAction;
    Ellseklistzsa1: TMenuItem;
    actHterm: TAction;
    Hremszertermkenytsek1: TMenuItem;
    actHtermLista: TAction;
    Hremszertermkenytseklistzsa1: TMenuItem;
    actVarhElles: TAction;
    Vrhatellsekgyorslista1: TMenuItem;
    actListaAnyaAdat: TAction;
    actEloTehenKullem: TAction;
    actKiesettLista: TAction;
    actTermekenyitesekLista: TAction;
    actEgyBikaTermekenyitesei: TAction;
    Anykadatai1: TMenuItem;
    ltehenekkllemipontszmai1: TMenuItem;
    Kiesettkikerlttehenek1: TMenuItem;
    ermkenytseklistzsa2: TMenuItem;
    Egybikatermkenytsei1: TMenuItem;
    actCommOut: TAction;
    actCommIn: TAction;
    Kommunikci1: TMenuItem;
    Kommunikcislevlogats1: TMenuItem;
    Kommunikcislevlogats2: TMenuItem;
    actVemhValLista: TAction;
    Listavemhessgivizsglatravlogatandegyedek1: TMenuItem;
    actNegyszerTermTehenLista: TAction;
    actNegyszerTermUszoLista: TAction;
    actUszoTermLista: TAction;
    actVemhesUszoLista: TAction;
    actTermAlattUszo: TAction;
    actTehenKarton: TAction;
    Legalbb4szertermkenytetttehenek1: TMenuItem;
    Legalbb4szertermkenytettszk1: TMenuItem;
    szktermkenytsei1: TMenuItem;
    Vemhesszklistzsa1: TMenuItem;
    ermkenytsalattlvszk1: TMenuItem;
    ehnkarton1: TMenuItem;
    actValadatLista: TAction;
    actNovUszoLista: TAction;
    Nvendksznyilvntart1: TMenuItem;
    Vlasztsiadatoklistja1: TMenuItem;
    ENARadatokkezelse1: TMenuItem;
    actFuljKlt: TAction;
    Fljelzknyilvntartsakszlet1: TMenuItem;
    actFuljRend: TAction;
    Fljelzrendelsek1: TMenuItem;
    actKullemCsv: TAction;
    Kllembeolvassacsvfjlbl1: TMenuItem;
    actMeresiAdatokLista: TAction;
    Mrsiadatoklistja1: TMenuItem;
    actSzarmIgLista: TAction;
    Szrmazsiigazolslistzsa1: TMenuItem;
    actTenyNaploLista: TAction;
    actUstvBika: TAction;
    enysztsinapl1: TMenuItem;
    STVrekerltborjakmegadsa2: TMenuItem;
    actSvSzamol: TAction;
    actKMISzamol: TAction;
    N5: TMenuItem;
    SVszzalkokszmolsa1: TMenuItem;
    AnykKMInekjraszmolsa1: TMenuItem;
    actMeresiAdatokUstvBika: TAction;
    actEnarLeltarLista: TAction;
    ENRleltrlista1: TMenuItem;
    actGN14_lista: TAction;
    GN14szerintikorcsoportstatisztika1: TMenuItem;
    actTParList: TAction;
    enysztsiadatokparamterezhetlistja1: TMenuItem;
    actUstvMin: TAction;
    STVminstlista1: TMenuItem;
    actBikaDbf: TAction;
    Kzpontibikatrzsbeolvassa1: TMenuItem;
    actZarasLista: TAction;
    veszrsilista1: TMenuItem;
    actElitLista: TAction;
    Elittrzsknyv1: TMenuItem;
    actBikNevLista: TAction;
    Bikaneveltehenektrzsknyve1: TMenuItem;
    actKimCsom: TAction;
    actBemCsom: TAction;
    N6: TMenuItem;
    Bejvcsomagokmegtekintse1: TMenuItem;
    Kimencsomagokmegtekintse1: TMenuItem;
    actSvSzamolMind: TAction;
    SVszzalkokjraszmolsa1: TMenuItem;
    actEnarBe: TAction;
    Enarbejelentsekkarbantartsa1: TMenuItem;
    actEnarGyujt: TAction;
    ENARadatoklegyjtsekldsre1: TMenuItem;
    actTermFelad: TAction;
    ermkenytsekfeladsa1: TMenuItem;
    Szrmazselemzs1: TMenuItem;
    actCsaladfaLista: TAction;
    Csaldfalistzsa1: TMenuItem;
    actSzarmEllCsop: TAction;
    Szrmazselemzscsoportos1: TMenuItem;
    actSzarmLista: TAction;
    Kimutatsazegyedekszrmazsiadatairl1: TMenuItem;
    NETPontRead: TMenuItem;
    actNETPontRead: TAction;
    sdsTenyeszet: TTalSimpleDataSet;
    dtsTenyeszet: TDataSource;
    TalImage1: TTalImage;
    cbTenyeszet: TTalDBLookupComboBox;
    sdsTenyeszetLISTA: TWideStringField;
    sdsTenyeszetTKOD: TWideStringField;
    sdsTenyeszetEKOD: TWideStringField;
    sdsTenyeszetRKOD: TWideStringField;
    sdsTenyeszetALLAPOT: TWideStringField;
    sdsTenyeszetTIPUS: TWideStringField;
    sdsTenyeszetBDAT: TDateTimeField;
    sdsTenyeszetIRSZ: TIntegerField;
    sdsTenyeszetVAROS: TWideStringField;
    sdsTenyeszetKTNEV: TWideStringField;
    sdsTenyeszetKTJELL: TWideStringField;
    sdsTenyeszetHSZ: TWideStringField;
    sdsTenyeszetTNEV1: TWideStringField;
    sdsTenyeszetTNEV2: TWideStringField;
    sdsTenyeszetTNEV3: TWideStringField;
    sdsTenyeszetTEL: TWideStringField;
    sdsTenyeszetEMAIL: TWideStringField;
    sdsTenyeszetFAX: TWideStringField;
    sdsTenyeszetTIRSZ: TWideStringField;
    sdsTenyeszetTVAROS: TWideStringField;
    sdsTenyeszetTKTNEV: TWideStringField;
    sdsTenyeszetTKTJELL: TWideStringField;
    sdsTenyeszetTHSZ: TWideStringField;
    sdsTenyeszetKKOD: TWideStringField;
    sdsTenyeszetTMEGYE: TWideStringField;
    sdsTenyeszetCHANGED: TDateTimeField;
    sdsTenyeszetROW_ID: TVarBytesField;
    Atorzskonyves1: TMenuItem;
    MIVerhanyadLista: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure HelpContents(Sender: TObject);
    procedure HelpSearch(Sender: TObject);
    procedure HelpHowToUse(Sender: TObject);
    procedure HelpAbout(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Kilps1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure JogosultsagBeallitas;
    procedure HelpContentsItemClick(Sender: TObject);
    procedure AfterShow(var aMsg : TMessage); message PSR_MESSAGE;
    procedure Gygyszerekkarbantartsa1Click(Sender: TObject);
    procedure Gygyszerkszletek1Click(Sender: TObject);
    procedure ENARkontrollszmellenrzse1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Kezelsekparamtereinekkarbantartsa1Click(Sender: TObject);
    procedure Kdokkarbantartsa1Click(Sender: TObject);
    procedure Inszemintorokkarbantartsa1Click(Sender: TObject);
    procedure Vemhessginapkiszmts1Click(Sender: TObject);
    procedure Irnytszmokkarbantartsa1Click(Sender: TObject);
    procedure Adatmentsek1Click(Sender: TObject);
    procedure Felhasznlkkarbantartsa1Click(Sender: TObject);
    procedure Kdtipusok1Click(Sender: TObject);
    procedure Kdok1Click(Sender: TObject);
    procedure Inszemintorok1Click(Sender: TObject);
    procedure Egyedek1Click(Sender: TObject);
    procedure dblcTenyeszet1CloseUp(Sender: TObject);
    procedure actTomegKarbExecute(Sender: TObject);
    procedure actEllesExecute(Sender: TObject);
    procedure actEnarEllExecute(Sender: TObject);
    procedure TalSpeedButton1Click(Sender: TObject);
    procedure actBikaKarbExecute(Sender: TObject);
    procedure actTermBrowExecute(Sender: TObject);
    procedure actVemhKarbExecute(Sender: TObject);
    procedure actKullemExecute(Sender: TObject);
    procedure actMigrationExecute(Sender: TObject);
    procedure actParamKarbExecute(Sender: TObject);
    procedure actKihajtasExecute(Sender: TObject);
    procedure actMlevExecute(Sender: TObject);
    procedure actKezelesekExecute(Sender: TObject);
    procedure actUstvExecute(Sender: TObject);
    procedure actITVExecute(Sender: TObject);
    procedure actKSTVExecute(Sender: TObject);
    procedure actKiesesExecute(Sender: TObject);
    procedure actBikaKullemExecute(Sender: TObject);
    procedure actValRogzExecute(Sender: TObject);
    procedure actKonvNezExecute(Sender: TObject);
    procedure actHibaNezExecute(Sender: TObject);
    procedure actTenyKarbExecute(Sender: TObject);
    procedure actGyFelhListaExecute(Sender: TObject);
    procedure actEgyedListaExecute(Sender: TObject);
    procedure actTermListaExecute(Sender: TObject);
    procedure actEllesekListaExecute(Sender: TObject);
    procedure actHtermExecute(Sender: TObject);
    procedure actHtermListaExecute(Sender: TObject);
    procedure actVarhEllesExecute(Sender: TObject);
    procedure actListaAnyaAdatExecute(Sender: TObject);
    procedure actEloTehenKullemExecute(Sender: TObject);
    procedure actKiesettListaExecute(Sender: TObject);
    procedure actTermekenyitesekListaExecute(Sender: TObject);
    procedure actEgyBikaTermekenyiteseiExecute(Sender: TObject);
    procedure actCommOutExecute(Sender: TObject);
    procedure actCommInExecute(Sender: TObject);
    procedure actVemhValListaExecute(Sender: TObject);
    procedure actNegyszerTermTehenListaExecute(Sender: TObject);
    procedure actNegyszerTermUszoListaExecute(Sender: TObject);
    procedure actUszoTermListaExecute(Sender: TObject);
    procedure actVemhesUszoListaExecute(Sender: TObject);
    procedure actTermAlattUszoExecute(Sender: TObject);
    procedure actTehenKartonExecute(Sender: TObject);
    procedure actValadatListaExecute(Sender: TObject);
    procedure actNovUszoListaExecute(Sender: TObject);
    procedure actFuljKltExecute(Sender: TObject);
    procedure actFuljRendExecute(Sender: TObject);
    procedure actKullemCsvExecute(Sender: TObject);
    procedure actMeresiAdatokListaExecute(Sender: TObject);
    procedure actSzarmIgListaExecute(Sender: TObject);
    procedure actTenyNaploListaExecute(Sender: TObject);
    procedure actUstvBikaExecute(Sender: TObject);
    procedure actSvSzamolExecute(Sender: TObject);
    procedure actKMISzamolExecute(Sender: TObject);
    procedure actMeresiAdatokUstvBikaExecute(Sender: TObject);
    procedure actEnarLeltarListaExecute(Sender: TObject);
    procedure actGN14_listaExecute(Sender: TObject);
    procedure actTParListExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actUstvMinExecute(Sender: TObject);
    procedure actBikaDbfExecute(Sender: TObject);
    procedure actZarasListaExecute(Sender: TObject);
    procedure actElitListaExecute(Sender: TObject);
    procedure actBikNevListaExecute(Sender: TObject);
    procedure actKimCsomExecute(Sender: TObject);
    procedure actBemCsomExecute(Sender: TObject);
    procedure actSvSzamolMindExecute(Sender: TObject);
    procedure actEnarBeExecute(Sender: TObject);
    procedure actEnarGyujtExecute(Sender: TObject);
    procedure actTermFeladExecute(Sender: TObject);
    procedure actCsaladfaListaExecute(Sender: TObject);
    procedure actSzarmEllCsopExecute(Sender: TObject);
    procedure actVerhanyadLista(Sender: TObject);
    procedure actSzarmListaExecute(Sender: TObject);
    procedure NETPontReadClick(Sender: TObject);
    procedure cbTenyeszetCloseUp(Sender: TObject);
    procedure Atorzskonyves1Click(Sender: TObject);
    // procedure VerhanyadListaClick(Sender: TObject);
  end;

var
  frmMain: TfrmMain;
  Feladat : string;


implementation

uses
  about, udtmTarka, QLicTools, QSysTools, QfrmLogin, QfrmLogo, QfrmBackup,
  QfrmMedicine, QfrmGyogyKlt, QfrmEnarSzamEll, QfrmKezParam, QfrmKodKarb,
  QfrmInszKarb, QfrmVemhNapSzamol, QfrmIrszam, QfrmDolgozok, Listak,
  KodTipus, QfrmInfoPult, QfrmTomeg1, QfrmEllesKarb, QfrmBika,
  QfrmTermKarbm, QfrmKullem, QfrmMigration, QfrmParamKarb, QfrmKihajt,
  QfrmMarhaLev, QfrmKezelesek, QfrmUstv, QfrmKiesesKArb, QfrmValRogz,
  QfrmKonvNez, QfrmTenyKarb, QfrmGyFelhLista, QfrmEgyedLista,
  QfrmTermLista, qfrmEllesLista, QfrmhTerm, QfrmNyomtat, TListak, udtmComm,
  QfrmFuljelzok, QfrmFuljRend, QfrmKullemImport, TList22_24, TListValDat,
  TListHivSzarmIg,
  Qfrmsvszamol, QfrmEletLista, QfrmTParLis, QfrmUszoLis,
  QfrmZaras, QfrmValaszt, QfrmEnarBe, QfrmEnarGyujt, QfrmCsaladfa,
  QfrmParVal, QfrmSzarmLista, QfrmNETPontRead,
  SzarmazasiIgazolas, ATorzskonyves, VerhanyadLista;


{$r *.dfm}

//------------------------------------------------------------------------------
procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Application.OnHint := ShowHint;
  DateSeparator := '.';
  ShortDateFormat := 'yyyy.mm.dd';
  // ChkLic(LicenceDate);
end;


//------------------------------------------------------------------------------
procedure TfrmMain.ShowHint(Sender: TObject);
begin
  StatusBar1.SimpleText := Application.Hint;
end;


//------------------------------------------------------------------------------
procedure TfrmMain.HelpContents(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTENTS, 0);
end;


//------------------------------------------------------------------------------
procedure TfrmMain.HelpSearch(Sender: TObject);
const
  EmptyString: PChar = '';
begin
  Application.HelpCommand(HELP_PARTIALKEY, Longint(EmptyString));
end;


//------------------------------------------------------------------------------
procedure TfrmMain.HelpHowToUse(Sender: TObject);
begin
  Application.HelpCommand(HELP_HELPONHELP, 0);
end;


//------------------------------------------------------------------------------
procedure TfrmMain.HelpAbout(Sender: TObject);
begin
  AboutBox.ShowModal;
end;


//------------------------------------------------------------------------------
procedure TfrmMain.FormShow(Sender: TObject);
var
  nap : integer;
  i : integer ;
  sql : string;
begin
  inherited;

  if dtmTarka = nil then begin
    feladat := 'exit';
    PostMessage(self.Handle, PSR_MESSAGE, 0, 0);
    exit;
  end;

  if not Login then begin
    feladat := 'exit';
    PostMessage(self.Handle, PSR_MESSAGE, 0, 0);
    exit;
  end else begin
    StatusBar1.SimpleText := 'Felhasználó:'+dtmTarka.UserNev;
    StatusBar1.SimplePanel := true;
    StatusBar2.SimpleText := 'Adatbázis:'+dtmTarka.sAdatbazisNev;
    StatusBar2.SimplePanel := true;
  end;

  if dtmTarka.Install = 'ATKFT' then
    TalImage1.Picture.LoadFromFile('nagylogo.jpg')
  else
    TalImage1.Picture.LoadFromFile('nagylogom.jpg');
//  DecimalSeparator := '.';
  if uppercase(dtmTarka.Center) = 'TELEP' then begin
    actSzarmIgLista.Visible := true
  end else
    actSzarmIgLista.Visible := false;

  if dtmTarka.UserKarb = '0' then
  begin;
    Szervzfunkcik1.Enabled := false;
    ENARadatokkezelse1.Enabled := false;
  end;


  if dtmTarka.UserKarb<>'1' then begin
    if dtmTarka.bKellAutMentes then begin
      if dtmTarka.dUtMentesNap <= today() then
      begin
        nap := DayOfWeek(today());
        if ((nap = 2) and dtmTarka.bHetfo) or
           ((nap = 3) and dtmTarka.bKedd) or
           ((nap = 4) and dtmTarka.bSzerda) or
           ((nap = 5) and dtmTarka.bCsutortok) or
           ((nap = 6) and dtmTarka.bPentek) or
           ((nap = 7) and dtmTarka.bSzombat) or
           ((nap = 0) and dtmTarka.bVasarnap) then
           begin
             StatusBar1.SimpleText := 'Adatbázis mentés folyik...';
             StatusBar1.SimplePanel := true;

             frmBackup.actStartExecute(NIL);
           end;
      end;
    end;
    StatusBar1.SimpleText := 'Felhasználó:' + dtmTarka.UserNev;
    StatusBar1.SimplePanel := true;
    frmLogo.bKellTimer:=true;
    frmLogo.ShowModal;
  end;

  JogosultsagBeallitas;


  if dtmTarka.UtolsoFutasDatum < today() then begin
    if feladat <> 'exit' then begin
      feladat := 'lista';
      PostMessage(self.Handle, PSR_MESSAGE, 0, 0);
    end;
  end;

  //dtmTarka.cnTarka.Execute('Update param set ut_futas = getdate()');
  dtmTarka.cnTarka.Execute('update param set ut_futas = current_timestamp');

  sdsTenyeszet.Close;
  sdsTenyeszet.Connection := dtmTarka.cnTarka;

  // csak a sajat tenyeszetet latja mindenki, aki nem admin
  if (dtmTarka.UserTenyeszet = '0000000') or (dtmTarka.isAdmin) then
    sdsTenyeszet.DataSet.CommandText :=
      'SELECT TKOD || ' + QuotedStr(' - ') + ' || TNEV2 AS LISTA, * ' +
      'FROM TENY ' +
      'ORDER BY TNEV2'
  else
    sdsTenyeszet.DataSet.CommandText :=
      'SELECT TKOD || ' + QuotedStr(' - ') + ' || TNEV2 AS LISTA, * ' +
      '  FROM TENY ' +
      '  WHERE TKOD = ' + QuotedStr(dtmTarka.UserTenyeszet) +
      '  ORDER BY TKOD';

  cbTenyeszet.KeyValue := dtmTarka.UserTenyeszet;
  sdsTenyeszet.Open;
  cbTenyeszetCloseUp(NIL);
end;


//------------------------------------------------------------------------------
procedure TfrmMain.Kilps1Click(Sender: TObject);
begin
  if dtmTarka.sdsTenyeszet.Active then dtmTarka.sdsTenyeszet.Close;
  Close;
end;


//------------------------------------------------------------------------------
procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;


//------------------------------------------------------------------------------
procedure TfrmMain.JogosultsagBeallitas;
var
  li : integer;
begin
  for li := 0 to ActionList1.ActionCount-1 do begin
    if ActionList1.Actions[li].Tag = 100 then begin
      if (dtmTarka.UserKarb = 'S') or (dtmTarka.UserKarb = '2') then
         (ActionList1.Actions[li] as TAction).Enabled := True
      else
         (ActionList1.Actions[li] as TAction).Enabled := false;
    end;
  end;

  for li := 0 to frmMain.ComponentCount-1  do
  begin
    if frmMain.Components[li] is TMenuItem then
      if (frmMain.Components[li] as TmenuItem).Action <> NIL then
        if ((frmMain.Components[li] as TmenuItem).Action as TAction).Enabled = false then
          (frmMain.Components[li] as TmenuItem).Visible := false;
  end;
end;


//------------------------------------------------------------------------------
procedure TfrmMain.HelpContentsItemClick(Sender: TObject);
begin
  frmLogo.bKellTimer:=false;
  frmLogo.ShowModal;
end;


//------------------------------------------------------------------------------
// Ablak megjelenése után végrehajtott mûvelet
procedure TfrmMain.AfterShow(var aMsg: TMessage);
begin
  if feladat = 'exit' then
    Close;

  if feladat = 'lista' then begin
//    Application.MessageBox('NapiListakNyomtatasa', 'Lista');
  end;
end;

procedure TfrmMain.Gygyszerekkarbantartsa1Click(Sender: TObject);
begin
  GyogyszerKarb(true);
end;



procedure TfrmMain.Gygyszerkszletek1Click(Sender: TObject);
var
  Kapott, Vissza : TTALparamList;
begin
  Kapott := TTalParamList.Create;
  Vissza := TTalParamList.Create;
  Kapott.Add('mode','BON');
  try
    GyogyszerKlt(Kapott, Vissza);
  finally
    Kapott.Free;
    Vissza.Free;
  end;
end;

procedure TfrmMain.ENARkontrollszmellenrzse1Click(Sender: TObject);
begin
  EnarSzamEll;
end;

procedure TfrmMain.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  cbTenyeszet.Left := frmMain.Width - cbTenyeszet.Width - 20
end;

procedure TfrmMain.Kezelsekparamtereinekkarbantartsa1Click(
  Sender: TObject);
begin
  KezParam;
end;

procedure TfrmMain.Kdokkarbantartsa1Click(Sender: TObject);
begin
  // if not dtmTarka.JogosultsagEllenorzes('skarb') then exit;
  if not dtmTarka.LicenceDatEll then exit;
   KodKarb;
end;

procedure TfrmMain.Inszemintorokkarbantartsa1Click(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('skarb') then exit;
  frmInszKarb.InszKarb();
end;

procedure TfrmMain.Vemhessginapkiszmts1Click(Sender: TObject);
begin
  VemhNapSzamolas;
end;

procedure TfrmMain.Irnytszmokkarbantartsa1Click(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('skarb') then exit;
  IrszKarb;
end;

procedure TfrmMain.Adatmentsek1Click(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('skarb') then exit;
  frmBackup.ShowModal;
end;

procedure TfrmMain.Felhasznlkkarbantartsa1Click(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('skarb') then exit;
  Dolgbon;
end;

procedure TfrmMain.Kdtipusok1Click(Sender: TObject);
begin
  KodList;
end;


procedure TfrmMain.Kdok1Click(Sender: TObject);
begin
  KodTipusLista;
end;


procedure TfrmMain.Inszemintorok1Click(Sender: TObject);
begin
  InszeminatorList;
end;


procedure TfrmMain.Egyedek1Click(Sender: TObject);
begin
  EgyedInfoPult;
end;


procedure TfrmMain.dblcTenyeszet1CloseUp(Sender: TObject);
begin
  dtmTarka.TenyeszetWhere := ' AND EXISTS (SELECT 1 FROM TENY WHERE TENY.TKOD = EE.TENYESZET AND TENY.TKOD = ' + quotedstr(dtmTarka.sdsTenyeszetTKOD.AsString) + ' AND ROWNUM = 1)';
  dtmTarka.TenyeszetWhereE := ' AND EXISTS (SELECT 1 FROM TENY WHERE TENY.TKOD = E.TENYESZET AND TENY.TKOD = ' + quotedstr(dtmTarka.sdsTenyeszetTKOD.AsString) + ' AND ROWNUM = 1)';
  dtmTarka.TenyeszetWhereS := ' AND EXISTS (SELECT 1 FROM TENY WHERE TENY.TKOD = EGYEDEK.TENYESZET AND TENY.TKOD = ' + quotedstr(dtmTarka.sdsTenyeszetTKOD.AsString) + ' AND ROWNUM = 1)';
  dtmTarka.TenyeszetTKOD := dtmTarka.sdsTenyeszetTKOD.AsString;
  dtmTarka.TenyeszetTNEV := dtmTarka.sdsTenyeszetTNEV2.AsString;
end;


procedure TfrmMain.actTomegKarbExecute(Sender: TObject);
begin
  OpenTestTomegBrow;
end;

procedure TfrmMain.actEllesExecute(Sender: TObject);
begin
  OpenEllesekBrow;
end;

procedure TfrmMain.actEnarEllExecute(Sender: TObject);
begin
  EnarSzamEll;
end;

procedure TfrmMain.TalSpeedButton1Click(Sender: TObject);
begin
  EnarSzamEll;
end;


procedure TfrmMain.actBikaKarbExecute(Sender: TObject);
var
  Vissza : TTalParamList;
begin
  Vissza := TTalParamList.Create;
  Vissza.Add('MODE','BROWSE');
  try
    frmBika.BikaKarb(vissza);
  finally
    vissza.Free;
  end;
end;


procedure TfrmMain.actTermBrowExecute(Sender: TObject);
begin
  OpenTermekenyitesBrow;
end;


procedure TfrmMain.actVemhKarbExecute(Sender: TObject);
begin
  OpenVemhessegekBrow;
end;


procedure TfrmMain.actKullemExecute(Sender: TObject);
begin
  KullemBrow;
end;

procedure TfrmMain.actMigrationExecute(Sender: TObject);
begin
  frmMigration.ShowModal;
end;

procedure TfrmMain.actParamKarbExecute(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('skarb') then exit;
  ParamKarb;
end;

procedure TfrmMain.actKihajtasExecute(Sender: TObject);
begin
  HajtasBrow;
end;

procedure TfrmMain.actMlevExecute(Sender: TObject);
begin
  frmMarhaLev.OpenMarhaLevKarb;
end;

procedure TfrmMain.actKezelesekExecute(Sender: TObject);
begin
  Kezelesek;
end;



procedure TfrmMain.actUstvExecute(Sender: TObject);
begin
  USTVBrow;
end;



procedure TfrmMain.actITVExecute(Sender: TObject);
begin
  ITVBrow;
end;



procedure TfrmMain.actKSTVExecute(Sender: TObject);
begin
  KSTVBrow;
end;

procedure TfrmMain.actKiesesExecute(Sender: TObject);
begin
  OpenKiesesBrow;
end;

procedure TfrmMain.actBikaKullemExecute(Sender: TObject);
begin
  BikaKullemBrow;
end;

procedure TfrmMain.actValRogzExecute(Sender: TObject);
begin
   OpenValRogz;
end;

procedure TfrmMain.actKonvNezExecute(Sender: TObject);
begin
  Konvnez;
end;

procedure TfrmMain.actHibaNezExecute(Sender: TObject);
begin
  HibaNez;
end;

procedure TfrmMain.actTenyKarbExecute(Sender: TObject);
begin
  TenyBrow;
end;

procedure TfrmMain.actGyFelhListaExecute(Sender: TObject);
begin
  GyFelhLista;
end;

procedure TfrmMain.actEgyedListaExecute(Sender: TObject);
begin
  EgyedLista;
end;

procedure TfrmMain.actTermListaExecute(Sender: TObject);
begin
  ListakTermekenyitesek;
end;

procedure TfrmMain.actEllesekListaExecute(Sender: TObject);
begin
  ListakEllesek;
end;


procedure TfrmMain.actHtermExecute(Sender: TObject);
var
  vissza : TTalParamList;
begin
  vissza := TTalParamList.Create;
  try
    OpenHTerm(vissza);
  finally
    vissza.Free;
  end;
end;


procedure TfrmMain.actHtermListaExecute(Sender: TObject);
begin
  ListakHTermekenyitesek;
end;

procedure TfrmMain.actVarhEllesExecute(Sender: TObject);
begin
  VarhEll;
end;

procedure TfrmMain.actListaAnyaAdatExecute(Sender: TObject);
begin
  TListak.frmTListak.AnyaAdat;
end;

procedure TfrmMain.actEloTehenKullemExecute(Sender: TObject);
begin
  TListak.frmTListak.EloTehenKullem;  
end;

procedure TfrmMain.actKiesettListaExecute(Sender: TObject);
begin
  TListak.frmTListak.KikerultKiesettTehenek;  
end;

procedure TfrmMain.actTermekenyitesekListaExecute(Sender: TObject);
begin
  TListak.frmTListak.Termekenyitesek;
end;

procedure TfrmMain.actEgyBikaTermekenyiteseiExecute(Sender: TObject);
begin
  TListak.frmTListak.EgyBikaTermekenyitesei;
end;


// kommunikációs leválogatás
procedure TfrmMain.actCommOutExecute(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
    dtmComm.KommLevalogatas;
end;


// kommunikációs beolvavsás
procedure TfrmMain.actCommInExecute(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  dtmComm.KommBeolvasas
end;

procedure TfrmMain.actVemhValListaExecute(Sender: TObject);
begin
  TListak.frmTListak.VemhessegiVizsgalatra;  
end;

procedure TfrmMain.actNegyszerTermTehenListaExecute(Sender: TObject);
begin
  TListak.frmTListak.LegalabbNegyszerTehen;  
end;

procedure TfrmMain.actNegyszerTermUszoListaExecute(Sender: TObject);
begin
  TListak.frmTListak.LegalabbNegyszerUszo;  
end;

procedure TfrmMain.actUszoTermListaExecute(Sender: TObject);
begin
  TListak.frmTListak.UszokTermekenyitesei;
end;

procedure TfrmMain.actVemhesUszoListaExecute(Sender: TObject);
begin
  TListak.frmTListak.VemhesUszok;  
end;

procedure TfrmMain.actTermAlattUszoExecute(Sender: TObject);
begin
  TListak.frmTListak.TermekenyitesAlattLevoUszok;
end;

procedure TfrmMain.actTehenKartonExecute(Sender: TObject);
begin
  TListak.frmTListak.TehenKarton;
end;


procedure TfrmMain.actValadatListaExecute(Sender: TObject);
begin
  TListValDat.frmValDat.ValasztasiAdatok2;
end;


procedure TfrmMain.actNovUszoListaExecute(Sender: TObject);
begin
//  TListak.frmTListak.NovendekUszoNyilvantarto;
  NovendekUszoNyilvantarto;
end;

procedure TfrmMain.actFuljKltExecute(Sender: TObject);
begin
  frmFuljelzo.OpenFuljelzoKlt;
end;

procedure TfrmMain.actFuljRendExecute(Sender: TObject);
begin
  OpenFuljelzoRend;  
 end;

procedure TfrmMain.actKullemCsvExecute(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  KulCsv;
end;

procedure TfrmMain.actMeresiAdatokListaExecute(Sender: TObject);
begin
  TList22_24.frmMeresiAdatok.MeresiAdatok22;
end;

procedure TfrmMain.actSzarmIgListaExecute(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('skarb') then exit;
  frmSzarmazasiIgazolas.Modosit;
  // TTListHivSzarmIg.frmHivSzarmIg.HivSzarmIg;
end;

procedure TfrmMain.actTenyNaploListaExecute(Sender: TObject);
begin
  Tlistak.frmTListak.TenyesztesiNaplo;
end;

procedure TfrmMain.actUstvBikaExecute(Sender: TObject);
begin
  Tlist22_24.frmMeresiAdatok.MeresiAdatok24;
end;

procedure TfrmMain.actSvSzamolExecute(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  SvSzamol;
end;

procedure TfrmMain.actKMISzamolExecute(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  KMISzamol;
end;

procedure TfrmMain.actMeresiAdatokUstvBikaExecute(Sender: TObject);
begin
  TList22_24.frmMeresiAdatok.MeresiAdatok24;
end;

procedure TfrmMain.actEnarLeltarListaExecute(Sender: TObject);
begin
  EnarLeltarLista;
end;

procedure TfrmMain.actGN14_listaExecute(Sender: TObject);
begin
  Gn14Lista;
end;

procedure TfrmMain.actTParListExecute(Sender: TObject);
begin
  TParLista;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dtmTarka.sdsTenyeszet.Active then dtmTarka.sdsTenyeszet.Close;
end;

procedure TfrmMain.actUstvMinExecute(Sender: TObject);
begin
  TList22_24.frmMeresiAdatok.MeresiAdatok25;
end;

procedure TfrmMain.actBikaDbfExecute(Sender: TObject);
begin
//  BikaDbf;
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  BikaTxt;
end;

procedure TfrmMain.NETPontReadClick(Sender: TObject);
begin
//  BikaDbf;
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  NetPontszamRead;
end;

procedure TfrmMain.actZarasListaExecute(Sender: TObject);
begin
  ZarasLista;
end;

procedure TfrmMain.actElitListaExecute(Sender: TObject);
begin
  ElitLista;
end;

procedure TfrmMain.actBikNevListaExecute(Sender: TObject);
begin
  BikaNeveloLista;
end;

procedure TfrmMain.actKimCsomExecute(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  KimenoCsomagok;
end;

procedure TfrmMain.actBemCsomExecute(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  BejovoCsomagok;
end;

procedure TfrmMain.actSvSzamolMindExecute(Sender: TObject);
begin
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  SvSzamolMind;
end;

procedure TfrmMain.actEnarBeExecute(Sender: TObject);
begin
  EnarBe;
end;

procedure TfrmMain.actEnarGyujtExecute(Sender: TObject);
begin
  OpenEnarGyujt;
end;

procedure TfrmMain.actTermFeladExecute(Sender: TObject);
begin
  TermFeladLista;
end;

procedure TfrmMain.actCsaladfaListaExecute(Sender: TObject);
begin
  CsaladfaLista;
end;

procedure TfrmMain.actSzarmEllCsopExecute(Sender: TObject);
begin
   CsopElemz;
end;

procedure TfrmMain.actVerhanyadLista(Sender: TObject);
begin
   VerhanyadListaShow;
end;

procedure TfrmMain.actSzarmListaExecute(Sender: TObject);
begin
  SzarmLista;
end;

procedure TfrmMain.cbTenyeszetCloseUp(Sender: TObject);
begin
  if cbTenyeszet.KeyValue <> '0000000' then begin
    dtmTarka.TenyeszetWhere := ' AND EXISTS (SELECT 1 FROM TENY WHERE TENY.TKOD = EE.TENYESZET AND TENY.TKOD = ' + quotedstr(cbTenyeszet.KeyValue) + ' AND ROWNUM = 1)';
    dtmTarka.TenyeszetWhereE := ' AND EXISTS (SELECT 1 FROM TENY WHERE TENY.TKOD = E.TENYESZET AND TENY.TKOD = ' + quotedstr(cbTenyeszet.KeyValue) + ' AND ROWNUM = 1)';
    dtmTarka.TenyeszetWhereS := ' AND EXISTS (SELECT 1 FROM TENY WHERE TENY.TKOD = EGYEDEK.TENYESZET AND TENY.TKOD = ' + quotedstr(cbTenyeszet.KeyValue) + ' AND ROWNUM = 1)';
    dtmTarka.TenyeszetTKOD := cbTenyeszet.KeyValue;

    sdsTenyeszet.Locate('TKOD',cbTenyeszet.KeyValue,[]);
    dtmTarka.TenyeszetTNEV := sdsTenyeszetTNEV2.AsString;
    dtmTarka.TenyeszetTKOD := sdsTenyeszetTKOD.AsString;
    dtmTarka.TenyeszetRKOD := sdsTenyeszetRKOD.AsString;
    dtmTarka.TenyeszetEKOD := sdsTenyeszetEKOD.AsString;
  end else begin
    dtmTarka.TenyeszetWhere := '';
    dtmTarka.TenyeszetWhereE := '';
    dtmTarka.TenyeszetWhereS := '';
    dtmTarka.TenyeszetTKOD := '';
    dtmTarka.TenyeszetRKOD := '';
    dtmTarka.TenyeszetEKOD := '';
  end;
end;

procedure TfrmMain.Atorzskonyves1Click(Sender: TObject);
begin
  ATorzskonyvesCreate;
end;

(* procedure TfrmMain.VerhanyadListaClick(Sender: TObject);
begin
  ATorzskonyvesCreate;
end;
*) 
end.
