unit QfrmEgyediLapLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn, StrUtils,
  ExtCtrls, DB, DBClient, uTALSimpleDataSet, frxClass, frxDBSet, Mask,
  uValidedit, uTALEdit, uTALLabel, ADODB, uTALConnection;

const
 SQL2 = 'select E.ENAR, E.TENYESZET, TENY.TNEV2, ' +
       ' E.FULSZAM, E.ID_ENAR,E.TEHENSZAM, ' +
       ' E.SZULDAT, ' +
       ' E.MLEVEL1, E.MLEVEL2, ' +
       ' E.TKV, ' +
       ' E.SZIN, SZIN.NEV AS SZINNEV, ' +
       ' E.FAJTAKOD,EF.FNEV, ' +
       ' E.VER1,E.VSZ1,E.VER2,E.VSZ2,E.VER3,E.VSZ3,E.VER4,E.VSZ4, ' +
       ' E.KKOD, ' +
       ' E.VALDAT, CAST(TRUNC( E.VALDAT - E.SZULDAT) AS NUMBER (5,0)) AS VALKOR, E.VALTOM, E.TOM205, E.SV, ' +
       ' Cast(tomgyar(e.szul_suly, e.valtom, e.szuldat,e.valdat) as Integer) as tgyval, ' +
       ' E.SZORSZ,ORSZAG.NEV AS ORSZAGNEV, ' +
       ' E.SZARVALTSAG, ' +
       ' E.BIKANEVELO, ' +
       ' E.TENYTOM, ' +
       ' E.MIN as KMI, ' +
       ' E.IVAR, ' +
       ' E.APAKLSZ, ' +
       ' EAPA.NEV AS APANEV, ' +
       ' EAPA.FSZ AS APA_FSZ, EAPA.APAKPLSZ AS APA_APAKLSZ, ' +
       ' EAPA.FKOD AS APA_FAJTAKOD, AF.FNEV AS APA_FAJTANEV, ' +
       ' EAPA.SZULDAT AS APA_SZULDAT, ' +
       ' EAPA.APAENAR AS APA_APAENAR, EAPA.APAFSZ AS APA_APAFSZ, ' +
       ' EAPA.VER1 AS APA_V1, EAPA.VSZ1 AS APA_VSZ1 ,AF1.FNEV AS APA_V1NEV, ' +
       ' EAPA.VER2 AS APA_V2, EAPA.VSZ2 AS APA_VSZ2 ,AF2.FNEV AS APA_V2NEV, ' +
       ' EAPA.VER3 AS APA_V3, EAPA.VSZ3 AS APA_VSZ3 ,AF3.FNEV AS APA_V3NEV, ' +
       ' EAPA.VER4 AS APA_V4, EAPA.VSZ4 AS APA_VSZ4 ,AF4.FNEV AS APA_V4NEV, ' +
       ' EAPA.ANAN as APA_ANYA, ' +
       ' E.ANYA_ENAR, E.ANYA_ELL, ANA.NEV AS ANYA_NEV, ' +
       ' ANA.FAJTAKOD AS ANYA_FAJTAKOD, ANF.FNEV AS ANYA_FAJTANEV, ' +
       ' ANA.SZULDAT AS ANYA_SZULDAT, ' +
       ' ANA.APAKLSZ AS ANYA_APAKLSZ, ' +
       ' ANA.VER1 AS ANYA_V1, ANA.VSZ1 AS ANYA_VSZ1 ,ANF1.FNEV AS ANYA_V1NEV, ' +
       ' ANA.VER2 AS ANYA_V2, ANA.VSZ2 AS ANYA_VSZ2 ,ANF2.FNEV AS ANYA_V2NEV, ' +
       ' ANA.VER3 AS ANYA_V3, ANA.VSZ3 AS ANYA_VSZ3 ,ANF3.FNEV AS ANYA_V3NEV, ' +
       ' ANA.VER4 AS ANYA_V4, ANA.VSZ4 AS ANYA_VSZ4 ,ANF4.FNEV AS ANYA_V4NEV, ' +
       ' E.ALLDAT, ' +
       ' E.KIKDAT, ' +
       ' E.KIKOD, ' +
       ' E.KIKOK, ' +
       ' AAPA.FSZ AS ANA_APAFSZ, ' +
       ' ANA.ANYA_ENAR AS ANA_ANYA_ENAR, ' +
       ' ANA.ANYA_ELL as ANA_ANYA_FULSZAM, ANA.min as ANYA_MIN, ' +
       ' cast(BNI(E.id) as numeric(10,3)) as BNI, ' +
       ' cast(SZAPIND(E.id) as numeric(10,3)) as SZAPIND, ' +
       ' cast(KULLEM_IND(E.ENAR) as numeric(10,3)) as KULLEM_IND ' +
       ' FROM EGYEDEK E ' +
       ' LEFT JOIN TENY ON TENY.TKOD = E.TENYESZET ' +
       ' LEFT JOIN SZIN ON SZIN.KOD = E.SZIN ' +
       ' LEFT JOIN FAJTA EF ON EF.FKOD = E.FAJTAKOD ' +
       ' LEFT JOIN ORSZAG ON ORSZAG.KOD1 = E.SZORSZ ' +
       ' left join KODOK IVARF on IVARF.KOD = E.IVAR and IVARF.KODTIPUSOK_TIPUSKOD = ''IVAR'' ' +
       ' left join APA EAPA on EAPA.KPLSZ = E.APAKLSZ and E.APAKLSZ is not null  ' +
       ' LEFT JOIN FAJTA AF ON AF.FKOD = EAPA.FKOD ' +
       ' LEFT JOIN FAJTA AF1 ON AF1.FKOD = EAPA.VER1 ' +
       ' LEFT JOIN FAJTA AF2 ON AF2.FKOD = EAPA.VER2 ' +
       ' LEFT JOIN FAJTA AF3 ON AF3.FKOD = EAPA.VER3 ' +
       ' left join FAJTA AF4 on AF4.FKOD = EAPA.VER4 ' +
       ' left join EGYEDEK ANA on (((ANA.ENAR = trim(E.ANYA_ENAR)) and (E.ANYA_ENAR > '' '')) or ((ANA.TEHENSZAM=trim(E.ANYA_ELL)) and (E.ANYA_ELL > '' '') )) ' +
       ' LEFT JOIN FAJTA ANF ON ANF.FKOD = ANA.FAJTAKOD ' +
       ' LEFT JOIN FAJTA ANF1 ON ANF1.FKOD = ANA.VER1 ' +
       ' LEFT JOIN FAJTA ANF2 ON ANF2.FKOD = ANA.VER2 ' +
       ' LEFT JOIN FAJTA ANF3 ON ANF3.FKOD = ANA.VER3 ' +
       ' left join FAJTA ANF4 on ANF4.FKOD = ANA.VER4 ' +
       ' LEFT JOIN APA AAPA ON AAPA.KPLSZ = ANA.APAKLSZ AND ANA.APAKLSZ IS NOT NULL ' +
       // ' left join EGYEDEK ANA_ANYA on (((ANA_ANYA.ENAR = trim(ANA.ANYA_ENAR)) and (ANA.ANYA_ENAR > '' '')) or ((ANA_ANYA.TEHENSZAM=TRIM(ANA.ANYA_ELL)) and (ANA.ANYA_ELL > '' ''))) ' +
       ' where E.ID  = :ID ';
