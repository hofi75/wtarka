object frmParVal: TfrmParVal
  Left = 429
  Top = 193
  Width = 1049
  Height = 568
  Caption = 'Egyedek lev'#225'logat'#225'sa p'#225'ros'#237't'#225'shoz'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlKereses: TPanel
    Left = 0
    Top = 0
    Width = 1041
    Height = 129
    Align = alTop
    TabOrder = 0
    TabStop = True
    object Label1: TLabel
      Left = 3
      Top = 103
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object TalSearch1: TTalSearch
      Left = 54
      Top = 99
      Width = 139
      Height = 21
      DataSource = dtsParos
      TabOrder = 0
    end
    object TalPanel1: TTalPanel
      Left = 201
      Top = 8
      Width = 598
      Height = 113
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object TalLabel1: TTalLabel
        Left = 6
        Top = 70
        Width = 71
        Height = 13
        Caption = 'Apa azonos'#237't'#243':'
      end
      object TalLabel13: TTalLabel
        Left = 183
        Top = 47
        Width = 9
        Height = 13
        Caption = ' - '
      end
      object TalLabel5: TTalLabel
        Left = 6
        Top = 47
        Width = 62
        Height = 13
        Caption = 'Sz'#252'let'#233'si id'#337':'
      end
      object TalLabel2: TTalLabel
        Left = 183
        Top = 70
        Width = 9
        Height = 13
        Caption = ' - '
      end
      object TalLabel15: TTalLabel
        Left = 6
        Top = 8
        Width = 82
        Height = 13
        Caption = 'Egyed azonos'#237't'#243':'
      end
      object TalLabel4: TTalLabel
        Left = 6
        Top = 92
        Width = 95
        Height = 13
        Caption = 'Utols'#243' ell'#233's d'#225'tuma:'
      end
      object TalLabel6: TTalLabel
        Left = 183
        Top = 92
        Width = 9
        Height = 13
        Caption = ' - '
      end
      object edtAzonosito: TTalEdit
        Left = 106
        Top = 3
        Width = 129
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 0
        OnExit = edtAzonositoExit
      end
      object cbVemhes: TTalCheckBox
        Left = 277
        Top = 6
        Width = 300
        Height = 17
        Caption = 'Meg'#225'llap'#237'tott vemhes egyedek ne szerepeljenek '
        TabOrder = 9
      end
      object edtDatumIg: TTalMaskEdit
        Left = 198
        Top = 43
        Width = 73
        Height = 21
        EditMask = '!9999/00/00;1;_'
        MaxLength = 10
        TabOrder = 4
        Text = '    .  .  '
      end
      object edtDatumTol: TTalMaskEdit
        Left = 106
        Top = 43
        Width = 73
        Height = 21
        EditMask = '!9999/00/00;1;_'
        MaxLength = 10
        TabOrder = 3
        Text = '    .  .  '
      end
      object rbTehen: TTalRadioButton
        Left = 6
        Top = 26
        Width = 81
        Height = 17
        Caption = 'Teh'#233'n '
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object rbUszo: TTalRadioButton
        Left = 88
        Top = 26
        Width = 65
        Height = 17
        Caption = #220'sz'#337
        TabOrder = 2
      end
      object edtApaIg: TTalMaskEdit
        Left = 198
        Top = 66
        Width = 73
        Height = 21
        TabOrder = 6
      end
      object edtApaTol: TTalMaskEdit
        Left = 106
        Top = 66
        Width = 72
        Height = 21
        TabOrder = 5
      end
      object edtellesTol: TTalMaskEdit
        Left = 106
        Top = 88
        Width = 72
        Height = 21
        EditMask = '!9999/00/00;1;_'
        MaxLength = 10
        TabOrder = 7
        Text = '    .  .  '
      end
      object edtellesIg: TTalMaskEdit
        Left = 198
        Top = 88
        Width = 73
        Height = 21
        EditMask = '!9999/00/00;1;_'
        MaxLength = 10
        TabOrder = 8
        Text = '    .  .  '
      end
      object cbTerm: TTalCheckBox
        Left = 277
        Top = 25
        Width = 300
        Height = 17
        Caption = 'Utols'#243' ell'#233's ut'#225'n term'#233'keny'#237'tett egyedek ne szerepeljenek'
        TabOrder = 10
      end
      object rbMind: TTalRadioButton
        Left = 160
        Top = 26
        Width = 65
        Height = 17
        Caption = 'Mind'
        TabOrder = 11
      end
    end
    object btnLeker: TBitBtn
      Left = 816
      Top = 22
      Width = 205
      Height = 86
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
  object pnlGombok: TPanel
    Left = 0
    Top = 502
    Width = 1041
    Height = 39
    Align = alBottom
    TabOrder = 1
    TabStop = True
    DesignSize = (
      1041
      39)
    object btnOK: TBitBtn
      Left = 851
      Top = 8
      Width = 99
      Height = 25
      Hint = 'Feldolgoz'#225's megkezd'#233'se'
      Anchors = [akRight, akBottom]
      Caption = 'Feldolgoz'#225's'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnOKClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnCancel: TBitBtn
      Left = 955
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 1
      OnClick = btnCancelClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnNyomtat: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Nyomtat'
      Enabled = False
      TabOrder = 2
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333333333333333FFF3333333333
        FFF33300033333333330003333888FFFFFFFFFF888FF30000000000000000003
        3888888888888888888F30F7777777777777770338F3333333333333338F30F7
        777777777777770338F3333333333333338F30F7777777777799770338F33333
        33333333338F30FFFFFFFFFFFFFFFF0338FFFFFFFFFFFFFFFF8F380088888888
        8888008338888888888888888883333000000000000003333338888888888888
        8F3333300FFFFFFFFFF0033333388F3FFFFFFFF8833333330F00000000F03333
        33338F8888888838F33333330FFFFFFFFFF0333333338F3FFFFFFFF8F3333333
        0F00000000F0333333338F8888888838F33333330FFFFFFFFFF0333333338F3F
        F3333338F33333330F00FFFFFFF0333333338F8833333338F33333330FFFFFFF
        FFF0333333338FFFFFFFFFF8F333333300000000000033333333888888888888
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 429
      Top = 8
      Width = 106
      Height = 25
      Hint = 'Az '#246'sszes kijel'#246'l'#233's t'#246'rl'#233'se'
      Anchors = [akRight, akBottom]
      Caption = 'Kijel'#246'l'#233'sek t'#246'rl'#233'se'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn2Click
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 651
      Top = 8
      Width = 106
      Height = 25
      Hint = 'Bika csoportos megad'#225'sa'
      Anchors = [akRight, akBottom]
      Caption = 'Bika megad'#225'sa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BitBtn3Click
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 317
      Top = 8
      Width = 106
      Height = 25
      Hint = 'Az '#246'sszes kijel'#246'l'#233'se'
      Anchors = [akRight, akBottom]
      Caption = #214'sszes kijel'#246'l'#233'se'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 541
      Top = 8
      Width = 106
      Height = 25
      Hint = 'Az '#246'sszes kijel'#246'l'#233's megford'#237't'#225'sa'
      Anchors = [akRight, akBottom]
      Caption = 'Kijel'#246'l'#233'sek ford'#237't'#225'sa'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn4Click
      NumGlyphs = 2
    end
  end
  object pnlBika: TTalPanel
    Left = 0
    Top = 466
    Width = 1041
    Height = 36
    Align = alBottom
    TabOrder = 2
    object TalLabel3: TTalLabel
      Left = 16
      Top = 12
      Width = 126
      Height = 13
      Caption = 'P'#225'ros'#237't'#225'sra megadott bika:'
    end
    object TalSpeedButton1: TTalSpeedButton
      Left = 280
      Top = 7
      Width = 25
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
    object edtParBika: TTalMaskEdit
      Left = 154
      Top = 8
      Width = 119
      Height = 21
      TabOrder = 0
      OnExit = edtParBikaExit
    end
  end
  object grdVal1: TTalDBGrid
    Left = 0
    Top = 129
    Width = 1041
    Height = 337
    ControlType.Strings = (
      'JEL;CheckBox;1;0')
    Selected.Strings = (
      'ENAR'#9'15'#9'ENAR'
      'PS_AZON'#9'4'#9'Haszn.sz'#225'm.'
      'SZULDAT'#9'10'#9'Sz'#252'l.d'#225'tuma'
      'ANYA_ENAR'#9'14'#9'Anya ENAR'
      'APAKLSZ'#9'10'#9'APA KPLSZ'
      'ELLES_DATUM'#9'10'#9'Ut.ell'#233's d'#225'tuma'
      'DATUM'#9'10'#9'Ut.Term.d'#225'tuma'
      'VEMH_KOD'#9'1'#9'Vemh.k'#243'd'
      'JEL'#9'5'#9'Jel'#246'l')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
    Align = alClient
    DataSource = dtsParos
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgShowFooter, dgShowCellHint]
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnKeyDown = grdVal1KeyDown
    DefaultSet = False
    SortDir = sdAsc
    SortType = stGrid
    SortColumn = 0
    SortShow = False
    NotEnabledFieldColor = clMoneyGreen
    NotEnabledFieldColorize = False
    FilterColor = clGray
    FixedColor = clWindow
    ShowFooter = True
    SaveIndex = False
    ShowMaskedNumericValues = False
    SaveExportParamsFile = False
  end
  object sdsParos: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT E.ID, '#13#10'CASE WHEN TRIM(E.ENAR) IS NOT NULL THEN E.ENAR'#13#10'E' +
      'LSE E.FULSZAM END AS ENAR,'#13#10'SUBSTR(E.ENAR,6,4) AS PS_AZON,'#13#10'E.SZ' +
      'ULDAT,'#13#10'E.ANYA_ENAR,'#13#10'E.APAKLSZ,'#13#10'ELL.ELLES_DATUM,'#13#10'T.DATUM,'#13#10'CO' +
      'ALESCE(T.ALLAPOT,'#39#39') AS VEMH_KOD,'#13#10'E.JEL'#13#10'FROM EGYEDEK E'#13#10'LEFT J' +
      'OIN TERMEKENYITESEK T ON T.ID = UT_TERM(E.ID)'#13#10'LEFT JOIN ELLESEK' +
      ' ELL ON ELL.ID = UT_ELLES_ID(E.ID)'#13#10'LEFT JOIN APA BIKA ON BIKA.K' +
      'PLSZ = T.KPLSZ AND T.KPLSZ IS NOT NULL'#13#10'WHERE E.IVAR = 2 AND (E.' +
      'KIKDAT IS NULL) '#13#10#13#10#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT E.ID, '#13#10'CASE WHEN TRIM(E.ENAR) IS NOT NULL THEN E.ENAR'#13#10'E' +
      'LSE E.FULSZAM END AS ENAR,'#13#10'SUBSTR(E.ENAR,6,4) AS PS_AZON,'#13#10'E.SZ' +
      'ULDAT,'#13#10'E.ANYA_ENAR,'#13#10'E.APAKLSZ,'#13#10'ELL.ELLES_DATUM,'#13#10'T.DATUM,'#13#10'CO' +
      'ALESCE(T.ALLAPOT,'#39#39') AS VEMH_KOD,'#13#10'E.JEL'#13#10'FROM EGYEDEK E'#13#10'LEFT J' +
      'OIN TERMEKENYITESEK T ON T.ID = UT_TERM(E.ID)'#13#10'LEFT JOIN ELLESEK' +
      ' ELL ON ELL.ID = UT_ELLES_ID(E.ID)'#13#10'LEFT JOIN APA BIKA ON BIKA.K' +
      'PLSZ = T.KPLSZ AND T.KPLSZ IS NOT NULL'#13#10'WHERE E.IVAR = 2 AND (E.' +
      'KIKDAT IS NULL) '#13#10#13#10#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 168
    Top = 304
    object sdsParosID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsParosENAR: TWideStringField
      DisplayWidth = 15
      FieldName = 'ENAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object sdsParosPS_AZON: TWideStringField
      DisplayLabel = 'Haszn.sz'#225'm.'
      DisplayWidth = 4
      FieldName = 'PS_AZON'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object sdsParosSZULDAT: TDateTimeField
      DisplayLabel = 'Sz'#252'l.d'#225'tuma'
      DisplayWidth = 10
      FieldName = 'SZULDAT'
      ProviderFlags = []
    end
    object sdsParosANYA_ENAR: TWideStringField
      DisplayLabel = 'Anya ENAR'
      DisplayWidth = 14
      FieldName = 'ANYA_ENAR'
      ProviderFlags = []
      Size = 10
    end
    object sdsParosAPAKLSZ: TWideStringField
      DisplayLabel = 'APA KPLSZ'
      DisplayWidth = 10
      FieldName = 'APAKLSZ'
      ProviderFlags = []
      Size = 10
    end
    object sdsParosELLES_DATUM: TDateTimeField
      DisplayLabel = 'Ut.ell'#233's d'#225'tuma'
      DisplayWidth = 10
      FieldName = 'ELLES_DATUM'
      ProviderFlags = []
    end
    object sdsParosDATUM: TDateTimeField
      DisplayLabel = 'Ut.Term.d'#225'tuma'
      DisplayWidth = 10
      FieldName = 'DATUM'
      ProviderFlags = []
    end
    object sdsParosVEMH_KOD: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Vemh.k'#243'd'
      DisplayWidth = 1
      FieldName = 'VEMH_KOD'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object sdsParosJEL: TBCDField
      DisplayLabel = 'Jel'#246'l'
      DisplayWidth = 5
      FieldName = 'JEL'
      ProviderFlags = [pfInUpdate]
      Precision = 38
      Size = 0
    end
  end
  object dtsParos: TDataSource
    DataSet = sdsParos
    Left = 256
    Top = 304
  end
  object sdsParos1: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT E.AZONOSITO,'#13#10'E.PSION_AZONOSITO,'#13#10'E.SZUL_DATUM,'#13#10'E.ANYA_A' +
      'ZONOSITO,'#13#10'E.APA_AZONOSITO,'#13#10'ELL.ELLES_SSZ AS ELLES_SSZ,'#13#10'ELL.EL' +
      'LES_DATUM,'#13#10'T.TERM_SSZ,'#13#10'T.TERM_DATUM,'#13#10'COALESCE(T.VEMH_KOD,'#39#39') ' +
      'AS VEMH_KOD,'#13#10'E.JELOL'#13#10'FROM EGYEDEK E'#13#10'LEFT JOIN TERMEKENYITESEK' +
      ' T ON T.ID = DBO.UT_ELLES(E.ID)'#13#10'LEFT JOIN ELLESEK ELL ON ELL.EG' +
      'YEDEK_ID = E.ID AND ELL.ELLES_SSZ = (SELECT MAX(ELLES_SSZ) FROM ' +
      'ELLESEK WHERE EGYEDEK_ID=E.ID)'#13#10'LEFT JOIN BIKA ON BIKA.ID=T.BIKA' +
      '_ID'#13#10'WHERE E.IVAR = 2'#13#10'AND ((E.KIKERULES_KOD IS NULL) OR (E.KIKE' +
      'RULES_KOD='#39#39'))'#13#10#13#10#13#10
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT E.AZONOSITO,'#13#10'E.PSION_AZONOSITO,'#13#10'E.SZUL_DATUM,'#13#10'E.ANYA_A' +
      'ZONOSITO,'#13#10'E.APA_AZONOSITO,'#13#10'ELL.ELLES_SSZ AS ELLES_SSZ,'#13#10'ELL.EL' +
      'LES_DATUM,'#13#10'T.TERM_SSZ,'#13#10'T.TERM_DATUM,'#13#10'COALESCE(T.VEMH_KOD,'#39#39') ' +
      'AS VEMH_KOD,'#13#10'E.JELOL'#13#10'FROM EGYEDEK E'#13#10'LEFT JOIN TERMEKENYITESEK' +
      ' T ON T.ID = DBO.UT_ELLES(E.ID)'#13#10'LEFT JOIN ELLESEK ELL ON ELL.EG' +
      'YEDEK_ID = E.ID AND ELL.ELLES_SSZ = (SELECT MAX(ELLES_SSZ) FROM ' +
      'ELLESEK WHERE EGYEDEK_ID=E.ID)'#13#10'LEFT JOIN BIKA ON BIKA.ID=T.BIKA' +
      '_ID'#13#10'WHERE E.IVAR = 2'#13#10'AND ((E.KIKERULES_KOD IS NULL) OR (E.KIKE' +
      'RULES_KOD='#39#39'))'#13#10#13#10#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 376
    Top = 300
    object sdsParos1AZONOSITO: TStringField
      DisplayLabel = 'Azonos'#237't'#243
      DisplayWidth = 14
      FieldName = 'AZONOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 14
    end
    object sdsParos1PSION_AZONOSITO: TStringField
      DisplayLabel = 'PS.Azon.'
      DisplayWidth = 5
      FieldName = 'PSION_AZONOSITO'
      ProviderFlags = []
      Size = 5
    end
    object sdsParos1SZUL_DATUM: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Sz'#252'l.d'#225'tum'
      DisplayWidth = 12
      FieldName = 'SZUL_DATUM'
      ProviderFlags = []
    end
    object sdsParos1ANYA_AZONOSITO: TStringField
      DisplayLabel = 'Anya azonos'#237't'#243
      DisplayWidth = 16
      FieldName = 'ANYA_AZONOSITO'
      ProviderFlags = []
      Size = 16
    end
    object sdsParos1APA_AZONOSITO: TStringField
      DisplayLabel = 'Apa azonos'#237't'#243
      DisplayWidth = 16
      FieldName = 'APA_AZONOSITO'
      ProviderFlags = []
      Size = 16
    end
    object sdsParos1ELLES_SSZ: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Ut.ell.ssz'
      DisplayWidth = 5
      FieldName = 'ELLES_SSZ'
      ProviderFlags = []
    end
    object sdsParos1ELLES_DATUM: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Ell'#233's d'#225'tum'
      DisplayWidth = 12
      FieldName = 'ELLES_DATUM'
      ProviderFlags = []
    end
    object sdsParos1TERM_SSZ: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Ut.term.ssz.'
      DisplayWidth = 5
      FieldName = 'TERM_SSZ'
      ProviderFlags = []
    end
    object sdsParos1TERM_DATUM: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Ut.term.d'#225'tum'
      DisplayWidth = 12
      FieldName = 'TERM_DATUM'
      ProviderFlags = []
    end
    object sdsParos1VEMH_KOD: TStringField
      Alignment = taCenter
      DisplayLabel = 'Vemh.k'#243'd'
      DisplayWidth = 5
      FieldName = 'VEMH_KOD'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object sdsParos1JELOL: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Jel'#246'l'
      DisplayWidth = 5
      FieldName = 'JELOL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object prcLista: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'CSALADFA_TOLTES'
    Parameters = <
      item
        Name = 'P_EGYED_AZON'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_ANYA_AZON'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_APA_AZON'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 360
    Top = 152
  end
  object prcBelteny: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'BELTENY_REP'
    Parameters = <
      item
        Name = 'BIKA_AZON'
        Attributes = [paNullable]
        DataType = ftString
      end>
    Prepared = True
    Left = 488
    Top = 152
  end
end
