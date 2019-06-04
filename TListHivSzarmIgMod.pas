unit TListHivSzarmIgMod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, uValidedit, uTALEdit, uTALLabel, uTALGroupBox,
  DB, DBClient, uTALSimpleDataSet, ComCtrls, Buttons, uTALBitBtn,
  uDBValidedit, uTALDBEdit, ADODB, uTALComboBox, DBCtrls,
  uTALDBLookupComboBox, uTalQuery, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTalParams, uTALConnection, uTALStoredProc, frxClass, frxDBSet;

type
  TfrmHSzIMod = class(TForm)
    btnRogzit: TTalBitBtn;
    btnExit: TTalBitBtn;
    dsHivSzarmIg: TDataSource;        
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox01: TGroupBox;
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    TalLabel3: TTalLabel;
    TalLabel4: TTalLabel;
    TalLabel5: TTalLabel;
    TalLabel6: TTalLabel;
    TalLabel7: TTalLabel;
    TalLabel8: TTalLabel;
    TalLabel9: TTalLabel;
    TalLabel10: TTalLabel;
    TalLabel11: TTalLabel;
    TalLabel12: TTalLabel;
    TalLabel14: TTalLabel;
    TalLabel15: TTalLabel;
    TalLabel16: TTalLabel;
    TalLabel17: TTalLabel;
    TalLabel18: TTalLabel;
    TalLabel19: TTalLabel;
    TalDBEdit1: TTalDBEdit;
    TalDBEdit2: TTalDBEdit;
    TalDBEdit3: TTalDBEdit;
    TalDBEdit4: TTalDBEdit;
    TalDBEdit5: TTalDBEdit;
    TalDBEdit6: TTalDBEdit;
    TalDBEdit10: TTalDBEdit;
    TalDBEdit11: TTalDBEdit;
    TalDBEdit12: TTalDBEdit;
    TalDBEdit13: TTalDBEdit;
    TalDBEdit14: TTalDBEdit;
    TalDBEdit15: TTalDBEdit;
    TalDBEdit16: TTalDBEdit;
    TalDBEdit17: TTalDBEdit;
    TabSheet2: TTabSheet;
    GroupBox02: TTalGroupBox;
    TalLabel13: TTalLabel;
    TalLabel20: TTalLabel;
    TalLabel21: TTalLabel;
    TalLabel22: TTalLabel;
    TalLabel23: TTalLabel;
    TalLabel24: TTalLabel;
    TalLabel25: TTalLabel;
    TalLabel26: TTalLabel;
    TalLabel27: TTalLabel;
    TalLabel28: TTalLabel;
    TalLabel29: TTalLabel;
    TalLabel30: TTalLabel;
    TalLabel31: TTalLabel;
    TalDBEdit18: TTalDBEdit;
    TalDBEdit19: TTalDBEdit;
    TalDBEdit20: TTalDBEdit;
    TalDBEdit21: TTalDBEdit;
    TalDBEdit22: TTalDBEdit;
    TalDBEdit25: TTalDBEdit;
    TalDBEdit26: TTalDBEdit;
    TalDBEdit27: TTalDBEdit;
    TalDBEdit28: TTalDBEdit;
    TalDBEdit29: TTalDBEdit;
    TalDBEdit30: TTalDBEdit;
    TabSheet3: TTabSheet;
    GroupBox03: TTalGroupBox;
    TalLabel33: TTalLabel;
    TalLabel34: TTalLabel;
    TalLabel35: TTalLabel;
    TalLabel36: TTalLabel;
    TalLabel37: TTalLabel;
    TalLabel38: TTalLabel;
    TalLabel39: TTalLabel;
    TalLabel40: TTalLabel;
    TalLabel41: TTalLabel;
    TalLabel42: TTalLabel;
    TalLabel43: TTalLabel;
    TalLabel44: TTalLabel;
    TalLabel45: TTalLabel;
    TalLabel46: TTalLabel;
    TalDBEdit32: TTalDBEdit;
    TalDBEdit33: TTalDBEdit;
    TalDBEdit34: TTalDBEdit;
    TalDBEdit35: TTalDBEdit;
    TalDBEdit36: TTalDBEdit;
    TalDBEdit39: TTalDBEdit;
    TalDBEdit40: TTalDBEdit;
    TalDBEdit41: TTalDBEdit;
    TalDBEdit42: TTalDBEdit;
    TalDBEdit43: TTalDBEdit;
    TalDBEdit44: TTalDBEdit;
    TabSheet4: TTabSheet;
    GroupBox04: TTalGroupBox;
    TalGroupBox4: TTalGroupBox;
    TalLabel57: TTalLabel;
    TalLabel58: TTalLabel;
    TalLabel59: TTalLabel;
    TalLabel60: TTalLabel;
    TalDBEdit52: TTalDBEdit;
    TalDBEdit53: TTalDBEdit;
    TalDBEdit54: TTalDBEdit;
    TalDBEdit55: TTalDBEdit;
    TalGroupBox5: TTalGroupBox;
    TalLabel61: TTalLabel;
    TalLabel62: TTalLabel;
    TalLabel63: TTalLabel;
    TalLabel64: TTalLabel;
    TalDBEdit56: TTalDBEdit;
    TalDBEdit57: TTalDBEdit;
    TalDBEdit60: TTalDBEdit;
    TalDBEdit61: TTalDBEdit;
    TalGroupBox6: TTalGroupBox;
    TalLabel65: TTalLabel;
    TalLabel66: TTalLabel;
    TalLabel67: TTalLabel;
    TalLabel68: TTalLabel;
    TalDBEdit58: TTalDBEdit;
    TalDBEdit59: TTalDBEdit;
    TalDBEdit62: TTalDBEdit;
    TalDBEdit63: TTalDBEdit;
    TalGroupBox7: TTalGroupBox;
    TalLabel47: TTalLabel;
    TalLabel48: TTalLabel;
    TalLabel49: TTalLabel;
    TalLabel50: TTalLabel;
    TalLabel51: TTalLabel;
    TalLabel52: TTalLabel;
    TalLabel53: TTalLabel;
    TalLabel54: TTalLabel;
    TalLabel55: TTalLabel;
    TalLabel56: TTalLabel;
    TalDBEdit45: TTalDBEdit;
    TalDBEdit46: TTalDBEdit;
    TalDBEdit47: TTalDBEdit;
    TalDBEdit48: TTalDBEdit;
    TalDBEdit49: TTalDBEdit;
    TabSheet5: TTabSheet;
    GroupBox05: TTalGroupBox;
    TalGroupBox9: TTalGroupBox;
    TalLabel69: TTalLabel;
    TalLabel70: TTalLabel;
    TalLabel71: TTalLabel;
    TalLabel72: TTalLabel;
    TalLabel73: TTalLabel;
    TalLabel74: TTalLabel;
    TalLabel75: TTalLabel;
    TalLabel76: TTalLabel;
    TalDBEdit64: TTalDBEdit;
    TalDBEdit65: TTalDBEdit;
    TalDBEdit66: TTalDBEdit;
    TalDBEdit67: TTalDBEdit;
    TalDBEdit68: TTalDBEdit;
    TalDBEdit69: TTalDBEdit;
    TalDBEdit70: TTalDBEdit;
    TalGroupBox10: TTalGroupBox;
    TalLabel77: TTalLabel;
    TalLabel78: TTalLabel;
    TalLabel79: TTalLabel;
    TalLabel106: TTalLabel;
    TalDBEdit71: TTalDBEdit;
    TalDBEdit72: TTalDBEdit;
    TalDBEdit75: TTalDBEdit;
    TalDBEdit76: TTalDBEdit;
    TalGroupBox11: TTalGroupBox;
    TalLabel80: TTalLabel;
    TalLabel81: TTalLabel;
    TalLabel82: TTalLabel;
    TalLabel83: TTalLabel;
    TalDBEdit73: TTalDBEdit;
    TalDBEdit74: TTalDBEdit;
    TalDBEdit77: TTalDBEdit;
    TalDBEdit78: TTalDBEdit;
    TabSheet6: TTabSheet;
    GroupBox06: TTalGroupBox;
    TalGroupBox13: TTalGroupBox;
    TalLabel84: TTalLabel;
    TalLabel85: TTalLabel;
    TalLabel86: TTalLabel;
    TalLabel87: TTalLabel;
    TalDBEdit89: TTalDBEdit;
    TalDBEdit90: TTalDBEdit;
    TalDBEdit91: TTalDBEdit;
    TalDBEdit92: TTalDBEdit;
    TalGroupBox14: TTalGroupBox;
    TalLabel88: TTalLabel;
    TalLabel89: TTalLabel;
    TalLabel90: TTalLabel;
    TalLabel91: TTalLabel;
    TalDBEdit93: TTalDBEdit;
    TalDBEdit94: TTalDBEdit;
    TalDBEdit97: TTalDBEdit;
    TalDBEdit98: TTalDBEdit;
    TalGroupBox15: TTalGroupBox;
    TalLabel92: TTalLabel;
    TalLabel93: TTalLabel;
    TalLabel94: TTalLabel;
    TalLabel95: TTalLabel;
    TalDBEdit95: TTalDBEdit;
    TalDBEdit96: TTalDBEdit;
    TalDBEdit99: TTalDBEdit;
    TalDBEdit100: TTalDBEdit;
    TalGroupBox16: TTalGroupBox;
    TalLabel96: TTalLabel;
    TalLabel97: TTalLabel;
    TalLabel98: TTalLabel;
    TalLabel99: TTalLabel;
    TalLabel100: TTalLabel;
    TalLabel101: TTalLabel;
    TalLabel102: TTalLabel;
    TalLabel103: TTalLabel;
    TalLabel104: TTalLabel;
    TalLabel105: TTalLabel;
    TalDBEdit79: TTalDBEdit;
    TalDBEdit80: TTalDBEdit;
    TalDBEdit81: TTalDBEdit;
    TalDBEdit82: TTalDBEdit;
    TalDBEdit83: TTalDBEdit;
    TalDBEdit86: TTalDBEdit;
    TalDBEdit87: TTalDBEdit;
    TalDBEdit88: TTalDBEdit;
    TabSheet7: TTabSheet;
    GroupBox07: TTalGroupBox;
    TalGroupBox18: TTalGroupBox;
    TalLabel107: TTalLabel;
    TalLabel108: TTalLabel;
    TalLabel109: TTalLabel;
    TalLabel110: TTalLabel;
    TalLabel111: TTalLabel;
    TalLabel112: TTalLabel;
    TalLabel113: TTalLabel;
    TalLabel114: TTalLabel;
    TalDBEdit101: TTalDBEdit;
    TalDBEdit102: TTalDBEdit;
    TalDBEdit103: TTalDBEdit;
    TalDBEdit104: TTalDBEdit;
    TalDBEdit105: TTalDBEdit;
    TalDBEdit106: TTalDBEdit;
    TalDBEdit107: TTalDBEdit;
    TalGroupBox19: TTalGroupBox;
    TalLabel115: TTalLabel;
    TalLabel116: TTalLabel;
    TalLabel117: TTalLabel;
    TalLabel118: TTalLabel;
    TalDBEdit108: TTalDBEdit;
    TalDBEdit109: TTalDBEdit;
    TalDBEdit112: TTalDBEdit;
    TalDBEdit113: TTalDBEdit;
    TalGroupBox20: TTalGroupBox;
    TalLabel119: TTalLabel;
    TalLabel120: TTalLabel;
    TalLabel121: TTalLabel;
    TalLabel122: TTalLabel;
    TalDBEdit110: TTalDBEdit;
    TalDBEdit111: TTalDBEdit;
    TalDBEdit114: TTalDBEdit;
    TalDBEdit115: TTalDBEdit;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    GroupBox09: TTalGroupBox;
    TalGroupBox22: TTalGroupBox;
    TalDBEdit116: TTalDBEdit;
    TalDBEdit117: TTalDBEdit;
    TalDBEdit118: TTalDBEdit;
    TalGroupBox23: TTalGroupBox;
    TulajKod: TTalDBEdit;
    TulajNev: TTalDBEdit;
    TulajCim: TTalDBEdit;
    GroupBox08: TTalGroupBox;
    TalGroupBox25: TTalGroupBox;
    TalLabel123: TTalLabel;
    TalDBEdit122: TTalDBEdit;
    TalLabel124: TTalLabel;
    TalLabel125: TTalLabel;
    TalLabel126: TTalLabel;
    TalLabel127: TTalLabel;
    TalLabel128: TTalLabel;
    TalLabel129: TTalLabel;
    TalLabel130: TTalLabel;
    TalLabel131: TTalLabel;
    TalLabel132: TTalLabel;
    TalLabel133: TTalLabel;
    TalLabel134: TTalLabel;
    TalLabel135: TTalLabel;
    TalLabel136: TTalLabel;
    TalLabel137: TTalLabel;
    TalDBEdit123: TTalDBEdit;
    TalDBEdit124: TTalDBEdit;
    TalDBEdit125: TTalDBEdit;
    TalDBEdit126: TTalDBEdit;
    TalDBEdit127: TTalDBEdit;
    TalDBEdit130: TTalDBEdit;
    TalDBEdit131: TTalDBEdit;
    TalDBEdit132: TTalDBEdit;
    TalDBEdit133: TTalDBEdit;
    TalDBEdit134: TTalDBEdit;
    TalDBEdit135: TTalDBEdit;
    TalDBEdit136: TTalDBEdit;
    TalGroupBox26: TTalGroupBox;
    TalLabel138: TTalLabel;
    TalLabel139: TTalLabel;
    TalLabel140: TTalLabel;
    TalLabel141: TTalLabel;
    TalLabel142: TTalLabel;
    TalDBEdit137: TTalDBEdit;
    TalDBEdit138: TTalDBEdit;
    TalDBEdit139: TTalDBEdit;
    TalDBEdit140: TTalDBEdit;
    TalDBEdit141: TTalDBEdit;
    TalGroupBox27: TTalGroupBox;
    TalLabel143: TTalLabel;
    TalLabel144: TTalLabel;
    TalLabel145: TTalLabel;
    TalLabel146: TTalLabel;
    TalLabel147: TTalLabel;
    TalLabel148: TTalLabel;
    TalLabel149: TTalLabel;
    TalLabel150: TTalLabel;
    TalLabel151: TTalLabel;
    TalLabel152: TTalLabel;
    TalLabel153: TTalLabel;
    TalLabel154: TTalLabel;
    TalDBEdit142: TTalDBEdit;
    TalDBEdit143: TTalDBEdit;
    TalDBEdit144: TTalDBEdit;
    TalDBEdit145: TTalDBEdit;
    TalDBEdit146: TTalDBEdit;
    TalDBEdit147: TTalDBEdit;
    TalDBEdit148: TTalDBEdit;
    TalDBEdit149: TTalDBEdit;
    TalDBEdit150: TTalDBEdit;
    TalDBEdit151: TTalDBEdit;
    TalDBEdit152: TTalDBEdit;
    TalDBEdit153: TTalDBEdit;
    TalDBEdit154: TTalDBEdit;
    TalDBEdit155: TTalDBEdit;
    TalLabel155: TTalLabel;
    TalLabel156: TTalLabel;
    c: TTalLabel;
    TalLabel158: TTalLabel;
    TalLabel159: TTalLabel;
    TalLabel160: TTalLabel;
    sdsHSzIModLap: TTalSimpleDataSet;
    dsHivSzarmLap: TDataSource;
    qComboTolt: TADOQuery;
    stpSzarmigMod: TADOStoredProc;
    cbEgyedFajtaNev: TTalDBLookupComboBox;
    qryEfajta: TTalQuery;
    qryEfajtaFKOD: TSmallintField;
    qryEfajtaFNEV: TWideStringField;
    dtsEfajta: TDataSource;
    cbEgyedIvarNev: TTalDBLookupComboBox;
    qryIvar: TTalQuery;
    dtsIvar: TDataSource;
    qryIvarKOD: TWideStringField;
    qryIvarKOD_NEV: TWideStringField;
    qryApaFajta: TTalQuery;
    SmallintField1: TSmallintField;
    WideStringField1: TWideStringField;
    dtsApaFajta: TDataSource;
    cbApaFajtaNev: TTalDBLookupComboBox;
    qryAnyaFajta: TTalQuery;
    SmallintField2: TSmallintField;
    WideStringField2: TWideStringField;
    dtsAnyaFajta: TDataSource;
    cbAnyaFajtaNev: TTalDBLookupComboBox;
    cbApaiNagyapaFajtaNev: TTalDBLookupComboBox;
    qryApaapa: TTalQuery;
    SmallintField3: TSmallintField;
    WideStringField3: TWideStringField;
    dtsApaapa: TDataSource;
    cbAnyaiNagyapaFajtaNev: TTalDBLookupComboBox;
    qryAnyaApa: TTalQuery;
    SmallintField4: TSmallintField;
    WideStringField4: TWideStringField;
    dtsAnyaApa: TDataSource;
    qryTFajta: TTalQuery;
    SmallintField5: TSmallintField;
    WideStringField5: TWideStringField;
    dtsTfajta: TDataSource;
    cbTermekenyitoFajtaNev: TTalDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    TalLabel163: TTalLabel;
    edtSOR: TTalDBEdit;
    TalLabel164: TTalLabel;
    edtPER: TTalDBEdit;
    TalLabel165: TTalLabel;
    TalDBEdit50: TTalDBEdit;
    TalLabel157: TTalLabel;
    HitDatum: TTalDBEdit;
    TalLabel161: TTalLabel;
    KiallDatum: TTalDBEdit;
    grdVal: TTalDBGrid;
    dtsKeres: TDataSource;
    sdsKeres: TTalSimpleDataSet;
    sdsKeresSOR: TIntegerField;
    sdsKeresPER: TIntegerField;
    sdsKeresENAR: TWideStringField;
    sdsKeresKIDAT: TDateTimeField;
    sdsKeresKPLSZ: TBCDField;
    btnNew: TTalBitBtn;
    btnUpdate: TTalBitBtn;
    btnCancel: TTalBitBtn;
    spCreateNewSZLAPOK: TTalStoredProc;
    btnDelete: TTalBitBtn;
    btnPrint: TTalBitBtn;
    btnExport: TTalBitBtn;
    lbListanev: TLabel;
    frxDBSzLapok: TfrxDBDataset;
    sdsListSzLapok: TTalSimpleDataSet;
    sdsListSzLapokIGDAT: TDateTimeField;
    sdsListSzLapokTKOD: TWideStringField;
    sdsListSzLapokUKOD: TWideStringField;
    sdsListSzLapokEGY: TWideStringField;
    sdsListSzLapokSOR: TIntegerField;
    sdsListSzLapokPER: TIntegerField;
    sdsListSzLapokMAS: TWideStringField;
    sdsListSzLapokKIDAT: TDateTimeField;
    sdsListSzLapokHITDAT: TDateTimeField;
    sdsListSzLapokNYELV: TWideStringField;
    sdsListSzLapokKPLSZ: TBCDField;
    sdsListSzLapokENAR: TWideStringField;
    sdsListSzLapokFULSZAM: TWideStringField;
    sdsListSzLapokNEV: TWideStringField;
    sdsListSzLapokSZULDAT: TDateTimeField;
    sdsListSzLapokTKV: TWideStringField;
    sdsListSzLapokFAJTAKOD: TIntegerField;
    sdsListSzLapokFAJTANEV: TWideStringField;
    sdsListSzLapokFAJTA_SZAZ: TBCDField;
    sdsListSzLapokIVAR: TWideStringField;
    sdsListSzLapokSV: TIntegerField;
    sdsListSzLapokELETNAPI_TGY: TIntegerField;
    sdsListSzLapokSTV_TGY: TIntegerField;
    sdsListSzLapokKMI: TBCDField;
    sdsListSzLapokTIPUS: TWideStringField;
    sdsListSzLapokIZMOLTSAG: TWideStringField;
    sdsListSzLapokLABSZERKEZET: TWideStringField;
    sdsListSzLapokERTEKELES_DATUMA: TDateTimeField;
    sdsListSzLapokAPA_KPLSZ: TBCDField;
    sdsListSzLapokAPA_ENAR: TWideStringField;
    sdsListSzLapokAPA_SZULDAT: TDateTimeField;
    sdsListSzLapokAPA_NEV: TWideStringField;
    sdsListSzLapokAPA_FULSZAM: TWideStringField;
    sdsListSzLapokAPA_FAJTAKOD: TIntegerField;
    sdsListSzLapokAPA_FAJTANEV: TWideStringField;
    sdsListSzLapokAPA_FAJTA_SZAZ: TBCDField;
    sdsListSzLapokAPA_SV: TIntegerField;
    sdsListSzLapokAPA_ETGY: TIntegerField;
    sdsListSzLapokAPA_STV_TGY: TIntegerField;
    sdsListSzLapokAPA_TIPUS: TWideStringField;
    sdsListSzLapokAPA_IZMOLTSAG: TWideStringField;
    sdsListSzLapokAPA_LABSZERKEZET: TWideStringField;
    sdsListSzLapokAPA_ERT_DAT: TDateTimeField;
    sdsListSzLapokANYA_NEV: TWideStringField;
    sdsListSzLapokANYA_SZULDAT: TDateTimeField;
    sdsListSzLapokANYA_ENAR: TWideStringField;
    sdsListSzLapokANYA_ELLSZAM: TWideStringField;
    sdsListSzLapokANYA_FULSZAM: TWideStringField;
    sdsListSzLapokANYA_FAJTA_KOD: TIntegerField;
    sdsListSzLapokANYA_FAJTANEV: TWideStringField;
    sdsListSzLapokANYA_FAJTA_SZAZ: TBCDField;
    sdsListSzLapokANYA_SV: TIntegerField;
    sdsListSzLapokANYA_KMI: TBCDField;
    sdsListSzLapokANYA_TIPUS: TWideStringField;
    sdsListSzLapokANYA_IZMOLTSAG: TWideStringField;
    sdsListSzLapokANYA_LABSZERKEZET: TWideStringField;
    sdsListSzLapokANYA_ERT_DAT: TDateTimeField;
    sdsListSzLapokAPAI_NAGYAPA_NEV: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_SZULDAT: TDateTimeField;
    sdsListSzLapokAPAI_NAGYAPA_KPLSZ: TBCDField;
    sdsListSzLapokAPAI_NAGYAPA_ENAR: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_FULSZAM: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_FAJTAKOD: TIntegerField;
    sdsListSzLapokAPA_NAGYAPA_FAJTANEV: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_FAJTA_SZAZ: TBCDField;
    sdsListSzLapokAPAI_NAGYAPA_SV: TIntegerField;
    sdsListSzLapokAPAI_NAGYAPA_TGY: TIntegerField;
    sdsListSzLapokAPAI_NAGYAPA_STV_TGY: TIntegerField;
    sdsListSzLapokAPAI_NAGYAPA_TIPUS: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_IZMOLTSAG: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_LABSZERKEZET: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_ERTDAT: TDateTimeField;
    sdsListSzLapokAPAI_NAGYAPA_APJA_KPLSZ: TBCDField;
    sdsListSzLapokAPAI_NAGYAPA_APJA_ENAR: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_APJA_FULSZAM: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_APJA_NEV: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_ANYJA_ENAR: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField;
    sdsListSzLapokAPAI_NAGYAPA_ANYJA_NEV: TWideStringField;
    sdsListSzLapokAPAI_NAGYANYA_NEV: TWideStringField;
    //sdsListSzLapokAPAI_NAGYANYA_SZULDAT: TDateTimeField;
    sdsListSzLapokAPAI_NAGYANYA_ENAR: TWideStringField;
    sdsListSzLapokAPAI_NAGYANYA_ELLSZAM: TWideStringField;
    sdsListSzLapokAPAI_NAGYANYA_FULSZAM: TWideStringField;
    sdsListSzLapokAPAI_NAGYANYA_SV: TIntegerField;
    sdsListSzLapokAPAI_NAGYANYA_KMI: TBCDField;
    sdsListSzLapokAPAI_NAGYANYA_APJA_KPLSZ: TBCDField;
    sdsListSzLapokAPAI_NAGYANYA_APJA_NEV: TWideStringField;
    sdsListSzLapokAPAI_NAGYANYA_APJA_ENAR: TWideStringField;
    sdsListSzLapokAPAI_NAGYANYA_APJA_FULSZAM: TWideStringField;
    sdsListSzLapokAPAI_NAGYANYA_ANYJA_ENAR: TWideStringField;
    sdsListSzLapokAPAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField;
    sdsListSzLapokAPAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField;
    sdsListSzLapokAPAI_NAGYANYA_ANYJA_NEV: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_KPLSZ: TBCDField;
    sdsListSzLapokANYAI_NAGYAPA_ENAR: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_FULSZAM: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_NEV: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_SZULDAT: TDateTimeField;
    sdsListSzLapokANYAI_NAGYAPA_FAJTAKOD: TIntegerField;
    sdsListSzLapokANYAI_NAGYAPA_FAJTANEV: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_FAJTA_SZAZ: TBCDField;
    sdsListSzLapokANYAI_NAGYAPA_SV: TIntegerField;
    sdsListSzLapokANYAI_NAGYAPA_ETGY: TIntegerField;
    sdsListSzLapokANYAI_NAGYAPA_STV_TGY: TIntegerField;
    sdsListSzLapokANYAI_NAGYAPA_TIPUS: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_IZMOLTSG: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_LABSZERKEZET: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_ERT_DAT: TDateTimeField;
    sdsListSzLapokANYAI_NAGYAPA_APJA_KPLSZ: TBCDField;
    sdsListSzLapokANYAI_NAGYAPA_APJA_ENAR: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_APJA_NEV: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_APJA_FULSZAM: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_ANYJA_ENAR: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_ANYJA_NEV: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField;
    sdsListSzLapokANYAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_NEV: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_SZULDAT: TDateTimeField;
    sdsListSzLapokANYAI_NAGYANYA_ENAR: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_ELLSZAM: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_FULSZAM: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_SV: TIntegerField;
    sdsListSzLapokANYAI_NAGYANYA_KMI: TBCDField;
    sdsListSzLapokANYAI_NAGYANYA_APJA_ENAR: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_APJA_KPLSZ: TBCDField;
    sdsListSzLapokANYAI_NAGYANYA_APJA_FULSZAM: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_APJA_NEV: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_ANYJA_ENAR: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField;
    sdsListSzLapokANYAI_NAGYANYA_ANYJA_NEV: TWideStringField;
    sdsListSzLapokTERM_IDEJE: TDateTimeField;
    sdsListSzLapokTERM_BIKA_KPLSZ: TBCDField;
    sdsListSzLapokTERM_BIKA_ENAR: TWideStringField;
    sdsListSzLapokTERM_BIKA_NEV: TWideStringField;
    sdsListSzLapokTERM_BIKA_SZULDAT: TDateTimeField;
    sdsListSzLapokTERM_BIKA_FULSZAM: TWideStringField;
    sdsListSzLapokTERM_BIKA_FAJTAKOD: TIntegerField;
    sdsListSzLapokTERM_BIKA_FAJTANEV: TWideStringField;
    sdsListSzLapokTERM_BIKA_FAJTA_SZAZ: TBCDField;
    sdsListSzLapokTERM_BIKA_SV: TIntegerField;
    sdsListSzLapokTERM_BIKA_ETGY: TIntegerField;
    sdsListSzLapokTERM_BIKA_STV_TGY: TIntegerField;
    sdsListSzLapokTERM_BIKA_TIPUS: TWideStringField;
    sdsListSzLapokTERM_BIKA_IZMOLTSAG: TWideStringField;
    sdsListSzLapokTERM_BIKA_LABSZERKEZET: TWideStringField;
    sdsListSzLapokTERM_BIKA_ERT_DAT: TDateTimeField;
    sdsListSzLapokTERM_BIKA_APJA_KPLSZ: TBCDField;
    sdsListSzLapokTERM_BIKA_APJA_ENAR: TWideStringField;
    sdsListSzLapokTERM_BIKA_APJA_NEVE: TWideStringField;
    sdsListSzLapokTERM_BIKA_APJA_SZULDAT: TDateTimeField;
    sdsListSzLapokTERM_BIKA_APJA_FULSZAM: TWideStringField;
    sdsListSzLapokTERM_BIKA_ANYJA_KMI: TBCDField;
    sdsListSzLapokTERM_BIKA_ANYJA_NEV: TWideStringField;
    sdsListSzLapokTERM_BIKA_ANYJA_ENAR: TWideStringField;
    sdsListSzLapokTERM_BIKA_ANYJA_FULSZAM: TWideStringField;
    sdsListSzLapokTERM_BIKA_ANYJA_SV: TIntegerField;
    sdsListSzLapokTERM_BIKA_ANYJA_ELLSZAM: TWideStringField;
    sdsListSzLapokTERM_BIKA_ANYJA_SZULDAT: TDateTimeField;
    sdsListSzLapokTERM_BIKA_ANYJA_TIPUS: TWideStringField;
    sdsListSzLapokTERM_BIKA_ANYJA_IZMOLTSAG: TWideStringField;
    sdsListSzLapokTERM_BIKA_ANYJA_LABSZERKEZET: TWideStringField;
    sdsListSzLapokTERM_BIKA_ANYJA_ERT_DAT: TDateTimeField;
    sdsListSzLapokTENYESZTO_NEV: TWideStringField;
    sdsListSzLapokTENYESZTO_CIM: TWideStringField;
    sdsListSzLapokTULAJ_NEV: TWideStringField;
    sdsListSzLapokTULAJ_CIM: TWideStringField;
    sdsListSzLapokTENYESZTO_KOD: TWideStringField;
    sdsListSzLapokTULAJ_KOD: TWideStringField;
    sdsListSzLapokANYA_NET_PONT: TIntegerField;
    sdsListSzLapokNET_PONT: TIntegerField;
    sdsListSzLapokIKTATOSZAM: TWideStringField;
    sdsListSzLapokE_TOGY: TWideStringField;
    sdsListSzLapokANYA_TOGY: TWideStringField;
    sdsListSzLapokT_ANYA_TOGY: TWideStringField;
    TalLabel162: TTalLabel;
    TalDBEdit23: TTalDBEdit;
    TalLabel166: TTalLabel;
    TalDBEdit37: TTalDBEdit;
    TalLabel167: TTalLabel;
    TalDBEdit84: TTalDBEdit;
    sdsHSzIModLapIGDAT: TDateTimeField;
    sdsHSzIModLapTKOD: TWideStringField;
    sdsHSzIModLapUKOD: TWideStringField;
    sdsHSzIModLapEGY: TWideStringField;
    sdsHSzIModLapSOR: TIntegerField;
    sdsHSzIModLapPER: TIntegerField;
    sdsHSzIModLapMAS: TWideStringField;
    sdsHSzIModLapKIDAT: TDateTimeField;
    sdsHSzIModLapHITDAT: TDateTimeField;
    sdsHSzIModLapNYELV: TWideStringField;
    sdsHSzIModLapKPLSZ: TBCDField;
    sdsHSzIModLapENAR: TWideStringField;
    sdsHSzIModLapFULSZAM: TWideStringField;
    sdsHSzIModLapNEV: TWideStringField;
    sdsHSzIModLapSZULDAT: TDateTimeField;
    sdsHSzIModLapTKV: TWideStringField;
    sdsHSzIModLapFAJTAKOD: TIntegerField;
    sdsHSzIModLapFAJTANEV: TWideStringField;
    sdsHSzIModLapIVAR: TWideStringField;
    sdsHSzIModLapSV: TIntegerField;
    sdsHSzIModLapELETNAPI_TGY: TIntegerField;
    sdsHSzIModLapSTV_TGY: TIntegerField;
    sdsHSzIModLapKMI: TBCDField;
    sdsHSzIModLapTIPUS: TWideStringField;
    sdsHSzIModLapIZMOLTSAG: TWideStringField;
    sdsHSzIModLapLABSZERKEZET: TWideStringField;
    sdsHSzIModLapERTEKELES_DATUMA: TDateTimeField;
    sdsHSzIModLapAPA_KPLSZ: TBCDField;
    sdsHSzIModLapAPA_ENAR: TWideStringField;
    sdsHSzIModLapAPA_SZULDAT: TDateTimeField;
    sdsHSzIModLapAPA_NEV: TWideStringField;
    sdsHSzIModLapAPA_FULSZAM: TWideStringField;
    sdsHSzIModLapAPA_FAJTAKOD: TIntegerField;
    sdsHSzIModLapAPA_FAJTANEV: TWideStringField;
    sdsHSzIModLapAPA_SV: TIntegerField;
    sdsHSzIModLapAPA_ETGY: TIntegerField;
    sdsHSzIModLapAPA_STV_TGY: TIntegerField;
    sdsHSzIModLapAPA_TIPUS: TWideStringField;
    sdsHSzIModLapAPA_IZMOLTSAG: TWideStringField;
    sdsHSzIModLapAPA_LABSZERKEZET: TWideStringField;
    sdsHSzIModLapAPA_ERT_DAT: TDateTimeField;
    sdsHSzIModLapANYA_NEV: TWideStringField;
    sdsHSzIModLapANYA_SZULDAT: TDateTimeField;
    sdsHSzIModLapANYA_ENAR: TWideStringField;
    sdsHSzIModLapANYA_ELLSZAM: TWideStringField;
    sdsHSzIModLapANYA_FULSZAM: TWideStringField;
    sdsHSzIModLapANYA_FAJTA_KOD: TIntegerField;
    sdsHSzIModLapANYA_FAJTANEV: TWideStringField;
    sdsHSzIModLapANYA_FAJTA_SZAZ: TBCDField;
    sdsHSzIModLapANYA_SV: TIntegerField;
    sdsHSzIModLapANYA_KMI: TBCDField;
    sdsHSzIModLapANYA_TIPUS: TWideStringField;
    sdsHSzIModLapANYA_IZMOLTSAG: TWideStringField;
    sdsHSzIModLapANYA_LABSZERKEZET: TWideStringField;
    sdsHSzIModLapANYA_ERT_DAT: TDateTimeField;
    sdsHSzIModLapAPAI_NAGYAPA_NEV: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_SZULDAT: TDateTimeField;
    sdsHSzIModLapAPAI_NAGYAPA_KPLSZ: TBCDField;
    sdsHSzIModLapAPAI_NAGYAPA_ENAR: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_FULSZAM: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_FAJTAKOD: TIntegerField;
    sdsHSzIModLapAPA_NAGYAPA_FAJTANEV: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_FAJTA_SZAZ: TBCDField;
    sdsHSzIModLapAPAI_NAGYAPA_SV: TIntegerField;
    sdsHSzIModLapAPAI_NAGYAPA_TGY: TIntegerField;
    sdsHSzIModLapAPAI_NAGYAPA_STV_TGY: TIntegerField;
    sdsHSzIModLapAPAI_NAGYAPA_TIPUS: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_IZMOLTSAG: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_LABSZERKEZET: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_ERTDAT: TDateTimeField;
    sdsHSzIModLapAPAI_NAGYAPA_APJA_KPLSZ: TBCDField;
    sdsHSzIModLapAPAI_NAGYAPA_APJA_ENAR: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_APJA_FULSZAM: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_APJA_NEV: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_ANYJA_ENAR: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField;
    sdsHSzIModLapAPAI_NAGYAPA_ANYJA_NEV: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_NEV: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_SZULDAT: TDateTimeField;
    sdsHSzIModLapAPAI_NAGYANYA_ENAR: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_ELLSZAM: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_FULSZAM: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_SV: TIntegerField;
    sdsHSzIModLapAPAI_NAGYANYA_KMI: TBCDField;
    sdsHSzIModLapAPAI_NAGYANYA_APJA_KPLSZ: TBCDField;
    sdsHSzIModLapAPAI_NAGYANYA_APJA_NEV: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_APJA_ENAR: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_APJA_FULSZAM: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_ANYJA_ENAR: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField;
    sdsHSzIModLapAPAI_NAGYANYA_ANYJA_NEV: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_KPLSZ: TBCDField;
    sdsHSzIModLapANYAI_NAGYAPA_ENAR: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_FULSZAM: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_NEV: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_SZULDAT: TDateTimeField;
    sdsHSzIModLapANYAI_NAGYAPA_FAJTAKOD: TIntegerField;
    sdsHSzIModLapANYAI_NAGYAPA_FAJTANEV: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_FAJTA_SZAZ: TBCDField;
    sdsHSzIModLapANYAI_NAGYAPA_SV: TIntegerField;
    sdsHSzIModLapANYAI_NAGYAPA_ETGY: TIntegerField;
    sdsHSzIModLapANYAI_NAGYAPA_STV_TGY: TIntegerField;
    sdsHSzIModLapANYAI_NAGYAPA_TIPUS: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_IZMOLTSG: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_LABSZERKEZET: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_ERT_DAT: TDateTimeField;
    sdsHSzIModLapANYAI_NAGYAPA_APJA_KPLSZ: TBCDField;
    sdsHSzIModLapANYAI_NAGYAPA_APJA_ENAR: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_APJA_NEV: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_APJA_FULSZAM: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_ANYJA_ENAR: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_ANYJA_NEV: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField;
    sdsHSzIModLapANYAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_NEV: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_SZULDAT: TDateTimeField;
    sdsHSzIModLapANYAI_NAGYANYA_ENAR: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_ELLSZAM: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_FULSZAM: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_SV: TIntegerField;
    sdsHSzIModLapANYAI_NAGYANYA_KMI: TBCDField;
    sdsHSzIModLapANYAI_NAGYANYA_APJA_ENAR: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_APJA_KPLSZ: TBCDField;
    sdsHSzIModLapANYAI_NAGYANYA_APJA_FULSZAM: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_APJA_NEV: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_ANYJA_ENAR: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField;
    sdsHSzIModLapANYAI_NAGYANYA_ANYJA_NEV: TWideStringField;
    sdsHSzIModLapTERM_IDEJE: TDateTimeField;
    sdsHSzIModLapTERM_BIKA_KPLSZ: TBCDField;
    sdsHSzIModLapTERM_BIKA_ENAR: TWideStringField;
    sdsHSzIModLapTERM_BIKA_NEV: TWideStringField;
    sdsHSzIModLapTERM_BIKA_SZULDAT: TDateTimeField;
    sdsHSzIModLapTERM_BIKA_FULSZAM: TWideStringField;
    sdsHSzIModLapTERM_BIKA_FAJTAKOD: TIntegerField;
    sdsHSzIModLapTERM_BIKA_FAJTANEV: TWideStringField;
    sdsHSzIModLapTERM_BIKA_FAJTA_SZAZ: TBCDField;
    sdsHSzIModLapTERM_BIKA_SV: TIntegerField;
    sdsHSzIModLapTERM_BIKA_ETGY: TIntegerField;
    sdsHSzIModLapTERM_BIKA_STV_TGY: TIntegerField;
    sdsHSzIModLapTERM_BIKA_TIPUS: TWideStringField;
    sdsHSzIModLapTERM_BIKA_IZMOLTSAG: TWideStringField;
    sdsHSzIModLapTERM_BIKA_LABSZERKEZET: TWideStringField;
    sdsHSzIModLapTERM_BIKA_ERT_DAT: TDateTimeField;
    sdsHSzIModLapTERM_BIKA_APJA_KPLSZ: TBCDField;
    sdsHSzIModLapTERM_BIKA_APJA_ENAR: TWideStringField;
    sdsHSzIModLapTERM_BIKA_APJA_NEVE: TWideStringField;
    sdsHSzIModLapTERM_BIKA_APJA_SZULDAT: TDateTimeField;
    sdsHSzIModLapTERM_BIKA_APJA_FULSZAM: TWideStringField;
    sdsHSzIModLapTERM_BIKA_ANYJA_KMI: TBCDField;
    sdsHSzIModLapTERM_BIKA_ANYJA_NEV: TWideStringField;
    sdsHSzIModLapTERM_BIKA_ANYJA_ENAR: TWideStringField;
    sdsHSzIModLapTERM_BIKA_ANYJA_FULSZAM: TWideStringField;
    sdsHSzIModLapTERM_BIKA_ANYJA_SV: TIntegerField;
    sdsHSzIModLapTERM_BIKA_ANYJA_ELLSZAM: TWideStringField;
    sdsHSzIModLapTERM_BIKA_ANYJA_SZULDAT: TDateTimeField;
    sdsHSzIModLapTERM_BIKA_ANYJA_TIPUS: TWideStringField;
    sdsHSzIModLapTERM_BIKA_ANYJA_IZMOLTSAG: TWideStringField;
    sdsHSzIModLapTERM_BIKA_ANYJA_LABSZERKEZET: TWideStringField;
    sdsHSzIModLapTERM_BIKA_ANYJA_ERT_DAT: TDateTimeField;
    sdsHSzIModLapTENYESZTO_NEV: TWideStringField;
    sdsHSzIModLapTENYESZTO_CIM: TWideStringField;
    sdsHSzIModLapTULAJ_NEV: TWideStringField;
    sdsHSzIModLapTULAJ_CIM: TWideStringField;
    sdsHSzIModLapTENYESZTO_KOD: TWideStringField;
    sdsHSzIModLapTULAJ_KOD: TWideStringField;
    sdsHSzIModLapANYA_NET_PONT: TIntegerField;
    sdsHSzIModLapNET_PONT: TIntegerField;
    sdsHSzIModLapIKTATOSZAM: TWideStringField;
    sdsHSzIModLapE_TOGY: TWideStringField;
    sdsHSzIModLapANYA_TOGY: TWideStringField;
    sdsHSzIModLapT_ANYA_TOGY: TWideStringField;
    TalLabel168: TTalLabel;
    TalDBEdit128: TTalDBEdit;
    TalLabel169: TTalLabel;
    TalDBEdit156: TTalDBEdit;
    sdsListSzLapokAPA_NET_PONT: TIntegerField;
    sdsHSzIModLapAPA_NET_PONT: TIntegerField;
    TalLabel170: TTalLabel;
    TalDBEdit157: TTalDBEdit;
    TalLabel32: TTalLabel;
    TalDBEdit31: TTalDBEdit;
    TalLabel171: TTalLabel;
    sdsHSzIModLapAPA_TE_TIPUS: TIntegerField;
    sdsHSzIModLapAPA_TE_IZMOLTSAG: TIntegerField;
    sdsHSzIModLapAPA_TE_LABSZERKEZET: TIntegerField;
    sdsHSzIModLapAPA_TE_TOGY: TIntegerField;
    sdsListSzLapokAPA_TE_TIPUS: TIntegerField;
    sdsListSzLapokAPA_TE_IZMOLTSAG: TIntegerField;
    sdsListSzLapokAPA_TE_LABSZERKEZET: TIntegerField;
    sdsListSzLapokAPA_TE_TOGY: TIntegerField;
    TalLabel172: TTalLabel;
    TalLabel173: TTalLabel;
    TalLabel174: TTalLabel;
    TalDBEdit158: TTalDBEdit;
    TalLabel175: TTalLabel;
    TalDBEdit159: TTalDBEdit;
    TalLabel176: TTalLabel;
    TalDBEdit160: TTalDBEdit;
    TalLabel177: TTalLabel;
    TalDBEdit161: TTalDBEdit;
    TalLabel178: TTalLabel;
    TalLabel179: TTalLabel;
    TalLabel180: TTalLabel;
    sdsHSzIModLapFAJTA_SZAZ: TBCDField;
    sdsHSzIModLapAPA_FAJTA_SZAZ: TBCDField;
    FSZEdit: TEdit;
    AFSZEdit: TEdit;
    ANAFSZEdit: TEdit;
    ANNAFSZEdit: TEdit;
    TBFSZEdit: TEdit;
    AFSZAZEdit: TEdit;
    frxRepListak: TfrxReport;
    TabEU: TTabSheet;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRogzitClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure RowChange(Sender: TObject);
    procedure dbClick(Sender: TObject);
    procedure backToBrowseMode(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnPrintClic(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure sdsHSzIModLapReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure btnCancelClick(Sender: TObject);
    procedure FSZEditChange(Sender: TObject);
  private
    { Private declarations }
    Procedure ComboTolt;
    Procedure IvarComboTolt;
    Function NEV_KOD(s_kod : String) : String;   // nevet ad vissza kód-ból
    Function KOD_NEV(nev : String) : Byte;   // kódot ad vissza névbõl
    Function IVAR_NEV_KOD(kod : string) : String;
    Function IVAR_KOD_NEV(nev : String) : string;
  public
    { Public declarations }
    Procedure Modosit;
  end;

var
  frmHSzIMod: TfrmHSzIMod;
  E_KPLSZ, E_ENAR, E_NEV, E_SZULDAT, E_TENYESZET, E_IVAR, E_ANYA_ENAR, E_ANYA_NEV : String;
    sTulajKod: String;
    sTulajNev: String;
    sTulajCim: String;
    sKiallDatum: String;
    sHitDatum: String;
    FSZEditChanged : Boolean;

implementation

Uses TListHivSzarmIg, udtmTarka, QSysTools, QfrmEgyedValaszto;

{$R *.dfm}

Procedure TfrmHSzIMod.Modosit;
Begin
//  ComboTolt;
//  IvarComboTolt;
  sdsKeres.Connection := dtmTarka.cnTarka;
  frmHSzIMod.ShowModal;
End;

procedure TfrmHSzIMod.FormActivate(Sender: TObject);
begin
    //frmHSzIMod.TabSheet8.TabVisible := False;
    frmHSzIMod.TabSheet8.TabVisible := True;

  (*
  If frmHSzIMod.sdsHSzIModIg.Active Then frmHSzIMod.sdsHSzIModIg.Close;
  frmHSzIMod.sdsHSzIModIg.Connection := dtmTarka.cnTarka;
  frmHSzIMod.sdsHSzIModIg.DataSet.CommandText :=
        'SELECT I.SZIDO AS SZULDAT, I.ENAR, I.NEV, I.KPLSZ, I.IVAR, ' +
          'I.TKOD AS TENYESZET, I.IGNEV, I.TNEV AS TNEV2, I.TCIM AS TVAROS, ' +
          'I.ANYANEV, I.ANYAAZON AS ANYAENAR , I.IKTATOSZAM ' +
        'FROM SZARMIG I ' +
        'WHERE I.ENAR = :EGYEDENAR';

  frmHSzIMod.sdsHSzIModIg.DataSet.Parameters.ParamByName('EGYEDENAR').Value := '3025208303';// TListHivSzarmIg.frmHivSzarmIg.eENAR.Text; // cbEgyed.texT;
  Try
    Screen.Cursor := crHourGlass;
    frmHSzIMod.sdsHSzIModIg.Open;
    If frmHSzIMod.sdsHSzIModIg.FieldByName('IVAR').AsString = '2' Then
       frmHSzIMod.TabSheet8.TabVisible := True;
  Finally
    Screen.Cursor := crArrow;
  End;
  *)

  sdsKeres.Open;
  grdVal.SelectedIndex := 1;
  grdVal.Refresh;

  If frmHSzIMod.sdsHSzIModLap.Active Then frmHSzIMod.sdsHSzIModLap.Close;
  If qryEfajta.Active Then qryEfajta.Close;
  If qryIvar.Active Then qryIvar.Close;
  If qryApaFajta.Active Then qryApaFajta.Close;
  If qryAnyaFajta.Active Then qryAnyaFajta.Close;
  If qryApaapa.Active Then qryApaapa.Close;
  If qryAnyaApa.Active Then qryAnyaApa.Close;
  If qryTFajta.Active Then qryTFajta.Close;
  frmHSzIMod.sdsHSzIModLap.Connection := dtmTarka.cnTarka;

  frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PENAR').Value := sdsKeresENAR.Value;
  frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PSOR').Value := sdsKeresSOR.Value;
  frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PPER').Value := sdsKeresPER.Value;
  Try
    Screen.Cursor := crHourGlass;
    frmHSzIMod.sdsHSzIModLap.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PENAR').Value := sdsKeresENAR.Value;
  frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PSOR').Value := sdsKeresSOR.Value;
  frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PPER').Value := sdsKeresPER.Value;
  frmHSzIMod.sdsHSzIModLap.Refresh;

  If frmHSzIMod.sdsHSzIModLap.FieldByName('IVAR').AsString = '2' Then
     frmHSzIMod.TabSheet8.TabVisible := True
  else
      frmHSzIMod.TabSheet8.TabVisible := False;


  qryEfajta.Open;
  qryIvar.Open;
  qryApaFajta.Open;
  qryAnyaFajta.Open;
  qryApaapa.Open;
  qryAnyaApa.Open;
  qryTFajta.Open;

  // beolvasott értékek
  (* E_KPLSZ     := frmHSzIMod.sdsHSzIModIg.FieldByName('KPLSZ').AsString;
  E_ENAR      := frmHSzIMod.sdsHSzIModIg.FieldByName('ENAR').AsString;
  E_NEV       := frmHSzIMod.sdsHSzIModIg.FieldByName('NEV').AsString;
  E_SZULDAT   := frmHSzIMod.sdsHSzIModIg.FieldByName('SZULDAT').AsString;
//  E_TENYESZET := frmHSzIMod.sdsHSzIModIg.FieldByName('TENYESZET').AsString;
  E_IVAR      := frmHSzIMod.sdsHSzIModIg.FieldByName('IVAR').AsString;
  E_ANYA_ENAR := frmHSzIMod.sdsHSzIModIg.FieldByName('ANYAENAR').AsString;
  E_ANYA_NEV  := frmHSzIMod.sdsHSzIModIg.FieldByName('ANYANEV').AsString; *)

  //  fajtakód és fajtanév váltás
//  frmHSzIMod.cbEgyedFajtaNev.Text := frmHSzIMod.NEV_KOD(frmHSzIMod.sdsHSzIModLapFAJTAKOD.AsString);
//  frmHSzIMod.cbApaFajtaNev.Text := frmHSzIMod.NEV_KOD(frmHSzIMod.sdsHSzIModLapAPA_FAJTAKOD.AsString);
//  frmHSzIMod.cbAnyaFajtaNev.Text := frmHSzIMod.NEV_KOD(frmHSzIMod.sdsHSzIModLapANYA_FAJTA_KOD.AsString);
//  frmHSzIMod.cbApaiNagyapaFajtaNev.Text := frmHSzIMod.NEV_KOD(frmHSzIMod.sdsHSzIModLapAPA_NAGYAPA_FAJATA_KOD.AsString);
//  frmHSzIMod.cbAnyaiNagyapaFajtaNev.Text := frmHSzIMod.NEV_KOD(frmHSzIMod.sdsHSzIModLapANYAI_NAGYAPA_FAJTAKOD.AsString);
//  if frmHSzIMod.sdsHSzIModLapTERMEKENYITO_BIKA_FAJTAKOD.AsString > '' then
//    frmHSzIMod.cbTermekenyitoFajtaNev.Text := frmHSzIMod.NEV_KOD(frmHSzIMod.sdsHSzIModLapTERMEKENYITO_BIKA_FAJTAKOD.AsString)
//  else
//    frmHSzIMod.cbTermekenyitoFajtaNev.Text := '';

  // Egyed ivarkód és ivarnév váltás
//  frmHSzIMod.cbEgyedIvarNev.Text := frmHSzIMod.IVAR_NEV_KOD(frmHSzIMod.sdsHSzIModIgIVAR.AsString);

  FSZEdit.Text := sdsHSzIModLapFAJTA_SZAZ.Text;
  AFSZEdit.Text := sdsHSzIModLapAPA_FAJTA_SZAZ.Text;
  AFSZAZEdit.Text := sdsHSzIModLapANYA_FAJTA_SZAZ.Text;
  ANAFSZEdit.Text := sdsHSzIModLapAPAI_NAGYAPA_FAJTA_SZAZ.Text;
  ANNAFSZEdit.Text := sdsHSzIModLapANYAI_NAGYAPA_FAJTA_SZAZ.Text;
  TBFSZEdit.Text := sdsHSzIModLapTERM_BIKA_FAJTA_SZAZ.Text;

end;

procedure TfrmHSzIMod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // frmHSzIMod.sdsHSzIModIg.Close;
  // frmHSzIMod.sdsHSzIModLap.Close;
  // frmHSzIMod.sdsHSzIModLap.Destroy;
  (*qryEfajta.Close;
  qryIvar.Close;
  qryApaFajta.Close;
  qryAnyaFajta.Close;
  qryApaapa.Close;
  qryAnyaApa.Close;
  qryTFajta.Close;
  sdsKeres.Close;      *)
  // sdsKeres.Destroy;
  sTulajKod := '';
  sTulajNev := '';
  sTulajCim := '';
  sKiallDatum := '    .  .  ';
  sHitDatum := '    .  .  ';
end;

procedure TfrmHSzIMod.btnRogzitClick(Sender: TObject);
var
  UpdateSQL : TTalQuery;
begin
  //  fajtakód a fajtanévbõl
//  frmHSzIMod.sdsHSzIModLapFAJTAKOD.AsString := IntToStr(frmHSzIMod.KOD_NEV(frmHSzIMod.cbEgyedFajtaNev.Text));
//  frmHSzIMod.sdsHSzIModLapAPA_FAJTAKOD.AsString := IntToStr(frmHSzIMod.KOD_NEV(frmHSzIMod.cbApaFajtaNev.Text));
//  frmHSzIMod.sdsHSzIModLapANYA_FAJTA_KOD.AsString := IntToStr(frmHSzIMod.KOD_NEV(frmHSzIMod.cbAnyaFajtaNev.Text));
//  frmHSzIMod.sdsHSzIModLapAPA_NAGYAPA_FAJATA_KOD.AsString := IntToStr(frmHSzIMod.KOD_NEV(frmHSzIMod.cbApaiNagyapaFajtaNev.Text));
//  frmHSzIMod.sdsHSzIModLapANYAI_NAGYAPA_FAJTAKOD.AsString := IntToStr(frmHSzIMod.KOD_NEV(frmHSzIMod.cbAnyaiNagyapaFajtaNev.Text));
//  frmHSzIMod.sdsHSzIModLapTERMEKENYITO_BIKA_FAJTAKOD.AsString := IntToStr(frmHSzIMod.KOD_NEV(frmHSzIMod.cbTermekenyitoFajtaNev.Text));

  // Egyed ivarkód a fajtanévbõl
//  frmHSzIMod.sdsHSzIModIgIVAR.AsString := frmHSzIMod.IVAR_KOD_NEV(frmHSzIMod.cbEgyedIvarNev.Text);

{  If frmHSzIMod.sdsHSzIModIg.State in [dsEdit, dsInsert] Then    }

  // kötelezõ kitöltések ellenõrzése
  (*
  If Length(Trim(frmHSzIMod.TalDBEdit1.Text)) = 0 Then
    frmHSzIMod.sdsHSzIModIg.FieldByName('KPLSZ').AsString := E_KPLSZ;
  If Length(Trim(frmHSzIMod.TalDBEdit2.Text)) = 0 Then
    frmHSzIMod.sdsHSzIModIg.FieldByName('ENAR').AsString := E_ENAR;
  If Length(Trim(frmHSzIMod.TalDBEdit4.Text)) = 0 Then
    frmHSzIMod.sdsHSzIModIg.FieldByName('NEV').AsString := E_NEV;
  If Length(Trim(frmHSzIMod.TalDBEdit5.Text)) = 0 Then
    frmHSzIMod.sdsHSzIModIg.FieldByName('SZULDAT').AsString := E_SZULDAT;
  If Length(Trim(frmHSzIMod.TalDBEdit32.Text)) = 0 Then
    frmHSzIMod.sdsHSzIModIg.FieldByName('ANYAENAR').AsString := E_ANYA_ENAR;
  If Length(Trim(frmHSzIMod.TalDBEdit35.Text)) = 0 Then
    frmHSzIMod.sdsHSzIModIg.FieldByName('ANYANEV').AsString := E_ANYA_NEV;
   *)

    // frmHSzIMod.sdsHSzIModIg.Post;

           (*
    sdsHSzIModLap.DisableControls;
    if (sdsHSzIModLap.State in [dsInsert, dsEdit]) then sdsHSzIModLap.Post;
    sdsHSzIModLap.CheckBrowseMode;
    if (sdsHSzIModLap.ChangeCount > 0) then
    begin
        if (sdsHSzIModLap.ApplyUpdates(-1) <> 0) then
        begin
            sdsHSzIModLap.CancelUpdates;
            sdsHSzIModLap.Refresh;
        end;
    end;

    //frmHSzIMod.sdsHSzIModLap.Post;
    // frmHSzIMod.sdsHSzIModLap.ApplyUpdates(-1);
    //frmHSzIMod.sdsHSzIModLap.Refresh;

    *)
    dtmTarka.cnTarka.BeginTrans;
    Try
      frmHSzIMod.sdsHSzIModLap.Post;
      frmHSzIMod.sdsHSzIModLap.ApplyUpdates(0);
      if FSZEditChanged Then begin
        UpdateSQL := TTalQuery.Create(nil);
        UpdateSQL.Connection := dtmTarka.cnTarka;
        UpdateSQL.SQL.Add( 'update szlapok ');
        UpdateSQL.SQL.Add( 'set m18  = ' + '''' + StringReplace( FSZEdit.Text,',','.', [rfReplaceAll, rfIgnoreCase]) + '''');
        UpdateSQL.SQL.Add( '  , m34  = ' + '''' + StringReplace( AFSZEdit.Text,',','.', [rfReplaceAll, rfIgnoreCase]) + '''');
        UpdateSQL.SQL.Add( '  , m48  = ' + '''' + StringReplace( AFSZAZEdit.Text,',','.', [rfReplaceAll, rfIgnoreCase]) + '''');
        UpdateSQL.SQL.Add( '  , m61  = ' + '''' + StringReplace( ANAFSZEdit.Text,',','.', [rfReplaceAll, rfIgnoreCase]) + '''');
        UpdateSQL.SQL.Add( '  , m98  = ' + '''' + StringReplace( ANNAFSZEdit.Text,',','.', [rfReplaceAll, rfIgnoreCase]) + '''');
        UpdateSQL.SQL.Add( '  , m136 = ' + '''' + StringReplace( TBFSZEdit.Text,',','.', [rfReplaceAll, rfIgnoreCase]) + '''');
        UpdateSQL.SQL.Add( ' where sor = ' + IntToStr( sdsKeresSOR.Value) + ' and ');
        UpdateSQL.SQL.Add( '      per = ' + IntToStr( sdsKeresPER.Value));
        Log( UpdateSQL.SQL.Text);
        UpdateSQL.ExecSQL;
        UpdateSQL.Free;
      End;
      dtmTarka.cnTarka.CommitTrans;
      // frmHSzIMod.sdsHSzIModIg.Refresh;
      // frmHSzIMod.sdsHSzIModLap.Refresh;
    Except
      On E:Exception Do
      Begin
        dtmTarka.cnTarka.RollbackTrans;
        Log('sdsHSzIModIg : Rollback  :');
        Log(E.Message);
        Log('sdsHSzIModLap : Rollback  :');
        Log(E.Message);
        Exit;
      End;
    End;
    sdsKeres.Refresh;
    backToBrowseMode( NIL);
end;

Procedure TfrmHSzIMod.ComboTolt;  // fajtanév töltés
Begin
  Screen.Cursor := crHourGlass;
  With frmHSzIMod.qComboTolt Do
   Begin
     If Active Then
      Close;
     SQL.Text := 'select fnev from fajta order by fnev';
     Open;
     While Not Eof Do
      Begin
//        frmHSzIMod.cbEgyedFajtaNev.Items.Add(Trim(Fields[0].AsString));
//        frmHSzIMod.cbApaFajtaNev.Items.Add(Trim(Fields[0].AsString));
//        frmHSzIMod.cbAnyaFajtaNev.Items.Add(Trim(Fields[0].AsString));
//        frmHSzIMod.cbApaiNagyapaFajtaNev.Items.Add(Trim(Fields[0].AsString));
//        frmHSzIMod.cbAnyaiNagyapaFajtaNev.Items.Add(Trim(Fields[0].AsString));
//        frmHSzIMod.cbTermekenyitoFajtaNev.Items.Add(Trim(Fields[0].AsString));
        Next;
      End;
     Close;
   End;
  Screen.Cursor := crArrow;
End;

Procedure TfrmHSzIMod.IvarComboTolt;  // ivarnév töltés
Begin
(*  Screen.Cursor := crHourGlass;
  frmHSzIMod.cbEgyedIvarNev.Items.Clear;
  With frmHSzIMod.qComboTolt Do
   Begin
     If Active Then
      Close;
     SQL.Text := 'select KOD_NEV from kodok where kodtipusok_tipuskod = ''IVAR'' ';
     Open;
     While Not Eof Do
      Begin
        frmHSzIMod.cbEgyedIvarNev.Items.Add(Trim(Fields[0].AsString));
        Next;
      End;
     Close;
   End;
  Screen.Cursor := crArrow;   *)
End;

Function TfrmHSzIMod.NEV_KOD(s_kod : String) : String;  // a nevet adja vissza a kód alapján
Var
  kod : Byte;
Begin
  if s_kod = EmptyStr then begin
    Result := '';
    exit;
  end;

  Try
    kod := StrToInt(s_kod);
  Except
    on E: Exception do Begin
                         Result := '';
                         Exit;
                       End;

  End;
  With frmHSzIMod.qComboTolt Do
   Begin
     If Active Then Close;
     SQL.Text := 'select f.fnev, f.fkod from fajta f WHERE f.fkod = :pKod';
     frmHSzIMod.qComboTolt.Parameters.ParamByName('pKod').Value := kod;
     Open;
     If Not Eof Then
        Result := Trim(frmHSzIMod.qComboTolt.FieldByName('fnev').AsString)
      Else
        Result := '';
     Close;
   End;
End;

Function TfrmHSzIMod.KOD_NEV(nev : String) : Byte;  // a fajtakod-ot adja vissza a fajtanév alapján
Begin
  With frmHSzIMod.qComboTolt Do
   Begin
     If Active Then Close;
     SQL.Text := 'select f.fnev, f.fkod from fajta f WHERE f.fnev Like :pNev';
     frmHSzIMod.qComboTolt.Parameters.ParamByName('pNev').Value := '%' + nev + '%';
     Open;
     If Not Eof Then
        Result := frmHSzIMod.qComboTolt.FieldByName('fkod').AsVariant
      Else
        Result := Null;
     Close;
   End;
End;

Function TfrmHSzIMod.IVAR_NEV_KOD(kod : string) : String;  // a fajtanevet adja vissza a fajtakód alapján
Begin
(*  With frmHSzIMod.qComboTolt Do
   Begin
     If Active Then Close;
     SQL.Text := 'select KOD_NEV from kodok where kodtipusok_tipuskod = ''IVAR'' AND kod = :pKod';
     if kod <> EmptyStr then begin

       frmHSzIMod.qComboTolt.Parameters.ParamByName('pKod').Value := kod;
       Open;
       If Not Eof Then
          Result := Trim(frmHSzIMod.qComboTolt.FieldByName('KOD_NEV').AsString)
        Else
          Result := '';
       Close;
     end else begin
       Result := '';
     end
   End; *)
End;

Function TfrmHSzIMod.IVAR_KOD_NEV(nev : String) : string;  // a kod-ot adja vissza a név alapján
Begin
(*  With frmHSzIMod.qComboTolt Do
   Begin
     If Active Then Close;
     SQL.Text := 'select KOD from kodok where kodtipusok_tipuskod = ''IVAR'' AND kod_nev Like :pNev';
     frmHSzIMod.qComboTolt.Parameters.ParamByName('pNev').Value := '%' + nev + '%';
     Open;
     If Not Eof Then
        Result := frmHSzIMod.qComboTolt.FieldByName('KOD').AsVariant
      Else
        Result := '';
     Close;
   End; *)
End;


procedure TfrmHSzIMod.btnExitClick(Sender: TObject);
begin
  frmHSzIMod.Close;
end;

procedure TfrmHSzIMod.dbClick(Sender: TObject);
begin
  grdVal.Color := clInactiveCaption;
  grdVal.Enabled := false;
  GroupBox01.Enabled := true; GroupBox02.Enabled := true; GroupBox03.Enabled := true;
  GroupBox04.Enabled := true; GroupBox05.Enabled := true; GroupBox06.Enabled := true;
  GroupBox07.Enabled := true; GroupBox08.Enabled := true; GroupBox09.Enabled := true;

  if Trim(frmHSzIMod.TulajKod.Text) = '' then
      frmHSzIMod.TulajKod.Text := sTulajKod;
  if Trim(frmHSzIMod.TulajNev.Text) = '' then
      frmHSzIMod.TulajNev.Text := sTulajNev;
  if Trim(frmHSzIMod.TulajCim.Text) = '' then
      frmHSzIMod.TulajCim.Text := sTulajCim;
  if frmHSzIMod.KiallDatum.Text = '    .  .  ' then
      frmHSzIMod.KiallDatum.Text := sKiallDatum;
  if frmHSzIMod.HitDatum.Text = '    .  .  ' then
      frmHSzIMod.HitDatum.Text := sHitDatum;
  // frmHSzIMod.sdsHSzIModIg.Edit;
  frmHSzIMod.sdsHSzIModLap.Edit;

  PageControl1.ActivePageIndex := 0;
  GroupBox01.SetFocus;
  edtSOR.SetFocus;
  btnNew.Visible    := false;
  btnUpdate.Visible := false;
  btnExit.Visible   := false;
  btnPrint.Visible  := false;
  btnExport.Visible := false;
  btnDelete.Visible := false;
  btnRogzit.Visible := true;
  btnCancel.Visible := true;
  FSZEditChanged := false;
end;

procedure TfrmHSzIMod.backToBrowseMode(Sender: TObject);
begin
  grdVal.Color := clWindow;
  grdVal.Enabled := true;
  grdVal.SetFocus;
  GroupBox01.Enabled := false; GroupBox02.Enabled := false; GroupBox03.Enabled := false;
  GroupBox04.Enabled := false; GroupBox05.Enabled := false; GroupBox06.Enabled := false;
  GroupBox07.Enabled := false; GroupBox08.Enabled := false; GroupBox09.Enabled := false;

  sTulajKod := frmHSzIMod.TulajKod.Text;
  sTulajNev := frmHSzIMod.TulajNev.Text;
  sTulajCim := frmHSzIMod.TulajCim.Text;
  sKiallDatum := frmHSzIMod.KiallDatum.Text;
  sHitDatum := frmHSzIMod.HitDatum.Text;

  // frmHSzIMod.sdsHSzIModIg.Active;
  frmHSzIMod.sdsHSzIModLap.Active;

  btnNew.Visible    := true;
  btnUpdate.Visible := true;
  btnExit.Visible   := true;
  btnPrint.Visible  := true;
  btnExport.Visible := true;
  btnDelete.Visible := true;
  btnRogzit.Visible := false;
  btnCancel.Visible := false;
end;

procedure TfrmHSzIMod.RowChange(Sender: TObject);
begin

  // frmHSzIMod.sdsHSzIModIg.DataSet.Parameters.ParamByName('EGYEDENAR').Value := sdsKeresENAR.Value;
  // frmHSzIMod.sdsHSzIModIg.Refresh;

  frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PENAR').Value := sdsKeresENAR.Value;
  frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PSOR').Value := sdsKeresSOR.Value;
  frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PPER').Value := sdsKeresPER.Value;
  frmHSzIMod.sdsHSzIModLap.Refresh;

  If frmHSzIMod.sdsHSzIModLap.FieldByName('IVAR').AsString = '2' Then
     frmHSzIMod.TabSheet8.TabVisible := True
  else
      frmHSzIMod.TabSheet8.TabVisible := False;

  qryEfajta.Refresh;
  qryIvar.Refresh;
  qryApaFajta.Refresh;
  qryAnyaFajta.Refresh;
  qryApaapa.Refresh;
  qryAnyaApa.Refresh;
  qryTFajta.Refresh;

  FSZEdit.Text := sdsHSzIModLapFAJTA_SZAZ.Text;
  AFSZEdit.Text := sdsHSzIModLapAPA_FAJTA_SZAZ.Text;
  AFSZAZEdit.Text := sdsHSzIModLapANYA_FAJTA_SZAZ.Text;
  ANAFSZEdit.Text := sdsHSzIModLapAPAI_NAGYAPA_FAJTA_SZAZ.Text;
  ANNAFSZEdit.Text := sdsHSzIModLapANYAI_NAGYAPA_FAJTA_SZAZ.Text;
  TBFSZEdit.Text := sdsHSzIModLapTERM_BIKA_FAJTA_SZAZ.Text;

  // beolvasott értékek
  (*
  E_KPLSZ     := frmHSzIMod.sdsHSzIModIg.FieldByName('KPLSZ').AsString;
  E_ENAR      := frmHSzIMod.sdsHSzIModIg.FieldByName('ENAR').AsString;
  E_NEV       := frmHSzIMod.sdsHSzIModIg.FieldByName('NEV').AsString;
  E_SZULDAT   := frmHSzIMod.sdsHSzIModIg.FieldByName('SZULDAT').AsString;
  //  E_TENYESZET := frmHSzIMod.sdsHSzIModIg.FieldByName('TENYESZET').AsString;
  E_IVAR      := frmHSzIMod.sdsHSzIModIg.FieldByName('IVAR').AsString;
  E_ANYA_ENAR := frmHSzIMod.sdsHSzIModIg.FieldByName('ANYAENAR').AsString;
  E_ANYA_NEV  := frmHSzIMod.sdsHSzIModIg.FieldByName('ANYANEV').AsString; *)
end;

procedure TfrmHSzIMod.btnNewClick(Sender: TObject);
var
  Szuro, vissza : TTalParamList;
  ENAR : String;
  Volt : Boolean;
begin
  inherited;
  Szuro := TTalParamList.Create;
  Vissza := TTalParamList.Create;
  enar := '';
  try
    if EgyedValaszto( Szuro, vissza ) then
    begin
      // if trim(vissza.ItemsByName('ENAR').Values[0]) > '' then begin
      //  edtKeres.Text := vissza.ItemsByName('ENAR').Values[0];
      // end else if trim(vissza.ItemsByName('FULSZAM').Values[0]) > '' then begin
      //   edtKeres.Text := vissza.ItemsByName('FULSZAM').Values[0];
      // end else if trim(vissza.ItemsByName('TEHENSZAM').Values[0]) > '' then begin
      //   edtKeres.Text := vissza.ItemsByName('TEHENSZAM').Values[0];
      // end else if trim(vissza.ItemsByName('ID_ENAR').Values[0]) > '' then begin
      //   edtKeres.Text := vissza.ItemsByName('ID_ENAR').Values[0];
      // end; *)
      // AktId := vissza.ItemsByName('ID_ENAR').Values[0];
      // edtKeres.SetFocus;
      ENAR := vissza.ItemsByName('ENAR').Values[0];
      ENAR := StringReplace( ENAR, '-', '', [rfReplaceAll]);
    end;
  finally
    szuro.Free;
  end;

  if enar <> '' then
  begin

    dtmTarka.cnTarka.BeginTrans;
    try
      screen.Cursor := crHourGlass;
      spCreateNewSZLAPOK.Connection := dtmTarka.cnTarka;
      spCreateNewSZLAPOK.Parameters.ParamByName('PEGYED_ENAR').Value := ENAR;
      spCreateNewSZLAPOK.ExecProc;
      dtmTarka.cnTarka.CommitTrans;

      sdsKeres.Refresh;
      sdsKeres.FindLast;
      grdVal.Refresh;
      grdVal.SelectedIndex := 0;
      grdVal.SetFocus;

      frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PENAR').Value := sdsKeresENAR.Value;
      frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PSOR').Value := sdsKeresSOR.Value;
      frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('PPER').Value := sdsKeresPER.Value;
      frmHSzIMod.sdsHSzIModLap.Refresh;


      // frmHSzIMod.sdsHSzIModLap.Close;
      // frmHSzIMod.sdsHSzIModLap.DataSet.Parameters.ParamByName('EGYEDENAR').Value := ENAR;
      // frmHSzIMod.sdsHSzIModLap.Open;

      dbClick( NIL);
    Except
      On E:Exception Do
      begin
        Log('Új származási lap létrehozása sikertelen.');
        Log(E.Message);
        dtmTarka.cnTarka.RollbackTrans;
      end;
    end;
    screen.Cursor := crDefault;
  end;
end;

procedure TfrmHSzIMod.btnDeleteClick(Sender: TObject);
var
  deleteQuery : TTalQuery;
begin
  if dtmTarka.MsgDlg('Biztos törli a tételt?', mtConfirmation , [mbYes, mbNo],0) = mrNo then Exit;

  dtmTarka.cnTarka.BeginTrans;
  Try
      screen.Cursor := crHourGlass;

      deleteQuery := TTalQuery.Create(nil);
      deleteQuery.Connection := dtmTarka.cnTarka;
      deleteQuery.SQL.Add( 'delete from szlapok ');

      deleteQuery.SQL.Add( 'where enar = ' + QuotedStr( sdsKeresENAR.Value) + ' and ');
      deleteQuery.SQL.Add( ' sor = ' + IntToStr( sdsKeresSOR.Value) + ' and ');
      deleteQuery.SQL.Add( ' per = ' + IntToStr( sdsKeresPER.Value));
      deleteQuery.ExecSQL;
      deleteQuery.Free;
      dtmTarka.cnTarka.CommitTrans;
    Except
      On E:Exception Do
      begin
        Log('Törlés sikertelen.');
        Log(E.Message);
        dtmTarka.cnTarka.RollbackTrans;
      end;
    end;
    sdsKeres.Refresh;
    grdVal.Refresh;
    screen.Cursor := crDefault;
end;

procedure TfrmHSzIMod.btnPrintClic(Sender: TObject);
begin
  If frmHSzIMod.sdsListSzLapok.Active Then frmHSzIMod.sdsListSzLapok.Close;
  frmHSzIMod.sdsListSzLapok.Connection := dtmTarka.cnTarka;
  frxDBSzLapok.DataSet := frmHSzIMod.sdsListSzLapok;

  frmHSzIMod.sdsListSzLapok.DataSet.Parameters.ParamByName('PENAR').Value := sdsKeresENAR.Value;
  frmHSzIMod.sdsListSzLapok.DataSet.Parameters.ParamByName('PSOR').Value := sdsKeresSOR.Value;
  frmHSzIMod.sdsListSzLapok.DataSet.Parameters.ParamByName('PPER').Value := sdsKeresPER.Value;

  Try
    Screen.Cursor := crHourGlass;
    frmHSzIMod.sdsListSzLapok.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If frmHivSzarmIg.frxRepListak.LoadFromFile(dtmTarka.fr3Path + '\' + 'HivatalosSzarmazasiIgazolas.fr3') Then
  Begin
      frmHSzIMod.frxRepListak.Variables.Clear;
      frmHSzIMod.frxRepListak.Script.Variables['p0'] := 'HIVATALOS SZÁRMAZÁSI IGAZOLÁS';
      (*frmHSzIMod.frxRepListak.Script.Variables['p1'] := param1 + '   ' +
                                                               param2 + '   ' +
                                                               param3;
      frmHSzIMod.frxRepListak.Script.Variables['p3'] := param1;
      frmHSzIMod.frxRepListak.Script.Variables['p4'] := param2;
      frmHSzIMod.frxRepListak.Script.Variables['p5'] := param3;
        *)
      frmHSzIMod.frxRepListak.ShowReport();
  End;
  frmHSzIMod.sdsListSzLapok.Close;

end;

procedure TfrmHSzIMod.btnExportClick(Sender: TObject);
begin
  If frmHSzIMod.sdsListSzLapok.Active Then frmHSzIMod.sdsListSzLapok.Close;
  frmHSzIMod.sdsListSzLapok.Connection := dtmTarka.cnTarka;
  frxDBSzLapok.DataSet := frmHSzIMod.sdsListSzLapok;

  frmHSzIMod.sdsListSzLapok.DataSet.Parameters.ParamByName('PENAR').Value := sdsKeresENAR.Value;
  frmHSzIMod.sdsListSzLapok.DataSet.Parameters.ParamByName('PSOR').Value := sdsKeresSOR.Value;
  frmHSzIMod.sdsListSzLapok.DataSet.Parameters.ParamByName('PPER').Value := sdsKeresPER.Value;

  Try
    Screen.Cursor := crHourGlass;
    frmHSzIMod.sdsListSzLapok.Open;
  Finally
    Screen.Cursor := crArrow;
  End;


  dtmTarka.ExcelExport(frmHSzIMod.sdsListSzLapok, 'HivatalosSzarmazasiIgazolas_' + sdsKeresENAR.Value + '.XLS');
  frmHSzIMod.sdsListSzLapok.Close;

end;

procedure TfrmHSzIMod.sdsHSzIModLapReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(E.Message);

  // ShowMessage('The record with ID = ' + DataSet.FieldByName('ID').AsString +
  //  ' couldn''t be updated!' + sLineBreak + E.Context);
end;

procedure TfrmHSzIMod.btnCancelClick(Sender: TObject);
begin
  frmHSzIMod.sdsHSzIModLap.CancelUpdates;
    backToBrowseMode( NIL);
end;

procedure TfrmHSzIMod.FSZEditChange(Sender: TObject);
begin
  FSZEditChanged := true;
end;

end.

