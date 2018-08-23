inherited SzarmCsopLista: TSzarmCsopLista
  Width = 509
  Height = 317
  Caption = 'Sz'#225'rmaz'#225'si adatok csoportos elemz'#233'se'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 249
    Width = 501
    inherited BitBtn1: TTalBitBtn
      Left = 310
    end
    inherited BitBtn2: TTalBitBtn
      Left = 414
    end
  end
  inherited Panel2: TPanel
    Width = 501
    Height = 249
    object gbSorrend: TTalGroupBox
      Left = 40
      Top = 41
      Width = 401
      Height = 74
      Caption = 'Lista rendezetts'#233'ge '
      TabOrder = 0
      object rbBelt: TRadioButton
        Left = 11
        Top = 40
        Width = 382
        Height = 17
        Caption = 'Belteny'#233'szt'#233'si egy'#252'tthat'#243'ra cs'#246'kken'#337
        TabOrder = 1
      end
      object rbEgyed: TRadioButton
        Left = 11
        Top = 19
        Width = 334
        Height = 17
        Caption = ' egyed azonos'#237't'#243'ra n'#246'vekv'#337
        Checked = True
        TabOrder = 0
        TabStop = True
      end
    end
    object gbKimenet: TTalGroupBox
      Left = 41
      Top = 147
      Width = 269
      Height = 52
      Caption = 'Lista kimenete '
      TabOrder = 1
      object rbExcel: TRadioButton
        Left = 125
        Top = 19
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
  end
  inherited ActionList1: TActionList
    Left = 420
    Top = 156
  end
  object sdsLista: TTalSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 'select *'#13#10'from szarm_rep'#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 'select *'#13#10'from szarm_rep'#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 243
    Top = 88
    object sdsListaBIKA: TWideStringField
      DisplayLabel = 'Bika azonos'#237't'#243
      FieldName = 'BIKA'
      Size = 16
    end
    object sdsListaEGYED: TWideStringField
      DisplayLabel = 'Egyed azonos'#237't'#243
      FieldName = 'EGYED'
      Size = 16
    end
    object sdsListaANYA: TWideStringField
      DisplayLabel = 'Anya ENAR'
      FieldName = 'ANYA'
      Size = 16
    end
    object sdsListaANYA_NAGYANYA: TWideStringField
      DisplayLabel = 'Anyai nagyanya'
      FieldName = 'ANYA_NAGYANYA'
      Size = 16
    end
    object sdsListaANYA_NAGYAPA: TWideStringField
      DisplayLabel = 'Anyai nagyapa'
      FieldName = 'ANYA_NAGYAPA'
      Size = 16
    end
    object sdsListaAPA: TWideStringField
      DisplayLabel = 'Apa azonos'#237't'#243
      FieldName = 'APA'
      Size = 16
    end
    object sdsListaAPA_NAGYANYA: TWideStringField
      DisplayLabel = 'Apai nagyanya'
      FieldName = 'APA_NAGYANYA'
      Size = 16
    end
    object sdsListaAPA_NAGYAPA: TWideStringField
      DisplayLabel = 'Apai nagyapa'
      FieldName = 'APA_NAGYAPA'
      Size = 16
    end
    object sdsListaBELTENY: TBCDField
      DisplayLabel = 'Belteny'#233'szt'#233'si egy'#252'tthat'#243
      FieldName = 'BELTENY'
      Precision = 18
    end
    object sdsListaCSILLAG: TWideStringField
      FieldName = 'CSILLAG'
      Size = 1
    end
  end
  object dtsLista: TDataSource
    DataSet = sdsLista
    Left = 302
    Top = 88
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'BIKA=BIKA'
      'EGYED=EGYED'
      'ANYA=ANYA'
      'ANYA_NAGYANYA=ANYA_NAGYANYA'
      'ANYA_NAGYAPA=ANYA_NAGYAPA'
      'APA=APA'
      'APA_NAGYANYA=APA_NAGYANYA'
      'APA_NAGYAPA=APA_NAGYAPA'
      'BELTENY=BELTENY'
      'CSILLAG=CSILLAG')
    OpenDataSource = False
    DataSet = sdsLista
    Left = 360
    Top = 88
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 39230.840396157400000000
    ReportOptions.LastChange = 41141.449222905100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      ''
      'procedure Memo12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo12OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s:=<frxDBLista."AZONOSITO">;'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo12.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(' +
        's,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo12.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy' +
        '(s,12,1)'
      '     else'
      '       memo12.text := <frxDBLista."AZONOSITO">;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 424
    Top = 88
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
        Name = ' Parameterek'
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
        Name = 'ENAR_KOD'
        Value = Null
      end
      item
        Name = 'TENYESZET_NEv'
        Value = Null
      end
      item
        Name = 'ATKFT_KOD'
        Value = Null
      end
      item
        Name = 'PSION'
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
      DataSet = frmTibor.frxDBdtsTiborTenyeszet
      DataSetName = 'frxDBdtsTiborTenyeszet'
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        Stretched = True
        object Memo1: TfrxMemoView
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
            'WinTarka - H'#258#351'shaszn'#258#351' szarvasmarha nyilv'#258#711'ntart'#258#322' program ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 600.944952680000000000
          Top = 17.007889880000000000
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
          Left = 650.079160000000000000
          Top = 17.007889880000000000
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
        object Memo3: TfrxMemoView
          Left = 249.448980000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ENAR_KOD'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'XXX-XX-XX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."ENAR_KOD"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          Left = 64.252010000000000000
          Top = 15.118126100000000000
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
          WordBreak = True
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118120000000000000
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
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 111.496196020000000000
          Top = 30.236240000000000000
          Width = 495.118307950000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kimutat'#258#711's a p'#258#711'ros'#258#173'tott egyedek sz'#258#711'rmaz'#258#711'si adatair'#258#322'l')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 68.031540000000010000
          Width = 417.638012520000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Rendezetts'#258#169'g: [Rendezettseg]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 28.346446930000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'EGYED'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EGYED"]')
        end
        object Memo10: TfrxMemoView
          Left = 120.944960000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."ANYA"]')
        end
        object Memo13: TfrxMemoView
          Left = 238.110390000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_NAGYANYA'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."ANYA_NAGYANYA"]')
        end
        object Memo14: TfrxMemoView
          Left = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_NAGYAPA'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."ANYA_NAGYAPA"]')
        end
        object Memo15: TfrxMemoView
          Left = 411.968770000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'APA'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."APA"]')
        end
        object Memo16: TfrxMemoView
          Left = 468.661720000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'APA_NAGYANYA'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_NAGYANYA"]')
        end
        object Memo17: TfrxMemoView
          Left = 574.488560000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'APA_NAGYAPA'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."APA_NAGYAPA"]')
        end
        object Memo22: TfrxMemoView
          Left = 650.079160000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'BELTENY'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBLista."BELTENY"]')
        end
        object Memo23: TfrxMemoView
          Left = 702.992580000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'CSILLAG'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."CSILLAG"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        object Memo27: TfrxMemoView
          Left = 582.047627320000000000
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
            
              'Lista - Kimutat'#258#711's a p'#258#711'ros'#258#173'tott egyedek sz'#258#711'rmaz'#258#711'si adatair'#258#322 +
              'l')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Top = 3.779529999999994000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Egyed azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo64: TfrxMemoView
          Left = 251.338745000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 30.236230240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Anyai'
            'nagyanya')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 351.496290000000000000
          Top = 3.779529999999994000
          Width = 52.913420000000000000
          Height = 30.236230240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Anyai'
            'nagyapa')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 410.079005000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 30.236230240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Apa'
            'azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 487.559370000000000000
          Top = 3.779529999999994000
          Width = 64.252010000000000000
          Height = 30.236230240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Apai'
            'nagyanya')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 580.157855000000000000
          Top = 3.779529999999994000
          Width = 52.913420000000000000
          Height = 30.236230240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Apai'
            'nagyapa')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 122.834725000000000000
          Top = 3.779529999999994000
          Width = 105.826840000000000000
          Height = 30.236230240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Anya '
            'azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 633.071275000000000000
          Top = 3.779529999999994000
          Width = 83.149660000000000000
          Height = 30.236230240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Belteny'#258#169'szt'#258#169'si'
            'egy'#258#317'tthat'#258#322' %')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBLista."BIKA"'
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'P'#258#711'ros'#258#173'tott bika: [frxDBLista."BIKA"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000045000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #258#8211'sszesen [COUNT(MasterData1)] egyed van a list'#258#711'n')
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 3.779530000000022000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
