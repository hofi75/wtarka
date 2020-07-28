unit QfrmZaras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn, DateUtils,
  ExtCtrls, Mask, uValidedit, uTALEdit, uTALLabel, frxClass, frxDBSet, DB,
  DBClient, uTALSimpleDataSet, uTALMaskEdit, ADODB;

type
  TfrmZaras = class(TfrmNyomtatoOs)
    TalLabel1: TTalLabel;
    sdsZarLista1: TTalSimpleDataSet;
    frxDBZarLista: TfrxDBDataset;
    sdsZarLista2: TTalSimpleDataSet;
    edtEv: TTalMaskEdit;
    sdsZarLista1EV: TIntegerField;
    sdsZarLista1NYITO_LETSZAM: TIntegerField;
    sdsZarLista1NYITO_ELETKOR: TBCDField;
    sdsZarLista1BORJU_DB: TIntegerField;
    sdsZarLista1TENYBE_ALL: TIntegerField;
    sdsZarLista1TENYBE_KOR: TBCDField;
    sdsZarLista1SELEJT_DB: TIntegerField;
    sdsZarLista1SELEJT_KOR: TBCDField;
    sdsZarLista1ZARO_DB: TIntegerField;
    sdsZarLista1ZARO_KOR: TBCDField;
    sdsZarLista1BORJU_SZAZ: TBCDField;
    frxDBZarLista2: TfrxDBDataset;
    sdsZarLstU: TTalSimpleDataSet;
    frxDBZarU: TfrxDBDataset;
    sdsZarLista21: TTalSimpleDataSet;
    dtsZarLista21: TfrxDBDataset;
    sdsZarM: TTalSimpleDataSet;
    frxDBZarm: TfrxDBDataset;
    sdsBikas: TTalSimpleDataSet;
    frxDBBikas: TfrxDBDataset;
    sdsZarLista2BORJU_IVAR: TWideStringField;
    sdsZarLista2IVARDB: TBCDField;
    sdsZarLista2VEMH_NAP_DB: TBCDField;
    sdsZarLista2SZUL_TOMEG: TBCDField;
    sdsZarLista2VALASZTOTT_DB: TBCDField;
    sdsZarLista2VALTOM: TBCDField;
    sdsZarLista2ELETNAP: TBCDField;
    sdsZarLista2ELET_TGYAR: TBCDField;
    sdsZarLista2TOM205: TBCDField;
    sdsZarLista2SV: TBCDField;
    sdsZarLista21BORJU_IVAR: TWideStringField;
    sdsZarLista21IVARDB: TBCDField;
    sdsZarLista21VEMH_NAP_DB: TBCDField;
    sdsZarLista21SZUL_TOMEG: TBCDField;
    sdsZarLista21VALASZTOTT_DB: TBCDField;
    sdsZarLista21VALTOM: TBCDField;
    sdsZarLista21ELETNAP: TBCDField;
    sdsZarLista21ELET_TGYAR: TBCDField;
    sdsZarLista21TOM205: TBCDField;
    sdsZarLista21SV: TBCDField;
    sdsZarLista2KONNYU_ELLES: TBCDField;
    sdsZarLista2SZARVATLAN: TBCDField;
    sdsZarLista21KONNYU_ELLES: TBCDField;
    sdsZarLista21SZARVATLAN: TBCDField;
    sdsBikasKPLSZ: TWideStringField;
    sdsBikasNEV: TWideStringField;
    sdsBikasFKOD: TWideStringField;
    sdsBikasFNEV: TWideStringField;
    sdsBikasBORJU_IVAR: TWideStringField;
    sdsBikasIVARDB: TBCDField;
    sdsBikasVEMH_NAP_DB: TBCDField;
    sdsBikasKONNYU_ELLES: TBCDField;
    sdsBikasSZARVATLAN: TBCDField;
    sdsBikasSZUL_TOMEG: TBCDField;
    sdsBikasVALASZTOTT_DB: TBCDField;
    sdsBikasVALTOM: TBCDField;
    sdsBikasELETNAP: TBCDField;
    sdsBikasELET_TGYAR: TBCDField;
    sdsBikasVALTOM_1: TBCDField;
    sdsBikasTOM205: TBCDField;
    sdsBikasSV: TBCDField;
    sdsElitLista: TTalSimpleDataSet;
    frxDBDElitLista: TfrxDBDataset;
    sdsBikNevLista: TTalSimpleDataSet;
    frxDBBikNev: TfrxDBDataset;
    sdsBikNevListaENAR: TWideStringField;
    sdsBikNevListaTEHENSZAM: TWideStringField;
    sdsBikNevListaSZULDAT: TDateTimeField;
    sdsBikNevListaAPAKLSZ: TWideStringField;
    sdsBikNevListaANYA_ENAR: TWideStringField;
    sdsBikNevListaKKOD: TWideStringField;
    sdsBikNevListaSZIN: TWideStringField;
    sdsBikNevListaTKV: TWideStringField;
    sdsBikNevListaMLEVEL1: TWideStringField;
    sdsBikNevListaMLEVEL2: TWideStringField;
    sdsBikNevListaMIN: TBCDField;
    sdsBikNevListaVERH: TBCDField;
    lblDb: TTalLabel;
    edtDb: TTalMaskEdit;
    sdsZarLstUENAR: TWideStringField;
    sdsZarLstUANYA_ENAR: TWideStringField;
    sdsZarLstUAPAKLSZ: TWideStringField;
    sdsZarLstUSZULDAT: TDateTimeField;
    sdsZarLstUSZUL_SULY: TIntegerField;
    sdsZarLstUVALDAT: TDateTimeField;
    sdsZarLstUVALTOM: TIntegerField;
    sdsZarLstUENAPVAL: TBCDField;
    sdsZarLstUTOM205: TIntegerField;
    sdsZarLstUSV: TIntegerField;
    sdsZarLstUTGYVAL: TBCDField;
    sdsZarLstUT1DATUM: TDateTimeField;
    sdsZarLstUT1TOMEG: TIntegerField;
    sdsZarLstUT1_ELETNAP: TBCDField;
    sdsZarLstUT1_HIZNAP: TBCDField;
    sdsZarLstUT1ELET: TBCDField;
    sdsZarLstUT1HIZ: TBCDField;
    sdsZarLstUT2DATUM: TDateTimeField;
    sdsZarLstUT2TOMEG: TIntegerField;
    sdsZarLstUT2_ELETNAP: TBCDField;
    sdsZarLstUT2_HIZNAP: TBCDField;
    sdsZarLstUT2ELET: TBCDField;
    sdsZarLstUT2HIZ: TBCDField;
    sdsZarLstUTIPUS: TBCDField;
    sdsZarLstUIZOM: TBCDField;
    sdsZarLstULAB: TBCDField;
    sdsZarMEV: TDateTimeField;
    sdsZarMDB: TBCDField;
    sdsZarMFARMAG: TBCDField;
    sdsZarMFARSZEL: TBCDField;
    sdsZarMFARLEJT: TBCDField;
    sdsZarMHATSOLAB: TBCDField;
    sdsZarMCSUD: TBCDField;
    sdsZarMTIPUS: TBCDField;
    sdsZarMCOMBIZOM: TBCDField;
    sdsZarMLAPIZOM: TBCDField;
    sdsZarMTORZSHOSSZ: TBCDField;
    sdsZarMFARHOSSZ: TBCDField;
    sdsZarMTORZSMELY: TBCDField;
    sdsZarMTOGYMELY: TBCDField;
    sdsZarMBIMBO: TBCDField;
    sdsZarMIZOM: TBCDField;
    sdsZarMLAB: TBCDField;
    sdsElitListaENAR: TWideStringField;
    sdsElitListaTEHENSZAM: TWideStringField;
    sdsElitListaSZULDAT: TDateTimeField;
    sdsElitListaAPAKLSZ: TWideStringField;
    sdsElitListaELLESSZ: TBCDField;
    sdsElitListaBORJU_DB: TBCDField;
    sdsElitListaVAL_TOM: TIntegerField;
    sdsElitListaATL_TOM: TIntegerField;
    sdsElitListaTOM205: TIntegerField;
    sdsElitListaATL_TOM205: TIntegerField;
    sdsElitListaKIKDAT: TDateTimeField;
    frxRepLista: TfrxReport;
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
    miez : string;
    SQL_ELIT : string;
  public
    { Public declarations }
  end;


