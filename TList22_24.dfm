object frmMeresiAdatok: TfrmMeresiAdatok
  Left = 1208
  Top = 439
  Width = 661
  Height = 392
  Caption = 'List'#225'k'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbListanev: TLabel
    Left = 105
    Top = 48
    Width = 406
    Height = 18
    Alignment = taCenter
    AutoSize = False
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbTenyeszet: TLabel
    Left = 37
    Top = 30
    Width = 64
    Height = 16
    AutoSize = False
    Caption = 'Teny'#233'szet:'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object cbTenyeszet: TComboBox
    Left = 117
    Top = 28
    Width = 113
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object bbtnPrint: TBitBtn
    Left = 404
    Top = 282
    Width = 75
    Height = 25
    Caption = 'Nyomtat'#225's'
    TabOrder = 1
    OnClick = bbtnPrintClick
  end
  object BitBtn2: TBitBtn
    Left = 504
    Top = 282
    Width = 75
    Height = 25
    Caption = 'Kil'#233'p'#233's'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object TalGroupBox1: TTalGroupBox
    Left = 37
    Top = 71
    Width = 195
    Height = 105
    Caption = 'M'#233'r'#233's d'#225'tuma '
    TabOrder = 3
    object TalLabel1: TTalLabel
      Left = 110
      Top = 36
      Width = 18
      Height = 13
      AutoSize = False
      Caption = '-t'#243'l'
    end
    object TalLabel2: TTalLabel
      Left = 110
      Top = 68
      Width = 18
      Height = 13
      AutoSize = False
      Caption = '-ig'
    end
    object TalEdit1: TTalEdit
      Left = 16
      Top = 33
      Width = 90
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
    object TalEdit2: TTalEdit
      Left = 16
      Top = 65
      Width = 90
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
  end
  object TalRadioGroup: TTalRadioGroup
    Left = 324
    Top = 196
    Width = 250
    Height = 50
    Caption = 'Lista kimenete'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Lista'
      'Excel f'#225'jl')
    TabOrder = 4
  end
  object TalGroupBox2: TTalGroupBox
    Left = 324
    Top = 71
    Width = 195
    Height = 105
    Caption = #220'STV-re jel'#246'l'#233's d'#225'tuma'
    TabOrder = 5
    Visible = False
    object TalLabel4: TTalLabel
      Left = 124
      Top = 36
      Width = 16
      Height = 13
      AutoSize = False
      Caption = '-t'#243'l'
    end
    object TalLabel5: TTalLabel
      Left = 124
      Top = 68
      Width = 18
      Height = 13
      AutoSize = False
      Caption = '-ig'
    end
    object TalEdit3: TTalEdit
      Left = 32
      Top = 33
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
    object TalEdit4: TTalEdit
      Left = 32
      Top = 65
      Width = 87
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
  end
  object qTenyeszet: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    Left = 588
    Top = 8
  end
  object sdsListak: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 532
    Top = 16
  end
  object frxDBListak: TfrxDBDataset
    UserName = 'frxDBListak'
    CloseDataSource = False
    DataSet = sdsListak
    Left = 540
    Top = 64
  end
  object frxRepListak: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 40240.498815532400000000
    ReportOptions.LastChange = 42878.922259976850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo2OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '  Memo2.Text := Copy(<frxDBListak."ENAR">,1,5) + '#39'  '#39' + Copy(<fr' +
        'xDBListak."ENAR">,6,4) + '#39'  '#39' + Copy(<frxDBListak."ENAR">,10,1);'
      'end;'
      ''
      'procedure Memo7OnAfterData(Sender: TfrxComponent);'
      'begin'
      
        '  Memo7.Text := Copy(<frxDBListak."ANYA_ENAR">,1,5) + '#39'  '#39' + Cop' +
        'y(<frxDBListak."ANYA_ENAR">,6,4) + '#39'  '#39' + Copy(<frxDBListak."ANY' +
        'A_ENAR">,10,1);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 588
    Top = 64
    Datasets = <
      item
        DataSet = frxDBListak
        DataSetName = 'frxDBListak'
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
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          Align = baCenter
          Left = 196.346624995000000000
          Top = 7.559060000000000000
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
        object Memo29: TfrxMemoView
          Left = 529.133882680000000000
          Top = 30.236240000000000000
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
          Left = 578.268090000000000000
          Top = 30.236240000000000000
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
          Left = 646.299234570000000000
          Top = 30.236240000000000000
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
        object Memo30: TfrxMemoView
          Left = 102.047310000000000000
          Top = 109.606370000000000000
          Width = 154.960730000000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[p4]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 52.913371180000000000
          Width = 740.409927000000000000
          Frame.Typ = [ftTop]
        end
        object Memo31: TfrxMemoView
          Left = 18.897650000000000000
          Top = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Rendezetts'#258#169'g:')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          Left = 18.897650000000000000
          Top = 109.606370000000000000
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
        object Memo34: TfrxMemoView
          Left = 26.456710000000000000
          Top = 30.236240000000000000
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
        object Memo35: TfrxMemoView
          Left = 86.929190000000000000
          Top = 30.236240000000000000
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
        object Memo36: TfrxMemoView
          Left = 279.685220000000000000
          Top = 30.236240000000000000
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
        object Memo16: TfrxMemoView
          Left = 66.141732280000000000
          Top = 60.472440944881900000
          Width = 608.503937010000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            '[p0]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 98.267780000000000000
          Top = 90.708720000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[p3] szerint')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        object Shape23: TfrxShapeView
          Left = 642.520100000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 22.677180000000000000
        end
        object Shape19: TfrxShapeView
          Left = 559.370440000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 22.677180000000000000
        end
        object Shape13: TfrxShapeView
          Left = 336.378170000000000000
          Top = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 22.677180000000000000
        end
        object Memo27: TfrxMemoView
          Left = 366.614410000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Az '#258#347'STV ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape14: TfrxShapeView
          Left = 336.378170000000000000
          Top = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Memo33: TfrxMemoView
          Left = 336.378170000000000000
          Top = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kezdete'
            'd'#258#711'tum,   t'#258#182'meg')
          ParentFont = False
        end
        object Shape21: TfrxShapeView
          Left = 608.504330000000000000
          Top = 11.338590000000000000
          Width = 132.283506060000000000
          Height = 22.677180000000000000
        end
        object Shape17: TfrxShapeView
          Left = 472.441250000000000000
          Top = 11.338590000000000000
          Width = 136.063036060000000000
          Height = 22.677180000000000000
        end
        object Shape3: TfrxShapeView
          Left = 68.031540000000000000
          Top = 34.015770000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Memo4: TfrxMemoView
          Left = 68.031540000000000000
          Top = 34.015770000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Az apja'
            'kpl. sz'#258#711'ma')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Left = 68.031540000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Az anyja'
            'ENAR sz'#258#711'ma')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Left = -0.000000000000000888
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 45.354360000000000000
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 13.228346460000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'A borj'#258#351)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Width = 253.228510000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Teny'#258#169'szet: [p1]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 11.338590000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ENAR')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 11.338590000000000000
          Top = 41.574803150000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'sz'#258#711'ma')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Left = 124.724490000000000000
          Top = 11.338590000000000000
          Width = 45.354330710000000000
          Height = 22.677180000000000000
        end
        object Shape8: TfrxShapeView
          Left = 124.724490000000000000
          Top = 34.015770000000000000
          Width = 45.354330710000000000
          Height = 22.677180000000000000
        end
        object Memo14: TfrxMemoView
          Left = 124.724490000000000000
          Top = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si'
            'ideje')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 124.724490000000000000
          Top = 34.015770000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si'
            't'#258#182'meg')
          ParentFont = False
        end
        object Shape10: TfrxShapeView
          Left = 170.078850000000000000
          Top = 34.015770000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
        end
        object Shape11: TfrxShapeView
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
        end
        object Memo22: TfrxMemoView
          Left = 170.078850000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ideje'
            't'#258#182'meg')
          ParentFont = False
        end
        object Shape16: TfrxShapeView
          Left = 404.409710000000000000
          Top = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Shape18: TfrxShapeView
          Left = 472.441250000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 22.677180000000000000
        end
        object Shape20: TfrxShapeView
          Left = 521.575140000000000000
          Top = 34.015770000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
        end
        object Shape22: TfrxShapeView
          Left = 608.504330000000000000
          Top = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
        end
        object Shape24: TfrxShapeView
          Left = 691.653990000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 22.677180000000000000
        end
        object Memo42: TfrxMemoView
          Left = 404.409710000000000000
          Top = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'befejez'#258#169'se'
            'd'#258#711'tum,   t'#258#182'meg')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 472.441250000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711'sig')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 525.354670000000000000
          Top = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#347'STV alatt')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 612.283860000000000000
          Top = 37.795300000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T'#258#173'pus')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 646.299630000000000000
          Top = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Izmolts'#258#711'g')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 472.441250000000000000
          Top = 15.118120000000000000
          Width = 136.063036060000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#129'tllagos napi t'#258#182'meggyarapod'#258#711's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 608.504330000000000000
          Top = 15.118120000000000000
          Width = 128.503976060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'K'#258#317'llemi b'#258#173'r'#258#711'lat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 230.551330000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            #258#8240'letnap'
            't'#258#182'meggy')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 173.858380000000000000
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711's adatai')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 279.685220000000000000
          Top = 34.015770000000000000
          Width = 56.692950000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '205.n.k.t'#258#182'meg'
            'sv%')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 563.149970000000000000
          Top = 34.015770000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'let napra')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 695.433520000000000000
          Top = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'L'#258#711'b')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 434.645950000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 702.992580000000000000
          Top = 3.779530000000020000
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
          Left = 646.299630000000000000
          Top = 3.779530000000020000
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
          Left = 691.653990000000000000
          Top = 3.779530000000020000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
        object Memo39: TfrxMemoView
          Left = 676.535870000000000000
          Top = 3.779530000000020000
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
        object Memo40: TfrxMemoView
          Left = 15.118120000000000000
          Top = 3.779530000000020000
          Width = 325.039580000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'List'#258#711'k - [p0]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 740.409927000000000000
        DataSet = frxDBListak
        DataSetName = 'frxDBListak'
        RowCount = 0
        object Shape52: TfrxShapeView
          Left = 642.520100000000000000
          Width = 49.133846060000000000
          Height = 22.677180000000000000
        end
        object Shape26: TfrxShapeView
          Left = 472.441250000000000000
          Width = 49.133846060000000000
          Height = 22.677180000000000000
        end
        object Shape50: TfrxShapeView
          Left = 279.685220000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Shape15: TfrxShapeView
          Left = 222.992270000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Shape6: TfrxShapeView
          Left = 124.724490000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
        end
        object Shape4: TfrxShapeView
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Shape5: TfrxShapeView
          Left = 68.031540000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Memo7: TfrxMemoView
          Left = 68.031540000000000000
          Width = 56.692913390000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo7OnAfterData'
          DataField = 'ANYA_ENAR'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."ANYA_ENAR"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 68.031540000000000000
          Top = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo8OnAfterData'
          DataField = 'APAKLSZ'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."APAKLSZ"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 3.779530000000000000
          Width = 64.251973390000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo2OnAfterData'
          DataField = 'ENAR'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."ENAR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 124.724490000000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          DataField = 'SZULDAT'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."SZULDAT"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 124.724490000000000000
          Top = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DataField = 'SZUL_SULY'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."SZUL_SULY"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object Shape9: TfrxShapeView
          Left = 170.078850000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
        end
        object Memo17: TfrxMemoView
          Left = 170.078850000000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          DataField = 'VALDAT'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."VALDAT"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 181.417440000000000000
          Top = 11.338590000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'VALTOM'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."VALTOM"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 291.023622050000000000
          Width = 22.677165350000000000
          Height = 11.338590000000000000
          DataField = 'TOM205'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."TOM205"]')
          ParentFont = False
        end
        object Shape12: TfrxShapeView
          Left = 336.378170000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Memo23: TfrxMemoView
          Left = 355.275820000000000000
          Top = 11.338590000000000000
          Width = 26.456695350000000000
          Height = 11.338590000000000000
          DataField = 'T1TOMEG'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."T1TOMEG"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 347.716760000000000000
          Width = 49.133860710000000000
          Height = 11.338590000000000000
          DataField = 'T1DATUM'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."T1DATUM"]')
          ParentFont = False
        end
        object Shape25: TfrxShapeView
          Left = 404.409710000000000000
          Width = 68.031496060000000000
          Height = 22.677180000000000000
        end
        object Shape27: TfrxShapeView
          Left = 521.575140000000000000
          Width = 37.795256060000000000
          Height = 22.677180000000000000
        end
        object Shape28: TfrxShapeView
          Left = 608.504330000000000000
          Width = 34.015726060000000000
          Height = 22.677180000000000000
        end
        object Shape29: TfrxShapeView
          Left = 691.653990000000000000
          Width = 49.133846060000000000
          Height = 22.677180000000000000
        end
        object Memo52: TfrxMemoView
          Left = 234.330860000000000000
          Top = 11.338590000000000000
          Width = 26.456692913385800000
          Height = 11.338590000000000000
          DataField = 'TGYVAL'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."TGYVAL"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 411.968770000000000000
          Width = 49.133860710000000000
          Height = 11.338582680000000000
          DataField = 'T2DATUM'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."T2DATUM"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 423.307360000000000000
          Top = 11.338590000000000000
          Width = 26.456695350000000000
          Height = 11.338582680000000000
          DataField = 'T2TOMEG'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."T2TOMEG"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 476.220780000000000000
          Top = 7.559060000000000000
          Width = 37.795285350000000000
          Height = 11.338582680000000000
          DataField = 'TGYVAL'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."TGYVAL"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          Left = 291.023810000000000000
          Top = 11.338590000000000000
          Width = 22.677165350000000000
          Height = 11.338590000000000000
          DataField = 'SV'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."SV"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo94: TfrxMemoView
          Left = 234.330708660000000000
          Width = 26.456692910000000000
          Height = 11.338590000000000000
          DataField = 'ENAPVAL'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."ENAPVAL"]')
          ParentFont = False
        end
        object Shape51: TfrxShapeView
          Left = 559.370440000000000000
          Width = 49.133846060000000000
          Height = 22.677180000000000000
        end
        object Memo25: TfrxMemoView
          Left = 566.929500000000000000
          Top = 7.559060000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          DataField = 'T2ELET'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."T2ELET"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 525.354670000000000000
          Top = 7.559060000000000000
          Width = 30.236225350000000000
          Height = 11.338582680000000000
          DataField = 'T2HIZ'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."T2HIZ"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          Left = 650.079160000000000000
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          DataField = 'IZOM'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."IZOM"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 30.236240000000000000
        Top = 381.732530000000000000
        Width = 740.409927000000000000
        object Shape42: TfrxShapeView
          Left = 170.078850000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
        end
        object Shape30: TfrxShapeView
          Left = -0.000000000000000888
          Width = 124.724490000000000000
          Height = 22.677165350000000000
        end
        object Memo21: TfrxMemoView
          Top = -0.000004880000005869
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ' [COUNT(MasterData1)]  bika '#258#711'tlagadata:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape31: TfrxShapeView
          Left = 124.724490000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
        end
        object Shape49: TfrxShapeView
          Left = 222.992116220000000000
          Width = 56.692935350000000000
          Height = 22.677180000000000000
        end
        object Memo51: TfrxMemoView
          Left = 181.417440000000000000
          Top = 11.338590000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."VALTOM">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape33: TfrxShapeView
          Left = 279.685220000000000000
          Width = 56.692935350000000000
          Height = 22.677180000000000000
        end
        object Shape35: TfrxShapeView
          Left = 336.378323780000000000
          Width = 68.031525350000000000
          Height = 22.677180000000000000
        end
        object Shape38: TfrxShapeView
          Left = 404.409863780000000000
          Width = 68.031525350000000000
          Height = 22.677180000000000000
        end
        object Shape41: TfrxShapeView
          Left = 472.441403780000000000
          Width = 49.133875350000000000
          Height = 22.677180000000000000
        end
        object Shape44: TfrxShapeView
          Left = 521.575293780000000000
          Width = 37.795285350000000000
          Height = 22.677180000000000000
        end
        object Shape45: TfrxShapeView
          Left = 559.370593780000000000
          Width = 49.133875350000000000
          Height = 22.677180000000000000
        end
        object Shape46: TfrxShapeView
          Left = 608.504330000000000000
          Width = 34.015755350000000000
          Height = 22.677180000000000000
        end
        object Shape47: TfrxShapeView
          Left = 642.520253780000000000
          Width = 49.133875350000000000
          Height = 22.677180000000000000
        end
        object Shape48: TfrxShapeView
          Left = 691.654143780000000000
          Width = 49.133875350000000000
          Height = 22.677180000000000000
        end
        object Memo53: TfrxMemoView
          Left = 132.283550000000000000
          Top = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."SZUL_SULY">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 234.330860000000000000
          Top = 11.338590000000000000
          Width = 26.456695350000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."TGYVAL">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 355.275590551181000000
          Top = 11.338590000000000000
          Width = 26.456692913385800000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."T1TOMEG">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 423.307086614173000000
          Top = 11.338590000000000000
          Width = 26.456692913385800000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."T2TOMEG">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 476.220780000000000000
          Width = 37.795275590000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."TGYVAL">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 291.023810000000000000
          Top = 11.338590000000000000
          Width = 22.677165350000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."SV">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 234.330860000000000000
          Width = 26.456695350000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."ENAPVAL">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 291.023810000000000000
          Width = 22.677165350000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."TOM205">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 525.354330710000000000
          Width = 30.236220470000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."T2HIZ">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 566.929500000000000000
          Width = 30.236220470000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."T2ELET">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
