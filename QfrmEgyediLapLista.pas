unit QfrmEgyediLapLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn, StrUtils,
  ExtCtrls, DB, DBClient, uTALSimpleDataSet, frxClass, frxDBSet, Mask,
  uValidedit, uTALEdit, uTALLabel, ADODB, uTALConnection,
  frxExportPDF;

const
SQL1 = 'SELECT DISTINCT E.ENAR, ' +
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
      'E.FAJTAKOD, GET_FAJTA_NAME(E.FAJTAKOD) AS FNEV, ' +
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
      'E.DNS_DATE AS DNS_DATE, ' +
      'E.DNS_IKTATOSZAM AS DNS_IKTATOSZAM, ' +
      'E.APAKLSZ AS EAP_KLSZ, ' +
      'EAP.NEV AS EAP_NEV, ' +
      'EAP.FSZ AS EAP_FSZ, ' +
      'EAP.FKOD AS EAP_FAJTAKOD, GET_FAJTA_NAME(EAP.FKOD) EAP_FAJTANEV, ' +
      'EAP.SZULDAT AS EAP_SZULDAT, ' +
      'EAP.VER1 AS EAP_V1, EAP.VSZ1 AS EAP_VSZ1, GET_FAJTA_NAME(EAP.VER1) AS EAP_F1NEV, ' +
      'EAP.VER2 AS EAP_V2, EAP.VSZ2 AS EAP_VSZ2, GET_FAJTA_NAME(EAP.VER2) AS EAP_F2NEV, ' +
      'EAP.VER3 AS EAP_V3, EAP.VSZ3 AS EAP_VSZ3, GET_FAJTA_NAME(EAP.VER3) AS EAP_F3NEV, ' +
      'EAP.VER4 AS EAP_V4, EAP.VSZ4 AS EAP_VSZ4, GET_FAJTA_NAME(EAP.VER4) AS EAP_F4NEV, ' +
      'E.ANYA_ENAR AS EAN_ENAR, ' +
      'E.ANYA_ELL AS EAN_ELL, ' +
      'EAN.NEV AS EAN_NEV, ' +
      'EAN.FAJTAKOD AS EAN_FAJTAKOD, GET_FAJTA_NAME(EAN.FAJTAKOD) AS EAN_FAJTANEV, ' +
      'EAN.SZULDAT AS EAN_SZULDAT, ' +
      'EAN.MIN AS EAN_KMI, ' +
      'EAN.VER1 AS EAN_V1, EAN.VSZ1 AS EAN_VSZ1, GET_FAJTA_NAME(EAN.VER1) AS EAN_F1NEV, ' +
      'EAN.VER2 AS EAN_V2, EAN.VSZ2 AS EAN_VSZ2, GET_FAJTA_NAME(EAN.VER2) AS EAN_F2NEV, ' +
      'EAN.VER3 AS EAN_V3, EAN.VSZ3 AS EAN_VSZ3, GET_FAJTA_NAME(EAN.VER3) AS EAN_F3NEV, ' +
      'EAN.VER4 AS EAN_V4, EAN.VSZ4 AS EAN_VSZ4, GET_FAJTA_NAME(EAN.VER4) AS EAN_F4NEV, ' +
      'EAP2.AAZON AS EAPAP_AZON, ' +
      'EAP2.ANEVE AS EAPAP_NEV, ' +
      'EAP2.MAZON AS EAPAN_AZON, ' +
      'EAP.ANYANEV AS EAPAN_NEV, ' +
      'EANAP.KAZON AS EANAP_AZON, ' +
      'EANAP.NEVEE AS EANAP_NEV, ' +
      'TRIM(RNOTNULL(TRIM(EANAN.ENAR), TRIM(EANAN.TEHENSZAM), TRIM(EANAN.ID_ENAR),'' '')) AS EANAN_AZON, ' +
      'EANAN.NEV AS EANAN_NEV, ' +
      'E.DONOR_ANYA, ' +
      'GET_FAJTA_NAME(DANYA.VER1) AS DANYA_V1, DANYA.VSZ1 AS DANYA_VSZ1, ' +
      'GET_FAJTA_NAME(DANYA.VER2) AS DANYA_V2, DANYA.VSZ2 AS DANYA_VSZ2, ' +
      'GET_FAJTA_NAME(DANYA.VER3) AS DANYA_V3, DANYA.VSZ3 AS DANYA_VSZ3, ' +
      'GET_FAJTA_NAME(DANYA.VER4) AS DANYA_V4, DANYA.VSZ4 AS DANYA_VSZ4  ' +
      'FROM EGYEDEK E  ' +
      'LEFT JOIN TENY ON TENY.TKOD = E.TENYESZET  ' +
      'LEFT JOIN SZIN ON SZIN.KOD = E.SZIN  ' +
      'LEFT JOIN ORSZAG ON ORSZAG.KOD2 = E.SZORSZ  ' +
      'LEFT JOIN KODOK IVARF ON IVARF.KOD = E.IVAR AND IVARF.KODTIPUSOK_TIPUSKOD = ' + '''IVAR'''  +
      'LEFT JOIN APA EAP ON TRIM(EAP.KPLSZ) = TRIM(E.APAKLSZ) AND E.APAKLSZ IS NOT NULL ' +
      'LEFT JOIN EGYEDEK EAN ON (((EAN.ENAR=TRIM(E.ANYA_ENAR)) AND (E.ANYA_ENAR > ' + ''' ''' + ') AND EAN.TENYESZET = E.TENYESZET) OR ((EAN.TEHENSZAM=TRIM(E.ANYA_ELL)) AND (E.ANYA_ELL > ' + ''' ''' + '))) ' +
      'LEFT JOIN BIKTXT EAP2 ON EAP2.KAZTP = ' + '''4''' + ' AND TRIM(EAP2.KAZON) = TRIM(E.APAKLSZ) ' +
      'LEFT JOIN BIKTXT EAPAP ON EAPAP.KAZTP = ' + '''4''' + ' AND TRIM(EAPAP.KAZON) = TRIM(EAP.APAKPLSZ) ' +
      'LEFT JOIN BIKTXT EANAP ON (EANAP.KAZTP= ''4'' AND CAST(EANAP.KAZON AS INT)=CAST(EAN.APAKLSZ AS INT)) ' +
      'LEFT JOIN EGYEDEK EANAN ON (TRIM(EANAN.ENAR)=TRIM(EAN.ANYA_ENAR) AND EAN.ANYA_ENAR IS NOT NULL) OR (TRIM(EANAN.TEHENSZAM)=TRIM(EAN.ANYA_ELL) AND EAN.ANYA_ELL IS NOT NULL) ' +
      'OR (TRIM(EANAN.ID_ENAR)=TRIM(EAN.ANYA_ID_ENAR) AND EAN.ID_ENAR IS NOT NULL) ' +
      'LEFT JOIN EGYEDEK DANYA ON DANYA.ID = GET_DONOR_ANYA_ID(E.DONOR_ANYA) ' +
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
    sdsTermekenyitesek: TTalSimpleDataSet;
    frxDBTermekenyitesek: TfrxDBDataset;
    sdsTermekenyitesekDATUM1: TDateTimeField;
    sdsTermekenyitesekDATUM2: TDateTimeField;
    sdsTermekenyitesekKPLSZ: TWideStringField;
    sdsTermekenyitesekALLAPOT: TWideStringField;
    sdsTermekenyitesekBIKANEV: TWideStringField;
    sdsTermekenyitesekVEMHALL: TWideStringField;
    sdsTermekenyitesekTERMMOD: TWideStringField;
    sdsTermekenyitesekUT_ELL_DAT: TDateTimeField;
    sdsEllesekID: TBCDField;
    sdsEllesekELLES_DATUM: TDateTimeField;
    sdsEllesekELLES_LEF: TWideStringField;
    sdsEllesekE_TERM_DAT: TDateTimeField;
    sdsEllesekAPA_KPLSZ: TWideStringField;
    sdsEllesekAPA_NEV: TWideStringField;
    sdsEllesekKEK: TIntegerField;
    sdsEllesekB1_ENAR: TWideStringField;
    sdsEllesekB1_IVAR: TWideStringField;
    sdsEllesekB1_SULY: TBCDField;
    sdsEllesekB1_SZARVALTSAG: TWideStringField;
    sdsEllesekBE1_VALDAT: TDateTimeField;
    sdsEllesekBE1_VALTOM: TIntegerField;
    sdsEllesekBE1_TOM205: TIntegerField;
    sdsEllesekBE1_SV: TIntegerField;
    sdsEllesekB1_TGY: TIntegerField;
    sdsEllesekBE1_KIKDAT: TDateTimeField;
    sdsEllesekBE1_KIKOD: TWideStringField;
    sdsEllesekBE1_KIKOK: TWideStringField;
    sdsEllesekB2_ENAR: TWideStringField;
    sdsEllesekB2_IVAR: TWideStringField;
    sdsEllesekB2_SULY: TBCDField;
    sdsEllesekB2_SZARVALTSAG: TWideStringField;
    sdsEllesekBE2_VALDAT: TDateTimeField;
    sdsEllesekBE2_VALTOM: TIntegerField;
    sdsEllesekBE2_TOM205: TIntegerField;
    sdsEllesekBE2_SV: TIntegerField;
    sdsEllesekB2_TGY: TIntegerField;
    sdsEllesekBE2_KIKDAT: TDateTimeField;
    sdsEllesekBE2_KIKOD: TWideStringField;
    sdsEllesekBE2_KIKOK: TWideStringField;
    frxPDFExport1: TfrxPDFExport;
    frxEgyedLista: TfrxReport;
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
    sdsListaDNS_DATE: TDateTimeField;
    sdsListaDNS_IKTATOSZAM: TWideStringField;
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
    sdsListaEANAN_AZON: TWideStringField;
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
    sdsListaEANAN_NEV: TWideStringField;
    sdsListaDONOR_ANYA: TWideStringField;
    sdsListaDANYA_V1: TWideStringField;
    sdsListaDANYA_VSZ1: TBCDField;
    sdsListaDANYA_V2: TWideStringField;
    sdsListaDANYA_VSZ2: TBCDField;
    sdsListaDANYA_V3: TWideStringField;
    sdsListaDANYA_VSZ3: TBCDField;
    sdsListaDANYA_V4: TWideStringField;
    sdsListaDANYA_VSZ4: TBCDField;
    frxRepLista: TfrxReport;
    procedure actOKExecute(Sender: TObject);
    procedure sdsListaENARGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    egyed_id: Integer;
    report_save_filename: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEgyediLapLista: TfrmEgyediLapLista;