procedure ZarasLista;
procedure ElitLista;
procedure BikaNeveloLista;

implementation

uses udtmTarka, about;

{$R *.dfm}

procedure ZarasLista;
var
  frmZaras: TfrmZaras;
begin
  frmZaras:= TfrmZaras.Create(Application);
  with frmZaras do begin
    sdsZarLista1.Connection := dtmTarka.cnTarka;
    sdsZarLista2.Connection := dtmTarka.cnTarka;
    sdsZarLista21.Connection := dtmTarka.cnTarka;
    sdsZarLstU.Connection := dtmTarka.cnTarka;
    sdsZarM.Connection := dtmTarka.cnTarka;
    sdsBikas.Connection := dtmTarka.cnTarka;
    miez := 'ZARAS';
    edtEv.Text := IntToStr( yearof(today()) -1);
    ShowModal;
  end;
end;


procedure ElitLista;
var
  frmZaras: TfrmZaras;
begin
  frmZaras:= TfrmZaras.Create(Application);
  with frmZaras do begin
    // sdsElitLista.Connection := dtmTarka.cnTarka;
    // SQL_ELIT := sdsElitLista.DataSet.CommandText;
    miez := 'ELIT';
    edtEv.Text := IntToStr( yearof(today()) -1);
    ShowModal;
  end;
