inherited frmTomeg1: TfrmTomeg1
  Left = 795
  Top = 182
  Width = 730
  Height = 533
  Caption = 'Testt'#246'meg adatok'
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 456
    Width = 714
    TabOrder = 1
    inherited btnTorol: TBitBtn
      Left = 476
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 556
    end
    inherited btnCancel: TBitBtn
      Left = 636
    end
    inherited btnModosit: TBitBtn
      Left = 396
    end
    inherited btnUj: TBitBtn
      Left = 316
    end
    inherited btnNyomtat: TBitBtn
      OnClick = btnNyomtatClick
    end
  end
  inherited pnlMod: TTalPanel
    Left = 385
    Top = 38
    Width = 329
    Height = 418
    TabOrder = 2
    object TalLabel7: TTalLabel
      Left = 13
      Top = 130
      Width = 33
      Height = 13
      Caption = 'ENAR:'
    end
    object TalLabel10: TTalLabel
      Left = 13
      Top = 71
      Width = 70
      Height = 13
      Caption = 'M'#233'r'#233's d'#225'tuma:'
    end
    object TalLabel4: TTalLabel
      Left = 13
      Top = 213
      Width = 36
      Height = 13
      Caption = 'T'#246'meg:'
    end
    object TalLabel1: TTalLabel
      Left = 165
      Top = 213
      Width = 12
      Height = 13
      Caption = 'kg'
    end
    object TalLabel2: TTalLabel
      Left = 13
      Top = 154
      Width = 41
      Height = 13
      Caption = 'F'#252'lsz'#225'm:'
    end
    object TalLabel3: TTalLabel
      Left = 13
      Top = 178
      Width = 58
      Height = 13
      Caption = 'Teh'#233'nsz'#225'm:'
    end
    object TalLabel5: TTalLabel
      Left = 13
      Top = 106
      Width = 52
      Height = 13
      Caption = 'Teny'#233'szet:'
    end
    object TalLabel6: TTalLabel
      Left = 13
      Top = 43
      Width = 64
      Height = 13
      Caption = 'M'#233'r'#233's t'#237'pusa:'
    end
    object edtAzonosito: TTalDBEdit
      Left = 101
      Top = 125
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = edtAzonositoExit
      DataField = 'ENAR'
      DataSource = dtsTomeg
    end
    object edtMeresDatum: TTalDBEdit
      Left = 101
      Top = 66
      Width = 89
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
      TabOrder = 1
      OnExit = edtMeresDatumExit
      DataField = 'DATUM'
      DataSource = dtsTomeg
    end
    object edtTomeg: TTalDBEdit
      Left = 101
      Top = 208
      Width = 58
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 3
      DataField = 'TOMEG'
      DataSource = dtsTomeg
    end
    object edtFulszam: TTalDBEdit
      Left = 101
      Top = 149
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 15
      ParentCtl3D = False
      TabOrder = 4
      OnExit = edtAzonositoExit
      DataField = 'FULSZAM'
      DataSource = dtsTomeg
    end
    object edtTehenszam: TTalDBEdit
      Left = 101
      Top = 173
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 15
      ParentCtl3D = False
      TabOrder = 5
      OnExit = edtAzonositoExit
      DataField = 'TEHENSZAM'
      DataSource = dtsTomeg
    end
    object TalDBEdit3: TTalDBEdit
      Left = 101
      Top = 101
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 7
      ParentCtl3D = False
      TabOrder = 6
      OnExit = edtAzonositoExit
      DataField = 'TENYESZET'
      DataSource = dtsTomeg
    end
    object lucMeresTps: TTalDBLookupComboBox
      Left = 101
      Top = 39
      Width = 201
      Height = 21
      DataField = 'MERES_TIPUS'
      DataSource = dtsTomeg
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtmTarka.dtsMeresTip
      TabOrder = 0
      TabStop = False
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 38
    Width = 385
    Height = 418
    IniAttributes.SectionName = 'frmTomeg1'
    DataSource = dtsTomeg
    TabOrder = 3
  end
  object pnlKeres: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 714
    Height = 38
    Align = alTop
    TabOrder = 0
    object lblS2: TTalLabel
      Left = 328
      Top = 12
      Width = 137
      Height = 13
      Caption = 'Utols'#243' m'#243'dos'#237't'#225's d'#225'tuma >= '
    end
    object lblS1: TTalLabel
      Left = 191
      Top = 12
      Width = 122
      Height = 13
      Caption = 'Megjelen'#237'tett adatok:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TalLabel18: TTalLabel
      Left = 8
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object edtDatTol: TTalMaskEdit
      Left = 475
      Top = 8
      Width = 66
      Height = 21
      Hint = 'Enn'#233'l a napn'#225'l nagyobb d'#225'tum'#250' adatok lesznek a list'#225'n'
      TabStop = False
      EditMask = '!9999.99.00;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '    .  .  '
    end
    object btnLeker: TBitBtn
      Left = 553
      Top = 5
      Width = 97
      Height = 27
      Hint = 'Adatlek'#233'r'#233's a sz'#369'r'#337'felt'#233'telek figyelembev'#233'tel'#233'vel'
      Caption = 'Adatlek'#233'r'#233's'
      TabOrder = 1
      TabStop = False
      OnClick = btnLekerClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
        77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
        07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object TalSearch1: TTalSearch
      Left = 58
      Top = 8
      Width = 103
      Height = 21
      TabStop = False
      DataSource = dtsTomeg
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    Left = 236
    Top = 276
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'EGYED_ID=EGYED_ID'
      'TENYESZET=TENYESZET'
      'ENAR=ENAR'
      'DATUM=DATUM'
      'TOMEG=TOMEG'
      'FULSZAM=FULSZAM'
      'TEHENSZAM=TEHENSZAM'
      'MOD_DAT=MOD_DAT'
      'MOD_KOD=MOD_KOD')
    DataSet = sdsTomeg
    Left = 112
    Top = 240
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 40069.875964988420000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo3OnAfterData(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      ''
      'begin'
      '  s := <frxDBDataset1."ENAR">;'
      '  if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo3.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(s' +
        ',10,1)'
      '   Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '      memo3.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy(s' +
        ',12,1) ;'
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 240
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
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
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 204.094681020000000000
          Top = 45.354360000000010000
          Width = 309.921337950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'R'#258#182'gz'#258#173'tett t'#258#182'megm'#258#169'r'#258#169'sek')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
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
        object Memo8: TfrxMemoView
          Left = 514.015762680000000000
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
          Left = 563.149970000000000000
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
          Left = 631.181114570000000000
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
        object Memo35: TfrxMemoView
          Left = 86.929190000000000000
          Top = 71.811070000000030000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SzuroFeltetelek]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 45.354311179999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo36: TfrxMemoView
          Left = 3.779530000000000000
          Top = 71.811070000000030000
          Width = 81.259842520000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#313#177'r'#313#8216' felt'#258#169'telek:')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
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
        object Memo6: TfrxMemoView
          Left = 83.149660000000000000
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
        object Memo37: TfrxMemoView
          Left = 275.905690000000000000
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
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object SysMemo3: TfrxSysMemoView
          Left = -0.000002440000000000
          Width = 34.015750470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 234.330859999999800000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'DATUM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."DATUM"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 60.472479999999270000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'TENYESZET'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."TENYESZET"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 317.480520000000100000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'TOMEG'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."TOMEG"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 143.622139999999900000
          Width = 86.929143620000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo3OnAfterData'
          DataField = 'ENAR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."ENAR"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object Memo39: TfrxMemoView
          Left = 612.283860000000000000
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
        object Memo9: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590590240000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TotalPages#] / [Page]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338582680000000000
          Width = 336.378170000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Adatok karbantart'#258#711'sa -  T'#258#182'megm'#258#169'r'#258#169'sek r'#258#182'gz'#258#173't'#258#169'se  - List'#258#711'z' +
              #258#711's')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = -0.000000000000000444
          Width = 34.015748030000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'sorsz.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 34.015770000000010000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          Left = 151.181199999999900000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Teh'#258#169'n'
            'azon.')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 238.110389999999800000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'M'#258#169'r'#258#169's'
            'd'#258#711'tuma')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 64.252009999999270000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Teny'#258#169'szet')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 313.700990000000100000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'M'#258#169'rt t'#258#182'meg')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 30.236240000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 30.236220470000000000
          Top = 7.559047799999973000
          Width = 56.692913390000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T'#258#169'telsz'#258#711'm:')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 94.488250000000000000
          Top = 7.559059999999988000
          Width = 120.944960000000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 3.779525120000017000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object dtsTomeg: TDataSource
    DataSet = sdsTomeg
    Left = 482
    Top = 320
  end
  object sdsTomeg: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
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
    Provider.DataSet.Connection = dtmTarka.cnTarka
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
    Left = 408
    Top = 320
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
end
