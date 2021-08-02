object dtmTarka: TdtmTarka
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 717
  Top = 374
  Height = 558
  Width = 798
  object cnTarka: TTalConnection
    Connected = True
    ConnectionString = 
      'Provider=OraOLEDB.Oracle.1;Password=tarka;Persist Security Info=' +
      'True;User ID=tarka;Data Source=localhost/xe;Extended Properties=' +
      '""'
    LoginPrompt = False
    Provider = 'OraOLEDB.Oracle.1'
    Left = 24
    Top = 12
  end
  object SaveDialog: TSaveDialog
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Left = 84
    Top = 12
  end
  object mxExcel: TmxDataSetExport
    DateFormat = 'yyyy.MM.dd.'
    TimeFormat = 'h:mm'
    DateTimeFormat = 'h:mm yyyy.MM.dd.'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DataSet'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    Left = 144
    Top = 12
  end
  object sdsTenyeszet: TTalSimpleDataSet
    Aggregates = <>
    Connection = cnTarka
    DataSet.Connection = cnTarka
    DataSet.CommandText = 
      'SELECT DISTINCT T.TKOD || '#39' - '#39' || T.TNEV2 AS LISTA, T.TKOD, T.T' +
      'NEV2, T.RKOD from TENY T'#13#10'ORDER BY 1'
    DataSet.FieldDefs = <
      item
        Name = 'LISTA'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 88
      end
      item
        Name = 'TKOD'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'TNEV2'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 78
      end
      item
        Name = 'RKOD'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 7
      end>
    DataSet.Parameters = <>
    DataSet.StoreDefs = True
    Provider.DataSet.Connection = cnTarka
    Provider.DataSet.CommandText = 
      'SELECT DISTINCT T.TKOD || '#39' - '#39' || T.TNEV2 AS LISTA, T.TKOD, T.T' +
      'NEV2, T.RKOD from TENY T'#13#10'ORDER BY 1'
    Provider.DataSet.FieldDefs = <
      item
        Name = 'LISTA'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 88
      end
      item
        Name = 'TKOD'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'TNEV2'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 78
      end
      item
        Name = 'RKOD'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 7
      end>
    Provider.DataSet.Parameters = <>
    Provider.DataSet.StoreDefs = True
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    FieldDefs = <
      item
        Name = 'LISTA'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 88
      end
      item
        Name = 'TKOD'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'TNEV2'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 78
      end
      item
        Name = 'RKOD'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 7
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 224
    Top = 16
    object sdsTenyeszetLISTA: TWideStringField
      FieldName = 'LISTA'
      ReadOnly = True
      Size = 88
    end
    object sdsTenyeszetTKOD: TWideStringField
      FieldName = 'TKOD'
      ReadOnly = True
      Size = 7
    end
    object sdsTenyeszetTNEV2: TWideStringField
      FieldName = 'TNEV2'
      ReadOnly = True
      Size = 78
    end
    object sdsTenyeszetRKOD: TWideStringField
      FieldName = 'RKOD'
      ReadOnly = True
      Size = 7
    end
  end
  object dtsTenyeszet: TDataSource
    DataSet = sdsTenyeszet
    Left = 296
    Top = 16
  end
  object qryIvar: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select'
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'IVAR'#39)
    Left = 24
    Top = 120
    object qryIvarKOD: TWideStringField
      Tag = -1
      FieldName = 'KOD'
      Size = 10
    end
    object qryIvarKOD_NEV: TWideStringField
      Tag = -1
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object qryStatus: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select kp.KOD,'
      'kp.NEV'
      'from korcsop_par kp'
      'where ervenyes=1')
    Left = 24
    Top = 168
    object qryStatusKOD: TWideStringField
      FieldName = 'KOD'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qryStatusNEV: TWideStringField
      FieldName = 'NEV'
      ProviderFlags = []
      Size = 80
    end
  end
  object qryTermCsop: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'SELECT tc.KOD, '
      'tc.KOD + '#39' - '#39' + tc.NEV as NEV'
      'from TERMELESI_CSOPORT tc'
      'where tc.ERVENYES=1')
    Left = 24
    Top = 216
    object qryTermCsopKOD: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object qryTermCsopNEV: TWideStringField
      FieldName = 'NEV'
      Size = 80
    end
  end
  object qryKiesesOk: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'KIOK'#39
      '')
    Left = 24
    Top = 264
    object qryKiesesOkKOD: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object qryKiesesOkKOD_NEV: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object qryKiesesKod: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'KIKOD'#39
      '')
    Left = 24
    Top = 312
    object qryKiesesKodKOD: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object qryKiesesKodKOD_NEV: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object qryKonstr: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'KONSTR'#39
      '')
    Left = 24
    Top = 360
    object StringField3: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField4: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object qryInfElles: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    Connection = cnTarka
    DataSet.Connection = cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'  e.ELLES_DATUM,'#13#10'  kodok.kod || '#39' - '#39' || kodok.KOD_NEV ' +
      'as KOD_NEV,'#13#10'  case'#13#10'    when ke.ID  is null then'#13#10'      CURRENT' +
      '_TIMESTAMP'#13#10'    else'#13#10'     ke.ELLES_DATUM'#13#10'  end  AS VegDatum'#13#10'f' +
      'rom ELLESEK e'#13#10'left join KODOK on kodok.KODTIPUSOK_TIPUSKOD='#39'ELL' +
      '_LEF'#39' and kodok.KOD=e.ELLES_LEF'#13#10'left join ellesek ke on ke.ID =' +
      ' KOV_ELLES_ID(e.EGYED_ID, e.ELLES_DATUM)'#13#10'where e.EGYED_ID = :ID' +
      #13#10' ORDER BY 1'
    DataSet.Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = '0'
      end>
    Provider.DataSet.Connection = cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  e.ELLES_DATUM,'#13#10'  kodok.kod || '#39' - '#39' || kodok.KOD_NEV ' +
      'as KOD_NEV,'#13#10'  case'#13#10'    when ke.ID  is null then'#13#10'      CURRENT' +
      '_TIMESTAMP'#13#10'    else'#13#10'     ke.ELLES_DATUM'#13#10'  end  AS VegDatum'#13#10'f' +
      'rom ELLESEK e'#13#10'left join KODOK on kodok.KODTIPUSOK_TIPUSKOD='#39'ELL' +
      '_LEF'#39' and kodok.KOD=e.ELLES_LEF'#13#10'left join ellesek ke on ke.ID =' +
      ' KOV_ELLES_ID(e.EGYED_ID, e.ELLES_DATUM)'#13#10'where e.EGYED_ID = :ID' +
      #13#10' ORDER BY 1'
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = '0'
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 200
    Top = 72
    object qryInfEllesELLES_DATUM: TDateTimeField
      Tag = -1
      DisplayLabel = 'Ell'#233's d'#225'tum'
      DisplayWidth = 10
      FieldName = 'ELLES_DATUM'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryInfEllesKOD_NEV: TWideStringField
      Tag = -1
      DisplayLabel = 'Ell'#233's lefoly'#225'sa'
      DisplayWidth = 24
      FieldName = 'KOD_NEV'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qryInfEllesVegDatum: TDateTimeField
      Tag = -1
      FieldName = 'VegDatum'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object qryInfTerm: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    Connection = cnTarka
    DataSet.Connection = cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'  t.DATUM,'#13#10'  APA.KPLSZ,'#13#10'  kodok.KOD || '#39' - '#39' || kodok.' +
      'KOD_NEV as KOD_NEV'#13#10'from TERMEKENYITESEK t'#13#10'left join KODOK on k' +
      'odok.KODTIPUSOK_TIPUSKOD='#39'VEMHKOD'#39' and kodok.KOD=t.ALLAPOT'#13#10'left' +
      ' join APA on APA.KPLSZ=t.KPLSZ'#13#10'where t.EGYED_ID = :ID AND'#13#10'   T' +
      '.DATUM BETWEEN to_date(:DATUMTOL,'#39'yyyy.mm.dd'#39') AND (SELECT KOV_E' +
      'LLES_DATUM(:ID, to_date(:DATUMTOL1,'#39'yyyy.mm.dd'#39')) from dual)'#13#10#13#10 +
      '/*Programban v'#225'ltozik!!*/'#13#10
    DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DATUMTOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DATUMTOL1'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Provider.DataSet.Connection = cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  t.DATUM,'#13#10'  APA.KPLSZ,'#13#10'  kodok.KOD || '#39' - '#39' || kodok.' +
      'KOD_NEV as KOD_NEV'#13#10'from TERMEKENYITESEK t'#13#10'left join KODOK on k' +
      'odok.KODTIPUSOK_TIPUSKOD='#39'VEMHKOD'#39' and kodok.KOD=t.ALLAPOT'#13#10'left' +
      ' join APA on APA.KPLSZ=t.KPLSZ'#13#10'where t.EGYED_ID = :ID AND'#13#10'   T' +
      '.DATUM BETWEEN to_date(:DATUMTOL,'#39'yyyy.mm.dd'#39') AND (SELECT KOV_E' +
      'LLES_DATUM(:ID, to_date(:DATUMTOL1,'#39'yyyy.mm.dd'#39')) from dual)'#13#10#13#10 +
      '/*Programban v'#225'ltozik!!*/'#13#10
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DATUMTOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DATUMTOL1'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 200
    Top = 120
    object qryInfTermDATUM: TDateTimeField
      DisplayLabel = 'D'#225'tum'
      DisplayWidth = 12
      FieldName = 'DATUM'
    end
    object qryInfTermKPLSZ: TWideStringField
      DisplayLabel = 'Apa KPLSZ'
      DisplayWidth = 8
      FieldName = 'KPLSZ'
      Size = 5
    end
    object qryInfTermKOD_NEV: TWideStringField
      Tag = -1
      DisplayLabel = #193'llapot'
      DisplayWidth = 15
      FieldName = 'KOD_NEV'
      ProviderFlags = []
      Size = 30
    end
  end
  object qryInfMeres: TTalSimpleDataSet
    Aggregates = <>
    Connection = cnTarka
    DataSet.Connection = cnTarka
    DataSet.CommandText = 
      'SELECT kodok.kod_nev, TOMEGEK.DATUM, TOMEGEK.TOMEG '#13#10'FROM TOMEGE' +
      'K '#13#10'left join kodok on kodok.kod = tomegek.meres_tipus and kodok' +
      '.kodtipusok_tipuskod = '#39'MERESTPS'#39#13#10'WHERE '#13#10'EGYED_ID = :ID'
    DataSet.Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = '0'
      end>
    Provider.DataSet.Connection = cnTarka
    Provider.DataSet.CommandText = 
      'SELECT kodok.kod_nev, TOMEGEK.DATUM, TOMEGEK.TOMEG '#13#10'FROM TOMEGE' +
      'K '#13#10'left join kodok on kodok.kod = tomegek.meres_tipus and kodok' +
      '.kodtipusok_tipuskod = '#39'MERESTPS'#39#13#10'WHERE '#13#10'EGYED_ID = :ID'
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = '0'
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 200
    Top = 168
    object qryInfMeresKOD_NEV: TWideStringField
      DisplayLabel = 'Tipus'
      DisplayWidth = 15
      FieldName = 'KOD_NEV'
      Size = 30
    end
    object qryInfMeresDATUM: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'D'#225'tum'
      DisplayWidth = 10
      FieldName = 'DATUM'
    end
    object qryInfMeresTOMEG: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'T'#246'meg[kg]'
      DisplayWidth = 10
      FieldName = 'TOMEG'
    end
  end
  object qryInfSzin: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'SZIN'#39
      '')
    Left = 24
    Top = 408
    object StringField19: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField20: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object qryInfFajta: TTalQuery
    Connection = cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FKOD || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 24
    Top = 456
    object qryInfFajtaFKOD: TIntegerField
      FieldName = 'FKOD'
    end
    object qryInfFajtaFNEV: TWideStringField
      FieldName = 'FNEV'
      Size = 40
    end
  end
  object qryTartHely: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'TART_HELY'#39
      '')
    Left = 24
    Top = 512
    object StringField48: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField49: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object qryKikHely: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select KOD, KOD_NEV from ( '
      
        '  select kod as KOD, kod || '#39' - '#39' || kod_nev as KOD_NEV from kod' +
        'ok where kodtipusok_tipuskod = '#39'KIKHELY'#39' '
      '  union '
      
        '  select tkod as KOD, tkod || '#39' - '#39' || tnev2 as KOD_NEV from ten' +
        'y'
      ') '
      'order by kod')
    Left = 24
    Top = 568
    object StringField1: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField2: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object qryTulaj: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'T.ID,'
      'T.KOD,'
      'T.NEV'
      'FROM TULAJDONOS T'
      ''
      '')
    Left = 24
    Top = 616
    object qryTulajKOD: TWideStringField
      FieldName = 'KOD'
      Size = 50
    end
    object qryTulajNEV: TWideStringField
      FieldName = 'NEV'
      Size = 80
    end
    object qryTulajID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
  end
  object dtsKikHely: TDataSource
    DataSet = qryKikHely
    Left = 96
    Top = 568
  end
  object dtsTulaj: TDataSource
    DataSet = qryTulaj
    Left = 96
    Top = 616
  end
  object dtsInfo: TDataSource
    DataSet = sdsInfo
    Left = 96
    Top = 72
  end
  object dtsIvar: TDataSource
    DataSet = qryIvar
    Left = 96
    Top = 120
  end
  object dtsStatus: TDataSource
    DataSet = qryStatus
    Left = 96
    Top = 168
  end
  object dtsTermCsop: TDataSource
    DataSet = qryTermCsop
    Left = 96
    Top = 216
  end
  object dtsKiesesOK: TDataSource
    DataSet = qryKiesesOk
    Left = 96
    Top = 264
  end
  object dtsKiesesKod: TDataSource
    DataSet = qryKiesesKod
    Left = 96
    Top = 312
  end
  object dtsKonstr: TDataSource
    DataSet = qryKonstr
    Left = 96
    Top = 360
  end
  object dtsInfSzin: TDataSource
    DataSet = qryInfSzin
    Left = 96
    Top = 408
  end
  object dtsInfFajta: TDataSource
    DataSet = qryInfFajta
    Left = 96
    Top = 456
  end
  object dtsTartHely: TDataSource
    DataSet = qryTartHely
    Left = 96
    Top = 512
  end
  object dtsInfElles: TDataSource
    DataSet = qryInfElles
    Left = 274
    Top = 64
  end
  object dtsInfTerm: TDataSource
    DataSet = qryInfTerm
    Left = 274
    Top = 120
  end
  object dtsInfMeres: TDataSource
    DataSet = qryInfMeres
    Left = 274
    Top = 168
  end
  object qryVer1: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FKOD || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 200
    Top = 230
    object qryVer1FKOD: TSmallintField
      FieldName = 'FKOD'
    end
    object qryVer1FNEV: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsVer1: TDataSource
    DataSet = qryVer1
    Left = 274
    Top = 230
  end
  object qryVer2: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FKOD || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 200
    Top = 276
    object SmallintField1: TSmallintField
      FieldName = 'FKOD'
    end
    object StringField5: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsVer2: TDataSource
    DataSet = qryVer2
    Left = 274
    Top = 276
  end
  object qryVer3: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '   FAJTA.FKOD || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 200
    Top = 322
    object SmallintField2: TSmallintField
      FieldName = 'FKOD'
    end
    object StringField6: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsVer3: TDataSource
    DataSet = qryVer3
    Left = 274
    Top = 322
  end
  object qryVer4: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FKOD || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 200
    Top = 370
    object SmallintField3: TSmallintField
      FieldName = 'FKOD'
    end
    object StringField7: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsVer4: TDataSource
    DataSet = qryVer4
    Left = 274
    Top = 370
  end
  object sdsTomeg: TTalSimpleDataSet
    Aggregates = <>
    Connection = cnTarka
    DataSet.Connection = cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'TT.ID ,'#13#10'TT.EGYED_ID,'#13#10'EE.ENAR,'#13#10'EE.FULSZAM,'#13#10'EE.TEHENSZ' +
      'AM,'#13#10'TT.DATUM,'#13#10'TT.TOMEG,'#13#10'TT.MOD_DAT,'#13#10'TT.MOD_KOD,'#13#10'TT.MERES_TI' +
      'PUS,'#13#10'kodok.KOD_NEV as KOD_NEV,'#13#10'EE.TENYESZET'#13#10'FROM TOMEGEK TT'#13#10 +
      'JOIN EGYEDEK EE ON EE.ID = TT.EGYED_ID'#13#10'left join kodok on kodok' +
      '.KODTIPUSOK_TIPUSKOD='#39'MERESTPS'#39' and kodok.KOD=tt.MERES_TIPUS'#13#10'WH' +
      'ERE TT.EGYED_ID = :EGYED_ID'
    DataSet.Parameters = <
      item
        Name = 'EGYED_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.DataSet.Connection = cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'TT.ID ,'#13#10'TT.EGYED_ID,'#13#10'EE.ENAR,'#13#10'EE.FULSZAM,'#13#10'EE.TEHENSZ' +
      'AM,'#13#10'TT.DATUM,'#13#10'TT.TOMEG,'#13#10'TT.MOD_DAT,'#13#10'TT.MOD_KOD,'#13#10'TT.MERES_TI' +
      'PUS,'#13#10'kodok.KOD_NEV as KOD_NEV,'#13#10'EE.TENYESZET'#13#10'FROM TOMEGEK TT'#13#10 +
      'JOIN EGYEDEK EE ON EE.ID = TT.EGYED_ID'#13#10'left join kodok on kodok' +
      '.KODTIPUSOK_TIPUSKOD='#39'MERESTPS'#39' and kodok.KOD=tt.MERES_TIPUS'#13#10'WH' +
      'ERE TT.EGYED_ID = :EGYED_ID'
    Provider.DataSet.Parameters = <
      item
        Name = 'EGYED_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 200
    Top = 424
    object sdsTomegID: TBCDField
      FieldName = 'ID'
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsTomegEGYED_ID: TBCDField
      FieldName = 'EGYED_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsTomegTENYESZET: TWideStringField
      DisplayLabel = 'Teny'#233'szet'
      FieldName = 'TENYESZET'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object sdsTomegENAR: TWideStringField
      FieldName = 'ENAR'
      ProviderFlags = []
      OnGetText = sdsInfoENARGetText
      Size = 14
    end
    object sdsTomegDATUM: TDateTimeField
      DisplayLabel = 'D'#225'tum'
      FieldName = 'DATUM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTomegTOMEG: TSmallintField
      DisplayLabel = 'T'#246'meg'
      FieldName = 'TOMEG'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTomegFULSZAM: TWideStringField
      DisplayLabel = 'F'#252'lsz'#225'm'
      FieldName = 'FULSZAM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object sdsTomegTEHENSZAM: TWideStringField
      DisplayLabel = 'Teh'#233'nsz'#225'm'
      FieldName = 'TEHENSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsTomegMOD_DAT: TDateTimeField
      FieldName = 'MOD_DAT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTomegMOD_KOD: TWideStringField
      FieldName = 'MOD_KOD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsTomegMERES_TIPUS: TWideStringField
      FieldName = 'MERES_TIPUS'
      Size = 10
    end
    object sdsTomegKOD_NEV: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsTomeg: TDataSource
    DataSet = sdsTomeg
    Left = 274
    Top = 424
  end
  object qryBkiesok: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'KIOK'#39
      '')
    Left = 352
    Top = 280
    object StringField13: TWideStringField
      Tag = -1
      FieldName = 'KOD'
      Size = 10
    end
    object StringField14: TWideStringField
      Tag = -1
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsBKiesOK: TDataSource
    DataSet = qryBkiesok
    Left = 426
    Top = 280
  end
  object qryBKiesKod: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'BKIKOD'#39
      '')
    Left = 352
    Top = 624
    object StringField15: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField16: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsBKiesKod: TDataSource
    DataSet = qryBKiesKod
    Left = 424
    Top = 624
  end
  object qryBszin: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'SZIN'#39)
    Left = 352
    Top = 328
    object StringField17: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField18: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsBszin: TDataSource
    DataSet = qryBszin
    Left = 424
    Top = 328
  end
  object qryEllLef: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'ELL_LEF'#39
      '')
    Left = 352
    Top = 376
    object StringField21: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField22: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsEllLef: TDataSource
    DataSet = qryEllLef
    Left = 424
    Top = 376
  end
  object qryBIvar: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'IVAR'#39)
    Left = 200
    Top = 632
    object StringField23: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField24: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsBIvar: TDataSource
    DataSet = qryBIvar
    Left = 274
    Top = 632
  end
  object sdsEllesek: TTalSimpleDataSet
    Aggregates = <>
    Connection = cnTarka
    DataSet.Connection = cnTarka
    DataSet.CommandText = 
      ' SELECT'#13#10'E.E_TERM_ID,'#13#10'E.EGYED_ID,'#13#10'E.ELLES_DATUM,'#13#10'E.ELLES_LEF,' +
      #13#10'KODOK.KOD_NEV AS LEF_NEV,'#13#10'E.ID,'#13#10'E.TENYESZET,'#13#10'E.UTMOD_DAT,'#13#10 +
      'E.UTMOD_KOD,'#13#10'EGYEDEK.ENAR,'#13#10'EGYEDEK.FULSZAM,'#13#10'EGYEDEK.TEHENSZAM' +
      ','#13#10'E.BIKA, E.E_TERM_DAT'#13#10'FROM ELLESEK E'#13#10'LEFT JOIN KODOK ON KODO' +
      'K.KODTIPUSOK_TIPUSKOD='#39'ELL_LEF'#39' AND KODOK.KOD=E.ELLES_LEF'#13#10'JOIN ' +
      'EGYEDEK ON EGYEDEK.ID = E.EGYED_ID '#13#10'WHERE E.EGYED_ID= :ID'#13#10
    DataSet.Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.DataSet.Connection = cnTarka
    Provider.DataSet.CommandText = 
      ' SELECT'#13#10'E.E_TERM_ID,'#13#10'E.EGYED_ID,'#13#10'E.ELLES_DATUM,'#13#10'E.ELLES_LEF,' +
      #13#10'KODOK.KOD_NEV AS LEF_NEV,'#13#10'E.ID,'#13#10'E.TENYESZET,'#13#10'E.UTMOD_DAT,'#13#10 +
      'E.UTMOD_KOD,'#13#10'EGYEDEK.ENAR,'#13#10'EGYEDEK.FULSZAM,'#13#10'EGYEDEK.TEHENSZAM' +
      ','#13#10'E.BIKA, E.E_TERM_DAT'#13#10'FROM ELLESEK E'#13#10'LEFT JOIN KODOK ON KODO' +
      'K.KODTIPUSOK_TIPUSKOD='#39'ELL_LEF'#39' AND KODOK.KOD=E.ELLES_LEF'#13#10'JOIN ' +
      'EGYEDEK ON EGYEDEK.ID = E.EGYED_ID '#13#10'WHERE E.EGYED_ID= :ID'#13#10
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    PacketRecords = 500
    Params = <>
    Left = 200
    Top = 488
    object sdsEllesekENAR: TWideStringField
      FieldName = 'ENAR'
      ProviderFlags = []
      OnGetText = sdsInfoENARGetText
      Size = 14
    end
    object sdsEllesekELLES_DATUM: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Ell'#233's d'#225'tuma'
      DisplayWidth = 10
      FieldName = 'ELLES_DATUM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsEllesekFULSZAM: TWideStringField
      DisplayLabel = 'F'#252'lsz'#225'm'
      FieldName = 'FULSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsEllesekTEHENSZAM: TWideStringField
      DisplayLabel = 'Teh'#233'nsz'#225'm'
      FieldName = 'TEHENSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsEllesekLEF_NEV: TWideStringField
      DisplayLabel = 'Ell'#233's lefoly'#225'sa'
      FieldName = 'LEF_NEV'
      ProviderFlags = []
      Size = 30
    end
    object sdsEllesekEGYED_ID: TBCDField
      FieldName = 'EGYED_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsEllesekELLES_LEF: TWideStringField
      FieldName = 'ELLES_LEF'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsEllesekID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsEllesekTENYESZET: TWideStringField
      DisplayLabel = 'Teny'#233'szet'
      FieldName = 'TENYESZET'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 7
    end
    object sdsEllesekUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsEllesekUTMOD_KOD: TWideStringField
      FieldName = 'UTMOD_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 3
    end
    object sdsEllesekE_TERM_ID: TBCDField
      FieldName = 'E_TERM_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsEllesekBIKA: TWideStringField
      FieldName = 'BIKA'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 14
    end
    object sdsEllesekE_TERM_DAT: TDateTimeField
      FieldName = 'E_TERM_DAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
  end
  object dtsEllesek: TDataSource
    DataSet = sdsEllesek
    Left = 274
    Top = 480
  end
  object sdsBorjak: TTalSimpleDataSet
    Aggregates = <>
    Connection = cnTarka
    DataSet.Connection = cnTarka
    DataSet.CommandText = 
      '  SELECT'#13#10'B.ID,'#13#10'B.ELLESEK_ID,'#13#10'B.BORJU_SSZ,'#13#10'B.BORJU_ENAR,'#13#10'B.B' +
      'ORJU_IVAR,'#13#10'B.BORJU_KIESES_KOD,'#13#10'B.BORJU_KIESES_OK,'#13#10'B.BORJU_SUL' +
      'Y,'#13#10'B.BORJU_SZIN,'#13#10'B.BORJU_KONS_KOD,'#13#10'B.VER1,B.VSZ1,'#13#10'B.VER2,B.V' +
      'SZ2,'#13#10'B.VER3,B.VSZ3,'#13#10'B.VER4,B.VSZ4,'#13#10'B.UTMOD_DAT,'#13#10'B.UTMOD_KOD,' +
      #13#10'B.SZARVALTSAG,'#13#10'B.FSZ,'#13#10'B.IENAR,'#13#10'KIKOD.KOD_NEV AS KIKOD_NEV,'#13 +
      #10'KIOK.KOD_NEV AS KIOK_NEV,'#13#10'IVAR.KOD_NEV AS IVAR_NEV,'#13#10'SZIN.KOD_' +
      'NEV AS SZIN'#13#10'FROM BORJAK B'#13#10'LEFT JOIN kodok ivar ON IVAR.KODTIPU' +
      'SOK_TIPUSKOD='#39'IVAR'#39' AND IVAR.KOD=B.BORJU_IVAR'#13#10'LEFT JOIN kodok k' +
      'ikod ON KIKOD.KODTIPUSOK_TIPUSKOD='#39'KIKOD'#39' AND KIKOD.KOD=B.BORJU_' +
      'KIESES_KOD'#13#10'LEFT JOIN kodok kiok ON KIOK.KODTIPUSOK_TIPUSKOD='#39'KI' +
      'OK'#39' AND KIOK.KOD=B.BORJU_KIESES_OK'#13#10'LEFT JOIN kodok szin ON SZIN' +
      '.KODTIPUSOK_TIPUSKOD='#39'SZIN'#39' AND SZIN.KOD=B.BORJU_SZIN'#13#10'WHERE B.E' +
      'LLESEK_ID=:ELLES_ID'#13#10#13#10#13#10#13#10
    DataSet.Parameters = <
      item
        Name = 'ELLES_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.DataSet.Connection = cnTarka
    Provider.DataSet.CommandText = 
      '  SELECT'#13#10'B.ID,'#13#10'B.ELLESEK_ID,'#13#10'B.BORJU_SSZ,'#13#10'B.BORJU_ENAR,'#13#10'B.B' +
      'ORJU_IVAR,'#13#10'B.BORJU_KIESES_KOD,'#13#10'B.BORJU_KIESES_OK,'#13#10'B.BORJU_SUL' +
      'Y,'#13#10'B.BORJU_SZIN,'#13#10'B.BORJU_KONS_KOD,'#13#10'B.VER1,B.VSZ1,'#13#10'B.VER2,B.V' +
      'SZ2,'#13#10'B.VER3,B.VSZ3,'#13#10'B.VER4,B.VSZ4,'#13#10'B.UTMOD_DAT,'#13#10'B.UTMOD_KOD,' +
      #13#10'B.SZARVALTSAG,'#13#10'B.FSZ,'#13#10'B.IENAR,'#13#10'KIKOD.KOD_NEV AS KIKOD_NEV,'#13 +
      #10'KIOK.KOD_NEV AS KIOK_NEV,'#13#10'IVAR.KOD_NEV AS IVAR_NEV,'#13#10'SZIN.KOD_' +
      'NEV AS SZIN'#13#10'FROM BORJAK B'#13#10'LEFT JOIN kodok ivar ON IVAR.KODTIPU' +
      'SOK_TIPUSKOD='#39'IVAR'#39' AND IVAR.KOD=B.BORJU_IVAR'#13#10'LEFT JOIN kodok k' +
      'ikod ON KIKOD.KODTIPUSOK_TIPUSKOD='#39'KIKOD'#39' AND KIKOD.KOD=B.BORJU_' +
      'KIESES_KOD'#13#10'LEFT JOIN kodok kiok ON KIOK.KODTIPUSOK_TIPUSKOD='#39'KI' +
      'OK'#39' AND KIOK.KOD=B.BORJU_KIESES_OK'#13#10'LEFT JOIN kodok szin ON SZIN' +
      '.KODTIPUSOK_TIPUSKOD='#39'SZIN'#39' AND SZIN.KOD=B.BORJU_SZIN'#13#10'WHERE B.E' +
      'LLESEK_ID=:ELLES_ID'#13#10#13#10#13#10#13#10
    Provider.DataSet.Parameters = <
      item
        Name = 'ELLES_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 200
    Top = 528
    object sdsBorjakBORJU_SSZ: TIntegerField
      DisplayLabel = 'Ssz'
      DisplayWidth = 2
      FieldName = 'BORJU_SSZ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBorjakBORJU_ENAR: TWideStringField
      DisplayLabel = 'ENAR'
      FieldName = 'BORJU_ENAR'
      ProviderFlags = [pfInUpdate]
      OnGetText = sdsInfoENARGetText
      Size = 14
    end
    object sdsBorjakBORJU_IVAR: TWideStringField
      DisplayLabel = 'Ivar'
      DisplayWidth = 3
      FieldName = 'BORJU_IVAR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBorjakFSZ: TWideStringField
      DisplayLabel = 'F'#252'lsz'#225'm'
      FieldName = 'FSZ'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBorjakSZIN: TWideStringField
      DisplayLabel = 'Sz'#237'n'
      FieldName = 'SZIN'
      ProviderFlags = []
      Size = 30
    end
    object sdsBorjakBORJU_KIESES_KOD: TWideStringField
      DisplayLabel = 'Kies'#233's k'#243'd'
      FieldName = 'BORJU_KIESES_KOD'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBorjakELLESEK_ID: TBCDField
      FieldName = 'ELLESEK_ID'
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsBorjakBORJU_KIESES_OK: TWideStringField
      FieldName = 'BORJU_KIESES_OK'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsBorjakBORJU_SULY: TBCDField
      FieldName = 'BORJU_SULY'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 6
      Size = 1
    end
    object sdsBorjakBORJU_SZIN: TWideStringField
      FieldName = 'BORJU_SZIN'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsBorjakBORJU_KONS_KOD: TWideStringField
      FieldName = 'BORJU_KONS_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsBorjakVSZ1: TBCDField
      FieldName = 'VSZ1'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 6
      Size = 2
    end
    object sdsBorjakVSZ2: TBCDField
      FieldName = 'VSZ2'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 6
      Size = 2
    end
    object sdsBorjakVSZ3: TBCDField
      FieldName = 'VSZ3'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 6
      Size = 2
    end
    object sdsBorjakVSZ4: TBCDField
      FieldName = 'VSZ4'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 6
      Size = 2
    end
    object sdsBorjakSZARVALTSAG: TWideStringField
      FieldName = 'SZARVALTSAG'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object sdsBorjakIENAR: TWideStringField
      FieldName = 'IENAR'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 15
    end
    object sdsBorjakKIKOD_NEV: TWideStringField
      FieldName = 'KIKOD_NEV'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object sdsBorjakKIOK_NEV: TWideStringField
      FieldName = 'KIOK_NEV'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object sdsBorjakIVAR_NEV: TWideStringField
      FieldName = 'IVAR_NEV'
      ProviderFlags = []
      Visible = False
      Size = 30
    end
    object sdsBorjakID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsBorjakUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsBorjakUTMOD_KOD: TWideStringField
      FieldName = 'UTMOD_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 3
    end
    object sdsBorjakVER1: TWideStringField
      FieldName = 'VER1'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsBorjakVER2: TWideStringField
      FieldName = 'VER2'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsBorjakVER3: TWideStringField
      FieldName = 'VER3'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsBorjakVER4: TWideStringField
      FieldName = 'VER4'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
  end
  object dtsBorjak: TDataSource
    DataSet = sdsBorjak
    Left = 274
    Top = 528
  end
  object qrybVer1: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FNEV'
      '  FROM FAJTA')
    Left = 352
    Top = 430
    object SmallintField4: TSmallintField
      FieldName = 'FKOD'
    end
    object StringField8: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsBver1: TDataSource
    DataSet = qrybVer1
    Left = 424
    Top = 430
  end
  object qrybVer2: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FNEV'
      '  FROM FAJTA')
    Left = 352
    Top = 476
    object SmallintField5: TSmallintField
      FieldName = 'FKOD'
    end
    object StringField9: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsBver2: TDataSource
    DataSet = qrybVer2
    Left = 424
    Top = 476
  end
  object qrybVer3: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FNEV'
      '  FROM FAJTA')
    Left = 352
    Top = 522
    object SmallintField6: TSmallintField
      FieldName = 'FKOD'
    end
    object StringField10: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsBver3: TDataSource
    DataSet = qrybVer3
    Left = 424
    Top = 522
  end
  object qrybVer4: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FNEV'
      '  FROM FAJTA')
    Left = 352
    Top = 570
    object SmallintField7: TSmallintField
      FieldName = 'FKOD'
    end
    object StringField11: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsBver4: TDataSource
    DataSet = qrybVer4
    Left = 424
    Top = 570
  end
  object qrybKons: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'KONSTR'#39
      '')
    Left = 200
    Top = 584
    object StringField12: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField25: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsBKons: TDataSource
    DataSet = qrybKons
    Left = 274
    Top = 584
  end
  object sdsTermekenyitesek: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    Connection = cnTarka
    DataSet.Connection = cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10't.ID,'#13#10'E.ENAR,'#13#10'e.FULSZAM,'#13#10'e.TEHENSZAM,'#13#10'e.ID_ENAR,'#13#10't.' +
      'DATUM,'#13#10'T.KPLSZ,'#13#10'APA.NEV as BIKANEV,'#13#10'T.TSZAM,'#13#10'T.EREDET,'#13#10'T.AL' +
      'LOMAS,'#13#10'T.EGYED_ID,'#13#10'T.SZUPOV,'#13#10'T.ISMBIK,'#13#10't.MOD,'#13#10'T.INSZ,'#13#10'T.TI' +
      'P,'#13#10'T.ALLAPOT,'#13#10't.VEMH_DATUM,'#13#10't.UTMOD_DAT,'#13#10't.UTMOD_KOD'#13#10'from T' +
      'ERMEKENYITESEK t'#13#10'JOIN APA ON APA.KPLSZ = T.KPLSZ'#13#10'join egyedek ' +
      'E on E.id= t.egyed_id'#13#10'where t.EGYED_ID=:EGYED_ID'
    DataSet.Parameters = <
      item
        Name = 'EGYED_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.DataSet.Connection = cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10't.ID,'#13#10'E.ENAR,'#13#10'e.FULSZAM,'#13#10'e.TEHENSZAM,'#13#10'e.ID_ENAR,'#13#10't.' +
      'DATUM,'#13#10'T.KPLSZ,'#13#10'APA.NEV as BIKANEV,'#13#10'T.TSZAM,'#13#10'T.EREDET,'#13#10'T.AL' +
      'LOMAS,'#13#10'T.EGYED_ID,'#13#10'T.SZUPOV,'#13#10'T.ISMBIK,'#13#10't.MOD,'#13#10'T.INSZ,'#13#10'T.TI' +
      'P,'#13#10'T.ALLAPOT,'#13#10't.VEMH_DATUM,'#13#10't.UTMOD_DAT,'#13#10't.UTMOD_KOD'#13#10'from T' +
      'ERMEKENYITESEK t'#13#10'JOIN APA ON APA.KPLSZ = T.KPLSZ'#13#10'join egyedek ' +
      'E on E.id= t.egyed_id'#13#10'where t.EGYED_ID=:EGYED_ID'
    Provider.DataSet.Parameters = <
      item
        Name = 'EGYED_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    PacketRecords = 500
    Params = <>
    Left = 352
    Top = 72
    object sdsTermekenyitesekID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsTermekenyitesekENAR: TWideStringField
      DisplayLabel = 'EN'#193'R'
      FieldName = 'ENAR'
      ProviderFlags = []
      OnGetText = sdsInfoENARGetText
      Size = 14
    end
    object sdsTermekenyitesekFULSZAM: TWideStringField
      DisplayLabel = 'F'#252'lsz'#225'm'
      FieldName = 'FULSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsTermekenyitesekTEHENSZAM: TWideStringField
      DisplayLabel = 'Teh'#233'nsz'#225'm'
      FieldName = 'TEHENSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsTermekenyitesekID_ENAR: TWideStringField
      FieldName = 'ID_ENAR'
      ProviderFlags = []
      Visible = False
      FixedChar = True
      Size = 15
    end
    object sdsTermekenyitesekDATUM: TDateTimeField
      DisplayLabel = 'D'#225'tum'
      DisplayWidth = 10
      FieldName = 'DATUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsTermekenyitesekKPLSZ: TWideStringField
      DisplayWidth = 8
      FieldName = 'KPLSZ'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsTermekenyitesekBIKANEV: TWideStringField
      DisplayLabel = 'Bika neve'
      DisplayWidth = 20
      FieldName = 'BIKANEV'
      ProviderFlags = []
      Visible = False
      FixedChar = True
      Size = 40
    end
    object sdsTermekenyitesekTSZAM: TWideStringField
      DisplayLabel = 'Termel'#233'si sz'#225'm'
      FieldName = 'TSZAM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object sdsTermekenyitesekEREDET: TWideStringField
      DisplayLabel = 'Sp.eredete'
      FieldName = 'EREDET'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekALLOMAS: TWideStringField
      DisplayLabel = 'Sp.El'#337#225'll'#237't'#243' '
      FieldName = 'ALLOMAS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object sdsTermekenyitesekEGYED_ID: TBCDField
      FieldName = 'EGYED_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsTermekenyitesekSZUPOV: TWideStringField
      DisplayLabel = 'Szup.o'
      FieldName = 'SZUPOV'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekISMBIK: TWideStringField
      DisplayLabel = 'Ism.bika'
      FieldName = 'ISMBIK'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekMOD: TWideStringField
      DisplayLabel = 'Term.m'#243'd'
      FieldName = 'MOD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekTIP: TWideStringField
      DisplayLabel = 'Sp.tip.'
      FieldName = 'TIP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekINSZ: TWideStringField
      DisplayLabel = 'Insz.'
      FieldName = 'INSZ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object sdsTermekenyitesekALLAPOT: TWideStringField
      DisplayLabel = 'Vemh.k'#243'd'
      FieldName = 'ALLAPOT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekVEMH_DATUM: TDateTimeField
      DisplayLabel = 'Vemh.v.d'#225'tum'
      DisplayWidth = 12
      FieldName = 'VEMH_DATUM'
      ProviderFlags = [pfInUpdate]
      OnGetText = sdsTermekenyitesekVEMH_DATUMGetText
    end
    object sdsTermekenyitesekUTMOD_DAT: TDateTimeField
      DisplayLabel = 'Ut.m'#243'd.d'#225'tum'
      DisplayWidth = 12
      FieldName = 'UTMOD_DAT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTermekenyitesekUTMOD_KOD: TWideStringField
      DisplayLabel = 'Ut.m'#243'd.k'#243'd'
      FieldName = 'UTMOD_KOD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object dtsTermekenyitesek: TDataSource
    DataSet = sdsTermekenyitesek
    Left = 426
    Top = 72
  end
  object qryTermMod: TTalQuery
    Connection = cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  kk.KOD,'
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'TERMMOD'#39)
    Left = 352
    Top = 176
    object StringField26: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField27: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object qryVemhKod: TTalQuery
    Connection = cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'VEMHKOD'#39)
    Left = 352
    Top = 127
    object StringField28: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField29: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object qryInsz: TTalQuery
    Connection = cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  i.KOD, '
      '  i.KOD || '#39' - '#39' || i.NEV as NEV'
      'from INSZEMINATOROK I')
    Left = 352
    Top = 224
    object qryInszKOD: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object qryInszNEV: TWideStringField
      FieldName = 'NEV'
      Size = 80
    end
  end
  object dtsVemhKod: TDataSource
    DataSet = qryVemhKod
    Left = 424
    Top = 127
  end
  object dtsTermMod: TDataSource
    DataSet = qryTermMod
    Left = 424
    Top = 176
  end
  object dtsInsz: TDataSource
    DataSet = qryInsz
    Left = 424
    Top = 224
  end
  object qrySperTip: TTalQuery
    Connection = cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'SPERMTIP'#39)
    Left = 504
    Top = 71
    object StringField30: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField31: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsSperTip: TDataSource
    DataSet = qrySperTip
    Left = 576
    Top = 71
  end
  object qrySperEred: TTalQuery
    Connection = cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'SPERERED'#39)
    Left = 504
    Top = 127
    object StringField32: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField33: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsSperEred: TDataSource
    DataSet = qrySperEred
    Left = 576
    Top = 127
  end
  object qrySperElo: TTalQuery
    Connection = cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  kk.KOD, '
      '  kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'SPERELO'#39)
    Left = 504
    Top = 183
    object StringField34: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField35: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsSperElo: TDataSource
    DataSet = qrySperElo
    Left = 576
    Top = 183
  end
  object sdsInfo: TTalSimpleDataSet
    Aggregates = <>
    Connection = cnTarka
    DataSet.Connection = cnTarka
    DataSet.CommandText = 
      'SELECT '#13#10'  e.ID,'#13#10'  e.ENAR,'#13#10'  e.TENYESZET,'#13#10'  e.TEHENSZAM,'#13#10'  e' +
      '.FULSZAM,'#13#10'  e.ID_ENAR,'#13#10'  e.ANYA_ENAR,'#13#10'  e.ANYA_ELL,'#13#10'  e.ANYA' +
      '_ID_ENAR,'#13#10'  e.DONOR_ANYA,'#13#10'  e.APAKLSZ,'#13#10'  e.APA_FULSZAM,'#13#10'  e.' +
      'ID_APA,'#13#10'  e.NEV,'#13#10'  e.SZULDAT,'#13#10'  e.FAJTAKOD,'#13#10'  e.VER1,'#13#10'  e.V' +
      'SZ1,'#13#10'  e.VER2,'#13#10'  e.VSZ2,'#13#10'  e.VER3,'#13#10'  e.VSZ3,'#13#10'  e.VER4,'#13#10'  e' +
      '.VSZ4,'#13#10'  e.SZORSZ,'#13#10'  e.E_ORSZ,'#13#10'  e.KKOD,'#13#10'  e.SZIN,'#13#10'  e.SZAR' +
      'VALTSAG,'#13#10'  e.BIKANEVELO,'#13#10'  e.TENYTOM,'#13#10'  e.MLEVEL1,'#13#10'  e.MLEVE' +
      'L2,'#13#10'  e.TKV,'#13#10'  e.TKVSZAM,'#13#10'  e."MIN",'#13#10'  e.KIKOD,'#13#10'  e.KIKOK,'#13 +
      #10'  e.KIKDAT,'#13#10'  e.STATUS,'#13#10'  e.ALLAPOT,'#13#10'  e.ALLDAT,'#13#10'  e.IVAR,'#13 +
      #10'  e.SZUL_SULY,'#13#10'  e.MOD_KOD,'#13#10'  e.MOD_DAT,'#13#10'  e.MEGJEGYZES,'#13#10'  ' +
      'e.VALDAT,'#13#10'  e.VALTOM,'#13#10'  e.TOM205,'#13#10'  e.SV,'#13#10'  E.KIKHELY,  e.SZ' +
      'ARM_TENY'#13#10'FROM EGYEDEK E '#13#10'WHERE'#13#10'  e.ID = :ID'
    DataSet.FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 15
        Size = 4
      end
      item
        Name = 'ENAR'
        DataType = ftWideString
        Size = 14
      end
      item
        Name = 'TENYESZET'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'TEHENSZAM'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FULSZAM'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'ID_ENAR'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'ANYA_ENAR'
        DataType = ftWideString
        Size = 14
      end
      item
        Name = 'ANYA_ELL'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'ANYA_ID_ENAR'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'DONOR_ANYA'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'APAKLSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'APA_FULSZAM'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'ID_APA'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'NEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'SZULDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'FAJTAKOD'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'VER1'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'VSZ1'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'VER2'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'VSZ2'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'VER3'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'VSZ3'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'VER4'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'VSZ4'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'SZORSZ'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'E_ORSZ'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'KKOD'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'SZIN'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'SZARVALTSAG'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'BIKANEVELO'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TENYTOM'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'MLEVEL1'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'MLEVEL2'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'TKV'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TKVSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'MIN'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'KIKOD'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KIKOK'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KIKDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'STATUS'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ALLAPOT'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ALLDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'IVAR'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'SZUL_SULY'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'MOD_KOD'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'MOD_DAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'MEGJEGYZES'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'VALDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'VALTOM'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'TOM205'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'SV'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'KIKHELY'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SZARM_TENY'
        DataType = ftWideString
        Size = 7
      end>
    DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftInteger
        Size = 15
        Value = Null
      end>
    DataSet.StoreDefs = True
    Provider.DataSet.Connection = cnTarka
    Provider.DataSet.CommandText = 
      'SELECT '#13#10'  e.ID,'#13#10'  e.ENAR,'#13#10'  e.TENYESZET,'#13#10'  e.TEHENSZAM,'#13#10'  e' +
      '.FULSZAM,'#13#10'  e.ID_ENAR,'#13#10'  e.ANYA_ENAR,'#13#10'  e.ANYA_ELL,'#13#10'  e.ANYA' +
      '_ID_ENAR,'#13#10'  e.DONOR_ANYA,'#13#10'  e.APAKLSZ,'#13#10'  e.APA_FULSZAM,'#13#10'  e.' +
      'ID_APA,'#13#10'  e.NEV,'#13#10'  e.SZULDAT,'#13#10'  e.FAJTAKOD,'#13#10'  e.VER1,'#13#10'  e.V' +
      'SZ1,'#13#10'  e.VER2,'#13#10'  e.VSZ2,'#13#10'  e.VER3,'#13#10'  e.VSZ3,'#13#10'  e.VER4,'#13#10'  e' +
      '.VSZ4,'#13#10'  e.SZORSZ,'#13#10'  e.E_ORSZ,'#13#10'  e.KKOD,'#13#10'  e.SZIN,'#13#10'  e.SZAR' +
      'VALTSAG,'#13#10'  e.BIKANEVELO,'#13#10'  e.TENYTOM,'#13#10'  e.MLEVEL1,'#13#10'  e.MLEVE' +
      'L2,'#13#10'  e.TKV,'#13#10'  e.TKVSZAM,'#13#10'  e."MIN",'#13#10'  e.KIKOD,'#13#10'  e.KIKOK,'#13 +
      #10'  e.KIKDAT,'#13#10'  e.STATUS,'#13#10'  e.ALLAPOT,'#13#10'  e.ALLDAT,'#13#10'  e.IVAR,'#13 +
      #10'  e.SZUL_SULY,'#13#10'  e.MOD_KOD,'#13#10'  e.MOD_DAT,'#13#10'  e.MEGJEGYZES,'#13#10'  ' +
      'e.VALDAT,'#13#10'  e.VALTOM,'#13#10'  e.TOM205,'#13#10'  e.SV,'#13#10'  E.KIKHELY,  e.SZ' +
      'ARM_TENY'#13#10'FROM EGYEDEK E '#13#10'WHERE'#13#10'  e.ID = :ID'
    Provider.DataSet.FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 15
        Size = 4
      end
      item
        Name = 'ENAR'
        DataType = ftWideString
        Size = 14
      end
      item
        Name = 'TENYESZET'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'TEHENSZAM'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FULSZAM'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'ID_ENAR'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'ANYA_ENAR'
        DataType = ftWideString
        Size = 14
      end
      item
        Name = 'ANYA_ELL'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'ANYA_ID_ENAR'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'DONOR_ANYA'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'APAKLSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'APA_FULSZAM'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'ID_APA'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'NEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'SZULDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'FAJTAKOD'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'VER1'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'VSZ1'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'VER2'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'VSZ2'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'VER3'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'VSZ3'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'VER4'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'VSZ4'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'SZORSZ'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'E_ORSZ'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'KKOD'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'SZIN'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'SZARVALTSAG'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'BIKANEVELO'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TENYTOM'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'MLEVEL1'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'MLEVEL2'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'TKV'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TKVSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'MIN'
        Attributes = [faFixed]
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'KIKOD'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KIKOK'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KIKDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'STATUS'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ALLAPOT'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ALLDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'IVAR'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'SZUL_SULY'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'MOD_KOD'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'MOD_DAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'MEGJEGYZES'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'VALDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'VALTOM'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'TOM205'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'SV'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'KIKHELY'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SZARM_TENY'
        DataType = ftWideString
        Size = 7
      end>
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftInteger
        Size = 15
        Value = Null
      end>
    Provider.DataSet.StoreDefs = True
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Provider.UpdateMode = upWhereChanged
    Params = <>
    OnReconcileError = sdsInfoReconcileError
    Left = 24
    Top = 72
    object sdsInfoID: TBCDField
      FieldName = 'ID'
      Precision = 15
      Size = 0
    end
    object sdsInfoENAR: TWideStringField
      FieldName = 'ENAR'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsInfoTENYESZET: TWideStringField
      FieldName = 'TENYESZET'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object sdsInfoTEHENSZAM: TWideStringField
      FieldName = 'TEHENSZAM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsInfoFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      Size = 15
    end
    object sdsInfoID_ENAR: TWideStringField
      FieldName = 'ID_ENAR'
      Size = 15
    end
    object sdsInfoANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 14
    end
    object sdsInfoANYA_ELL: TWideStringField
      FieldName = 'ANYA_ELL'
      Size = 11
    end
    object sdsInfoANYA_ID_ENAR: TWideStringField
      FieldName = 'ANYA_ID_ENAR'
      Size = 15
    end
    object sdsInfoDONOR_ANYA: TWideStringField
      FieldName = 'DONOR_ANYA'
      Size = 15
    end
    object sdsInfoAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
      Size = 10
    end
    object sdsInfoAPA_FULSZAM: TWideStringField
      FieldName = 'APA_FULSZAM'
      Size = 15
    end
    object sdsInfoID_APA: TWideStringField
      FieldName = 'ID_APA'
      Size = 15
    end
    object sdsInfoNEV: TWideStringField
      FieldName = 'NEV'
      Size = 30
    end
    object sdsInfoSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsInfoFAJTAKOD: TWideStringField
      FieldName = 'FAJTAKOD'
      Size = 5
    end
    object sdsInfoVER1: TWideStringField
      FieldName = 'VER1'
      Size = 10
    end
    object sdsInfoVSZ1: TBCDField
      FieldName = 'VSZ1'
      Precision = 6
      Size = 2
    end
    object sdsInfoVER2: TWideStringField
      FieldName = 'VER2'
      Size = 10
    end
    object sdsInfoVSZ2: TBCDField
      FieldName = 'VSZ2'
      Precision = 6
      Size = 2
    end
    object sdsInfoVER3: TWideStringField
      FieldName = 'VER3'
      Size = 10
    end
    object sdsInfoVSZ3: TBCDField
      FieldName = 'VSZ3'
      Precision = 6
      Size = 2
    end
    object sdsInfoVER4: TWideStringField
      FieldName = 'VER4'
      Size = 10
    end
    object sdsInfoVSZ4: TBCDField
      FieldName = 'VSZ4'
      Precision = 6
      Size = 2
    end
    object sdsInfoSZORSZ: TWideStringField
      FieldName = 'SZORSZ'
      Size = 3
    end
    object sdsInfoE_ORSZ: TWideStringField
      FieldName = 'E_ORSZ'
      Size = 3
    end
    object sdsInfoKKOD: TWideStringField
      FieldName = 'KKOD'
      Size = 3
    end
    object sdsInfoSZIN: TWideStringField
      FieldName = 'SZIN'
      Size = 2
    end
    object sdsInfoSZARVALTSAG: TWideStringField
      FieldName = 'SZARVALTSAG'
      Size = 1
    end
    object sdsInfoBIKANEVELO: TWideStringField
      FieldName = 'BIKANEVELO'
      Size = 1
    end
    object sdsInfoTENYTOM: TIntegerField
      FieldName = 'TENYTOM'
    end
    object sdsInfoMLEVEL1: TWideStringField
      FieldName = 'MLEVEL1'
      Size = 7
    end
    object sdsInfoMLEVEL2: TWideStringField
      FieldName = 'MLEVEL2'
      Size = 7
    end
    object sdsInfoTKV: TWideStringField
      FieldName = 'TKV'
      Size = 1
    end
    object sdsInfoTKVSZAM: TWideStringField
      FieldName = 'TKVSZAM'
    end
    object sdsInfoMIN: TBCDField
      FieldName = 'MIN'
      Precision = 6
      Size = 2
    end
    object sdsInfoKIKOD: TWideStringField
      FieldName = 'KIKOD'
      Size = 10
    end
    object sdsInfoKIKOK: TWideStringField
      FieldName = 'KIKOK'
      Size = 10
    end
    object sdsInfoKIKDAT: TDateTimeField
      FieldName = 'KIKDAT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsInfoSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object sdsInfoALLAPOT: TWideStringField
      FieldName = 'ALLAPOT'
      Size = 1
    end
    object sdsInfoALLDAT: TDateTimeField
      FieldName = 'ALLDAT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsInfoIVAR: TWideStringField
      FieldName = 'IVAR'
      Size = 1
    end
    object sdsInfoSZUL_SULY: TIntegerField
      FieldName = 'SZUL_SULY'
    end
    object sdsInfoMOD_KOD: TWideStringField
      FieldName = 'MOD_KOD'
      Size = 3
    end
    object sdsInfoMOD_DAT: TDateTimeField
      FieldName = 'MOD_DAT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsInfoMEGJEGYZES: TWideStringField
      FieldName = 'MEGJEGYZES'
      Size = 150
    end
    object sdsInfoVALDAT: TDateTimeField
      FieldName = 'VALDAT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsInfoVALTOM: TIntegerField
      FieldName = 'VALTOM'
    end
    object sdsInfoTOM205: TIntegerField
      FieldName = 'TOM205'
    end
    object sdsInfoSV: TIntegerField
      FieldName = 'SV'
    end
    object sdsInfoKIKHELY: TWideStringField
      FieldName = 'KIKHELY'
      Size = 10
    end
    object sdsInfoSZARM_TENY: TWideStringField
      FieldName = 'SZARM_TENY'
      Size = 7
    end
  end
  object sdsMeresTip: TTalSimpleDataSet
    Aggregates = <>
    Connection = cnTarka
    DataSet.Connection = cnTarka
    DataSet.CommandText = 
      'select  kk.KOD, '#13#10'kK.KOD_NEV AS KOD_NEV'#13#10'from kodok kk'#13#10'where kk' +
      '.KODTIPUSOK_TIPUSKOD='#39'MERESTPS'#39
    DataSet.Parameters = <>
    Provider.DataSet.Connection = cnTarka
    Provider.DataSet.CommandText = 
      'select  kk.KOD, '#13#10'kK.KOD_NEV AS KOD_NEV'#13#10'from kodok kk'#13#10'where kk' +
      '.KODTIPUSOK_TIPUSKOD='#39'MERESTPS'#39
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 504
    Top = 240
    object sdsMeresTipKOD: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object sdsMeresTipKOD_NEV: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsMeresTip: TDataSource
    DataSet = sdsMeresTip
    Left = 578
    Top = 240
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 560
    Top = 360
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    FixedWidth = True
    Background = False
    Left = 560
    Top = 408
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    Left = 560
    Top = 464
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    Separator = ';'
    OEMCodepage = False
    Left = 560
    Top = 512
  end
  object prcNaptolt: TTalStoredProc
    Connection = cnTarka
    ProcedureName = 'NAP_TOLT'
    Parameters = <
      item
        Name = 'KEZDAT'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 536
    Top = 576
  end
  object stpEgyedTorles: TTalStoredProc
    Connection = cnTarka
    ProcedureName = 'EGYED_TORLES'
    Parameters = <
      item
        Name = 'P_EGYED_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Value = Null
      end>
    Left = 616
    Top = 576
  end
  object prcWzarTolt: TTalStoredProc
    Connection = cnTarka
    ProcedureName = 'PROC_EVZAR'
    Parameters = <
      item
        Name = 'P_EV'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_TKOD'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 536
    Top = 624
  end
  object qryOrszag: TTalQuery
    Connection = cnTarka
    Parameters = <>
    SQL.Strings = (
      'SELECT o.nev'
      'FROM ORSZAG O')
    Left = 24
    Top = 680
    object qryOrszagNEV: TWideStringField
      FieldName = 'NEV'
      Size = 30
    end
  end
  object dtsOrszag: TDataSource
    DataSet = qryOrszag
    Left = 96
    Top = 680
  end
end