end;



procedure BikaNeveloLista;
var
  frmZaras: TfrmZaras;
begin
  frmZaras:= TfrmZaras.Create(Application);
  with frmZaras do begin
    sdsBikNevLista.Connection := dtmTarka.cnTarka;
    SQL_ELIT := sdsBikNevLista.DataSet.CommandText;
    miez := 'BIKA';
    edtDb.Visible := true;
    lblDb.Visible := true;
    edtDb.Text := '9999';
    edtEv.Text := IntToStr( yearof(today()) -1);
    ShowModal;
  end;
end;



procedure TfrmZaras.actOKExecute(Sender: TObject);
var
  KezDat, ZarDat : string;
  UkDat, uZdat : Tdate;
  UsKdat, UsZdat : string;
  SQL , SQL0, SQL1, SQLB, SQLB1 : string;
  PlusWhere : string;
  grpElit, OrderElit : string;
  spElit_tkv: TADOStoredProc;

begin
  if (StrToInt(edtEv.Text) < 1980) or (StrToInt(edtEv.Text) < 1980) then begin
    dtmTarka.MsgDlg('Hibás érték!',mtInformation, [mbOK]);
    exit;
  end;

  KezDat := edtEv.Text + '.01.01';
  ZarDAt := edtEv.Text + '.12.31';

  if miez = 'ZARAS' then begin
    dtmTarka.prcWzarTolt.Connection := dtmTarka.cnTarka;
    if dtmTarka.prcWzarTolt.Active then
       dtmTarka.prcWzarTolt.Close;
    dtmTarka.prcWzarTolt.Parameters.ParamByName('P_EV').Value := StrToInt(edtEv.Text);
    dtmTarka.prcWzarTolt.Parameters.ParamByName('P_TKOD').Value := dtmTarka.TenyeszetTKOD ;
    dtmTarka.prcWzarTolt.ExecProc;
    dtmTarka.prcWzarTolt.Close;

    SQL := 'SELECT   BORJAK.BORJU_IVAR, cast(COUNT(1) as numeric) as IVARDB, ' +
           ' cast(DECODE(SUM( case when E1.E_TERM_DAT is null then 0 else 1 end) ,0,0, SUM( coalesce( E1.ELLES_DATUM - E1.E_TERM_DAT ,0)) / ' +
           ' sum( case when e1.e_term_dat is null then 0 else 1 end)) as numeric) as vemh_nap_db,' +
           ' cast(100*SUM( CASE WHEN E1.ELLES_LEF IN (''1'',''2'') THEN 1 ELSE 0 END) / COUNT(1) as numeric(10,2)) AS KONNYU_ELLES, ' +
           ' cast(100*SUM( CASE WHEN BORJAK.SZARVALTSAG=''1'' THEN 0 ELSE 1 END) / COUNT(1) as numeric(10,2)) AS SZARVATLAN, ' +
           ' cast(SUM( COALESCE (BORJAK.BORJU_SULY,0)) / COUNT(1) as numeric) AS SZUL_TOMEG, ' +
           ' cast(SUM( case when EGYEDEK.id is not null then 1 else 0 end) as numeric) as VALASZTOTT_DB, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   sum( coalesce(egyedek.valtom,0)) / sum( case when egyedek.id is not null then 1 else 0 end)) as numeric) as valtom, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '  SUM( case when coalesce(EGYEDEK.VALDAT - EGYEDEK.SZULDAT,0) <= 0 then 0 else ' +
           '  coalesce(egyedek.valdat - egyedek.szuldat,0) end) / sum( case when egyedek.id is not null then 1 else 0 end)) as numeric) as eletnap, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( cast(TOMGYAR(0, EGYEDEK.VALTOM,EGYEDEK.SZULDAT, EGYEDEK.VALDAT ) as float)) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as ELET_TGYAR, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( coalesce( EGYEDEK.VALTOM,0)) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as VALTOM, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( coalesce(EGYEDEK.TOM205,0)) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as TOM205, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( EGYEDEK.SV) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as SV ' +
           '  FROM BORJAK ' +
           ' JOIN ELLESEK E1 ON E1.ID = BORJAK.ELLESEK_ID ' +
           ' LEFT JOIN EGYEDEK ON TRIM(EGYEDEK.ENAR) = BORJAK.BORJU_ENAR AND EGYEDEK.VALDAT BETWEEN TO_DATE('+ quotedstr(KezDat) +',''YYYY.MM.DD'') AND TO_DATE('+ quotedstr(ZarDAt) +',''YYYY.MM.DD'') ' +
           ' LEFT JOIN TERMEKENYITESEK ON TERMEKENYITESEK.ID = E1.E_TERM_ID ' +
           ' WHERE E1.TENYESZET = ' + quotedstr(dtmTarka.TenyeszetTKOD) + ' AND BORJAK.BORJU_KIESES_KOD = ''0'' AND BORJAK.BORJU_IVAR IN (''1'',''2'') ' +
           '   AND E1.ELLES_DATUM BETWEEN TO_DATE('+ quotedstr(KezDat) +',''YYYY.MM.DD'') AND TO_DATE('+ quotedstr(ZarDAt) +',''YYYY.MM.DD'') ' +
           ' GROUP BY BORJAK.BORJU_IVAR ';

    if sdsZarLista2.Active then sdsZarLista2.Close;
    sdsZarLista2.DataSet.CommandText := SQL;

    SQL0 := 'SELECT BORJAK.BORJU_IVAR,  BORJAK.BORJU_IVAR, cast(COUNT(1) as numeric) as IVARDB, ' +
           ' cast(DECODE(SUM( case when E1.E_TERM_DAT is null then 0 else 1 end) ,0,0, SUM( coalesce( E1.ELLES_DATUM - E1.E_TERM_DAT ,0)) / ' +
           ' sum( case when e1.e_term_dat is null then 0 else 1 end)) as numeric) as vemh_nap_db,' +
           ' cast(100*SUM( CASE WHEN E1.ELLES_LEF IN (''1'',''2'') THEN 1 ELSE 0 END) / COUNT(1) as numeric(10,2)) AS KONNYU_ELLES, ' +
           ' cast(100*SUM( CASE WHEN BORJAK.SZARVALTSAG=''1'' THEN 0 ELSE 1 END) / COUNT(1) as numeric(10,2)) AS SZARVATLAN, ' +
           ' cast(SUM( COALESCE (BORJAK.BORJU_SULY,0)) / COUNT(1) as numeric) AS SZUL_TOMEG, ' +
           ' cast(SUM( case when EGYEDEK.id is not null then 1 else 0 end) as numeric) as VALASZTOTT_DB, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   sum( coalesce(egyedek.valtom,0)) / sum( case when egyedek.id is not null then 1 else 0 end)) as numeric) as valtom, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '  SUM( case when coalesce(EGYEDEK.VALDAT - EGYEDEK.SZULDAT,0) <= 0 then 0 else ' +
           '  coalesce(egyedek.valdat - egyedek.szuldat,0) end) / sum( case when egyedek.id is not null then 1 else 0 end)) as numeric) as eletnap, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( cast(TOMGYAR(0, EGYEDEK.VALTOM,EGYEDEK.SZULDAT, EGYEDEK.VALDAT ) as float)) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as ELET_TGYAR, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( coalesce( EGYEDEK.VALTOM,0)) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as VALTOM, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( coalesce(EGYEDEK.TOM205,0)) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as TOM205, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( EGYEDEK.SV) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as SV ' +
           '  FROM BORJAK ' +
           ' JOIN ELLESEK E1 ON E1.ID = BORJAK.ELLESEK_ID ' +
           ' LEFT JOIN EGYEDEK ON TRIM(EGYEDEK.ENAR) = BORJAK.BORJU_ENAR AND EGYEDEK.VALDAT BETWEEN TO_DATE('+ quotedstr(KezDat) +',''YYYY.MM.DD'') AND TO_DATE('+ quotedstr(ZarDAt) +',''YYYY.MM.DD'') ' +
           ' LEFT JOIN TERMEKENYITESEK ON TERMEKENYITESEK.ID = E1.E_TERM_ID ' +
           ' WHERE E1.TENYESZET = ' + quotedstr(dtmTarka.TenyeszetTKOD) + ' AND BORJAK.BORJU_KIESES_KOD = ''0'' AND BORJAK.BORJU_IVAR IN (''1'',''2'') ' +
           '   AND E1.ELLES_DATUM BETWEEN TO_DATE('+ quotedstr(KezDat) +',''YYYY.MM.DD'') AND TO_DATE('+ quotedstr(ZarDAt) +',''YYYY.MM.DD'') ' +
           '   AND NOT EXISTS (SELECT 1 FROM ELLESEK E0 WHERE E0.EGYED_ID = E1.EGYED_ID AND E0.ELLES_DATUM < E1.ELLES_DATUM) ' +
           ' GROUP BY BORJAK.BORJU_IVAR ';

    if sdsZarLista21.Active then sdsZarLista21.Close;
    sdsZarLista21.DataSet.CommandText := SQL0;

    ukdat := 0;
    uZdat := 0;

    (* if dtmTarka.UstvDatum(Kezdat, Zardat, UkDat, uZdat ) then begin
      usKdat := quotedstr( formatdateTime('yyyy.mm.dd' , UkDAt)) ;
      UsZdat := quotedstr( formatdateTime('yyyy.mm.dd' , UzDAt)) ;
    end;
    if usKdat = EmptyStr then usKdat := QuotedStr(formatdateTime('yyyy.mm.dd' , today()+1));
    if usZdat = EmptyStr then usZdat := QuotedStr(formatdateTime('yyyy.mm.dd' , today()+1));
      *)

    SQL1 :=  ' select E.ENAR, E.ANYA_ENAR, E.APAKLSZ, E.SZULDAT, E.SZUL_SULY, E.VALDAT, E.VALTOM, CAST((E.VALDAT - E.SZULDAT) AS INTEGER) AS ENAPVAL, ' +
        ' E.TOM205, E.SV, CAST(TOMGYAR(0, E.VALTOM, E.SZULDAT,E.VALDAT) AS INTEGER) AS TGYVAL,  T1.DATUM AS T1DATUM, T1.TOMEG AS T1TOMEG, ' +
        ' CAST(( T1.DATUM - E.SZULDAT) AS NUMERIC) AS T1_ELETNAP, ' +
        ' CAST((T1.DATUM - E.VALDAT) AS INTEGER) AS T1_HIZNAP,  CAST(TOMGYAR(0, T1.TOMEG, E.SZULDAT,T1.DATUM) AS INTEGER) AS T1ELET, ' +
        ' CAST(TOMGYAR(E.VALTOM, T1.TOMEG, E.VALDAT, T1.DATUM) AS INTEGER) AS T1HIZ,  T2.DATUM AS T2DATUM, T2.TOMEG AS T2TOMEG, ' +
        ' CAST((T2.DATUM - E.SZULDAT) AS INTEGER) AS T2_ELETNAP, (T2.DATUM - T1.DATUM) AS T2_HIZNAP,  CAST(TOMGYAR(0, T2.TOMEG, E.SZULDAT,T2.DATUM) AS INTEGER) AS T2ELET, ' +
        ' CAST(TOMGYAR(T1.TOMEG, T2.TOMEG, T1.DATUM, T2.DATUM) AS INTEGER) AS T2HIZ,  COALESCE(KK.TIPUS,0) AS TIPUS , ' +
        ' COALESCE(KK.IZOM,0) AS IZOM , COALESCE(KK.LAB,0) AS LAB   ' +
        ' from EGYEDEK E ' +
        ' join TOMEGEK T1 on   T1.id    = USTV_FIRST_MEASUREMENT(E.id,TO_DATE(''' + KezDat + ''',''yyyy.mm.dd'')) ' +
        ' left join TOMEGEK T2 on T2.id = USTV_LAST_MEASUREMENT(E.id,TO_DATE(''' + ZarDat + ''',''yyyy.mm.dd'')) ' +
        // ' join TOMEGEK T1 on T1.EGYED_ID = E.id and T1.id = ELSO_MERES(E.id,TO_DATE(' + usKdat + ',''yyyy.mm.dd'')) and t1.datum<=TO_DATE(' + UsZdat + ',''yyyy.mm.dd'') ' +
        // ' left join TOMEGEK T2 on T2.EGYED_ID = E.id and T2.id = ELSO_MERES(E.id,TO_DATE(' + UsZdat + ',''yyyy.mm.dd'')) and T2.DATUM<=TO_DATE(' + UsZdat + ',''yyyy.mm.dd'') ' +
        ' LEFT join kullem kk on kk.ID = KULLEM_ID(E.ENAR) ' +
        ' where e.ivar = ''1'' ' +
          'and e.tenyeszet = ' + quotedstr(dtmTarka.TenyeszetTKOD) +
        'Order By e.enar';

     if sdsZarLstU.Active then sdsZarLstU.Close;
     sdsZarLstU.DataSet.CommandText := SQL1;

     SQLB := 'SELECT TRUNC(K.BIRDAT,''yyyy'') AS EV , CAST(COUNT(1) AS NUMERIC) AS DB, ' +
        ' CAST(SUM(K.FARMAG) AS NUMERIC(6,1)) AS FARMAG, ' +
        ' CAST(SUM(K.FARSZEL) AS NUMERIC(6,1)) AS FARSZEL, ' +
        ' CAST(SUM(K.FARLEJT) AS NUMERIC(6,1)) AS FARLEJT, CAST(SUM(K.HATSOLAB) AS NUMERIC(6,1)) AS HATSOLAB, ' +
        ' CAST(SUM(K.CSUD) AS NUMERIC(6,1)) AS CSUD, ' +
        ' CAST(SUM(K.TIPUS) AS NUMERIC(6,1)) AS TIPUS, ' +
        ' CAST(SUM(K.COMBIZOM) AS NUMERIC(6,1)) AS COMBIZOM, CAST(SUM(K.LAPIZOM) AS NUMERIC(6,1)) AS LAPIZOM, ' +
        ' CAST(SUM(K.TORZSHOSSZ) AS NUMERIC(6,1)) AS TORZSHOSSZ, ' +
        ' CAST(SUM(K.FARHOSSZ) AS NUMERIC(6,1)) AS FARHOSSZ, ' +
        ' CAST(SUM(K.TORZSMELY) AS NUMERIC(6,1)) AS TORZSMELY, ' +
        ' CAST(SUM(K.TOGYMELY) AS NUMERIC(6,1)) AS TOGYMELY, ' +
        ' CAST(SUM(K.BIMBO) AS NUMERIC(6,1)) AS BIMBO, ' +
        ' CAST(SUM(K.IZOM) AS NUMERIC(6,1)) AS IZOM, ' +
        ' CAST(SUM(K.LAB) AS NUMERIC(6,1)) AS LAB ' +
        ' FROM EGYEDEK E ' +
        ' JOIN KULLEM K ON E.ENAR = K.ENAR ' +
        ' WHERE E.TENYESZET = ' + quotedstr(dtmTarka.TenyeszetTKOD) +
        '   AND ((E.KIKDAT IS NULL) OR (E.KIKDAT > TO_DATE(' + quotedstr(ZARDAT) + ',''yyyy.mm.dd''))) '+
        '   AND EXISTS (SELECT 1 FROM ELLESEK WHERE ELLESEK.EGYED_ID = E.ID AND ELLESEK.ELLES_DATUM <= TO_DATE(' + quotedstr(ZARDAT) + ',''yyyy.mm.dd'')) ' +
        '   and k.birdat between to_date(' + quotedstr(kezdat) + ',''yyyy.mm.dd'') and to_date(' + quotedstr(ZARDAT) + ',''yyyy.mm.dd'') ' +
        ' GROUP BY TRUNC(K.BIRDAT,''yyyy'')';

     if sdsZarM.Active then sdsZarM.Close;
     sdsZarM.DataSet.CommandText := SQLB;

     SQLB1 := ' SELECT TERMEKENYITESEK.KPLSZ, APA.NEV, APA.FKOD, FAJTA.FNEV, BORJAK.BORJU_IVAR, cast(COUNT(1) as numeric) as IVARDB, ' +
           ' cast(DECODE(SUM( case when E1.E_TERM_DAT is null then 0 else 1 end) ,0,0, SUM( coalesce( E1.ELLES_DATUM - E1.E_TERM_DAT ,0)) / ' +
           ' sum( case when e1.e_term_dat is null then 0 else 1 end)) as numeric) as vemh_nap_db,' +
           ' cast(100*SUM( CASE WHEN E1.ELLES_LEF IN (''1'',''2'') THEN 1 ELSE 0 END) / COUNT(1) as numeric(10,2)) AS KONNYU_ELLES, ' +
           ' cast(100*SUM( CASE WHEN BORJAK.SZARVALTSAG=''1'' THEN 0 ELSE 1 END) / COUNT(1) as numeric(10,2)) AS SZARVATLAN, ' +
           ' cast(SUM( COALESCE (BORJAK.BORJU_SULY,0)) / COUNT(1) as numeric) AS SZUL_TOMEG, ' +
           ' cast(SUM( case when EGYEDEK.id is not null then 1 else 0 end) as numeric) as VALASZTOTT_DB, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   sum( coalesce(egyedek.valtom,0)) / sum( case when egyedek.id is not null then 1 else 0 end)) as numeric) as valtom, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '  SUM( case when coalesce(EGYEDEK.VALDAT - EGYEDEK.SZULDAT,0) <= 0 then 0 else ' +
           '  coalesce(egyedek.valdat - egyedek.szuldat,0) end) / sum( case when egyedek.id is not null then 1 else 0 end)) as numeric) as eletnap, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( cast(TOMGYAR(0, EGYEDEK.VALTOM,EGYEDEK.SZULDAT, EGYEDEK.VALDAT ) as float)) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as ELET_TGYAR, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( coalesce( EGYEDEK.VALTOM,0)) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as VALTOM, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( coalesce(EGYEDEK.TOM205,0)) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as TOM205, ' +
           ' cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
           '   SUM( EGYEDEK.SV) / SUM( case when EGYEDEK.id is not null then 1 else 0 end)) as numeric) as SV ' +
        '  FROM BORJAK ' +
        ' join ellesek e1 on e1.id = borjak.ellesek_id ' +
        ' left join egyedek on trim(egyedek.enar) = borjak.borju_enar and egyedek.valdat between to_date(' + quotedstr(KEZDAT) + ',''YYYY.MM.DD'') and to_date(' + quotedstr(ZARDAT) + ',''YYYY.MM.DD'') ' +
        ' LEFT JOIN TERMEKENYITESEK ON TERMEKENYITESEK.ID = E1.E_TERM_ID ' +
        ' LEFT JOIN APA ON APA.KPLSZ = TERMEKENYITESEK.KPLSZ ' +
        ' LEFT JOIN FAJTA ON FAJTA.FKOD = APA.FKOD ' +
        ' WHERE E1.TENYESZET = ' + quotedstr(dtmTarka.TenyeszetTKOD) +
        '   AND BORJAK.BORJU_KIESES_KOD = ''0'' AND BORJAK.BORJU_IVAR IN (''1'',''2'') ' +
        '   AND E1.ELLES_DATUM BETWEEN TO_DATE(' + quotedstr(KEZDAT) + ',''YYYY.MM.DD'') AND TO_DATE(' + quotedstr(ZARDAT) + ',''YYYY.MM.DD'') ' +
        ' GROUP BY TERMEKENYITESEK.KPLSZ, APA.NEV, APA.FKOD, FAJTA.FNEV, BORJAK.BORJU_IVAR' +
        ' ORDER BY TERMEKENYITESEK.KPLSZ, APA.NEV, APA.FKOD, FAJTA.FNEV, BORJAK.BORJU_IVAR' ;

     if sdsBikas.Active then sdsBikas.Close;
     sdsBikas.DataSet.CommandText := SQLB1;


     sdsZarLista1.Open;
     sdsZarLista2.Open;
     sdsZarLista21.Open;
     sdsZarLstU.Open;
     sdsZarM.Open;
     sdsBikas.Open;

     If frxRepLista.LoadFromFile(dtmTarka.fr3Path + '\EvesZaras.fr3') Then Begin
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['TENYESZET'] := 'Tenyészet: ' + trim(dtmTarka.TenyeszetTKOD) + ' ' + trim(dtmTarka.TenyeszetTNEV);
       frxRepLista.Script.Variables['EV'] := edtEv.Text;
       frxRepLista.ShowReport();
     End;

     sdsZarLista1.Close;
     sdsZarLista2.Close;
     sdsZarLista21.Close;
     sdsZarLstU.Close;
     sdsZarM.Close;
     sdsBikas.Close;
  end;

  if miez = 'ELIT' then begin
     // TADOConnection
     spElit_tkv := TADOStoredProc.Create(Self);
     spElit_tkv.Connection := dtmTarka.cnTarka;
     spElit_tkv.ProcedureName := 'ELIT_TKV';
     spElit_tkv.Parameters.Clear;
     spElit_tkv.Parameters.CreateParameter('PTENYESZET',ftString,pdInput,16,dtmTarka.TenyeszetTKOD);
     spElit_tkv.Parameters.CreateParameter('PDATUM',ftString,pdInput,16,ZarDAt);
     spElit_tkv.ExecProc;

     if sdsElitLista.Active  then sdsElitLista.Close;
     sdsElitLista.Open;

     If frxRepLista.LoadFromFile(dtmTarka.fr3Path + '\ElitLista.fr3') Then Begin
        frxRepLista.Variables.Clear;
        frxRepLista.Script.Variables['TENYESZET'] := 'Tenyészet: ' + trim(dtmTarka.TenyeszetTKOD) + ' ' + trim(dtmTarka.TenyeszetTNEV);
        frxRepLista.Script.Variables['EV'] := edtEv.Text;
        frxRepLista.ShowReport();
     End;

     sdsElitLista.Close;

  end;


  if miez = 'BIKA' then begin
    PlusWhere := '';
    PlusWhere := ' and (ANYA.KIKDAT IS NULL OR ANYA.KIKDAT > TO_DATE(' + quotedstr(ZarDat) + ',''YYYY.MM.DD'')) ' ;
    if dtmTarka.TenyeszetTKOD <> EmptyStr then begin
      PlusWhere := PlusWhere + ' and ANYA.TENYESZET = '  + quotedstr(dtmTarka.TenyeszetTKOD) ;
    end;
    OrderElit := ' ORDER BY ANYA.MIN DESC ';
    SQL := SQL_ELIT + PlusWhere + OrderElit;

    if sdsBikNevLista.Active  then sdsBikNevLista.Close;
    sdsBikNevLista.DataSet.CommandText := SQL;
    sdsBikNevLista.Open;

     If frxRepLista.LoadFromFile(dtmTarka.fr3Path + '\BikNevLista.fr3') Then Begin
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['TENYESZET'] := 'Tenyészet: ' + trim(dtmTarka.TenyeszetTKOD) + ' ' + trim(dtmTarka.TenyeszetTNEV);
       frxRepLista.Script.Variables['EV'] := edtEv.Text;
       frxRepLista.Script.Variables['DB'] := edtDb.Text;
       frxRepLista.ShowReport();
     End;

     sdsBikNevLista.Close;

  end;



end;

end.
