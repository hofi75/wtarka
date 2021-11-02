unit udtmTarka;

interface

uses
  SysUtils, Classes, DB, DBClient, ADODB, uTALConnection, DateUtils, SqlExpr,uTalBitBtn,
  Buttons, uTalQuery, IniFiles, Controls, Dialogs, StrUtils, uTALDataset, forms,
  uTALSimpleDataSet,  mxExport, Variants, uTalParams, frxClass, frxDBSet, StdCtrls,
  frxExportCSV, frxExportRTF, frxExportHTML, frxExportPDF, uTALStoredProc, QSysTools;

type
  TdtmTarka = class(TDataModule)
    cnTarka: TTalConnection;
    SaveDialog: TSaveDialog;
    mxExcel: TmxDataSetExport;
    sdsTenyeszet: TTalSimpleDataSet;
    dtsTenyeszet: TDataSource;
    qryIvar: TTalQuery;
    qryIvarKOD: TWideStringField;
    qryIvarKOD_NEV: TWideStringField;
    qryStatusKOD: TWideStringField;
    qryStatusNEV: TWideStringField;
    qryTermCsop: TTalQuery;
    qryTermCsopKOD: TWideStringField;
    qryTermCsopNEV: TWideStringField;
    qryKiesesOk: TTalQuery;
    qryKiesesOkKOD: TWideStringField;
    qryKiesesOkKOD_NEV: TWideStringField;
    qryKiesesKod: TTalQuery;
    qryKiesesKodKOD: TWideStringField;
    qryKiesesKodKOD_NEV: TWideStringField;
    qryKonstr: TTalQuery;
    StringField3: TWideStringField;
    StringField4: TWideStringField;
    qryInfElles: TTalSimpleDataSet;
    qryInfEllesELLES_DATUM: TDateTimeField;
    qryInfEllesKOD_NEV: TWideStringField;
    qryInfEllesVegDatum: TDateTimeField;
    qryInfTerm: TTalSimpleDataSet;
    qryInfTermKOD_NEV: TWideStringField;
    qryInfMeres: TTalSimpleDataSet;
    qryInfSzin: TTalQuery;
    StringField19: TWideStringField;
    StringField20: TWideStringField;
    qryInfFajta: TTalQuery;
    qryTartHely: TTalQuery;
    StringField48: TWideStringField;
    StringField49: TWideStringField;
    qryKikHely: TTalQuery;
    StringField1: TWideStringField;
    StringField2: TWideStringField;
    qryTulaj: TTalQuery;
    qryTulajKOD: TWideStringField;
    qryTulajNEV: TWideStringField;
    qryTulajID: TBCDField;
    dtsKikHely: TDataSource;
    dtsTulaj: TDataSource;
    dtsInfo: TDataSource;
    dtsIvar: TDataSource;
    dtsStatus: TDataSource;
    dtsTermCsop: TDataSource;
    dtsKiesesOK: TDataSource;
    dtsKiesesKod: TDataSource;
    dtsKonstr: TDataSource;
    dtsInfSzin: TDataSource;
    dtsInfFajta: TDataSource;
    dtsTartHely: TDataSource;
    dtsInfElles: TDataSource;
    dtsInfTerm: TDataSource;
    dtsInfMeres: TDataSource;
    qryVer1: TTalQuery;
    dtsVer1: TDataSource;
    qryVer1FKOD: TSmallintField;
    qryVer1FNEV: TWideStringField;
    qryVer2: TTalQuery;
    SmallintField1: TSmallintField;
    StringField5: TWideStringField;
    dtsVer2: TDataSource;
    qryVer3: TTalQuery;
    SmallintField2: TSmallintField;
    StringField6: TWideStringField;
    dtsVer3: TDataSource;
    qryVer4: TTalQuery;
    SmallintField3: TSmallintField;
    StringField7: TWideStringField;
    dtsVer4: TDataSource;
    qryInfTermDATUM: TDateTimeField;
    qryInfMeresDATUM: TDateTimeField;
    qryInfMeresTOMEG: TSmallintField;
    sdsTomeg: TTalSimpleDataSet;
    dtsTomeg: TDataSource;
    sdsTomegID: TBCDField;
    sdsTomegEGYED_ID: TBCDField;
    sdsTomegENAR: TWideStringField;
    sdsTomegFULSZAM: TWideStringField;
    sdsTomegTEHENSZAM: TWideStringField;
    sdsTomegDATUM: TDateTimeField;
    sdsTomegTOMEG: TSmallintField;
    sdsTomegMOD_DAT: TDateTimeField;
    sdsTomegMOD_KOD: TWideStringField;
    sdsTomegTENYESZET: TWideStringField;
    qryBkiesok: TTalQuery;
    StringField13: TWideStringField;
    StringField14: TWideStringField;
    dtsBKiesOK: TDataSource;
    qryBKiesKod: TTalQuery;
    StringField15: TWideStringField;
    StringField16: TWideStringField;
    dtsBKiesKod: TDataSource;
    qryBszin: TTalQuery;
    StringField17: TWideStringField;
    StringField18: TWideStringField;
    dtsBszin: TDataSource;
    qryEllLef: TTalQuery;
    StringField21: TWideStringField;
    StringField22: TWideStringField;
    dtsEllLef: TDataSource;
    qryBIvar: TTalQuery;
    StringField23: TWideStringField;
    StringField24: TWideStringField;
    dtsBIvar: TDataSource;
    sdsEllesek: TTalSimpleDataSet;
    dtsEllesek: TDataSource;
    sdsEllesekE_TERM_ID: TBCDField;
    sdsEllesekEGYED_ID: TBCDField;
    sdsEllesekELLES_DATUM: TDateTimeField;
    sdsEllesekELLES_LEF: TWideStringField;
    sdsEllesekID: TBCDField;
    sdsEllesekTENYESZET: TWideStringField;
    sdsEllesekUTMOD_DAT: TDateTimeField;
    sdsEllesekUTMOD_KOD: TWideStringField;
    sdsEllesekLEF_NEV: TWideStringField;
    sdsEllesekENAR: TWideStringField;
    sdsEllesekFULSZAM: TWideStringField;
    sdsEllesekTEHENSZAM: TWideStringField;
    sdsBorjak: TTalSimpleDataSet;
    dtsBorjak: TDataSource;
    sdsBorjakELLESEK_ID: TBCDField;
    sdsBorjakBORJU_SSZ: TIntegerField;
    sdsBorjakBORJU_ENAR: TWideStringField;
    sdsBorjakBORJU_IVAR: TWideStringField;
    sdsBorjakBORJU_SULY: TBCDField;
    sdsBorjakBORJU_SZIN: TWideStringField;
    sdsBorjakBORJU_KONS_KOD: TWideStringField;
    sdsBorjakVSZ1: TBCDField;
    sdsBorjakVSZ2: TBCDField;
    sdsBorjakVSZ3: TBCDField;
    sdsBorjakVSZ4: TBCDField;
    sdsBorjakSZARVALTSAG: TWideStringField;
    sdsBorjakFSZ: TWideStringField;
    sdsBorjakIENAR: TWideStringField;
    sdsBorjakKIKOD_NEV: TWideStringField;
    sdsBorjakKIOK_NEV: TWideStringField;
    sdsBorjakIVAR_NEV: TWideStringField;
    sdsBorjakSZIN: TWideStringField;
    sdsBorjakID: TBCDField;
    sdsBorjakUTMOD_DAT: TDateTimeField;
    sdsBorjakUTMOD_KOD: TWideStringField;
    qrybVer1: TTalQuery;
    SmallintField4: TSmallintField;
    StringField8: TWideStringField;
    dtsBver1: TDataSource;
    qrybVer2: TTalQuery;
    SmallintField5: TSmallintField;
    StringField9: TWideStringField;
    dtsBver2: TDataSource;
    qrybVer3: TTalQuery;
    SmallintField6: TSmallintField;
    StringField10: TWideStringField;
    dtsBver3: TDataSource;
    qrybVer4: TTalQuery;
    SmallintField7: TSmallintField;
    StringField11: TWideStringField;
    dtsBver4: TDataSource;
    qrybKons: TTalQuery;
    StringField12: TWideStringField;
    StringField25: TWideStringField;
    dtsBKons: TDataSource;
    sdsEllesekBIKA: TWideStringField;
    sdsEllesekE_TERM_DAT: TDateTimeField;
    sdsTermekenyitesek: TTalSimpleDataSet;
    dtsTermekenyitesek: TDataSource;
    sdsTermekenyitesekID: TBCDField;
    sdsTermekenyitesekENAR: TWideStringField;
    sdsTermekenyitesekFULSZAM: TWideStringField;
    sdsTermekenyitesekTEHENSZAM: TWideStringField;
    sdsTermekenyitesekID_ENAR: TWideStringField;
    sdsTermekenyitesekDATUM: TDateTimeField;
    sdsTermekenyitesekBIKANEV: TWideStringField;
    sdsTermekenyitesekTSZAM: TWideStringField;
    sdsTermekenyitesekEREDET: TWideStringField;
    sdsTermekenyitesekALLOMAS: TWideStringField;
    sdsTermekenyitesekEGYED_ID: TBCDField;
    sdsTermekenyitesekSZUPOV: TWideStringField;
    sdsTermekenyitesekISMBIK: TWideStringField;
    sdsTermekenyitesekMOD: TWideStringField;
    sdsTermekenyitesekINSZ: TWideStringField;
    sdsTermekenyitesekTIP: TWideStringField;
    sdsTermekenyitesekALLAPOT: TWideStringField;
    sdsTermekenyitesekVEMH_DATUM: TDateTimeField;
    sdsTermekenyitesekUTMOD_DAT: TDateTimeField;
    sdsTermekenyitesekUTMOD_KOD: TWideStringField;
    qryTermMod: TTalQuery;
    StringField26: TWideStringField;
    StringField27: TWideStringField;
    qryVemhKod: TTalQuery;
    StringField28: TWideStringField;
    StringField29: TWideStringField;
    qryInsz: TTalQuery;
    qryInszKOD: TWideStringField;
    qryInszNEV: TWideStringField;
    dtsVemhKod: TDataSource;
    dtsTermMod: TDataSource;
    dtsInsz: TDataSource;
    qrySperTip: TTalQuery;
    StringField30: TWideStringField;
    StringField31: TWideStringField;
    dtsSperTip: TDataSource;
    qrySperEred: TTalQuery;
    StringField32: TWideStringField;
    StringField33: TWideStringField;
    dtsSperEred: TDataSource;
    qrySperElo: TTalQuery;
    StringField34: TWideStringField;
    StringField35: TWideStringField;
    dtsSperElo: TDataSource;
    sdsInfo: TTalSimpleDataSet;
    qryInfFajtaFKOD: TIntegerField;
    qryInfFajtaFNEV: TWideStringField;
    qryInfTermKPLSZ: TWideStringField;
    sdsTermekenyitesekKPLSZ: TWideStringField;
    sdsBorjakVER1: TWideStringField;
    sdsBorjakVER2: TWideStringField;
    sdsBorjakVER3: TWideStringField;
    sdsBorjakVER4: TWideStringField;
    sdsBorjakBORJU_KIESES_KOD: TWideStringField;
    sdsBorjakBORJU_KIESES_OK: TWideStringField;
    sdsMeresTip: TTalSimpleDataSet;
    dtsMeresTip: TDataSource;
    sdsTomegMERES_TIPUS: TWideStringField;
    sdsTomegKOD_NEV: TWideStringField;
    sdsMeresTipKOD: TWideStringField;
    sdsMeresTipKOD_NEV: TWideStringField;
    qryInfMeresKOD_NEV: TWideStringField;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    prcNaptolt: TTalStoredProc;
    stpEgyedTorles: TTalStoredProc;
    prcWzarTolt: TTalStoredProc;
    sdsTenyeszetLISTA: TWideStringField;
    sdsTenyeszetTKOD: TWideStringField;
    sdsTenyeszetTNEV2: TWideStringField;
    sdsTenyeszetRKOD: TWideStringField;
    qryOrszag: TTalQuery;
    dtsOrszag: TDataSource;
    qryOrszagNEV: TWideStringField;
    qryStatus: TTalQuery;
    sdsInfoID: TBCDField;
    sdsInfoENAR: TWideStringField;
    sdsInfoTENYESZET: TWideStringField;
    sdsInfoTEHENSZAM: TWideStringField;
    sdsInfoFULSZAM: TWideStringField;
    sdsInfoID_ENAR: TWideStringField;
    sdsInfoANYA_ENAR: TWideStringField;
    sdsInfoANYA_ELL: TWideStringField;
    sdsInfoANYA_ID_ENAR: TWideStringField;
    sdsInfoDONOR_ANYA: TWideStringField;
    sdsInfoAPAKLSZ: TWideStringField;
    sdsInfoAPA_FULSZAM: TWideStringField;
    sdsInfoID_APA: TWideStringField;
    sdsInfoNEV: TWideStringField;
    sdsInfoSZULDAT: TDateTimeField;
    sdsInfoFAJTAKOD: TWideStringField;
    sdsInfoVER1: TWideStringField;
    sdsInfoVSZ1: TBCDField;
    sdsInfoVER2: TWideStringField;
    sdsInfoVSZ2: TBCDField;
    sdsInfoVER3: TWideStringField;
    sdsInfoVSZ3: TBCDField;
    sdsInfoVER4: TWideStringField;
    sdsInfoVSZ4: TBCDField;
    sdsInfoSZORSZ: TWideStringField;
    sdsInfoE_ORSZ: TWideStringField;
    sdsInfoKKOD: TWideStringField;
    sdsInfoSZIN: TWideStringField;
    sdsInfoSZARVALTSAG: TWideStringField;
    sdsInfoBIKANEVELO: TWideStringField;
    sdsInfoTENYTOM: TIntegerField;
    sdsInfoMLEVEL1: TWideStringField;
    sdsInfoMLEVEL2: TWideStringField;
    sdsInfoTKV: TWideStringField;
    sdsInfoTKVSZAM: TWideStringField;
    sdsInfoMIN: TBCDField;
    sdsInfoKIKOD: TWideStringField;
    sdsInfoKIKOK: TWideStringField;
    sdsInfoKIKDAT: TDateTimeField;
    sdsInfoSTATUS: TWideStringField;
    sdsInfoALLAPOT: TWideStringField;
    sdsInfoALLDAT: TDateTimeField;
    sdsInfoIVAR: TWideStringField;
    sdsInfoSZUL_SULY: TIntegerField;
    sdsInfoMOD_KOD: TWideStringField;
    sdsInfoMOD_DAT: TDateTimeField;
    sdsInfoMEGJEGYZES: TWideStringField;
    sdsInfoVALDAT: TDateTimeField;
    sdsInfoVALTOM: TIntegerField;
    sdsInfoTOM205: TIntegerField;
    sdsInfoSV: TIntegerField;
    sdsInfoKIKHELY: TWideStringField;
    sdsInfoSZARM_TENY: TWideStringField;
    sdsInfoDNS_DATE: TDateTimeField;
    sdsInfoDNS_IKTATOSZAM: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure sdsInfoENARGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure sdsTermekenyitesekVEMH_DATUMGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure sdsInfoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
    UserKod : string;      // bejelentkezett felhasználó kódja
    UserNev : string;      // Bejelentkezett felhasználó neve
    UserBelep : string;
    UserKarb  : string;
    UserTenyeszet : string;
    sAdatbazisNev : string;
    sAdatbazis : string;
    sTenyeszetId : string;
    sTenyeszetKod : string;
    sTenyeszetNev : string;
    sLaborNev : string;
    sHGINev : string;
    sATKFT_KOD : string;
    bKellElletos : Boolean;
    iAtlVemhNapSzam : integer;
    iAtlSzarazNapSzam : integer;
    sFejogep : string;
    sDbVer : string;
    cTejFajsuly : real;
    iKellTomegElleskor : integer;
    iKellGyogyszerKlt : integer;
    bKellAutMentes : Boolean;
    bHetfo : Boolean;
    bKedd : Boolean;
    bSzerda : Boolean;
    bCsutortok : Boolean;
    bPentek : Boolean;
    bSzombat : Boolean;
    bVasarnap : Boolean;
    dUtMentesNap : TDate;
    BackupTimeOut : integer;
    PsionTipus : integer;
    SzarmKezeles : integer;
    AppPath : string;
    fr3Path : string;
    UtolsoFutasDatum : TDate;
    TenyeszetWhere : string;
    TenyeszetWhereE : string;
    TenyeszetWhereS : string;
    TenyeszetTKOD : string;
    TenyeszetTNEV : string;
    TenyeszetRKOD : string;
    TenyeszetEKOD : string;
    tkod : array of string;
    tnev : array of string;
    tLista : array of string;
    SectionName : string;
    Install:string;
    Center : string;
    function JogosultsagEllenorzes(mode: string): Boolean;
    function Belepes(Felh_kod, jelszo: string; bUres: Boolean): Boolean;
    function JelszoCsere(Felh_kod, jelszo, uj_jelszo: string): Boolean;
    function MegsemNyomas(activecontrol: TWinControl): Boolean;
    function GetKodNev(const SQL, Kod: string; var Nev: string): boolean;
    function VaneGyogyszer(Kod: string): Boolean;
    function VaneElegKeszletDb(Mennyiseg: double; klt_id: string; var Van : Double): Boolean;
    function GyogyszerAdat(sGyogyszerKod: string; var iTej, iHus : integer;
                           var sNev, sHatoanyag, sForgylamazo: string): Boolean;
    function VaneUser(UserKod:string):Boolean;
    function VaneIlyenKezParam(kod: string): Boolean;
    function VaneInszKod(inszkod,id:string):Boolean;
    function ExcelExport(ds: TTalSimpleDataSet; fileNev: string): string;
    function ElsoEgyed():string;
    function VaneEgyedEnar(sAzon: string; var azonosito: string; var EgyedId : string): Boolean;
    function UtolsoElles(EgyedId:string):string;
    function UtolsoTermekenyites(EgyedId: string;var Term_dat, VK:string):Boolean;
    function EllesekKoztiNap:string;
    function EgyedKezelesAlatt(sEgyedAzonosito:string; var sDatumt,sDatumh:string):Boolean;
    function LicenceDatEll:Boolean;
    function VaneEgyed(Azonosito: string; bKellHu:Boolean=false): Boolean;
    function EnarCdvGen(be:string):string;
    function EnarCdvEll(be:string):boolean;
    function AzonIr(Azonosito:string):string;
    function VaneIlyenEgyed(psAzon: string; var azonosito: string; var EgyedId : string;
                   CsakLeany:Boolean=false;CsakElo:Boolean=true;kell_figy:Boolean=false;Kell_Hiba:Boolean=false): Boolean;
    function EgyedInfo(EgyedId: string;  var Vissza: TTalParamList): Boolean;
    procedure UjBorjuEgyedtorzsbe(b_azon:string);
    procedure BorjuEgyedtorzsbeUpdate(b_azon:string);
    function VaneElles(Azonosito,ell_dat:string):Boolean;
    function EllesEredmTerm(EgyedId,Ell_dat:string;var term_datum, term_id ,bika_klsz:string):string;
    function VaneTerm(Egyed_id ,datum:string; var id:string ):Boolean;
    function ElozoTerm(EgyedId:string; var datum:Tdate; var Elozo_Vk: string):string;
    function UtolsoNvTermekenyites(EgyedId: string;  var Vissza: TTalParamList): Boolean;
    function BikaAdat(var Klsz:string; var Nev: string ):Boolean;
    function vaneTermreHivatkozoElles(EgyedId, Term_id : string):Boolean;
    function VaneBika(klsz,id:string):Boolean;
    function TenyeszetAlapAdatai():Boolean;
    function VaneMarhaLevszam(Marhalevelszam,Azonosito:string):Boolean;
    function KezelesAdat(var id,Kod,Nev,csoport: string): Boolean;
    function UtolsoEllUtaniTerm(EgyedId: string;var TERM_ID,Term_dat,Bika, VK:string):Boolean;
    function VaneElegKeszlet(Mennyiseg:double ; klt_id : string):Boolean;
    function oszlopbanEzAzErtekSzerepel(sds: TTALSimpleDataSet; as_kodmezo_neve:string;as_ertek:string; as_uzenet_ha_van, as_feladat: string; as_id_mezo_neve:string; as_id:string;ab_hibauzenet_kell:boolean=true): boolean;
    function VaneDatumnalKesobbiAdat(EgyedId:string;Datum:string):Boolean;
    Procedure Nyomtat(sds:TTalSimpleDataSet; Nyomfil :string);
    function IniFileRead(szekcio, kulcs, default:string):string;
    procedure IniFileWrite(szekcio, kulcs, ertek:string);
    function MsgDlg(msg: string; dlgtype: TMsgDlgType; Buttons: TMsgDlgButtons;v:integer=0): word;
    function Vaneenyeszet(TenyKod:string):string;
    function VaneFuljelzo(Azonosito:string):Boolean;
    function FuljelzoKiadva(be:string):boolean;
    function Tom205szam(Egyed_id:string;valdat:TDate; valtom:double):double;
    procedure myCopyFile(Fromf, Tof:String);
    function UstvDatum(tol,ig : string; var utol : Tdate; var uig : Tdate):Boolean;
    procedure EllesekUpdate(tkod : string);
    function GetFajtaKod(enar:string):string;
    function isAdmin:Boolean;
    function getTenyeszetNev( tkod: string) : string;
    function getTenyeszetRKOD( tkod: string) : string;
    function getTenyeszetCim( tkod: string) : string;
    function getTenyeszetMegye( tkod: string) : string;
    function getMegyeByKOD( kod: string) : string;
    function getIvarName( pID: integer) : string;
  end;

