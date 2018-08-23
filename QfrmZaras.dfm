inherited frmZaras: TfrmZaras
  Left = 700
  Top = 215
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
    ReportOptions.LastChange = 42472.855967337960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo21OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo21OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBZarLista2."BORJU_IVAR"> = '#39'1'#39' then'
      '    Memo21.text := '#39'Bik'#225'k'#39';'
      '  if <frxDBZarLista2."BORJU_IVAR"> = '#39'2'#39' then'
      '    Memo21.text := '#39#220'sz'#337'k'#39';'
      '  end;'
      ''
      'procedure Memo61OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBZarLista21."BORJU_IVAR"> = '#39'1'#39' then'
      '    Memo61.text := '#39'Bik'#225'k'#39';'
      '  if <frxDBZarLista21."BORJU_IVAR"> = '#39'2'#39' then'
      '    Memo61.text := '#39#220'sz'#337'k'#39';'
      'end;'
      ''
      ''
      'procedure Memo123OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBBikas."BORJU_IVAR"> = '#39'1'#39' then'
      '    Memo123.text := '#39'Bik'#225'k'#39';'
      '  if <frxDBBikas."BORJU_IVAR"> = '#39'2'#39' then'
      '    Memo123.text := '#39#220'sz'#337'k'#39';'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 336
    Top = 367
    Datasets = <
      item
        DataSet = frxDBBikas
        DataSetName = 'frxDBBikas'
      end
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end
      item
        DataSet = frxDBZarLista
        DataSetName = 'frxDBZarLista'
      end
      item
        DataSet = frxDBZarLista2
        DataSetName = 'frxDBZarLista2'
      end
      item
        DataSet = dtsZarLista21
        DataSetName = 'frxDBZarLista21'
      end
      item
        DataSet = frxDBZarm
        DataSetName = 'frxDBZarM'
      end
      item
        DataSet = frxDBZarU
        DataSetName = 'frxDBZarU'
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
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnAfterPrint = 'Memo21OnAfterData'
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 349.606566495000000000
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
            'Wtarka  '#194#169' 2010')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 929.764062680000000000
          Top = 9.448829880000000000
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
          Left = 978.898270000000000000
          Top = 9.448829880000000000
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
        object Memo6: TfrxMemoView
          Left = 317.480581030000000000
          Top = 26.456710000000000000
          Width = 411.968647950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'VES Z'#258#129'R'#258#129'S  [EV]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 86.929190000000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 194.645795000000000000
          Top = 56.692950000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[TENYESZET]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 122.834696930000000000
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBZarLista
        DataSetName = 'frxDBZarLista'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataSet = frxDBZarLista
          DataSetName = 'frxDBZarLista'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'yyyy.mm'
          DisplayFormat.Kind = fkDateTime
          HAlign = haCenter
          Memo.UTF8 = (
            'Teny'#258#169'szt'#258#169'sben '#258#711'll'#258#322' tehenek sz'#258#711'ma')
        end
        object Memo4: TfrxMemoView
          Left = 226.771800000000000000
          Top = 79.370130000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxDBZarLista
          DataSetName = 'frxDBZarLista'
          Memo.UTF8 = (
            '[frxDBZarLista."BORJU_DB"]')
        end
        object Memo5: TfrxMemoView
          Left = 340.157700000000000000
          Top = 30.236240000000000000
          Width = 215.433210000000000000
          Height = 34.015770000000000000
          DataSet = frxDBZarLista
          DataSetName = 'frxDBZarLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Teny'#258#169'szetbe '#258#711'll'#258#173'tott tehenek sz'#258#711'ma '
            '[frxDBZarLista."TENYBE_ALL"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 340.157700000000000000
          Top = 75.590600000000000000
          Width = 215.433210000000000000
          Height = 34.015770000000000000
          DataSet = frxDBZarLista
          DataSetName = 'frxDBZarLista'
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letkoruk a teny'#258#169'szetbe '#258#711'll'#258#173't'#258#711'skor'
            '[frxDBZarLista."TENYBE_KOR"]')
        end
        object Memo9: TfrxMemoView
          Left = 566.929500000000000000
          Top = 30.236240000000000000
          Width = 170.078850000000000000
          Height = 34.015770000000000000
          DataSet = frxDBZarLista
          DataSetName = 'frxDBZarLista'
          HAlign = haCenter
          Memo.UTF8 = (
            'Selejtezett tehenek sz'#258#711'ma '
            '[frxDBZarLista."SELEJT_DB"]')
        end
        object Memo10: TfrxMemoView
          Left = 226.771800000000000000
          Top = 30.236240000000000000
          Width = 102.047310000000000000
          Height = 37.795300000000000000
          DataSet = frxDBZarLista
          DataSetName = 'frxDBZarLista'
          HAlign = haCenter
          Memo.UTF8 = (
            'Indul'#258#322' l'#258#169'tsz'#258#711'mra jut'#258#322' szaporulat')
        end
        object Memo11: TfrxMemoView
          Left = 275.905690000000000000
          Top = 79.370130000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = frxDBZarLista
          DataSetName = 'frxDBZarLista'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBZarLista."BORJU_SZAZ"] %')
        end
        object Line2: TfrxLineView
          Align = baWidth
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Top = 71.811070000000000000
          Width = 222.992270000000000000
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Align = baWidth
          Top = 113.385900000000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Height = 113.385900000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          Left = 96.378015000000000000
          Top = 3.779529999999990000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'T'#258#711'rgy'#258#169'v kezdet'#258#169'n ')
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 215.433210000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letkoruk a t'#258#711'rgy'#258#169'v kezdet'#258#169'n: '
            '[frxDBZarLista."NYITO_ELETKOR"]')
        end
        object Line7: TfrxLineView
          Left = 336.378170000000000000
          Height = 113.385900000000000000
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 222.992270000000000000
          Top = 26.456710000000000000
          Height = 86.929190000000000000
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 336.378170000000000000
          Top = 71.811070000000000000
          Width = 710.551640000002000000
          Frame.Typ = [ftTop]
        end
        object Memo14: TfrxMemoView
          Left = 464.882190000000000000
          Top = 3.779529999999990000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'T'#258#711'rgy'#258#169'v alatt')
        end
        object Line10: TfrxLineView
          Left = 563.149970000000000000
          Top = 26.456710000000000000
          Height = 86.929190000000000000
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 744.567410000000000000
          Height = 113.385900000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo15: TfrxMemoView
          Left = 566.929500000000000000
          Top = 75.590600000000000000
          Width = 170.078850000000000000
          Height = 34.015770000000000000
          DataSet = frxDBZarLista
          DataSetName = 'frxDBZarLista'
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letkoruk selejtez'#258#169'skor:'
            '[frxDBZarLista."SELEJT_KOR"]')
        end
        object Memo16: TfrxMemoView
          Left = 831.496600000000000000
          Top = 3.779529999999990000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'T'#258#711'rgy'#258#169'v v'#258#169'g'#258#169'n')
        end
        object Memo18: TfrxMemoView
          Left = 791.811535000000000000
          Top = 30.236240000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataSet = frxDBZarLista
          DataSetName = 'frxDBZarLista'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'yyyy.mm'
          DisplayFormat.Kind = fkDateTime
          HAlign = haCenter
          Memo.UTF8 = (
            'Teny'#258#169'szt'#258#169'sben '#258#711'll'#258#322' tehenek sz'#258#711'ma')
        end
        object Line12: TfrxLineView
          Left = 1046.929810000000000000
          Top = 3.779529999999990000
          Height = 109.606370000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo17: TfrxMemoView
          Left = 64.252010000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            ' [frxDBZarLista."NYITO_LETSZAM"]')
        end
        object Memo20: TfrxMemoView
          Left = 852.284015000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista."ZARO_DB"]')
        end
        object Memo19: TfrxMemoView
          Left = 791.811060240000000000
          Top = 75.590600000000000000
          Width = 215.433210000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letkoruk a t'#258#711'rgy'#258#169'v v'#258#169'g'#258#169'n'
            '[frxDBZarLista."ZARO_KOR"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 597.165740000000000000
        Width = 1046.929810000000000000
        object Memo27: TfrxMemoView
          Left = 907.087207320002000000
          Width = 136.063080000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalPages#] / [<Page>].oldal')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Lista - '#258#8240'ves z'#258#711't'#258#711's lista')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 22.677180000000000000
        Top = 464.882190000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBZarLista2
        DataSetName = 'frxDBZarLista2'
        RowCount = 0
        object Memo21: TfrxMemoView
          Left = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo21OnAfterData'
          DataField = 'BORJU_IVAR'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          Memo.UTF8 = (
            '[frxDBZarLista2."BORJU_IVAR"]')
        end
        object Memo24: TfrxMemoView
          Left = 262.677335000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'KONNYU_ELLES'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."KONNYU_ELLES"]')
        end
        object Memo25: TfrxMemoView
          Left = 360.945115000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'SZARVATLAN'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."SZARVATLAN"]')
        end
        object Memo26: TfrxMemoView
          Left = 442.205010000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'SZUL_TOMEG'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."SZUL_TOMEG"]')
        end
        object Memo29: TfrxMemoView
          Left = 512.126315000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'VALASZTOTT_DB'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."VALASZTOTT_DB"]')
        end
        object Memo30: TfrxMemoView
          Left = 602.835035000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'ELETNAP'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."ELETNAP"]')
        end
        object Memo33: TfrxMemoView
          Left = 659.527985000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'VALTOM'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."VALTOM"]')
        end
        object Memo32: TfrxMemoView
          Left = 738.898115000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'ELET_TGYAR'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."ELET_TGYAR"]')
        end
        object Memo31: TfrxMemoView
          Left = 941.102970000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'SV'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."SV"]')
        end
        object Memo47: TfrxMemoView
          Left = 848.504485000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'TOM205'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."TOM205"]')
        end
        object Memo22: TfrxMemoView
          Left = 109.606370000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'IVARDB'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."IVARDB"]')
        end
        object Memo23: TfrxMemoView
          Left = 170.078850000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'VEMH_NAP_DB'
          DataSet = frxDBZarLista2
          DataSetName = 'frxDBZarLista2'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista2."VEMH_NAP_DB"]')
        end
      end
      object Header1: TfrxHeader
        Height = 124.724490000000000000
        Top = 317.480520000000000000
        Width = 1046.929810000000000000
        object Memo34: TfrxMemoView
          Left = 325.039580000000000000
          Top = 47.244125000000000000
          Width = 396.850650000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'A t'#258#711'rgy'#258#169'vben sz'#258#317'letett borjak '#258#711'tlagadatai')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 18.897650000000000000
          Top = 86.929189999999900000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Ivar')
        end
        object Memo36: TfrxMemoView
          Left = 109.606370000000000000
          Top = 86.929189999999900000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Ut'#258#322'dok '
            'sz'#258#711'ma')
        end
        object Memo37: TfrxMemoView
          Left = 166.299320000000000000
          Top = 86.929189999999900000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Vemhess'#258#169'gi'
            'napok')
        end
        object Memo38: TfrxMemoView
          Left = 253.228510000000000000
          Top = 86.929189999999900000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'K'#258#182'nny'#313#177' ell'#258#169'sek'
            'ar'#258#711'nya')
        end
        object Memo39: TfrxMemoView
          Left = 351.496290000000000000
          Top = 86.929189999999900000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Szarvatlan'
            'ut'#258#322'dok ar'#258#711'nya')
        end
        object Memo40: TfrxMemoView
          Left = 442.205010000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si'
            't'#258#182'meg')
        end
        object Memo41: TfrxMemoView
          Left = 506.457020000000000000
          Top = 86.929189999999900000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'lsztott '
            'ut'#258#322'dok sz'#258#711'ma')
        end
        object Memo42: TfrxMemoView
          Left = 600.945270000000000000
          Top = 86.929189999999900000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letnap')
        end
        object Memo43: TfrxMemoView
          Left = 657.638220000000000000
          Top = 86.929189999999900000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Testt'#258#182'meg')
        end
        object Memo44: TfrxMemoView
          Left = 733.228820000000000000
          Top = 86.929189999999900000
          Width = 98.267780000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letnapi t'#258#182'meg-'
            'gyarapod'#258#711's')
        end
        object Memo45: TfrxMemoView
          Left = 835.276130000000000000
          Top = 86.929189999999900000
          Width = 98.267780000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '205 napos korr.'
            'testt'#258#182'meg')
        end
        object Memo46: TfrxMemoView
          Left = 941.102970000000000000
          Top = 86.929189999999900000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'SV %')
        end
        object Line13: TfrxLineView
          Align = baWidth
          Top = 124.724490000000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        Height = 26.456710000000000000
        Top = 510.236550000000000000
        Width = 1046.929810000000000000
        object Memo48: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779529999999970000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #258#182'sszesen')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 109.606370000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBZarLista2."IVARDB">,MasterData2)]')
        end
        object SysMemo3: TfrxSysMemoView
          Left = 170.078850000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista2."VEMH_NAP_DB">,MasterData2)]')
        end
        object SysMemo4: TfrxSysMemoView
          Left = 264.567100000000000000
          Top = 3.779529999999970000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista2."KONNYU_ELLES">,MasterData2)]')
        end
        object SysMemo5: TfrxSysMemoView
          Left = 362.834880000000000000
          Top = 3.779529999999970000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista2."SZARVATLAN">,MasterData2)]')
        end
        object SysMemo6: TfrxSysMemoView
          Left = 444.094775000000000000
          Top = 3.779529999999970000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista2."SZUL_TOMEG">,MasterData2)]')
        end
        object SysMemo7: TfrxSysMemoView
          Left = 514.016080000000000000
          Top = 3.779529999999970000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBZarLista2."VALASZTOTT_DB">,MasterData2)]')
        end
        object SysMemo8: TfrxSysMemoView
          Left = 600.945270000000000000
          Top = 3.779529999999970000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista2."ELETNAP">,MasterData2)]')
        end
        object SysMemo9: TfrxSysMemoView
          Left = 661.417750000000000000
          Top = 3.779529999999970000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista2."VALTOM">,MasterData2)]')
        end
        object SysMemo10: TfrxSysMemoView
          Left = 738.898115000000000000
          Top = 3.779529999999970000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista2."ELET_TGYAR">,MasterData2)]')
        end
        object SysMemo11: TfrxSysMemoView
          Left = 850.394250000000000000
          Top = 3.779529999999970000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista2."TOM205">,MasterData2)]')
        end
        object SysMemo12: TfrxSysMemoView
          Left = 941.102970000000000000
          Top = 3.779529999999970000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista2."SV">,MasterData2)]')
        end
        object Line14: TfrxLineView
          Align = baWidth
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData4: TfrxMasterData
        Height = 22.677180000000000000
        Top = 166.299320000000000000
        Width = 1046.929810000000000000
        DataSet = dtsZarLista21
        DataSetName = 'frxDBZarLista21'
        RowCount = 0
        object Memo61: TfrxMemoView
          Left = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo61OnAfterData'
          DataField = 'BORJU_IVAR'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          Memo.UTF8 = (
            '[frxDBZarLista21."BORJU_IVAR"]')
        end
        object Memo62: TfrxMemoView
          Left = 262.677335000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'KONNYU_ELLES'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."KONNYU_ELLES"]')
        end
        object Memo63: TfrxMemoView
          Left = 360.945115000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'SZARVATLAN'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."SZARVATLAN"]')
        end
        object Memo64: TfrxMemoView
          Left = 442.205010000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'SZUL_TOMEG'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."SZUL_TOMEG"]')
        end
        object Memo65: TfrxMemoView
          Left = 512.126315000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'VALASZTOTT_DB'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."VALASZTOTT_DB"]')
        end
        object Memo66: TfrxMemoView
          Left = 602.835035000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'ELETNAP'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."ELETNAP"]')
        end
        object Memo67: TfrxMemoView
          Left = 659.527985000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'VALTOM'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."VALTOM"]')
        end
        object Memo68: TfrxMemoView
          Left = 738.898115000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'ELET_TGYAR'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."ELET_TGYAR"]')
        end
        object Memo69: TfrxMemoView
          Left = 941.102970000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'SV'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."SV"]')
        end
        object Memo70: TfrxMemoView
          Left = 848.504485000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'TOM205'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."TOM205"]')
        end
        object Memo71: TfrxMemoView
          Left = 109.606370000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'IVARDB'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."IVARDB"]')
        end
        object Memo72: TfrxMemoView
          Left = 170.078850000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'VEMH_NAP_DB'
          DataSet = dtsZarLista21
          DataSetName = 'frxDBZarLista21'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarLista21."VEMH_NAP_DB"]')
        end
      end
      object Header2: TfrxHeader
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo49: TfrxMemoView
          Left = 325.039580000000000000
          Top = 47.244125000000000000
          Width = 396.850650000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Els'#313#8216'borjas tehenek eredm'#258#169'nyei')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 18.897650000000000000
          Top = 86.929189999999900000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Ivar')
        end
        object Memo51: TfrxMemoView
          Left = 109.606370000000000000
          Top = 86.929189999999900000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Ut'#258#322'dok '
            'sz'#258#711'ma')
        end
        object Memo52: TfrxMemoView
          Left = 166.299320000000000000
          Top = 86.929189999999900000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Vemhess'#258#169'gi'
            'napok')
        end
        object Memo53: TfrxMemoView
          Left = 253.228510000000000000
          Top = 86.929189999999900000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'K'#258#182'nny'#313#177' ell'#258#169'sek'
            'ar'#258#711'nya')
        end
        object Memo54: TfrxMemoView
          Left = 351.496290000000000000
          Top = 86.929189999999900000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Szarvatlan'
            'ut'#258#322'dok ar'#258#711'nya')
        end
        object Memo55: TfrxMemoView
          Left = 442.205010000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si'
            't'#258#182'meg')
        end
        object Memo56: TfrxMemoView
          Left = 506.457020000000000000
          Top = 86.929189999999900000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'lsztott '
            'ut'#258#322'dok sz'#258#711'ma')
        end
        object Memo57: TfrxMemoView
          Left = 600.945270000000000000
          Top = 86.929189999999900000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letnap')
        end
        object Memo58: TfrxMemoView
          Left = 657.638220000000000000
          Top = 86.929189999999900000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Testt'#258#182'meg')
        end
        object Memo59: TfrxMemoView
          Left = 733.228820000000000000
          Top = 86.929189999999900000
          Width = 98.267780000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letnapi t'#258#182'meg-'
            'gyarapod'#258#711's')
        end
        object Memo60: TfrxMemoView
          Left = 835.276130000000000000
          Top = 86.929189999999900000
          Width = 98.267780000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '205 napos korr.'
            'testt'#258#182'meg')
        end
        object Memo73: TfrxMemoView
          Left = 941.102970000000000000
          Top = 86.929189999999900000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'SV %')
        end
        object Line15: TfrxLineView
          Align = baWidth
          Top = 124.724490000000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
      end
      object Footer2: TfrxFooter
        Height = 26.456710000000000000
        Top = 211.653680000000000000
        Width = 1046.929810000000000000
        object Memo74: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779529999999970000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #258#182'sszesen')
        end
        object SysMemo13: TfrxSysMemoView
          Left = 109.606370000000000000
          Top = 3.779530000000020000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBZarLista21."IVARDB">,MasterData4)]')
        end
        object SysMemo14: TfrxSysMemoView
          Left = 170.078850000000000000
          Top = 3.779530000000020000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista21."VEMH_NAP_DB">,MasterData4)]')
        end
        object SysMemo15: TfrxSysMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000020000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista21."KONNYU_ELLES">,MasterData4)]')
        end
        object SysMemo16: TfrxSysMemoView
          Left = 362.834880000000000000
          Top = 3.779530000000020000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista21."SZARVATLAN">,MasterData4)]')
        end
        object SysMemo17: TfrxSysMemoView
          Left = 444.094775000000000000
          Top = 3.779530000000020000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista21."SZUL_TOMEG">,MasterData4)]')
        end
        object SysMemo18: TfrxSysMemoView
          Left = 514.016080000000000000
          Top = 3.779530000000020000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBZarLista21."VALASZTOTT_DB">,MasterData4)]')
        end
        object SysMemo19: TfrxSysMemoView
          Left = 600.945270000000000000
          Top = 3.779530000000020000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista21."ELETNAP">,MasterData4)]')
        end
        object SysMemo20: TfrxSysMemoView
          Left = 661.417750000000000000
          Top = 3.779530000000020000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista21."VALTOM">,MasterData4)]')
        end
        object SysMemo21: TfrxSysMemoView
          Left = 738.898115000000000000
          Top = 3.779530000000020000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista21."ELET_TGYAR">,MasterData4)]')
        end
        object SysMemo22: TfrxSysMemoView
          Left = 850.394250000000000000
          Top = 3.779530000000020000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista21."TOM205">,MasterData4)]')
        end
        object SysMemo23: TfrxSysMemoView
          Left = 941.102970000000000000
          Top = 3.779530000000020000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarLista21."SV">,MasterData4)]')
        end
        object Line16: TfrxLineView
          Align = baWidth
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
      end
      object MasterData3: TfrxMasterData
        Height = 26.456710000000000000
        Top = 396.850650000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBZarU
        DataSetName = 'frxDBZarU'
        RowCount = 0
        object Memo104: TfrxMemoView
          Left = 126.614255000000000000
          Width = 41.574830000000000000
          Height = 18.897637800000000000
          DataField = 'VALTOM'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."VALTOM"]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 194.645802320000000000
          Width = 49.133875350000000000
          Height = 18.897637800000000000
          DataField = 'TOM205'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."TOM205"]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 398.740422320000000000
          Width = 41.574815350000000000
          Height = 18.897637800000000000
          DataField = 'T1TOMEG'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."T1TOMEG"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 515.905852330000000000
          Width = 49.133875350000000000
          Height = 18.897637800000000000
          DataField = 'T2TOMEG'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."T2TOMEG"]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 589.606687320000000000
          Width = 49.133875350000000000
          Height = 18.897637800000000000
          DataField = 'TGYVAL'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."TGYVAL"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo112: TfrxMemoView
          Left = 848.504492320000000000
          Width = 34.015755350000000000
          Height = 18.897637800000000000
          DataField = 'IZOM'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBZarU."IZOM"]')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 799.370602320000000000
          Width = 30.236225350000000000
          Height = 18.897637800000000000
          DataField = 'TIPUS'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBZarU."TIPUS"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 905.197442320000000000
          Width = 30.236225350000000000
          Height = 18.897637800000000000
          DataField = 'LAB'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBZarU."LAB"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 277.795462320000000000
          Width = 37.795285350000000000
          Height = 18.897637800000000000
          DataField = 'SV'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."SV"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo116: TfrxMemoView
          Left = 88.818963540000000000
          Width = 34.015752910000000000
          Height = 18.897637800000000000
          DataField = 'ENAPVAL'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."ENAPVAL"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 733.228820000000000000
          Width = 49.133890000000000000
          Height = 18.897637800000000000
          DataField = 'T2ELET'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."T2ELET"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 661.417757320000000000
          Width = 52.913405350000000000
          Height = 18.897637800000000000
          DataField = 'T2HIZ'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."T2HIZ"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo78: TfrxMemoView
          Left = 334.488405000000000000
          Width = 45.354360000000000000
          Height = 18.897637800000000000
          DataField = 'T1_ELETNAP'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."T1_ELETNAP"]')
        end
        object Memo83: TfrxMemoView
          Left = 459.212895000000000000
          Width = 45.354360000000000000
          Height = 18.897637800000000000
          DataField = 'T2_ELETNAP'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."T2_ELETNAP"]')
        end
        object Memo171: TfrxMemoView
          Left = 1.889763780000000000
          Width = 83.149642910000000000
          Height = 18.897637800000000000
          DataField = 'ENAR'
          DataSet = frxDBZarU
          DataSetName = 'frxDBZarU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarU."ENAR"]')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Top = 18.897650000000000000
          Width = 789.921770000000000000
          Frame.Typ = [ftTop]
        end
        object Line22: TfrxLineView
          Left = 771.024120000000000000
          Top = 18.897650000000000000
          Width = 170.078850000000000000
          Frame.Typ = [ftTop]
        end
      end
      object Header3: TfrxHeader
        Height = 113.385900000000000000
        Top = 260.787570000000000000
        Width = 1046.929810000000000000
        StartNewPage = True
        object Shape3: TfrxShapeView
          Left = 328.819110000000000000
          Top = 68.031539999999900000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
        end
        object Memo75: TfrxMemoView
          Left = 332.598640000000000000
          Top = 68.031540000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Az '#258#347'STV elej'#258#169'n ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape4: TfrxShapeView
          Left = 385.512060000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Memo76: TfrxMemoView
          Left = 385.512060000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            't'#258#182'meg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape7: TfrxShapeView
          Left = 86.929190000000000000
          Top = 90.708720000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
        end
        object Memo77: TfrxMemoView
          Left = 86.929190000000000000
          Top = 90.708720000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'kor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape9: TfrxShapeView
          Top = 68.031540000000000000
          Width = 86.929190000000000000
          Height = 45.354360000000000000
        end
        object Shape11: TfrxShapeView
          Left = 124.724490000000000000
          Top = 90.708720000000000000
          Width = 45.354330710000000000
          Height = 22.677180000000000000
        end
        object Memo84: TfrxMemoView
          Left = 124.724490000000000000
          Top = 90.708720000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            't'#258#182'meg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape12: TfrxShapeView
          Left = 170.078850000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
        end
        object Memo85: TfrxMemoView
          Left = 170.078850000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '205.n.k.t'#258#182'meg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 578.268090000000000000
          Top = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711'sig')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 653.858690000000000000
          Top = 90.708720000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #258#347'STV alatt')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 793.701300000000000000
          Top = 90.708720000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'T'#258#173'pus')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 835.276130000000000000
          Top = 90.708720000000000000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Izmolts'#258#711'g')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 578.268090000000000000
          Top = 68.031539999999900000
          Width = 215.433166060000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #258#129'tlagos napi t'#258#182'meggyarapod'#258#711's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 793.701300000000000000
          Top = 68.031540000000000000
          Width = 147.401626060000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'K'#258#317'llemi b'#258#173'r'#258#711'lat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 56.692950000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SV %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 86.929190000000000000
          Top = 68.031540000000000000
          Width = 241.889920000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711's adatai')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 328.819110000000000000
          Top = 90.708720000000000000
          Width = 56.692950000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'kor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 725.669760000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'let napra')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 899.528140000000000000
          Top = 90.708720000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'L'#258#711'b')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 453.543600000000000000
          Top = 68.031539999999900000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Az '#258#347'STV v'#258#169'g'#258#169'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.149660000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'sz'#258#711'ma')
        end
        object Memo82: TfrxMemoView
          Left = 453.543600000000000000
          Top = 90.708720000000000000
          Width = 56.692950000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'kor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 510.236550000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            't'#258#182'meg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 325.039580000000000000
          Top = 30.236240000000000000
          Width = 396.850650000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'A t'#258#711'rgy'#258#169'vben '#258#347'STV-be '#258#711'll'#258#173'tott bik'#258#711'k '#258#711'tlagadatai')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        Height = 22.677180000000000000
        Top = 445.984540000000000000
        Width = 1046.929810000000000000
        object SysMemo25: TfrxSysMemoView
          Left = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[COUNT(MasterData3,1)]')
        end
        object SysMemo24: TfrxSysMemoView
          Left = 88.818897640000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."ENAPVAL">,MasterData3,1)]')
        end
        object SysMemo26: TfrxSysMemoView
          Left = 126.614255000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."VALTOM">,MasterData3,1)]')
        end
        object SysMemo27: TfrxSysMemoView
          Left = 194.645669290000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."TOM205">,MasterData3,1)]')
        end
        object SysMemo28: TfrxSysMemoView
          Left = 279.685220000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."SV">,MasterData3,1)]')
        end
        object SysMemo29: TfrxSysMemoView
          Left = 334.488405000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."T1_ELETNAP">,MasterData3,1)]')
        end
        object SysMemo30: TfrxSysMemoView
          Left = 398.740422320000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."T1TOMEG">,MasterData3,1)]')
        end
        object SysMemo31: TfrxSysMemoView
          Left = 459.212895000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."T2_ELETNAP">,MasterData3,1)]')
        end
        object SysMemo32: TfrxSysMemoView
          Left = 515.905852330000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."T2TOMEG">,MasterData3,1)]')
        end
        object SysMemo33: TfrxSysMemoView
          Left = 589.606680000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."TGYVAL">,MasterData3,1)]')
        end
        object SysMemo34: TfrxSysMemoView
          Left = 661.417750000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."T2HIZ">,MasterData3,1)]')
        end
        object SysMemo35: TfrxSysMemoView
          Left = 733.228820000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."T2ELET">,MasterData3,1)]')
        end
        object SysMemo36: TfrxSysMemoView
          Left = 797.480830000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."TIPUS">,MasterData3,1)]')
        end
        object SysMemo37: TfrxSysMemoView
          Left = 848.504492320000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."IZOM">,MasterData3,1)]')
        end
        object SysMemo38: TfrxSysMemoView
          Left = 905.197442320000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBZarU."LAB">,MasterData3,1)]')
        end
        object Line18: TfrxLineView
          Top = 22.677180000000000000
          Width = 941.102970000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page3: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData5: TfrxMasterData
        Height = 26.456710000000000000
        Top = 185.196970000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBZarm
        DataSetName = 'frxDBZarM'
        RowCount = 0
        object Memo98: TfrxMemoView
          Left = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'DB'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."DB"]')
        end
        object Memo99: TfrxMemoView
          Left = 83.149672200000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'FARMAG'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."FARMAG"]')
        end
        object Memo100: TfrxMemoView
          Left = 151.181190235000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'FARHOSSZ'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."FARHOSSZ"]')
        end
        object Memo101: TfrxMemoView
          Left = 219.212730235000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'FARSZEL'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."FARSZEL"]')
        end
        object Memo102: TfrxMemoView
          Left = 287.244270235000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'TORZSHOSSZ'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."TORZSHOSSZ"]')
        end
        object Memo103: TfrxMemoView
          Left = 355.275810235000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'TORZSMELY'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."TORZSMELY"]')
        end
        object Memo107: TfrxMemoView
          Left = 423.307372200000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'COMBIZOM'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."COMBIZOM"]')
        end
        object Memo108: TfrxMemoView
          Left = 491.338912200000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'LAPIZOM'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."LAPIZOM"]')
        end
        object Memo109: TfrxMemoView
          Left = 559.370452205000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'FARLEJT'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."FARLEJT"]')
        end
        object Memo119: TfrxMemoView
          Left = 627.401992200000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'HATSOLAB'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."HATSOLAB"]')
        end
        object Memo120: TfrxMemoView
          Left = 695.433532200000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'TIPUS'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBZarM."TIPUS"]')
        end
        object Memo121: TfrxMemoView
          Left = 763.465072200000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'IZOM'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '[frxDBZarM."IZOM"]')
        end
        object Memo122: TfrxMemoView
          Left = 840.945437200000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'LAB'
          DataSet = frxDBZarm
          DataSetName = 'frxDBZarM'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '[frxDBZarM."LAB"]')
        end
        object Line17: TfrxLineView
          Top = 22.677180000000000000
          Width = 899.528139999999000000
          Frame.Typ = [ftTop]
        end
      end
      object Header4: TfrxHeader
        Height = 143.622140000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo124: TfrxMemoView
          Left = 340.157700000000000000
          Top = 90.708720000000000000
          Width = 68.031496060000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'T'#258#182'rzs-'
            'm'#258#169'lys'#258#169'g')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 68.031540000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Far-'
            'magass'#258#711'g')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 136.063080000000000000
          Top = 90.708720000000000000
          Width = 68.031496060000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Far-'
            'hossz'#258#351's'#258#711'g')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 544.252320000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Far-'
            'lejt'#258#169's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 612.283860000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'H'#258#711'ts'#258#322' l'#258#711'b'
            'oldaln'#258#169'zetben')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 680.315400000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'T'#258#173'pus')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 748.346940000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Izmolts'#258#711'g')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 680.315400000000000000
          Top = 68.031540000000000000
          Width = 222.992226060000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'F'#313#8216' tulajdons'#258#711'gok')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 204.094620000000000000
          Top = 90.708720000000000000
          Width = 68.031496060000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Far-'
            'sz'#258#169'less'#258#169'g')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 68.031540000000000000
          Top = 68.031540000000000000
          Width = 612.283860000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Le'#258#173'r'#258#322' r'#258#169'sz')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 68.031496060000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'T'#258#182'rzs-'
            'hossz'#258#351's'#258#711'g')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 816.378480000000000000
          Top = 90.708720000000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'L'#258#711'bszerkezet')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          Top = 68.031540000000000000
          Width = 68.031540000000000000
          Height = 56.692950000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'B'#258#173'r'#258#711'lt tehenek '
            'sz'#258#711'ma')
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 408.189240000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Comb'
            'izmolts'#258#711'g')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 476.220780000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Lapocka'
            'izmolts'#258#711'g')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 275.905690000000000000
          Top = 30.236240000000000000
          Width = 495.118430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'A t'#258#711'rgy'#258#169'vben b'#258#173'r'#258#711'lt any'#258#711'k k'#258#317'llemi pontsz'#258#711'mainak '#258#711'tlaga')
          ParentFont = False
        end
      end
      object MasterData6: TfrxMasterData
        Height = 26.456710000000000000
        Top = 408.189240000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBBikas
        DataSetName = 'frxDBBikas'
        RowCount = 0
        object Memo123: TfrxMemoView
          Left = 298.582870000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo123OnAfterData'
          DataField = 'BORJU_IVAR'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          Memo.UTF8 = (
            '[frxDBBikas."BORJU_IVAR"]')
        end
        object Memo126: TfrxMemoView
          Left = 489.449135000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'KONNYU_ELLES'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."KONNYU_ELLES"]')
        end
        object Memo132: TfrxMemoView
          Left = 544.252320000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'SZARVATLAN'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."SZARVATLAN"]')
        end
        object Memo137: TfrxMemoView
          Left = 616.063390000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'SZUL_TOMEG'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."SZUL_TOMEG"]')
        end
        object Memo139: TfrxMemoView
          Left = 682.205165000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'VALASZTOTT_DB'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."VALASZTOTT_DB"]')
        end
        object Memo144: TfrxMemoView
          Left = 810.709185000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'ELETNAP'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."ELETNAP"]')
        end
        object Memo145: TfrxMemoView
          Left = 742.677645000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'VALTOM'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."VALTOM"]')
        end
        object Memo146: TfrxMemoView
          Left = 861.732840000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ELET_TGYAR'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."ELET_TGYAR"]')
        end
        object Memo147: TfrxMemoView
          Left = 1009.134510000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'SV'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."SV"]')
        end
        object Memo148: TfrxMemoView
          Left = 939.213205000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'TOM205'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."TOM205"]')
        end
        object Memo149: TfrxMemoView
          Left = 362.834880000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'IVARDB'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."IVARDB"]')
        end
        object Memo150: TfrxMemoView
          Left = 421.417595000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'SZUL_TOMEG'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBBikas."SZUL_TOMEG"]')
        end
        object Memo165: TfrxMemoView
          Left = -0.000000000000000444
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'KPLSZ'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          Memo.UTF8 = (
            '[frxDBBikas."KPLSZ"]')
          SuppressRepeated = True
        end
        object Memo166: TfrxMemoView
          Left = 45.354360000000000000
          Width = 151.181200000000000000
          Height = 26.456710000000000000
          DataField = 'NEV'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBBikas."NEV"]')
          ParentFont = False
          SuppressRepeated = True
          WordBreak = True
        end
        object Memo167: TfrxMemoView
          Left = 200.315090000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'FNEV'
          DataSet = frxDBBikas
          DataSetName = 'frxDBBikas'
          Memo.UTF8 = (
            '[frxDBBikas."FNEV"]')
          SuppressRepeated = True
          WordBreak = True
        end
      end
      object Header5: TfrxHeader
        Height = 124.724490000000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Memo151: TfrxMemoView
          Left = 325.039580000000000000
          Top = 24.566944999999900000
          Width = 396.850650000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ap'#258#711'nk'#258#169'nti '#258#182'sszes'#258#173't'#313#8216)
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 298.582870000000000000
          Top = 71.811070000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            'Ivar')
        end
        object Memo153: TfrxMemoView
          Left = 362.834880000000000000
          Top = 71.811070000000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Ut'#258#322'dok '
            'sz'#258#711'ma')
        end
        object Memo155: TfrxMemoView
          Left = 480.000310000001000000
          Top = 71.811070000000000000
          Width = 60.472480000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'K'#258#182'nny'#313#177
            'ell'#258#169'sek'
            'ar'#258#711'nya')
        end
        object Memo156: TfrxMemoView
          Left = 544.252320000001000000
          Top = 71.811070000000000000
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Szarvatlan'
            'ut'#258#322'dok '
            'ar'#258#711'nya')
        end
        object Memo157: TfrxMemoView
          Left = 616.063390000001000000
          Top = 71.811070000000000000
          Width = 56.692950000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si'
            't'#258#182'meg')
        end
        object Memo158: TfrxMemoView
          Left = 680.315400000001000000
          Top = 71.811070000000000000
          Width = 56.692950000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'lsztott '
            'ut'#258#322'dok '
            'sz'#258#711'ma')
        end
        object Memo159: TfrxMemoView
          Left = 808.819420000001000000
          Top = 71.811070000000000000
          Width = 49.133890000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letnap')
        end
        object Memo160: TfrxMemoView
          Left = 740.787880000001000000
          Top = 71.811070000000000000
          Width = 64.252010000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711'si'
            't'#258#182'meg')
        end
        object Memo161: TfrxMemoView
          Left = 861.732840000001000000
          Top = 71.811070000000000000
          Width = 71.811070000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letnapi '
            't'#258#182'meg-'
            'gyarapod'#258#711's')
        end
        object Memo162: TfrxMemoView
          Left = 937.323440000002000000
          Top = 71.811070000000000000
          Width = 68.031540000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '205 napos'
            'korrig'#258#711'lt'
            'testt'#258#182'meg')
        end
        object Memo163: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 71.811070000000000000
          Width = 34.015770000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'SV %')
        end
        object Line19: TfrxLineView
          Align = baWidth
          Top = 124.724490000000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Memo154: TfrxMemoView
          Left = 415.748300000000000000
          Top = 71.811070000000000000
          Width = 60.472480000000000000
          Height = 52.913420000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si'
            't'#258#182'meg')
        end
        object Memo168: TfrxMemoView
          Left = -0.000000000000000444
          Top = 71.811070000000000000
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            'Kplsz')
        end
        object Memo169: TfrxMemoView
          Left = 41.574830000000000000
          Top = 71.811070000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            'N'#258#169'v')
        end
        object Memo170: TfrxMemoView
          Left = 196.535560000000000000
          Top = 71.811070000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            'Fajta')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 3.779530000000000000
        Top = 381.732530000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBBikas."KPLSZ"'
        KeepTogether = True
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 30.236240000000000000
        Top = 457.323130000000000000
        Width = 1046.929810000000000000
        object Memo164: TfrxMemoView
          Left = 298.582870000000000000
          Top = 3.779530000000020000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #258#182'sszesen')
        end
        object SysMemo39: TfrxSysMemoView
          Left = 362.834880000000000000
          Top = 3.779530000000020000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBBikas."IVARDB">,MasterData6)]')
        end
        object SysMemo41: TfrxSysMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000020000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBBikas."KONNYU_ELLES">,MasterData6)]')
        end
        object SysMemo42: TfrxSysMemoView
          Left = 544.251968503937000000
          Top = 3.779530000000020000
          Width = 68.031496062992100000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBBikas."SZARVATLAN">,MasterData6)]')
        end
        object SysMemo43: TfrxSysMemoView
          Left = 616.063390000000000000
          Top = 3.779530000000020000
          Width = 56.692913385826800000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBBikas."SZUL_TOMEG">,MasterData6)]')
        end
        object SysMemo44: TfrxSysMemoView
          Left = 682.205165000000000000
          Top = 3.779530000000020000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBBikas."VALASZTOTT_DB">,MasterData6)]')
        end
        object SysMemo45: TfrxSysMemoView
          Left = 810.708661417323000000
          Top = 3.779530000000020000
          Width = 45.354330708661400000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBBikas."ELETNAP">,MasterData6)]')
        end
        object SysMemo46: TfrxSysMemoView
          Left = 742.677165354331000000
          Top = 3.779530000000020000
          Width = 64.251968503937000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBBikas."VALTOM">,MasterData6)]')
        end
        object SysMemo47: TfrxSysMemoView
          Left = 861.732840000000000000
          Top = 3.779530000000020000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBBikas."ELET_TGYAR">,MasterData6)]')
        end
        object SysMemo48: TfrxSysMemoView
          Left = 939.212598425197000000
          Top = 3.779530000000020000
          Width = 64.251968503937000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBBikas."TOM205">,MasterData6)]')
        end
        object SysMemo49: TfrxSysMemoView
          Left = 1009.134510000000000000
          Top = 3.779530000000020000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBBikas."SV">,MasterData6)]')
        end
        object Line20: TfrxLineView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object SysMemo40: TfrxSysMemoView
          Left = 421.417595000000000000
          Top = 3.779530000000020000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBBikas."SZUL_TOMEG">,MasterData6)]')
        end
      end
    end
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
      Precision = 38
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
      Precision = 38
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
      Precision = 38
      Size = 0
    end
    object sdsZarLstUT1_HIZNAP: TBCDField
      FieldName = 'T1_HIZNAP'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object sdsZarLstUT1ELET: TBCDField
      FieldName = 'T1ELET'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object sdsZarLstUT1HIZ: TBCDField
      FieldName = 'T1HIZ'
      ReadOnly = True
      Precision = 38
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
      Precision = 38
      Size = 0
    end
    object sdsZarLstUT2_HIZNAP: TBCDField
      FieldName = 'T2_HIZNAP'
      ReadOnly = True
      Precision = 38
    end
    object sdsZarLstUT2ELET: TBCDField
      FieldName = 'T2ELET'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object sdsZarLstUT2HIZ: TBCDField
      FieldName = 'T2HIZ'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object sdsZarLstUTIPUS: TBCDField
      FieldName = 'TIPUS'
      ReadOnly = True
      Precision = 38
    end
    object sdsZarLstUIZOM: TBCDField
      FieldName = 'IZOM'
      ReadOnly = True
      Precision = 38
    end
    object sdsZarLstULAB: TBCDField
      FieldName = 'LAB'
      ReadOnly = True
      Precision = 38
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
      Precision = 38
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
    DataSet.CommandText = 
      'select ANYA.ENAR, ANYA.TEHENSZAM,'#13#10'ANYA.SZULDAT,ANYA.APAKLSZ,'#13#10'c' +
      'ast(COUNT(BORJAK.id) as numeric(18,0)) as BORJU_DB,'#13#10'cast(SUM(co' +
      'alesce( BO.VALTOM , 0)) as numeric(18,0)) as VAL_TOM,'#13#10'cast(AVG(' +
      'coalesce( BO.VALTOM , 0)) as numeric(18,2)) as ATL_TOM,'#13#10'cast(SU' +
      'M(coalesce( BO.TOM205 , 0)) as numeric(18,0)) as TOM205,'#13#10'cast(A' +
      'VG(coalesce( BO.TOM205 , 0)) as numeric(18,2)) as ATL_TOM205'#13#10'fr' +
      'om EGYEDEK ANYA'#13#10'join ELLESEK on ELLESEK.EGYED_ID = ANYA.id'#13#10'lef' +
      't join BORJAK on BORJAK.ELLESEK_ID = ELLESEK.id'#13#10'left join EGYED' +
      'EK BO on BO.ENAR = BORJAK.BORJU_ENAR and TRIM(BORJU_ENAR) is not' +
      ' null'#13#10'where ANYA.IVAR = '#39'2'#39'   and BO.VALDAT > TO_DATE('#39'1970.01.' +
      '01'#39','#39'YYYY.MM.DD'#39') '#13#10
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'select ANYA.ENAR, ANYA.TEHENSZAM,'#13#10'ANYA.SZULDAT,ANYA.APAKLSZ,'#13#10'c' +
      'ast(COUNT(BORJAK.id) as numeric(18,0)) as BORJU_DB,'#13#10'cast(SUM(co' +
      'alesce( BO.VALTOM , 0)) as numeric(18,0)) as VAL_TOM,'#13#10'cast(AVG(' +
      'coalesce( BO.VALTOM , 0)) as numeric(18,2)) as ATL_TOM,'#13#10'cast(SU' +
      'M(coalesce( BO.TOM205 , 0)) as numeric(18,0)) as TOM205,'#13#10'cast(A' +
      'VG(coalesce( BO.TOM205 , 0)) as numeric(18,2)) as ATL_TOM205'#13#10'fr' +
      'om EGYEDEK ANYA'#13#10'join ELLESEK on ELLESEK.EGYED_ID = ANYA.id'#13#10'lef' +
      't join BORJAK on BORJAK.ELLESEK_ID = ELLESEK.id'#13#10'left join EGYED' +
      'EK BO on BO.ENAR = BORJAK.BORJU_ENAR and TRIM(BORJU_ENAR) is not' +
      ' null'#13#10'where ANYA.IVAR = '#39'2'#39'   and BO.VALDAT > TO_DATE('#39'1970.01.' +
      '01'#39','#39'YYYY.MM.DD'#39') '#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 192
    Top = 263
    object sdsElitListaENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsElitListaTEHENSZAM: TWideStringField
      FieldName = 'TEHENSZAM'
      Size = 15
    end
    object sdsElitListaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsElitListaAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
      Size = 10
    end
    object sdsElitListaBORJU_DB: TBCDField
      FieldName = 'BORJU_DB'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object sdsElitListaVAL_TOM: TBCDField
      FieldName = 'VAL_TOM'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object sdsElitListaATL_TOM: TBCDField
      FieldName = 'ATL_TOM'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sdsElitListaTOM205: TBCDField
      FieldName = 'TOM205'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object sdsElitListaATL_TOM205: TBCDField
      FieldName = 'ATL_TOM205'
      ReadOnly = True
      Precision = 18
      Size = 2
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
      'BORJU_DB=BORJU_DB'
      'VAL_TOM=VAL_TOM'
      'ATL_TOM=ATL_TOM'
      'TOM205=TOM205'
      'ATL_TOM205=ATL_TOM205')
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
