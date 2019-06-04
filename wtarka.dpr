program wtarka;

uses
  Forms,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  udtmTarka in 'udtmTarka.pas' {dtmTarka: TDataModule},
  about in 'about.pas' {AboutBox},
  QSysTools in 'QSysTools.pas',
  QLicTools in 'QLicTools.pas',
  rjMime in 'rjMime.pas',
  magsubs1 in 'magsubs1.pas',
  magwmi in 'magwmi.pas',
  WbemScripting_TLB in 'WbemScripting_TLB.pas',
  smartapi in 'smartapi.pas',
  QfrmLogin in 'QfrmLogin.pas',
  QfrmLogo in 'QfrmLogo.pas' {frmLogo},
  QfrmKarbOs in 'QfrmKarbOs.pas' {frmKarbOs},
  QfrmJelszoBekeres in 'QfrmJelszoBekeres.pas' {frmJelszoBekeres},
  QfrmBackup in 'QfrmBackup.pas' {frmBackup},
  QfrmAdatbazisValaszto in 'QfrmAdatbazisValaszto.pas' {frmAdatbazsValaszto},
  QfrmGyogyKlt in 'QfrmGyogyKlt.pas',
  QfrmKezParam in 'QfrmKezParam.pas' {frmKezParam},
  QfrmMedicine in 'QfrmMedicine.pas' {frmMedicine},
  QfrmModOs in 'QfrmModOs.pas' {frmModOs},
  QfrmNyomtatoOs in 'QfrmNyomtatoOs.pas' {frmNyomtatoOs},
  QfrmfrmGyLisKlt in 'QfrmfrmGyLisKlt.pas' {frmGyLisKlt},
  QfrmGyFelhLista in 'QfrmGyFelhLista.pas' {frmGyFelhLista},
  QfrmGyFelh in 'QfrmGyFelh.pas',
  QfrmValasztoOs in 'QfrmValasztoOs.pas' {frmValasztoOs},
  QfrmEgyEgyeb in 'QfrmEgyEgyeb.pas' {frmGyEgyeb},
  QfrmKezParamData in 'QfrmKezParamData.pas' {frmKezParamData},
  Tibor in 'Tibor.pas' {frmTibor},
  QfrmEnarSzamEll in 'QfrmEnarSzamEll.pas' {frmEnarSzamEll},
  QfrmVemhNapSzamol in 'QfrmVemhNapSzamol.pas' {frmVemhNapSzamol},
  QfrmKodKarb in 'QfrmKodKarb.pas' {frmKodKarb},
  QfrmIrszam in 'QfrmIrszam.pas' {frmIrszam},
  QfrmInszKarb in 'QfrmInszKarb.pas' {frmInszKarb},
  QfrmKodUjMod in 'QfrmKodUjMod.pas' {frmKarbUjMod},
  Listak in 'Listak.pas' {frmListak},
  QfrmDolgAdatok in 'QfrmDolgAdatok.pas' {frmDolgAdatok},
  QfrmDolgozok in 'QfrmDolgozok.pas' {frmDolgozok},
  KodTipus in 'KodTipus.pas' {frmKodList},
  QfrmInfoPult in 'QfrmInfoPult.pas' {frmInfoPult},
  QfrmAzonositoValaszto in 'QfrmAzonositoValaszto.pas' {frmAzonositoValaszto},
  QfrmEgyedValaszto in 'QfrmEgyedValaszto.pas' {frmEgyedValaszto},
  QfrmTomeg1 in 'QfrmTomeg1.pas' {frmTomeg1},
  QfrmEllesKarb in 'QfrmEllesKarb.pas' {frmEllesKarb},
  QfrmTermKarbm in 'QfrmTermKarbm.pas' {frmTermKarbm},
  QfrmBika in 'QfrmBika.pas' {frmBika},
  QfrmKullem in 'QfrmKullem.pas' {frmKullem},
  QfrmMigration in 'QfrmMigration.pas' {frmMigration},
  QfrmParamKarb in 'QfrmParamKarb.pas' {frmParamKarb},
  QfrmKihajt in 'QfrmKihajt.pas' {frmKihajt},
  QfrmMarhaLev in 'QfrmMarhaLev.pas' {frmMarhaLev},
  QfrmKezelesek in 'QfrmKezelesek.pas' {frmKezelesek},
  QfrmCsopKez in 'QfrmCsopKez.pas' {frmCsopKez},
  QfrmUstv in 'QfrmUstv.pas' {frmUstv},
  QfrmKiesesKArb in 'QfrmKiesesKArb.pas' {frmKiesesKarb},
  QfrmValRogz in 'QfrmValRogz.pas' {frmValRogz},
  QfrmKonvNez in 'QfrmKonvNez.pas' {frmKonvNez},
  QfrmTenyKarb in 'QfrmTenyKarb.pas' {frmTenyKarb},
  QfrmEgyedLista in 'QfrmEgyedLista.pas' {frmEgyedLista},
  QfrmTermLista in 'QfrmTermLista.pas' {frmTermLista},
  qfrmEllesLista in 'qfrmEllesLista.pas' {frmEllesLista},
  QfrmCsopSor in 'QfrmCsopSor.pas' {frmCsopSor},
  QfrmhTerm in 'QfrmhTerm.pas' {frmhTerm},
  QfrmEgyediLapLista in 'QfrmEgyediLapLista.pas' {frmEgyediLapLista},
  QfrmNyomtat in 'QfrmNyomtat.pas' {frmNyomtat},
  TListak in 'TListak.pas' {frmTListak},
  udtmComm in 'udtmComm.pas' {dtmComm: TDataModule},
  QfrmFuljelzok in 'QfrmFuljelzok.pas' {frmFuljelzo},
  QfrmFuljRend in 'QfrmFuljRend.pas' {frmFuljRend},
  QfrmValaszt in 'QfrmValaszt.pas' {frmValaszt},
  QfrmKullemImport in 'QfrmKullemImport.pas' {frmKullemImport},
  TList22_24 in 'TList22_24.pas' {frmMeresiAdatok},
  TListValDat in 'TListValDat.pas' {frmValDat},
  TListHivSzarmIg in 'TListHivSzarmIg.pas' {frmHivSzarmIg},
  Qfrmsvszamol in 'Qfrmsvszamol.pas' {frmUjraSzamol},
  QfrmEletLista in 'QfrmEletLista.pas' {frmEletLista},
  QfrmTParLis in 'QfrmTParLis.pas' {frmTParLis},
  QfrmUszoLis in 'QfrmUszoLis.pas' {frmUszoLis},
  QfrmZaras in 'QfrmZaras.pas' {frmZaras},
  QfrmEnarBe in 'QfrmEnarBe.pas' {frmEnarBe},
  QfrmEnarGyujt in 'QfrmEnarGyujt.pas' {frmEnarGyujt},
  QfrmCsopFajta in 'QfrmCsopFajta.pas' {frmCsopFaj},
  QfrmCsaladfa in 'QfrmCsaladfa.pas' {frmCsaladfa},
  QfrmParVal in 'QfrmParVal.pas' {frmParVal},
  QfrmSzarmCsopLista in 'QfrmSzarmCsopLista.pas' {SzarmCsopLista},
  QfrmSzarmLista in 'QfrmSzarmLista.pas' {frmSzarmLista},
  QfrmNETPontRead in 'QfrmNETPontRead.pas' {frmNETPontRead},
  Atkotes in 'Atkotes.pas' {Form1},
  SzarmazasiIgazolas in 'SzarmazasiIgazolas.pas' {frmSzarmazasiIgazolas},
  SzarmazasiIgazolasPrint in 'SzarmazasiIgazolasPrint.pas' {SzarmazasiIgazolasPrint: TSzarmazasiIgazolasPrint};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Telepi Adatrögzítõ és Lekérdezõ Program (TALP)';
  Application.CreateForm(TdtmTarka, dtmTarka);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmMedicine, frmMedicine);
  Application.CreateForm(TfrmEnarSzamEll, frmEnarSzamEll);
  Application.CreateForm(TfrmKezParamData, frmKezParamData);
  Application.CreateForm(TfrmKezParam, frmKezParam);
  Application.CreateForm(TfrmKodKarb, frmKodKarb);
  Application.CreateForm(TfrmKarbUjMod, frmKarbUjMod);
  Application.CreateForm(TfrmInszKarb, frmInszKarb);
  Application.CreateForm(TfrmListak, frmListak);
  Application.CreateForm(TfrmVemhNapSzamol, frmVemhNapSzamol);
  Application.CreateForm(TfrmBackup, frmBackup);
  Application.CreateForm(TfrmTibor, frmTibor);
  Application.CreateForm(TfrmKodList, frmKodList);
  Application.CreateForm(TfrmCsopSor, frmCsopSor);
  Application.CreateForm(TfrmFuljelzo, frmFuljelzo);
  Application.CreateForm(TfrmValaszt, frmValaszt);
  Application.CreateForm(TfrmMeresiAdatok, frmMeresiAdatok);
  Application.CreateForm(TfrmValDat, frmValDat);
  Application.CreateForm(TfrmHivSzarmIg, frmHivSzarmIg);
  Application.CreateForm(TfrmSzarmazasiIgazolas, frmSzarmazasiIgazolas);
  // Application.CreateForm(TDataModule1, DataModule1);
  // Application.CreateForm(TfrmAtkotes, frmAtkotes);
  // Application.CreateForm(TfrmKarbOs1, frmKarbOs1);
  //Application.CreateForm(TSzarmCsopLista, SzarmCsopLista);
  //Application.CreateForm(TfrmZaras, frmZaras);
  //Application.CreateForm(TfrmTParLis, frmTParLis);
  //Application.CreateForm(TfrmUjraSzamol, frmUjraSzamol);
  //Application.CreateForm(TfrmKullemImport, frmKullemImport);
  //Application.CreateForm(TfrmhTerm, frmhTerm);
  Application.CreateForm(TfrmTListak, frmTListak);
  Application.CreateForm(TdtmComm, dtmComm);
  //  Application.CreateForm(TfrmAzonositoValaszto, frmAzonositoValaszto);
  Application.CreateForm(TfrmEgyedValaszto, frmEgyedValaszto);
  Application.CreateForm(TfrmTomeg1, frmTomeg1);
  Application.CreateForm(TfrmEllesKarb, frmEllesKarb);
  //sApplication.CreateForm(TfrmTermKarbm, frmTermKarbm);
  Application.CreateForm(TfrmBika, frmBika);
  //Application.CreateForm(TfrmKullem, frmKullem);
  Application.CreateForm(TfrmMigration, frmMigration);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TfrmLogo, frmLogo);
  Application.CreateForm(TfrmKihajt, frmKihajt);
  Application.CreateForm(TfrmMarhaLev, frmMarhaLev);
  Application.CreateForm(TfrmKezelesek, frmKezelesek);
  Application.CreateForm(TfrmCsopKez, frmCsopKez);
  Application.CreateForm(TfrmUstv, frmUstv);
  Application.CreateForm(TfrmKiesesKarb, frmKiesesKarb);
  Application.CreateForm(TfrmValRogz, frmValRogz);
  Application.CreateForm(TfrmKonvNez, frmKonvNez);
  Application.CreateForm(TfrmTenyKarb, frmTenyKarb);
  //Application.CreateForm(TfrmEllesLista, frmEllesLista);
  //Application.CreateForm(TfrmTermLista, frmTermLista);
  //Application.CreateForm(TfrmEgyedLista, frmEgyedLista);
  if dtmTarka = nil then exit;     // Ha nem választottak adatbázist....

  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
