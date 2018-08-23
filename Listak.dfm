inherited frmListak: TfrmListak
  Left = 316
  Top = 20
  Width = 802
  Height = 559
  Caption = 'List'#225'k'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object TalLabel15: TTalLabel [0]
    Left = 168
    Top = 60
    Width = 15
    Height = 16
    Caption = '-ig'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited Panel1: TPanel
    Top = 491
    Width = 794
    inherited BitBtn1: TTalBitBtn
      Left = 627
    end
    inherited BitBtn2: TTalBitBtn
      Left = 707
      Caption = 'Kil'#233'p'#233's'
    end
  end
  inherited Panel2: TPanel
    Width = 794
    Height = 491
    object TalLabel1: TTalLabel
      Left = 295
      Top = 16
      Width = 200
      Height = 29
      Alignment = taCenter
      AutoSize = False
      Caption = 'Egyedt'#246'rzs lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TalGroupBox1: TTalGroupBox
      Left = 16
      Top = 56
      Width = 190
      Height = 95
      Caption = 'Egyed azonos'#237't'#243' '
      TabOrder = 0
      object TalLabel2: TTalLabel
        Left = 168
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel3: TTalLabel
        Left = 168
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbTehenAzonTol: TTalComboBox
        Left = 16
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
      object cbTehenAzonIg: TTalComboBox
        Left = 16
        Top = 56
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object TalGroupBox2: TTalGroupBox
      Left = 210
      Top = 56
      Width = 190
      Height = 95
      Caption = 'Tulaj '
      TabOrder = 1
      object TalLabel4: TTalLabel
        Left = 167
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel5: TTalLabel
        Left = 167
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbTulajTol: TTalComboBox
        Left = 16
        Top = 24
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
      end
      object cbTulajIg: TTalComboBox
        Left = 16
        Top = 56
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object TalGroupBox3: TTalGroupBox
      Left = 16
      Top = 160
      Width = 190
      Height = 95
      Caption = 'Sz'#252'let'#233'si id'#337' '
      TabOrder = 2
      object TalLabel6: TTalLabel
        Left = 103
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel16: TTalLabel
        Left = 104
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtSzulDatTol: TTalEdit
        Left = 16
        Top = 24
        Width = 79
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
      object edtSzulDatIg: TTalEdit
        Left = 16
        Top = 56
        Width = 79
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
    object TalGroupBox4: TTalGroupBox
      Left = 210
      Top = 160
      Width = 190
      Height = 95
      Caption = 'Anya azonos'#237't'#243' '
      TabOrder = 3
      object TalLabel7: TTalLabel
        Left = 167
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel19: TTalLabel
        Left = 168
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbAnyaTol: TTalComboBox
        Left = 16
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
      object cbAnyaIg: TTalComboBox
        Left = 16
        Top = 56
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object TalGroupBox5: TTalGroupBox
      Left = 405
      Top = 160
      Width = 190
      Height = 95
      Caption = 'Apa azonos'#237't'#243' '
      TabOrder = 4
      object TalLabel8: TTalLabel
        Left = 156
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel22: TTalLabel
        Left = 157
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbApaTol: TTalComboBox
        Left = 5
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
      object cbApaIg: TTalComboBox
        Left = 5
        Top = 56
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object TalGroupBox6: TTalGroupBox
      Left = 16
      Top = 265
      Width = 190
      Height = 95
      Caption = 'Egyed sz'#237'ne '
      TabOrder = 5
      object TalLabel9: TTalLabel
        Left = 167
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel17: TTalLabel
        Left = 168
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbSzinTol: TTalComboBox
        Left = 16
        Top = 24
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
      end
      object cbSzinIg: TTalComboBox
        Left = 16
        Top = 56
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object TalGroupBox7: TTalGroupBox
      Left = 210
      Top = 265
      Width = 190
      Height = 95
      Caption = 'Konstrukci'#243's k'#243'd '
      TabOrder = 6
      object TalLabel10: TTalLabel
        Left = 167
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel20: TTalLabel
        Left = 168
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbKkodTol: TTalComboBox
        Left = 16
        Top = 24
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
      end
      object cbKkodIg: TTalComboBox
        Left = 16
        Top = 56
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object TalGroupBox8: TTalGroupBox
      Left = 405
      Top = 265
      Width = 190
      Height = 95
      Caption = #193'llom'#225'nyba v'#233'tel d'#225'tuma '
      TabOrder = 7
      object TalLabel11: TTalLabel
        Left = 99
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel23: TTalLabel
        Left = 100
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtAlvdTol: TTalEdit
        Left = 16
        Top = 24
        Width = 79
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
      object edtAlvdIg: TTalEdit
        Left = 16
        Top = 56
        Width = 79
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
    object TalGroupBox9: TTalGroupBox
      Left = 16
      Top = 370
      Width = 190
      Height = 100
      Caption = 'Kiker'#252'l'#233's k'#243'dja '
      TabOrder = 8
      object TalLabel12: TTalLabel
        Left = 167
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel18: TTalLabel
        Left = 168
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbKikkodTol: TTalComboBox
        Left = 16
        Top = 24
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
      end
      object cbKikkodIg: TTalComboBox
        Left = 16
        Top = 56
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object TalGroupBox10: TTalGroupBox
      Left = 210
      Top = 370
      Width = 190
      Height = 100
      Caption = 'Kiker'#252'l'#233's oka '
      TabOrder = 9
      object TalLabel13: TTalLabel
        Left = 167
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel21: TTalLabel
        Left = 168
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbKikokTol: TTalComboBox
        Left = 16
        Top = 24
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
      object cbKikokIg: TTalComboBox
        Left = 16
        Top = 56
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 1
      end
    end
    object TalGroupBox11: TTalGroupBox
      Left = 405
      Top = 370
      Width = 190
      Height = 53
      Caption = 'Kiker'#252'l'#233's d'#225'tuma '
      TabOrder = 10
      object TalLabel14: TTalLabel
        Left = 86
        Top = 28
        Width = 10
        Height = 16
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtKikDatTol: TTalEdit
        Left = 5
        Top = 24
        Width = 79
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
      object edtKikDatIg: TTalEdit
        Left = 100
        Top = 24
        Width = 79
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
    object TalRadioGroup1: TTalRadioGroup
      Left = 405
      Top = 56
      Width = 190
      Height = 54
      Caption = 'Rendezetts'#233'g '
      TabOrder = 12
    end
    object rbTehen: TTalRadioButton
      Left = 424
      Top = 72
      Width = 102
      Height = 17
      Caption = 'Egyed azonos'#237't'#243
      Checked = True
      TabOrder = 13
      TabStop = True
    end
    object rbPsion: TTalRadioButton
      Left = 424
      Top = 90
      Width = 98
      Height = 17
      Caption = 'Psion azonos'#237't'#243
      TabOrder = 14
    end
    object rgCsakTehen: TTalRadioGroup
      Left = 405
      Top = 112
      Width = 367
      Height = 39
      Columns = 4
      Items.Strings = (
        'Csak teh'#233'n'
        'Csak '#252'sz'#337
        'Mind')
      TabOrder = 15
    end
    object TalGroupBox12: TTalGroupBox
      Left = 597
      Top = 160
      Width = 176
      Height = 95
      Caption = 'Adott napon '#233'l'#337' '
      TabOrder = 17
      object TalLabel25: TTalLabel
        Left = 101
        Top = 28
        Width = 18
        Height = 16
        Caption = '-t'#243'l'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object TalLabel26: TTalLabel
        Left = 102
        Top = 60
        Width = 15
        Height = 16
        Caption = '-ig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtEloTol: TTalEdit
        Left = 16
        Top = 24
        Width = 79
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
      object edtEloIg: TTalEdit
        Left = 16
        Top = 56
        Width = 79
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
    object TalGroupBox13: TTalGroupBox
      Left = 597
      Top = 265
      Width = 176
      Height = 48
      Caption = 'Korcsoport '
      TabOrder = 18
      object cbKorcsTol: TTalComboBox
        Left = 16
        Top = 16
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object TalGroupBox14: TTalGroupBox
      Left = 597
      Top = 313
      Width = 176
      Height = 47
      Caption = 'Ivar '
      TabOrder = 19
      object cbIvar: TTalComboBox
        Left = 16
        Top = 15
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          'H'#237'mivar'#250
          'N'#337'ivar'#250
          'Mind')
      end
    end
    object cbSelejt: TTalCheckBox
      Left = 608
      Top = 87
      Width = 169
      Height = 17
      Caption = 'Csak a selejtre jel'#246'lt egyedek'
      TabOrder = 16
    end
    object cbCsakAzonosito: TTalCheckBox
      Left = 600
      Top = 369
      Width = 169
      Height = 17
      Caption = 'Csak az egyed azonos'#237't'#243'ja kell'
      TabOrder = 20
    end
    object gbKimenet: TTalGroupBox
      Left = 597
      Top = 389
      Width = 176
      Height = 80
      Caption = 'Lista kimenete '
      TabOrder = 21
      object rbExcel: TRadioButton
        Left = 13
        Top = 43
        Width = 71
        Height = 17
        Caption = 'Excel f'#225'jl'
        TabOrder = 0
      end
      object rbLista: TRadioButton
        Left = 13
        Top = 19
        Width = 71
        Height = 17
        Caption = 'Lista'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object TalGroupBox15: TTalGroupBox
      Left = 404
      Top = 422
      Width = 191
      Height = 47
      Caption = 'Kiker'#252'l'#233's helye '
      TabOrder = 11
      object cbKikHely: TTalComboBox
        Left = 5
        Top = 15
        Width = 174
        Height = 21
        Style = csDropDownList
        Constraints.MaxWidth = 200
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          'H'#237'mivar'#250
          'N'#337'ivar'#250
          'Mind')
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 508
  end
  object frxDBdtsList: TfrxDBDataset
    UserName = 'frxDBdtsList'
    CloseDataSource = False
    FieldAliases.Strings = (
      'KOD=KOD'
      'NEV=NEV'
      'IRSZ=IRSZ'
      'UTCA=UTCA'
      'TELEFONSZAM=TELEFONSZAM')
    DataSet = sdsLista
    Left = 616
    Top = 8
  end
  object frxRepList: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 39882.869820231500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 560
    Top = 8
    Datasets = <
      item
        DataSet = frxDBdtsList
        DataSetName = 'frxDBdtsList'
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
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 257.008040000000000000
          Top = 56.692949999999990000
          Width = 188.976377950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Inszemin'#258#711'torok')
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
            'Wtarka')
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
          Top = 102.047310000000000000
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
          Top = 49.133841180000010000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.149660000000000000
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
        object Memo36: TfrxMemoView
          Left = 3.779530000000000000
          Top = 102.047310000000000000
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
        object Memo41: TfrxMemoView
          Left = 83.149660000000000000
          Top = 83.149660000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Rendezettseg]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = frxDBdtsList
        DataSetName = 'frxDBdtsList'
        RowCount = 0
        object SysMemo3: TfrxSysMemoView
          Left = 3.779527560000000000
          Width = 34.015750470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 52.913361420000000000
          Width = 64.251973390000000000
          Height = 18.897650000000000000
          DataField = 'KOD'
          DataSet = frxDBdtsList
          DataSetName = 'frxDBdtsList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsList."KOD"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 124.724382600000000000
          Width = 170.078786540000000000
          Height = 18.897650000000000000
          DataField = 'NEV'
          DataSet = frxDBdtsList
          DataSetName = 'frxDBdtsList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsList."NEV"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 302.362400000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          DataField = 'IRSZ'
          DataSet = frxDBdtsList
          DataSetName = 'frxDBdtsList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsList."IRSZ"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 362.834880000000000000
          Width = 222.992184570000000000
          Height = 18.897650000000000000
          DataField = 'UTCA'
          DataSet = frxDBdtsList
          DataSetName = 'frxDBdtsList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsList."UTCA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 593.386210000000000000
          Width = 109.606338270000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONSZAM'
          DataSet = frxDBdtsList
          DataSetName = 'frxDBdtsList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsList."TELEFONSZAM"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo38: TfrxMemoView
          Left = 695.433520000000000000
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
        object Memo39: TfrxMemoView
          Left = 638.740570000000000000
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
        object Memo40: TfrxMemoView
          Left = 684.094930000000000000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
        object Memo9: TfrxMemoView
          Left = 668.976810000000000000
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
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Width = 207.874150000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'List'#258#711'k - Inszemin'#258#711'torok : Inszemin'#258#711'torok')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Width = 41.574808030000000000
          Height = 19.653548190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'sorsz.')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 26.456692909999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 52.913361420000000000
          Width = 37.795280470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'K'#258#322'd')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 124.724382600000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 302.362224250000000000
          Width = 47.244094490000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Irsz'#258#711'm')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 366.614173230000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Utca')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 593.385843860000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Telefonsz'#258#711'm')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 11.338570470000000000
          Top = 7.559047799999973000
          Width = 71.811033390000000000
          Height = 23.433078190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T'#258#169'telsz'#258#711'm:')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 83.149660000000000000
          Top = 7.559059999999988000
          Width = 128.504020000000000000
          Height = 23.433078190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 3.779525119999960000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object qryList: TTalQuery
    Active = True
    Connection = dtmTarka.cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select TIPUSKOD, TIPUSNEV, KODHOSSZ From KodTipusok')
    Left = 664
    Top = 8
  end
  object sdsLista: TTalSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT insz.KOD, insz.NEV, insz.IRSZ, insz.UTCA, insz.TELEFONSZA' +
      'M'#13#10'        FROM INSZEMINATOROK insz'#13#10'        ORDER BY insz.KOD'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT insz.KOD, insz.NEV, insz.IRSZ, insz.UTCA, insz.TELEFONSZA' +
      'M'#13#10'        FROM INSZEMINATOROK insz'#13#10'        ORDER BY insz.KOD'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 707
    Top = 8
  end
end
