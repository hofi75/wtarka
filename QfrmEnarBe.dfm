inherited frmEnarBe: TfrmEnarBe
  Left = 775
  Top = 315
  Width = 757
  Height = 499
  Caption = 'ENAR bejelent'#233'si adatok karbantart'#225'sa'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 433
    Width = 749
    inherited btnTorol: TBitBtn
      Left = 503
      Visible = False
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 583
    end
    inherited btnCancel: TBitBtn
      Left = 663
    end
    inherited btnModosit: TBitBtn
      Left = 423
    end
    inherited btnUj: TBitBtn
      Left = 343
      Visible = False
    end
    inherited btnNyomtat: TBitBtn
      Width = 76
      OnClick = btnNyomtatClick
    end
    object btnCsopKez: TBitBtn
      Left = 194
      Top = 8
      Width = 144
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Csoportos fajta r'#246'gz'#237't'#233's'
      TabOrder = 6
      OnClick = btnCsopKezClick
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333333333333333333333333333FFFFFFFFFFFFFF
        FFFF300000000000000000033777777777777777777F30262626260FFFFF0603
        37F33333337F33337F7F30626262620FFFFF020337F3333FFF7F33337F7F3026
        2600000FFFFF060337F33377777F33337F7F3062620FFF0CCCCC020337F3337F
        337FFFFF7F7F3026260FFF000000060337F3FF7F33777777737F3060000FFFFF
        0262620337F7777F33337F33337F3020FF0CCCCC0626260337F7F37FFFFF7F33
        337F3060FF0000000262620337F7F37777777333337F3020FFFFF02626262603
        37F7F33337F33333337F3060CCCCC0626262620337F7FFFFF7F33333337F3020
        000000262626260337F7777777333333337F3062626262626262620337F33333
        33333333337F308CCCCCCCCCCCCCC8033777777777777777777F308CCCCCCCCC
        CCCCC80337FFFFFFFFFFFFFFFF7F300000000000000000033777777777777777
        7773333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
    end
    object btnUjrakuld: TBitBtn
      Left = 114
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #218'jrak'#252'ld'
      TabOrder = 7
      Visible = False
      OnClick = btnUjrakuldClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084000000840000008400000084000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0084000000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0084000000FF00FF00FF00FF00FF00FF00FF00
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0084000000FF00FF00FF00FF00FF00FF00FF00
        FF008400000084000000FF00FF0084000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0084000000FF00FF00FF00FF00FF00FF00FF00
        FF0084000000FF00FF00FF00FF00FF00FF008400000084000000FF00FF00FF00
        FF00FF00FF00FF00FF0084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00840000008400
        00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  inherited pnlMod: TTalPanel
    Left = 405
    Top = 31
    Height = 402
    object TalLabel3: TTalLabel
      Left = 15
      Top = 15
      Width = 81
      Height = 13
      Caption = 'Egyed azonosit'#243':'
    end
    object TalLabel4: TTalLabel
      Left = 15
      Top = 45
      Width = 77
      Height = 13
      Caption = 'Sz'#252'let'#233'si d'#225'tum:'
    end
    object TalLabel5: TTalLabel
      Left = 15
      Top = 69
      Width = 31
      Height = 13
      Caption = 'Neme:'
    end
    object TalLabel6: TTalLabel
      Left = 15
      Top = 93
      Width = 30
      Height = 13
      Caption = 'Sz'#237'ne:'
    end
    object TalLabel7: TTalLabel
      Left = 15
      Top = 116
      Width = 26
      Height = 13
      Caption = 'Fajta:'
    end
    object TalLabel8: TTalLabel
      Left = 15
      Top = 149
      Width = 86
      Height = 13
      Caption = 'El'#337'z'#337' azonos'#237't'#243'ja:'
    end
    object TalLabel10: TTalLabel
      Left = 15
      Top = 197
      Width = 125
      Height = 13
      Caption = 'Teny'#233'szetbe '#233'rkez'#233's d'#225't.:'
    end
    object TalLabel11: TTalLabel
      Left = 15
      Top = 221
      Width = 83
      Height = 13
      Caption = 'Anya azonosit'#243'ja:'
    end
    object TalLabel14: TTalLabel
      Left = 15
      Top = 293
      Width = 56
      Height = 13
      Caption = 'Ell'#233's m'#243'dja:'
    end
    object TalLabel15: TTalLabel
      Left = 15
      Top = 317
      Width = 65
      Height = 13
      Caption = 'Borj'#250' t'#246'mege:'
    end
    object TalLabel16: TTalLabel
      Left = 15
      Top = 349
      Width = 90
      Height = 13
      Caption = 'Bejelent'#233's d'#225'tuma:'
    end
    object TalLabel17: TTalLabel
      Left = 15
      Top = 373
      Width = 90
      Height = 13
      Caption = 'M'#243'dos'#237't'#225's d'#225'tuma:'
    end
    object TalLabel18: TTalLabel
      Left = 192
      Top = 317
      Width = 12
      Height = 13
      Caption = 'kg'
    end
    object TalDBEdit1: TTalDBEdit
      Left = 146
      Top = 8
      Width = 164
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
      DataField = 'ENAR'
      DataSource = dtsEnarBe
    end
    object TalDBEdit2: TTalDBEdit
      Left = 146
      Top = 40
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
      TabOrder = 1
      DataField = 'SZULDAT'
      DataSource = dtsEnarBe
    end
    object TalDBEdit3: TTalDBEdit
      Left = 146
      Top = 64
      Width = 168
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
      DataField = 'IVARNEV'
      DataSource = dtsEnarBe
    end
    object TalDBEdit4: TTalDBEdit
      Left = 146
      Top = 88
      Width = 168
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 3
      DataField = 'SZINNEV'
      DataSource = dtsEnarBe
    end
    object TalDBEdit5: TTalDBEdit
      Left = 146
      Top = 144
      Width = 121
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 5
      DataField = 'FULSZAM'
      DataSource = dtsEnarBe
    end
    object TalDBEdit6: TTalDBEdit
      Left = 146
      Top = 192
      Width = 89
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 6
      DataField = 'ALLDAT'
      DataSource = dtsEnarBe
    end
    object TalDBEdit7: TTalDBEdit
      Left = 146
      Top = 216
      Width = 121
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 7
      DataField = 'ANYA_ENAR'
      DataSource = dtsEnarBe
    end
    object lucFajta: TTalDBLookupComboBox
      Left = 146
      Top = 112
      Width = 185
      Height = 21
      DataField = 'FAJTAKOD'
      DataSource = dtsEnarBe
      KeyField = 'FKOD'
      ListField = 'FNEV'
      ListSource = dtmTarka.dtsInfFajta
      TabOrder = 4
    end
    object TalDBEdit10: TTalDBEdit
      Left = 146
      Top = 312
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
      TabOrder = 10
      DataField = 'BORJU_SULY'
      DataSource = dtsEnarBe
    end
    object TalDBEdit11: TTalDBEdit
      Left = 146
      Top = 344
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
      TabOrder = 11
      DataField = 'ENAR_BE_DATUM'
      DataSource = dtsEnarBe
    end
    object TalDBEdit12: TTalDBEdit
      Left = 146
      Top = 368
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
      TabOrder = 12
      DataField = 'MOD_DAT'
      DataSource = dtsEnarBe
    end
    object TalDBCheckBox1: TTalDBCheckBox
      Left = 14
      Top = 266
      Width = 147
      Height = 17
      TabStop = False
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = '1'
      ValueUnchecked = '0'
      DisplayValueChecked = '1'
      DisplayValueUnchecked = '0'
      NullAndBlankState = cbUnchecked
      Alignment = taLeftJustify
      Caption = 'Iker ell'#233's:'
      DataField = 'IKER'
      DataSource = dtsEnarBe
      Enabled = False
      TabOrder = 8
    end
    object TalDBEdit8: TTalDBEdit
      Left = 146
      Top = 288
      Width = 168
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 9
      DataField = 'ELLLEFNEV'
      DataSource = dtsEnarBe
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 31
    Width = 405
    Height = 402
    Selected.Strings = (
      'AZONOSITO'#9'14'#9'Egyed azonos'#237't'#243#9#9
      'SZUL_DATUM'#9'10'#9'Sz'#252'l.d'#225'tum'#9#9
      'IVARNEV'#9'25'#9'Neme'#9#9)
    DataSource = dtsEnarBe
  end
  object TalPanel1: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 749
    Height = 31
    Align = alTop
    TabOrder = 3
    object TalLabel1: TTalLabel
      Left = 23
      Top = 9
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object lblTenyeszet: TTalLabel
      Left = 450
      Top = 8
      Width = 143
      Height = 13
      Caption = 'Telep ENAR teny'#233'szet k'#243'dja: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object rbNemBejelentett: TTalRadioButton
      Left = 216
      Top = 7
      Width = 100
      Height = 17
      Caption = 'Be nem jelentett'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbNemBejelentettClick
    end
    object TalRadioButton2: TTalRadioButton
      Left = 315
      Top = 7
      Width = 113
      Height = 17
      Caption = 'Bejelentett egyedek'
      TabOrder = 1
      OnClick = rbNemBejelentettClick
    end
    object TalSearch1: TTalSearch
      Left = 72
      Top = 5
      Width = 121
      Height = 21
      CaseSensitivity = wwcsCaseInsensitive
      TabOrder = 2
      OnKeyDown = TalEdit1KeyDown
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
  object sdsEnarBe: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'  e.ID,'#13#10'  e.enar,'#13#10'  e.szuldat,'#13#10'  e.IVAR,'#13#10'  e.IVAR ||' +
      ' '#39' - '#39' || ki.KOD_NEV AS IVARNEV,'#13#10'  e.szin,'#13#10'  e.SZIN || '#39' - '#39' |' +
      '| ks.KOD_NEV AS SZINNEV,'#13#10'  e.FAJTAKOD,'#13#10'  e.fulszam,'#13#10'  e.allda' +
      't,'#13#10'  e.anya_enar,'#13#10'  E.IKER,'#13#10'  ELLESEK.ELLES_LEF,'#13#10'  ELLESEK.E' +
      'LLES_LEF || '#39' - '#39' || kef.KOD_NEV AS ELLLEFNEV,'#13#10'  BORJAK.BORJU_S' +
      'ULY,'#13#10'  E.ENAR_BE_DATUM,'#13#10'  e.MOD_DAT,'#13#10'  e.MOD_KOD'#13#10'FROM EGYEDE' +
      'K E'#13#10'JOIN BORJAK ON BORJAK.BORJU_ENAR=E.enar'#13#10'JOIN ELLESEK ON EL' +
      'LESEK.ID=BORJAK.ELLESEK_ID'#13#10'LEFT join kodok ki on ki.KOD=e.IVAR ' +
      'and ki.KODTIPUSOK_TIPUSKOD='#39'IVAR'#39#13#10'LEFT join kodok ks on ks.KOD=' +
      'e.SZIN and ks.KODTIPUSOK_TIPUSKOD='#39'SZIN'#39#13#10'LEFT join kodok kef on' +
      ' kef.KOD=ellesek.ELLES_LEF and kef.KODTIPUSOK_TIPUSKOD='#39'ELL_LEF'#39 +
      #13#10
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  e.ID,'#13#10'  e.enar,'#13#10'  e.szuldat,'#13#10'  e.IVAR,'#13#10'  e.IVAR ||' +
      ' '#39' - '#39' || ki.KOD_NEV AS IVARNEV,'#13#10'  e.szin,'#13#10'  e.SZIN || '#39' - '#39' |' +
      '| ks.KOD_NEV AS SZINNEV,'#13#10'  e.FAJTAKOD,'#13#10'  e.fulszam,'#13#10'  e.allda' +
      't,'#13#10'  e.anya_enar,'#13#10'  E.IKER,'#13#10'  ELLESEK.ELLES_LEF,'#13#10'  ELLESEK.E' +
      'LLES_LEF || '#39' - '#39' || kef.KOD_NEV AS ELLLEFNEV,'#13#10'  BORJAK.BORJU_S' +
      'ULY,'#13#10'  E.ENAR_BE_DATUM,'#13#10'  e.MOD_DAT,'#13#10'  e.MOD_KOD'#13#10'FROM EGYEDE' +
      'K E'#13#10'JOIN BORJAK ON BORJAK.BORJU_ENAR=E.enar'#13#10'JOIN ELLESEK ON EL' +
      'LESEK.ID=BORJAK.ELLESEK_ID'#13#10'LEFT join kodok ki on ki.KOD=e.IVAR ' +
      'and ki.KODTIPUSOK_TIPUSKOD='#39'IVAR'#39#13#10'LEFT join kodok ks on ks.KOD=' +
      'e.SZIN and ks.KODTIPUSOK_TIPUSKOD='#39'SZIN'#39#13#10'LEFT join kodok kef on' +
      ' kef.KOD=ellesek.ELLES_LEF and kef.KODTIPUSOK_TIPUSKOD='#39'ELL_LEF'#39 +
      #13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 88
    Top = 96
    object sdsEnarBeID: TBCDField
      FieldName = 'ID'
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsEnarBeENAR: TWideStringField
      DisplayLabel = 'EN'#193'R'
      FieldName = 'ENAR'
      ProviderFlags = []
      OnGetText = sdsEnarBeENARGetText
      Size = 14
    end
    object sdsEnarBeSZULDAT: TDateTimeField
      DisplayLabel = 'Sz'#252'l.d'#225'tum'
      DisplayWidth = 10
      FieldName = 'SZULDAT'
      ProviderFlags = []
    end
    object sdsEnarBeIVAR: TWideStringField
      FieldName = 'IVAR'
      ProviderFlags = []
      Size = 1
    end
    object sdsEnarBeIVARNEV: TWideStringField
      DisplayLabel = 'Ivar'
      DisplayWidth = 15
      FieldName = 'IVARNEV'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
    object sdsEnarBeFAJTAKOD: TWideStringField
      DisplayLabel = 'Fajtak'#243'd'
      FieldName = 'FAJTAKOD'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsEnarBeSZIN: TWideStringField
      FieldName = 'SZIN'
      ProviderFlags = []
      Visible = False
      Size = 1
    end
    object sdsEnarBeSZINNEV: TWideStringField
      DisplayLabel = 'Sz'#237'n'
      DisplayWidth = 20
      FieldName = 'SZINNEV'
      ProviderFlags = []
      ReadOnly = True
      Size = 34
    end
    object sdsEnarBeFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 15
    end
    object sdsEnarBeALLDAT: TDateTimeField
      FieldName = 'ALLDAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsEnarBeANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      ProviderFlags = []
      Visible = False
      Size = 10
    end
    object sdsEnarBeIKER: TBCDField
      FieldName = 'IKER'
      ProviderFlags = []
      Visible = False
      Precision = 32
      Size = 0
    end
    object sdsEnarBeELLES_LEF: TWideStringField
      FieldName = 'ELLES_LEF'
      ProviderFlags = []
      Visible = False
      Size = 10
    end
    object sdsEnarBeELLLEFNEV: TWideStringField
      FieldName = 'ELLLEFNEV'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 43
    end
    object sdsEnarBeBORJU_SULY: TBCDField
      FieldName = 'BORJU_SULY'
      ProviderFlags = []
      Visible = False
      Precision = 6
      Size = 1
    end
    object sdsEnarBeENAR_BE_DATUM: TDateTimeField
      FieldName = 'ENAR_BE_DATUM'
      Visible = False
    end
    object sdsEnarBeMOD_DAT: TDateTimeField
      FieldName = 'MOD_DAT'
      Visible = False
    end
    object sdsEnarBeMOD_KOD: TWideStringField
      FieldName = 'MOD_KOD'
      Visible = False
      Size = 3
    end
  end
  object dtsEnarBe: TDataSource
    DataSet = sdsEnarBe
    Left = 160
    Top = 96
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ENAR=ENAR'
      'SZULDAT=SZULDAT'
      'IVAR=IVAR'
      'IVARNEV=IVARNEV'
      'FAJTAKOD=FAJTAKOD'
      'SZIN=SZIN'
      'SZINNEV=SZINNEV'
      'FULSZAM=FULSZAM'
      'ALLDAT=ALLDAT'
      'ANYA_ENAR=ANYA_ENAR'
      'IKER=IKER'
      'ELLES_LEF=ELLES_LEF'
      'ELLLEFNEV=ELLLEFNEV'
      'BORJU_SULY=BORJU_SULY'
      'ENAR_BE_DATUM=ENAR_BE_DATUM'
      'MOD_DAT=MOD_DAT'
      'MOD_KOD=MOD_KOD')
    DataSource = dtsEnarBe
    Left = 120
    Top = 208
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 40944.582398460650000000
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
        ',10,1) ;'
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 224
    Top = 208
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
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 204.094681020000000000
          Top = 52.913420000000000000
          Width = 309.921337950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'ENAR-ba nem bejelentett egyedek')
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
          Top = 45.354311180000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
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
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object SysMemo3: TfrxSysMemoView
          Left = -0.000002440000000000
          Width = 26.456690470000000000
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
        object Memo3: TfrxMemoView
          Left = 30.236240000000000000
          Width = 90.708720000000000000
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
        object Memo17: TfrxMemoView
          Left = 139.842610000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'SZULDAT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."SZULDAT"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 230.551330000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'IVAR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."IVAR"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 275.905690000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'SZINNEV'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."SZINNEV"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 453.543600000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'ENAR_BE_DATUM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."ENAR_BE_DATUM"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 529.134200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'FULSZAM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."FULSZAM"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_ENAR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."ANYA_ENAR"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 362.834880000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'FAJTAKOD'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."FAJTAKOD"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 370.393940000000000000
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
            'ENAR bejelent'#313#8216' - nem bejelentett egyedek')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 124.724490000000000000
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
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          Left = 39.685034488189000000
          Width = 52.913420000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '  Egyed'
            'azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 139.842610000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169's'
            'd'#258#711'tuma')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 230.551330000000000000
          Width = 22.677180000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ivar')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 275.905690000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#173'n')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 457.323130000001000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Beker'#258#317'l'#258#169's'
            'd'#258#711'tum')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 529.134200000001000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Eredeti '
            'azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 631.181510000001000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Anya'
            'azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 362.834880000000000000
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fajta')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 37.795300000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 30.236220470000000000
          Top = 18.897637799999980000
          Width = 56.692913390000000000
          Height = 12.094488188976400000
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
          Top = 18.897650000000000000
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
          Top = 7.559055119999982000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
