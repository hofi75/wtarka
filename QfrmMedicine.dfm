inherited frmMedicine: TfrmMedicine
  Left = 296
  Top = 121
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  ActiveControl = TalSearch1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gy'#243'gyszerek'
  ClientHeight = 493
  ClientWidth = 876
  OldCreateOrder = True
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnDblClick = FormDblClick
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 454
    Width = 876
    inherited btnTorol: TBitBtn
      Left = 630
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 710
    end
    inherited btnCancel: TBitBtn
      Left = 790
    end
    inherited btnModosit: TBitBtn
      Left = 550
    end
    inherited btnUj: TBitBtn
      Left = 470
    end
  end
  inherited pnlMod: TTalPanel
    Left = 465
    Top = 33
    Width = 411
    Height = 421
    object Label1: TTalLabel
      Left = 12
      Top = 44
      Width = 73
      Height = 13
      Caption = 'Gy'#243'gyszer k'#243'd:'
      FocusControl = DBEdit1
    end
    object Label2: TTalLabel
      Left = 12
      Top = 88
      Width = 79
      Height = 13
      Caption = 'Gy'#243'gyszer neve:'
      FocusControl = DBEdit2
    end
    object Label3: TTalLabel
      Left = 204
      Top = 187
      Width = 57
      Height = 13
      Caption = 'H'#250's eset'#233'n:'
      FocusControl = DBEdit3
    end
    object Label4: TTalLabel
      Left = 12
      Top = 187
      Width = 53
      Height = 13
      Caption = 'Tej eset'#233'n:'
      FocusControl = DBEdit4
    end
    object Label5: TTalLabel
      Left = 11
      Top = 261
      Width = 88
      Height = 13
      Caption = 'C'#233'lzott korcsoport:'
      FocusControl = DBEdit5
    end
    object Label6: TTalLabel
      Left = 12
      Top = 334
      Width = 57
      Height = 13
      Caption = 'Forgalmaz'#243':'
      FocusControl = DBEdit6
    end
    object Label7: TTalLabel
      Left = 12
      Top = 370
      Width = 27
      Height = 13
      Caption = 'C'#237'me:'
      FocusControl = DBEdit7
    end
    object TalLabel1: TTalLabel
      Left = 12
      Top = 159
      Width = 188
      Height = 13
      Caption = #201'lelmez'#233's eg'#233'szs'#233'g'#252'gyi v'#225'rakoz'#225'si id'#337':'
    end
    object TalBevel1: TTalBevel
      Left = 16
      Top = 305
      Width = 365
      Height = 5
      Shape = bsTopLine
    end
    object TalLabel2: TTalLabel
      Left = 12
      Top = 118
      Width = 124
      Height = 13
      Caption = 'Hat'#243'anyag megnevez'#233'se:'
      FocusControl = TalDBEdit1
    end
    object TalLabel3: TTalLabel
      Left = 148
      Top = 187
      Width = 18
      Height = 13
      Caption = 'nap'
      FocusControl = DBEdit4
    end
    object TalLabel4: TTalLabel
      Left = 319
      Top = 187
      Width = 18
      Height = 13
      Caption = 'nap'
      FocusControl = DBEdit4
    end
    object TalLabel5: TTalLabel
      Left = 12
      Top = 230
      Width = 74
      Height = 13
      Caption = 'Betegs'#233'g t'#237'pus:'
      FocusControl = DBEdit5
    end
    object DBEdit1: TTalDBEdit
      Left = 141
      Top = 40
      Width = 52
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'DBEdit1'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 0
      DataField = 'KOD'
      DataSource = dsGYOGYSZEREK
    end
    object DBEdit2: TTalDBEdit
      Left = 141
      Top = 84
      Width = 260
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'DBEdit2'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 1
      DataField = 'NEV'
      DataSource = dsGYOGYSZEREK
    end
    object DBEdit3: TTalDBEdit
      Left = 274
      Top = 183
      Width = 41
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = 'DBEdit3'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 4
      DataField = 'VARAKOZAS_HUS'
      DataSource = dsGYOGYSZEREK
    end
    object DBEdit4: TTalDBEdit
      Left = 104
      Top = 183
      Width = 41
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = 'DBEdit4'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 3
      DataField = 'VARAKOZAS_TEJ'
      DataSource = dsGYOGYSZEREK
    end
    object DBEdit5: TTalDBEdit
      Left = 103
      Top = 257
      Width = 282
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'DBEdit5'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 6
      DataField = 'CELCSOPORT'
      DataSource = dsGYOGYSZEREK
    end
    object DBEdit6: TTalDBEdit
      Left = 104
      Top = 330
      Width = 280
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'DBEdit6'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 7
      DataField = 'FORGALMAZO_NEV'
      DataSource = dsGYOGYSZEREK
    end
    object DBEdit7: TTalDBEdit
      Left = 104
      Top = 362
      Width = 280
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'DBEdit7'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 8
      DataField = 'FORGALMAZO_CIM'
      DataSource = dsGYOGYSZEREK
    end
    object TalDBEdit1: TTalDBEdit
      Left = 141
      Top = 114
      Width = 260
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'TalDBEdit1'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 2
      DataField = 'HATOANYAG'
      DataSource = dsGYOGYSZEREK
    end
    object TalDBLookupComboBox1: TTalDBLookupComboBox
      Left = 104
      Top = 226
      Width = 225
      Height = 21
      DataField = 'BETEGSEGTIPUS'
      DataSource = dsGYOGYSZEREK
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtsBetTip
      TabOrder = 5
    end
  end
  object pnlKereses: TPanel [2]
    Left = 0
    Top = 0
    Width = 876
    Height = 33
    Align = alTop
    TabOrder = 2
    TabStop = True
    object Label8: TLabel
      Left = 26
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object TalLabel6: TTalLabel
      Left = 481
      Top = 8
      Width = 74
      Height = 13
      Caption = 'Betegs'#233'g t'#237'pus:'
      FocusControl = DBEdit5
    end
    object TalLabel7: TTalLabel
      Left = 440
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Sz'#252'r'#337':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TalSearch1: TTalSearch
      Left = 80
      Top = 4
      Width = 208
      Height = 21
      DataSource = dsGYOGYSZEREK
      CaseSensitivity = wwcsCaseInsensitive
      TabOrder = 0
      OnKeyDown = TalSearch1KeyDown
    end
    object cbBetTipSzuro: TTalComboBox
      Left = 560
      Top = 4
      Width = 193
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnCloseUp = btnLekerClick
    end
    object btnLeker: TBitBtn
      Left = 760
      Top = 2
      Width = 97
      Height = 27
      Hint = 'Adatlek'#233'r'#233's a sz'#369'r'#337'felt'#233'telek figyelembev'#233'tel'#233'vel'
      Caption = 'Adatlek'#233'r'#233's'
      TabOrder = 2
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
  end
  inherited grdVal: TTalDBGrid
    Top = 33
    Width = 465
    Height = 421
    Selected.Strings = (
      'KOD'#9'10'#9'K'#243'd'
      'NEV'#9'55'#9'Gy'#243'gyszer n'#233'v'
      'VARAKOZAS_TEJ'#9'11'#9'V'#225'rakoz'#225's T'
      'VARAKOZAS_HUS'#9'11'#9'V'#225'rakoz'#225's H'
      'CELCSOPORT'#9'40'#9'C'#233'lcsoport'
      'FORGALMAZO_NEV'#9'80'#9'Forgalmaz'#243
      'FORGALMAZO_CIM'#9'80'#9'C'#237'me'
      'HATOANYAG'#9'80'#9'HATOANYAG'
      'BETEGSEGTIPUS'#9'10'#9'BETEGSEGTIPUS')
    IniAttributes.SectionName = 'frmMedicine'
    DataSource = dsGYOGYSZEREK
    TabOrder = 3
    OnKeyDown = grdValKeyDown
  end
  inherited ActionList1: TActionList
    inherited actOK: TAction
      OnExecute = btnOKClick
    end
    inherited actMegsem: TAction
      OnExecute = btnCancelClick
    end
  end
  object sdsGYOGYSZEREK: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 'SELECT * FROM GYOGYSZEREK'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 'SELECT * FROM GYOGYSZEREK'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 168
    Top = 52
    object sdsGYOGYSZEREKID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsGYOGYSZEREKKOD: TWideStringField
      DisplayLabel = 'K'#243'd'
      DisplayWidth = 10
      FieldName = 'KOD'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsGYOGYSZEREKNEV: TWideStringField
      DisplayLabel = 'Gy'#243'gyszer n'#233'v'
      DisplayWidth = 55
      FieldName = 'NEV'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsGYOGYSZEREKVARAKOZAS_TEJ: TBCDField
      DisplayLabel = 'V'#225'rakoz'#225's T'
      DisplayWidth = 11
      FieldName = 'VARAKOZAS_TEJ'
      Precision = 10
      Size = 0
    end
    object sdsGYOGYSZEREKVARAKOZAS_HUS: TBCDField
      DisplayLabel = 'V'#225'rakoz'#225's H'
      DisplayWidth = 11
      FieldName = 'VARAKOZAS_HUS'
      Precision = 10
      Size = 0
    end
    object sdsGYOGYSZEREKCELCSOPORT: TWideStringField
      DisplayLabel = 'C'#233'lcsoport'
      DisplayWidth = 40
      FieldName = 'CELCSOPORT'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsGYOGYSZEREKFORGALMAZO_NEV: TWideStringField
      DisplayLabel = 'Forgalmaz'#243
      DisplayWidth = 80
      FieldName = 'FORGALMAZO_NEV'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsGYOGYSZEREKFORGALMAZO_CIM: TWideStringField
      DisplayLabel = 'C'#237'me'
      DisplayWidth = 80
      FieldName = 'FORGALMAZO_CIM'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsGYOGYSZEREKHATOANYAG: TWideStringField
      DisplayWidth = 80
      FieldName = 'HATOANYAG'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsGYOGYSZEREKBETEGSEGTIPUS: TWideStringField
      DisplayWidth = 10
      FieldName = 'BETEGSEGTIPUS'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dsGYOGYSZEREK: TDataSource
    DataSet = sdsGYOGYSZEREK
    Left = 264
    Top = 52
  end
  object sdsBetTip: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  kk.KOD, '
      'kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'BET_TIP'#39
      '')
    Left = 168
    Top = 112
    object StringField33: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField34: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsBetTip: TDataSource
    DataSet = sdsBetTip
    Left = 264
    Top = 112
  end
end