SQL1 = 'SELECT E.ENAR, ' +
      'E.TENYESZET, ' +
      'TENY.TNEV2, ' +
      'TENY.VAROS, ' +
      'E.FULSZAM, ' +
      'E.ID_ENAR, ' +
      'E.TEHENSZAM, ' +
      'E.SZULDAT, ' +
      'E.MLEVEL1, ' +
      'E.MLEVEL2, ' +
      'E.TKV, ' +
      'E.SZIN, SZIN.NEV AS SZINNEV, ' +
      'E.FAJTAKOD, EF.FNEV, ' +
      'E.VER1, E.VSZ1, E.VER2, E.VSZ2, E.VER3, E.VSZ3, E.VER4, E.VSZ4, ' +
      'E.KKOD, ' +
      'E.VALDAT, CAST(TRUNC(E.VALDAT - E.SZULDAT) AS NUMBER (5,0)) AS VALKOR, E.VALTOM, E.TOM205, E.SV, ' +
      'CAST(TOMGYAR(E.SZUL_SULY, E.VALTOM, E.SZULDAT, E.VALDAT) AS INTEGER) AS TGYVAL, ' +
      'E.SZORSZ, ORSZAG.NEV AS ORSZAGNEV, ' +
      'E.SZARVALTSAG, ' +
      'E.BIKANEVELO, ' +
      'E.TENYTOM, ' +
      'E.MIN AS KMI, ' +
      'E.IVAR, ' +
      'CAST (BNI(E.ID) AS NUMERIC(10,3)) AS BNI, ' +
      'CAST (SZAPIND(E.ID) AS NUMERIC(10,3)) AS SZAPIND, ' +
      'CAST (KULLEM_IND(E.ENAR) AS NUMERIC(10,3)) AS KULLEM_IND, ' +
      'E.NET_PONT, ' +
      'E.APAKLSZ AS EAP_KLSZ, ' +
      'EAP.NEV AS EAP_NEV, ' +
      'EAP.FSZ AS EAP_FSZ, ' +
      'EAP.FKOD AS EAP_FAJTAKOD, EAPF.FNEV AS EAP_FAJTANEV, ' +
      'EAP.SZULDAT AS EAP_SZULDAT, ' +
      'EAP.VER1 AS EAP_V1, EAP.VSZ1 AS EAP_VSZ1, EAPF1.FNEV AS EAP_F1NEV, ' +
      'EAP.VER2 AS EAP_V2, EAP.VSZ2 AS EAP_VSZ2, EAPF2.FNEV AS EAP_F2NEV, ' +
      'EAP.VER3 AS EAP_V3, EAP.VSZ3 AS EAP_VSZ3, EAPF3.FNEV AS EAP_F3NEV, ' +
      'EAP.VER4 AS EAP_V4, EAP.VSZ4 AS EAP_VSZ4, EAPF4.FNEV AS EAP_F4NEV, ' +
      'E.ANYA_ENAR AS EAN_ENAR, ' +
      'E.ANYA_ELL AS EAN_ELL, ' +
      'EAN.NEV AS EAN_NEV, ' +
      'EAN.FAJTAKOD AS EAN_FAJTAKOD, EANF.FNEV AS EAN_FAJTANEV, ' +
      'EAN.SZULDAT AS EAN_SZULDAT, ' +
      'EAN.MIN AS EAN_KMI, ' +
      'EAN.VER1 AS EAN_V1, EAN.VSZ1 AS EAN_VSZ1, EANF1.FNEV AS EAN_F1NEV, ' +
      'EAN.VER2 AS EAN_V2, EAN.VSZ2 AS EAN_VSZ2, EANF2.FNEV AS EAN_F2NEV, ' +
      'EAN.VER3 AS EAN_V3, EAN.VSZ3 AS EAN_VSZ3, EANF3.FNEV AS EAN_F3NEV, ' +
      'EAN.VER4 AS EAN_V4, EAN.VSZ4 AS EAN_VSZ4, EANF4.FNEV AS EAN_F4NEV, ' +
      'EAPAP.KAZON AS EAPAP_AZON, ' +
      'EAPAP.NEVEE AS EAPAP_NEV, ' +
      'EAP.AENAR AS EAPAN_AZON, ' +
      'EAP.ANYANEV AS EAPAN_NEV, ' +
      'EANAP.KAZON AS EANAP_AZON, ' +
      'EANAP.NEVEE AS EANAP_NEV, ' +
      'EANAN.ENAR AS EANAN_AZON, ' +
      'EANAN.NEV AS EANAN_NEV ' +
      'FROM EGYEDEK E  ' +
      'LEFT JOIN TENY ON TENY.TKOD = E.TENYESZET  ' +
      'LEFT JOIN SZIN ON SZIN.KOD = E.SZIN  ' +
      'LEFT JOIN FAJTA EF ON EF.FKOD = E.FAJTAKOD  ' +
      'LEFT JOIN ORSZAG ON ORSZAG.KOD1 = E.SZORSZ  ' +
      'LEFT JOIN KODOK IVARF ON IVARF.KOD = E.IVAR AND IVARF.KODTIPUSOK_TIPUSKOD = ' + '''IVAR'''  +
      'LEFT JOIN APA EAP ON TRIM(EAP.KPLSZ) = TRIM(E.APAKLSZ) AND E.APAKLSZ IS NOT NULL ' +
      'LEFT JOIN FAJTA EAPF ON EAPF.FKOD = EAP.FKOD AND EAP.KPLSZ IS NOT NULL  ' +
      'LEFT JOIN FAJTA EAPF1 ON EAPF1.FKOD = EAP.VER1 ' +
      'LEFT JOIN FAJTA EAPF2 ON EAPF2.FKOD = EAP.VER2 ' +
      'LEFT JOIN FAJTA EAPF3 ON EAPF3.FKOD = EAP.VER3 ' +
      'LEFT JOIN FAJTA EAPF4 ON EAPF4.FKOD = EAP.VER4 ' +
      'LEFT JOIN EGYEDEK EAN ON (((EAN.ENAR = TRIM(E.ANYA_ENAR)) AND (E.ANYA_ENAR > ' + ''' ''' + ')) OR ((EAN.TEHENSZAM = TRIM(E.ANYA_ELL)) AND (E.ANYA_ELL > ' + ''' ''' + '))) AND EAN.TENYESZET = E.TENYESZET  ' +
      'LEFT JOIN FAJTA EANF ON EANF.FKOD = EAN.FAJTAKOD  ' +
      'LEFT JOIN FAJTA EANF1 ON EANF1.FKOD = EAN.VER1 ' +
      'LEFT JOIN FAJTA EANF2 ON EANF2.FKOD = EAN.VER2 ' +
      'LEFT JOIN FAJTA EANF3 ON EANF3.FKOD = EAN.VER3 ' +
      'LEFT JOIN FAJTA EANF4 ON EANF4.FKOD = EAN.VER4 ' +
      'LEFT JOIN BIKTXT EAPAP ON EAPAP.KAZTP = ' + '''4''' + ' AND TRIM(EAPAP.KAZON) = TRIM(EAP.APAKPLSZ) ' +
      'LEFT JOIN BIKTXT EANAP ON ((TRIM(EANAP.KAZON) = TRIM(EAN.APAKLSZ)) OR (TRIM(EANAP.KAZON) = TRIM(EAN.APA_FULSZAM)) OR (TRIM(EANAP.KAZON) = TRIM(EAN.ID_APA))) AND EANAP.KAZON IS NOT NULL ' +
      'LEFT JOIN EGYEDEK EANAN ON ((TRIM(EANAN.ENAR) = TRIM(EAN.ANYA_ENAR) AND EAN.ANYA_ENAR IS NOT NULL) OR ' +
                  '(TRIM(EANAN.TEHENSZAM) = TRIM(EAN.ANYA_ELL) AND EAN.ANYA_ELL IS NOT NULL) OR ' +
                  '(TRIM(EANAN.ID_ENAR) = TRIM(EAN.ANYA_ID_ENAR)) AND EAN.ANYA_ID_ENAR IS NOT NULL) ' +
      'where E.ID  = :ID ';

