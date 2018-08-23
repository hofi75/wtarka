inherited frmKullem: TfrmKullem
  Left = 499
  Top = 205
  Width = 773
  Height = 633
  Caption = 'Egyedek k'#252'llemb'#237'r'#225'lati adatai'
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 556
    Width = 757
    inherited btnTorol: TBitBtn
      Left = 519
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 599
    end
    inherited btnCancel: TBitBtn
      Left = 679
    end
    inherited btnModosit: TBitBtn
      Left = 439
    end
    inherited btnUj: TBitBtn
      Left = 359
    end
    inherited btnNyomtat: TBitBtn
      OnClick = btnNyomtatClick
    end
  end
  inherited pnlMod: TTalPanel
    Left = 303
    Top = 38
    Width = 454
    Height = 518
    object TalLabel1: TTalLabel
      Left = 24
      Top = 112
      Width = 71
      Height = 13
      Caption = 'B'#237'r'#225'lat d'#225'tuma:'
    end
    object lblEnar: TTalLabel
      Left = 24
      Top = 16
      Width = 39
      Height = 13
      Caption = 'ENAR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblBika: TTalLabel
      Left = 24
      Top = 64
      Width = 44
      Height = 13
      Caption = 'KPLSZ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFarmag: TTalLabel
      Left = 24
      Top = 136
      Width = 66
      Height = 13
      Caption = 'Farmagass'#225'g:'
    end
    object lblFarlejt: TTalLabel
      Left = 24
      Top = 337
      Width = 42
      Height = 13
      Caption = 'Farlejt'#233's:'
    end
    object lblTipus: TTalLabel
      Left = 280
      Top = 230
      Width = 33
      Height = 13
      Caption = 'T'#237'pus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblLabszer: TTalLabel
      Left = 280
      Top = 371
      Width = 76
      Height = 13
      Caption = 'L'#225'bszerkezet'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTogy: TTalLabel
      Left = 280
      Top = 436
      Width = 29
      Height = 13
      Caption = 'T'#337'gy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblIzom: TTalLabel
      Left = 280
      Top = 292
      Width = 54
      Height = 13
      Caption = 'Izmolts'#225'g'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblBimbo: TTalLabel
      Left = 24
      Top = 438
      Width = 58
      Height = 13
      Caption = 'Bimbo forma'
    end
    object lblHatlab: TTalLabel
      Left = 24
      Top = 356
      Width = 114
      Height = 13
      Caption = 'H'#225'ts'#243' l'#225'b oldaln'#233'zetben'
    end
    object lblTorzsMely: TTalLabel
      Left = 24
      Top = 230
      Width = 108
      Height = 13
      Caption = 'T'#246'rzsm'#233'lys'#233'g (mellkas)'
    end
    object lblTogyMely: TTalLabel
      Left = 24
      Top = 418
      Width = 65
      Height = 13
      Caption = 'T'#337'gy m'#233'lys'#233'g'
    end
    object lblCsud: TTalLabel
      Left = 24
      Top = 376
      Width = 94
      Height = 13
      Caption = 'Cs'#252'd meredeks'#233'ge:'
    end
    object lblFsz: TTalLabel
      Left = 24
      Top = 40
      Width = 41
      Height = 13
      Caption = 'F'#252'lsz'#225'm:'
    end
    object lblTehsz: TTalLabel
      Left = 256
      Top = 40
      Width = 58
      Height = 13
      Caption = 'Teh'#233'nsz'#225'm:'
    end
    object lblTenyeszet: TTalLabel
      Left = 256
      Top = 16
      Width = 52
      Height = 13
      Caption = 'Teny'#233'szet:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblNev: TTalLabel
      Left = 24
      Top = 88
      Width = 23
      Height = 13
      Caption = 'N'#233'v:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblFarhossz: TTalLabel
      Left = 24
      Top = 160
      Width = 68
      Height = 13
      Caption = 'Farhossz'#250's'#225'g:'
    end
    object lblTorzshossz: TTalLabel
      Left = 24
      Top = 205
      Width = 76
      Height = 13
      Caption = 'T'#246'rzshossz'#250's'#225'g'
    end
    object lblCombIzom: TTalLabel
      Left = 24
      Top = 269
      Width = 70
      Height = 13
      Caption = 'Combizmolts'#225'g'
    end
    object lblLapIzom: TTalLabel
      Left = 24
      Top = 293
      Width = 88
      Height = 13
      Caption = 'Lapocka izmolts'#225'g'
    end
    object lblFarSzel: TTalLabel
      Left = 24
      Top = 183
      Width = 64
      Height = 13
      Caption = 'Farsz'#233'less'#233'g:'
    end
    object edtEnar: TTalDBEdit
      Left = 144
      Top = 11
      Width = 97
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 14
      TabOrder = 0
      OnExit = edtEnarExit
      DataField = 'ENAR'
      DataSource = dtsKeres
    end
    object edtKplsz: TTalDBEdit
      Left = 144
      Top = 59
      Width = 65
      Height = 22
      Alignment = taRightJustify
      Value = 11111.000000000000000000
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      Text = '11111'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 4
      OnExit = edtKplszExit
      DataField = 'KPLSZ'
      DataSource = dtsKeres
    end
    object edtBirDat: TTalDBEdit
      Left = 144
      Top = 107
      Width = 81
      Height = 22
      Alignment = taLeftJustify
      Value = 39946.000000000000000000
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = '2009.05.13'
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      TabOrder = 5
      DataField = 'BIRDAT'
      DataSource = dtsKeres
    end
    object edtFarm: TTalDBEdit
      Left = 197
      Top = 131
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 7
      OnExit = CalculateTipus
      DataField = 'FARMAG'
      DataSource = dtsKeres
    end
    object edtHatsoLab: TTalDBEdit
      Left = 197
      Top = 350
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 15
      OnExit = CalculateLabszerkezet
      DataField = 'HATSOLAB'
      DataSource = dtsKeres
    end
    object edtTipus: TTalDBEdit
      Left = 389
      Top = 225
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 19
      DataField = 'TIPUS'
      DataSource = dtsKeres
    end
    object edtBimbo: TTalDBEdit
      Left = 197
      Top = 437
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 18
      OnExit = CalculateTogy
      DataField = 'BIMBO'
      DataSource = dtsKeres
    end
    object edtFarLejt: TTalDBEdit
      Left = 197
      Top = 327
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 14
      OnExit = CalculateLabszerkezet
      DataField = 'FARLEJT'
      DataSource = dtsKeres
    end
    object edtTorzsMely: TTalDBEdit
      Left = 197
      Top = 225
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 11
      OnExit = CalculateTipus
      DataField = 'TORZSMELY'
      DataSource = dtsKeres
    end
    object edtTogyMely: TTalDBEdit
      Left = 197
      Top = 413
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 17
      OnExit = CalculateTogy
      DataField = 'TOGYMELY'
      DataSource = dtsKeres
    end
    object edtCsud: TTalDBEdit
      Left = 197
      Top = 371
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 16
      OnExit = CalculateLabszerkezet
      DataField = 'CSUD'
      DataSource = dtsKeres
    end
    object edtIzom: TTalDBEdit
      Left = 389
      Top = 287
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 20
      DataField = 'IZOM'
      DataSource = dtsKeres
    end
    object edtLab: TTalDBEdit
      Left = 389
      Top = 366
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 21
      DataField = 'LAB'
      DataSource = dtsKeres
    end
    object edtTogy: TTalDBEdit
      Left = 389
      Top = 431
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 22
      DataField = 'TOGY'
      DataSource = dtsKeres
    end
    object edtFulszam: TTalDBEdit
      Left = 144
      Top = 35
      Width = 97
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
      TabOrder = 2
      DataField = 'FULSZAM'
      DataSource = dtsKeres
    end
    object edtTsz: TTalDBEdit
      Left = 320
      Top = 35
      Width = 97
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
      TabOrder = 3
      DataField = 'TEHENSZAM'
      DataSource = dtsKeres
    end
    object edtTeny: TTalDBEdit
      Left = 320
      Top = 11
      Width = 65
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 7
      ParentCtl3D = False
      TabOrder = 1
      OnExit = edtEnarExit
      DataField = 'TENYESZET'
      DataSource = dtsKeres
    end
    object edtNev: TTalDBEdit
      Left = 144
      Top = 83
      Width = 177
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'VEEMENS BATMAN-ET                       '
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 40
      ParentCtl3D = False
      TabOrder = 6
      OnExit = edtKplszExit
      DataField = 'BIKANEV'
      DataSource = dtsKeres
    end
    object edtFarhossz: TTalDBEdit
      Left = 197
      Top = 155
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 8
      OnExit = CalculateTipus
      DataField = 'FARHOSSZ'
      DataSource = dtsKeres
    end
    object edtTorzsHossz: TTalDBEdit
      Left = 197
      Top = 200
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 10
      OnExit = CalculateTipus
      DataField = 'TORZSHOSSZ'
      DataSource = dtsKeres
    end
    object edtCombIzom: TTalDBEdit
      Left = 197
      Top = 264
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 12
      OnExit = CalculateIzom
      DataField = 'COMBIZOM'
      DataSource = dtsKeres
    end
    object edtLapIzom: TTalDBEdit
      Left = 197
      Top = 288
      Width = 22
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 13
      OnExit = CalculateIzom
      DataField = 'LAPIZOM'
      DataSource = dtsKeres
    end
    object edtFarszel: TTalDBEdit
      Left = 197
      Top = 178
      Width = 24
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '1'
      ValueMax = '9'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 9
      OnExit = CalculateTipus
      DataField = 'FARSZEL'
      DataSource = dtsKeres
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 38
    Width = 303
    Height = 518
    Selected.Strings = (
      'ID'#9'16'#9'ID'#9#9
      'ENAR'#9'14'#9'ENAR'#9#9
      'FULSZAM'#9'15'#9'FULSZAM'#9#9
      'TEHENSZAM'#9'15'#9'TEHENSZAM'#9#9
      'KPLSZ'#9'11'#9'KPLSZ'#9#9
      'BIRDAT'#9'18'#9'BIRDAT'#9#9
      'FARMAG'#9'10'#9'FARMAG'#9#9
      'FARHOSSZ'#9'10'#9'FARHOSSZ'#9#9
      'FARSZEL'#9'10'#9'FARSZEL'#9#9
      'TORZSHOSSZ'#9'10'#9'TORZSHOSSZ'#9#9
      'TORZSMELY'#9'10'#9'TORZSMELY'#9#9
      'COMBIZOM'#9'10'#9'COMBIZOM'#9#9
      'LAPIZOM'#9'10'#9'LAPIZOM'#9#9
      'FARLEJT'#9'10'#9'FARLEJT'#9#9
      'HATSOLAB'#9'10'#9'HATSOLAB'#9#9
      'CSUD'#9'10'#9'CSUD'#9#9
      'TOGYMELY'#9'10'#9'TOGYMELY'#9#9
      'BIMBO'#9'10'#9'BIMBO'#9#9
      'TIPUS'#9'10'#9'TIPUS'#9#9
      'IZOM'#9'10'#9'IZOM'#9#9
      'LAB'#9'10'#9'LAB'#9#9
      'TOGY'#9'10'#9'TOGY'#9#9
      'BIKANEV'#9'40'#9'BIKANEV'#9#9
      'TENYESZET'#9'7'#9'TENYESZET'#9#9)
    IniAttributes.SectionName = 'frmKullem'
    DataSource = dtsKeres
  end
  object pnlKeres: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 757
    Height = 38
    Align = alTop
    TabOrder = 3
    object lblS2: TTalLabel
      Left = 384
      Top = 12
      Width = 86
      Height = 13
      Caption = 'B'#237'r'#225'lat d'#225'tuma >= '
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
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    Left = 92
    Top = 236
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
  end
  object sdsKeres: TTalSimpleDataSet
    Aggregates = <>
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT KULLEM.ID, KULLEM.ENAR, E.FULSZAM, E.TEHENSZAM, E.TENYESZ' +
      'ET,'#13#10'APA.KPLSZ, BIRDAT, FARMAG, FARHOSSZ, FARSZEL, TORZSHOSSZ, T' +
      'ORZSMELY, COMBIZOM, LAPIZOM, FARLEJT, HATSOLAB,'#13#10'CSUD, TOGYMELY,' +
      ' BIMBO, KULLEM.TIPUS, IZOM, KULLEM.LAB, KULLEM.TOGY, '#13#10'APA.NEV A' +
      'S BIKANEV'#13#10'FROM KULLEM'#13#10'LEFT JOIN EGYEDEK E ON E.ENAR = KULLEM.E' +
      'NAR'#13#10'LEFT JOIN APA ON APA.KPLSZ = KULLEM.KPLSZ'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT KULLEM.ID, KULLEM.ENAR, E.FULSZAM, E.TEHENSZAM, E.TENYESZ' +
      'ET,'#13#10'APA.KPLSZ, BIRDAT, FARMAG, FARHOSSZ, FARSZEL, TORZSHOSSZ, T' +
      'ORZSMELY, COMBIZOM, LAPIZOM, FARLEJT, HATSOLAB,'#13#10'CSUD, TOGYMELY,' +
      ' BIMBO, KULLEM.TIPUS, IZOM, KULLEM.LAB, KULLEM.TOGY, '#13#10'APA.NEV A' +
      'S BIKANEV'#13#10'FROM KULLEM'#13#10'LEFT JOIN EGYEDEK E ON E.ENAR = KULLEM.E' +
      'NAR'#13#10'LEFT JOIN APA ON APA.KPLSZ = KULLEM.KPLSZ'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 84
    Top = 84
    object sdsKeresID: TBCDField
      DisplayWidth = 16
      FieldName = 'ID'
      Precision = 15
      Size = 0
    end
    object sdsKeresENAR: TWideStringField
      DisplayWidth = 14
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsKeresFULSZAM: TWideStringField
      DisplayWidth = 15
      FieldName = 'FULSZAM'
      Size = 15
    end
    object sdsKeresTEHENSZAM: TWideStringField
      DisplayWidth = 15
      FieldName = 'TEHENSZAM'
      Size = 15
    end
    object sdsKeresKPLSZ: TWideStringField
      DisplayWidth = 5
      FieldName = 'KPLSZ'
      Size = 5
    end
    object sdsKeresBIRDAT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'BIRDAT'
    end
    object sdsKeresFARMAG: TIntegerField
      DisplayWidth = 10
      FieldName = 'FARMAG'
    end
    object sdsKeresFARHOSSZ: TIntegerField
      DisplayWidth = 10
      FieldName = 'FARHOSSZ'
    end
    object sdsKeresFARSZEL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FARSZEL'
    end
    object sdsKeresTORZSHOSSZ: TIntegerField
      DisplayWidth = 10
      FieldName = 'TORZSHOSSZ'
    end
    object sdsKeresTORZSMELY: TIntegerField
      DisplayWidth = 10
      FieldName = 'TORZSMELY'
    end
    object sdsKeresCOMBIZOM: TIntegerField
      DisplayWidth = 10
      FieldName = 'COMBIZOM'
    end
    object sdsKeresLAPIZOM: TIntegerField
      DisplayWidth = 10
      FieldName = 'LAPIZOM'
    end
    object sdsKeresFARLEJT: TIntegerField
      DisplayWidth = 10
      FieldName = 'FARLEJT'
    end
    object sdsKeresHATSOLAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'HATSOLAB'
    end
    object sdsKeresCSUD: TIntegerField
      DisplayWidth = 10
      FieldName = 'CSUD'
    end
    object sdsKeresTOGYMELY: TIntegerField
      DisplayWidth = 10
      FieldName = 'TOGYMELY'
    end
    object sdsKeresBIMBO: TIntegerField
      DisplayWidth = 10
      FieldName = 'BIMBO'
    end
    object sdsKeresTIPUS: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPUS'
    end
    object sdsKeresIZOM: TIntegerField
      DisplayWidth = 10
      FieldName = 'IZOM'
    end
    object sdsKeresLAB: TIntegerField
      DisplayWidth = 10
      FieldName = 'LAB'
    end
    object sdsKeresTOGY: TIntegerField
      DisplayWidth = 10
      FieldName = 'TOGY'
    end
    object sdsKeresBIKANEV: TWideStringField
      DisplayWidth = 40
      FieldName = 'BIKANEV'
      Size = 40
    end
    object sdsKeresTENYESZET: TWideStringField
      DisplayWidth = 7
      FieldName = 'TENYESZET'
      Size = 7
    end
  end
  object dtsKeres: TDataSource
    DataSet = sdsKeres
    Left = 147
    Top = 84
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'TEHENSZAM=TEHENSZAM'
      'KPLSZ=KPLSZ'
      'BIRDAT=BIRDAT'
      'FARMAG=FARMAG'
      'FARHOSSZ=FARHOSSZ'
      'FARSZEL=FARSZEL'
      'TORZSHOSSZ=TORZSHOSSZ'
      'TORZSMELY=TORZSMELY'
      'COMBIZOM=COMBIZOM'
      'LAPIZOM=LAPIZOM'
      'FARLEJT=FARLEJT'
      'HATSOLAB=HATSOLAB'
      'CSUD=CSUD'
      'TOGYMELY=TOGYMELY'
      'BIMBO=BIMBO'
      'TIPUS=TIPUS'
      'IZOM=IZOM'
      'LAB=LAB'
      'TOGY=TOGY'
      'BIKANEV=BIKANEV')
    DataSet = sdsKeres
    Left = 80
    Top = 152
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 39230.840396157400000000
    ReportOptions.LastChange = 40071.924732523150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 160
    Top = 152
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
        Height = 102.047310000000000000
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
          Left = 609.449226540000000000
          Top = 41.574830000000000000
          Width = 43.464566929999990000
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
          Left = 656.693357640000000000
          Top = 41.574830000000000000
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
          Left = 245.669450000000000000
          Top = 60.472480000000000000
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
          Top = 60.472480000000000000
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
          Top = 60.472480000000000000
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
          Align = baCenter
          Left = 238.110451025000000000
          Top = 18.897650000000000000
          Width = 241.889797950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'K'#258#317'llemi b'#258#173'r'#258#711'lati adatok')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 86.929190000000000000
          Top = 83.149660000000000000
          Width = 332.598640000000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
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
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.149660000000000000
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
      end
      object MasterData1: TfrxMasterData
        Height = 28.346446930000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo12: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000022000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'KPLSZ'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."KPLSZ"]')
        end
        object Memo14: TfrxMemoView
          Left = 211.653680000000000000
          Top = 3.779530000000022000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'BIRDAT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."BIRDAT"]')
        end
        object Memo11: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'FARMAG'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."FARMAG"]')
        end
        object Memo18: TfrxMemoView
          Left = 370.393940000001000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'FARLEJT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."FARLEJT"]')
        end
        object Memo20: TfrxMemoView
          Left = 336.378170000000000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'FARSZEL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."FARSZEL"]')
        end
        object Memo21: TfrxMemoView
          Left = 404.409709999999000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'CSANK'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."CSANK"]')
        end
        object Memo22: TfrxMemoView
          Left = 438.425479999999000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'PARTA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."PARTA"]')
        end
        object Memo23: TfrxMemoView
          Left = 472.441249999999000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'MED'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."MED"]')
        end
        object Memo24: TfrxMemoView
          Left = 510.236549999999000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'MELL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."MELL"]')
        end
        object Memo26: TfrxMemoView
          Left = 578.268090000001000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'CSUD'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."CSUD"]')
        end
        object Memo29: TfrxMemoView
          Left = 544.252319999999000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'HATLAB'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."HATLAB"]')
        end
        object Memo30: TfrxMemoView
          Left = 619.842920000001000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'RAMA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."RAMA"]')
        end
        object Memo32: TfrxMemoView
          Left = 653.858690000001000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'IZOM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."IZOM"]')
        end
        object Memo33: TfrxMemoView
          Left = 687.874460000001000000
          Top = 3.779530000000022000
          Width = 26.456692910000000000
          Height = 18.897650000000000000
          DataField = 'LAB'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."LAB"]')
        end
        object Memo37: TfrxMemoView
          Top = 3.779530000000022000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'TENYESZET'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."TENYESZET"]')
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 26.456709999999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        object Memo27: TfrxMemoView
          Left = 578.268090000001800000
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
            'Lista - K'#258#317'llemb'#258#173'r'#258#711'lat adatok lista')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 11.338570470000000000
          Top = 3.779522680000013000
          Width = 68.031503390000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #258#8211'sszesen:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo31: TfrxMemoView
          Left = 86.929190000000000000
          Top = 3.779530000000022000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[COUNT(MasterData1,2)] t'#258#169'tel van a list'#258#711'n')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 143.622140000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Left = 105.826840000000000000
          Top = 120.944960000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 215.433210000000000000
          Top = 120.944960000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'D'#258#711'tum')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 139.842610000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo46: TfrxMemoView
          Left = 306.141927560000000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Farmagass'#258#711'g')
          ParentFont = False
          Rotation = 90
        end
        object Memo50: TfrxMemoView
          Left = 374.173467560001000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Farlejt'#258#169's')
          ParentFont = False
          Rotation = 90
        end
        object Memo51: TfrxMemoView
          Left = 340.157697560001000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Farsz'#258#169'less'#258#169'g')
          ParentFont = False
          Rotation = 90
        end
        object Memo52: TfrxMemoView
          Left = 408.189237559999000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cs'#258#711'nk '#258#711'llaga')
          ParentFont = False
          Rotation = 90
        end
        object Memo53: TfrxMemoView
          Left = 442.205007559999000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'P'#258#711'rtamagass'#258#711'g')
          ParentFont = False
          Rotation = 90
        end
        object Memo54: TfrxMemoView
          Left = 476.220777559999000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Medencehossz')
          ParentFont = False
          Rotation = 90
        end
        object Memo55: TfrxMemoView
          Left = 514.016077560000000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Mellkasm'#258#169'lys'#258#169'g')
          ParentFont = False
          Rotation = 90
        end
        object Memo56: TfrxMemoView
          Left = 582.047617560001000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cs'#258#317'd')
          ParentFont = False
          Rotation = 90
        end
        object Memo57: TfrxMemoView
          Left = 548.031847559999000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'H'#258#711'tuls'#258#322' l'#258#711'b oldaln'#258#169'zet')
          ParentFont = False
          Rotation = 90
        end
        object Memo58: TfrxMemoView
          Left = 623.622447560001000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'R'#258#711'ma')
          ParentFont = False
          Rotation = 90
        end
        object Memo59: TfrxMemoView
          Left = 657.638217560001000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Izmolts'#258#711'g')
          ParentFont = False
          Rotation = 90
        end
        object Memo60: TfrxMemoView
          Left = 691.653987560001000000
          Width = 18.897637800000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'L'#258#711'bszerkezet')
          ParentFont = False
          Rotation = 90
        end
        object Memo64: TfrxMemoView
          Top = 120.944960000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Teny'#258#169'szet')
          ParentFont = False
        end
      end
    end
  end
end