var
  dtmTarka: TdtmTarka;
  LicenceDate : TDateTime;
  MsgDialog: TForm;


implementation

uses QfrmAdatbazisValaszto, QfrmAzonositoValaszto, ufrmMain;

{$R *.dfm}

function TdtmTarka.getTenyeszetNev( tkod: string) : string;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select * from teny where tkod = ' + quotedStr( tkod);
  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := tq.FieldByName('TNEV2').AsString;
  tq.Close;
  tq.free;
end;

function TdtmTarka.getTenyeszetRKOD( tkod: string) : string;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select * from teny where tkod = ' + quotedStr( tkod);
  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := tq.FieldByName('RKOD').AsString;
  tq.Close;
  tq.free;
end;

function TdtmTarka.getTenyeszetCim( tkod: string) : string;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select * from teny where tkod = ' + quotedStr( tkod);
  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := Trim( tq.FieldByName('IRSZ').AsString) + ' ' +
            Trim( tq.FieldByName('VAROS').AsString) + ', ' +
            Trim( tq.FieldByName('KTNEV').AsString) + ' ' +
            Trim( tq.FieldByName('KTJELL').AsString) + ' ' +
            Trim( tq.FieldByName('HSZ').AsString);
  tq.Close;
  tq.free;
end;

