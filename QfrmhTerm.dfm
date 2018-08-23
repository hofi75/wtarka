inherited frmhTerm: TfrmhTerm
  Left = 318
  Top = 104
  Width = 793
  Height = 557
  Caption = 'H'#225'remszer'#369' term'#233'keny'#237't'#233'sek'
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 480
    Width = 777
    inherited btnTorol: TBitBtn
      Left = 539
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 619
    end
    inherited btnCancel: TBitBtn
      Left = 699
    end
    inherited btnModosit: TBitBtn
      Left = 459
    end
    inherited btnUj: TBitBtn
      Left = 379
    end
    inherited btnNyomtat: TBitBtn
      OnClick = btnNyomtatClick
    end
    object btnAtrak: TTalBitBtn
      Left = 208
      Top = 8
      Width = 123
      Height = 25
      Caption = 'Term'#233'keny'#237't'#233'sbe '#225'trak'
      TabOrder = 6
      Visible = False
      OnClick = btnAtrakClick
    end
  end
  inherited pnlMod: TTalPanel
    Left = 416
    Top = 60
    Width = 361
    Height = 420
    object TalLabel7: TTalLabel
      Left = 8
      Top = 215
      Width = 33
      Height = 13
      Caption = 'ENAR:'
    end
    object TalLabel10: TTalLabel
      Left = 8
      Top = 63
      Width = 40
      Height = 13
      Caption = 'Id'#337'szak:'
    end
    object TalLabel2: TTalLabel
      Left = 8
      Top = 126
      Width = 121
      Height = 13
      Caption = 'Term'#233'keny'#237't'#243' bika KLSZ:'
    end
    object TalLabel11: TTalLabel
      Left = 8
      Top = 151
      Width = 51
      Height = 13
      Caption = 'Bika neve:'
    end
    object TalSpeedButton1: TTalSpeedButton
      Left = 200
      Top = 121
      Width = 20
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = TalSpeedButton1Click
    end
    object TalLabel8: TTalLabel
      Left = 8
      Top = 239
      Width = 41
      Height = 13
      Caption = 'F'#252'lsz'#225'm:'
    end
    object TalLabel3: TTalLabel
      Left = 158
      Top = 63
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object edtAzonosito: TTalDBEdit
      Left = 66
      Top = 210
      Width = 102
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtAzonosito'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 5
      OnExit = edtAzonositoExit
      DataField = 'ENAR'
      DataSource = dtsBon
    end
    object edtTermDatum: TTalDBEdit
      Left = 66
      Top = 58
      Width = 86
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = 'edtT.  .  '
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      TabOrder = 0
      DataField = 'DATUM_TOL'
      DataSource = dtsBon
    end
    object edtTermBika: TTalDBEdit
      Left = 136
      Top = 121
      Width = 61
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      Text = 'edtTermBika'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 2
      OnExit = edtTermBikaExit
      DataField = 'BIKA_KLSZ'
      DataSource = dtsBon
      SpeedButton = TalSpeedButton1
    end
    object TalDBEdit1: TTalDBEdit
      Left = 136
      Top = 146
      Width = 190
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 40
      ParentCtl3D = False
      TabOrder = 3
      DataField = 'NEV'
      DataSource = dtsBon
    end
    object TalDBEdit6: TTalDBEdit
      Left = 66
      Top = 234
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
      DataField = 'FULSZAM'
      DataSource = dtsBon
    end
    object edtTermDatumIg: TTalDBEdit
      Left = 176
      Top = 58
      Width = 86
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = 'edtT.  .  '
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      TabOrder = 1
      DataField = 'DATUM_IG'
      DataSource = dtsBon
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 60
    Width = 416
    Height = 420
    Selected.Strings = (
      'TENYESZET'#9'7'#9'Teny'#233'szet'#9#9
      'ENAR'#9'14'#9'EN'#193'R'#9#9
      'HASZN_SZAM'#9'10'#9'Haszn.sz'#225'm'#9'F'#9
      'DATUM_TOL'#9'10'#9'd'#225'tum-t'#243'l'#9#9
      'DATUM_IG'#9'10'#9'd'#225'tum-ig'#9#9
      'BIKA_KLSZ'#9'11'#9'KLSZ'#9#9
      'FULSZAM'#9'15'#9'F'#252'lsz'#225'm'#9#9)
    DataSource = dtsBon
  end
  object pnlKeres: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 777
    Height = 60
    Align = alTop
    TabOrder = 3
    object lblS2: TTalLabel
      Left = 409
      Top = 12
      Width = 137
      Height = 13
      Caption = 'Utols'#243' m'#243'dos'#237't'#225's d'#225'tuma >= '
    end
    object lblS1: TTalLabel
      Left = 272
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
      Top = 36
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object TalLabel1: TTalLabel
      Left = 457
      Top = 36
      Width = 86
      Height = 13
      Caption = 'Adott napi d'#225'tum  '
    end
    object btnVemhTorol: TTalSpeedButton
      Left = 618
      Top = 7
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
      OnClick = btnVemhTorolClick
    end
    object TalSpeedButton2: TTalSpeedButton
      Left = 618
      Top = 31
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
    object edtDatTol: TTalMaskEdit
      Left = 548
      Top = 8
      Width = 66
      Height = 21
      Hint = 'Enn'#233'l a napn'#225'l nagyobb d'#225'tum'#250' adatok lesznek a list'#225'n'
      EditMask = '!9999.99.00;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '    .  .  '
    end
    object btnLeker: TBitBtn
      Left = 657
      Top = 5
      Width = 112
      Height = 49
      Hint = 'Adatlek'#233'r'#233's a sz'#369'r'#337'felt'#233'telek figyelembev'#233'tel'#233'vel'
      Caption = 'Adatlek'#233'r'#233's'
      TabOrder = 1
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
      Top = 32
      Width = 153
      Height = 21
      DataSource = dtsBon
      TabOrder = 2
    end
    object edtAdottNap: TTalMaskEdit
      Left = 548
      Top = 32
      Width = 66
      Height = 21
      Hint = 'Enn'#233'l a napn'#225'l nagyobb d'#225'tum'#250' adatok lesznek a list'#225'n'
      EditMask = '!9999.99.00;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '    .  .  '
    end
  end
  inherited ActionList1: TActionList
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
  end
  object sdsBon: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'  TH.ID,'#13#10'  E.ENAR,'#13#10'  E.FULSZAM,'#13#10'  E.TENYESZET,'#13#10'  TH.' +
      'EGYED_ID,'#13#10'  TH.BIKA_KLSZ,'#13#10'  TH.DATUM_TOL,'#13#10'  TH.DATUM_IG,'#13#10'  T' +
      'H.UTMOD_DAT,'#13#10'  TH.UTMOD_KOD,'#13#10'  APA.NEV,'#13#10'  SUBSTR(E.ENAR,6,4) ' +
      'AS HASZN_SZAM'#13#10'FROM TERMH TH'#13#10'JOIN EGYEDEK E ON E.ID = TH.EGYED_' +
      'ID'#13#10'JOIN APA ON APA.KPLSZ = TH.BIKA_KLSZ'#13#10' WHERE  1=1'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  TH.ID,'#13#10'  E.ENAR,'#13#10'  E.FULSZAM,'#13#10'  E.TENYESZET,'#13#10'  TH.' +
      'EGYED_ID,'#13#10'  TH.BIKA_KLSZ,'#13#10'  TH.DATUM_TOL,'#13#10'  TH.DATUM_IG,'#13#10'  T' +
      'H.UTMOD_DAT,'#13#10'  TH.UTMOD_KOD,'#13#10'  APA.NEV,'#13#10'  SUBSTR(E.ENAR,6,4) ' +
      'AS HASZN_SZAM'#13#10'FROM TERMH TH'#13#10'JOIN EGYEDEK E ON E.ID = TH.EGYED_' +
      'ID'#13#10'JOIN APA ON APA.KPLSZ = TH.BIKA_KLSZ'#13#10' WHERE  1=1'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 168
    Top = 120
    object sdsBonTENYESZET: TWideStringField
      DisplayLabel = 'Teny'#233'szet'
      DisplayWidth = 7
      FieldName = 'TENYESZET'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object sdsBonENAR: TWideStringField
      DisplayLabel = 'EN'#193'R'
      DisplayWidth = 14
      FieldName = 'ENAR'
      ProviderFlags = []
      OnGetText = sdsBonENARGetText
      Size = 14
    end
    object sdsBonHASZN_SZAM: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Haszn.sz'#225'm'
      DisplayWidth = 10
      FieldName = 'HASZN_SZAM'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object sdsBonDATUM_TOL: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'd'#225'tum-t'#243'l'
      DisplayWidth = 10
      FieldName = 'DATUM_TOL'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBonDATUM_IG: TDateTimeField
      DisplayLabel = 'd'#225'tum-ig'
      DisplayWidth = 10
      FieldName = 'DATUM_IG'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBonBIKA_KLSZ: TBCDField
      DisplayLabel = 'KLSZ'
      DisplayWidth = 11
      FieldName = 'BIKA_KLSZ'
      Precision = 10
      Size = 0
    end
    object sdsBonFULSZAM: TWideStringField
      DisplayLabel = 'F'#252'lsz'#225'm'
      DisplayWidth = 15
      FieldName = 'FULSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsBonID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsBonEGYED_ID: TBCDField
      FieldName = 'EGYED_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsBonUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsBonUTMOD_KOD: TWideStringField
      FieldName = 'UTMOD_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 3
    end
    object sdsBonNEV: TWideStringField
      FieldName = 'NEV'
      ProviderFlags = []
      Visible = False
      FixedChar = True
      Size = 40
    end
  end
  object dtsBon: TDataSource
    DataSet = sdsBon
    Left = 248
    Top = 120
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBhTerm'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TENYESZET=TENYESZET'
      'ENAR=ENAR'
      'HASZN_SZAM=HASZN_SZAM'
      'DATUM_TOL=DATUM_TOL'
      'DATUM_IG=DATUM_IG'
      'BIKA_KLSZ=BIKA_KLSZ'
      'FULSZAM=FULSZAM'
      'ID=ID'
      'EGYED_ID=EGYED_ID'
      'UTMOD_DAT=UTMOD_DAT'
      'UTMOD_KOD=UTMOD_KOD'
      'NEV=NEV')
    OpenDataSource = False
    DataSet = sdsBon
    Left = 112
    Top = 240
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DataSet = frmTibor.frxDBdtsTiborTenyeszet
    DataSetName = 'frxDBdtsTiborTenyeszet'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 40082.914900891210000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo3OnAfterData(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      'begin'
      '    s := <frxDBhTerm."ENAR">;'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo3.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(s' +
        ',10,1)'
      '     Else'
      '       If (Copy(s,1,3) = '#39'HU3'#39') Then'
      
        '        memo3.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy' +
        '(s,12,1) ;'
      'end;'
      ''
      'procedure PageHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo33OnAfterData(Sender: TfrxComponent);'
      'begin'
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
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBhTerm'
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
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 188.976561025000000000
          Top = 52.913420000000000000
          Width = 340.157577950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'H'#258#711'remszer'#313#177' term'#258#169'keny'#258#173't'#258#169'sek lista')
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
          Top = 22.677177560000000000
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
          Left = 86.929190000000010000
          Top = 83.149660000000030000
          Width = 105.826840000000000000
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
        object Line3: TfrxLineView
          Align = baWidth
          Top = 45.354311180000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo36: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.149660000000030000
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
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBhTerm'
        RowCount = 0
        object SysMemo3: TfrxSysMemoView
          Left = 3.779527560000000000
          Width = 30.236220470000000000
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
        object Memo17: TfrxMemoView
          Left = 347.716760000000000000
          Width = 75.590553620000000000
          Height = 18.897650000000000000
          DataField = 'DATUM_TOL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBhTerm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBhTerm."DATUM_TOL"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 268.346630000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'BIKA_KLSZ'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBhTerm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBhTerm."BIKA_KLSZ"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 41.574798270000000000
          Width = 109.606323620000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo3OnAfterData'
          DataField = 'ENAR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBhTerm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBhTerm."ENAR"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 158.740260000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBhTerm'
          Memo.UTF8 = (
            '[frxDBhTerm."HASZN_SZAM"]')
        end
        object Memo15: TfrxMemoView
          Left = 434.645950000000000000
          Width = 75.590553620000000000
          Height = 18.897650000000000000
          DataField = 'DATUM_IG'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBhTerm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBhTerm."DATUM_IG"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 385.512060000000000000
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
          Left = 11.338582680000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'List'#258#711'k - Term'#258#169'keny'#258#173't'#258#169'sek : H'#258#711'remszer'#313#177' term'#258#169'keny'#258#173't'#258#169'sek l' +
              'ista')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'PageHeader1OnAfterPrint'
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
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
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          Left = 41.574798270000000000
          Width = 94.488249999999990000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Egyed azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 347.716762440000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Id'#313#8216'szak -t'#258#322'l')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 277.795455000000000000
          Width = 52.913420000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Bika'
            'azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Hszn'#258#711'lati sz'#258#711'm')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 434.645952440000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Id'#313#8216'szak -Ig')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 7.559040470000000000
          Top = 11.338577800000000000
          Width = 75.590563390000000000
          Height = 15.874018190000000000
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
          Left = 98.267780000000000000
          Top = 11.338590000000010000
          Width = 120.944960000000000000
          Height = 15.874018190000000000
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
end
