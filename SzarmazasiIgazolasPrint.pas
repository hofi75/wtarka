unit SzarmazasiIgazolasPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, uValidedit, uTALEdit, uTALLabel, uTALGroupBox,
  DB, DBClient, uTALSimpleDataSet, ComCtrls, Buttons, uTALBitBtn,
  uDBValidedit, uTALDBEdit, ADODB, uTALComboBox, DBCtrls,
  uTALDBLookupComboBox, uTalQuery, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTalParams, uTALConnection, uTALStoredProc, frxClass, frxDBSet,
  uTALDBComboBox;

type
  TSzarmazasiIgazolasPrint = class(TDataModule)
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
    sdsListSzLapokAPAI_NAGYANYA_SZULDAT: TDateTimeField;
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
    sdsListSzLapokAPA_NET_PONT: TIntegerField;
    sdsListSzLapokAPA_TE_TIPUS: TIntegerField;
    sdsListSzLapokAPA_TE_IZMOLTSAG: TIntegerField;
    sdsListSzLapokAPA_TE_LABSZERKEZET: TIntegerField;
    sdsListSzLapokAPA_TE_TOGY: TIntegerField;
    sdsListSzLapokKIBEMAIL: TWideStringField;
    sdsListSzLapokTKVSZAM: TWideStringField;
    sdsListSzLapokAZONMOD: TWideStringField;
    sdsListSzLapokAZONEREDM: TWideStringField;
    sdsListSzLapokAZONIKT: TWideStringField;
    sdsListSzLapokSZORSZ: TWideStringField;
    sdsListSzLapokTENYEMAIL: TWideStringField;
    sdsListSzLapokTULEMAIL: TWideStringField;
    sdsListSzLapokAPTKVSZ: TWideStringField;
    sdsListSzLapokAPTKVR: TWideStringField;
    sdsListSzLapokAPAPTKVSZ: TWideStringField;
    sdsListSzLapokAPAPTKVR: TWideStringField;
    sdsListSzLapokAPANTKVSZ: TWideStringField;
    sdsListSzLapokAPANTKVR: TWideStringField;
    sdsListSzLapokANTKVSZ: TWideStringField;
    sdsListSzLapokANTKVR: TWideStringField;
    sdsListSzLapokANAPTKVSZ: TWideStringField;
    sdsListSzLapokANAPTKVR: TWideStringField;
    sdsListSzLapokANANTKVSZ: TWideStringField;
    sdsListSzLapokANANTKVR: TWideStringField;
    sdsListSzLapokTENYBECSDAT: TDateTimeField;
    sdsListSzLapokGENHIBA: TWideStringField;
    sdsListSzLapokTAZONMOD: TWideStringField;
    sdsListSzLapokTAZONEREDM: TWideStringField;
    sdsListSzLapokDANAZON: TWideStringField;
    sdsListSzLapokDANNEV: TWideStringField;
    frxRepListak: TfrxReport;
  private
    { Private declarations }
  public
    procedure Print( ENAR: string; sor: Integer; per: integer);
  end;

implementation

Uses udtmTarka;

{$R *.dfm}

procedure TSzarmazasiIgazolasPrint.Print( ENAR: string; sor: Integer; per: integer);
begin
  If sdsListSzLapok.Active Then sdsListSzLapok.Close;
  sdsListSzLapok.Connection := dtmTarka.cnTarka;
  frxDBSzLapok.DataSet := sdsListSzLapok;

  sdsListSzLapok.DataSet.Parameters.ParamByName('PENAR').Value := ENAR;
  sdsListSzLapok.DataSet.Parameters.ParamByName('PSOR').Value := sor;
  sdsListSzLapok.DataSet.Parameters.ParamByName('PPER').Value := per;

  Try
    Screen.Cursor := crHourGlass;
    sdsListSzLapok.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If frxRepListak.LoadFromFile( dtmTarka.fr3Path + '\' + 'SzarmazasiIgazolasWork.fr3') Then
  Begin
      frxRepListak.Variables.Clear;
      frxRepListak.Script.Variables['p0'] := 'HIVATALOS SZÁRMAZÁSI IGAZOLÁS';

      frxRepListak.ShowReport();
  End;
  sdsListSzLapok.Close;
end;

end.