procedure EgyediLapLista(pID : Integer; filename : string);

implementation

uses udtmTarka;

{$R *.dfm}

procedure EgyediLapLista( pID : Integer; filename : string);
var
  ssql : string;
begin
  frmEgyediLapLista := TfrmEgyediLapLista.Create(Application);
  frmEgyediLapLista.report_save_filename := filename;

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
        // sdsEllesek.DataSet.Parameters.ParamByName('ID').Value := pID * 1.0;
        sdsEllesek.Open;
        sdsKullem.DataSet.CommandText := StringReplace( sdsKullem.DataSet.CommandText, ':ID', IntToStr( pID), [rfReplaceAll]);
        // sdsKullem.DataSet.Parameters.ParamByName('ID').Value := pID;
        sdsKullem.Open;
        sdsTermekenyitesek.DataSet.CommandText := StringReplace( sdsTermekenyitesek.DataSet.CommandText, '99999', IntToStr( pID), [rfReplaceAll]);
        sdsTermekenyitesek.Open;
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
  // if frxRepLista.LoadFromFile('EgyediLap.fr3') then begin
       // paraméter átadás a lista fejhez
     // frxRepLista.Clear;
     frxRepLista.Variables.Clear;
     frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
     frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
     frxRepLista.Script.Variables['SzuroFeltetelek'] := '';
     frxRepLista.Script.Variables['IvarNev'] := dtmTarka.getIvarName( egyed_id);
     if report_save_filename = '' then
        frxRepLista.ShowReport()
     else begin
        frxRepLista.PrepareReport();
        frxPDFExport1.FileName := report_save_filename;
        frxRepLista.Export( frxPDFExport1);
     end;
  // end;
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
