inherited frmMarhaLev: TfrmMarhaLev
  Left = 356
  Top = 156
  Width = 788
  Height = 547
  Caption = 'Marhalev'#233'l adatok karbantart'#225'sa'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 470
    Width = 772
    TabOrder = 2
    inherited btnTorol: TBitBtn
      Left = 534
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 614
    end
    inherited btnCancel: TBitBtn
      Left = 694
    end
    inherited btnModosit: TBitBtn
      Left = 454
    end
    inherited btnUj: TBitBtn
      Left = 374
    end
    inherited btnNyomtat: TBitBtn
      OnClick = btnNyomtatClick
    end
  end
  inherited pnlMod: TTalPanel
    Left = 428
    Top = 38
    Height = 432
    object TalLabel3: TTalLabel
      Left = 7
      Top = 15
      Width = 81
      Height = 13
      Caption = 'Egyed azonosit'#243':'
    end
    object TalLabel4: TTalLabel
      Left = 7
      Top = 65
      Width = 77
      Height = 13
      Caption = 'Sz'#252'let'#233'si d'#225'tum:'
    end
    object TalLabel5: TTalLabel
      Left = 7
      Top = 89
      Width = 31
      Height = 13
      Caption = 'Neme:'
    end
    object TalLabel6: TTalLabel
      Left = 7
      Top = 113
      Width = 30
      Height = 13
      Caption = 'Sz'#237'ne:'
    end
    object TalLabel7: TTalLabel
      Left = 7
      Top = 136
      Width = 26
      Height = 13
      Caption = 'Fajta:'
    end
    object TalLabel8: TTalLabel
      Left = 7
      Top = 160
      Width = 41
      Height = 13
      Caption = 'F'#252'lsz'#225'm:'
    end
    object TalLabel10: TTalLabel
      Left = 7
      Top = 208
      Width = 125
      Height = 13
      Caption = 'Teny'#233'szetbe '#233'rkez'#233's d'#225't.:'
    end
    object TalLabel11: TTalLabel
      Left = 7
      Top = 232
      Width = 83
      Height = 13
      Caption = 'Anya azonosit'#243'ja:'
    end
    object TalLabel14: TTalLabel
      Left = 7
      Top = 286
      Width = 56
      Height = 13
      Caption = 'Ell'#233's m'#243'dja:'
    end
    object TalLabel15: TTalLabel
      Left = 7
      Top = 310
      Width = 65
      Height = 13
      Caption = 'Borj'#250' t'#246'mege:'
    end
    object TalLabel16: TTalLabel
      Left = 7
      Top = 333
      Width = 90
      Height = 13
      Caption = 'Bejelent'#233's d'#225'tuma:'
      Visible = False
    end
    object TalLabel18: TTalLabel
      Left = 192
      Top = 310
      Width = 12
      Height = 13
      Caption = 'kg'
    end
    object TalLabel1: TTalLabel
      Left = 7
      Top = 366
      Width = 97
      Height = 13
      Caption = 'Marhalev'#233'l sz'#225'ma 1:'
    end
    object TalLabel13: TTalLabel
      Left = 7
      Top = 390
      Width = 97
      Height = 13
      Caption = 'Marhalev'#233'l sz'#225'ma 2:'
    end
    object TalLabel17: TTalLabel
      Left = 7
      Top = 41
      Width = 94
      Height = 13
      Caption = 'Enar teny'#233'szet k'#243'd:'
    end
    object TalLabel9: TTalLabel
      Left = 7
      Top = 184
      Width = 60
      Height = 13
      Caption = 'Egyed neve:'
    end
    object edtAzonosito: TTalDBEdit
      Left = 146
      Top = 8
      Width = 127
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
      DataSource = dtsMarhaLev
    end
    object TalDBEdit2: TTalDBEdit
      Left = 146
      Top = 60
      Width = 87
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
      DataSource = dtsMarhaLev
    end
    object TalDBEdit3: TTalDBEdit
      Left = 146
      Top = 84
      Width = 168
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'TalDBEdit3'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 2
      DataField = 'IVARNEV'
      DataSource = dtsMarhaLev
    end
    object TalDBEdit4: TTalDBEdit
      Left = 146
      Top = 108
      Width = 168
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Text = 'TalDBEdit4'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 3
      DataField = 'SZINNEV'
      DataSource = dtsMarhaLev
    end
    object TalDBEdit5: TTalDBEdit
      Left = 146
      Top = 155
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
      TabOrder = 4
      DataField = 'FULSZAM'
      DataSource = dtsMarhaLev
    end
    object TalDBEdit6: TTalDBEdit
      Left = 146
      Top = 203
      Width = 89
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
      TabOrder = 5
      DataField = 'ALLDAT'
      DataSource = dtsMarhaLev
    end
    object TalDBEdit7: TTalDBEdit
      Left = 146
      Top = 227
      Width = 121
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
      TabOrder = 6
      DataField = 'ANYA_ENAR'
      DataSource = dtsMarhaLev
    end
    object TalDBEdit10: TTalDBEdit
      Left = 146
      Top = 305
      Width = 41
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = 'TalDBEdit10'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 7
      DataField = 'BORJU_SULY'
      DataSource = dtsMarhaLev
    end
    object TalDBEdit11: TTalDBEdit
      Left = 146
      Top = 328
      Width = 87
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 8
      Visible = False
      DataSource = dtsMarhaLev
    end
    object TalDBEdit8: TTalDBEdit
      Left = 146
      Top = 281
      Width = 168
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Text = 'TalDBEdit8'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 9
      DataField = 'ELLLEFNEV'
      DataSource = dtsMarhaLev
    end
    object edtMarhaLevSzam: TTalDBEdit
      Left = 146
      Top = 361
      Width = 87
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Text = 'edtMarhaLevSzam'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 10
      OnExit = edtMarhaLevSzamExit
      DataField = 'MLEVEL1'
      DataSource = dtsMarhaLev
    end
    object edtTenyeszetKod: TTalEdit
      Left = 146
      Top = 36
      Width = 87
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      ReadOnly = False
      TabOrder = 11
    end
    object TalDBEdit1: TTalDBEdit
      Left = 146
      Top = 179
      Width = 168
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'TalDBEdit1'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 12
      DataField = 'NEV'
      DataSource = dtsMarhaLev
    end
    object TalDBEdit9: TTalDBEdit
      Left = 146
      Top = 132
      Width = 168
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'TalDBEdit9'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 13
      DataField = 'FAJTANEV'
      DataSource = dtsMarhaLev
    end
    object TalDBEdit12: TTalDBEdit
      Left = 146
      Top = 385
      Width = 87
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Text = 'TalDBEdit12'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 14
      OnExit = edtMarhaLevSzamExit
      DataField = 'MLEVEL2'
      DataSource = dtsMarhaLev
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 38
    Width = 428
    Height = 432
    IniAttributes.SectionName = 'frmMarhaLev'
    DataSource = dtsMarhaLev
    TabOrder = 0
  end
  object pnlKeres: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 772
    Height = 38
    Align = alTop
    TabOrder = 3
    object lblS2: TTalLabel
      Left = 431
      Top = 12
      Width = 137
      Height = 13
      Caption = 'Utols'#243' m'#243'dos'#237't'#225's d'#225'tuma >= '
    end
    object lblS1: TTalLabel
      Left = 294
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
    object TalLabel12: TTalLabel
      Left = 8
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object btnLeker: TBitBtn
      Left = 660
      Top = 5
      Width = 97
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
      DataSource = dtsMarhaLev
      TabOrder = 1
    end
    object edtDatTol: TTalEdit
      Left = 576
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
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
  end
  object sdsMarhaLev: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'  E.ID,'#13#10'  E.ENAR,'#13#10'  e.FULSZAM,'#13#10'  E.SZULDAT,'#13#10'  E.IVAR' +
      ','#13#10'  E.IVAR || '#39' - '#39' || KI.KOD_NEV AS IVARNEV,'#13#10'  E.SZIN,'#13#10'  E.S' +
      'ZIN || '#39' - '#39' || KS.KOD_NEV AS SZINNEV,'#13#10'  E.FAJTAKOD || '#39' - '#39' ||' +
      ' FAJTA.KOD_NEV AS FAJTANEV,'#13#10'  E.NEV,'#13#10'  E.ALLDAT,'#13#10'  E.ANYA_ENA' +
      'R,'#13#10'  ELLESEK.ELLES_LEF,'#13#10'  ELLESEK.ELLES_LEF || '#39' - '#39' || KEF.KO' +
      'D_NEV AS ELLLEFNEV,'#13#10'  BORJAK.BORJU_SULY,'#13#10'  E.MOD_DAT,'#13#10'  E.MOD' +
      '_KOD,'#13#10'  E.MLEVEL1,'#13#10'  E.MLEVEL2'#13#10'FROM EGYEDEK E'#13#10'LEFT JOIN BORJ' +
      'AK ON BORJAK.BORJU_ENAR = E.ENAR'#13#10'LEFT JOIN ELLESEK ON ELLESEK.I' +
      'D = BORJAK.ELLESEK_ID'#13#10'LEFT JOIN KODOK KI ON KI.KOD = E.IVAR AND' +
      ' KI.KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39#13#10'LEFT JOIN KODOK KS ON KS.KOD =' +
      ' E.SZIN AND KS.KODTIPUSOK_TIPUSKOD = '#39'SZIN'#39#13#10'LEFT JOIN KODOK KEF' +
      ' ON KEF.KOD = ELLESEK.ELLES_LEF AND KEF.KODTIPUSOK_TIPUSKOD = '#39'E' +
      'LL_LEF'#39#13#10'LEFT JOIN KODOK FAJTA ON FAJTA.KODTIPUSOK_TIPUSKOD = '#39'F' +
      'AJTA'#39' AND FAJTA.KOD = E.FAJTAKOD'#13#10'WHERE (TRIM(E.MLEVEL1) > '#39' '#39') ' +
      'AND (TRIM(E.MLEVEL2) > '#39' '#39') AND (E.ENAR > '#39'1'#39')'#13#10'AND ROWNUM <= 20' +
      '0'#13#10#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  E.ID,'#13#10'  E.ENAR,'#13#10'  e.FULSZAM,'#13#10'  E.SZULDAT,'#13#10'  E.IVAR' +
      ','#13#10'  E.IVAR || '#39' - '#39' || KI.KOD_NEV AS IVARNEV,'#13#10'  E.SZIN,'#13#10'  E.S' +
      'ZIN || '#39' - '#39' || KS.KOD_NEV AS SZINNEV,'#13#10'  E.FAJTAKOD || '#39' - '#39' ||' +
      ' FAJTA.KOD_NEV AS FAJTANEV,'#13#10'  E.NEV,'#13#10'  E.ALLDAT,'#13#10'  E.ANYA_ENA' +
      'R,'#13#10'  ELLESEK.ELLES_LEF,'#13#10'  ELLESEK.ELLES_LEF || '#39' - '#39' || KEF.KO' +
      'D_NEV AS ELLLEFNEV,'#13#10'  BORJAK.BORJU_SULY,'#13#10'  E.MOD_DAT,'#13#10'  E.MOD' +
      '_KOD,'#13#10'  E.MLEVEL1,'#13#10'  E.MLEVEL2'#13#10'FROM EGYEDEK E'#13#10'LEFT JOIN BORJ' +
      'AK ON BORJAK.BORJU_ENAR = E.ENAR'#13#10'LEFT JOIN ELLESEK ON ELLESEK.I' +
      'D = BORJAK.ELLESEK_ID'#13#10'LEFT JOIN KODOK KI ON KI.KOD = E.IVAR AND' +
      ' KI.KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39#13#10'LEFT JOIN KODOK KS ON KS.KOD =' +
      ' E.SZIN AND KS.KODTIPUSOK_TIPUSKOD = '#39'SZIN'#39#13#10'LEFT JOIN KODOK KEF' +
      ' ON KEF.KOD = ELLESEK.ELLES_LEF AND KEF.KODTIPUSOK_TIPUSKOD = '#39'E' +
      'LL_LEF'#39#13#10'LEFT JOIN KODOK FAJTA ON FAJTA.KODTIPUSOK_TIPUSKOD = '#39'F' +
      'AJTA'#39' AND FAJTA.KOD = E.FAJTAKOD'#13#10'WHERE (TRIM(E.MLEVEL1) > '#39' '#39') ' +
      'AND (TRIM(E.MLEVEL2) > '#39' '#39') AND (E.ENAR > '#39'1'#39')'#13#10'AND ROWNUM <= 20' +
      '0'#13#10#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 163
    Top = 56
    object sdsMarhaLevID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsMarhaLevENAR: TWideStringField
      DisplayLabel = 'Egyed ENAR'
      FieldName = 'ENAR'
      ProviderFlags = []
      Size = 14
    end
    object sdsMarhaLevSZULDAT: TDateTimeField
      DisplayLabel = 'Sz'#252'l.d'#225'tum.'
      DisplayWidth = 10
      FieldName = 'SZULDAT'
      ProviderFlags = []
    end
    object sdsMarhaLevMLEVEL1: TWideStringField
      DisplayLabel = 'Marhalev'#233'lsz'#225'm 1'
      FieldName = 'MLEVEL1'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object sdsMarhaLevMLEVEL2: TWideStringField
      DisplayLabel = 'Marhalev'#233'lsz'#225'm 2.'
      FieldName = 'MLEVEL2'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object sdsMarhaLevIVAR: TWideStringField
      DisplayLabel = 'Ivar'
      FieldName = 'IVAR'
      ProviderFlags = []
      Visible = False
      FixedChar = True
      Size = 1
    end
    object sdsMarhaLevIVARNEV: TWideStringField
      DisplayLabel = 'Neme'
      DisplayWidth = 25
      FieldName = 'IVARNEV'
      ProviderFlags = []
      Size = 30
    end
    object sdsMarhaLevANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object sdsMarhaLevELLES_LEF: TWideStringField
      FieldName = 'ELLES_LEF'
      ProviderFlags = []
      Visible = False
      Size = 10
    end
    object sdsMarhaLevBORJU_SULY: TBCDField
      FieldName = 'BORJU_SULY'
      ProviderFlags = []
      Precision = 6
      Size = 1
    end
    object sdsMarhaLevMOD_DAT: TDateTimeField
      FieldName = 'MOD_DAT'
      ProviderFlags = []
      Visible = False
    end
    object sdsMarhaLevMOD_KOD: TWideStringField
      FieldName = 'MOD_KOD'
      ProviderFlags = []
      Visible = False
      Size = 3
    end
    object sdsMarhaLevSZINNEV: TWideStringField
      FieldName = 'SZINNEV'
      ProviderFlags = []
      Visible = False
      Size = 43
    end
    object sdsMarhaLevELLLEFNEV: TWideStringField
      FieldName = 'ELLLEFNEV'
      ProviderFlags = []
      Visible = False
      Size = 43
    end
    object sdsMarhaLevNEV: TWideStringField
      FieldName = 'NEV'
      ProviderFlags = []
      Size = 40
    end
    object sdsMarhaLevFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsMarhaLevSZIN: TWideStringField
      FieldName = 'SZIN'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsMarhaLevALLDAT: TDateTimeField
      FieldName = 'ALLDAT'
      ProviderFlags = []
    end
    object sdsMarhaLevFAJTANEV: TWideStringField
      FieldName = 'FAJTANEV'
      Visible = False
      Size = 73
    end
  end
  object dtsMarhaLev: TDataSource
    DataSet = sdsMarhaLev
    Left = 230
    Top = 56
  end
  object qryLista: TTalQuery
    Connection = dtmTarka.cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  E.ID,'
      '  E.ENAR,'
      '  e.FULSZAM,'
      '  E.SZULDAT,'
      '  E.IVAR,'
      '  E.IVAR || '#39' - '#39' || KI.KOD_NEV AS IVARNEV,'
      '  E.SZIN,'
      '  E.SZIN || '#39' - '#39' || KS.KOD_NEV AS SZINNEV,'
      '  E.FAJTAKOD || '#39' - '#39' || FAJTA.KOD_NEV AS FAJTANEV,'
      '  E.NEV,'
      '  E.ALLDAT,'
      '  E.ANYA_ENAR,'
      '  ELLESEK.ELLES_LEF,'
      '  ELLESEK.ELLES_LEF || '#39' - '#39' || KEF.KOD_NEV AS ELLLEFNEV,'
      '  BORJAK.BORJU_SULY,'
      '  E.MOD_DAT,'
      '  E.MOD_KOD,'
      '  E.MLEVEL1,'
      '  E.MLEVEL2'
      'FROM EGYEDEK E'
      'LEFT JOIN BORJAK ON BORJAK.BORJU_ENAR = E.ENAR'
      'LEFT JOIN ELLESEK ON ELLESEK.ID = BORJAK.ELLESEK_ID'
      
        'LEFT JOIN KODOK KI ON KI.KOD = E.IVAR AND KI.KODTIPUSOK_TIPUSKOD' +
        ' = '#39'IVAR'#39
      
        'LEFT JOIN KODOK KS ON KS.KOD = E.SZIN AND KS.KODTIPUSOK_TIPUSKOD' +
        ' = '#39'SZIN'#39
      
        'LEFT JOIN KODOK KEF ON KEF.KOD = ELLESEK.ELLES_LEF AND KEF.KODTI' +
        'PUSOK_TIPUSKOD = '#39'ELL_LEF'#39
      
        'LEFT JOIN KODOK FAJTA ON FAJTA.KODTIPUSOK_TIPUSKOD='#39'FAJTA'#39' AND F' +
        'AJTA.KOD = E.FAJTAKOD'
      'WHERE (E.MLEVEL1 > '#39' '#39') AND (E.MLEVEL2 > '#39' '#39')'
      'AND ROWNUM < 11')
    Left = 184
    Top = 136
    object qryListaID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object qryListaENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object qryListaFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      FixedChar = True
      Size = 15
    end
    object qryListaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object qryListaIVAR: TWideStringField
      FieldName = 'IVAR'
      FixedChar = True
      Size = 1
    end
    object qryListaIVARNEV: TWideStringField
      FieldName = 'IVARNEV'
      ReadOnly = True
      Size = 34
    end
    object qryListaFAJTANEV: TWideStringField
      FieldName = 'FAJTANEV'
      ReadOnly = True
      Size = 73
    end
    object qryListaSZIN: TWideStringField
      FieldName = 'SZIN'
      FixedChar = True
      Size = 1
    end
    object qryListaSZINNEV: TWideStringField
      FieldName = 'SZINNEV'
      ReadOnly = True
      Size = 34
    end
    object qryListaNEV: TWideStringField
      FieldName = 'NEV'
      FixedChar = True
      Size = 30
    end
    object qryListaALLDAT: TDateTimeField
      FieldName = 'ALLDAT'
    end
    object qryListaANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      FixedChar = True
      Size = 10
    end
    object qryListaELLES_LEF: TWideStringField
      FieldName = 'ELLES_LEF'
      Size = 10
    end
    object qryListaELLLEFNEV: TWideStringField
      FieldName = 'ELLLEFNEV'
      ReadOnly = True
      Size = 43
    end
    object qryListaBORJU_SULY: TBCDField
      FieldName = 'BORJU_SULY'
      Precision = 6
      Size = 1
    end
    object qryListaMOD_DAT: TDateTimeField
      FieldName = 'MOD_DAT'
    end
    object qryListaMOD_KOD: TWideStringField
      FieldName = 'MOD_KOD'
      Size = 3
    end
    object qryListaMLEVEL1: TWideStringField
      FieldName = 'MLEVEL1'
      FixedChar = True
      Size = 7
    end
    object qryListaMLEVEL2: TWideStringField
      FieldName = 'MLEVEL2'
      FixedChar = True
      Size = 7
    end
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'SZULDAT=SZULDAT'
      'IVAR=IVAR'
      'IVARNEV=IVARNEV'
      'SZIN=SZIN'
      'SZINNEV=SZINNEV'
      'FAJTANEV=FAJTANEV'
      'NEV=NEV'
      'ALLDAT=ALLDAT'
      'ANYA_ENAR=ANYA_ENAR'
      'ELLES_LEF=ELLES_LEF'
      'ELLLEFNEV=ELLLEFNEV'
      'BORJU_SULY=BORJU_SULY'
      'MOD_DAT=MOD_DAT'
      'MOD_KOD=MOD_KOD'
      'MLEVEL1=MLEVEL1'
      'MLEVEL2=MLEVEL2')
    DataSet = qryLista
    Left = 232
    Top = 136
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 40069.907686087970000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 288
    Top = 136
    Datasets = <
      item
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
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
        Name = 'AT_KFTKOD'
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
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 113.385961020000000000
          Top = 60.472479999999990000
          Width = 491.338777950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Marhalev'#258#169'lsz'#258#711'm adatok')
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
        object Line3: TfrxLineView
          Align = baWidth
          Top = 49.133841180000010000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ENAR_KOD]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 83.149660000000000000
          Top = 22.677180000000000000
          Width = 177.637910000000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TENYESZET_NEv]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 275.905690000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[AT_KFTKOD]')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 257.008040000000000000
          Top = 83.149660000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          HAlign = haCenter
          Memo.UTF8 = (
            'A [Date] napon r'#258#182'gz'#258#173'tett adatok')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'ENAR'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ENAR"]')
        end
        object Memo3: TfrxMemoView
          Left = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'MLEVEL1'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."MLEVEL1"]')
        end
        object Memo9: TfrxMemoView
          Left = 207.874150000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'MLEVEL2'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."MLEVEL2"]')
        end
        object Memo12: TfrxMemoView
          Left = 355.275820000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'NEV'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."NEV"]')
        end
        object Memo15: TfrxMemoView
          Left = 480.000310000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'FULSZAM'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."FULSZAM"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo39: TfrxMemoView
          Left = 559.370440000000000000
          Top = 3.779530000000022000
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
        object Memo14: TfrxMemoView
          Left = 11.338582680000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Lista - R'#258#182'gz'#258#173'tett marhalev'#258#169'lsz'#258#711'm adatok')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Egyed azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 120.944960000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Marhalev'#258#169'lsz'#258#711'm')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 207.874150000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          Memo.UTF8 = (
            'Ki'#258#711'll'#258#173't'#258#711's d'#258#711'tuma')
        end
        object Memo19: TfrxMemoView
          Left = 359.055350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Egyed neve')
        end
        object Memo20: TfrxMemoView
          Left = 480.000310000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'El'#313#8216'z'#313#8216' azonos'#258#173't'#258#322)
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 41.574830000000100000
        Top = 332.598640000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 30.236220470000000000
          Top = 18.897637799999980000
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
        object SysMemo4: TfrxSysMemoView
          Left = 105.826840000000000000
          Top = 18.897637799999980000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
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
          Left = 18.897869680000000000
          Top = 7.559055119999982000
          Width = 680.314960630000000000
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 162.519790000000000000
          Top = 18.897637799999980000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          Memo.UTF8 = (
            'egyed')
        end
      end
    end
  end
end
