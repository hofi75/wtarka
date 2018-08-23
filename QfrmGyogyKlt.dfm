inherited frmGyogyKlt: TfrmGyogyKlt
  Left = 398
  Top = 173
  Width = 817
  Height = 493
  ActiveControl = TalSearch1
  Caption = 'Gy'#243'gyszer k'#233'szletek karbantart'#225'sa'
  OldCreateOrder = True
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 427
    Width = 809
    TabOrder = 3
    inherited btnTorol: TBitBtn
      Left = 563
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 643
    end
    inherited btnCancel: TBitBtn
      Left = 723
    end
    inherited btnModosit: TBitBtn
      Left = 483
    end
    inherited btnUj: TBitBtn
      Left = 403
    end
    object btnFelh: TBitBtn
      Left = 106
      Top = 8
      Width = 157
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Felhaszn'#225'l'#225'sok megtekint'#233'se'
      TabOrder = 6
      OnClick = btnFelhClick
      NumGlyphs = 2
    end
    object btnEgyebFelh: TBitBtn
      Left = 271
      Top = 8
      Width = 117
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Egy'#233'b felhaszn'#225'l'#225'sok'
      TabOrder = 7
      OnClick = btnEgyebFelhClick
      NumGlyphs = 2
    end
  end
  inherited pnlMod: TTalPanel
    Left = 428
    Top = 37
    Width = 381
    Height = 390
    TabOrder = 2
    object TalLabel1: TTalLabel
      Left = 15
      Top = 84
      Width = 188
      Height = 13
      Caption = #201'lelmez'#233's eg'#233'szs'#233'g'#252'gyi v'#225'rakoz'#225'si id'#337':'
    end
    object Label4: TTalLabel
      Left = 47
      Top = 109
      Width = 53
      Height = 13
      Caption = 'Tej eset'#233'n:'
      FocusControl = edtTej
    end
    object TalLabel3: TTalLabel
      Left = 159
      Top = 109
      Width = 18
      Height = 13
      Caption = 'nap'
      FocusControl = edtTej
    end
    object Label3: TTalLabel
      Left = 215
      Top = 109
      Width = 57
      Height = 13
      Caption = 'H'#250's eset'#233'n:'
      FocusControl = edtHus
    end
    object TalLabel4: TTalLabel
      Left = 319
      Top = 109
      Width = 18
      Height = 13
      Caption = 'nap'
      FocusControl = edtTej
    end
    object Label9: TTalLabel
      Left = 4
      Top = 30
      Width = 73
      Height = 13
      Caption = 'Gy'#243'gyszer k'#243'd:'
      FocusControl = edtGyogyszerKod
    end
    object btnGyogyszer: TTalSpeedButton
      Left = 133
      Top = 25
      Width = 23
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
      OnClick = btnGyogyszerClick
    end
    object TalLabel2: TTalLabel
      Left = 15
      Top = 61
      Width = 124
      Height = 13
      Caption = 'Hat'#243'anyag megnevez'#233'se:'
      FocusControl = edtHatoanyag
    end
    object TalLabel5: TTalLabel
      Left = 4
      Top = 189
      Width = 89
      Height = 13
      Caption = 'Beszerz'#233's d'#225'tuma:'
    end
    object TalLabel6: TTalLabel
      Left = 4
      Top = 220
      Width = 91
      Height = 13
      Caption = 'Mennyis'#233'g egys'#233'g:'
    end
    object TalLabel7: TTalLabel
      Left = 40
      Top = 260
      Width = 105
      Height = 13
      Caption = 'Beszerzett mennyis'#233'g:'
      FocusControl = edtBeszMenny
    end
    object TalLabel8: TTalLabel
      Left = 40
      Top = 292
      Width = 109
      Height = 13
      Caption = 'Felhaszn'#225'lt mennyis'#233'g:'
    end
    object TalLabel9: TTalLabel
      Left = 40
      Top = 356
      Width = 76
      Height = 13
      Caption = 'Aktu'#225'lis k'#233'szlet:'
      FocusControl = edtAktKeszl
    end
    object Label6: TTalLabel
      Left = 15
      Top = 141
      Width = 57
      Height = 13
      Caption = 'Forgalmaz'#243':'
      FocusControl = DBEdit6
    end
    object TalLabel10: TTalLabel
      Left = 40
      Top = 324
      Width = 94
      Height = 13
      Caption = 'Egy'#233'b felhaszn'#225'l'#225's:'
    end
    object edtTej: TTalDBEdit
      Left = 115
      Top = 105
      Width = 41
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 0
      DataField = 'VARAKOZAS_TEJ'
      DataSource = dsGYOGYKlt
    end
    object edtHus: TTalDBEdit
      Left = 275
      Top = 105
      Width = 41
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 1
      DataField = 'VARAKOZAS_HUS'
      DataSource = dsGYOGYKlt
    end
    object edtGyogyszerKod: TTalDBEdit
      Left = 85
      Top = 25
      Width = 45
      Height = 22
      Hint = 'F9-re v'#225'laszthat a gy'#243'gyszerek k'#246'z'#252'l'
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtGyogyszerKod'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 2
      OnExit = edtGyogyszerKodExit
      DataField = 'GYOGYSZER_KOD'
      DataSource = dsGYOGYKlt
      SpeedButton = btnGyogyszer
    end
    object edtGyogyszerNev: TTalDBEdit
      Left = 159
      Top = 25
      Width = 210
      Height = 22
      TabStop = False
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Text = 'DBEdit10'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      DataField = 'NEV'
      DataSource = dsGYOGYKlt
    end
    object edtHatoanyag: TTalDBEdit
      Left = 149
      Top = 57
      Width = 220
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 4
      DataField = 'HATOANYAG'
      DataSource = dsGYOGYKlt
    end
    object edtDatum: TTalDBEdit
      Left = 120
      Top = 184
      Width = 84
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = 'edtD.  .  '
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      TabOrder = 5
      DataField = 'BEVET_DATUM'
      DataSource = dsGYOGYKlt
    end
    object cbMe: TTalDBLookupComboBox
      Left = 120
      Top = 216
      Width = 241
      Height = 21
      DataField = 'ME'
      DataSource = dsGYOGYKlt
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtsMe
      TabOrder = 6
    end
    object edtBeszMenny: TTalDBEdit
      Left = 156
      Top = 256
      Width = 65
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = 'edtBeszMenny'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 7
      OnExit = edtBeszMennyExit
      DataField = 'BEV_MENNY'
      DataSource = dsGYOGYKlt
    end
    object edtAktKeszl: TTalDBEdit
      Left = 156
      Top = 352
      Width = 65
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = 'edtAktKeszl'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 8
      DataField = 'AKT_KESZLET'
      DataSource = dsGYOGYKlt
    end
    object DBEdit6: TTalDBEdit
      Left = 84
      Top = 137
      Width = 285
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'DBEdit6'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 9
      DataField = 'FORGALMAZO_NEV'
      DataSource = dsGYOGYKlt
    end
    object edtFelh: TTalEdit
      Left = 156
      Top = 288
      Width = 65
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = '0'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      ReadOnly = False
      TabOrder = 10
    end
    object edtEgyeb: TTalEdit
      Left = 156
      Top = 319
      Width = 65
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = '0'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      ReadOnly = False
      TabOrder = 11
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 37
    Width = 428
    Height = 390
    TabStop = True
    Selected.Strings = (
      'GYOGYSZER_KOD'#9'10'#9'Gy'#243'gyszer k'#243'd'#9#9
      'NEV'#9'30'#9'Gy'#243'gyszer n'#233'v'#9#9
      'AKT_KESZLET'#9'10'#9'K'#233'szlet'#9#9
      'ME'#9'10'#9'Me'#9#9
      'ID'#9'16'#9'ID'#9'F'#9)
    IniAttributes.SectionName = 'frmGyogyKlt'
    BorderStyle = bsNone
    DataSource = dsGYOGYKlt
    TabOrder = 1
    OnDblClick = grdValDblClick
    OnKeyDown = grdValKeyDown
  end
  object AIRPanel1: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 809
    Height = 37
    Align = alTop
    TabOrder = 0
    DesignSize = (
      809
      37)
    object TalLabel18: TTalLabel
      Left = 8
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object TalSearch1: TTalSearch
      Left = 58
      Top = 8
      Width = 153
      Height = 21
      DataSource = dsGYOGYKlt
      CaseSensitivity = wwcsCaseInsensitive
      TabOrder = 0
      OnKeyDown = TalSearch1KeyDown
    end
    object btnLeker: TBitBtn
      Left = 688
      Top = 5
      Width = 97
      Height = 27
      Action = actLeker
      Anchors = [akTop, akRight]
      Caption = 'Adatlek'#233'r'#233's'
      TabOrder = 1
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
    object cbCsakKeszlettel: TTalCheckBox
      Left = 460
      Top = 10
      Width = 225
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Csak a k'#233'szlettel rendelkez'#337'ket mutatja'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
    object actLeker: TAction
      Caption = 'Adatlek'#233'r'#233's'
      OnExecute = actLekerExecute
    end
  end
  object dsGYOGYKlt: TDataSource
    DataSet = sdsGYOGYKlt
    Left = 264
    Top = 52
  end
  object sdsMe: TTalQuery
    Parameters = <>
    SQL.Strings = (
      'select  kk.KOD, '
      'kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'ME'#39
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
  object sdsGYOGYKlt: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'GK.GYOGYSZER_KOD,'#13#10'GY.NEV,'#13#10'GY.HATOANYAG,'#13#10'GY.VARAKOZAS_' +
      'TEJ,'#13#10'GY.VARAKOZAS_HUS,'#13#10'GY.FORGALMAZO_NEV,'#13#10'GK.BEVET_DATUM,'#13#10'GK' +
      '.BEV_MENNY,'#13#10'GK.AKT_KESZLET,'#13#10'GK.ME,'#13#10'GK.ID,'#13#10'GY.ID AS GYOGYSZER' +
      '_ID,'#13#10'GK.UTMOD_DAT, '#13#10'GK.UTMOD_KOD'#13#10'FROM GYOGYSZER_KLT GK'#13#10'JOIN ' +
      'GYOGYSZEREK GY ON GY.KOD=GK.GYOGYSZER_KOD'#13#10'JOIN KODOK ME ON ME.K' +
      'OD=GK.ME AND ME.KODTIPUSOK_TIPUSKOD='#39'ME'#39#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'GK.GYOGYSZER_KOD,'#13#10'GY.NEV,'#13#10'GY.HATOANYAG,'#13#10'GY.VARAKOZAS_' +
      'TEJ,'#13#10'GY.VARAKOZAS_HUS,'#13#10'GY.FORGALMAZO_NEV,'#13#10'GK.BEVET_DATUM,'#13#10'GK' +
      '.BEV_MENNY,'#13#10'GK.AKT_KESZLET,'#13#10'GK.ME,'#13#10'GK.ID,'#13#10'GY.ID AS GYOGYSZER' +
      '_ID,'#13#10'GK.UTMOD_DAT, '#13#10'GK.UTMOD_KOD'#13#10'FROM GYOGYSZER_KLT GK'#13#10'JOIN ' +
      'GYOGYSZEREK GY ON GY.KOD=GK.GYOGYSZER_KOD'#13#10'JOIN KODOK ME ON ME.K' +
      'OD=GK.ME AND ME.KODTIPUSOK_TIPUSKOD='#39'ME'#39#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    AfterScroll = sdsGYOGYKltAfterScroll
    Left = 168
    Top = 56
    object sdsGYOGYKltGYOGYSZER_KOD: TWideStringField
      DisplayLabel = 'Gy'#243'gyszer k'#243'd'
      DisplayWidth = 10
      FieldName = 'GYOGYSZER_KOD'
      Size = 10
    end
    object sdsGYOGYKltNEV: TWideStringField
      DisplayLabel = 'Gy'#243'gyszer n'#233'v'
      DisplayWidth = 30
      FieldName = 'NEV'
      ProviderFlags = []
      Size = 80
    end
    object sdsGYOGYKltAKT_KESZLET: TBCDField
      DisplayLabel = 'K'#233'szlet'
      DisplayWidth = 10
      FieldName = 'AKT_KESZLET'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsGYOGYKltME: TWideStringField
      DisplayLabel = 'Me'
      DisplayWidth = 10
      FieldName = 'ME'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsGYOGYKltID: TBCDField
      DisplayWidth = 16
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object sdsGYOGYKltBEVET_DATUM: TDateTimeField
      DisplayLabel = 'Bev'#233't d'#225'tum'
      DisplayWidth = 18
      FieldName = 'BEVET_DATUM'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsGYOGYKltVARAKOZAS_TEJ: TBCDField
      FieldName = 'VARAKOZAS_TEJ'
      Precision = 10
      Size = 0
    end
    object sdsGYOGYKltVARAKOZAS_HUS: TBCDField
      FieldName = 'VARAKOZAS_HUS'
      Precision = 10
      Size = 0
    end
    object sdsGYOGYKltHATOANYAG: TWideStringField
      DisplayWidth = 80
      FieldName = 'HATOANYAG'
      ProviderFlags = []
      Visible = False
      Size = 80
    end
    object sdsGYOGYKltFORGALMAZO_NEV: TWideStringField
      DisplayWidth = 80
      FieldName = 'FORGALMAZO_NEV'
      ProviderFlags = []
      Visible = False
      Size = 80
    end
    object sdsGYOGYKltBEV_MENNY: TBCDField
      DisplayWidth = 16
      FieldName = 'BEV_MENNY'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 15
      Size = 2
    end
    object sdsGYOGYKltGYOGYSZER_ID: TBCDField
      FieldName = 'GYOGYSZER_ID'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsGYOGYKltUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsGYOGYKltUTMOD_KOD: TWideStringField
      FieldName = 'UTMOD_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 3
    end
  end
  object dtsMe: TDataSource
    DataSet = sdsMe
    Left = 264
    Top = 108
  end
  object sdsFelh: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'COALESCE((SELECT SUM(K.GYMENNY_1) FROM KEZELESEK K WHERE' +
      ' K.GYKLT1_ID=GYK.ID  ), 0) +'#13#10'COALESCE((SELECT SUM(K.GYMENNY_2) ' +
      'FROM KEZELESEK K WHERE K.GYKLT2_ID=GYK.ID  ), 0) +'#13#10'COALESCE((SE' +
      'LECT SUM(K.GYMENNY_3) FROM KEZELESEK K WHERE K.GYKLT3_ID=GYK.ID ' +
      ' ), 0) AS SUMFELH,'#13#10'coalesce((SELECT SUM(MENNYISEG) FROM GYFELH ' +
      'WHERE GYFELH.GYOGYSZERKLT_ID=GYK.ID),0) AS EGYEB'#13#10'FROM GYOGYSZER' +
      '_KLT GYK'#13#10'WHERE GYK.ID = :ID'#13#10
    DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'COALESCE((SELECT SUM(K.GYMENNY_1) FROM KEZELESEK K WHERE' +
      ' K.GYKLT1_ID=GYK.ID  ), 0) +'#13#10'COALESCE((SELECT SUM(K.GYMENNY_2) ' +
      'FROM KEZELESEK K WHERE K.GYKLT2_ID=GYK.ID  ), 0) +'#13#10'COALESCE((SE' +
      'LECT SUM(K.GYMENNY_3) FROM KEZELESEK K WHERE K.GYKLT3_ID=GYK.ID ' +
      ' ), 0) AS SUMFELH,'#13#10'coalesce((SELECT SUM(MENNYISEG) FROM GYFELH ' +
      'WHERE GYFELH.GYOGYSZERKLT_ID=GYK.ID),0) AS EGYEB'#13#10'FROM GYOGYSZER' +
      '_KLT GYK'#13#10'WHERE GYK.ID = :ID'#13#10
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 168
    Top = 168
    object sdsFelhSUMFELH: TBCDField
      FieldName = 'SUMFELH'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object sdsFelhEGYEB: TBCDField
      FieldName = 'EGYEB'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object dtsFelh: TDataSource
    DataSet = sdsFelh
    Left = 264
    Top = 164
  end
end
