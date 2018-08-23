object frmValDat: TfrmValDat
  Left = 561
  Top = 236
  Width = 719
  Height = 426
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
  PixelsPerInch = 96
  TextHeight = 13
  object TalLabel1: TTalLabel
    Left = 148
    Top = 48
    Width = 406
    Height = 18
    Alignment = taCenter
    AutoSize = False
    Caption = 'V'#225'laszt'#225'si adatok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbTenyeszet: TLabel
    Left = 40
    Top = 114
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
    Left = 120
    Top = 112
    Width = 113
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 450
    Top = 342
    Width = 75
    Height = 25
    Caption = 'Nyomtat'#225's'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 550
    Top = 342
    Width = 75
    Height = 25
    Caption = 'Kil'#233'p'#233's'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object TalGroupBox1: TTalGroupBox
    Left = 40
    Top = 155
    Width = 195
    Height = 105
    Caption = 'V'#225'laszt'#225's d'#225'tuma '
    TabOrder = 1
    object TalLabel2: TTalLabel
      Left = 128
      Top = 36
      Width = 18
      Height = 13
      AutoSize = False
      Caption = '-t'#243'l'
    end
    object TalLabel3: TTalLabel
      Left = 128
      Top = 68
      Width = 18
      Height = 13
      AutoSize = False
      Caption = '-ig'
    end
    object TalEdit1: TTalEdit
      Left = 24
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
      Left = 24
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
  object TalRadioGroup2: TTalRadioGroup
    Left = 370
    Top = 272
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
  object TalRadioGroup1: TTalRadioGroup
    Left = 40
    Top = 272
    Width = 250
    Height = 50
    Caption = 'Ivar'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'bika'
      #252'sz'#337
      'mind')
    TabOrder = 2
  end
  object TalGroupBox2: TTalGroupBox
    Left = 370
    Top = 155
    Width = 195
    Height = 105
    Caption = 'Sz'#252'let'#233's d'#225'tuma'
    TabOrder = 3
    object TalLabel4: TTalLabel
      Left = 136
      Top = 36
      Width = 16
      Height = 13
      AutoSize = False
      Caption = '-t'#243'l'
    end
    object TalLabel5: TTalLabel
      Left = 136
      Top = 68
      Width = 18
      Height = 13
      AutoSize = False
      Caption = '-ig'
    end
    object TalEdit3: TTalEdit
      Left = 32
      Top = 33
      Width = 87
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = '0000.00.00'
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
      Text = '0000.00.00'
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      ReadOnly = False
      TabOrder = 1
    end
  end
  object sdsValDat: TTalSimpleDataSet
    Aggregates = <>
    DataSet.Parameters = <>
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 648
    Top = 16
  end
  object frxDBListak: TfrxDBDataset
    UserName = 'frxDBListak'
    CloseDataSource = False
    DataSet = sdsValDat
    Left = 648
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
    ReportOptions.LastChange = 42766.885738645830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 648
    Top = 112
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
      PrintIfEmpty = False
      object ReportTitle1: TfrxReportTitle
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          Align = baCenter
          Left = 196.346624995000000000
          Top = 7.559059999999999000
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
          Width = 389.291590000000000000
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
          Width = 79.370130000000000000
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
          Top = 60.472440944881890000
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
        object Memo68: TfrxMemoView
          Left = 18.897650000000000000
          Top = 124.724490000000000000
          Width = 245.669450000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Teny'#258#169'szet: [p1]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 102.047310000000000000
          Top = 90.708720000000000000
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
            '[p3]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        object Memo4: TfrxMemoView
          Left = 52.913420000000000000
          Width = 41.574830000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Borj'#258#351' ENAR')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 37.795275590551200000
          Width = 721.890230000000000000
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 7.559059999999988000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sorsz.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 117.165430000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Egy'#258#169'b azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 200.315090000000000000
          Width = 52.913420000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Anyja azon. sz.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 264.567100000000000000
          Width = 26.456710000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Apja')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 294.803340000000000000
          Width = 49.133890000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169's d'#258#711'tuma')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 355.275820000000000000
          Width = 26.456710000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'l. t'#258#182'm.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 381.732530000000000000
          Width = 30.236240000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ell'#258#169's lef.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 411.968770000000000000
          Width = 34.015770000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Szarv')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 449.764070000000000000
          Width = 52.913420000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711's d'#258#711'tuma')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 506.457020000000000000
          Width = 30.236240000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'V'#258#711'l. t'#258#182'm.')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 544.252320000000000000
          Width = 26.456710000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #258#8240'let-'
            'nap')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 574.488560000000000000
          Width = 34.015738270000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #258#8240'letn.'
            'tgyar.')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 612.283860000000000000
          Width = 34.015743150000000000
          Height = 41.574810470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '205 n'
            'korr.'
            't'#258#182'meg')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 650.079160000000000000
          Width = 56.692950000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Anya komb. min. indexe %')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 710.551640000000000000
          Width = 18.897632910000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SV %')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 563.149970000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 702.992580000000000000
          Top = 3.779530000000022000
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
          Top = 3.779530000000022000
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
          Top = 3.779530000000022000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
        object Memo39: TfrxMemoView
          Left = 676.535870000000000000
          Top = 3.779530000000022000
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
          Top = 3.779530000000022000
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
        Top = 294.803340000000000000
        Width = 740.409927000000000000
        DataSet = frxDBListak
        DataSetName = 'frxDBListak'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 7.559055120000000000
          Width = 729.448818900000000000
          Height = 18.897650000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = clBtnFace
          Highlight.Condition = '<Line> mod 2 = 1'
        end
        object SysMemo3: TfrxSysMemoView
          Left = 7.559060000000000000
          Width = 30.236220470000000000
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
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 41.574830000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'ENAR'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."ENAR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 124.724490000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'FULSZAM'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."FULSZAM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 192.756030000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_ENAR'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."ANYA_ENAR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 260.787570000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'APAKLSZ'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."APAKLSZ"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 298.582870000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataField = 'SZULDAT'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."SZULDAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 370.393710550000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          DataField = 'SZUL_SULY'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."SZUL_SULY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 393.071120000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          DataField = 'ELL_LEF'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."ELL_LEF"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 415.748300000000000000
          Width = 18.897637800000000000
          Height = 18.897650000000000000
          DataField = 'SZARVALTSAG'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBListak."SZARVALTSAG"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 438.425480000000000000
          Width = 62.362204720000000000
          Height = 18.897650000000000000
          DataField = 'VALDAT'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBListak."VALDAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 502.677490000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'VALTOM'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBListak."VALTOM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 536.693260000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          DataField = 'ELETNAP'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBListak."ELETNAP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 578.268090000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'TGYAR'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBListak."TGYAR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 612.283860000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'TOM205'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBListak."TOM205"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 646.299630000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'MIN'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBListak."MIN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 702.992580000000000000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'SV'
          DataSet = frxDBListak
          DataSetName = 'frxDBListak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBListak."SV"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 162.519790000000000000
        Top = 377.953000000000000000
        Width = 740.409927000000000000
        object Shape15: TfrxShapeView
          Left = 366.614410000000000000
          Top = 90.708720000000030000
          Width = 69.921259842519710000
          Height = 41.574830000000000000
        end
        object Memo58: TfrxMemoView
          Left = 370.393940000000000000
          Top = 90.708720000000030000
          Width = 60.472480000000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letnapi'
            't'#258#182'meg-'
            'gyarapod'#258#711's')
          ParentFont = False
        end
        object Shape9: TfrxShapeView
          Left = 332.598640000000000000
          Top = 90.708720000000030000
          Width = 34.015770000000000000
          Height = 41.574830000000000000
        end
        object Shape10: TfrxShapeView
          Left = 332.598640000000000000
          Top = 132.283550000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
        end
        object Memo63: TfrxMemoView
          Left = 334.488188980000000000
          Top = 134.173228350000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Round(AVG(<frxDBListak."ELETNAP">,MasterData1))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 334.488188976378000000
          Top = 90.708720000000030000
          Width = 26.456710000000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'let-'
            'nap')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape13: TfrxShapeView
          Left = 568.818897637795000000
          Top = 90.708720000000030000
          Width = 49.133890000000000000
          Height = 41.574830000000000000
        end
        object Memo57: TfrxMemoView
          Left = 570.709030000000000000
          Top = 90.708720000000030000
          Width = 41.574830000000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SV   %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape17: TfrxShapeView
          Left = 504.566929133858000000
          Top = 90.708720000000030000
          Width = 64.252010000000000000
          Height = 41.574830000000000000
        end
        object Memo54: TfrxMemoView
          Left = 275.905690000000000000
          Top = 90.708720000000030000
          Width = 56.692950000000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711'si t'#258#182'meg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Left = 71.811070000000000000
          Top = 132.283550000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
        end
        object Shape1: TfrxShapeView
          Left = 71.811070000000000000
          Top = 90.708720000000030000
          Width = 52.913420000000000000
          Height = 41.574830000000000000
        end
        object Memo49: TfrxMemoView
          Left = 73.700787400000000000
          Top = 94.488250000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si t'#258#182'meg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape4: TfrxShapeView
          Left = 124.724490000000000000
          Top = 132.283550000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Shape3: TfrxShapeView
          Left = 124.724490000000000000
          Top = 90.708720000000030000
          Width = 56.692950000000000000
          Height = 41.574830000000000000
        end
        object Memo21: TfrxMemoView
          Left = 22.677180000000000000
          Top = 7.559055119999982000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #258#8211'sszesen  [COUNT(MasterData1)]  ut'#258#322'd ker'#258#317'lt list'#258#711'z'#258#711'sra.')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 15.118120000000000000
          Top = 3.779530000000022000
          Width = 721.889763779528100000
          Frame.Typ = [ftTop]
        end
        object Memo48: TfrxMemoView
          Left = 94.488250000000000000
          Top = 60.472480000000010000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#129'tlagadatok')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 132.283550000000000000
          Top = 134.173228350000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[iif(COUNT(MasterData1) > 0, Trunc((SUM(<frxDBListak."ELL_LEF">=' +
              #39'1'#39',MasterData1)/COUNT(MasterData1))*1000)/10 ,0)] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 132.283550000000000000
          Top = 90.708720000000030000
          Width = 41.574830000000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'K'#258#182'nny'#313#177' ell'#258#169'sek ar'#258#711'nya')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape5: TfrxShapeView
          Left = 181.417440000000000000
          Top = 90.708720000000030000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
        end
        object Shape6: TfrxShapeView
          Left = 181.417440000000000000
          Top = 132.283550000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
        end
        object Memo50: TfrxMemoView
          Left = 79.370130000000000000
          Top = 134.173250310000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[AVG(<frxDBListak."SZUL_SULY">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 185.196970000000000000
          Top = 90.708661420000000000
          Width = 86.929190000000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Szarvatlan '
            'ut'#258#322'dok'
            'sz'#258#711'ma,  ar'#258#711'nya')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape7: TfrxShapeView
          Left = 275.905690000000000000
          Top = 90.708720000000030000
          Width = 56.692950000000000000
          Height = 41.574830000000000000
        end
        object Shape8: TfrxShapeView
          Left = 275.905690000000000000
          Top = 132.283550000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Shape11: TfrxShapeView
          Left = 436.535433070866000000
          Top = 90.708720000000030000
          Width = 68.031540000000000000
          Height = 41.574830000000000000
        end
        object Shape12: TfrxShapeView
          Left = 436.535433070000000000
          Top = 132.283550000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Shape14: TfrxShapeView
          Left = 568.818897637795000000
          Top = 132.283550000000000000
          Width = 49.133890000000000000
          Height = 22.677180000000000000
        end
        object Shape16: TfrxShapeView
          Left = 366.614410000000000000
          Top = 132.283550000000000000
          Width = 69.921259840000000000
          Height = 22.677180000000000000
        end
        object Memo56: TfrxMemoView
          Left = 442.205010000000000000
          Top = 90.708720000000030000
          Width = 56.692950000000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '205 napra'
            'korrig'#258#711'lt'
            'testt'#258#182'meg')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 506.457020000000000000
          Top = 90.708720000000030000
          Width = 60.472480000000000000
          Height = 41.574803150000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Anya'
            'komb. min.'
            'indexe')
          ParentFont = False
        end
        object Shape18: TfrxShapeView
          Left = 504.566929130000000000
          Top = 132.283550000000000000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
        end
        object Memo60: TfrxMemoView
          Left = 230.551330000000000000
          Top = 134.173228350000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[iif(COUNT(MasterData1)>0,  Trunc((SUM(<frxDBListak."SZARVALTSAG' +
              '">='#39'1'#39',MasterData1)/COUNT(MasterData1))*1000)/10,0)] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 188.976500000000000000
          Top = 134.173228350000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBListak."SZARVALTSAG">='#39'1'#39',MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 283.464750000000000000
          Top = 134.173228350000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."VALTOM">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 377.953000000000000000
          Top = 134.173228350000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."TGYAR">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 453.543600000000000000
          Top = 134.173228350000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[AVG(<frxDBListak."TOM205">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 510.236549999999900000
          Top = 134.173228350000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[AVG(<frxDBListak."MIN">,MasterData1)] %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 578.268090000000000000
          Top = 134.173228350000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[AVG(<frxDBListak."SV">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object qListak: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    Left = 648
    Top = 168
  end
end
