inherited frmGyLisKlt: TfrmGyLisKlt
  Left = 476
  Top = 190
  Width = 505
  Height = 332
  Caption = 'Gy'#243'gyszerk'#233'szletek list'#225'z'#225'sa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 257
    Width = 497
    inherited BitBtn1: TTalBitBtn
      Left = 330
    end
    inherited BitBtn2: TTalBitBtn
      Left = 410
    end
  end
  inherited Panel2: TPanel
    Width = 497
    Height = 257
    object TalLabel1: TTalLabel
      Left = 48
      Top = 64
      Width = 75
      Height = 13
      Caption = 'K'#233'szlet d'#225'tuma:'
    end
    object TalGroupBox5: TTalGroupBox
      Left = 32
      Top = 144
      Width = 217
      Height = 96
      Caption = 'Rendezetts'#233'g '
      TabOrder = 1
      object rbR2: TTalRadioButton
        Left = 11
        Top = 45
        Width = 174
        Height = 17
        Caption = 'Gy'#243'gyszer n'#233'vre n'#246'vekv'#337
        TabOrder = 0
      end
      object rbR1: TTalRadioButton
        Left = 11
        Top = 21
        Width = 190
        Height = 17
        Caption = 'Gy'#243'gyszer k'#243'dra n'#246'vekv'#337
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object rbR3: TTalRadioButton
        Left = 11
        Top = 69
        Width = 174
        Height = 17
        Caption = 'Bev'#233'telez'#233's d'#225'tumra n'#246'vekv'#337
        TabOrder = 2
      end
    end
    object TalGroupBox3: TTalGroupBox
      Left = 255
      Top = 165
      Width = 218
      Height = 75
      Caption = 'Lista kimenete '
      TabOrder = 2
      object rbExcel: TRadioButton
        Left = 10
        Top = 43
        Width = 71
        Height = 17
        Caption = 'Excel f'#225'jl'
        TabOrder = 0
      end
      object rbLista: TRadioButton
        Left = 10
        Top = 19
        Width = 63
        Height = 17
        Caption = 'Lista'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object edtDatTol: TTalEdit
      Left = 132
      Top = 59
      Width = 80
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = '1899.12.30'
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      ReadOnly = False
      TabOrder = 0
    end
  end
  inherited ActionList1: TActionList
    Left = 412
    Top = 20
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'KOD=KOD'
      'NEV=NEV'
      'BEVET_DATUM=BEVET_DATUM'
      'BEV_MENNY=BEV_MENNY'
      'AKT_KESZLET=AKT_KESZLET'
      'PILL_KESZL=PILL_KESZL'
      'ME=ME'
      'VARAKOZAS_TEJ=VARAKOZAS_TEJ'
      'VARAKOZAS_HUS=VARAKOZAS_HUS')
    DataSet = sdsLista
    Left = 384
    Top = 72
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 39375.852727210600000000
    ReportOptions.LastChange = 39476.715814340300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 440
    Top = 72
    Datasets = <
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end
      item
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'SzuroFeltetelek'
        Value = Null
      end
      item
        Name = 'datum'
        Value = Null
      end>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Align = baCenter
          Left = 185.197011495000000000
          Width = 347.716677010000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              #258#129'llatteny'#258#169'szt'#258#169'si Teljes'#258#173'tm'#258#169'nyvizsg'#258#711'l'#258#322' Kft adatfeldolgoz'#258#322 +
              ' rendszer '#194#169' 2006')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 45.354311179999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 517.795292680000000000
          Top = 22.677180000000000000
          Width = 43.464566930000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'K'#258#169'sz'#258#317'lt:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 566.929500000000000000
          Top = 22.677180000000000000
          Width = 62.362204720000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 634.960644570000000000
          Top = 22.677180000000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TIME]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 26.456710000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ATKOD'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."ATKOD"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 86.929190000000000000
          Top = 22.677180000000000000
          Width = 177.637910000000000000
          Height = 18.897637800000000000
          DataField = 'TELEP_NEV'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."TELEP_NEV"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 279.685220000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ENAR_KOD'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."ENAR_KOD"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          Left = -0.000007320000000000
          Width = 393.071120000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kezel'#258#169'sek - Adott napi gy'#258#322'gyszerk'#258#169'szlet lista')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 691.653990000000000000
          Width = 15.118110240000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 634.961040000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'oldal:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 680.315400000000000000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
        object Memo20: TfrxMemoView
          Left = 665.197280000000000000
          Width = 15.118110240000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TotalPages#]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 94.488250000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        Stretched = True
        object Memo11: TfrxMemoView
          Left = 126.614316020000000000
          Top = 3.779529999999994000
          Width = 464.882067950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            '[<datum>] napi gy'#258#322'gyszerk'#258#169'szletek')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000010000
          Width = 680.315400000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          AutoWidth = True
          Memo.UTF8 = (
            '[SzuroFeltetelek]')
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 94.488250000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'G y '#258#322' g y s z e r')
        end
        object Memo13: TfrxMemoView
          Left = 275.905690000000000000
          Top = 56.692949999999990000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Bev'#258#169'telez'#258#169's d'#258#711'tuma')
        end
        object Memo14: TfrxMemoView
          Left = 377.953000000000000000
          Top = 71.811070000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Aktu'#258#711'lis k'#258#169'szlet')
        end
        object Memo16: TfrxMemoView
          Left = 517.795610000000000000
          Top = 56.692949999999990000
          Width = 90.708720000000000000
          Height = 34.015748030000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'rakoz'#258#711'si id'#313#8216' tejre')
        end
        object Memo17: TfrxMemoView
          Left = 616.063390000000000000
          Top = 56.692949999999990000
          Width = 90.708720000000000000
          Height = 34.015748030000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'rakoz'#258#711'si id'#313#8216' h'#258#351'sra')
        end
        object Memo25: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'K'#258#322'd')
        end
        object Memo26: TfrxMemoView
          Left = 79.370130000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Megnevez'#258#169's')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 79.370130000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'NEV'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."NEV"]')
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'KOD'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KOD"]')
        end
        object Memo4: TfrxMemoView
          Left = 287.244280000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'BEVET_DATUM'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."BEVET_DATUM"]')
        end
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PILL_KESZL'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBLista."PILL_KESZL"]')
        end
        object Memo21: TfrxMemoView
          Left = 523.464905000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VARAKOZAS_TEJ'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."VARAKOZAS_TEJ"]')
        end
        object Memo23: TfrxMemoView
          Left = 621.732685000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VARAKOZAS_HUS'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."VARAKOZAS_HUS"]')
        end
        object Memo24: TfrxMemoView
          Left = 461.102660000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ME'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ME"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 41.574830000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object SysMemo3: TfrxSysMemoView
          Left = 7.559060000000000000
          Top = 15.118119999999980000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            #258#8211'sszesen [COUNT(MasterData1,2)] t'#258#169'tel van a list'#258#711'n.')
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 7.559059999999988000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object sdsLista: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'GY.KOD,'#13#10'GY.NEV,'#13#10'GYK.BEVET_DATUM,'#13#10'GYK.BEV_MENNY,'#13#10'GYK.' +
      'AKT_KESZLET,'#13#10'GYK.BEV_MENNY-'#13#10'COALESCE((SELECT SUM(K.GYMENNY_1) ' +
      'FROM KEZELESEK K WHERE K.GYKLT1_ID=GYK.ID AND K.KEZ_DATUM <= '#39'20' +
      '08.02.12'#39' ), 0)-'#13#10'COALESCE((SELECT SUM(K.GYMENNY_2) FROM KEZELES' +
      'EK K WHERE K.GYKLT2_ID=GYK.ID AND K.KEZ_DATUM <= '#39'2008.02.12'#39' ),' +
      ' 0)-'#13#10'COALESCE((SELECT SUM(K.GYMENNY_3) FROM KEZELESEK K WHERE K' +
      '.GYKLT3_ID=GYK.ID AND K.KEZ_DATUM <= '#39'2008.02.12'#39' ), 0)-'#13#10'COALES' +
      'CE((SELECT SUM(MENNYISEG) FROM GYFELH WHERE GYFELH.GYOGYSZERKLT_' +
      'ID=GYK.ID AND GYFELH.DATUM <= '#39'2008.02.12'#39'),0) AS PILL_KESZL ,'#13#10 +
      'GYK.ME,'#13#10'GY.VARAKOZAS_TEJ,'#13#10'GY.VARAKOZAS_HUS'#13#10'FROM GYOGYSZER_KLT' +
      ' GYK'#13#10'JOIN GYOGYSZEREK GY ON GY.KOD = GYK.GYOGYSZER_KOD'#13#10'WHERE G' +
      'YK.BEVET_DATUM <= '#39'2008.02.12'#39#13#10'AND'#13#10'(GYK.BEV_MENNY-'#13#10'COALESCE((' +
      'SELECT SUM(K.GYMENNY_1) FROM KEZELESEK K WHERE K.GYKLT1_ID=GYK.I' +
      'D AND K.KEZ_DATUM <= '#39'2008.02.12'#39' ), 0)-'#13#10'COALESCE((SELECT SUM(K' +
      '.GYMENNY_2) FROM KEZELESEK K WHERE K.GYKLT2_ID=GYK.ID AND K.KEZ_' +
      'DATUM <= '#39'2008.02.12'#39' ), 0)-'#13#10'COALESCE((SELECT SUM(K.GYMENNY_3) ' +
      'FROM KEZELESEK K WHERE K.GYKLT3_ID=GYK.ID AND K.KEZ_DATUM <= '#39'20' +
      '08.02.12'#39' ), 0)-'#13#10'COALESCE((SELECT SUM(MENNYISEG) FROM GYFELH WH' +
      'ERE GYFELH.GYOGYSZERKLT_ID=GYK.ID AND GYFELH.DATUM <= '#39'2008.02.1' +
      '2'#39'),0)) > 0'#13#10'order by KOD'#13#10#13#10
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'GY.KOD,'#13#10'GY.NEV,'#13#10'GYK.BEVET_DATUM,'#13#10'GYK.BEV_MENNY,'#13#10'GYK.' +
      'AKT_KESZLET,'#13#10'GYK.BEV_MENNY-'#13#10'COALESCE((SELECT SUM(K.GYMENNY_1) ' +
      'FROM KEZELESEK K WHERE K.GYKLT1_ID=GYK.ID AND K.KEZ_DATUM <= '#39'20' +
      '08.02.12'#39' ), 0)-'#13#10'COALESCE((SELECT SUM(K.GYMENNY_2) FROM KEZELES' +
      'EK K WHERE K.GYKLT2_ID=GYK.ID AND K.KEZ_DATUM <= '#39'2008.02.12'#39' ),' +
      ' 0)-'#13#10'COALESCE((SELECT SUM(K.GYMENNY_3) FROM KEZELESEK K WHERE K' +
      '.GYKLT3_ID=GYK.ID AND K.KEZ_DATUM <= '#39'2008.02.12'#39' ), 0)-'#13#10'COALES' +
      'CE((SELECT SUM(MENNYISEG) FROM GYFELH WHERE GYFELH.GYOGYSZERKLT_' +
      'ID=GYK.ID AND GYFELH.DATUM <= '#39'2008.02.12'#39'),0) AS PILL_KESZL ,'#13#10 +
      'GYK.ME,'#13#10'GY.VARAKOZAS_TEJ,'#13#10'GY.VARAKOZAS_HUS'#13#10'FROM GYOGYSZER_KLT' +
      ' GYK'#13#10'JOIN GYOGYSZEREK GY ON GY.KOD = GYK.GYOGYSZER_KOD'#13#10'WHERE G' +
      'YK.BEVET_DATUM <= '#39'2008.02.12'#39#13#10'AND'#13#10'(GYK.BEV_MENNY-'#13#10'COALESCE((' +
      'SELECT SUM(K.GYMENNY_1) FROM KEZELESEK K WHERE K.GYKLT1_ID=GYK.I' +
      'D AND K.KEZ_DATUM <= '#39'2008.02.12'#39' ), 0)-'#13#10'COALESCE((SELECT SUM(K' +
      '.GYMENNY_2) FROM KEZELESEK K WHERE K.GYKLT2_ID=GYK.ID AND K.KEZ_' +
      'DATUM <= '#39'2008.02.12'#39' ), 0)-'#13#10'COALESCE((SELECT SUM(K.GYMENNY_3) ' +
      'FROM KEZELESEK K WHERE K.GYKLT3_ID=GYK.ID AND K.KEZ_DATUM <= '#39'20' +
      '08.02.12'#39' ), 0)-'#13#10'COALESCE((SELECT SUM(MENNYISEG) FROM GYFELH WH' +
      'ERE GYFELH.GYOGYSZERKLT_ID=GYK.ID AND GYFELH.DATUM <= '#39'2008.02.1' +
      '2'#39'),0)) > 0'#13#10'order by KOD'#13#10#13#10
    Provider.DataSet.Parameters = <>
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 256
    Top = 72
    object sdsListaKOD: TWidestringField
      FieldName = 'KOD'
      Size = 10
    end
    object sdsListaNEV: TWidestringField
      FieldName = 'NEV'
      Size = 80
    end
    object sdsListaBEVET_DATUM: TDateTimeField
      FieldName = 'BEVET_DATUM'
    end
    object sdsListaBEV_MENNY: TBCDField
      FieldName = 'BEV_MENNY'
      Precision = 15
      Size = 2
    end
    object sdsListaAKT_KESZLET: TBCDField
      FieldName = 'AKT_KESZLET'
      Precision = 15
      Size = 2
    end
    object sdsListaPILL_KESZL: TBCDField
      FieldName = 'PILL_KESZL'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object sdsListaME: TWidestringField
      FieldName = 'ME'
      Size = 10
    end
    object sdsListaVARAKOZAS_TEJ: TIntegerField
      FieldName = 'VARAKOZAS_TEJ'
    end
    object sdsListaVARAKOZAS_HUS: TIntegerField
      FieldName = 'VARAKOZAS_HUS'
    end
  end
end
