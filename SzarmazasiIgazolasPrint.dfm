object SzarmazasiIgazolasPrint: TSzarmazasiIgazolasPrint
  OldCreateOrder = False
  Left = 953
  Top = 424
  Height = 173
  Width = 409
  object frxRepListak: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = 'SzarmazasiIgazolasWork.fr3'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 40240.498815532400000000
    ReportOptions.LastChange = 43571.851764189810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Var'
      '       ivar : String;'
      ''
      'procedure Memo1OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  Memo1.Text := Copy(<frxDBSzLapok."ENAR">,6,4);'
      'end;'
      ''
      'procedure Memo37OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  Memo37.Text := Copy(<frxDBSzLapok."ENAR">,10,1);'
      'end;'
      ''
      'procedure Memo39OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  Memo39.Text := Copy(<frxDBSzLapok."ENAR">,1,5);'
      'end;'
      ''
      'begin'
      '       ivar := Copy(<frxDBSzLapok."IVAR">,1,1);'
      '       if ivar = '#39'1'#39' then'
      '       begin'
      '               MemoTermekenyites.visible := false;'
      '               MemoBikaIdeje.visible := false;'
      '               MemoBikaBika.visible := false;'
      '               MemoBikaKPLSZ.visible := false;'
      '               MemoBikaENAR.visible := false;'
      '               MemoBikaFajta.visible := false;'
      '               MemoBikaNev.visible := false;'
      '               MemoBikaSzulIdo.visible := false;'
      '               MemoBikaSV.visible := false;'
      '               MemoBikaFulszam.visible := false;'
      '               MemoBikaSz.visible := false;'
      '               MemoBikaEtgy.visible := false;'
      '               MemoBikaSTV.visible := false;'
      '               MemoBikaApja.visible := false;'
      '               MemoBikaApjaKPLSZ.visible := false;'
      '               MemoBikaApjaNev.visible := false;'
      '               MemoBikaApjaSzuldat.visible := false;'
      '               MemoBikaApjaENAR.visible := false;'
      '               MemoBikaApjaFulszam.visible := false;'
      '               MemoBikaAnyja.visible := false;'
      '               MemoBikaAnyjaENAR.visible := false;'
      '               MemoBikaAnyjaNev.visible := false;'
      '               MemoBikaAnyjaSzuldat.visible := false;'
      '               MemoBikaAnyjaEllszam.visible := false;'
      '               MemoBikaAnyjaFulszam.visible := false;'
      '               MemoTermIdeje.visible := false;'
      '               MemoTermBikaSzuldat.visible := false;'
      '               MemoTermBikaApjaSzuldat.visible := false;'
      '               MemoTermBikaAnyjaSzuldat.visible := false;'
      '       end;'
      
        '       EU_SZULDAT.Text := FormatDateTime('#39'dd.mm.yyyy'#39',<frxDBSzLa' +
        'pok."SZULDAT">);'
      
        '       EU_HITDAT.Text := FormatDateTime('#39'dd.mm.yyyy'#39',<frxDBSzLap' +
        'ok."HITDAT">);'
      
        '       // EU_TERM_IDEJE.Text := FormatDateTime('#39'dd.mm.yyyy'#39',<frx' +
        'DBSzLapok."TERM_IDEJE">);'
      
        '       EU_KIDAT.Text := FormatDateTime('#39'dd.mm.yyyy'#39',<frxDBSzLapo' +
        'k."KIDAT">);'
      
        '       // TENYBECSDAT.Text := FormatDateTime('#39'dd.mm.yyyy'#39',<frxDB' +
        'SzLapok."TENYBECSDAT">);'
      '       EU_ORSZAG.Text := <frxDBSzLapok."SZORSZ">;'
      '       if Copy(EU_ORSZAG.Text,1,6) = '#39'Magyar'#39' then'
      '       begin'
      '          EU_ORSZAG.Text := '#39'Magyarorsz'#225'g (Hungary)'#39';'
      '       end;'
      'end.')
    StoreInDFM = False
    Left = 104
    Top = 32
    Datasets = <
      item
        DataSet = frxDBSzLapok
        DataSetName = 'frxDBSzLapok'
      end>
    Variables = <
      item
        Name = ' Parameters'
        Value = Null
      end
      item
        Name = 'p1'
        Value = Null
      end
      item
        Name = 'p2'
        Value = Null
      end
      item
        Name = 'p3'
        Value = Null
      end
      item
        Name = 'p4'
        Value = Null
      end
      item
        Name = 'p0'
        Value = Null
      end>
    Style = <>
  end
  object frxDBSzLapok: TfrxDBDataset
    UserName = 'frxDBSzLapok'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IGDAT=IGDAT'
      'TKOD=TKOD'
      'UKOD=UKOD'
      'EGY=EGY'
      'SOR=SOR'
      'PER=PER'
      'MAS=MAS'
      'KIDAT=KIDAT'
      'HITDAT=HITDAT'
      'NYELV=NYELV'
      'KPLSZ=KPLSZ'
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'NEV=NEV'
      'SZULDAT=SZULDAT'
      'TKV=TKV'
      'FAJTAKOD=FAJTAKOD'
      'FAJTANEV=FAJTANEV'
      'FAJTA_SZAZ=FAJTA_SZAZ'
      'IVAR=IVAR'
      'SV=SV'
      'ELETNAPI_TGY=ELETNAPI_TGY'
      'STV_TGY=STV_TGY'
      'KMI=KMI'
      'TIPUS=TIPUS'
      'IZMOLTSAG=IZMOLTSAG'
      'LABSZERKEZET=LABSZERKEZET'
      'ERTEKELES_DATUMA=ERTEKELES_DATUMA'
      'APA_KPLSZ=APA_KPLSZ'
      'APA_ENAR=APA_ENAR'
      'APA_SZULDAT=APA_SZULDAT'
      'APA_NEV=APA_NEV'
      'APA_FULSZAM=APA_FULSZAM'
      'APA_FAJTAKOD=APA_FAJTAKOD'
      'APA_FAJTANEV=APA_FAJTANEV'
      'APA_FAJTA_SZAZ=APA_FAJTA_SZAZ'
      'APA_SV=APA_SV'
      'APA_ETGY=APA_ETGY'
      'APA_STV_TGY=APA_STV_TGY'
      'APA_TIPUS=APA_TIPUS'
      'APA_IZMOLTSAG=APA_IZMOLTSAG'
      'APA_LABSZERKEZET=APA_LABSZERKEZET'
      'APA_ERT_DAT=APA_ERT_DAT'
      'ANYA_NEV=ANYA_NEV'
      'ANYA_SZULDAT=ANYA_SZULDAT'
      'ANYA_ENAR=ANYA_ENAR'
      'ANYA_ELLSZAM=ANYA_ELLSZAM'
      'ANYA_FULSZAM=ANYA_FULSZAM'
      'ANYA_FAJTA_KOD=ANYA_FAJTA_KOD'
      'ANYA_FAJTANEV=ANYA_FAJTANEV'
      'ANYA_FAJTA_SZAZ=ANYA_FAJTA_SZAZ'
      'ANYA_SV=ANYA_SV'
      'ANYA_KMI=ANYA_KMI'
      'ANYA_TIPUS=ANYA_TIPUS'
      'ANYA_IZMOLTSAG=ANYA_IZMOLTSAG'
      'ANYA_LABSZERKEZET=ANYA_LABSZERKEZET'
      'ANYA_ERT_DAT=ANYA_ERT_DAT'
      'APAI_NAGYAPA_NEV=APAI_NAGYAPA_NEV'
      'APAI_NAGYAPA_SZULDAT=APAI_NAGYAPA_SZULDAT'
      'APAI_NAGYAPA_KPLSZ=APAI_NAGYAPA_KPLSZ'
      'APAI_NAGYAPA_ENAR=APAI_NAGYAPA_ENAR'
      'APAI_NAGYAPA_FULSZAM=APAI_NAGYAPA_FULSZAM'
      'APAI_NAGYAPA_FAJTAKOD=APAI_NAGYAPA_FAJTAKOD'
      'APA_NAGYAPA_FAJTANEV=APA_NAGYAPA_FAJTANEV'
      'APAI_NAGYAPA_FAJTA_SZAZ=APAI_NAGYAPA_FAJTA_SZAZ'
      'APAI_NAGYAPA_SV=APAI_NAGYAPA_SV'
      'APAI_NAGYAPA_TGY=APAI_NAGYAPA_TGY'
      'APAI_NAGYAPA_STV_TGY=APAI_NAGYAPA_STV_TGY'
      'APAI_NAGYAPA_TIPUS=APAI_NAGYAPA_TIPUS'
      'APAI_NAGYAPA_IZMOLTSAG=APAI_NAGYAPA_IZMOLTSAG'
      'APAI_NAGYAPA_LABSZERKEZET=APAI_NAGYAPA_LABSZERKEZET'
      'APAI_NAGYAPA_ERTDAT=APAI_NAGYAPA_ERTDAT'
      'APAI_NAGYAPA_APJA_KPLSZ=APAI_NAGYAPA_APJA_KPLSZ'
      'APAI_NAGYAPA_APJA_ENAR=APAI_NAGYAPA_APJA_ENAR'
      'APAI_NAGYAPA_APJA_FULSZAM=APAI_NAGYAPA_APJA_FULSZAM'
      'APAI_NAGYAPA_APJA_NEV=APAI_NAGYAPA_APJA_NEV'
      'APAI_NAGYAPA_ANYJA_ENAR=APAI_NAGYAPA_ANYJA_ENAR'
      'APAI_NAGYAPA_ANYJA_ELLSZAM=APAI_NAGYAPA_ANYJA_ELLSZAM'
      'APAI_NAGYAPA_ANYJA_FULSZAM=APAI_NAGYAPA_ANYJA_FULSZAM'
      'APAI_NAGYAPA_ANYJA_NEV=APAI_NAGYAPA_ANYJA_NEV'
      'APAI_NAGYANYA_NEV=APAI_NAGYANYA_NEV'
      'APAI_NAGYANYA_SZULDAT=APAI_NAGYANYA_SZULDAT'
      'APAI_NAGYANYA_ENAR=APAI_NAGYANYA_ENAR'
      'APAI_NAGYANYA_ELLSZAM=APAI_NAGYANYA_ELLSZAM'
      'APAI_NAGYANYA_FULSZAM=APAI_NAGYANYA_FULSZAM'
      'APAI_NAGYANYA_SV=APAI_NAGYANYA_SV'
      'APAI_NAGYANYA_KMI=APAI_NAGYANYA_KMI'
      'APAI_NAGYANYA_APJA_KPLSZ=APAI_NAGYANYA_APJA_KPLSZ'
      'APAI_NAGYANYA_APJA_NEV=APAI_NAGYANYA_APJA_NEV'
      'APAI_NAGYANYA_APJA_ENAR=APAI_NAGYANYA_APJA_ENAR'
      'APAI_NAGYANYA_APJA_FULSZAM=APAI_NAGYANYA_APJA_FULSZAM'
      'APAI_NAGYANYA_ANYJA_ENAR=APAI_NAGYANYA_ANYJA_ENAR'
      'APAI_NAGYANYA_ANYJA_ELLSZAM=APAI_NAGYANYA_ANYJA_ELLSZAM'
      'APAI_NAGYANYA_ANYJA_FULSZAM=APAI_NAGYANYA_ANYJA_FULSZAM'
      'APAI_NAGYANYA_ANYJA_NEV=APAI_NAGYANYA_ANYJA_NEV'
      'ANYAI_NAGYAPA_KPLSZ=ANYAI_NAGYAPA_KPLSZ'
      'ANYAI_NAGYAPA_ENAR=ANYAI_NAGYAPA_ENAR'
      'ANYAI_NAGYAPA_FULSZAM=ANYAI_NAGYAPA_FULSZAM'
      'ANYAI_NAGYAPA_NEV=ANYAI_NAGYAPA_NEV'
      'ANYAI_NAGYAPA_SZULDAT=ANYAI_NAGYAPA_SZULDAT'
      'ANYAI_NAGYAPA_FAJTAKOD=ANYAI_NAGYAPA_FAJTAKOD'
      'ANYAI_NAGYAPA_FAJTANEV=ANYAI_NAGYAPA_FAJTANEV'
      'ANYAI_NAGYAPA_FAJTA_SZAZ=ANYAI_NAGYAPA_FAJTA_SZAZ'
      'ANYAI_NAGYAPA_SV=ANYAI_NAGYAPA_SV'
      'ANYAI_NAGYAPA_ETGY=ANYAI_NAGYAPA_ETGY'
      'ANYAI_NAGYAPA_STV_TGY=ANYAI_NAGYAPA_STV_TGY'
      'ANYAI_NAGYAPA_TIPUS=ANYAI_NAGYAPA_TIPUS'
      'ANYAI_NAGYAPA_IZMOLTS'#193'G=ANYAI_NAGYAPA_IZMOLTS'#193'G'
      'ANYAI_NAGYAPA_LABSZERKEZET=ANYAI_NAGYAPA_LABSZERKEZET'
      'ANYAI_NAGYAPA_ERT_DAT=ANYAI_NAGYAPA_ERT_DAT'
      'ANYAI_NAGYAPA_APJA_KPLSZ=ANYAI_NAGYAPA_APJA_KPLSZ'
      'ANYAI_NAGYAPA_APJA_ENAR=ANYAI_NAGYAPA_APJA_ENAR'
      'ANYAI_NAGYAPA_APJA_NEV=ANYAI_NAGYAPA_APJA_NEV'
      'ANYAI_NAGYAPA_APJA_FULSZAM=ANYAI_NAGYAPA_APJA_FULSZAM'
      'ANYAI_NAGYAPA_ANYJA_ENAR=ANYAI_NAGYAPA_ANYJA_ENAR'
      'ANYAI_NAGYAPA_ANYJA_NEV=ANYAI_NAGYAPA_ANYJA_NEV'
      'ANYAI_NAGYAPA_ANYJA_ELLSZAM=ANYAI_NAGYAPA_ANYJA_ELLSZAM'
      'ANYAI_NAGYAPA_ANYJA_FULSZAM=ANYAI_NAGYAPA_ANYJA_FULSZAM'
      'ANYAI_NAGYANYA_NEV=ANYAI_NAGYANYA_NEV'
      'ANYAI_NAGYANYA_SZULDAT=ANYAI_NAGYANYA_SZULDAT'
      'ANYAI_NAGYANYA_ENAR=ANYAI_NAGYANYA_ENAR'
      'ANYAI_NAGYANYA_ELLSZAM=ANYAI_NAGYANYA_ELLSZAM'
      'ANYAI_NAGYANYA_FULSZAM=ANYAI_NAGYANYA_FULSZAM'
      'ANYAI_NAGYANYA_SV=ANYAI_NAGYANYA_SV'
      'ANYAI_NAGYANYA_KMI=ANYAI_NAGYANYA_KMI'
      'ANYAI_NAGYANYA_APJA_ENAR=ANYAI_NAGYANYA_APJA_ENAR'
      'ANYAI_NAGYANYA_APJA_KPLSZ=ANYAI_NAGYANYA_APJA_KPLSZ'
      'ANYAI_NAGYANYA_APJA_FULSZAM=ANYAI_NAGYANYA_APJA_FULSZAM'
      'ANYAI_NAGYANYA_APJA_NEV=ANYAI_NAGYANYA_APJA_NEV'
      'ANYAI_NAGYANYA_ANYJA_ENAR=ANYAI_NAGYANYA_ANYJA_ENAR'
      'ANYAI_NAGYANYA_ANYJA_ELLSZAM=ANYAI_NAGYANYA_ANYJA_ELLSZAM'
      'ANYAI_NAGYANYA_ANYJA_FULSZAM=ANYAI_NAGYANYA_ANYJA_FULSZAM'
      'ANYAI_NAGYANYA_ANYJA_NEV=ANYAI_NAGYANYA_ANYJA_NEV'
      'TERM_IDEJE=TERM_IDEJE'
      'TERM_BIKA_KPLSZ=TERM_BIKA_KPLSZ'
      'TERM_BIKA_ENAR=TERM_BIKA_ENAR'
      'TERM_BIKA_NEV=TERM_BIKA_NEV'
      'TERM_BIKA_SZULDAT=TERM_BIKA_SZULDAT'
      'TERM_BIKA_FULSZAM=TERM_BIKA_FULSZAM'
      'TERM_BIKA_FAJTAKOD=TERM_BIKA_FAJTAKOD'
      'TERM_BIKA_FAJTANEV=TERM_BIKA_FAJTANEV'
      'TERM_BIKA_FAJTA_SZAZ=TERM_BIKA_FAJTA_SZAZ'
      'TERM_BIKA_SV=TERM_BIKA_SV'
      'TERM_BIKA_ETGY=TERM_BIKA_ETGY'
      'TERM_BIKA_STV_TGY=TERM_BIKA_STV_TGY'
      'TERM_BIKA_TIPUS=TERM_BIKA_TIPUS'
      'TERM_BIKA_IZMOLTSAG=TERM_BIKA_IZMOLTSAG'
      'TERM_BIKA_LABSZERKEZET=TERM_BIKA_LABSZERKEZET'
      'TERM_BIKA_ERT_DAT=TERM_BIKA_ERT_DAT'
      'TERM_BIKA_APJA_KPLSZ=TERM_BIKA_APJA_KPLSZ'
      'TERM_BIKA_APJA_ENAR=TERM_BIKA_APJA_ENAR'
      'TERM_BIKA_APJA_NEVE=TERM_BIKA_APJA_NEVE'
      'TERM_BIKA_APJA_SZULDAT=TERM_BIKA_APJA_SZULDAT'
      'TERM_BIKA_APJA_FULSZAM=TERM_BIKA_APJA_FULSZAM'
      'TERM_BIKA_ANYJA_KMI=TERM_BIKA_ANYJA_KMI'
      'TERM_BIKA_ANYJA_NEV=TERM_BIKA_ANYJA_NEV'
      'TERM_BIKA_ANYJA_ENAR=TERM_BIKA_ANYJA_ENAR'
      'TERM_BIKA_ANYJA_FULSZAM=TERM_BIKA_ANYJA_FULSZAM'
      'TERM_BIKA_ANYJA_SV=TERM_BIKA_ANYJA_SV'
      'TERM_BIKA_ANYJA_ELLSZAM=TERM_BIKA_ANYJA_ELLSZAM'
      'TERM_BIKA_ANYJA_SZULDAT=TERM_BIKA_ANYJA_SZULDAT'
      'TERM_BIKA_ANYJA_TIPUS=TERM_BIKA_ANYJA_TIPUS'
      'TERM_BIKA_ANYJA_IZMOLTSAG=TERM_BIKA_ANYJA_IZMOLTSAG'
      'TERM_BIKA_ANYJA_LABSZERKEZET=TERM_BIKA_ANYJA_LABSZERKEZET'
      'TERM_BIKA_ANYJA_ERT_DAT=TERM_BIKA_ANYJA_ERT_DAT'
      'TENYESZTO_NEV=TENYESZTO_NEV'
      'TENYESZTO_CIM=TENYESZTO_CIM'
      'TULAJ_NEV=TULAJ_NEV'
      'TULAJ_CIM=TULAJ_CIM'
      'TENYESZTO_KOD=TENYESZTO_KOD'
      'TULAJ_KOD=TULAJ_KOD'
      'ANYA_NET_PONT=ANYA_NET_PONT'
      'NET_PONT=NET_PONT'
      'IKTATOSZAM=IKTATOSZAM'
      'E_TOGY=E_TOGY'
      'ANYA_TOGY=ANYA_TOGY'
      'T_ANYA_TOGY=T_ANYA_TOGY'
      'APA_NET_PONT=APA_NET_PONT'
      'APA_TE_TIPUS=APA_TE_TIPUS'
      'APA_TE_IZMOLTSAG=APA_TE_IZMOLTSAG'
      'APA_TE_LABSZERKEZET=APA_TE_LABSZERKEZET'
      'APA_TE_TOGY=APA_TE_TOGY'
      'KIBEMAIL=KIBEMAIL'
      'TKVSZAM=TKVSZAM'
      'AZONMOD=AZONMOD'
      'AZONEREDM=AZONEREDM'
      'AZONIKT=AZONIKT'
      'SZORSZ=SZORSZ'
      'TENYEMAIL=TENYEMAIL'
      'TULEMAIL=TULEMAIL'
      'APTKVSZ=APTKVSZ'
      'APTKVR=APTKVR'
      'APAPTKVSZ=APAPTKVSZ'
      'APAPTKVR=APAPTKVR'
      'APANTKVSZ=APANTKVSZ'
      'APANTKVR=APANTKVR'
      'ANTKVSZ=ANTKVSZ'
      'ANTKVR=ANTKVR'
      'ANAPTKVSZ=ANAPTKVSZ'
      'ANAPTKVR=ANAPTKVR'
      'ANANTKVSZ=ANANTKVSZ'
      'ANANTKVR=ANANTKVR'
      'TENYBECSDAT=TENYBECSDAT'
      'GENHIBA=GENHIBA'
      'TAZONMOD=TAZONMOD'
      'TAZONEREDM=TAZONEREDM'
      'DANAZON=DANAZON'
      'DANNEV=DANNEV')
    OpenDataSource = False
    DataSet = sdsListSzLapok
    Left = 32
    Top = 32
  end
  object sdsListSzLapok: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'Select szlapok.igdat, szlapok.tkod, szlapok.ukod, szlapok.egy, s' +
      'zlapok.sor, szlapok.per, szlapok.mas, szlapok.kidat, szlapok.hit' +
      'dat,'#13#10'       szlapok.nyelv, szlapok.kplsz, szlapok.enar, m13 as ' +
      'fulszam, m14 as nev, m15 as szuldat, m16 as tkv, m17 as fajtakod' +
      ','#13#10#9'   ef.fnev as fajtanev, m18 as fajta_szaz, m19 as ivar, m20 ' +
      'as sv, m21 as eletnapi_tgy, m22 as stv_tgy,'#13#10#9'   m23 as kmi, m24' +
      ' as tipus, m25 as izmoltsag, m26 as labszerkezet, m27 as ertekel' +
      'es_datuma,'#13#10'    m28 as apa_kplsz, m29 as apa_enar, m30 as apa_sz' +
      'uldat, m31 as apa_nev, m32 as apa_fulszam, m33 as apa_fajtakod,'#13 +
      #10'       apf.fnev as apa_fajtanev, m34 as apa_fajta_szaz, m35 as ' +
      'apa_sv, m36 as apa_etgy, m37 as apa_stv_tgy, m38 as apa_tipus,'#13#10 +
      #9'   m39 as apa_izmoltsag, m40 as apa_labszerkezet, m41 as apa_er' +
      't_dat,'#13#10'    m42 as anya_nev, m43 as anya_szuldat, m44 as anya_en' +
      'ar, m45 as anya_ellszam, m46 as anya_fulszam, m47 as anya_fajta_' +
      'kod,'#13#10'       anf.fnev as anya_fajtanev, m48 as anya_fajta_szaz, ' +
      'm49 as anya_sv, m50 as anya_kmi, m51 as anya_tipus,'#13#10#9'   m52 as ' +
      'anya_izmoltsag, m53 as anya_labszerkezet, m54 as anya_ert_dat,'#13#10 +
      '    m55 as apai_nagyapa_nev, m56 as apai_nagyapa_szuldat, m57 as' +
      ' apai_nagyapa_kplsz, m58 as apai_nagyapa_enar,'#13#10'       m59 as ap' +
      'ai_nagyapa_fulszam, m60 as apai_nagyapa_fajtakod, appf.fnev as a' +
      'pa_nagyapa_fajtanev,'#13#10'       m61 as apai_nagyapa_fajta_szaz, m62' +
      ' as apai_nagyapa_sv, m63 as apai_nagyapa_tgy, m64 as apai_nagyap' +
      'a_stv_tgy,'#13#10#9'   m65 as apai_nagyapa_tipus, m66 as apai_nagyapa_i' +
      'zmoltsag, m67 as apai_nagyapa_labszerkezet, m68 as apai_nagyapa_' +
      'ertdat,'#13#10#9'   m69 as apai_nagyapa_apja_kplsz, m70 as apai_nagyapa' +
      '_apja_enar, m71 as apai_nagyapa_apja_fulszam, m72 as apai_nagyap' +
      'a_apja_nev,'#13#10'       m73 as apai_nagyapa_anyja_enar, m74 as apai_' +
      'nagyapa_anyja_ellszam, m75 as apai_nagyapa_anyja_fulszam, m76 as' +
      ' apai_nagyapa_anyja_nev,'#13#10'    m77 as apai_nagyanya_nev, m78 as a' +
      'pai_nagyanya_szuldat, m79 as apai_nagyanya_enar, m80 as apai_nag' +
      'yanya_ellszam,'#13#10'       m81 as apai_nagyanya_fulszam, m82 as apai' +
      '_nagyanya_sv, m83 as apai_nagyanya_kmi, m84 as apai_nagyanya_apj' +
      'a_kplsz,'#13#10#9'   m85 as apai_nagyanya_apja_nev, m86 as apai_nagyany' +
      'a_apja_enar, m87 as apai_nagyanya_apja_fulszam,'#13#10'       m88 as a' +
      'pai_nagyanya_anyja_enar, m89 as apai_nagyanya_anyja_ellszam, m90' +
      ' as apai_nagyanya_anyja_fulszam, m91 as apai_nagyanya_anyja_nev,' +
      #13#10'    m92 as anyai_nagyapa_kplsz, m93 as anyai_nagyapa_enar, m94' +
      ' as anyai_nagyapa_fulszam, m95 as anyai_nagyapa_nev, m96 as anya' +
      'i_nagyapa_szuldat,'#13#10'       m97 as anyai_nagyapa_fajtakod, anpf.f' +
      'nev as anyai_nagyapa_fajtanev, m98 as anyai_nagyapa_fajta_szaz, ' +
      'm99 as anyai_nagyapa_SV,'#13#10#9'   m100 as anyai_nagyapa_etgy, m101 a' +
      's anyai_nagyapa_stv_tgy, m102 as anyai_nagyapa_tipus, m103 as an' +
      'yai_nagyapa_izmolts'#225'g,'#13#10#9'   m104 as anyai_nagyapa_labszerkezet, ' +
      'm105 as anyai_nagyapa_ert_dat, m106 as anyai_nagyapa_apja_kplsz,' +
      ' m107 as anyai_nagyapa_apja_enar,'#13#10#9'   m108 as anyai_nagyapa_apj' +
      'a_nev, m109 as anyai_nagyapa_apja_fulszam, m110 as anyai_nagyapa' +
      '_anyja_enar,'#13#10'       m111 as anyai_nagyapa_anyja_nev, m112 as an' +
      'yai_nagyapa_anyja_ellszam, m113 as anyai_nagyapa_anyja_fulszam,'#13 +
      #10'    m114 as anyai_nagyanya_nev, m115 as anyai_nagyanya_szuldat,' +
      ' m116 as anyai_nagyanya_enar, m117 as anyai_nagyanya_ellszam,'#13#10' ' +
      '      m118 as anyai_nagyanya_fulszam, m119 as anyai_nagyanya_sv,' +
      ' m120 as anyai_nagyanya_kmi, m121 as anyai_nagyanya_apja_enar,'#13#10 +
      #9'   m122 as anyai_nagyanya_apja_kplsz, m123 as anyai_nagyanya_ap' +
      'ja_fulszam, m124 as anyai_nagyanya_apja_nev,'#13#10#9'   m125 as anyai_' +
      'nagyanya_anyja_enar, m126 as anyai_nagyanya_anyja_ellszam,'#13#10#9'   ' +
      'm127 as anyai_nagyanya_anyja_fulszam, m128 as anyai_nagyanya_any' +
      'ja_nev,'#13#10'    m129 as term_ideje, m130 as term_bika_kplsz, m131 a' +
      's term_bika_enar, m132 as term_bika_nev,'#13#10'       m133 as term_bi' +
      'ka_szuldat, m134 as term_bika_fulszam, m135 as term_bika_fajtako' +
      'd,'#13#10#9'   tbf.fnev as term_bika_fajtanev, m136 as term_bika_fajta_' +
      'szaz, m137 as term_bika_sv,'#13#10#9'   m138 as term_bika_etgy, m139 as' +
      ' term_bika_stv_tgy, m140 as term_bika_tipus,'#13#10#9'   m141 as term_b' +
      'ika_izmoltsag, m142 as term_bika_labszerkezet, m143 as term_bika' +
      '_ert_dat,'#13#10#9'   m144 as term_bika_apja_kplsz, m145 as term_bika_a' +
      'pja_enar, m146 as term_bika_apja_neve,'#13#10#9'   m147 as term_bika_ap' +
      'ja_szuldat, m148 as term_bika_apja_fulszam, m149 as term_bika_an' +
      'yja_kmi,'#13#10#9'   m150 as term_bika_anyja_nev, m151 as term_bika_any' +
      'ja_enar, m152 as term_bika_anyja_fulszam,'#13#10#9'   m153 as term_bika' +
      '_anyja_sv, m154 as term_bika_anyja_ellszam, m155 as term_bika_an' +
      'yja_szuldat,'#13#10#9'   m156 as term_bika_anyja_tipus, m157 as term_bi' +
      'ka_anyja_izmoltsag,'#13#10'       m158 as term_bika_anyja_labszerkezet' +
      ', m159 as term_bika_anyja_ert_dat,'#9'   '#13#10'    m160 as tenyeszto_ne' +
      'v, m161 as tenyeszto_cim, m162 as tulaj_nev, m163 as tulaj_cim, ' +
      'm164 as tenyeszto_kod, m165 as tulaj_kod,'#13#10#9'szlapok.anya_net_pon' +
      't, szlapok.net_pont, szlapok.iktatoszam, szlapok.e_togy, szlapok' +
      '.anya_togy, szlapok.t_anya_togy, szlapok.apa_net_pont,  szlapok.' +
      'apa_te_tipus, szlapok.apa_te_izmoltsag, szlapok.apa_te_labszerke' +
      'zet, szlapok.apa_te_togy,'#13#10'SZLAPOK.KIBEMAIL, SZLAPOK.TKVSZAM, SZ' +
      'LAPOK.AZONMOD, SZLAPOK.AZONEREDM, SZLAPOK.AZONIKT, SZLAPOK.SZORS' +
      'Z, SZLAPOK.TENYEMAIL, SZLAPOK.TULEMAIL, '#13#10'SZLAPOK.APTKVSZ, SZLAP' +
      'OK.APTKVR, SZLAPOK.APAPTKVSZ, SZLAPOK.APAPTKVR, SZLAPOK.APANTKVS' +
      'Z, SZLAPOK.APANTKVR,'#13#10'SZLAPOK.ANTKVSZ, SZLAPOK.ANTKVR, SZLAPOK.A' +
      'NAPTKVSZ, SZLAPOK.ANAPTKVR, SZLAPOK.ANANTKVSZ, SZLAPOK.ANANTKVR,' +
      #13#10'SZLAPOK.TENYBECSDAT, SZLAPOK.GENHIBA, SZLAPOK.TAZONMOD, SZLAPO' +
      'K.TAZONEREDM, SZLAPOK.DANAZON, SZLAPOK.DANNEV'#13#10'from szlapok'#13#10'lef' +
      't join fajta ef on ef.fkod =m17'#13#10'left join fajta apf on apf.fkod' +
      '=m33'#13#10'left join fajta anf on anf.fkod=m47'#13#10'left join fajta appf ' +
      'on appf.fkod=m60'#13#10'left join fajta anpf on anpf.fkod=m97'#13#10'left jo' +
      'in fajta tbf on tbf.fkod=m135'#13#10'left join KODOK EIV on EIV.KODTIP' +
      'USOK_TIPUSKOD = '#39'IVAR'#39' and EIV.KOD = M19'#13#10'WHERE szlapok.enar = :' +
      'PENAR and sor = :PSOR and per = :PPER'
    DataSet.Parameters = <
      item
        Name = 'PENAR'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'PSOR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PPER'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'Select szlapok.igdat, szlapok.tkod, szlapok.ukod, szlapok.egy, s' +
      'zlapok.sor, szlapok.per, szlapok.mas, szlapok.kidat, szlapok.hit' +
      'dat,'#13#10'       szlapok.nyelv, szlapok.kplsz, szlapok.enar, m13 as ' +
      'fulszam, m14 as nev, m15 as szuldat, m16 as tkv, m17 as fajtakod' +
      ','#13#10#9'   ef.fnev as fajtanev, m18 as fajta_szaz, m19 as ivar, m20 ' +
      'as sv, m21 as eletnapi_tgy, m22 as stv_tgy,'#13#10#9'   m23 as kmi, m24' +
      ' as tipus, m25 as izmoltsag, m26 as labszerkezet, m27 as ertekel' +
      'es_datuma,'#13#10'    m28 as apa_kplsz, m29 as apa_enar, m30 as apa_sz' +
      'uldat, m31 as apa_nev, m32 as apa_fulszam, m33 as apa_fajtakod,'#13 +
      #10'       apf.fnev as apa_fajtanev, m34 as apa_fajta_szaz, m35 as ' +
      'apa_sv, m36 as apa_etgy, m37 as apa_stv_tgy, m38 as apa_tipus,'#13#10 +
      #9'   m39 as apa_izmoltsag, m40 as apa_labszerkezet, m41 as apa_er' +
      't_dat,'#13#10'    m42 as anya_nev, m43 as anya_szuldat, m44 as anya_en' +
      'ar, m45 as anya_ellszam, m46 as anya_fulszam, m47 as anya_fajta_' +
      'kod,'#13#10'       anf.fnev as anya_fajtanev, m48 as anya_fajta_szaz, ' +
      'm49 as anya_sv, m50 as anya_kmi, m51 as anya_tipus,'#13#10#9'   m52 as ' +
      'anya_izmoltsag, m53 as anya_labszerkezet, m54 as anya_ert_dat,'#13#10 +
      '    m55 as apai_nagyapa_nev, m56 as apai_nagyapa_szuldat, m57 as' +
      ' apai_nagyapa_kplsz, m58 as apai_nagyapa_enar,'#13#10'       m59 as ap' +
      'ai_nagyapa_fulszam, m60 as apai_nagyapa_fajtakod, appf.fnev as a' +
      'pa_nagyapa_fajtanev,'#13#10'       m61 as apai_nagyapa_fajta_szaz, m62' +
      ' as apai_nagyapa_sv, m63 as apai_nagyapa_tgy, m64 as apai_nagyap' +
      'a_stv_tgy,'#13#10#9'   m65 as apai_nagyapa_tipus, m66 as apai_nagyapa_i' +
      'zmoltsag, m67 as apai_nagyapa_labszerkezet, m68 as apai_nagyapa_' +
      'ertdat,'#13#10#9'   m69 as apai_nagyapa_apja_kplsz, m70 as apai_nagyapa' +
      '_apja_enar, m71 as apai_nagyapa_apja_fulszam, m72 as apai_nagyap' +
      'a_apja_nev,'#13#10'       m73 as apai_nagyapa_anyja_enar, m74 as apai_' +
      'nagyapa_anyja_ellszam, m75 as apai_nagyapa_anyja_fulszam, m76 as' +
      ' apai_nagyapa_anyja_nev,'#13#10'    m77 as apai_nagyanya_nev, m78 as a' +
      'pai_nagyanya_szuldat, m79 as apai_nagyanya_enar, m80 as apai_nag' +
      'yanya_ellszam,'#13#10'       m81 as apai_nagyanya_fulszam, m82 as apai' +
      '_nagyanya_sv, m83 as apai_nagyanya_kmi, m84 as apai_nagyanya_apj' +
      'a_kplsz,'#13#10#9'   m85 as apai_nagyanya_apja_nev, m86 as apai_nagyany' +
      'a_apja_enar, m87 as apai_nagyanya_apja_fulszam,'#13#10'       m88 as a' +
      'pai_nagyanya_anyja_enar, m89 as apai_nagyanya_anyja_ellszam, m90' +
      ' as apai_nagyanya_anyja_fulszam, m91 as apai_nagyanya_anyja_nev,' +
      #13#10'    m92 as anyai_nagyapa_kplsz, m93 as anyai_nagyapa_enar, m94' +
      ' as anyai_nagyapa_fulszam, m95 as anyai_nagyapa_nev, m96 as anya' +
      'i_nagyapa_szuldat,'#13#10'       m97 as anyai_nagyapa_fajtakod, anpf.f' +
      'nev as anyai_nagyapa_fajtanev, m98 as anyai_nagyapa_fajta_szaz, ' +
      'm99 as anyai_nagyapa_SV,'#13#10#9'   m100 as anyai_nagyapa_etgy, m101 a' +
      's anyai_nagyapa_stv_tgy, m102 as anyai_nagyapa_tipus, m103 as an' +
      'yai_nagyapa_izmolts'#225'g,'#13#10#9'   m104 as anyai_nagyapa_labszerkezet, ' +
      'm105 as anyai_nagyapa_ert_dat, m106 as anyai_nagyapa_apja_kplsz,' +
      ' m107 as anyai_nagyapa_apja_enar,'#13#10#9'   m108 as anyai_nagyapa_apj' +
      'a_nev, m109 as anyai_nagyapa_apja_fulszam, m110 as anyai_nagyapa' +
      '_anyja_enar,'#13#10'       m111 as anyai_nagyapa_anyja_nev, m112 as an' +
      'yai_nagyapa_anyja_ellszam, m113 as anyai_nagyapa_anyja_fulszam,'#13 +
      #10'    m114 as anyai_nagyanya_nev, m115 as anyai_nagyanya_szuldat,' +
      ' m116 as anyai_nagyanya_enar, m117 as anyai_nagyanya_ellszam,'#13#10' ' +
      '      m118 as anyai_nagyanya_fulszam, m119 as anyai_nagyanya_sv,' +
      ' m120 as anyai_nagyanya_kmi, m121 as anyai_nagyanya_apja_enar,'#13#10 +
      #9'   m122 as anyai_nagyanya_apja_kplsz, m123 as anyai_nagyanya_ap' +
      'ja_fulszam, m124 as anyai_nagyanya_apja_nev,'#13#10#9'   m125 as anyai_' +
      'nagyanya_anyja_enar, m126 as anyai_nagyanya_anyja_ellszam,'#13#10#9'   ' +
      'm127 as anyai_nagyanya_anyja_fulszam, m128 as anyai_nagyanya_any' +
      'ja_nev,'#13#10'    m129 as term_ideje, m130 as term_bika_kplsz, m131 a' +
      's term_bika_enar, m132 as term_bika_nev,'#13#10'       m133 as term_bi' +
      'ka_szuldat, m134 as term_bika_fulszam, m135 as term_bika_fajtako' +
      'd,'#13#10#9'   tbf.fnev as term_bika_fajtanev, m136 as term_bika_fajta_' +
      'szaz, m137 as term_bika_sv,'#13#10#9'   m138 as term_bika_etgy, m139 as' +
      ' term_bika_stv_tgy, m140 as term_bika_tipus,'#13#10#9'   m141 as term_b' +
      'ika_izmoltsag, m142 as term_bika_labszerkezet, m143 as term_bika' +
      '_ert_dat,'#13#10#9'   m144 as term_bika_apja_kplsz, m145 as term_bika_a' +
      'pja_enar, m146 as term_bika_apja_neve,'#13#10#9'   m147 as term_bika_ap' +
      'ja_szuldat, m148 as term_bika_apja_fulszam, m149 as term_bika_an' +
      'yja_kmi,'#13#10#9'   m150 as term_bika_anyja_nev, m151 as term_bika_any' +
      'ja_enar, m152 as term_bika_anyja_fulszam,'#13#10#9'   m153 as term_bika' +
      '_anyja_sv, m154 as term_bika_anyja_ellszam, m155 as term_bika_an' +
      'yja_szuldat,'#13#10#9'   m156 as term_bika_anyja_tipus, m157 as term_bi' +
      'ka_anyja_izmoltsag,'#13#10'       m158 as term_bika_anyja_labszerkezet' +
      ', m159 as term_bika_anyja_ert_dat,'#9'   '#13#10'    m160 as tenyeszto_ne' +
      'v, m161 as tenyeszto_cim, m162 as tulaj_nev, m163 as tulaj_cim, ' +
      'm164 as tenyeszto_kod, m165 as tulaj_kod,'#13#10#9'szlapok.anya_net_pon' +
      't, szlapok.net_pont, szlapok.iktatoszam, szlapok.e_togy, szlapok' +
      '.anya_togy, szlapok.t_anya_togy, szlapok.apa_net_pont,  szlapok.' +
      'apa_te_tipus, szlapok.apa_te_izmoltsag, szlapok.apa_te_labszerke' +
      'zet, szlapok.apa_te_togy,'#13#10'SZLAPOK.KIBEMAIL, SZLAPOK.TKVSZAM, SZ' +
      'LAPOK.AZONMOD, SZLAPOK.AZONEREDM, SZLAPOK.AZONIKT, SZLAPOK.SZORS' +
      'Z, SZLAPOK.TENYEMAIL, SZLAPOK.TULEMAIL, '#13#10'SZLAPOK.APTKVSZ, SZLAP' +
      'OK.APTKVR, SZLAPOK.APAPTKVSZ, SZLAPOK.APAPTKVR, SZLAPOK.APANTKVS' +
      'Z, SZLAPOK.APANTKVR,'#13#10'SZLAPOK.ANTKVSZ, SZLAPOK.ANTKVR, SZLAPOK.A' +
      'NAPTKVSZ, SZLAPOK.ANAPTKVR, SZLAPOK.ANANTKVSZ, SZLAPOK.ANANTKVR,' +
      #13#10'SZLAPOK.TENYBECSDAT, SZLAPOK.GENHIBA, SZLAPOK.TAZONMOD, SZLAPO' +
      'K.TAZONEREDM, SZLAPOK.DANAZON, SZLAPOK.DANNEV'#13#10'from szlapok'#13#10'lef' +
      't join fajta ef on ef.fkod =m17'#13#10'left join fajta apf on apf.fkod' +
      '=m33'#13#10'left join fajta anf on anf.fkod=m47'#13#10'left join fajta appf ' +
      'on appf.fkod=m60'#13#10'left join fajta anpf on anpf.fkod=m97'#13#10'left jo' +
      'in fajta tbf on tbf.fkod=m135'#13#10'left join KODOK EIV on EIV.KODTIP' +
      'USOK_TIPUSKOD = '#39'IVAR'#39' and EIV.KOD = M19'#13#10'WHERE szlapok.enar = :' +
      'PENAR and sor = :PSOR and per = :PPER'
    Provider.DataSet.Parameters = <
      item
        Name = 'PENAR'
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'PSOR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PPER'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    FieldDefs = <
      item
        Name = 'IGDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'UKOD'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'EGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'SOR'
        DataType = ftInteger
      end
      item
        Name = 'PER'
        DataType = ftInteger
      end
      item
        Name = 'MAS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'KIDAT'
        DataType = ftDateTime
      end
      item
        Name = 'HITDAT'
        DataType = ftDateTime
      end
      item
        Name = 'NYELV'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TKV'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'IVAR'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'SV'
        DataType = ftInteger
      end
      item
        Name = 'ELETNAPI_TGY'
        DataType = ftInteger
      end
      item
        Name = 'STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ERTEKELES_DATUMA'
        DataType = ftDateTime
      end
      item
        Name = 'APA_KPLSZ'
        DataType = ftBCD
        Precision = 20
        Size = 4
      end
      item
        Name = 'APA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'APA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'APA_SV'
        DataType = ftInteger
      end
      item
        Name = 'APA_ETGY'
        DataType = ftInteger
      end
      item
        Name = 'APA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'APA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYA_FAJTA_KOD'
        DataType = ftInteger
      end
      item
        Name = 'ANYA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYA_SV'
        DataType = ftInteger
      end
      item
        Name = 'ANYA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYAPA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYAPA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYAPA_KPLSZ'
        DataType = ftBCD
        Precision = 20
        Size = 4
      end
      item
        Name = 'APAI_NAGYAPA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'APA_NAGYAPA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYAPA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'APAI_NAGYAPA_SV'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYAPA_TGY'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYAPA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYAPA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APAI_NAGYAPA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APAI_NAGYAPA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APAI_NAGYAPA_ERTDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYAPA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 20
        Size = 4
      end
      item
        Name = 'APAI_NAGYAPA_APJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYANYA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYANYA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYANYA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_SV'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYANYA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'APAI_NAGYANYA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 20
        Size = 4
      end
      item
        Name = 'APAI_NAGYANYA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYANYA_APJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_KPLSZ'
        DataType = ftBCD
        Precision = 20
        Size = 4
      end
      item
        Name = 'ANYAI_NAGYAPA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYAI_NAGYAPA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYAI_NAGYAPA_SV'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_ETGY'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYAI_NAGYAPA_IZMOLTS'#193'G'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYAI_NAGYAPA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYAI_NAGYAPA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 20
        Size = 4
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYANYA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYAI_NAGYANYA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_SV'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYANYA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 20
        Size = 4
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_IDEJE'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_KPLSZ'
        DataType = ftBCD
        Precision = 20
        Size = 4
      end
      item
        Name = 'TERM_BIKA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'TERM_BIKA_SV'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_ETGY'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 20
        Size = 4
      end
      item
        Name = 'TERM_BIKA_APJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_APJA_NEVE'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_APJA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_ANYJA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'TERM_BIKA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_ANYJA_SV'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_ANYJA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_ANYJA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ANYJA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ANYJA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ANYJA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'TENYESZTO_NEV'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TENYESZTO_CIM'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TULAJ_NEV'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TULAJ_CIM'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TENYESZTO_KOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'TULAJ_KOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'ANYA_NET_PONT'
        DataType = ftInteger
      end
      item
        Name = 'NET_PONT'
        DataType = ftInteger
      end
      item
        Name = 'IKTATOSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'E_TOGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_TOGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'T_ANYA_TOGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_NET_PONT'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_TIPUS'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_IZMOLTSAG'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_LABSZERKEZET'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_TOGY'
        DataType = ftInteger
      end
      item
        Name = 'KIBEMAIL'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'TKVSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AZONMOD'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AZONEREDM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AZONIKT'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SZORSZ'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'TENYEMAIL'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'TULEMAIL'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'APTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAPTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAPTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APANTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APANTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANAPTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANAPTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANANTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANANTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TENYBECSDAT'
        DataType = ftDateTime
      end
      item
        Name = 'GENHIBA'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TAZONMOD'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TAZONEREDM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DANAZON'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DANNEV'
        DataType = ftWideString
        Size = 64
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 184
    Top = 32
    object sdsListSzLapokIGDAT: TDateTimeField
      FieldName = 'IGDAT'
    end
    object sdsListSzLapokTKOD: TWideStringField
      FieldName = 'TKOD'
      Size = 7
    end
    object sdsListSzLapokUKOD: TWideStringField
      FieldName = 'UKOD'
      Size = 3
    end
    object sdsListSzLapokEGY: TWideStringField
      FieldName = 'EGY'
      Size = 1
    end
    object sdsListSzLapokSOR: TIntegerField
      FieldName = 'SOR'
    end
    object sdsListSzLapokPER: TIntegerField
      FieldName = 'PER'
    end
    object sdsListSzLapokMAS: TWideStringField
      FieldName = 'MAS'
      Size = 1
    end
    object sdsListSzLapokKIDAT: TDateTimeField
      FieldName = 'KIDAT'
    end
    object sdsListSzLapokHITDAT: TDateTimeField
      FieldName = 'HITDAT'
    end
    object sdsListSzLapokNYELV: TWideStringField
      FieldName = 'NYELV'
      Size = 1
    end
    object sdsListSzLapokKPLSZ: TBCDField
      FieldName = 'KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokENAR: TWideStringField
      FieldName = 'ENAR'
    end
    object sdsListSzLapokFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
    end
    object sdsListSzLapokNEV: TWideStringField
      FieldName = 'NEV'
      Size = 40
    end
    object sdsListSzLapokSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsListSzLapokTKV: TWideStringField
      FieldName = 'TKV'
      Size = 1
    end
    object sdsListSzLapokFAJTAKOD: TIntegerField
      FieldName = 'FAJTAKOD'
    end
    object sdsListSzLapokFAJTANEV: TWideStringField
      FieldName = 'FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokFAJTA_SZAZ: TBCDField
      FieldName = 'FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokIVAR: TWideStringField
      FieldName = 'IVAR'
      Size = 1
    end
    object sdsListSzLapokSV: TIntegerField
      FieldName = 'SV'
    end
    object sdsListSzLapokELETNAPI_TGY: TIntegerField
      FieldName = 'ELETNAPI_TGY'
    end
    object sdsListSzLapokSTV_TGY: TIntegerField
      FieldName = 'STV_TGY'
    end
    object sdsListSzLapokKMI: TBCDField
      FieldName = 'KMI'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokTIPUS: TWideStringField
      FieldName = 'TIPUS'
      Size = 1
    end
    object sdsListSzLapokIZMOLTSAG: TWideStringField
      FieldName = 'IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokLABSZERKEZET: TWideStringField
      FieldName = 'LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokERTEKELES_DATUMA: TDateTimeField
      FieldName = 'ERTEKELES_DATUMA'
    end
    object sdsListSzLapokAPA_KPLSZ: TBCDField
      FieldName = 'APA_KPLSZ'
      Precision = 20
      Size = 0
    end
    object sdsListSzLapokAPA_ENAR: TWideStringField
      FieldName = 'APA_ENAR'
    end
    object sdsListSzLapokAPA_SZULDAT: TDateTimeField
      FieldName = 'APA_SZULDAT'
    end
    object sdsListSzLapokAPA_NEV: TWideStringField
      FieldName = 'APA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPA_FULSZAM: TWideStringField
      FieldName = 'APA_FULSZAM'
    end
    object sdsListSzLapokAPA_FAJTAKOD: TIntegerField
      FieldName = 'APA_FAJTAKOD'
    end
    object sdsListSzLapokAPA_FAJTANEV: TWideStringField
      FieldName = 'APA_FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'APA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokAPA_SV: TIntegerField
      FieldName = 'APA_SV'
    end
    object sdsListSzLapokAPA_ETGY: TIntegerField
      FieldName = 'APA_ETGY'
    end
    object sdsListSzLapokAPA_STV_TGY: TIntegerField
      FieldName = 'APA_STV_TGY'
    end
    object sdsListSzLapokAPA_TIPUS: TWideStringField
      FieldName = 'APA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokAPA_IZMOLTSAG: TWideStringField
      FieldName = 'APA_IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokAPA_LABSZERKEZET: TWideStringField
      FieldName = 'APA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokAPA_ERT_DAT: TDateTimeField
      FieldName = 'APA_ERT_DAT'
    end
    object sdsListSzLapokANYA_NEV: TWideStringField
      FieldName = 'ANYA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYA_SZULDAT: TDateTimeField
      FieldName = 'ANYA_SZULDAT'
    end
    object sdsListSzLapokANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
    end
    object sdsListSzLapokANYA_ELLSZAM: TWideStringField
      FieldName = 'ANYA_ELLSZAM'
    end
    object sdsListSzLapokANYA_FULSZAM: TWideStringField
      FieldName = 'ANYA_FULSZAM'
    end
    object sdsListSzLapokANYA_FAJTA_KOD: TIntegerField
      FieldName = 'ANYA_FAJTA_KOD'
    end
    object sdsListSzLapokANYA_FAJTANEV: TWideStringField
      FieldName = 'ANYA_FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokANYA_FAJTA_SZAZ: TBCDField
      FieldName = 'ANYA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokANYA_SV: TIntegerField
      FieldName = 'ANYA_SV'
    end
    object sdsListSzLapokANYA_KMI: TBCDField
      FieldName = 'ANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokANYA_TIPUS: TWideStringField
      FieldName = 'ANYA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokANYA_IZMOLTSAG: TWideStringField
      FieldName = 'ANYA_IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokANYA_LABSZERKEZET: TWideStringField
      FieldName = 'ANYA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokANYA_ERT_DAT: TDateTimeField
      FieldName = 'ANYA_ERT_DAT'
    end
    object sdsListSzLapokAPAI_NAGYAPA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYAPA_SZULDAT: TDateTimeField
      FieldName = 'APAI_NAGYAPA_SZULDAT'
    end
    object sdsListSzLapokAPAI_NAGYAPA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYAPA_KPLSZ'
      Precision = 20
      Size = 0
    end
    object sdsListSzLapokAPAI_NAGYAPA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_ENAR'
    end
    object sdsListSzLapokAPAI_NAGYAPA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYAPA_FAJTAKOD: TIntegerField
      FieldName = 'APAI_NAGYAPA_FAJTAKOD'
    end
    object sdsListSzLapokAPA_NAGYAPA_FAJTANEV: TWideStringField
      FieldName = 'APA_NAGYAPA_FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'APAI_NAGYAPA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokAPAI_NAGYAPA_SV: TIntegerField
      FieldName = 'APAI_NAGYAPA_SV'
    end
    object sdsListSzLapokAPAI_NAGYAPA_TGY: TIntegerField
      FieldName = 'APAI_NAGYAPA_TGY'
    end
    object sdsListSzLapokAPAI_NAGYAPA_STV_TGY: TIntegerField
      FieldName = 'APAI_NAGYAPA_STV_TGY'
    end
    object sdsListSzLapokAPAI_NAGYAPA_TIPUS: TWideStringField
      FieldName = 'APAI_NAGYAPA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokAPAI_NAGYAPA_IZMOLTSAG: TWideStringField
      FieldName = 'APAI_NAGYAPA_IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokAPAI_NAGYAPA_LABSZERKEZET: TWideStringField
      FieldName = 'APAI_NAGYAPA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokAPAI_NAGYAPA_ERTDAT: TDateTimeField
      FieldName = 'APAI_NAGYAPA_ERTDAT'
    end
    object sdsListSzLapokAPAI_NAGYAPA_APJA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYAPA_APJA_KPLSZ'
      Precision = 20
      Size = 0
    end
    object sdsListSzLapokAPAI_NAGYAPA_APJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_ENAR'
    end
    object sdsListSzLapokAPAI_NAGYAPA_APJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYAPA_APJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYAPA_ANYJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_ENAR'
    end
    object sdsListSzLapokAPAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_ELLSZAM'
    end
    object sdsListSzLapokAPAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYAPA_ANYJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYANYA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYANYA_SZULDAT: TDateTimeField
      FieldName = 'APAI_NAGYANYA_SZULDAT'
    end
    object sdsListSzLapokAPAI_NAGYANYA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_ENAR'
    end
    object sdsListSzLapokAPAI_NAGYANYA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ELLSZAM'
    end
    object sdsListSzLapokAPAI_NAGYANYA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYANYA_SV: TIntegerField
      FieldName = 'APAI_NAGYANYA_SV'
    end
    object sdsListSzLapokAPAI_NAGYANYA_KMI: TBCDField
      FieldName = 'APAI_NAGYANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokAPAI_NAGYANYA_APJA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYANYA_APJA_KPLSZ'
      Precision = 20
      Size = 0
    end
    object sdsListSzLapokAPAI_NAGYANYA_APJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYANYA_APJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_ENAR'
    end
    object sdsListSzLapokAPAI_NAGYANYA_APJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYANYA_ANYJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_ENAR'
    end
    object sdsListSzLapokAPAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_ELLSZAM'
    end
    object sdsListSzLapokAPAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYANYA_ANYJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYAPA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_KPLSZ'
      Precision = 20
      Size = 0
    end
    object sdsListSzLapokANYAI_NAGYAPA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ENAR'
    end
    object sdsListSzLapokANYAI_NAGYAPA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYAPA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYAPA_SZULDAT: TDateTimeField
      FieldName = 'ANYAI_NAGYAPA_SZULDAT'
    end
    object sdsListSzLapokANYAI_NAGYAPA_FAJTAKOD: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_FAJTAKOD'
    end
    object sdsListSzLapokANYAI_NAGYAPA_FAJTANEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokANYAI_NAGYAPA_SV: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_SV'
    end
    object sdsListSzLapokANYAI_NAGYAPA_ETGY: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_ETGY'
    end
    object sdsListSzLapokANYAI_NAGYAPA_STV_TGY: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_STV_TGY'
    end
    object sdsListSzLapokANYAI_NAGYAPA_TIPUS: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokANYAI_NAGYAPA_IZMOLTSG: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_IZMOLTS'#193'G'
      Size = 1
    end
    object sdsListSzLapokANYAI_NAGYAPA_LABSZERKEZET: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokANYAI_NAGYAPA_ERT_DAT: TDateTimeField
      FieldName = 'ANYAI_NAGYAPA_ERT_DAT'
    end
    object sdsListSzLapokANYAI_NAGYAPA_APJA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_APJA_KPLSZ'
      Precision = 20
      Size = 0
    end
    object sdsListSzLapokANYAI_NAGYAPA_APJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_ENAR'
    end
    object sdsListSzLapokANYAI_NAGYAPA_APJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYAPA_APJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYAPA_ANYJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_ENAR'
    end
    object sdsListSzLapokANYAI_NAGYAPA_ANYJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_ELLSZAM'
    end
    object sdsListSzLapokANYAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYANYA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYANYA_SZULDAT: TDateTimeField
      FieldName = 'ANYAI_NAGYANYA_SZULDAT'
    end
    object sdsListSzLapokANYAI_NAGYANYA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ENAR'
    end
    object sdsListSzLapokANYAI_NAGYANYA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ELLSZAM'
    end
    object sdsListSzLapokANYAI_NAGYANYA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYANYA_SV: TIntegerField
      FieldName = 'ANYAI_NAGYANYA_SV'
    end
    object sdsListSzLapokANYAI_NAGYANYA_KMI: TBCDField
      FieldName = 'ANYAI_NAGYANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokANYAI_NAGYANYA_APJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_ENAR'
    end
    object sdsListSzLapokANYAI_NAGYANYA_APJA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYANYA_APJA_KPLSZ'
      Precision = 20
      Size = 0
    end
    object sdsListSzLapokANYAI_NAGYANYA_APJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYANYA_APJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYANYA_ANYJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_ENAR'
    end
    object sdsListSzLapokANYAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_ELLSZAM'
    end
    object sdsListSzLapokANYAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYANYA_ANYJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_NEV'
      Size = 40
    end
    object sdsListSzLapokTERM_IDEJE: TDateTimeField
      FieldName = 'TERM_IDEJE'
    end
    object sdsListSzLapokTERM_BIKA_KPLSZ: TBCDField
      FieldName = 'TERM_BIKA_KPLSZ'
      Precision = 20
      Size = 0
    end
    object sdsListSzLapokTERM_BIKA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_ENAR'
    end
    object sdsListSzLapokTERM_BIKA_NEV: TWideStringField
      FieldName = 'TERM_BIKA_NEV'
      Size = 40
    end
    object sdsListSzLapokTERM_BIKA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_SZULDAT'
    end
    object sdsListSzLapokTERM_BIKA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_FULSZAM'
    end
    object sdsListSzLapokTERM_BIKA_FAJTAKOD: TIntegerField
      FieldName = 'TERM_BIKA_FAJTAKOD'
    end
    object sdsListSzLapokTERM_BIKA_FAJTANEV: TWideStringField
      FieldName = 'TERM_BIKA_FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokTERM_BIKA_FAJTA_SZAZ: TBCDField
      FieldName = 'TERM_BIKA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokTERM_BIKA_SV: TIntegerField
      FieldName = 'TERM_BIKA_SV'
    end
    object sdsListSzLapokTERM_BIKA_ETGY: TIntegerField
      FieldName = 'TERM_BIKA_ETGY'
    end
    object sdsListSzLapokTERM_BIKA_STV_TGY: TIntegerField
      FieldName = 'TERM_BIKA_STV_TGY'
    end
    object sdsListSzLapokTERM_BIKA_TIPUS: TWideStringField
      FieldName = 'TERM_BIKA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_IZMOLTSAG: TWideStringField
      FieldName = 'TERM_BIKA_IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_LABSZERKEZET: TWideStringField
      FieldName = 'TERM_BIKA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_ERT_DAT: TDateTimeField
      FieldName = 'TERM_BIKA_ERT_DAT'
    end
    object sdsListSzLapokTERM_BIKA_APJA_KPLSZ: TBCDField
      FieldName = 'TERM_BIKA_APJA_KPLSZ'
      Precision = 20
      Size = 0
    end
    object sdsListSzLapokTERM_BIKA_APJA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_APJA_ENAR'
    end
    object sdsListSzLapokTERM_BIKA_APJA_NEVE: TWideStringField
      FieldName = 'TERM_BIKA_APJA_NEVE'
      Size = 40
    end
    object sdsListSzLapokTERM_BIKA_APJA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_APJA_SZULDAT'
    end
    object sdsListSzLapokTERM_BIKA_APJA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_APJA_FULSZAM'
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_KMI: TBCDField
      FieldName = 'TERM_BIKA_ANYJA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_NEV: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_NEV'
      Size = 40
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_ENAR'
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_FULSZAM'
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_SV: TIntegerField
      FieldName = 'TERM_BIKA_ANYJA_SV'
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_ELLSZAM'
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_ANYJA_SZULDAT'
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_TIPUS: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_IZMOLTSAG: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_LABSZERKEZET: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_ERT_DAT: TDateTimeField
      FieldName = 'TERM_BIKA_ANYJA_ERT_DAT'
    end
    object sdsListSzLapokTENYESZTO_NEV: TWideStringField
      FieldName = 'TENYESZTO_NEV'
      Size = 39
    end
    object sdsListSzLapokTENYESZTO_CIM: TWideStringField
      FieldName = 'TENYESZTO_CIM'
      Size = 39
    end
    object sdsListSzLapokTULAJ_NEV: TWideStringField
      FieldName = 'TULAJ_NEV'
      Size = 39
    end
    object sdsListSzLapokTULAJ_CIM: TWideStringField
      FieldName = 'TULAJ_CIM'
      Size = 39
    end
    object sdsListSzLapokTENYESZTO_KOD: TWideStringField
      FieldName = 'TENYESZTO_KOD'
      Size = 7
    end
    object sdsListSzLapokTULAJ_KOD: TWideStringField
      FieldName = 'TULAJ_KOD'
      Size = 7
    end
    object sdsListSzLapokANYA_NET_PONT: TIntegerField
      FieldName = 'ANYA_NET_PONT'
    end
    object sdsListSzLapokNET_PONT: TIntegerField
      FieldName = 'NET_PONT'
    end
    object sdsListSzLapokIKTATOSZAM: TWideStringField
      FieldName = 'IKTATOSZAM'
    end
    object sdsListSzLapokE_TOGY: TWideStringField
      FieldName = 'E_TOGY'
      Size = 1
    end
    object sdsListSzLapokANYA_TOGY: TWideStringField
      FieldName = 'ANYA_TOGY'
      Size = 1
    end
    object sdsListSzLapokT_ANYA_TOGY: TWideStringField
      FieldName = 'T_ANYA_TOGY'
      Size = 1
    end
    object sdsListSzLapokAPA_NET_PONT: TIntegerField
      FieldName = 'APA_NET_PONT'
    end
    object sdsListSzLapokAPA_TE_TIPUS: TIntegerField
      FieldName = 'APA_TE_TIPUS'
    end
    object sdsListSzLapokAPA_TE_IZMOLTSAG: TIntegerField
      FieldName = 'APA_TE_IZMOLTSAG'
    end
    object sdsListSzLapokAPA_TE_LABSZERKEZET: TIntegerField
      FieldName = 'APA_TE_LABSZERKEZET'
    end
    object sdsListSzLapokAPA_TE_TOGY: TIntegerField
      FieldName = 'APA_TE_TOGY'
    end
    object sdsListSzLapokKIBEMAIL: TWideStringField
      FieldName = 'KIBEMAIL'
      Size = 64
    end
    object sdsListSzLapokTKVSZAM: TWideStringField
      FieldName = 'TKVSZAM'
    end
    object sdsListSzLapokAZONMOD: TWideStringField
      FieldName = 'AZONMOD'
    end
    object sdsListSzLapokAZONEREDM: TWideStringField
      FieldName = 'AZONEREDM'
    end
    object sdsListSzLapokAZONIKT: TWideStringField
      FieldName = 'AZONIKT'
    end
    object sdsListSzLapokSZORSZ: TWideStringField
      FieldName = 'SZORSZ'
      Size = 64
    end
    object sdsListSzLapokTENYEMAIL: TWideStringField
      FieldName = 'TENYEMAIL'
      Size = 64
    end
    object sdsListSzLapokTULEMAIL: TWideStringField
      FieldName = 'TULEMAIL'
      Size = 64
    end
    object sdsListSzLapokAPTKVSZ: TWideStringField
      FieldName = 'APTKVSZ'
    end
    object sdsListSzLapokAPTKVR: TWideStringField
      FieldName = 'APTKVR'
    end
    object sdsListSzLapokAPAPTKVSZ: TWideStringField
      FieldName = 'APAPTKVSZ'
    end
    object sdsListSzLapokAPAPTKVR: TWideStringField
      FieldName = 'APAPTKVR'
    end
    object sdsListSzLapokAPANTKVSZ: TWideStringField
      FieldName = 'APANTKVSZ'
    end
    object sdsListSzLapokAPANTKVR: TWideStringField
      FieldName = 'APANTKVR'
    end
    object sdsListSzLapokANTKVSZ: TWideStringField
      FieldName = 'ANTKVSZ'
    end
    object sdsListSzLapokANTKVR: TWideStringField
      FieldName = 'ANTKVR'
    end
    object sdsListSzLapokANAPTKVSZ: TWideStringField
      FieldName = 'ANAPTKVSZ'
    end
    object sdsListSzLapokANAPTKVR: TWideStringField
      FieldName = 'ANAPTKVR'
    end
    object sdsListSzLapokANANTKVSZ: TWideStringField
      FieldName = 'ANANTKVSZ'
    end
    object sdsListSzLapokANANTKVR: TWideStringField
      FieldName = 'ANANTKVR'
    end
    object sdsListSzLapokTENYBECSDAT: TDateTimeField
      FieldName = 'TENYBECSDAT'
    end
    object sdsListSzLapokGENHIBA: TWideStringField
      FieldName = 'GENHIBA'
    end
    object sdsListSzLapokTAZONMOD: TWideStringField
      FieldName = 'TAZONMOD'
    end
    object sdsListSzLapokTAZONEREDM: TWideStringField
      FieldName = 'TAZONEREDM'
    end
    object sdsListSzLapokDANAZON: TWideStringField
      FieldName = 'DANAZON'
    end
    object sdsListSzLapokDANNEV: TWideStringField
      FieldName = 'DANNEV'
      Size = 64
    end
  end
end
