inherited frmZaras: TfrmZaras
  Left = 527
  Top = 181
  Width = 692
  Height = 532
  Caption = #201'ves z'#225'r'#225'si lista'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 453
    Width = 676
    inherited BitBtn1: TTalBitBtn
      Left = 503
    end
    inherited BitBtn2: TTalBitBtn
      Left = 597
    end
  end
  inherited Panel2: TPanel
    Width = 676
    Height = 453
    object TalLabel1: TTalLabel
      Left = 173
      Top = 101
      Width = 51
      Height = 13
      Caption = 'Z'#225'r'#225's '#233've:'
    end
    object lblDb: TTalLabel
      Left = 101
      Top = 125
      Width = 130
      Height = 13
      Caption = 'H'#225'ny egyed legyen a list'#225'n:'
      Visible = False
    end
    object edtEv: TTalMaskEdit
      Left = 240
      Top = 97
      Width = 41
      Height = 21
      EditMask = '9999;1;_'
      MaxLength = 4
      TabOrder = 0
      Text = '    '
    end
    object edtDb: TTalMaskEdit
      Left = 240
      Top = 121
      Width = 41
      Height = 21
      EditMask = '9999;1;_'
      MaxLength = 4
      TabOrder = 1
      Text = '    '
      Visible = False
    end
  end
  inherited ActionList1: TActionList
    Left = 452
    Top = 276
  end
  object sdsZarLista1: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT EV, NYITO_LETSZAM, NYITO_ELETKOR,BORJU_DB,TENYBE_ALL,TENY' +
      'BE_KOR,'#13#10'SELEJT_DB,SELEJT_KOR,ZARO_DB,ZARO_KOR,BORJU_SZAZ'#13#10'FROM ' +
      'WZAR1'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT EV, NYITO_LETSZAM, NYITO_ELETKOR,BORJU_DB,TENYBE_ALL,TENY' +
      'BE_KOR,'#13#10'SELEJT_DB,SELEJT_KOR,ZARO_DB,ZARO_KOR,BORJU_SZAZ'#13#10'FROM ' +
      'WZAR1'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 32
    Top = 167
    object sdsZarLista1EV: TIntegerField
      FieldName = 'EV'
    end
    object sdsZarLista1NYITO_LETSZAM: TIntegerField
      FieldName = 'NYITO_LETSZAM'
    end
    object sdsZarLista1NYITO_ELETKOR: TBCDField
      FieldName = 'NYITO_ELETKOR'
      Precision = 7
      Size = 1
    end
    object sdsZarLista1BORJU_DB: TIntegerField
      FieldName = 'BORJU_DB'
    end
    object sdsZarLista1TENYBE_ALL: TIntegerField
      FieldName = 'TENYBE_ALL'
    end
    object sdsZarLista1TENYBE_KOR: TBCDField
      FieldName = 'TENYBE_KOR'
      Precision = 6
      Size = 1
    end
    object sdsZarLista1SELEJT_DB: TIntegerField
      FieldName = 'SELEJT_DB'
    end
    object sdsZarLista1SELEJT_KOR: TBCDField
      FieldName = 'SELEJT_KOR'
      Precision = 6
      Size = 1
    end
    object sdsZarLista1ZARO_DB: TIntegerField
      FieldName = 'ZARO_DB'
    end
    object sdsZarLista1ZARO_KOR: TBCDField
      FieldName = 'ZARO_KOR'
      Precision = 6
      Size = 1
    end
    object sdsZarLista1BORJU_SZAZ: TBCDField
      FieldName = 'BORJU_SZAZ'
      Precision = 4
      Size = 1
    end
  end
  object frxDBZarLista: TfrxDBDataset
    UserName = 'frxDBZarLista'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EV=EV'
      'NYITO_LETSZAM=NYITO_LETSZAM'
      'NYITO_ELETKOR=NYITO_ELETKOR'
      'BORJU_DB=BORJU_DB'
      'TENYBE_ALL=TENYBE_ALL'
      'TENYBE_KOR=TENYBE_KOR'
      'SELEJT_DB=SELEJT_DB'
      'SELEJT_KOR=SELEJT_KOR'
      'ZARO_DB=ZARO_DB'
      'ZARO_KOR=ZARO_KOR'
      'BORJU_SZAZ=BORJU_SZAZ')
    DataSet = sdsZarLista1
    Left = 104
    Top = 167
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 39230.840396157400000000
    ReportOptions.LastChange = 44039.855240254600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo7OnAfterData(Sender: TfrxComponent);'
      '  var'
      '  s : string;'
      'begin'
      '    s := <frxDBDElitLista."ENAR">;'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo7.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(s' +
        ',10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo7.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy(' +
        's,12,1)'
      '     else'
      '       memo7.text := <frxDBDElitLista."ENAR">;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    StoreInDFM = False
    Left = 360
    Top = 359
    Datasets = <
      item
        DataSet = frxDBDElitLista
        DataSetName = 'frxDBDElitLista'
      end
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end>
    Variables = <
      item
        Name = ' Parameterek'
        Value = Null
      end
      item
        Name = 'TENYESZET'
        Value = Null
      end
      item
        Name = 'EV'
        Value = Null
      end>
    Style = <>
  end
  object sdsZarLista2: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select   BORJAK.BORJU_IVAR, cast(COUNT(1) as numeric) as IVARDB,' +
      '  '#13#10'cast(DECODE(SUM( case when E1.E_TERM_DAT is null then 0 else' +
      ' 1 end) ,0,0, '#13#10'  ROUND( SUM( coalesce( E1.ELLES_DATUM - E1.E_TE' +
      'RM_DAT ,0)) /  SUM( case when E1.E_TERM_DAT is null then 0 else ' +
      '1 end),0)) as numeric) as VEMH_NAP_DB, '#13#10'CAST(ROUND(100*SUM( cas' +
      'e when E1.ELLES_LEF in ('#39'1'#39','#39'2'#39') then 1 else 0 end) / COUNT(1),2' +
      ') AS NUMERIC(10,2)) as KONNYU_ELLES,  '#13#10'CAST(ROUND(100*SUM( case' +
      ' when BORJAK.SZARVALTSAG='#39'1'#39' then 0 else 1 end) / COUNT(1),1) AS' +
      ' NUMERIC(10,2)) as SZARVATLAN,  '#13#10'CAST(ROUND(SUM( coalesce (BORJ' +
      'AK.BORJU_SULY,0)) / COUNT(1),0) AS NUMERIC) as SZUL_TOMEG,  '#13#10'CA' +
      'ST(SUM( case when EGYEDEK.id is not null then 1 else 0 end) AS N' +
      'UMERIC) as VALASZTOTT_DB,  '#13#10'CAST(ROUND(DECODE(SUM( case when EG' +
      'YEDEK.id is not null then 1 else 0 end),0,0,    '#13#10'    SUM( coale' +
      'sce(EGYEDEK.VALTOM,0)) / SUM( case when EGYEDEK.id is not null t' +
      'hen 1 else 0 end)),0) AS NUMERIC) as VALTOM,  '#13#10'CAST(ROUND(DECOD' +
      'E(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
      ' '#13#10'    SUM( case when coalesce(EGYEDEK.VALDAT - EGYEDEK.SZULDAT,' +
      '0) <= 0 then 0 else   '#13#10'    coalesce(EGYEDEK.VALDAT - EGYEDEK.SZ' +
      'ULDAT,0) end) / SUM( case when EGYEDEK.id is not null then 1 els' +
      'e 0 end)),0) AS NUMERIC) as ELETNAP,  '#13#10'CAST(ROUND(DECODE(SUM( c' +
      'ase when EGYEDEK.id is not null then 1 else 0 end),0,0,  '#13#10'    S' +
      'UM( cast(TOMGYAR(0, EGYEDEK.VALTOM,EGYEDEK.SZULDAT, EGYEDEK.VALD' +
      'AT ) as float)) / SUM( case when EGYEDEK.id is not null then 1 e' +
      'lse 0 end)),0) AS NUMERIC) as ELET_TGYAR,  '#13#10'CAST(ROUND(DECODE(S' +
      'UM( case when EGYEDEK.id is not null then 1 else 0 end),0,0,    ' +
      #13#10'   SUM( coalesce(EGYEDEK.TOM205,0)) / SUM( case when EGYEDEK.i' +
      'd is not null then 1 else 0 end)),0) AS NUMERIC) as TOM205,  '#13#10'C' +
      'AST(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 e' +
      'nd),0,0,    '#13#10'   SUM( EGYEDEK.SV) / SUM( case when EGYEDEK.id is' +
      ' not null then 1 else 0 end)) AS NUMERIC) as SV   '#13#10'from BORJAK ' +
      ' join ELLESEK E1 on E1.id = BORJAK.ELLESEK_ID  '#13#10'left join EGYED' +
      'EK on TRIM(EGYEDEK.ENAR) = BORJAK.BORJU_ENAR and EGYEDEK.VALDAT ' +
      'between TO_DATE('#39'2010.01.01'#39','#39'YYYY.MM.DD'#39') and TO_DATE('#39'2010.12.' +
      '31'#39','#39'YYYY.MM.DD'#39')  '#13#10'left join TERMEKENYITESEK on TERMEKENYITESE' +
      'K.id = E1.E_TERM_ID  '#13#10'where E1.TENYESZET = '#39'0515225'#39' '#13#10'and BORJ' +
      'AK.BORJU_KIESES_KOD = '#39'0'#39' and BORJAK.BORJU_IVAR in ('#39'1'#39','#39'2'#39')    ' +
      #13#10'and E1.ELLES_DATUM between TO_DATE('#39'2010.01.01'#39','#39'YYYY.MM.DD'#39') ' +
      'and TO_DATE('#39'2010.12.31'#39','#39'YYYY.MM.DD'#39')  '#13#10'GROUP BY BORJAK.BORJU_' +
      'IVAR '
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'select   BORJAK.BORJU_IVAR, cast(COUNT(1) as numeric) as IVARDB,' +
      '  '#13#10'cast(DECODE(SUM( case when E1.E_TERM_DAT is null then 0 else' +
      ' 1 end) ,0,0, '#13#10'  ROUND( SUM( coalesce( E1.ELLES_DATUM - E1.E_TE' +
      'RM_DAT ,0)) /  SUM( case when E1.E_TERM_DAT is null then 0 else ' +
      '1 end),0)) as numeric) as VEMH_NAP_DB, '#13#10'CAST(ROUND(100*SUM( cas' +
      'e when E1.ELLES_LEF in ('#39'1'#39','#39'2'#39') then 1 else 0 end) / COUNT(1),2' +
      ') AS NUMERIC(10,2)) as KONNYU_ELLES,  '#13#10'CAST(ROUND(100*SUM( case' +
      ' when BORJAK.SZARVALTSAG='#39'1'#39' then 0 else 1 end) / COUNT(1),1) AS' +
      ' NUMERIC(10,2)) as SZARVATLAN,  '#13#10'CAST(ROUND(SUM( coalesce (BORJ' +
      'AK.BORJU_SULY,0)) / COUNT(1),0) AS NUMERIC) as SZUL_TOMEG,  '#13#10'CA' +
      'ST(SUM( case when EGYEDEK.id is not null then 1 else 0 end) AS N' +
      'UMERIC) as VALASZTOTT_DB,  '#13#10'CAST(ROUND(DECODE(SUM( case when EG' +
      'YEDEK.id is not null then 1 else 0 end),0,0,    '#13#10'    SUM( coale' +
      'sce(EGYEDEK.VALTOM,0)) / SUM( case when EGYEDEK.id is not null t' +
      'hen 1 else 0 end)),0) AS NUMERIC) as VALTOM,  '#13#10'CAST(ROUND(DECOD' +
      'E(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
      ' '#13#10'    SUM( case when coalesce(EGYEDEK.VALDAT - EGYEDEK.SZULDAT,' +
      '0) <= 0 then 0 else   '#13#10'    coalesce(EGYEDEK.VALDAT - EGYEDEK.SZ' +
      'ULDAT,0) end) / SUM( case when EGYEDEK.id is not null then 1 els' +
      'e 0 end)),0) AS NUMERIC) as ELETNAP,  '#13#10'CAST(ROUND(DECODE(SUM( c' +
      'ase when EGYEDEK.id is not null then 1 else 0 end),0,0,  '#13#10'    S' +
      'UM( cast(TOMGYAR(0, EGYEDEK.VALTOM,EGYEDEK.SZULDAT, EGYEDEK.VALD' +
      'AT ) as float)) / SUM( case when EGYEDEK.id is not null then 1 e' +
      'lse 0 end)),0) AS NUMERIC) as ELET_TGYAR,  '#13#10'CAST(ROUND(DECODE(S' +
      'UM( case when EGYEDEK.id is not null then 1 else 0 end),0,0,    ' +
      #13#10'   SUM( coalesce(EGYEDEK.TOM205,0)) / SUM( case when EGYEDEK.i' +
      'd is not null then 1 else 0 end)),0) AS NUMERIC) as TOM205,  '#13#10'C' +
      'AST(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 e' +
      'nd),0,0,    '#13#10'   SUM( EGYEDEK.SV) / SUM( case when EGYEDEK.id is' +
      ' not null then 1 else 0 end)) AS NUMERIC) as SV   '#13#10'from BORJAK ' +
      ' join ELLESEK E1 on E1.id = BORJAK.ELLESEK_ID  '#13#10'left join EGYED' +
      'EK on TRIM(EGYEDEK.ENAR) = BORJAK.BORJU_ENAR and EGYEDEK.VALDAT ' +
      'between TO_DATE('#39'2010.01.01'#39','#39'YYYY.MM.DD'#39') and TO_DATE('#39'2010.12.' +
      '31'#39','#39'YYYY.MM.DD'#39')  '#13#10'left join TERMEKENYITESEK on TERMEKENYITESE' +
      'K.id = E1.E_TERM_ID  '#13#10'where E1.TENYESZET = '#39'0515225'#39' '#13#10'and BORJ' +
      'AK.BORJU_KIESES_KOD = '#39'0'#39' and BORJAK.BORJU_IVAR in ('#39'1'#39','#39'2'#39')    ' +
      #13#10'and E1.ELLES_DATUM between TO_DATE('#39'2010.01.01'#39','#39'YYYY.MM.DD'#39') ' +
      'and TO_DATE('#39'2010.12.31'#39','#39'YYYY.MM.DD'#39')  '#13#10'GROUP BY BORJAK.BORJU_' +
      'IVAR '
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 32
    Top = 220
    object sdsZarLista2BORJU_IVAR: TWideStringField
      FieldName = 'BORJU_IVAR'
      Size = 10
    end
    object sdsZarLista2IVARDB: TBCDField
      FieldName = 'IVARDB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista2VEMH_NAP_DB: TBCDField
      FieldName = 'VEMH_NAP_DB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista2KONNYU_ELLES: TBCDField
      FieldName = 'KONNYU_ELLES'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object sdsZarLista2SZARVATLAN: TBCDField
      FieldName = 'SZARVATLAN'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object sdsZarLista2SZUL_TOMEG: TBCDField
      FieldName = 'SZUL_TOMEG'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista2VALASZTOTT_DB: TBCDField
      FieldName = 'VALASZTOTT_DB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista2VALTOM: TBCDField
      FieldName = 'VALTOM'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista2ELETNAP: TBCDField
      FieldName = 'ELETNAP'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista2ELET_TGYAR: TBCDField
      FieldName = 'ELET_TGYAR'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista2TOM205: TBCDField
      FieldName = 'TOM205'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista2SV: TBCDField
      FieldName = 'SV'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object frxDBZarLista2: TfrxDBDataset
    UserName = 'frxDBZarLista2'
    CloseDataSource = True
    FieldAliases.Strings = (
      'BORJU_IVAR=BORJU_IVAR'
      'IVARDB=IVARDB'
      'VEMH_NAP_DB=VEMH_NAP_DB'
      'KONNYU_ELLES=KONNYU_ELLES'
      'SZARVATLAN=SZARVATLAN'
      'SZUL_TOMEG=SZUL_TOMEG'
      'VALASZTOTT_DB=VALASZTOTT_DB'
      'VALTOM=VALTOM'
      'ELETNAP=ELETNAP'
      'ELET_TGYAR=ELET_TGYAR'
      'TOM205=TOM205'
      'SV=SV')
    DataSet = sdsZarLista2
    Left = 104
    Top = 220
  end
  object sdsZarLstU: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT E.ENAR, E.ANYA_ENAR, E.APAKLSZ, E.SZULDAT, E.SZUL_SULY, E' +
      '.VALDAT, E.VALTOM, CAST((E.VALDAT - E.SZULDAT) AS INTEGER) AS EN' +
      'APVAL,  '#13#10'E.TOM205, E.SV, CAST(TOMGYAR(0, E.VALTOM, E.SZULDAT,E.' +
      'VALDAT) AS INTEGER) AS TGYVAL,  T1.DATUM AS T1DATUM, T1.TOMEG AS' +
      ' T1TOMEG,'#13#10'CAST(( T1.DATUM - E.SZULDAT) AS NUMERIC) AS T1_ELETNA' +
      'P, '#13#10'CAST((T1.DATUM - E.VALDAT) AS INTEGER) AS T1_HIZNAP,  CAST(' +
      'TOMGYAR(0, T1.TOMEG, E.SZULDAT,T1.DATUM) AS INTEGER) AS T1ELET, ' +
      ' '#13#10'CAST(TOMGYAR(E.VALTOM, T1.TOMEG, E.VALDAT, T1.DATUM) AS INTEG' +
      'ER) AS T1HIZ,  T2.DATUM AS T2DATUM, T2.TOMEG AS T2TOMEG,'#13#10'CAST((' +
      'T2.DATUM - E.SZULDAT) AS INTEGER) AS T2_ELETNAP, (T2.DATUM - T1.' +
      'DATUM) AS T2_HIZNAP,  CAST(TOMGYAR(0, T2.TOMEG, E.SZULDAT,T2.DAT' +
      'UM) AS INTEGER) AS T2ELET,  '#13#10'CAST(TOMGYAR(T1.TOMEG, T2.TOMEG, T' +
      '1.DATUM, T2.DATUM) AS INTEGER) AS T2HIZ,  COALESCE(KK.TIPUS,0) A' +
      'S TIPUS, '#13#10'COALESCE(KK.IZOM,0) AS IZOM , COALESCE(KK.LAB,0) AS L' +
      'AB  '#13#10'FROM EGYEDEK E  '#13#10'JOIN TOMEGEK T1 ON T1.EGYED_ID = E.ID AN' +
      'D T1.ID = ELSO_MERES(E.ID,TO_DATE('#39'2010.04.15'#39','#39'yyyy.mm.dd'#39')) AN' +
      'D T1.DATUM<= TO_DATE('#39'2016.08.18'#39','#39'yyyy.mm.dd'#39') '#13#10'LEFT JOIN TOME' +
      'GEK T2 ON T2.EGYED_ID = E.ID AND T2.ID = ELSO_MERES(E.ID,  TO_DA' +
      'TE('#39'2010.04.15'#39','#39'yyyy.mm.dd'#39')) AND T2.DATUM<=  TO_DATE('#39'2016.08.' +
      '18'#39','#39'yyyy.mm.dd'#39') '#13#10'LEFT JOIN KULLEM KK ON KK.ID = KULLEM_ID(E.E' +
      'NAR)  '#13#10'WHERE E.IVAR = '#39'1'#39' AND E.TENYESZET = '#39'0515225'#39' '#13#10'Order B' +
      'y e.enar'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT E.ENAR, E.ANYA_ENAR, E.APAKLSZ, E.SZULDAT, E.SZUL_SULY, E' +
      '.VALDAT, E.VALTOM, CAST((E.VALDAT - E.SZULDAT) AS INTEGER) AS EN' +
      'APVAL,  '#13#10'E.TOM205, E.SV, CAST(TOMGYAR(0, E.VALTOM, E.SZULDAT,E.' +
      'VALDAT) AS INTEGER) AS TGYVAL,  T1.DATUM AS T1DATUM, T1.TOMEG AS' +
      ' T1TOMEG,'#13#10'CAST(( T1.DATUM - E.SZULDAT) AS NUMERIC) AS T1_ELETNA' +
      'P, '#13#10'CAST((T1.DATUM - E.VALDAT) AS INTEGER) AS T1_HIZNAP,  CAST(' +
      'TOMGYAR(0, T1.TOMEG, E.SZULDAT,T1.DATUM) AS INTEGER) AS T1ELET, ' +
      ' '#13#10'CAST(TOMGYAR(E.VALTOM, T1.TOMEG, E.VALDAT, T1.DATUM) AS INTEG' +
      'ER) AS T1HIZ,  T2.DATUM AS T2DATUM, T2.TOMEG AS T2TOMEG,'#13#10'CAST((' +
      'T2.DATUM - E.SZULDAT) AS INTEGER) AS T2_ELETNAP, (T2.DATUM - T1.' +
      'DATUM) AS T2_HIZNAP,  CAST(TOMGYAR(0, T2.TOMEG, E.SZULDAT,T2.DAT' +
      'UM) AS INTEGER) AS T2ELET,  '#13#10'CAST(TOMGYAR(T1.TOMEG, T2.TOMEG, T' +
      '1.DATUM, T2.DATUM) AS INTEGER) AS T2HIZ,  COALESCE(KK.TIPUS,0) A' +
      'S TIPUS, '#13#10'COALESCE(KK.IZOM,0) AS IZOM , COALESCE(KK.LAB,0) AS L' +
      'AB  '#13#10'FROM EGYEDEK E  '#13#10'JOIN TOMEGEK T1 ON T1.EGYED_ID = E.ID AN' +
      'D T1.ID = ELSO_MERES(E.ID,TO_DATE('#39'2010.04.15'#39','#39'yyyy.mm.dd'#39')) AN' +
      'D T1.DATUM<= TO_DATE('#39'2016.08.18'#39','#39'yyyy.mm.dd'#39') '#13#10'LEFT JOIN TOME' +
      'GEK T2 ON T2.EGYED_ID = E.ID AND T2.ID = ELSO_MERES(E.ID,  TO_DA' +
      'TE('#39'2010.04.15'#39','#39'yyyy.mm.dd'#39')) AND T2.DATUM<=  TO_DATE('#39'2016.08.' +
      '18'#39','#39'yyyy.mm.dd'#39') '#13#10'LEFT JOIN KULLEM KK ON KK.ID = KULLEM_ID(E.E' +
      'NAR)  '#13#10'WHERE E.IVAR = '#39'1'#39' AND E.TENYESZET = '#39'0515225'#39' '#13#10'Order B' +
      'y e.enar'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 32
    Top = 328
    object sdsZarLstUENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsZarLstUANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 10
    end
    object sdsZarLstUAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
      Size = 10
    end
    object sdsZarLstUSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsZarLstUSZUL_SULY: TIntegerField
      FieldName = 'SZUL_SULY'
    end
    object sdsZarLstUVALDAT: TDateTimeField
      FieldName = 'VALDAT'
    end
    object sdsZarLstUVALTOM: TIntegerField
      FieldName = 'VALTOM'
    end
    object sdsZarLstUENAPVAL: TBCDField
      FieldName = 'ENAPVAL'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLstUTOM205: TIntegerField
      FieldName = 'TOM205'
    end
    object sdsZarLstUSV: TIntegerField
      FieldName = 'SV'
    end
    object sdsZarLstUTGYVAL: TBCDField
      FieldName = 'TGYVAL'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLstUT1DATUM: TDateTimeField
      FieldName = 'T1DATUM'
    end
    object sdsZarLstUT1TOMEG: TIntegerField
      FieldName = 'T1TOMEG'
    end
    object sdsZarLstUT1_ELETNAP: TBCDField
      FieldName = 'T1_ELETNAP'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLstUT1_HIZNAP: TBCDField
      FieldName = 'T1_HIZNAP'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLstUT1ELET: TBCDField
      FieldName = 'T1ELET'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLstUT1HIZ: TBCDField
      FieldName = 'T1HIZ'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLstUT2DATUM: TDateTimeField
      FieldName = 'T2DATUM'
    end
    object sdsZarLstUT2TOMEG: TIntegerField
      FieldName = 'T2TOMEG'
    end
    object sdsZarLstUT2_ELETNAP: TBCDField
      FieldName = 'T2_ELETNAP'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLstUT2_HIZNAP: TBCDField
      FieldName = 'T2_HIZNAP'
      ReadOnly = True
      Precision = 32
    end
    object sdsZarLstUT2ELET: TBCDField
      FieldName = 'T2ELET'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLstUT2HIZ: TBCDField
      FieldName = 'T2HIZ'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLstUTIPUS: TBCDField
      FieldName = 'TIPUS'
      ReadOnly = True
      Precision = 32
    end
    object sdsZarLstUIZOM: TBCDField
      FieldName = 'IZOM'
      ReadOnly = True
      Precision = 32
    end
    object sdsZarLstULAB: TBCDField
      FieldName = 'LAB'
      ReadOnly = True
      Precision = 32
    end
  end
  object frxDBZarU: TfrxDBDataset
    UserName = 'frxDBZarU'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'ANYA_ENAR=ANYA_ENAR'
      'APAKLSZ=APAKLSZ'
      'SZULDAT=SZULDAT'
      'SZUL_SULY=SZUL_SULY'
      'VALDAT=VALDAT'
      'VALTOM=VALTOM'
      'ENAPVAL=ENAPVAL'
      'TOM205=TOM205'
      'SV=SV'
      'TGYVAL=TGYVAL'
      'T1DATUM=T1DATUM'
      'T1TOMEG=T1TOMEG'
      'T1_ELETNAP=T1_ELETNAP'
      'T1_HIZNAP=T1_HIZNAP'
      'T1ELET=T1ELET'
      'T1HIZ=T1HIZ'
      'T2DATUM=T2DATUM'
      'T2TOMEG=T2TOMEG'
      'T2_ELETNAP=T2_ELETNAP'
      'T2_HIZNAP=T2_HIZNAP'
      'T2ELET=T2ELET'
      'T2HIZ=T2HIZ'
      'TIPUS=TIPUS'
      'IZOM=IZOM'
      'LAB=LAB')
    DataSet = sdsZarLstU
    Left = 104
    Top = 328
  end
  object sdsZarLista21: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select   BORJAK.BORJU_IVAR, cast(COUNT(1) as numeric) as IVARDB,' +
      '  '#13#10'cast(DECODE(SUM( case when E1.E_TERM_DAT is null then 0 else' +
      ' 1 end) ,0,0, '#13#10'  ROUND( SUM( coalesce( E1.ELLES_DATUM - E1.E_TE' +
      'RM_DAT ,0)) /  SUM( case when E1.E_TERM_DAT is null then 0 else ' +
      '1 end),0)) as numeric) as VEMH_NAP_DB, '#13#10'CAST(ROUND(100*SUM( cas' +
      'e when E1.ELLES_LEF in ('#39'1'#39','#39'2'#39') then 1 else 0 end) / COUNT(1),2' +
      ') AS NUMERIC(10,2)) as KONNYU_ELLES,  '#13#10'CAST(ROUND(100*SUM( case' +
      ' when BORJAK.SZARVALTSAG='#39'1'#39' then 0 else 1 end) / COUNT(1),1) AS' +
      ' NUMERIC(10,2)) as SZARVATLAN,  '#13#10'CAST(ROUND(SUM( coalesce (BORJ' +
      'AK.BORJU_SULY,0)) / COUNT(1),0) AS NUMERIC) as SZUL_TOMEG,  '#13#10'CA' +
      'ST(SUM( case when EGYEDEK.id is not null then 1 else 0 end) AS N' +
      'UMERIC) as VALASZTOTT_DB,  '#13#10'CAST(ROUND(DECODE(SUM( case when EG' +
      'YEDEK.id is not null then 1 else 0 end),0,0,    '#13#10'    SUM( coale' +
      'sce(EGYEDEK.VALTOM,0)) / SUM( case when EGYEDEK.id is not null t' +
      'hen 1 else 0 end)),0) AS NUMERIC) as VALTOM,  '#13#10'CAST(ROUND(DECOD' +
      'E(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
      ' '#13#10'    SUM( case when coalesce(EGYEDEK.VALDAT - EGYEDEK.SZULDAT,' +
      '0) <= 0 then 0 else   '#13#10'    coalesce(EGYEDEK.VALDAT - EGYEDEK.SZ' +
      'ULDAT,0) end) / SUM( case when EGYEDEK.id is not null then 1 els' +
      'e 0 end)),0) AS NUMERIC) as ELETNAP,  '#13#10'CAST(ROUND(DECODE(SUM( c' +
      'ase when EGYEDEK.id is not null then 1 else 0 end),0,0,  '#13#10'    S' +
      'UM( cast(TOMGYAR(0, EGYEDEK.VALTOM,EGYEDEK.SZULDAT, EGYEDEK.VALD' +
      'AT ) as float)) / SUM( case when EGYEDEK.id is not null then 1 e' +
      'lse 0 end)),0) AS NUMERIC) as ELET_TGYAR,  '#13#10'CAST(ROUND(DECODE(S' +
      'UM( case when EGYEDEK.id is not null then 1 else 0 end),0,0,    ' +
      #13#10'   SUM( coalesce(EGYEDEK.TOM205,0)) / SUM( case when EGYEDEK.i' +
      'd is not null then 1 else 0 end)),0) AS NUMERIC) as TOM205,  '#13#10'C' +
      'AST(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 e' +
      'nd),0,0,    '#13#10'   SUM( EGYEDEK.SV) / SUM( case when EGYEDEK.id is' +
      ' not null then 1 else 0 end)) AS NUMERIC) as SV   '#13#10'from BORJAK ' +
      ' join ELLESEK E1 on E1.id = BORJAK.ELLESEK_ID  '#13#10'left join EGYED' +
      'EK on TRIM(EGYEDEK.ENAR) = BORJAK.BORJU_ENAR and EGYEDEK.VALDAT ' +
      'between TO_DATE('#39'2010.01.01'#39','#39'YYYY.MM.DD'#39') and TO_DATE('#39'2010.12.' +
      '31'#39','#39'YYYY.MM.DD'#39')  '#13#10'left join TERMEKENYITESEK on TERMEKENYITESE' +
      'K.id = E1.E_TERM_ID  '#13#10'where E1.TENYESZET = '#39'0515225'#39' '#13#10'and BORJ' +
      'AK.BORJU_KIESES_KOD = '#39'0'#39' and BORJAK.BORJU_IVAR in ('#39'1'#39','#39'2'#39')    ' +
      #13#10'and E1.ELLES_DATUM between TO_DATE('#39'2010.01.01'#39','#39'YYYY.MM.DD'#39') ' +
      'and TO_DATE('#39'2010.12.31'#39','#39'YYYY.MM.DD'#39')  '#13#10'GROUP BY BORJAK.BORJU_' +
      'IVAR '
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select   BORJAK.BORJU_IVAR, cast(COUNT(1) as numeric) as IVARDB,' +
      '  '#13#10'cast(DECODE(SUM( case when E1.E_TERM_DAT is null then 0 else' +
      ' 1 end) ,0,0, '#13#10'  ROUND( SUM( coalesce( E1.ELLES_DATUM - E1.E_TE' +
      'RM_DAT ,0)) /  SUM( case when E1.E_TERM_DAT is null then 0 else ' +
      '1 end),0)) as numeric) as VEMH_NAP_DB, '#13#10'CAST(ROUND(100*SUM( cas' +
      'e when E1.ELLES_LEF in ('#39'1'#39','#39'2'#39') then 1 else 0 end) / COUNT(1),2' +
      ') AS NUMERIC(10,2)) as KONNYU_ELLES,  '#13#10'CAST(ROUND(100*SUM( case' +
      ' when BORJAK.SZARVALTSAG='#39'1'#39' then 0 else 1 end) / COUNT(1),1) AS' +
      ' NUMERIC(10,2)) as SZARVATLAN,  '#13#10'CAST(ROUND(SUM( coalesce (BORJ' +
      'AK.BORJU_SULY,0)) / COUNT(1),0) AS NUMERIC) as SZUL_TOMEG,  '#13#10'CA' +
      'ST(SUM( case when EGYEDEK.id is not null then 1 else 0 end) AS N' +
      'UMERIC) as VALASZTOTT_DB,  '#13#10'CAST(ROUND(DECODE(SUM( case when EG' +
      'YEDEK.id is not null then 1 else 0 end),0,0,    '#13#10'    SUM( coale' +
      'sce(EGYEDEK.VALTOM,0)) / SUM( case when EGYEDEK.id is not null t' +
      'hen 1 else 0 end)),0) AS NUMERIC) as VALTOM,  '#13#10'CAST(ROUND(DECOD' +
      'E(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
      ' '#13#10'    SUM( case when coalesce(EGYEDEK.VALDAT - EGYEDEK.SZULDAT,' +
      '0) <= 0 then 0 else   '#13#10'    coalesce(EGYEDEK.VALDAT - EGYEDEK.SZ' +
      'ULDAT,0) end) / SUM( case when EGYEDEK.id is not null then 1 els' +
      'e 0 end)),0) AS NUMERIC) as ELETNAP,  '#13#10'CAST(ROUND(DECODE(SUM( c' +
      'ase when EGYEDEK.id is not null then 1 else 0 end),0,0,  '#13#10'    S' +
      'UM( cast(TOMGYAR(0, EGYEDEK.VALTOM,EGYEDEK.SZULDAT, EGYEDEK.VALD' +
      'AT ) as float)) / SUM( case when EGYEDEK.id is not null then 1 e' +
      'lse 0 end)),0) AS NUMERIC) as ELET_TGYAR,  '#13#10'CAST(ROUND(DECODE(S' +
      'UM( case when EGYEDEK.id is not null then 1 else 0 end),0,0,    ' +
      #13#10'   SUM( coalesce(EGYEDEK.TOM205,0)) / SUM( case when EGYEDEK.i' +
      'd is not null then 1 else 0 end)),0) AS NUMERIC) as TOM205,  '#13#10'C' +
      'AST(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 e' +
      'nd),0,0,    '#13#10'   SUM( EGYEDEK.SV) / SUM( case when EGYEDEK.id is' +
      ' not null then 1 else 0 end)) AS NUMERIC) as SV   '#13#10'from BORJAK ' +
      ' join ELLESEK E1 on E1.id = BORJAK.ELLESEK_ID  '#13#10'left join EGYED' +
      'EK on TRIM(EGYEDEK.ENAR) = BORJAK.BORJU_ENAR and EGYEDEK.VALDAT ' +
      'between TO_DATE('#39'2010.01.01'#39','#39'YYYY.MM.DD'#39') and TO_DATE('#39'2010.12.' +
      '31'#39','#39'YYYY.MM.DD'#39')  '#13#10'left join TERMEKENYITESEK on TERMEKENYITESE' +
      'K.id = E1.E_TERM_ID  '#13#10'where E1.TENYESZET = '#39'0515225'#39' '#13#10'and BORJ' +
      'AK.BORJU_KIESES_KOD = '#39'0'#39' and BORJAK.BORJU_IVAR in ('#39'1'#39','#39'2'#39')    ' +
      #13#10'and E1.ELLES_DATUM between TO_DATE('#39'2010.01.01'#39','#39'YYYY.MM.DD'#39') ' +
      'and TO_DATE('#39'2010.12.31'#39','#39'YYYY.MM.DD'#39')  '#13#10'GROUP BY BORJAK.BORJU_' +
      'IVAR '
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 32
    Top = 276
    object sdsZarLista21BORJU_IVAR: TWideStringField
      FieldName = 'BORJU_IVAR'
      Size = 10
    end
    object sdsZarLista21IVARDB: TBCDField
      FieldName = 'IVARDB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista21VEMH_NAP_DB: TBCDField
      FieldName = 'VEMH_NAP_DB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista21KONNYU_ELLES: TBCDField
      FieldName = 'KONNYU_ELLES'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object sdsZarLista21SZARVATLAN: TBCDField
      FieldName = 'SZARVATLAN'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object sdsZarLista21SZUL_TOMEG: TBCDField
      FieldName = 'SZUL_TOMEG'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista21VALASZTOTT_DB: TBCDField
      FieldName = 'VALASZTOTT_DB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista21VALTOM: TBCDField
      FieldName = 'VALTOM'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista21ELETNAP: TBCDField
      FieldName = 'ELETNAP'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista21ELET_TGYAR: TBCDField
      FieldName = 'ELET_TGYAR'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista21TOM205: TBCDField
      FieldName = 'TOM205'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarLista21SV: TBCDField
      FieldName = 'SV'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object dtsZarLista21: TfrxDBDataset
    UserName = 'frxDBZarLista21'
    CloseDataSource = True
    FieldAliases.Strings = (
      'BORJU_IVAR=BORJU_IVAR'
      'IVARDB=IVARDB'
      'VEMH_NAP_DB=VEMH_NAP_DB'
      'KONNYU_ELLES=KONNYU_ELLES'
      'SZARVATLAN=SZARVATLAN'
      'SZUL_TOMEG=SZUL_TOMEG'
      'VALASZTOTT_DB=VALASZTOTT_DB'
      'VALTOM=VALTOM'
      'ELETNAP=ELETNAP'
      'ELET_TGYAR=ELET_TGYAR'
      'TOM205=TOM205'
      'SV=SV')
    DataSet = sdsZarLista21
    Left = 104
    Top = 276
  end
  object sdsZarM: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select TRUNC(K.BIRDAT,'#39'yyyy'#39') as EV , '#13#10'cast(COUNT(1) as numeric' +
      ') as DB,'#13#10'CAST(SUM(K.FARMAG) AS NUMERIC(6,1)) AS FARMAG,'#13#10'CAST(S' +
      'UM(K.FARSZEL) AS NUMERIC(6,1)) AS FARSZEL,'#13#10'CAST(SUM(K.FARLEJT) ' +
      'AS NUMERIC(6,1)) AS FARLEJT, CAST(SUM(K.HATSOLAB) AS NUMERIC(6,1' +
      ')) AS HATSOLAB,'#13#10'CAST(SUM(K.CSUD) AS NUMERIC(6,1)) AS CSUD,'#13#10'CAS' +
      'T(SUM(K.TIPUS) AS NUMERIC(6,1)) AS TIPUS,'#13#10'CAST(SUM(K.COMBIZOM) ' +
      'AS NUMERIC(6,1)) AS COMBIZOM, CAST(SUM(K.LAPIZOM) AS NUMERIC(6,1' +
      ')) AS LAPIZOM,'#13#10'CAST(SUM(K.TORZSHOSSZ) AS NUMERIC(6,1)) AS TORZS' +
      'HOSSZ,'#13#10'CAST(SUM(K.FARHOSSZ) AS NUMERIC(6,1)) AS FARHOSSZ,'#13#10'CAST' +
      '(SUM(K.TORZSMELY) AS NUMERIC(6,1)) AS TORZSMELY,'#13#10'CAST(SUM(K.TOG' +
      'YMELY) AS NUMERIC(6,1)) AS TOGYMELY,'#13#10'CAST(SUM(K.BIMBO) AS NUMER' +
      'IC(6,1)) AS BIMBO,'#13#10'CAST(SUM(K.IZOM) AS NUMERIC(6,1)) AS IZOM,'#13#10 +
      'CAST(SUM(K.LAB) AS NUMERIC(6,1)) AS LAB'#13#10'from EGYEDEK E  '#13#10'join ' +
      'KULLEM K on E.ENAR = K.ENAR  '#13#10'where E.TENYESZET = '#39'0515225'#39'   '#13 +
      #10'and ((E.KIKDAT is null) or (E.KIKDAT > TO_DATE('#39'2007.12.31'#39','#39'yy' +
      'yy.mm.dd'#39')))    '#13#10'and exists (select 1 from ELLESEK where ELLESE' +
      'K.EGYED_ID = E.id '#13#10'and ELLESEK.ELLES_DATUM <= TO_DATE('#39'2007.12.' +
      '31'#39','#39'yyyy.mm.dd'#39'))    '#13#10'and K.BIRDAT between TO_DATE('#39'2007.01.01' +
      #39','#39'yyyy.mm.dd'#39') and TO_DATE('#39'2007.12.31'#39','#39'yyyy.mm.dd'#39')  '#13#10'GROUP ' +
      'BY TRUNC(K.BIRDAT,'#39'yyyy'#39')'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select TRUNC(K.BIRDAT,'#39'yyyy'#39') as EV , '#13#10'cast(COUNT(1) as numeric' +
      ') as DB,'#13#10'CAST(SUM(K.FARMAG) AS NUMERIC(6,1)) AS FARMAG,'#13#10'CAST(S' +
      'UM(K.FARSZEL) AS NUMERIC(6,1)) AS FARSZEL,'#13#10'CAST(SUM(K.FARLEJT) ' +
      'AS NUMERIC(6,1)) AS FARLEJT, CAST(SUM(K.HATSOLAB) AS NUMERIC(6,1' +
      ')) AS HATSOLAB,'#13#10'CAST(SUM(K.CSUD) AS NUMERIC(6,1)) AS CSUD,'#13#10'CAS' +
      'T(SUM(K.TIPUS) AS NUMERIC(6,1)) AS TIPUS,'#13#10'CAST(SUM(K.COMBIZOM) ' +
      'AS NUMERIC(6,1)) AS COMBIZOM, CAST(SUM(K.LAPIZOM) AS NUMERIC(6,1' +
      ')) AS LAPIZOM,'#13#10'CAST(SUM(K.TORZSHOSSZ) AS NUMERIC(6,1)) AS TORZS' +
      'HOSSZ,'#13#10'CAST(SUM(K.FARHOSSZ) AS NUMERIC(6,1)) AS FARHOSSZ,'#13#10'CAST' +
      '(SUM(K.TORZSMELY) AS NUMERIC(6,1)) AS TORZSMELY,'#13#10'CAST(SUM(K.TOG' +
      'YMELY) AS NUMERIC(6,1)) AS TOGYMELY,'#13#10'CAST(SUM(K.BIMBO) AS NUMER' +
      'IC(6,1)) AS BIMBO,'#13#10'CAST(SUM(K.IZOM) AS NUMERIC(6,1)) AS IZOM,'#13#10 +
      'CAST(SUM(K.LAB) AS NUMERIC(6,1)) AS LAB'#13#10'from EGYEDEK E  '#13#10'join ' +
      'KULLEM K on E.ENAR = K.ENAR  '#13#10'where E.TENYESZET = '#39'0515225'#39'   '#13 +
      #10'and ((E.KIKDAT is null) or (E.KIKDAT > TO_DATE('#39'2007.12.31'#39','#39'yy' +
      'yy.mm.dd'#39')))    '#13#10'and exists (select 1 from ELLESEK where ELLESE' +
      'K.EGYED_ID = E.id '#13#10'and ELLESEK.ELLES_DATUM <= TO_DATE('#39'2007.12.' +
      '31'#39','#39'yyyy.mm.dd'#39'))    '#13#10'and K.BIRDAT between TO_DATE('#39'2007.01.01' +
      #39','#39'yyyy.mm.dd'#39') and TO_DATE('#39'2007.12.31'#39','#39'yyyy.mm.dd'#39')  '#13#10'GROUP ' +
      'BY TRUNC(K.BIRDAT,'#39'yyyy'#39')'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 32
    Top = 376
    object sdsZarMEV: TDateTimeField
      FieldName = 'EV'
      ReadOnly = True
    end
    object sdsZarMDB: TBCDField
      FieldName = 'DB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsZarMFARMAG: TBCDField
      FieldName = 'FARMAG'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMFARSZEL: TBCDField
      FieldName = 'FARSZEL'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMFARLEJT: TBCDField
      FieldName = 'FARLEJT'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMHATSOLAB: TBCDField
      FieldName = 'HATSOLAB'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMCSUD: TBCDField
      FieldName = 'CSUD'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMTIPUS: TBCDField
      FieldName = 'TIPUS'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMCOMBIZOM: TBCDField
      FieldName = 'COMBIZOM'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMLAPIZOM: TBCDField
      FieldName = 'LAPIZOM'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMTORZSHOSSZ: TBCDField
      FieldName = 'TORZSHOSSZ'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMFARHOSSZ: TBCDField
      FieldName = 'FARHOSSZ'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMTORZSMELY: TBCDField
      FieldName = 'TORZSMELY'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMTOGYMELY: TBCDField
      FieldName = 'TOGYMELY'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMBIMBO: TBCDField
      FieldName = 'BIMBO'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMIZOM: TBCDField
      FieldName = 'IZOM'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
    object sdsZarMLAB: TBCDField
      FieldName = 'LAB'
      ReadOnly = True
      Precision = 6
      Size = 1
    end
  end
  object frxDBZarm: TfrxDBDataset
    UserName = 'frxDBZarM'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EV=EV'
      'DB=DB'
      'FARMAG=FARMAG'
      'FARSZEL=FARSZEL'
      'FARLEJT=FARLEJT'
      'HATSOLAB=HATSOLAB'
      'CSUD=CSUD'
      'TIPUS=TIPUS'
      'COMBIZOM=COMBIZOM'
      'LAPIZOM=LAPIZOM'
      'TORZSHOSSZ=TORZSHOSSZ'
      'FARHOSSZ=FARHOSSZ'
      'TORZSMELY=TORZSMELY'
      'TOGYMELY=TOGYMELY'
      'BIMBO=BIMBO'
      'IZOM=IZOM'
      'LAB=LAB')
    DataSet = sdsZarM
    Left = 112
    Top = 376
  end
  object sdsBikas: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT TERMEKENYITESEK.KPLSZ, APA.NEV, APA.FKOD, FAJTA.FNEV, BOR' +
      'JAK.BORJU_IVAR, cast(COUNT(1) as numeric) as IVARDB,  cast(DECOD' +
      'E(SUM( case when E1.E_TERM_DAT is null then 0 else 1 end) ,0,0, ' +
      'SUM( coalesce( E1.ELLES_DATUM - E1.E_TERM_DAT ,0)) /  sum( case ' +
      'when e1.e_term_dat is null then 0 else 1 end)) as numeric) as ve' +
      'mh_nap_db, cast(100*SUM( CASE WHEN E1.ELLES_LEF IN ('#39'1'#39','#39'2'#39') THE' +
      'N 1 ELSE 0 END) / COUNT(1) as numeric(10,2)) AS KONNYU_ELLES,  c' +
      'ast(100*SUM( CASE WHEN BORJAK.SZARVALTSAG='#39'1'#39' THEN 0 ELSE 1 END)' +
      ' / COUNT(1) as numeric(10,2)) AS SZARVATLAN,  cast(SUM( COALESCE' +
      ' (BORJAK.BORJU_SULY,0)) / COUNT(1) as numeric) AS SZUL_TOMEG,  c' +
      'ast(SUM( case when EGYEDEK.id is not null then 1 else 0 end) as ' +
      'numeric) as VALASZTOTT_DB,  cast(DECODE(SUM( case when EGYEDEK.i' +
      'd is not null then 1 else 0 end),0,0,    sum( coalesce(egyedek.v' +
      'altom,0)) / sum( case when egyedek.id is not null then 1 else 0 ' +
      'end)) as numeric) as valtom,  cast(DECODE(SUM( case when EGYEDEK' +
      '.id is not null then 1 else 0 end),0,0,   SUM( case when coalesc' +
      'e(EGYEDEK.VALDAT - EGYEDEK.SZULDAT,0) <= 0 then 0 else   coalesc' +
      'e(egyedek.valdat - egyedek.szuldat,0) end) / sum( case when egye' +
      'dek.id is not null then 1 else 0 end)) as numeric) as eletnap,  ' +
      'cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 ' +
      'end),0,0,    SUM( cast(TOMGYAR(0, EGYEDEK.VALTOM,EGYEDEK.SZULDAT' +
      ', EGYEDEK.VALDAT ) as float)) / SUM( case when EGYEDEK.id is not' +
      ' null then 1 else 0 end)) as numeric) as ELET_TGYAR,  cast(DECOD' +
      'E(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
      '   SUM( coalesce( EGYEDEK.VALTOM,0)) / SUM( case when EGYEDEK.id' +
      ' is not null then 1 else 0 end)) as numeric) as VALTOM,  cast(DE' +
      'CODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,' +
      '0,    SUM( coalesce(EGYEDEK.TOM205,0)) / SUM( case when EGYEDEK.' +
      'id is not null then 1 else 0 end)) as numeric) as TOM205,  cast(' +
      'DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),' +
      '0,0,    SUM( EGYEDEK.SV) / SUM( case when EGYEDEK.id is not null' +
      ' then 1 else 0 end)) as numeric) as SV   FROM BORJAK  join elles' +
      'ek e1 on e1.id = borjak.ellesek_id  left join egyedek on trim(eg' +
      'yedek.enar) = borjak.borju_enar and egyedek.valdat between to_da' +
      'te('#39'2010.01.01'#39','#39'YYYY.MM.DD'#39') and to_date('#39'2010.12.31'#39','#39'YYYY.MM.' +
      'DD'#39')  LEFT JOIN TERMEKENYITESEK ON TERMEKENYITESEK.ID = E1.E_TER' +
      'M_ID  LEFT JOIN APA ON APA.KPLSZ = TERMEKENYITESEK.KPLSZ  LEFT J' +
      'OIN FAJTA ON FAJTA.FKOD = APA.FKOD  WHERE E1.TENYESZET = '#39'051522' +
      '5'#39'   AND BORJAK.BORJU_KIESES_KOD = '#39'0'#39' AND BORJAK.BORJU_IVAR IN ' +
      '('#39'1'#39','#39'2'#39')    AND E1.ELLES_DATUM BETWEEN TO_DATE('#39'2010.01.01'#39','#39'YY' +
      'YY.MM.DD'#39') AND TO_DATE('#39'2010.12.31'#39','#39'YYYY.MM.DD'#39')  GROUP BY TERM' +
      'EKENYITESEK.KPLSZ, APA.NEV, APA.FKOD, FAJTA.FNEV, BORJAK.BORJU_I' +
      'VAR'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT TERMEKENYITESEK.KPLSZ, APA.NEV, APA.FKOD, FAJTA.FNEV, BOR' +
      'JAK.BORJU_IVAR, cast(COUNT(1) as numeric) as IVARDB,  cast(DECOD' +
      'E(SUM( case when E1.E_TERM_DAT is null then 0 else 1 end) ,0,0, ' +
      'SUM( coalesce( E1.ELLES_DATUM - E1.E_TERM_DAT ,0)) /  sum( case ' +
      'when e1.e_term_dat is null then 0 else 1 end)) as numeric) as ve' +
      'mh_nap_db, cast(100*SUM( CASE WHEN E1.ELLES_LEF IN ('#39'1'#39','#39'2'#39') THE' +
      'N 1 ELSE 0 END) / COUNT(1) as numeric(10,2)) AS KONNYU_ELLES,  c' +
      'ast(100*SUM( CASE WHEN BORJAK.SZARVALTSAG='#39'1'#39' THEN 0 ELSE 1 END)' +
      ' / COUNT(1) as numeric(10,2)) AS SZARVATLAN,  cast(SUM( COALESCE' +
      ' (BORJAK.BORJU_SULY,0)) / COUNT(1) as numeric) AS SZUL_TOMEG,  c' +
      'ast(SUM( case when EGYEDEK.id is not null then 1 else 0 end) as ' +
      'numeric) as VALASZTOTT_DB,  cast(DECODE(SUM( case when EGYEDEK.i' +
      'd is not null then 1 else 0 end),0,0,    sum( coalesce(egyedek.v' +
      'altom,0)) / sum( case when egyedek.id is not null then 1 else 0 ' +
      'end)) as numeric) as valtom,  cast(DECODE(SUM( case when EGYEDEK' +
      '.id is not null then 1 else 0 end),0,0,   SUM( case when coalesc' +
      'e(EGYEDEK.VALDAT - EGYEDEK.SZULDAT,0) <= 0 then 0 else   coalesc' +
      'e(egyedek.valdat - egyedek.szuldat,0) end) / sum( case when egye' +
      'dek.id is not null then 1 else 0 end)) as numeric) as eletnap,  ' +
      'cast(DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 ' +
      'end),0,0,    SUM( cast(TOMGYAR(0, EGYEDEK.VALTOM,EGYEDEK.SZULDAT' +
      ', EGYEDEK.VALDAT ) as float)) / SUM( case when EGYEDEK.id is not' +
      ' null then 1 else 0 end)) as numeric) as ELET_TGYAR,  cast(DECOD' +
      'E(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,0, ' +
      '   SUM( coalesce( EGYEDEK.VALTOM,0)) / SUM( case when EGYEDEK.id' +
      ' is not null then 1 else 0 end)) as numeric) as VALTOM,  cast(DE' +
      'CODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),0,' +
      '0,    SUM( coalesce(EGYEDEK.TOM205,0)) / SUM( case when EGYEDEK.' +
      'id is not null then 1 else 0 end)) as numeric) as TOM205,  cast(' +
      'DECODE(SUM( case when EGYEDEK.id is not null then 1 else 0 end),' +
      '0,0,    SUM( EGYEDEK.SV) / SUM( case when EGYEDEK.id is not null' +
      ' then 1 else 0 end)) as numeric) as SV   FROM BORJAK  join elles' +
      'ek e1 on e1.id = borjak.ellesek_id  left join egyedek on trim(eg' +
      'yedek.enar) = borjak.borju_enar and egyedek.valdat between to_da' +
      'te('#39'2010.01.01'#39','#39'YYYY.MM.DD'#39') and to_date('#39'2010.12.31'#39','#39'YYYY.MM.' +
      'DD'#39')  LEFT JOIN TERMEKENYITESEK ON TERMEKENYITESEK.ID = E1.E_TER' +
      'M_ID  LEFT JOIN APA ON APA.KPLSZ = TERMEKENYITESEK.KPLSZ  LEFT J' +
      'OIN FAJTA ON FAJTA.FKOD = APA.FKOD  WHERE E1.TENYESZET = '#39'051522' +
      '5'#39'   AND BORJAK.BORJU_KIESES_KOD = '#39'0'#39' AND BORJAK.BORJU_IVAR IN ' +
      '('#39'1'#39','#39'2'#39')    AND E1.ELLES_DATUM BETWEEN TO_DATE('#39'2010.01.01'#39','#39'YY' +
      'YY.MM.DD'#39') AND TO_DATE('#39'2010.12.31'#39','#39'YYYY.MM.DD'#39')  GROUP BY TERM' +
      'EKENYITESEK.KPLSZ, APA.NEV, APA.FKOD, FAJTA.FNEV, BORJAK.BORJU_I' +
      'VAR'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 192
    Top = 376
    object sdsBikasKPLSZ: TWideStringField
      FieldName = 'KPLSZ'
      Size = 5
    end
    object sdsBikasNEV: TWideStringField
      FieldName = 'NEV'
      Size = 40
    end
    object sdsBikasFKOD: TWideStringField
      FieldName = 'FKOD'
      Size = 10
    end
    object sdsBikasFNEV: TWideStringField
      FieldName = 'FNEV'
      Size = 40
    end
    object sdsBikasBORJU_IVAR: TWideStringField
      FieldName = 'BORJU_IVAR'
      Size = 10
    end
    object sdsBikasIVARDB: TBCDField
      FieldName = 'IVARDB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsBikasVEMH_NAP_DB: TBCDField
      FieldName = 'VEMH_NAP_DB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsBikasKONNYU_ELLES: TBCDField
      FieldName = 'KONNYU_ELLES'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object sdsBikasSZARVATLAN: TBCDField
      FieldName = 'SZARVATLAN'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object sdsBikasSZUL_TOMEG: TBCDField
      FieldName = 'SZUL_TOMEG'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsBikasVALASZTOTT_DB: TBCDField
      FieldName = 'VALASZTOTT_DB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsBikasVALTOM: TBCDField
      FieldName = 'VALTOM'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsBikasELETNAP: TBCDField
      FieldName = 'ELETNAP'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsBikasELET_TGYAR: TBCDField
      FieldName = 'ELET_TGYAR'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsBikasVALTOM_1: TBCDField
      FieldName = 'VALTOM_1'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsBikasTOM205: TBCDField
      FieldName = 'TOM205'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsBikasSV: TBCDField
      FieldName = 'SV'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object frxDBBikas: TfrxDBDataset
    UserName = 'frxDBBikas'
    CloseDataSource = True
    FieldAliases.Strings = (
      'KPLSZ=KPLSZ'
      'NEV=NEV'
      'FKOD=FKOD'
      'FNEV=FNEV'
      'BORJU_IVAR=BORJU_IVAR'
      'IVARDB=IVARDB'
      'VEMH_NAP_DB=VEMH_NAP_DB'
      'KONNYU_ELLES=KONNYU_ELLES'
      'SZARVATLAN=SZARVATLAN'
      'SZUL_TOMEG=SZUL_TOMEG'
      'VALASZTOTT_DB=VALASZTOTT_DB'
      'VALTOM=VALTOM'
      'ELETNAP=ELETNAP'
      'ELET_TGYAR=ELET_TGYAR'
      'VALTOM_1=VALTOM_1'
      'TOM205=TOM205'
      'SV=SV')
    DataSet = sdsBikas
    Left = 264
    Top = 376
  end
  object sdsElitLista: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 'select * from elit'#13#10'order by enar;'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 'select * from elit'#13#10'order by enar;'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 192
    Top = 263
    object sdsElitListaENAR: TWideStringField
      FieldName = 'ENAR'
    end
    object sdsElitListaTEHENSZAM: TWideStringField
      FieldName = 'TEHENSZAM'
    end
    object sdsElitListaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsElitListaAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
    end
    object sdsElitListaELLESSZ: TIntegerField
      FieldName = 'ELLESSZ'
    end
    object sdsElitListaBORJU_DB: TIntegerField
      FieldName = 'BORJU_DB'
    end
    object sdsElitListaVAL_TOM: TIntegerField
      FieldName = 'VAL_TOM'
    end
    object sdsElitListaATL_TOM: TIntegerField
      FieldName = 'ATL_TOM'
    end
    object sdsElitListaTOM205: TIntegerField
      FieldName = 'TOM205'
    end
    object sdsElitListaATL_TOM205: TIntegerField
      FieldName = 'ATL_TOM205'
    end
    object sdsElitListaKIKDAT: TDateTimeField
      FieldName = 'KIKDAT'
    end
  end
  object frxDBDElitLista: TfrxDBDataset
    UserName = 'frxDBDElitLista'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'TEHENSZAM=TEHENSZAM'
      'SZULDAT=SZULDAT'
      'APAKLSZ=APAKLSZ'
      'ELLESSZ=ELLESSZ'
      'BORJU_DB=BORJU_DB'
      'VAL_TOM=VAL_TOM'
      'ATL_TOM=ATL_TOM'
      'TOM205=TOM205'
      'ATL_TOM205=ATL_TOM205'
      'KIKDAT=KIKDAT')
    DataSet = sdsElitLista
    Left = 264
    Top = 263
  end
  object sdsBikNevLista: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select ANYA.ENAR, ANYA.TEHENSZAM,'#13#10'ANYA.SZULDAT,ANYA.APAKLSZ,ANY' +
      'A.ANYA_ENAR,'#13#10'cast((case when ANYA.VER1 = '#39'1'#39' then ANYA.VSZ1'#13#10'wh' +
      'en ANYA.VER2 = '#39'1'#39' then ANYA.VSZ2'#13#10'when ANYA.VER3 = '#39'1'#39' then ANY' +
      'A.VSZ3'#13#10'when ANYA.VER4 = '#39'1'#39' then ANYA.VSZ4 end) as numeric(6,2)' +
      ') as verh,'#13#10'ANYA.KKOD,ANYA.SZIN, ANYA.TKV,'#13#10'ANYA.MLEVEL1, ANYA.M' +
      'LEVEL2,'#13#10'ANYA.MIN'#13#10'from EGYEDEK ANYA'#13#10'where ANYA.IVAR = '#39'2'#39' and ' +
      'anya.min > 0'#13#10'and exists(select 1 from ellesek where ELLESEK.EGY' +
      'ED_ID = anya.id)'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'select ANYA.ENAR, ANYA.TEHENSZAM,'#13#10'ANYA.SZULDAT,ANYA.APAKLSZ,ANY' +
      'A.ANYA_ENAR,'#13#10'cast((case when ANYA.VER1 = '#39'1'#39' then ANYA.VSZ1'#13#10'wh' +
      'en ANYA.VER2 = '#39'1'#39' then ANYA.VSZ2'#13#10'when ANYA.VER3 = '#39'1'#39' then ANY' +
      'A.VSZ3'#13#10'when ANYA.VER4 = '#39'1'#39' then ANYA.VSZ4 end) as numeric(6,2)' +
      ') as verh,'#13#10'ANYA.KKOD,ANYA.SZIN, ANYA.TKV,'#13#10'ANYA.MLEVEL1, ANYA.M' +
      'LEVEL2,'#13#10'ANYA.MIN'#13#10'from EGYEDEK ANYA'#13#10'where ANYA.IVAR = '#39'2'#39' and ' +
      'anya.min > 0'#13#10'and exists(select 1 from ellesek where ELLESEK.EGY' +
      'ED_ID = anya.id)'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 192
    Top = 311
    object sdsBikNevListaENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsBikNevListaTEHENSZAM: TWideStringField
      FieldName = 'TEHENSZAM'
      Size = 15
    end
    object sdsBikNevListaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsBikNevListaAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
      Size = 10
    end
    object sdsBikNevListaANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 10
    end
    object sdsBikNevListaVERH: TBCDField
      FieldName = 'VERH'
      ReadOnly = True
      Precision = 6
      Size = 2
    end
    object sdsBikNevListaKKOD: TWideStringField
      FieldName = 'KKOD'
      Size = 3
    end
    object sdsBikNevListaSZIN: TWideStringField
      FieldName = 'SZIN'
      Size = 1
    end
    object sdsBikNevListaTKV: TWideStringField
      FieldName = 'TKV'
      Size = 1
    end
    object sdsBikNevListaMLEVEL1: TWideStringField
      FieldName = 'MLEVEL1'
      Size = 7
    end
    object sdsBikNevListaMLEVEL2: TWideStringField
      FieldName = 'MLEVEL2'
      Size = 7
    end
    object sdsBikNevListaMIN: TBCDField
      FieldName = 'MIN'
      Precision = 6
      Size = 2
    end
  end
  object frxDBBikNev: TfrxDBDataset
    UserName = 'frxDBBikNev'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'TEHENSZAM=TEHENSZAM'
      'SZULDAT=SZULDAT'
      'APAKLSZ=APAKLSZ'
      'ANYA_ENAR=ANYA_ENAR'
      'VERH=VERH'
      'KKOD=KKOD'
      'SZIN=SZIN'
      'TKV=TKV'
      'MLEVEL1=MLEVEL1'
      'MLEVEL2=MLEVEL2'
      'MIN=MIN')
    DataSet = sdsBikNevLista
    Left = 272
    Top = 311
  end
end
