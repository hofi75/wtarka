inherited frmKiesesKarb: TfrmKiesesKarb
  Left = 513
  Top = 198
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Kies'#233'sek r'#246'gz'#237't'#233'se'
  ClientHeight = 651
  ClientWidth = 802
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 612
    Width = 802
    inherited btnTorol: TBitBtn
      Left = 496
      Width = 135
      Caption = #193'tk'#246't'#233's visszavon'#225'sa'
      OnClick = btnAtkotesVisszavonas
    end
    inherited btnOK: TBitBtn
      Left = 636
    end
    inherited btnCancel: TBitBtn
      Left = 716
    end
    inherited btnModosit: TBitBtn
      Left = 412
    end
    inherited btnUj: TBitBtn
      Left = 332
    end
    inherited btnNyomtat: TBitBtn
      Visible = False
    end
  end
  inherited pnlMod: TTalPanel
    Left = 431
    Top = 38
    Width = 371
    Height = 574
    object TalLabel4: TTalLabel
      Left = 24
      Top = 133
      Width = 62
      Height = 13
      Caption = 'Sz'#252'let'#233'si id'#337':'
    end
    object TalLabel5: TTalLabel
      Left = 24
      Top = 163
      Width = 76
      Height = 13
      Caption = 'Anya azonos'#237't'#243':'
    end
    object TalLabel6: TTalLabel
      Left = 24
      Top = 187
      Width = 71
      Height = 13
      Caption = 'Apa azonos'#237't'#243':'
    end
    object TalLabel15: TTalLabel
      Left = 24
      Top = 242
      Width = 24
      Height = 13
      Caption = 'Sz'#237'n:'
    end
    object TalLabel16: TTalLabel
      Left = 24
      Top = 267
      Width = 26
      Height = 13
      Caption = 'Fajta:'
    end
    object TalLabel8: TTalLabel
      Left = 24
      Top = 292
      Width = 21
      Height = 13
      Caption = 'Ivar:'
    end
    object TalLabel10: TTalLabel
      Left = 24
      Top = 339
      Width = 72
      Height = 13
      Caption = 'Kies'#233's d'#225'tuma:'
    end
    object TalLabel12: TTalLabel
      Left = 24
      Top = 362
      Width = 65
      Height = 13
      Caption = 'Kies'#233's m'#243'dja:'
    end
    object lblKiesesOK: TTalLabel
      Left = 24
      Top = 386
      Width = 55
      Height = 13
      Caption = 'Kies'#233's oka:'
    end
    object TalLabel1: TTalLabel
      Left = 24
      Top = 15
      Width = 90
      Height = 13
      Caption = 'Egyed azonos'#237't'#243'ja:'
    end
    object TalLabel17: TTalLabel
      Left = 24
      Top = 47
      Width = 41
      Height = 13
      Caption = 'F'#252'lsz'#225'm:'
    end
    object TalLabel3: TTalLabel
      Left = 24
      Top = 103
      Width = 23
      Height = 13
      Caption = 'N'#233'v:'
    end
    object TalSpeedButton3: TTalSpeedButton
      Left = 331
      Top = 357
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = TalSpeedButton3Click
    end
    object TalSpeedButton1: TTalSpeedButton
      Left = 331
      Top = 381
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = TalSpeedButton1Click
    end
    object lblKikerulesHely: TTalLabel
      Left = 24
      Top = 410
      Width = 74
      Height = 13
      Caption = 'Kiker'#252'l'#233's helye:'
    end
    object TalSpeedButton2: TTalSpeedButton
      Left = 331
      Top = 405
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = TalSpeedButton2Click
    end
    object TalLabel14: TTalLabel
      Left = 24
      Top = 435
      Width = 68
      Height = 13
      Caption = 'Kies'#233'si t'#246'meg:'
      Visible = False
    end
    object TalLabel9: TTalLabel
      Left = 24
      Top = 71
      Width = 58
      Height = 13
      Caption = 'Teh'#233'nsz'#225'm:'
    end
    object TalDBEdit2: TTalDBEdit
      Left = 145
      Top = 128
      Width = 64
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = 'TalD.  .  '
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      DataField = 'SZULDAT'
      DataSource = dtsKieses
    end
    object TalDBEdit5: TTalDBEdit
      Left = 145
      Top = 158
      Width = 121
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'TalDBEdit5'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 2
      DataField = 'ANYA_ENAR'
      DataSource = dtsKieses
    end
    object TalDBEdit6: TTalDBEdit
      Left = 145
      Top = 182
      Width = 121
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = 'TalDBEdit6'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 3
      DataField = 'APAKLSZ'
      DataSource = dtsKieses
    end
    object edtKiesesDatum: TTalDBEdit
      Left = 145
      Top = 334
      Width = 88
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = 'edtK.  .  '
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      TabOrder = 4
      OnExit = edtKiesesDatumExit
      DataField = 'KIKDAT'
      DataSource = dtsKieses
    end
    object lucKiesesMod: TTalDBLookupComboBox
      Left = 145
      Top = 358
      Width = 185
      Height = 21
      DataField = 'KIKOD'
      DataSource = dtsKieses
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtmTarka.dtsKiesesKod
      TabOrder = 5
    end
    object lucKiesesOk: TTalDBLookupComboBox
      Left = 145
      Top = 382
      Width = 185
      Height = 21
      DataField = 'KIKOK'
      DataSource = dtsKieses
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtmTarka.dtsKiesesOK
      TabOrder = 6
    end
    object edtAzonosito: TTalDBEdit
      Left = 145
      Top = 10
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtAzonosito'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edtAzonositoExit
      DataField = 'ENAR'
      DataSource = dtsKieses
    end
    object edtSpecAzon: TTalDBEdit
      Left = 145
      Top = 42
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtSpecAzon'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 7
      DataField = 'FULSZAM'
      DataSource = dtsKieses
    end
    object edtNev: TTalDBEdit
      Left = 145
      Top = 98
      Width = 185
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtNev'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 8
      DataField = 'NEV'
      DataSource = dtsKieses
    end
    object dbeFajta: TTalDBEdit
      Left = 145
      Top = 262
      Width = 185
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 9
      DataField = 'FAJTA_KOD'
      DataSource = dtsKieses
    end
    object dbeIvar: TTalDBEdit
      Left = 145
      Top = 287
      Width = 185
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 10
      DataField = 'IVAR'
      DataSource = dtsKieses
    end
    object dbeSzin: TTalDBEdit
      Left = 145
      Top = 237
      Width = 185
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 11
      DataField = 'SZIN_KOD'
      DataSource = dtsKieses
    end
    object lucKikhely: TTalDBLookupComboBox
      Left = 145
      Top = 406
      Width = 185
      Height = 21
      DataField = 'KIKHELY'
      DataSource = dtsKieses
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtmTarka.dtsKikHely
      TabOrder = 12
    end
    object edtTomeg: TTalDBEdit
      Left = 145
      Top = 430
      Width = 72
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtTomeg'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 13
      Visible = False
      DataSource = dtsKieses
    end
    object TalCheckBox1: TTalCheckBox
      Left = 224
      Top = 432
      Width = 129
      Height = 17
      TabStop = False
      Caption = 'Kell t'#246'meget r'#246'gz'#237'teni'
      TabOrder = 14
      Visible = False
      OnClick = TalCheckBox1Click
    end
    object TalDBEdit7: TTalDBEdit
      Left = 145
      Top = 66
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'TalDBEdit7'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 15
      DataField = 'TEHENSZAM'
      DataSource = dtsKieses
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 38
    Width = 431
    Height = 574
    Selected.Strings = (
      'ID'#9'16'#9'ID'#9'F'#9
      'ENAR'#9'14'#9'ENAR'#9#9
      'FULSZAM'#9'15'#9'FULSZAM'#9#9
      'TEHENSZAM'#9'15'#9'TEHENSZAM'#9#9
      'NEV'#9'30'#9'NEV'#9#9
      'SZULDAT'#9'18'#9'SZULDAT'#9#9
      'ANYA_ENAR'#9'10'#9'ANYA_ENAR'#9#9
      'APAKLSZ'#9'10'#9'APAKLSZ'#9#9
      'IVAR'#9'34'#9'IVAR'#9#9
      'KIKDAT'#9'18'#9'KIKDAT'#9#9
      'KIKOK'#9'10'#9'KIKOK'#9#9
      'KIKOD'#9'10'#9'KIKOD'#9#9
      'TENYESZET'#9'7'#9'TENYESZET'#9#9
      'MOD_DAT'#9'18'#9'MOD_DAT'#9'F'#9
      'MOD_KOD'#9'3'#9'MOD_KOD'#9'F'#9
      'SZIN_KOD'#9'34'#9'SZIN_KOD'#9'F'#9
      'FAJTA_KOD'#9'133'#9'FAJTA_KOD'#9'F'#9
      'KIKHELY'#9'10'#9'KIKHELY'#9'F'#9)
    IniAttributes.SectionName = 'frmKiesesKarb'
    DataSource = dtsKieses
  end
  object pnlKeres: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 802
    Height = 38
    Align = alTop
    TabOrder = 3
    object lblS2: TTalLabel
      Left = 404
      Top = 12
      Width = 137
      Height = 13
      Caption = 'Utols'#243' m'#243'dos'#237't'#225's d'#225'tuma >= '
    end
    object lblS1: TTalLabel
      Left = 267
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
    object btnLeker: TBitBtn
      Left = 632
      Top = 5
      Width = 114
      Height = 27
      Hint = 'Adatlek'#233'r'#233's a sz'#369'r'#337'felt'#233'telek figyelembev'#233'tel'#233'vel'
      Caption = 'Adatlek'#233'r'#233's'
      TabOrder = 0
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
      Width = 153
      Height = 21
      DataSource = dtsKieses
      TabOrder = 1
    end
    object edtDatTol: TTalEdit
      Left = 544
      Top = 8
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
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    Left = 124
    Top = 412
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
  end
  object sdsTermCsop: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select'#13#10'b.ID,'#13#10'b.ELLESEK_ID,'#13#10'b.BORJU_ENAR,'#13#10'b.BORJU_IVAR,'#13#10'b.BO' +
      'RJU_KIESES_KOD,'#13#10'b.BORJU_KIESES_OK,'#13#10'b.BORJU_SSZ,'#13#10'b.BORJU_SULY,' +
      #13#10'b.BORJU_SZIN,'#13#10'b.UTMOD_DAT,'#13#10'b.UTMOD_KOD,'#13#10'kikod.KOD_NEV as ki' +
      'kod_nev,'#13#10'kiok.KOD_NEV as kiok_nev,'#13#10'ivar.KOD_NEV as ivar_nev,'#13#10 +
      'szin.KOD_NEV as szin'#13#10'from BORJAK b'#13#10'left join KODOK ivar on iva' +
      'r.KODTIPUSOK_TIPUSKOD='#39'IVAR'#39' and ivar.KOD=b.BORJU_IVAR'#13#10'left joi' +
      'n KODOK kikod on kikod.KODTIPUSOK_TIPUSKOD='#39'KIKOD'#39' and kikod.KOD' +
      '=b.BORJU_KIESES_KOD'#13#10'left join KODOK kiok on kiok.KODTIPUSOK_TIP' +
      'USKOD='#39'KIOK'#39' and kiok.KOD=B.BORJU_KIESES_OK'#13#10'left join KODOK szi' +
      'n on szin.KODTIPUSOK_TIPUSKOD='#39'SZIN'#39' and szin.KOD=B.BORJU_SZIN'#13#10 +
      'where b.ELLESEK_ID=:elles_id'#13#10
    DataSet.Parameters = <
      item
        Name = 'elles_id'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 15
        Size = 19
        Value = Null
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select'#13#10'b.ID,'#13#10'b.ELLESEK_ID,'#13#10'b.BORJU_ENAR,'#13#10'b.BORJU_IVAR,'#13#10'b.BO' +
      'RJU_KIESES_KOD,'#13#10'b.BORJU_KIESES_OK,'#13#10'b.BORJU_SSZ,'#13#10'b.BORJU_SULY,' +
      #13#10'b.BORJU_SZIN,'#13#10'b.UTMOD_DAT,'#13#10'b.UTMOD_KOD,'#13#10'kikod.KOD_NEV as ki' +
      'kod_nev,'#13#10'kiok.KOD_NEV as kiok_nev,'#13#10'ivar.KOD_NEV as ivar_nev,'#13#10 +
      'szin.KOD_NEV as szin'#13#10'from BORJAK b'#13#10'left join KODOK ivar on iva' +
      'r.KODTIPUSOK_TIPUSKOD='#39'IVAR'#39' and ivar.KOD=b.BORJU_IVAR'#13#10'left joi' +
      'n KODOK kikod on kikod.KODTIPUSOK_TIPUSKOD='#39'KIKOD'#39' and kikod.KOD' +
      '=b.BORJU_KIESES_KOD'#13#10'left join KODOK kiok on kiok.KODTIPUSOK_TIP' +
      'USKOD='#39'KIOK'#39' and kiok.KOD=B.BORJU_KIESES_OK'#13#10'left join KODOK szi' +
      'n on szin.KODTIPUSOK_TIPUSKOD='#39'SZIN'#39' and szin.KOD=B.BORJU_SZIN'#13#10 +
      'where b.ELLESEK_ID=:elles_id'#13#10
    Provider.DataSet.Parameters = <
      item
        Name = 'elles_id'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 15
        Size = 19
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 112
    Top = 328
    object sdsTermCsopBORJU_SSZ: TIntegerField
      Tag = -1
      DisplayLabel = 'ssz.'
      DisplayWidth = 3
      FieldName = 'BORJU_SSZ'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTermCsopivar_nev: TWideStringField
      Tag = -1
      DisplayLabel = 'Borj'#250' ivar'
      DisplayWidth = 10
      FieldName = 'ivar_nev'
      ProviderFlags = []
      Size = 30
    end
    object sdsTermCsopszin: TWideStringField
      Tag = -1
      DisplayLabel = 'Sz'#237'n'
      DisplayWidth = 15
      FieldName = 'szin'
      ProviderFlags = []
      Size = 30
    end
    object sdsTermCsopBORJU_ENAR: TWideStringField
      Tag = -1
      DisplayLabel = 'Burj'#250' ENAR'
      DisplayWidth = 14
      FieldName = 'BORJU_ENAR'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sdsTermCsopkikod_nev: TWideStringField
      Tag = -1
      DisplayLabel = 'Kieses k'#243'dja'
      DisplayWidth = 25
      FieldName = 'kikod_nev'
      ProviderFlags = []
      Size = 30
    end
    object sdsTermCsopkiok_nev: TWideStringField
      Tag = -1
      DisplayLabel = 'Kies'#233's oka'
      DisplayWidth = 25
      FieldName = 'kiok_nev'
      ProviderFlags = []
      Size = 30
    end
    object sdsTermCsopBORJU_SULY: TFloatField
      Tag = -1
      DisplayLabel = 'S'#250'ly'
      DisplayWidth = 6
      FieldName = 'BORJU_SULY'
      ProviderFlags = [pfInUpdate]
    end
    object sdsTermCsopBORJU_SZIN: TWideStringField
      Tag = -1
      DisplayLabel = 'Sz'#237'n'
      FieldName = 'BORJU_SZIN'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsTermCsopELLESEK_ID: TBCDField
      Tag = -1
      FieldName = 'ELLESEK_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsTermCsopBORJU_IVAR: TWideStringField
      Tag = -1
      FieldName = 'BORJU_IVAR'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsTermCsopBORJU_KIESES_KOD: TWideStringField
      Tag = -1
      DisplayLabel = 'Kieses kod'
      FieldName = 'BORJU_KIESES_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsTermCsopBORJU_KIESES_OK: TWideStringField
      Tag = -1
      FieldName = 'BORJU_KIESES_OK'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsTermCsopUTMOD_DAT: TDateTimeField
      Tag = -1
      FieldName = 'UTMOD_DAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsTermCsopUTMOD_KOD: TWideStringField
      Tag = -1
      FieldName = 'UTMOD_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 3
    end
    object sdsTermCsopID: TBCDField
      Tag = -1
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
  end
  object dtsTermCsop: TDataSource
    DataSet = sdsTermCsop
    Left = 186
    Top = 328
  end
  object sdsKieses: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'  E.ID,'#13#10'  E.ENAR,'#13#10'  E.FULSZAM,'#13#10'  E.TEHENSZAM,'#13#10'  E.NE' +
      'V,'#13#10'  E.SZULDAT,'#13#10'  E.ANYA_ENAR,'#13#10'  E.APAKLSZ,'#13#10'  E.IVAR || '#39' - ' +
      #39' || IVAR.KOD_NEV AS IVAR,'#13#10'  E.KIKDAT,'#13#10'  E.KIKOK,'#13#10'  E.KIKOD,'#13 +
      #10'  E.TENYESZET,'#13#10'  E.MOD_DAT,'#13#10'  E.MOD_KOD,'#13#10'  E.SZIN || '#39' - '#39' |' +
      '| SZIN.KOD_NEV AS SZIN_KOD,'#13#10'  CAST(E.FAJTAKOD AS VARCHAR2(10)) ' +
      ' || '#39' - '#39' || FAJTA.KOD_NEV AS FAJTA_KOD ,'#13#10'  E.KIKHELY'#13#10'FROM EGY' +
      'EDEK E'#13#10'LEFT JOIN KODOK SZIN ON SZIN.KODTIPUSOK_TIPUSKOD = '#39'SZIN' +
      #39' AND SZIN.KOD = E.SZIN'#13#10'LEFT JOIN KODOK FAJTA ON FAJTA.KODTIPUS' +
      'OK_TIPUSKOD = '#39'FAJTA'#39' AND FAJTA.KOD = E.FAJTAKOD'#13#10'LEFT JOIN KODO' +
      'K IVAR ON IVAR.KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39' AND IVAR.KOD = E.IVA' +
      'R'#13#10'LEFT JOIN KODOK KONS ON KONS.KODTIPUSOK_TIPUSKOD = '#39'KONSTR'#39' A' +
      'ND KONS.KOD = E.KKOD'#13#10'LEFT JOIN KODOK KIKH ON KIKH.KODTIPUSOK_TI' +
      'PUSKOD = '#39'KIKHELY'#39' AND KIKH.KOD = E.KIKHELY'#13#10'WHERE (E.KIKOD > '#39'0' +
      #39')'#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  E.ID,'#13#10'  E.ENAR,'#13#10'  E.FULSZAM,'#13#10'  E.TEHENSZAM,'#13#10'  E.NE' +
      'V,'#13#10'  E.SZULDAT,'#13#10'  E.ANYA_ENAR,'#13#10'  E.APAKLSZ,'#13#10'  E.IVAR || '#39' - ' +
      #39' || IVAR.KOD_NEV AS IVAR,'#13#10'  E.KIKDAT,'#13#10'  E.KIKOK,'#13#10'  E.KIKOD,'#13 +
      #10'  E.TENYESZET,'#13#10'  E.MOD_DAT,'#13#10'  E.MOD_KOD,'#13#10'  E.SZIN || '#39' - '#39' |' +
      '| SZIN.KOD_NEV AS SZIN_KOD,'#13#10'  CAST(E.FAJTAKOD AS VARCHAR2(10)) ' +
      ' || '#39' - '#39' || FAJTA.KOD_NEV AS FAJTA_KOD ,'#13#10'  E.KIKHELY'#13#10'FROM EGY' +
      'EDEK E'#13#10'LEFT JOIN KODOK SZIN ON SZIN.KODTIPUSOK_TIPUSKOD = '#39'SZIN' +
      #39' AND SZIN.KOD = E.SZIN'#13#10'LEFT JOIN KODOK FAJTA ON FAJTA.KODTIPUS' +
      'OK_TIPUSKOD = '#39'FAJTA'#39' AND FAJTA.KOD = E.FAJTAKOD'#13#10'LEFT JOIN KODO' +
      'K IVAR ON IVAR.KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39' AND IVAR.KOD = E.IVA' +
      'R'#13#10'LEFT JOIN KODOK KONS ON KONS.KODTIPUSOK_TIPUSKOD = '#39'KONSTR'#39' A' +
      'ND KONS.KOD = E.KKOD'#13#10'LEFT JOIN KODOK KIKH ON KIKH.KODTIPUSOK_TI' +
      'PUSKOD = '#39'KIKHELY'#39' AND KIKH.KOD = E.KIKHELY'#13#10'WHERE (E.KIKOD > '#39'0' +
      #39')'#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    FieldDefs = <
      item
        Name = 'ID'
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
        Name = 'FULSZAM'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TEHENSZAM'
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
        DataType = ftDateTime
      end
      item
        Name = 'ANYA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'APAKLSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'IVAR'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 34
      end
      item
        Name = 'KIKDAT'
        DataType = ftDateTime
      end
      item
        Name = 'KIKOK'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KIKOD'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TENYESZET'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'MOD_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'MOD_KOD'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'SZIN_KOD'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 34
      end
      item
        Name = 'FAJTA_KOD'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 133
      end
      item
        Name = 'KIKHELY'
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 116
    Top = 136
    object sdsKiesesID: TBCDField
      FieldName = 'ID'
      Precision = 15
      Size = 0
    end
    object sdsKiesesENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsKiesesFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      Size = 15
    end
    object sdsKiesesTEHENSZAM: TWideStringField
      FieldName = 'TEHENSZAM'
      Size = 15
    end
    object sdsKiesesNEV: TWideStringField
      FieldName = 'NEV'
      Size = 30
    end
    object sdsKiesesSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsKiesesANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 10
    end
    object sdsKiesesAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
      Size = 10
    end
    object sdsKiesesIVAR: TWideStringField
      FieldName = 'IVAR'
      ReadOnly = True
      Size = 34
    end
    object sdsKiesesKIKDAT: TDateTimeField
      FieldName = 'KIKDAT'
    end
    object sdsKiesesKIKOK: TWideStringField
      FieldName = 'KIKOK'
      Size = 10
    end
    object sdsKiesesKIKOD: TWideStringField
      FieldName = 'KIKOD'
      Size = 10
    end
    object sdsKiesesTENYESZET: TWideStringField
      FieldName = 'TENYESZET'
      Size = 7
    end
    object sdsKiesesMOD_DAT: TDateTimeField
      FieldName = 'MOD_DAT'
    end
    object sdsKiesesMOD_KOD: TWideStringField
      FieldName = 'MOD_KOD'
      Size = 3
    end
    object sdsKiesesSZIN_KOD: TWideStringField
      FieldName = 'SZIN_KOD'
      ReadOnly = True
      Size = 34
    end
    object sdsKiesesFAJTA_KOD: TWideStringField
      FieldName = 'FAJTA_KOD'
      ReadOnly = True
      Size = 133
    end
    object sdsKiesesKIKHELY: TWideStringField
      FieldName = 'KIKHELY'
      Size = 10
    end
  end
  object dtsKieses: TDataSource
    DataSet = sdsKieses
    Left = 188
    Top = 136
  end
  object dtsKikHely: TDataSource
    DataSet = sdsKikHely
    Left = 188
    Top = 208
  end
  object sdsKikHely: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select lista, kod from ( '#13#10'  select kod || '#39' - '#39' || kod_nev as L' +
      'ISTA, kod from kodok where kodtipusok_tipuskod = '#39'KIKHELY'#39' '#13#10'  u' +
      'nion '#13#10'  select tkod || '#39' - '#39' || tnev2 as LISTA, tkod as kod fro' +
      'm teny '#13#10') '#13#10'order by kod'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select lista, kod from ( '#13#10'  select kod || '#39' - '#39' || kod_nev as L' +
      'ISTA, kod from kodok where kodtipusok_tipuskod = '#39'KIKHELY'#39' '#13#10'  u' +
      'nion '#13#10'  select tkod || '#39' - '#39' || tnev2 as LISTA, tkod as kod fro' +
      'm teny '#13#10') '#13#10'order by kod'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 108
    Top = 208
    object sdsKikHelyLISTA: TWideStringField
      FieldName = 'LISTA'
      ReadOnly = True
      Size = 88
    end
    object sdsKikHelyKOD: TWideStringField
      FieldName = 'KOD'
      ReadOnly = True
      Size = 10
    end
  end
  object AtmozgatasProc: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'ATMOZGATASP'
    Parameters = <
      item
        Name = 'P_EGYED_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 38
        Value = Null
      end
      item
        Name = 'P_TKOD'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_ENAR'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 496
    Top = 544
  end
  object AtmozgatasVisszavonas: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'ATMOZGATAS_VISSZAVONAS'
    Parameters = <
      item
        Name = 'P_EGYED_ID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 38
        Value = Null
      end>
    Left = 600
    Top = 544
  end
end