type
  TfrmEgyediLapLista = class(TfrmNyomtatoOs)
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    edtEgyedTol: TTalEdit;
    edtEgyedIg: TTalEdit;
    edtTenyeszet: TTalEdit;
    TalLabel3: TTalLabel;
    sdsKullem: TTalSimpleDataSet;
    frxDBDKullem: TfrxDBDataset;
    sdsEllesek: TTalSimpleDataSet;
    dtsEllesek: TfrxDBDataset;
    sdsEllesekENAR: TWideStringField;
    sdsEllesekFULSZAM: TWideStringField;
    sdsEllesekE_TERM_DAT: TDateTimeField;
    sdsEllesekE_TERM_ID: TBCDField;
    sdsEllesekELLES_DATUM: TDateTimeField;
    sdsEllesekELLES_LEF: TWideStringField;
    sdsEllesekBORJU_SSZ: TBCDField;
    sdsEllesekBORJU_IVAR: TWideStringField;
    sdsEllesekBORJU_SZIN: TWideStringField;
    sdsEllesekBORJU_SULY: TBCDField;
    sdsEllesekBORJU_KIESES_KOD: TWideStringField;
    sdsEllesekBORJU_KIESES_OK: TWideStringField;
    sdsEllesekBORJU_ENAR: TWideStringField;
    sdsEllesekSZARVALTSAG: TWideStringField;
    sdsEllesekKEK: TIntegerField;
    sdsEllesekKPLSZ: TWideStringField;
    sdsEllesekTERM_DATUM: TDateTimeField;
    sdsEllesekVALDAT: TDateTimeField;
    sdsEllesekVALTOM: TIntegerField;
    sdsEllesekKOR_NAP: TIntegerField;
    sdsEllesekTGYVAL: TBCDField;
    sdsEllesekATL_NAP: TBCDField;
    sdsEllesekTOM205: TIntegerField;
    sdsEllesekSV: TIntegerField;
    sdsEllesekKIKDAT: TDateTimeField;
    sdsEllesekKIKOD: TWideStringField;
    sdsEllesekKIKOK: TWideStringField;
    TalConnection1: TTalConnection;
    sdsKullemID: TBCDField;
    sdsKullemENAR: TWideStringField;
    sdsKullemFULSZAM: TWideStringField;
    sdsKullemTEHENSZAM: TWideStringField;
    sdsKullemKPLSZ: TWideStringField;
    sdsKullemBIRDAT: TDateTimeField;
    sdsKullemFARMAG: TIntegerField;
    sdsKullemFARHOSSZ: TIntegerField;
    sdsKullemFARSZEL: TIntegerField;
    sdsKullemTORZSHOSSZ: TIntegerField;
    sdsKullemTORZSMELY: TIntegerField;
    sdsKullemCOMBIZOM: TIntegerField;
    sdsKullemLAPIZOM: TIntegerField;
    sdsKullemFARLEJT: TIntegerField;
    sdsKullemHATSOLAB: TIntegerField;
    sdsKullemCSUD: TIntegerField;
    sdsKullemTOGYMELY: TIntegerField;
    sdsKullemBIMBO: TIntegerField;
    sdsKullemTIPUS: TIntegerField;
    sdsKullemIZOM: TIntegerField;
    sdsKullemLAB: TIntegerField;
    sdsKullemTOGY: TIntegerField;
    sdsKullemTENYESZET: TWideStringField;
    sdsKullemBIKANEV: TWideStringField;
    dtsLista: TfrxDBDataset;
    frxDBLista: TfrxDBDataset;
    sdsLista: TTalSimpleDataSet;
    frxRepLista: TfrxReport;
    sdsListaENAR: TWideStringField;
    sdsListaTENYESZET: TWideStringField;
    sdsListaTNEV2: TWideStringField;
    sdsListaVAROS: TWideStringField;
    sdsListaFULSZAM: TWideStringField;
    sdsListaID_ENAR: TWideStringField;
    sdsListaTEHENSZAM: TWideStringField;
    sdsListaSZULDAT: TDateTimeField;
    sdsListaMLEVEL1: TWideStringField;
    sdsListaMLEVEL2: TWideStringField;
    sdsListaTKV: TWideStringField;
    sdsListaSZIN: TWideStringField;
    sdsListaSZINNEV: TWideStringField;
    sdsListaFAJTAKOD: TWideStringField;
    sdsListaFNEV: TWideStringField;
    sdsListaVER1: TWideStringField;
    sdsListaVSZ1: TBCDField;
    sdsListaVER2: TWideStringField;
    sdsListaVSZ2: TBCDField;
    sdsListaVER3: TWideStringField;
    sdsListaVSZ3: TBCDField;
    sdsListaVER4: TWideStringField;
    sdsListaVSZ4: TBCDField;
    sdsListaKKOD: TWideStringField;
    sdsListaVALDAT: TDateTimeField;
    sdsListaVALKOR: TIntegerField;
    sdsListaVALTOM: TIntegerField;
    sdsListaTOM205: TIntegerField;
    sdsListaSV: TIntegerField;
    sdsListaTGYVAL: TBCDField;
    sdsListaSZORSZ: TWideStringField;
    sdsListaORSZAGNEV: TWideStringField;
    sdsListaSZARVALTSAG: TWideStringField;
    sdsListaBIKANEVELO: TWideStringField;
    sdsListaTENYTOM: TIntegerField;
    sdsListaKMI: TBCDField;
    sdsListaIVAR: TWideStringField;
    sdsListaBNI: TBCDField;
    sdsListaSZAPIND: TBCDField;
    sdsListaKULLEM_IND: TBCDField;
    sdsListaNET_PONT: TIntegerField;
    sdsListaEAP_KLSZ: TWideStringField;
    sdsListaEAP_NEV: TWideStringField;
    sdsListaEAP_FSZ: TWideStringField;
    sdsListaEAP_FAJTAKOD: TWideStringField;
    sdsListaEAP_FAJTANEV: TWideStringField;
    sdsListaEAP_SZULDAT: TDateTimeField;
    sdsListaEAP_V1: TWideStringField;
    sdsListaEAP_VSZ1: TBCDField;
    sdsListaEAP_F1NEV: TWideStringField;
    sdsListaEAP_V2: TWideStringField;
    sdsListaEAP_VSZ2: TBCDField;
    sdsListaEAP_F2NEV: TWideStringField;
    sdsListaEAP_V3: TWideStringField;
    sdsListaEAP_VSZ3: TBCDField;
    sdsListaEAP_F3NEV: TWideStringField;
    sdsListaEAP_V4: TWideStringField;
    sdsListaEAP_VSZ4: TBCDField;
    sdsListaEAP_F4NEV: TWideStringField;
    sdsListaEAN_ENAR: TWideStringField;
    sdsListaEAN_ELL: TWideStringField;
    sdsListaEAN_NEV: TWideStringField;
    sdsListaEAN_FAJTAKOD: TWideStringField;
    sdsListaEAN_FAJTANEV: TWideStringField;
    sdsListaEAN_SZULDAT: TDateTimeField;
    sdsListaEAN_KMI: TBCDField;
    sdsListaEAN_V1: TWideStringField;
    sdsListaEAN_VSZ1: TBCDField;
    sdsListaEAN_F1NEV: TWideStringField;
    sdsListaEAN_V2: TWideStringField;
    sdsListaEAN_VSZ2: TBCDField;
    sdsListaEAN_F2NEV: TWideStringField;
    sdsListaEAN_V3: TWideStringField;
    sdsListaEAN_VSZ3: TBCDField;
    sdsListaEAN_F3NEV: TWideStringField;
    sdsListaEAN_V4: TWideStringField;
    sdsListaEAN_VSZ4: TBCDField;
    sdsListaEAN_F4NEV: TWideStringField;
    sdsListaEAPAP_AZON: TWideStringField;
    sdsListaEAPAP_NEV: TWideStringField;
    sdsListaEAPAN_AZON: TWideStringField;
    sdsListaEAPAN_NEV: TWideStringField;
    sdsListaEANAP_AZON: TWideStringField;
    sdsListaEANAP_NEV: TWideStringField;
    sdsListaEANAN_AZON: TWideStringField;
    sdsListaEANAN_NEV: TWideStringField;
    frxEgyedLista: TfrxReport;
    procedure actOKExecute(Sender: TObject);
    procedure sdsListaENARGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    egyed_id: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEgyediLapLista: TfrmEgyediLapLista;

