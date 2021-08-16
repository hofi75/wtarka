object frmVerhanyadLista: TfrmVerhanyadLista
  Left = 1108
  Top = 393
  Width = 422
  Height = 192
  Caption = 'Verhanyad Lista'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TalLabel1: TTalLabel
    Left = 40
    Top = 26
    Width = 65
    Height = 13
    Caption = 'Kezd'#246' d'#225'tum:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object TalLabel2: TTalLabel
    Left = 40
    Top = 58
    Width = 57
    Height = 13
    Caption = 'Z'#225'r'#243' d'#225'tum:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtStartDate: TTalEdit
    Left = 112
    Top = 24
    Width = 86
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
  object edtEndDate: TTalEdit
    Left = 112
    Top = 56
    Width = 86
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
    TabOrder = 1
  end
  object btnPrint: TTalButton
    Left = 112
    Top = 88
    Width = 121
    Height = 41
    Caption = 'Nyomtat'#225's'
    TabOrder = 2
    OnClick = btnPrintClick
  end
  object sdsVerhanyadLista: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 'select m.* from mtverh m '#13#10'order by m.datum'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 'select m.* from mtverh m '#13#10'order by m.datum'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 232
    Top = 16
    object sdsVerhanyadListaDATUM: TDateTimeField
      FieldName = 'DATUM'
    end
    object sdsVerhanyadListaDB: TIntegerField
      FieldName = 'DB'
    end
    object sdsVerhanyadListaVERH: TBCDField
      FieldName = 'VERH'
      Precision = 6
      Size = 2
    end
    object sdsVerhanyadListaMT_DB: TIntegerField
      FieldName = 'MT_DB'
    end
    object sdsVerhanyadListaMT_VSZ: TBCDField
      FieldName = 'MT_VSZ'
      Precision = 6
      Size = 2
    end
  end
  object frxDBVerhanyadLista: TfrxDBDataset
    UserName = 'frxDBVerhanyadLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATUM=DATUM'
      'DB=DB'
      'VERH=VERH'
      'MT_DB=MT_DB'
      'MT_VSZ=MT_VSZ')
    DataSet = sdsVerhanyadLista
    Left = 264
    Top = 96
  end
  object frxVerhanyadLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 40261.918925752300000000
    ReportOptions.LastChange = 44424.852379895830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 312
    Top = 16
    Datasets = <
      item
        DataSet = frxDBVerhanyadLista
        DataSetName = 'frxDBVerhanyadLista'
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
        Name = 'Rendezettseg'
        Value = Null
      end
      item
        Name = 'Cim'
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
        Height = 111.488240240000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 58.582776020000000000
          Top = 47.236240000000000000
          Width = 600.945147950000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#169'rh'#258#711'nyad Lista')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 542.913412680000000000
          Top = 20.779527560000000000
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
          Left = 592.047620000000000000
          Top = 20.779530000000000000
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
          Left = 660.078764570000000000
          Top = 20.779530000000000000
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
        object Line1: TfrxLineView
          Align = baWidth
          Top = 43.456661180000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          Align = baCenter
          Left = 185.197011495000000000
          Top = 4.102350000000000000
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
            'WinTarka - H'#258#351'shaszn'#258#351' szarvasmarha nyilv'#258#711'ntart'#258#322' program ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 24.669140000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBVerhanyadLista
        DataSetName = 'frxDBVerhanyadLista'
        RowCount = 0
        object Memo24: TfrxMemoView
          Left = 267.448982440000000000
          Top = 1.991960000000000000
          Width = 109.606323620000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBVerhanyadLista."VERH"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 429.968772440000000000
          Top = 1.991960000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBVerhanyadLista."MT_DB"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 6.220438270000000000
          Top = 1.991960000000000000
          Width = 109.606323620000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo28OnAfterData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBVerhanyadLista."DATUM"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 137.055197440000000000
          Top = 1.991960000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frxDBVerhanyadLista
          DataSetName = 'frxDBVerhanyadLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBVerhanyadLista."DB"]')
        end
        object Memo5: TfrxMemoView
          Left = 570.709030000000000000
          Top = 1.991960000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBVerhanyadLista."MT_VSZ"]')
          WordBreak = True
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 23.118120000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object Memo36: TfrxMemoView
          Left = 702.094937320000000000
          Top = 2.928879999999990000
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
        object Memo37: TfrxMemoView
          Left = 645.401987320000000000
          Top = 2.928879999999990000
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
        object Memo38: TfrxMemoView
          Left = 690.756347320000000000
          Top = 2.928879999999990000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 26.897650000000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Top = 0.621830000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 75.590570710000000000
        ParentFont = False
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 6.220438270000000000
          Top = 9.440940000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'D'#258#711'tum')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 251.889922440000000000
          Top = 35.897650000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#129'tl. MT v'#258#169'rh'#258#711'nyada')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 123.385900000000000000
          Top = 35.897650000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#711'ma')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 124.724490000000000000
          Top = 7.559060000000000000
          Width = 264.567100000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #313#144'sszes '#258#169'l'#313#8216' egyed')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 551.811382440000000000
          Top = 35.897650000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#129'tl. MT v'#258#169'rh'#258#711'nyada')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 415.748300000000000000
          Top = 35.897650000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#711'ma')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 417.086890000000000000
          Top = 7.559060000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #313#144'sszes '#258#169'l'#313#8216' MT egyed')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 66.133890000000000000
          Width = 718.110700000000000000
          StretchMode = smActualHeight
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