function TdtmTarka.getMegyeByKOD( kod: string) : string;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select * from megye where kod = ' + quotedStr( kod);
  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := tq.FieldByName('NEV').AsString;
  tq.Close;
  tq.free;
end;

function TdtmTarka.getTenyeszetMegye( tkod: string) : string;
var
  mkod : string;
  tq : Ttalquery;
begin
  mkod := getTenyeszetRKOD( tkod);
  result := getMegyeByKOD( copy( mkod, 1, 2));
end;

function TdtmTarka.getIvarName( pID: Integer) : string;
var
  SQL : string;
  tq : Ttalquery;
  ivar: string;
  darab: integer;
begin
  SQL := 'select * from egyedek where id = ' + IntToStr( pID);
  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  ivar := tq.FieldByName('ivar').AsString;
  tq.Close;
  tq.free;

  If ivar = '1' then begin
     Result := 'Bika';
     exit;
  end;

  SQL := 'select count(*) as darab from ellesek where egyed_id = ' + IntToStr( pID);
  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  darab := tq.FieldByName('darab').AsInteger;
  tq.Close;
  tq.free;
  if darab = 0 then
     result := 'Üszõ'
  else
     result := 'Tehén';

end;

//------------------------------------------------------------------------------
function TdtmTarka.JogosultsagEllenorzes(mode: string): Boolean;
begin
  if LowerCase(mode) = 'karb' then begin
    if dtmTarka.UserKarb <> '0' then
      result := true
    else
      result := false
  end else if LowerCase(mode) = 'skarb' then begin
    if dtmTarka.UserKarb = '2' then
      result := true
    else
      result := false
  end else
    result := true;

  if not Result then
    dtmTarka.MsgDlg('Önnek nincs joga ehhez a mûvelethez!', mtWarning, [mbOK], 0);
end;

// az aktuaalis felhasznalo karbantarto?
function TdtmTarka.isAdmin: Boolean;
begin
    if ( dtmTarka.UserKarb = '2') or ( dtmTarka.UserKarb = 'S') then
        result := true
    else
        result := false;
end;

function TdtmTarka.Belepes(Felh_kod, jelszo: string; bUres: Boolean): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  if not bUres then begin
    SQL := 'select FELH_KOD,NEV,JELSZO,TIPUS,TENYESZET from userek ' +
           ' where upper(FELH_KOD)='+quotedStr( UpperCase(Felh_kod))+
           ' and jelszo='+QuotedStr(jelszo);
  end else begin
    SQL := 'select FELH_KOD,NEV,JELSZO,TIPUS,TENYESZET from userek ' +
           ' where upper(FELH_KOD)='+quotedStr( UpperCase(Felh_kod))+
           ' and (jelszo='+QuotedStr(jelszo) +') or (jelszo is null)';

  end;
  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do begin
    if tq.FieldByName('NEV').AsString <> EmptyStr then begin
        UserNev := tq.FieldByName('NEV').AsString;
        UserKod := tq.FieldByName('FELH_KOD').AsString;
        UserKarb := tq.FieldByName('TIPUS').AsString;
        UserTenyeszet := tq.FieldByName('TENYESZET').AsString;
        Result := true;
    end else begin
        Result := false;
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.Free;

  TenyeszetAlapAdatai;
end;


function TdtmTarka.JelszoCsere(Felh_kod, jelszo, uj_jelszo: string): Boolean;
var
  SQL : string;
begin
  SQL := 'Update userek set jelszo='+QuotedStr(uj_jelszo)+
         ' where upper(felh_kod)='+quotedStr( UpperCase(Felh_kod))+
         ' and (jelszo='+QuotedStr(jelszo)+ ') or (jelszo is null)';

  Result := false;
  cnTarka.BeginTrans;
  try
    cnTarka.Execute(SQL);
    cnTarka.CommitTrans;
    Result := true;
  except
    if cnTarka.InTransaction then begin
      cnTarka.RollbackTrans;
      Result := false;
    end;
  end;

end;


procedure TdtmTarka.DataModuleCreate(Sender: TObject);
var
   IniFile : TIniFile;
   CurrentIniFile : string;
   CurrentIniPath : string;
   gepnev : string;
   cs : string;
begin
  GetDir(0, AppPath);
  fr3Path := AppPath;

  if UpperCase(RightStr(AppPath, 6)) = 'SOURCE' then
     AppPath := MidStr(AppPath, 1, Length(AppPath) -7);

  if LowerCase(LeftStr(AppPath, 13)) = '\\tsclient\c\' then
     AppPath := 'z:\' + rightStr(AppPath, Length(AppPath) - 13);

  GetDir(0, CurrentIniPath);
  CurrentIniFile := CurrentIniPath + '\WTarka.ini';

  // inifile megnyitása
  IniFile := TIniFile.Create(CurrentIniFile);
  SectionName := AdatbazisValaszto(IniFile);
  Install := IniFileRead('tarka', 'Install', 'Magyartarka');
  Center := IniFileRead('Comm', 'DestSite', 'Telep');
  if UpperCase(Center) = 'CENTER' then Center := 'center';

  if SectionName = EmptyStr then
  begin
    IniFile.Free;
    FreeAndNil(dtmTarka);
    Exit;
  end;

  gepnev := GetEnvironmentVariable('Computername');

  cnTarka.Connected := false;
  cs := IniFile.ReadString(SectionName,'ConnectionString','');
  StringReplace(cs,'(local)',gepnev, [rfReplaceAll]);

  cnTarka.ConnectionString := cs;

  BackupTimeOut := StrToInt( IniFile.ReadString('Backup','TimeOut','30'));

  IniFile.Free;
  try
    cnTarka.Open;
    // Session decimális szeparátor karakter beálítása
    cnTarka.Execute('ALTER SESSION SET NLS_NUMERIC_CHARACTERS = ' + QuotedStr('.,'));
  except
    Dialogs.ShowMessage('Hiba az adatbázishoz kapcsolódás közben!' + #10#13 +
                        '   Kérem ellenõrizze a paramétereket!' );
  end
end;


procedure TdtmTarka.DataModuleDestroy(Sender: TObject);
begin
  cnTarka.Close;
end;


