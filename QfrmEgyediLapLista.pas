unit QfrmEgyediLapLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn, StrUtils,
  ExtCtrls, DB, DBClient, uTALSimpleDataSet, frxClass, frxDBSet, Mask,
  uValidedit, uTALEdit, uTALLabel, ADODB, uTALConnection;

const
 SQL1 = 'select E.ENAR, E.TENYESZET, TENY.TNEV2, ' +
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
    sdsListaENAR: TWideStringField;
    sdsListaFULSZAM: TWideStringField;
    sdsListaSZULDAT: TDateTimeField;
    sdsListaMLEVEL1: TWideStringField;
    sdsListaMLEVEL2: TWideStringField;
    sdsListaTKV: TWideStringField;
    sdsListaSZIN: TWideStringField;
    sdsListaFAJTAKOD: TWideStringField;
    sdsListaSZINNEV: TWideStringField;
    sdsListaFNEV: TWideStringField;
    sdsListaVSZ1: TBCDField;
    sdsListaVSZ2: TBCDField;
    sdsListaVSZ3: TBCDField;
    sdsListaVSZ4: TBCDField;
    sdsListaKKOD: TWideStringField;
    sdsListaVALDAT: TDateTimeField;
    sdsListaVALTOM: TSmallintField;
    sdsListaTOM205: TSmallintField;
    sdsListaSV: TSmallintField;
    sdsListaSZORSZ: TWideStringField;
    sdsListaORSZAGNEV: TWideStringField;
    sdsListaSZARVALTSAG: TWideStringField;
    sdsListaBIKANEVELO: TWideStringField;
    sdsListaTENYTOM: TSmallintField;
    sdsListaIVAR: TWideStringField;
    sdsListaAPANEV: TWideStringField;
    sdsListaAPA_FSZ: TWideStringField;
    sdsListaAPA_FAJTANEV: TWideStringField;
    sdsListaAPA_SZULDAT: TDateTimeField;
    sdsListaAPA_APAENAR: TWideStringField;
    sdsListaAPA_APAFSZ: TWideStringField;
    sdsListaAPA_VSZ1: TBCDField;
    sdsListaAPA_V1NEV: TWideStringField;
    sdsListaAPA_VSZ2: TBCDField;
    sdsListaAPA_V2NEV: TWideStringField;
    sdsListaAPA_VSZ3: TBCDField;
    sdsListaAPA_V3NEV: TWideStringField;
    sdsListaAPA_VSZ4: TBCDField;
    sdsListaAPA_V4NEV: TWideStringField;
    sdsListaAPA_ANYA: TWideStringField;
    sdsListaANYA_ENAR: TWideStringField;
    sdsListaANYA_NEV: TWideStringField;
    sdsListaANYA_FAJTANEV: TWideStringField;
    sdsListaANYA_SZULDAT: TDateTimeField;
    sdsListaANYA_VSZ1: TBCDField;
    sdsListaANYA_V1NEV: TWideStringField;
    sdsListaANYA_VSZ2: TBCDField;
    sdsListaANYA_V2NEV: TWideStringField;
    sdsListaANYA_VSZ3: TBCDField;
    sdsListaANYA_V3NEV: TWideStringField;
    sdsListaANYA_VSZ4: TBCDField;
    sdsListaALLDAT: TDateTimeField;
    sdsListaKIKDAT: TDateTimeField;
    sdsListaTENYESZET: TWideStringField;
    sdsListaTNEV2: TWideStringField;
    sdsListaID_ENAR: TWideStringField;
    sdsListaTEHENSZAM: TWideStringField;
    sdsListaANYA_V4NEV: TWideStringField;
    sdsListaANA_APAFSZ: TWideStringField;
    sdsListaANA_ANYA_FULSZAM: TWideStringField;
    sdsListaVER1: TWideStringField;
    sdsListaVER2: TWideStringField;
    sdsListaVER3: TWideStringField;
    sdsListaVER4: TWideStringField;
    sdsListaAPA_FAJTAKOD: TWideStringField;
    sdsListaAPA_V1: TWideStringField;
    sdsListaAPA_V2: TWideStringField;
    sdsListaAPA_V3: TWideStringField;
    sdsListaAPA_V4: TWideStringField;
    sdsListaANYA_FAJTAKOD: TWideStringField;
    sdsListaANYA_APAKLSZ: TWideStringField;
    sdsListaANYA_V1: TWideStringField;
    sdsListaANYA_V2: TWideStringField;
    sdsListaANYA_V3: TWideStringField;
    sdsListaANYA_V4: TWideStringField;
    sdsListaKIKOD: TWideStringField;
    sdsListaKIKOK: TWideStringField;
    sdsListaAPAKLSZ: TWideStringField;
    sdsListaAPA_APAKLSZ: TWideStringField;
    sdsListaKMI: TBCDField;
    sdsListaVALKOR: TIntegerField;
    sdsListaTGYVAL: TBCDField;
    sdsListaANA_ANYA_ENAR: TWideStringField;
    sdsListaANYA_ELL: TWideStringField;
    sdsListaANYA_MIN: TBCDField;
    sdsListaBNI: TBCDField;
    sdsListaSZAPIND: TBCDField;
    sdsListaKULLEM_IND: TBCDField;
    frxEgyedLista: TfrxReport;
    frxRepLista: TfrxReport;
    procedure actOKExecute(Sender: TObject);
    procedure sdsListaENARGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
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