procedure EgyediLapLista(pID : Integer);

implementation

uses udtmTarka;

{$R *.dfm}

procedure EgyediLapLista(pID : Integer);
var
  ssql : string;
begin
  frmEgyediLapLista := TfrmEgyediLapLista.Create(Application);
  // if pID = EmptyStr then pID := NULL;


  with frmEgyediLapLista do
  begin
    egyed_id := pID;
    sdsLista.Connection := dtmTarka.cnTarka;
    sdsKullem.Connection := dtmTarka.cnTarka;
    sdsEllesek.Connection := dtmTarka.cnTarka;
    try
      if pID = NULL then begin
         ShowModal;
      end
      else
      begin
        sdsLista.DataSet.CommandText := SQL1;
        sdsLista.DataSet.CommandText := StringReplace( sdsLista.DataSet.CommandText, ':ID', IntToStr( pID), [rfReplaceAll]);
        sdsLista.Open;

        // sdsEllesek.DataSet.Parameters.ParamByName('ID').Value := pID;
        sdsEllesek.DataSet.CommandText := StringReplace( sdsEllesek.DataSet.CommandText, ':ID', IntToStr( pID), [rfReplaceAll]);
        sdsEllesek.Open;
        sdsKullem.DataSet.CommandText := StringReplace( sdsKullem.DataSet.CommandText, ':ID', IntToStr( pID), [rfReplaceAll]);
        // sdsKullem.DataSet.Parameters.ParamByName('ID').Value := pID;
        sdsKullem.Open;
        actOKExecute(NIL);
      end;
    finally
      if sdsLista.Active then
        sdsLista.Close;

      if sdsKullem.Active then
        sdsKullem.Close;

      if sdsEllesek.Active then
        sdsEllesek.Close;
      FreeAndNil(frmEgyediLapLista);
    end;
  end;
end;



procedure TfrmEgyediLapLista.actOKExecute(Sender: TObject);
begin
  inherited;
  if sdsLista.Active = false then begin
  end;
  if frxRepLista.LoadFromFile('EgyediLap.fr3') then begin
       // paraméter átadás a lista fejhez
     frxRepLista.Variables.Clear;
     frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
     frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
     frxRepLista.Script.Variables['SzuroFeltetelek'] := '';
     frxRepLista.Script.Variables['IvarNev'] := dtmTarka.getIvarName( egyed_id);
     frxRepLista.ShowReport();
  end;
  ModalResult := mrOK;
end;

procedure TfrmEgyediLapLista.sdsListaENARGetText(Sender: TField;
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

end.