function TdtmTarka.VaneGyogyszer(Kod: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as van from GYOGYSZEREK g '+
         ' where g.KOD='+ quotedStr( Kod);
  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do begin
    if tq.FieldByName('VAN').AsString <> EmptyStr then begin
        Result := true;
    end else begin
        Result := false;
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.free;
end;


// Mezõ érték kikeresése select alapján
function TdtmTarka.GetKodNev(const SQL, Kod: string; var Nev: string): boolean;
var
  aData : TTalDataset;
begin
  aData := TTalDataset.Create(nil);
  try
    aData.Connection := cnTarka;
    aData.CommandType := cmdText;
    aData.CommandText := SQL;
    aData.Open;
    if aData.BOF and not aData.EOF then
    begin
      Nev := aData.FieldByName(Kod).AsString;
      Result := True;
    end
    else
      Result := False;
    aData.Close;
  finally
    aData.Free;
  end;
end;


function TdtmTarka.MegsemNyomas(activecontrol: TWinControl): Boolean;
begin
  Result := False;

  if (ActiveControl is TTalBitBtn) then
     if (ActiveControl as TTalBitBtn).Caption = 'Mégsem' then
         Result := True;

  if (ActiveControl is TTalBitBtn) then
     if (ActiveControl as TTalBitBtn).Caption = 'Kilépés' then
         Result := True;

  if (ActiveControl is TTalBitBtn) then
     if (ActiveControl as TTalBitBtn).Caption = 'Kilép' then
         Result := True;

  if ActiveControl is TBitBtn then
     if (ActiveControl as TBitBtn).Caption = 'Mégsem' then
         Result := True;
end;


function TdtmTarka.VaneElegKeszletDb(Mennyiseg: double; klt_id: string; var Van : Double): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  if klt_id = EmptyStr then begin
    Result := false;
    exit;
  end;

  SQL := 'SELECT GYOGYSZER_KLT.AKT_KESZLET FROM GYOGYSZER_KLT ' +
         ' WHERE GYOGYSZER_KLT.ID = ' + klt_id;

  Result := false;
  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  if tq.FieldByName('AKT_KESZLET').AsString <> EmptyStr then begin
    van := tq.FieldByName('AKT_KESZLET').AsFloat;
    result := tq.FieldByName('AKT_KESZLET').AsFloat >= Mennyiseg;
  end;
  tq.Close;
  tq.free;
end;

function TdtmTarka.GyogyszerAdat(sGyogyszerKod: string; var iTej, iHus : integer;
    var sNev, sHatoanyag, sForgylamazo: string): Boolean;
var
  SQL : string;
  tq : TTalQuery;
begin
  if sGyogyszerKod <> EmptyStr then
  begin
    SQL := 'SELECT GY.ID,GY.KOD,GY.NEV,GY.HATOANYAG,GY.VARAKOZAS_TEJ, ' +
           ' GY.VARAKOZAS_HUS,GY.FORGALMAZO_NEV FROM GYOGYSZEREK GY ' +
           ' WHERE GY.KOD=' + QuotedStr(sGyogyszerKod);
  end;

  Result := false;
  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  if tq.FieldByName('ID').AsString <> EmptyStr then
  begin
      sNev := tq.FieldByName('NEV').AsString;
      iTej := tq.FieldByName('VARAKOZAS_TEJ').AsInteger;
      iHus := tq.FieldByName('VARAKOZAS_HUS').AsInteger;
      sHatoanyag := tq.FieldByName('HATOANYAG').AsString;
      sForgylamazo := tq.FieldByName('FORGALMAZO_NEV').AsString;
      Result := true;
  end;
  tq.Close;
  tq.free;
end;

function TdtmTarka.VaneIlyenKezParam(kod: string): Boolean;
var
  SQL : string;
  tq : TTalQuery;
begin
  SQL := 'select 1 as van from KEZ_PARAM k '+
         ' where k.kod=' + QuotedStr(Kod);

  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;

  Result := False;

  while not tq.Eof do
  begin
    Result := tq.FieldByName('VAN').AsString <> EmptyStr;
    if Result then
      Break;
    tq.Next;
  end;

  tq.Close;
  tq.free;
end;


function TdtmTarka.ExcelExport(ds: TTalSimpleDataSet; fileNev: string): string;
var
	_NoAction: Boolean;
begin
  SaveDialog.FileName := Filenev;
  mxExcel.DataSet := ds;
  if SaveDialog.Execute then
  begin
 	  mxExcel.FileName := SaveDialog.FileName;
	  _NoAction := False;
  	if FileExists(mxExcel.FileName) then
    begin
      if dtmTarka.MsgDlg('FIGYELEM! A fájl már létezik! Felülírható a(z) '+ ExtractFileName(mxExcel.FileName) + ' fájl?',
                    mtConfirmation, [mbYes, mbNo],0) = mrYes then
			  SysUtils.DeleteFile(mxExcel.FileName)
      else
			  _NoAction := True;
	  end;

    if not _NoAction then
    begin
      mxExcel.ExportStyle := xsFile;
      mxExcel.Execute;
    end;
	end;
  //  mxExcel.ExportStyle := xsView;
  //  mxExcel.Execute;
  Result := ExtractFileName(mxExcel.FileName);
end;


function TdtmTarka.VaneInszKod(inszkod, id: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as van from INSZEMINATOROK t '+
         ' where t.kod='+ quotedStr(inszkod);

  if id <> EmptyStr then
    sql := sql + '  and t.id<>' + id;

  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do
  begin
    if tq.FieldByName('VAN').AsString <> EmptyStr then begin
        Result := true;
    end
    else begin
        Result := false;
    end;
    tq.Next;
  end ;

  tq.Close;
  tq.Free;
end;

function TdtmTarka.VaneUser(UserKod: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as van from USEREK u '+
         ' where u.felh_kod='+ quotedStr(UserKod);

  tq := TTalQuery.Create(Self);
  tq.Connection := cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;

  result := false;

  while not tq.Eof do
  begin
    Result := tq.FieldByName('VAN').AsString <> EmptyStr;
    if Result then
      Break; 
    tq.Next;
  end ;
  tq.Close;
  tq.free;
end;


function TdtmTarka.ElsoEgyed: string;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select E.ENAR as van from EGYEDEK E join teny on teny.TKOD = E.TENYESZET ' +
         '  WHERE (trim(E.ENAR) > '' '') ' + TenyeszetWhereE + ' AND ROWNUM = 1 ' +
         'order by E.ENAR' ;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := '';

  while not tq.Eof do
  begin
    if tq.FieldByName('VAN').AsString <> EmptyStr then
    begin
        Result := tq.FieldByName('VAN').AsString;
    end
    else begin
        Result := '';
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.free;
end;



function TdtmTarka.VaneEgyedEnar(sAzon: string; var azonosito,
  EgyedId: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
  db : integer;
  sIvar : string;
  sKikerult : string;
begin
  sAzon := StringReplace(sAzon, '-', '', [rfReplaceAll]);
  SQL := 'SELECT EGYEDEK.ID, EGYEDEK.ENAR AS AZONOSITO FROM EGYEDEK ' +
         ' WHERE (EGYEDEK.ENAR =' + quotedStr(UpperCase(sAzon)) +
         ' or (SUBSTR(egyedek.ENAR, 6, 4) = '+quotedStr(UpperCase(sAzon))+')'+
         ' OR EGYEDEK.FULSZAM = ' + quotedStr(UpperCase(sAzon)) +
         ' OR EGYEDEK.TEHENSZAM = ' + quotedStr(UpperCase(sAzon)) +
         ' OR EGYEDEK.ID_ENAR = ' + quotedStr(UpperCase(sAzon)) + ')' ;
  SQL := SQL + TenyeszetWhereS;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  db := 0;

  while not tq.Eof do
  begin
    if tq.FieldByName('AZONOSITO').AsString <> EmptyStr then
    begin
        Result := true;
        Azonosito := tq.FieldByName('AZONOSITO').AsString;
        EgyedId := tq.FieldByName('ID').AsString;
        db := db + 1;
    end
    else
    begin
        Result := false;
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.free;

  if db > 1 then
  begin
    if not AzonositoValaszto(sAzon, azonosito, egyedId,sIvar, sKikerult) then
    begin
      Result := false;
      azonosito := '';
    end;
  end;
end;



function TdtmTarka.UtolsoElles(EgyedId: string): string;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select E.ELLES_DATUM ' +
         ' from ELLESEK E ' +
         ' where E.EGYED_ID = ' + EgyedId +
         ' AND ROWNUM = 1 '+
         ' order by E.ELLES_DATUM DESC ' ;

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := '';
  while not tq.Eof do begin
    if tq.FieldByName('ELLES_DATUM').AsString <> EmptyStr then begin
       Result := tq.FieldByName('ELLES_DATUM').AsString;
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.free;
end;



function TdtmTarka.UtolsoTermekenyites(EgyedId: string; var Term_dat, VK: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select tt.DATUM, tt.ALLAPOT ' +
         ' from TERMEKENYITESEK tt ' +
         ' where tt.EGYED_ID = ' + EgyedId +
         ' AND ROWNUM = 1 '+
         ' order by tt.DATUM DESC ' ;
   tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do begin
    if tq.FieldByName('DATUM').AsString <> EmptyStr then begin
        Result := true;
        Term_dat := tq.FieldByName('DATUM').AsString;
        Vk := tq.FieldByName('ALLAPOT').AsString;
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.free;
end;


function TdtmTarka.EllesekKoztiNap: string;
var
  ElsoDate : TDate;
  MasodikDate : TDate;
  dataset : TTALSimpleDataset;
begin
  result:= '';
  if qryInfTerm.IsEmpty then exit;
  ElsoDate := qryInfTermDATUM.AsDateTime;

  if qryInfTerm.Eof then
  begin
    Result := IntToStr(DaysBetween(today,ElsoDate));
    exit;
  end;

  dataset := TTALSimpleDataset.Create(nil);
  DataSet.CloneCursor(qryInfTerm, False);

  try
    dataset.Next;
    if not dataset.Eof then
    begin
      MasodikDate := Dataset.fieldByName('DATUM').AsDateTime;
      Result := IntToStr(DaysBetween(MasodikDate,ElsoDate));
      Exit;
    end
    else
    begin
      Result := IntToStr(DaysBetween(today,ElsoDate));
      Exit;
    end;
  finally
    Dataset.Free;
  end;
end;




function TdtmTarka.EgyedKezelesAlatt(sEgyedAzonosito: string; var sDatumt,  sDatumh: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
    Result := false;
    exit;
  SQL := 'SELECT E.AZONOSITO, '+
         ' DATEADD(DAY, (SELECT  MAX(G.VARAKOZAS_TEJ) '+
         '                 FROM GYOGYSZEREK G WHERE '+
         '                 EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER_ID=G.ID) OR '+
         '                 EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER2_ID=G.ID) OR '+
         '                 EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER3_ID=G.ID)),K.KEZ_DATUM) AS LEJARAT '+
         ' FROM KEZELESEK K '+
         ' JOIN EGYEDEK E ON E.ID=K.EGYEDEK_ID '+
         ' WHERE E.KIKERULES_DATUM IS NULL '+
         '   AND  (DATEADD(DAY, '+
         '                 (SELECT  MAX(G.VARAKOZAS_TEJ) '+
         '                    FROM GYOGYSZEREK G WHERE '+
         '                    EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER_ID=G.ID) OR '+
         '                    EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER2_ID=G.ID) OR '+
         '                    EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER3_ID=G.ID)), '+
         '        K.KEZ_DATUM) >= CURRENT_TIMESTAMP ) '+
         ' AND E.AZONOSITO = ' + quotedstr(sEgyedAzonosito) + ' order by 2 desc ' ;

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  if tq.FieldByName('LEJARAT').AsString <> EmptyStr then begin
    sDatumt := tq.FieldByName('LEJARAT').AsString;
  end else begin
    sDatumt := '';
  end;
  tq.Close;
  tq.free;

  SQL := 'SELECT E.AZONOSITO, '+
         ' DATEADD(DAY, (SELECT  MAX(G.VARAKOZAS_HUS) '+
         '                 FROM GYOGYSZEREK G WHERE '+
         '                 EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER_ID=G.ID) OR '+
         '                 EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER2_ID=G.ID) OR '+
         '                 EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER3_ID=G.ID)),K.KEZ_DATUM) AS LEJARAT '+
         ' FROM KEZELESEK K '+
         ' JOIN EGYEDEK E ON E.ID=K.EGYEDEK_ID '+
         ' WHERE E.KIKERULES_DATUM IS NULL '+
         '   AND  (DATEADD(DAY, '+
         '                 (SELECT  MAX(G.VARAKOZAS_HUS) '+
         '                    FROM GYOGYSZEREK G WHERE '+
         '                    EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER_ID=G.ID) OR '+
         '                    EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER2_ID=G.ID) OR '+
         '                    EXISTS (SELECT 1 FROM KEZELESEK KK WHERE KK.ID =K.ID AND KK.GYOGYSZER3_ID=G.ID)), '+
         '        K.KEZ_DATUM) >= CURRENT_TIMESTAMP ) '+
         ' AND E.AZONOSITO = ' + quotedstr(sEgyedAzonosito) + ' order by 2 desc ' ;

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  if tq.FieldByName('LEJARAT').AsString <> EmptyStr then begin
    sDatumh := tq.FieldByName('LEJARAT').AsString;
  end else begin
    sDatumh := '';
  end;
  tq.Close;
  tq.free;
  if (sDatumt > '') or (sDatumh > '') then
    Result := true
  else
    Result := false;
end;

function TdtmTarka.LicenceDatEll: Boolean;
begin
 // if LicenceDate < today then begin
 //   dtmTarka.MsgDlg('Lejárt a program használati ideje!',mterror,[mbOK],0 );
 //   Result := false;
 // end else begin
 //   if not dtmTarka.JogosultsagEllenorzes('karb') then
 //   result := false
 // else
 //   Result := true;
 // end;
 Result := true;   

end;



function TdtmTarka.VaneEgyed(Azonosito: string; bKellHu: Boolean): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  if bKellHu then begin
    SQL := 'select 1 as van from egyedek ' +
           ' where egyedek.ENAR='+quotedStr( UpperCase(Azonosito));
  end else begin
    SQL := 'select 1 as van from egyedek ' +
           ' where egyedek.ENAR='+quotedStr( UpperCase(Azonosito)) +
             ' or egyedek.ENAR=''HU'+UpperCase(Azonosito)+'''';
  end;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do begin
    if tq.FieldByName('VAN').AsString <> EmptyStr then begin
        Result := true;
    end else begin
        Result := false;
    end;
    tq.Next;
  end ;
  tq.Close;
end;

function TdtmTarka.EnarCdvEll(be: string): boolean;
var
  sum : integer;
begin
  result := false;

  if be = EmptyStr then exit;

  if Length(trim(be))<> 10 then
  begin
    if (LeftStr(be,2)='HU') then
    begin
      if length(be)<>12 then
      begin
        dtmTarka.MsgDlg('Hibás az ENAR szám hossza!', mtWarning, [mbOK], 0);
        exit;
      end
      else begin
        be := RightStr(be,10);
      end;
    end
    else begin
      dtmTarka.MsgDlg('Hibás az ENAR szám hossza!', mtWarning, [mbOK], 0);
      exit;
    end;
  end;

  sum := 0;
  sum := sum + StrToInt(midstr(be,1,1)) * 7;
  sum := sum + StrToInt(midstr(be,2,1)) * 9;
  sum := sum + StrToInt(midstr(be,3,1)) * 3;
  sum := sum + StrToInt(midstr(be,4,1)) * 1;
  sum := sum + StrToInt(midstr(be,5,1)) * 7;
  sum := sum + StrToInt(midstr(be,6,1)) * 9;
  sum := sum + StrToInt(midstr(be,7,1)) * 3;
  sum := sum + StrToInt(midstr(be,8,1)) * 1;
  sum := sum + StrToInt(midstr(be,9,1)) * 7;
  result :=  rightStr(be,1)=RightStr( IntToStr(sum),1);
  if result = false then begin
      dtmTarka.MsgDlg('Hibás az ENAR szám utolsó jegye! Megadott:'+rightStr(be,1)+
                  '  Helyes:'+RightStr( IntToStr(sum),1), mtWarning, [mbOK], 0);
      exit;
  end;
end;



function TdtmTarka.EnarCdvGen(be: string): string;
var
  sum : integer;
begin
  result := '';

  if be = EmptyStr then exit;
  if Length(trim(be))<> 9 then exit;

  sum := 0;
  sum := sum + StrToInt(midstr(be, 1, 1)) * 7;
  sum := sum + StrToInt(midstr(be, 2, 1)) * 9;
  sum := sum + StrToInt(midstr(be, 3, 1)) * 3;
  sum := sum + StrToInt(midstr(be, 4, 1)) * 1;
  sum := sum + StrToInt(midstr(be, 5, 1)) * 7;
  sum := sum + StrToInt(midstr(be, 6, 1)) * 9;
  sum := sum + StrToInt(midstr(be, 7, 1)) * 3;
  sum := sum + StrToInt(midstr(be, 8, 1)) * 1;
  sum := sum + StrToInt(midstr(be, 9, 1)) * 7;

  result :=  RightStr(IntToStr(sum), 1);
end;



function TdtmTarka.AzonIr(Azonosito: string): string;
var
  aa : string;
begin
  if Azonosito = NULL then
    aa := ''
  else
    aa := Azonosito;
  if ((LeftStr(aa,1) = '3') and (Length(aa)= 10)) then
      aa := LeftStr(aa,5) + '-'+ midstr(aa ,6, 4) + '-'  + RightStr(aa,1)
  else if ((LeftStr(aa,3) = 'HU3') and (Length(aa)=12)) then
         aa :=LeftStr(aa,7) + '-'+ midstr(aa ,8, 4) + '-' + RightStr(aa,1)
       else
         aa := Azonosito;
  Result := aa;

end;




function TdtmTarka.VaneIlyenEgyed(psAzon: string; var azonosito,
  EgyedId: string; CsakLeany, CsakElo, kell_figy,
  Kell_Hiba: Boolean): Boolean;
var
  SQL : string;
  tq : Ttalquery;
  db : integer;
  sIvar : string;
  sKikerultKod : string;
begin
  psAzon := StringReplace(psAzon,'-','',[rfReplaceAll]);
  SQL := 'select ENAR,id,ivar,kikod from egyedek ' +
           ' where ((egyedek.ENAR='+quotedStr(UpperCase(psAzon))+')'+
            ' or (egyedek.FULSZAM='+quotedStr(UpperCase(psAzon))+')'+
            ' or (SUBSTR(egyedek.ENAR,6,4)='+quotedStr(UpperCase(psAzon))+')'+
            ' or (egyedek.TEHENSZAM='+quotedStr(UpperCase(psAzon))+')'+
            ' or (egyedek.ID_ENAR='+quotedStr(UpperCase(psAzon))+'))';
  if CsakElo then begin
    SQL := SQL + ' and ((egyedek.kikod is null) or (kikod='''') or (kikod=''0''))';
  end;
  SQL := SQL + TenyeszetWhereS;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  db := 0;
  while not tq.Eof do begin
    if tq.FieldByName('ENAR').AsString <> EmptyStr then begin
         Result := true;
         Azonosito := tq.FieldByName('ENAR').AsString;
         EgyedId := tq.FieldByName('ID').AsString;
         sKikerultKod := tq.FieldByName('KIKOD').AsString;
         db := db + 1;
    end else begin
        Result := false;
    end;
    tq.Next;
  end ;
  if db=1 then begin
    if (csakleany and (tq.FieldByName('IVAR').AsString='1')) then begin
       Result := false;
       EgyedId := '-1';
       dtmTarka.MsgDlg('Az egyed hímivarú!', mtWarning, [mbOK], 0);
    end;
  end;

  tq.Close;
  tq.free;
  if db > 1 then begin
    if Length(psAzon)= 10 then psAzon := midstr(psAzon,6,4);
    if not AzonositoValaszto(psAzon, azonosito, egyedId, sIvar, sKikerultKod) then begin
      Result := false;
      azonosito := '';
    end else begin
      if (csakleany and (sIvar='1')) then begin
         Result := false;
         dtmTarka.MsgDlg('Az egyed hímivarú!', mtWarning, [mbOK], 0);
      end;
    end;
  end;
  if kell_figy and ((sKikerultKod <> EmptyStr) and (sKikerultKod <> '0')) then begin
    dtmTarka.MsgDlg('Az egyed már kiesett!', mtWarning, [mbOK], 0);
  end;
  if Kell_Hiba and ((sKikerultKod <> EmptyStr) and (sKikerultKod <> '0')) then begin
    Result := false;
  end;
end;

function TdtmTarka.EgyedInfo(EgyedId: string;
  var Vissza: TTalParamList): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'SELECT E.ENAR, ' +
         '  E.ALLAPOT, ' +
         '  E.ALLDAT, ' +
         '  E.ANYA_ELL, ' +
         '  E.ANYA_ENAR, ' +
         '  E.ANYA_ID_ENAR, ' +
         '  E.APA_FULSZAM, ' +
         '  E.APAKLSZ, ' +
         '  E.BIKANEVELO, ' +
         '  E.DONOR_ANYA, ' +
         '  E.E_ORSZ, ' +
         '  E.FAJTAKOD, ' +
         '  E.FULSZAM, ' +
         '  E.ID_APA, ' +
         '  E.ID_ENAR, ' +
         '  E.IVAR, ' +
         '  E.KIKDAT, ' +
         '  E.KIKOD, ' +
         '  E.KIKOK, ' +
         '  E.KKOD, ' +
         '  E.MEGJEGYZES, ' +
         '  E.MLEVEL1, ' +
         '  E.MLEVEL2, ' +
         '  E.NEV, ' +
         '  E.STATUS, ' +
         '  E.SZARVALTSAG, ' +
         '  E.SZIN, ' +
         '  E.SZORSZ, ' +
         '  E.SZUL_SULY, ' +
         '  E.SZULDAT, ' +
         '  E.TEHENSZAM, ' +
         '  E.TENYESZET, ' +
         '  E.TENYTOM, ' +
         '  E.TKV, ' +
         '  E.VER1, ' +
         '  E.VER2, ' +
         '  E.VER3, ' +
         '  E.VER4, ' +
         '  E.VSZ1, ' +
         '  E.VSZ2, ' +
         '  E.VSZ3, ' +
         '  E.VSZ4, ' +
         '  ELLESEK.ELLES_LEF, ' +
         '  ELLESEK.ELLES_LEF || '' - '' || KEF.KOD_NEV AS ELLLEFNEV, ' +
         '  BORJAK.BORJU_SULY, ' +
         '  KSZIN.KOD_NEV AS SZIN_NEV, ' +
         '  FAJTA.KOD_NEV AS FAJTA_NEV, ' +
         '  KONSTR.KOD_NEV AS KONSTR_NEV, ' +
         '  IVAR.KOD_NEV AS IVAR_NEV ,' +
         '  E.VALDAT, ' +
         '  E.VALTOM, ' +
         '  E.TOM205 ' +
         ' FROM EGYEDEK E ' +
         ' LEFT JOIN KODOK KSZIN ON KSZIN.KODTIPUSOK_TIPUSKOD=''SZIN'' AND KSZIN.KOD = E.SZIN ' +
         ' LEFT JOIN KODOK FAJTA ON FAJTA.KODTIPUSOK_TIPUSKOD=''FAJTA'' AND FAJTA.KOD=E.FAJTAKOD ' +
         ' LEFT JOIN KODOK IVAR ON IVAR.KODTIPUSOK_TIPUSKOD=''IVAR'' AND IVAR.KOD=E.IVAR ' +
         ' LEFT JOIN KODOK KONSTR ON KONSTR.KODTIPUSOK_TIPUSKOD=''KONSTR'' AND FAJTA.KOD=E.KKOD ' +
         ' LEFT JOIN BORJAK ON BORJAK.BORJU_ENAR=E.ENAR ' +
         ' LEFT JOIN ELLESEK ON ELLESEK.ID = BORJAK.ELLESEK_ID ' +
         ' LEFT join kodok kef on kef.KODTIPUSOK_TIPUSKOD=''ELL_LEF'' and kef.KOD=ellesek.ELLES_LEF ' +
         '  WHERE E.ID= ' + EGYEDID;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  if tq.RecordCount > 0 then begin
    Result := true;
//    if tq.FieldByName('ENAR').AsString <> EmptyStr then begin

        //log(('AZONOSITO');
        Vissza.Add('ENAR', tq.FieldByName('ENAR').AsString);
        //log(('2');
        Vissza.Add('ALLAPOT' , tq.FieldByName('ALLAPOT').AsString);
        //log(('3');
        Vissza.Add('ALLDAT' , tq.FieldByName('ALLDAT').AsString);
        Vissza.Add('ANYA_ELL' , tq.FieldByName('ANYA_ELL').AsString);
        //log(('EREDETI_AZOZNOSITO');
        Vissza.Add('ANYA_ENAR' , tq.FieldByName('ANYA_ENAR').AsString);
        //log(('SZUL_DATUM');
        Vissza.Add('ANYA_ID_ENAR' , tq.FieldByName('ANYA_ID_ENAR').AsString);
        //log(('ANYA_AZONOSITO');
        Vissza.Add('APA_FULSZAM' , tq.FieldByName('APA_FULSZAM').AsString);
        //log(('APA_AZONOSITO');
        Vissza.Add('APAKLSZ' , tq.FieldByName('APAKLSZ').AsString);
        //log(('KONSTR_KOD');
        Vissza.Add('BIKANEVELO' , tq.FieldByName('BIKANEVELO').AsString);
        //log(('IVAR');
        Vissza.Add('DONOR_ANYA' , tq.FieldByName('DONOR_ANYA').AsString);
        Vissza.Add('E_ORSZ' , tq.FieldByName('E_ORSZ').AsString);
        //log(('TERMELESI_CSOPORT_KOD');
        Vissza.Add('FAJTAKOD' , tq.FieldByName('FAJTAKOD').AsString);
        //log(('BEKERULES_DATUM');

        Vissza.Add('FULSZAM' , tq.FieldByName('FULSZAM').AsString);
        //log(('KIKERULES_DATUM');
        Vissza.Add('ID_APA' , tq.FieldByName('ID_APA').AsString);
        //log(('KIKERULES_OK');
        Vissza.Add('ID_ENAR' , tq.FieldByName('ID_ENAR').AsString);
        //log(('KIKERULES_KOD');
        Vissza.Add('IVAR' , tq.FieldByName('IVAR').AsString);
        //log(('TULAJDONOS_TENYESZET_ID');
        Vissza.Add('KIKDAT' , tq.FieldByName('KIKDAT').AsString);
        //log(('SZIN_KOD');
        Vissza.Add('KIKOD' , tq.FieldByName('KIKOD').AsString);
        //log(('FAJTA');
        Vissza.Add('KIKOK' , tq.FieldByName('KIKOK').AsString);
        Vissza.Add('KKOD' , tq.FieldByName('KKOD').AsString);
        //log(('KORCSOP_NEV');
        Vissza.Add('MEGJEGYZES' , tq.FieldByName('MEGJEGYZES').AsString);
        //log(('SZIN_NEV');
        Vissza.Add('MLEVEL1' , tq.FieldByName('MLEVEL1').AsString);
        //log(('FAJTA_NEV');
        Vissza.Add('MLEVEL2' , tq.FieldByName('MLEVEL2').AsString);
        //log(('IVAR_NEV');
        Vissza.Add('NEV' , tq.FieldByName('NEV').AsString);
        //log(('KONSTR_NEV');
        Vissza.Add('STATUS' , tq.FieldByName('STATUS').AsString);
        //log(('IKER');
        Vissza.Add('SZARVALTSAG', tq.FieldByName('SZARVALTSAG').AsString);
        //log(('ELLES_LEF');
        Vissza.Add('SZIN',  tq.FieldByName('SZIN').AsString);
        //log(('ELLLEFNEV');
        Vissza.Add('SZORSZ',  tq.FieldByName('SZORSZ').assTring);
        //log(('BORJU_SULY');
        Vissza.Add('SZUL_SULY', tq.FieldByName('SZUL_SULY').asstring);
        //log(('ENAR_BE_DATUM');
        Vissza.Add('SZULDAT', tq.FieldByName('SZULDAT').asstring);
        //log(('MARHALEVELSZAM');
        if tq.FieldByName('TEHENSZAM').asstring = NULL then
          Vissza.Add('TEHENSZAM',  '')
        else
          Vissza.Add('TEHENSZAM',  tq.FieldByName('TEHENSZAM').asstring);
        //log(('TENYESZET');
        Vissza.Add('TENYESZET', tq.FieldByName('TENYESZET').asstring);
        //log(('TENYTOM');
        Vissza.Add('TENYTOM', tq.FieldByName('TENYTOM').asstring);

        Vissza.Add('TKV' , tq.FieldByName('TKV').AsString);
        //log(('VER1');
        Vissza.Add('VER1' , tq.FieldByName('VER1').AsString);
        //log(('VER2');
        Vissza.Add('VER2' , tq.FieldByName('VER2').AsString);
        //log(('VER3');
        Vissza.Add('VER3' , tq.FieldByName('VER3').AsString);
        //log(('VER4');
        Vissza.Add('VER4' , tq.FieldByName('VER4').AsString);
        //log(('VSZ1');
        Vissza.Add('VSZ1' , tq.FieldByName('VSZ1').AsString);
        //log(('VSZ2');
        Vissza.Add('VSZ2', tq.FieldByName('VSZ2').AsString);
        //log(('VSZ3');
        Vissza.Add('VSZ3',  tq.FieldByName('VSZ3').AsString);
        //log(('VSZ4');
        Vissza.Add('VSZ4',  tq.FieldByName('VSZ4').assTring);
        //log(('SZIN_NEV');
        Vissza.Add('SZIN_NEV', tq.FieldByName('SZIN_NEV').asstring);
        //log(('FAJTA_NEV');
        Vissza.Add('FAJTA_NEV', tq.FieldByName('FAJTA_NEV').asstring);
        //log(('IVAR_NEV');
        Vissza.Add('IVAR_NEV',  tq.FieldByName('IVAR_NEV').asstring);
        Vissza.Add('ELLES_LEF',  tq.FieldByName('ELLES_LEF').AsString);

        Vissza.Add('KONSTR_KOD',  tq.FieldByName('KKOD').AsString);
        Vissza.Add('KONSTR_NEV',  tq.FieldByName('KONSTR_NEV').AsString);
        //log(('ELLLEFNEV');
        Vissza.Add('ELLLEFNEV',  tq.FieldByName('ELLLEFNEV').assTring);
        //log(('BORJU_SULY');
        Vissza.Add('BORJU_SULY', tq.FieldByName('BORJU_SULY').asstring);
        Vissza.Add('VALDAT', tq.FieldByName('VALDAT').asstring);
        Vissza.Add('VALTOM', tq.FieldByName('VALTOM').asstring);
        Vissza.Add('TOM205', tq.FieldByName('TOM205').asstring);
  end;
  tq.Close;
  tq.free;
end;



procedure TdtmTarka.BorjuEgyedtorzsbeUpdate(b_azon: string);
var
  SQL : string;
  spIkerUpdate: TADOStoredProc;
begin
  if b_azon = EmptyStr then exit;
  SQL := 'update EGYEDEK  '+
  '  set IVAR = (select borjak.BORJU_IVAR from borjak where borjak.BORJU_ENAR = ' + quotedstr(b_azon)+'),' +
  '  SZIN = (select borjak.BORJU_SZIN from borjak where borjak.BORJU_ENAR = ' + quotedstr(b_azon)+'),' +
  '  MOD_DAT = CURRENT_DATE, ' +
  '  MOD_KOD = ' + quotedstr(dtmTarka.UserKod) +
  ' where (EGYEDEK.ENAR = ' + quotedstr(b_azon) +
         ') OR (EGYEDEK.ENAR = ' + quotedstr( 'HU' + b_azon) + ')';

  cnTarka.BeginTrans;
  try
    cnTarka.Execute(SQL);
    cnTarka.CommitTrans;
  except
    if cnTarka.InTransaction then begin
      cnTarka.RollbackTrans;
    end;
  end;

    // TADOConnection
  spIkerUpdate := TADOStoredProc.Create(Self);
  spIkerUpdate.Connection := dtmTarka.cnTarka;
  spIkerUpdate.ProcedureName := 'IKER_UPDATE';
  spIkerUpdate.Parameters.Clear;
  spIkerUpdate.Parameters.CreateParameter('B_ENAR',ftString,pdInput,16,b_azon);
  spIkerUpdate.ExecProc;

end;



procedure TdtmTarka.UjBorjuEgyedtorzsbe(b_azon: string);
var
  SQL : string;
  fk, SQL1 : string;
  spIkerUpdate: TADOStoredProc;
  b_enar_parm : TParameter;
begin
   SQL := 'insert into EGYEDEK (   ENAR, NEV, SZULDAT, ALLDAT, ' +
  ' IVAR, SZIN, ANYA_ENAR,   APAKLSZ, TENYESZET, KKOD, ' +
  ' VER1,VSZ1,VER2,VSZ2, VER3, VSZ3, VER4, VSZ4, SZARVALTSAG,SZUL_SULY, kikod, kikok, ' +
  ' MOD_DAT, MOD_KOD) ' +
  ' SELECT    b.BORJU_ENAR,  tt.NEV,  e.ELLES_DATUM, e.ELLES_DATUM, b.BORJU_IVAR, b.BORJU_SZIN,  tt.enar,   tr.kplsz, E.TENYESZet, ' +
  ' b.borju_kons_kod, b.ver1, b.vsz1, b.ver2, b.vsz2, b.ver3, b.vsz3, b.ver4, b.vsz4, b.szarvaltsag, b.borju_suly, ' +
  ' NULL,null, b.UTMOD_DAT, b.UTMOD_KOD ' +
  ' from BORJAK b ' +
  ' join ELLESEK e on e.ID=b.ELLESEK_ID  ' +
  ' join EGYEDEK tt on tt.ID=e.EGYED_ID ' +
  ' left join TERMEKENYITESEK tr on (tr.ID = e.e_term_id) ' +
  ' where b.BORJU_ENAR=' + quotedstr(b_azon) +
  ' and not exists(select 1 from egyedek eee  ' +
  ' where eee.ENAR=B.BORJU_ENAR)  ';

  cnTarka.BeginTrans;
  try
    log(sql);
    cnTarka.Execute(SQL);
    fk := GetFajtaKod(b_azon);
    SQL1 := 'update EGYEDEK SET FAJTAKOD = ' + quotedstr(fk)  +
        ' where EGYEDEK.ENAR = ' + quotedstr(b_azon);
    log(sql1);
    cnTarka.Execute(SQL1);

    // TADOConnection
    spIkerUpdate := TADOStoredProc.Create(Self);
    spIkerUpdate.Connection := dtmTarka.cnTarka;
    spIkerUpdate.ProcedureName := 'IKER_UPDATE';
    spIkerUpdate.Parameters.Clear;
    spIkerUpdate.Parameters.CreateParameter('B_ENAR',ftString,pdInput,16,b_azon);
    spIkerUpdate.ExecProc;

    cnTarka.CommitTrans;
  except
    on E : Exception do
    begin
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      if cnTarka.InTransaction then begin
         cnTarka.RollbackTrans;
    end;
    end;
  end;

end;




function TdtmTarka.VaneElles(Azonosito, ell_dat: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as van from ellesek '+
         ' join egyedek ee on ee.id=ellesek.egyed_id ' +
           ' where ee.enar='+quotedStr( UpperCase(Azonosito)) +
            ' and ellesek.elles_datum=' + quotedstr(ell_dat) ;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do begin
    if tq.FieldByName('VAN').AsString <> EmptyStr then begin
        Result := true;
    end else begin
        Result := false;
    end;
    tq.Next;
  end ;
  tq.Close;
end;

function TdtmTarka.EllesEredmTerm(EgyedId, Ell_dat: string; var term_datum, term_id,
  bika_klsz: string): string;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'SELECT TT.ID, TT.DATUM,TT.KPLSZ ' +
          ' FROM TERMEKENYITESEK TT ' +
          ' WHERE TT.EGYED_ID=' + EgyedId +
          ' AND TT.DATUM > UT_ELLES_DATUM( ' + EgyedId + ') ' +
          ' AND TT.allapot = ''1'' ' +
 //         ' AND ROWNUM = 1 '+
          ' ORDER BY TT.DATUM DESC';

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := '';
  while not tq.Eof do begin
    if tq.FieldByName('DATUM').AsString <> EmptyStr then begin
        Result := tq.FieldByName('DATUM').AsString;
        term_datum := tq.FieldByName('DATUM').AsString;
        term_ID := tq.FieldByName('ID').AsString;
        bika_klsz := tq.FieldByName('KPLSZ').AsString;
        exit;
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.free;
end;



function TdtmTarka.VaneTerm(egyed_id, datum: string; var id : string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select t.id as van from termekenyitesek t ' +
         ' join egyedek ee on ee.id = t.egyed_id ' +
         ' where ee.ID = ' + egyed_id +
         ' and t.datum  = to_date(' +  quotedstr( datum ) + ')';
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do begin
    if tq.FieldByName('VAN').AsString <> EmptyStr then begin
        id := tq.fieldByName('VAN').asstring;
        Result := true;
    end else begin
        Result := false;
    end;
    tq.Next;
  end ;
  tq.Close;
end;



function TdtmTarka.ElozoTerm(EgyedId:string; var datum:Tdate; var Elozo_Vk: string): string;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := ' select t.EGYED_ID, T.DATUM, T.ALLAPOT ' +
         ' from termekenyitesek t ' +
         '  where t.EGYED_ID = ' + EgyedId  +
         '  and ((t.DATUM>(select max(ellesek.ELLES_DATUM) from ELLESEK '+
         '          where ellesek.EGYED_ID=t.EGYED_ID) or '+
         '      (select 1 from ellesek where ellesek.EGYED_ID=t.EGYED_ID and rownum=1) is null)) ' +
         '  AND ROWNUM = 1 '+
         '  order by DATUM desc';

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := '';

  while not tq.Eof do
  begin
    if tq.FieldByName('EGYED_ID').AsString <> EmptyStr then
    begin
        Result := '';
        datum := tq.FieldByName('DATUM').AsdateTime;
        elozo_Vk := tq.FieldByName('ALLAPOT').AsString;
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.free;
end;


function TdtmTarka.UtolsoNvTermekenyites(EgyedId: string;  var Vissza: TTalParamList): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := ' select T.EGYED_ID, T.DATUM, T.KPLSZ, T.INSZ, T.MOD, T.ALLAPOT, T.VEMH_DATUM,' +
         '   T.TSZAM, T.ALLOMAS, T.EREDET, T.TIP ' +
         ' from termekenyitesek t ' +
         '  where t.EGYED_ID= ' + EgyedId  +
         '  and ((t.DATUM>(select max(ellesek.ELLES_DATUM) from ELLESEK '+
         '          where ellesek.EGYED_ID=t.EGYED_ID) or '+
         '      (select 1 from ellesek where ellesek.EGYED_ID=t.EGYED_ID and rownum=1) is null)) ' +
         '  AND ROWNUM = 1 '+
         '  order by DATUM desc';

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;

  while not tq.Eof do
  begin
    if tq.FieldByName('EGYED_ID').AsString <> EmptyStr then
    begin
        Result := true;
        Vissza.Add('DATUM', tq.FieldByName('DATUM').AsString);
        Vissza.Add('KPLSZ' , tq.FieldByName('KPLSZ').AsString);
        Vissza.Add('MOD' , tq.FieldByName('MOD').AsString);
        Vissza.Add('INSZ' , tq.FieldByName('INSZ').AsString);
        Vissza.Add('ALLAPOT' , tq.FieldByName('ALLAPOT').AsString);
        Vissza.Add('VEMH_DATUM' , tq.FieldByName('VEMH_DATUM').AsString);
        Vissza.Add('TSZAM' , tq.FieldByName('TSZAM').AsString);
        Vissza.Add('ALLOMAS' , tq.FieldByName('ALLOMAS').AsString);
        Vissza.Add('EREDET' , tq.FieldByName('EREDET').AsString);
        Vissza.Add('TIP' , tq.FieldByName('TIP').AsString);
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.free;
end;



function TdtmTarka.BikaAdat(var Klsz, Nev: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  if Klsz <> EmptyStr then
  begin
    SQL := 'select APA.KPLSZ,apa.NEV from APA ' +
             ' where apa.kplsz=' + quotedStr(UpperCase(klsz));
  end ;

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;

  if tq.FieldByName('KPLSZ').AsString <> EmptyStr then
  begin
      Result := true;
      Nev := tq.FieldByName('NEV').AsString;
      Klsz := tq.FieldByName('KPLSZ').AsString;
      // Rovidnev := tq.FieldByName('ROVID_NEV').AsString;
  end
  else begin
      Result := false;
  end;
  tq.Close;
  tq.free;
end;

function TdtmTarka.vaneTermreHivatkozoElles(EgyedId, Term_id: string ): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as van from ellesek e '+
         ' join egyedek ee on ee.id = e.egyed_id ' +
           ' where ee.id = '+ EgyedId +
            ' and e.e_term_id = '+ Term_id ;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;

  while not tq.Eof do
  begin
    if tq.FieldByName('VAN').AsString <> EmptyStr then
    begin
        Result := true;
    end
    else begin
        Result := false;
    end;

    tq.Next;
  end ;

  tq.Close;
  tq.Free;
end;



function TdtmTarka.VaneBika(klsz, id: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as van from APA t '+
         ' where t.kplsz = '+ quotedStr(KLSZ);

  if id <> EmptyStr then
    sql := sql + '  and t.id<>' + id;

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;

  while not tq.Eof do
  begin
    if tq.FieldByName('VAN').AsString <> EmptyStr then
    begin
        Result := true;
    end
    else begin
        Result := false;
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.free;
end;


function TdtmTarka.TenyeszetAlapAdatai: Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  getDir(0,AppPath);
  fr3Path := AppPath;

  if UpperCase(rightstr(AppPath,6)) = 'SOURCE' then
  begin
     AppPath := midstr(AppPath,1,Length(AppPath)-7);
  end;

  if LowerCase(LeftStr(AppPath, 13)) = '\\tsclient\c\' then
     AppPath := 'z:\' + rightStr(AppPath, Length(AppPath) - 13);

(*  SQL := 'select top 1 tt.ID, tt.ATKFT_KOD, tt.ENAR_KOD, tt.TELEP_NEV from tenyeszet tt';
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  while not tq.Eof do begin
    if tq.FieldByName('ID').AsString <> EmptyStr then begin
      sTenyeszetId := tq.FieldByName('ID').AsString;
      sTenyeszetNev := tq.FieldByName('TELEP_NEV').AsString;
      sATKFT_KOD := tq.FieldByName('ATKFT_KOD').AsString;
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.Free;  *)

  SQL := 'SELECT param.ATL_VEMH_NAP, ATL_SZARAZ_NAP, DB_VER, KELL_ELLETOS, ' +
         ' coalesce(TOMEG_ELLESKOR,0) as tomeg_elleskor, param.tenyeszet, ' +
         ' coalesce(GYOGYSZ_KLT,0) as GYOGYSZ_KLT, ' +
         ' AUT_MENT_KELL, AM0, AM1, Am2, AM3, AM4, Am5, AM6, UT_MENT_DAT, ' +
         ' SZARM_KEZELES, UT_FUTAS, teny.tnev2  ' +
         ' from param left join teny on teny.tkod = param.tenyeszet';

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do begin
    if tq.FieldByName('ATL_VEMH_NAP').AsString <> EmptyStr then
    begin
      iAtlVemhNapSzam := tq.FieldByName('ATL_VEMH_NAP').AsInteger;
      iAtlSzarazNapSzam := tq.FieldByName('ATL_SZARAZ_NAP').AsInteger;
      sDbVer := tq.FieldByName('DB_VER').Asstring;
      bKellElletos := tq.FieldByName('KELL_ELLETOS').AsInteger=1;
      iKellTomegElleskor := tq.FieldByName('TOMEG_ELLESKOR').AsInteger;
      iKellGyogyszerKlt := tq.FieldByName('GYOGYSZ_KLT').AsInteger;
      bKellAutMentes := tq.FieldByName('AUT_MENT_KELL').AsInteger = 1;
      bHetfo := tq.FieldByName('AM1').AsInteger=1;
      bKedd := tq.FieldByName('AM2').AsInteger=1;
      bSzerda := tq.FieldByName('AM3').AsInteger=1;
      bCsutortok := tq.FieldByName('AM4').AsInteger=1;
      bPentek := tq.FieldByName('AM5').AsInteger=1;
      bSzombat := tq.FieldByName('AM6').AsInteger=1;
      bVasarnap := tq.FieldByName('AM0').AsInteger=1;
      dUtMentesNap := tq.FieldByName('UT_MENT_DAT').AsDateTime;
      SzarmKezeles := tq.FieldByName('SZARM_KEZELES').AsInteger;
      sTenyeszetKod := tq.FieldByName('tenyeszet').AsString;
      sTenyeszetNev := tq.FieldByName('tnev2').AsString;
      Result := true;
    end
    else begin
      Result := false;
    end;

    tq.Next;
  end ;
  tq.Close;
  tq.Free;

end;



function TdtmTarka.VaneMarhaLevszam(Marhalevelszam,  Azonosito: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as van from EGYEDEK e ' +
         ' where e.MLEVEL1='+Quotedstr(Marhalevelszam)+
         ' and e.ENAR <> '+Quotedstr(Azonosito);
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do begin
    if tq.FieldByName('VAN').AsInteger > 0 then begin
        Result := true;
        exit;
    end else begin
        Result := false;
        exit;
    end;
  end ;
  tq.Close;
  tq.free;
end;

function TdtmTarka.KezelesAdat(var id, Kod, Nev, csoport: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  if csoport <> EmptyStr then begin
    SQL := 'SELECT * FROM KEZ_PARAM WHERE CSOPORT_KOD=' + quotedstr(csoport) +
           ' AND  KOD = ' + QuotedStr(kod);
  end else begin
    SQL := 'SELECT * FROM KEZ_PARAM WHERE ' +
           ' KOD = ' + QuotedStr(kod);
  end;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  if tq.FieldByName('ID').AsString <> EmptyStr then begin
      Result := true;
      ID := tq.FieldByName('ID').AsString;
      KOD := tq.FieldByName('KOD').AsString;
      NEV := tq.FieldByName('NEV').AsString;
  end else begin
      Result := false;
  end;
  tq.Close;
  tq.free;
end;



function TdtmTarka.UtolsoEllUtaniTerm(EgyedId: string; var TERM_ID, Term_dat, Bika, VK: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  result := false;

  if EgyedId = EmptyStr then
    Exit;

  SQL := 'select tt.id, tt.DATUM, tt.ALLAPOT, tt.KPLSZ ' +
         ' from TERMEKENYITESEK tt ' +
         ' where tt.ID = UT_TERM(' + EgyedId + ') ' +
         ' AND ROWNUM = 1 '+
         ' order by tt.DATUM DESC ';
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;

  while not tq.Eof do
  begin
    if tq.FieldByName('ID').AsString <> EmptyStr then
    begin
        Result := true;
        TERM_ID  := tq.FieldByName('ID').AsString;
        Term_dat := tq.FieldByName('DATUM').AsString;
        Bika := tq.FieldByName('KPLSZ').AsString;
        Vk := tq.FieldByName('ALLAPOT').AsString;
    end;

    tq.Next;
  end;

  tq.Close;
  tq.free;
end;


function TdtmTarka.VaneElegKeszlet(Mennyiseg: double; klt_id: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  if klt_id = EmptyStr then
  begin
    Result := false;
    exit;
  end;

  SQL := 'SELECT GYOGYSZER_KLT.AKT_KESZLET FROM GYOGYSZER_KLT ' +
         ' WHERE GYOGYSZER_KLT.ID = ' + klt_id;

  Result := false;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;

  if tq.FieldByName('AKT_KESZLET').AsString <> EmptyStr then
  begin
      result := tq.FieldByName('AKT_KESZLET').AsFloat >= Mennyiseg ;
  end;

  tq.Close;
  tq.free;
end;

function TdtmTarka.oszlopbanEzAzErtekSzerepel(sds: TTALSimpleDataSet;
  as_kodmezo_neve, as_ertek, as_uzenet_ha_van, as_feladat, as_id_mezo_neve,
  as_id: string; ab_hibauzenet_kell: boolean): boolean;
var
  dataset : TTALSimpleDataset;
begin
  result:= false;
  dataset := TTALSimpleDataset.Create(nil);
  DataSet.CloneCursor(sds, False);
  try
      // csak az újaknál kell megnézni, hogy a kód van-e mert a módosításnál tíltva van a kód
      if (DataSet.RecordCount>0) and (as_feladat='uj') then
      begin
          DataSet.Filter:= as_kodmezo_neve+'='+as_ertek;
          DataSet.Filtered:=true;

          if(DataSet.RecordCount>0) then
          begin
             if ab_hibauzenet_kell then
                dtmTarka.MsgDlg(as_uzenet_ha_van,mterror,[mbOK],0 );
             result:=true;
          end;
          DataSet.Filtered:=false;
      end;
  finally
      dataset.Free;
  end;
end;

function TdtmTarka.VaneDatumnalKesobbiAdat(EgyedId,  Datum: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'SELECT 1 AS VAN FROM ELLESEK E ' +
         ' JOIN EGYEDEK T ON T.ID=E.EGYED_ID ' +
         ' WHERE T.ID = '+ EgyedId +
         ' AND E.ELLES_DATUM>' + Quotedstr(DATUM);

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;

  result := false;

  try
    while not tq.Eof do begin
      if tq.FieldByName('VAN').AsString <> EmptyStr then begin
          Result := true;
      end else begin
          Result := false;
      end;
      tq.Next;
    end ;
    tq.Close;
    tq.free;
    if Result then exit;
    SQL := 'SELECT 1 AS VAN FROM TERMEKENYITESEK T ' +
           ' JOIN EGYEDEK E ON E.ID = T.EGYED_ID ' +
           ' WHERE E.ID = ' + EgyedId  +
           ' AND T.DATUM>' + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(DATUM)));
    tq := TTalQuery.Create(Self);
    tq.Connection := dtmTarka.cnTarka;
    tq.SQL.Add(SQL);
    tq.Open;

    while not tq.Eof do begin
      if tq.FieldByName('VAN').AsString <> EmptyStr then begin
          Result := true;
      end else begin
          Result := false;
      end;
      tq.Next;
    end ;
    tq.Close;
    tq.free;
    if Result then exit;
  finally

  end;
end;



procedure TdtmTarka.sdsInfoENARGetText(Sender: TField; var Text: String;
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


procedure TdtmTarka.Nyomtat(sds:TTalSimpleDataSet; Nyomfil :string);
var
  frxDataset  : TfrxDBDataset;
  frxRepLista : TfrxReport;
begin
  frxDataset := TfrxDBDataset.Create(Self);
  frxDataset.DataSet := sds;
  frxRepLista := TfrxReport.Create(self);

  if frxRepLista.LoadFromFile(Nyomfil) then
  begin
     // paraméter átadás a lista fejhez
     try
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
       frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
       frxRepLista.DataSet := frxDataset;
       frxRepLista.ShowReport();
     finally
       frxDataset.free;
       frxRepLista.Free;
     end;
  end;
end;



function TdtmTarka.IniFileRead(szekcio, kulcs, default: string): string;
var
   IniFile : TIniFile;
   CurrentIniFile : string;
   CurrentIniPath : string;
//   SName : string;
begin
  result := default;
  getDir(0,AppPath);
  if UpperCase(rightstr(AppPath,6)) = 'SOURCE' then begin
     AppPath := midstr(AppPath,1,Length(AppPath)-7);
  end;

  if LowerCase(LeftStr(AppPath, 13)) = '\\tsclient\c\' then
     AppPath := 'z:\' + rightStr(AppPath, Length(AppPath) - 13);

  GetDir(0,CurrentIniPath);
  CurrentIniFile := CurrentIniPath + '\wtarka.ini';

  // inifile megnyitása
  IniFile := TIniFile.Create(CurrentIniFile);
  Result := IniFile.ReadString(szekcio,kulcs,default);

  IniFile.Free;
end;



procedure TdtmTarka.IniFileWrite(szekcio, kulcs, ertek: string);
var
   IniFile : TIniFile;
   CurrentIniFile : string;
   CurrentIniPath : string;
begin
  GetDir(0,CurrentIniPath);
  CurrentIniFile := CurrentIniPath + '\wtarka.ini';

  // inifile megnyitása
  IniFile := TIniFile.Create(CurrentIniFile);

  IniFile.WriteString(szekcio, kulcs , ertek);
  IniFile.Free;
end;



function TdtmTarka.MsgDlg(msg: string; dlgtype: TMsgDlgType;
  Buttons: TMsgDlgButtons; v: integer): word;
var i: integer;
    Ref: TClass;
begin
  MsgDialog := CreateMessageDialog(msg,dlgtype,buttons);
  case dlgtype of
    mterror: begin
               MsgDialog.Caption:='Hiba...';
             end;
    mtwarning: begin
                 MsgDialog.Caption:='Figyelem...';
               end;
    mtinformation: MsgDialog.Caption:='Info...';
    mtconfirmation: begin
                      MsgDialog.Caption:='Kérdés...';
                    end;
    mtcustom: begin
                MsgDialog.Caption:='Üzenet...';
              end;
  else
    MsgDialog.Caption:='';
  end;
  MsgDialog.BorderIcons:=MsgDialog.BorderIcons-[biSystemMenu];
  for i:=1 to MsgDialog.ControlCount-1 do
  begin
    Ref:=MsgDialog.Controls[i].ClassType;
    if Ref.ClassName='TButton'
    then With MsgDialog.Controls[i] as TButton do
         begin
           if Caption='&Yes'
           then Caption:='&Igen'
           else if Caption='&No'
                then Caption:='&Nem'
           else if Caption='OK'
                then Caption:='&Rendben'
           else if Caption='Cancel'
                then Caption:='&Mégsem'
           else if Caption='&Abort'
                then Caption:='&Kilépés'
           else if Caption='&Retry'
                then Caption:='&Újra'
           else if Caption='&Ignore'
                then Caption:='Rá&hagy'
           else if Caption='&All'
                then Caption:='Min&d'
           else if Caption='N&o to All'
                then Caption:='&Egyet sem'
           else if Caption='Yes to &All'
                then Caption:='Minde&gyiket'
           else if Caption='&Help'
                then Caption:='&Súgó';
         end;
  end;
  Result:=MsgDialog.ShowModal;
  MsgDialog.Free;
end;



function TdtmTarka.Vaneenyeszet(TenyKod: string): string;
var
  SQL : string;
  tq : Ttalquery;
begin
  if tenyKod= EmptyStr then
  begin
    Result := '';
    exit;
  end;

  SQL := 'select  teny.tnev2 from teny where teny.tkod=' + quotedstr(TenyKod);

  Result := '';
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;

  if tq.FieldByName('tnev2').AsString <> EmptyStr then
  begin
      result := tq.FieldByName('tnev2').AsString ;
  end;

  tq.Close;
  tq.free;
end;

function TdtmTarka.VaneFuljelzo(Azonosito: string): Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as van from fuljelzo ' +
           ' where (fuljelzo.kiadas_datum is null) and ((fuljelzo.fulj_azon='+quotedStr( UpperCase(Azonosito))+') or ' +
           '  (fuljelzo.fulj_azon=''HU'+UpperCase(Azonosito)+'''))';
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do begin
    if tq.FieldByName('VAN').AsString <> EmptyStr then begin
        Result := true;
    end else begin
        Result := false;
    end;
    tq.Next;
  end ;
  tq.Close;
  tq.Free;
end;




function TdtmTarka.FuljelzoKiadva(be: string): boolean;
var
  SQL : string;
begin
  Result := true;
  SQL := ' update FULJELZO set FULJELZO.KIADAS_DATUM = CURRENT_TIMESTAMP '+
         ' where fuljelzo.FULJ_AZON=' + Quotedstr(be) +
         '   or fuljelzo.FULJ_AZON=''HU'+ be + '''';

  cnTarka.BeginTrans;
  try
    cnTarka.Execute(SQL);
    cnTarka.CommitTrans;
  except
    if cnTarka.InTransaction then begin
      cnTarka.RollbackTrans;
    end;
  end;
end;


function TdtmTarka.Tom205szam(Egyed_id: string; valdat: TDate; valtom: double): double;
var
  SQL : string;
  tq : Ttalquery;
  ci : Double;
  nap : Extended;
  ss : double;
begin
  result := 0.0;
  SQL := 'select ee.szuldat, coalesce(ee.szul_suly,0) as szul_suly from egyedek ee ' +
         ' where id = '+Egyed_id;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  while not tq.Eof do begin
    if tq.FieldByName('szuldat').Value <> NULL then begin
      if tq.FieldByName('szul_suly').Value > 0 then begin
         ss := ValTom - tq.FieldByName('szul_suly').Value;
         nap := VALDAT - tq.FieldByName('szuldat').Value;
         if nap <> 0 then
           ci := (205 * ss  / nap ) + tq.FieldByName('szul_suly').Value
         else
           ci := 0.0;
         Result := ci;
      end;
    end else begin
        Result := 0.0;
    end;
    exit;
  end ;
  tq.Close;
  tq.Free;
end;



procedure TdtmTarka.sdsTermekenyitesekVEMH_DATUMGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Sender.Value = NULL) or (Sender.Value = '0:00:00') then
    Text := ''
  else
    Text := Sender.Value;

end;



procedure TdtmTarka.myCopyFile(Fromf, Tof: String);
var
 FileCopy, FileCreate: TFileStream;
begin
  if lowercase(fromf) = lowercase(Tof) then exit;

  FileCopy:= TFileStream.Create(Fromf, fmOpenRead);
  try
    FileCreate:= TFileStream.Create(Tof, fmOpenWrite or fmCreate);
    try
      FileCreate.copyFrom(FileCopy, FileCopy.size);
    finally
      FileCreate.Free;
    end;
   finally
     FileCopy.Free;
  end;
end;



function TdtmTarka.UstvDatum(tol,ig : string; var utol : Tdate;var uig : Tdate):Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  result := false;
  SQL := 'SELECT min(tomegek.datum) as MINDAT, max(tomegek.datum) AS MAXDAT ' +
         ' FROM TOMEGEK ' +
         ' JOIN EGYEDEK ON EGYEDEK.ID = TOMEGEK.EGYED_ID  ' +
         ' JOIN WUSTV ON WUSTV.EGYED_ID = EGYEDEK.ID AND WUSTV.DATUM =  ' +
         '         (SELECT MIN(DATUM) FROM WUSTV  ' +
         '             WHERE WUSTV.DATUM BETWEEN TO_DATE(' + quotedstr(tol) + ',''yyyy.mm.dd'') AND TO_DATE(' + quotedstr(ig) + ',''yyyy.mm.dd'')) ' +
         ' where EGYEDEK.TENYESZET = ' + quotedstr(dtmTarka.TenyeszetTKOD) + ' AND TOMEGEK.DATUM  BETWEEN TO_DATE(' + quotedstr(tol) + ',''yyyy.mm.dd'') AND TO_DATE(' + quotedstr(ig) + ',''yyyy.mm.dd'')';

  (* SQL := 'SELECT min(tomegek.datum) as MINDAT, max(tomegek.datum) AS MAXDAT ' +
    //     ' FROM TOMEGEK ' +
  //       ' JOIN EGYEDEK ON EGYEDEK.ID = TOMEGEK.EGYED_ID  ' +
  //       ' JOIN USTV ON USTV.ENAR = EGYEDEK.ENAR AND USTV.DATUM =  ' +
  //       '         (SELECT MIN(DATUM) FROM USTV  ' +
         '             WHERE USTV.DATUM BETWEEN TO_DATE(' + quotedstr(tol) + ',''yyyy.mm.dd'') AND TO_DATE(' + quotedstr(ig) + ',''yyyy.mm.dd'')) ' +
         ' where EGYEDEK.TENYESZET = ' + quotedstr(dtmTarka.TenyeszetTKOD) + ' AND TOMEGEK.DATUM  BETWEEN TO_DATE(' + quotedstr(tol) + ',''yyyy.mm.dd'') AND TO_DATE(' + quotedstr(ig) + ',''yyyy.mm.dd'')';
    *)
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  while not tq.Eof do begin
    if tq.FieldByName('MINDAT').Value <> NULL then begin
      if tq.FieldByName('MINDAT').Value > 0 then begin
         uTol := tq.FieldByName('MINDAT').Value;
         uIg  := tq.FieldByName('MAXDAT').Value;
         Result := True;
      end;
    end else begin
        Result := false;
    end;
    exit;
  end ;
  tq.Close;
  tq.Free;
end;



procedure TdtmTarka.EllesekUpdate(tkod: string);
var
  SQL : string;
begin
  SQL := ' update ELLESEK ' +
         ' set ELLESEK.E_TERM_ID = (select id from TERMEKENYITESEK ' +
         '      where TERMEKENYITESEK.EGYED_ID = ELLESEK.EGYED_ID ' +
         '      and TERMEKENYITESEK.DATUM = ELLESEK.E_TERM_DAT ' +
         '      and rownum = 1) ' +
         ' where (select id from TERMEKENYITESEK ' +
         '      where TERMEKENYITESEK.EGYED_ID = ELLESEK.EGYED_ID ' +
         '      and TERMEKENYITESEK.DATUM = ELLESEK.E_TERM_DAT ' +
         '      and rownum = 1) is not null ';

//  cnTarka.BeginTrans;
  try
    cnTarka.Execute(SQL);
//    cnTarka.CommitTrans;
  except
//    if cnTarka.InTransaction then begin
//      cnTarka.RollbackTrans;
//    end;
  end;
end;


function TdtmTarka.GetFajtaKod(enar:string): string;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select fajta_szam(e.id) as kod from egyedek e  where e.ENAR = ' + quotedstr(enar) ;
  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := '';
  while not tq.Eof do begin
    Result := tq.FieldByName('KOD').AsString;
    exit;
  end ;
  tq.Close;
end;

procedure TdtmTarka.sdsInfoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
   dtmTarka.MsgDlg('ERROR :' + E.Message, mtWarning, [mbOK], 0);
end;

end.
