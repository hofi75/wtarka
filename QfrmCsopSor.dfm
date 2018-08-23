object frmCsopSor: TfrmCsopSor
  Left = 296
  Top = 162
  Width = 996
  Height = 594
  Caption = 'Termel'#233'si csoportok kialak'#237't'#225'sa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlKereses: TPanel
    Left = 0
    Top = 0
    Width = 980
    Height = 103
    Align = alTop
    TabOrder = 0
    TabStop = True
    object Label1: TLabel
      Left = 18
      Top = 79
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object TalLabel7: TTalLabel
      Left = 220
      Top = 35
      Width = 83
      Height = 13
      Caption = 'Lakt'#225'ci'#243'k sz'#225'ma:'
    end
    object TalLabel8: TTalLabel
      Left = 466
      Top = 35
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel10: TTalLabel
      Left = 558
      Top = 32
      Width = 94
      Height = 13
      Caption = 'Vemhess'#233'gi '#225'llapot:'
    end
    object btnVemhTorol: TTalSpeedButton
      Left = 887
      Top = 27
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
    object TalLabel6: TTalLabel
      Left = 220
      Top = 8
      Width = 139
      Height = 13
      Caption = 'Utols'#243' ell'#233's '#243'ta eltelt napok : '
    end
    object TalLabel11: TTalLabel
      Left = 466
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object edtLakt1: TTalEdit
      Left = 424
      Top = 30
      Width = 35
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 2
    end
    object edtLakt2: TTalEdit
      Left = 483
      Top = 30
      Width = 35
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 3
    end
    object btnLeker: TBitBtn
      Left = 76
      Top = 3
      Width = 120
      Height = 68
      Caption = 'Adatlek'#233'r'#233's'
      TabOrder = 5
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
    object lucVemh: TTalComboBox
      Left = 694
      Top = 28
      Width = 191
      Height = 21
      ItemHeight = 13
      TabOrder = 4
    end
    object edtLakn1: TTalEdit
      Left = 424
      Top = 3
      Width = 35
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
    end
    object edtLakn2: TTalEdit
      Left = 483
      Top = 3
      Width = 35
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 1
    end
    object TalSearch1: TTalSearch
      Left = 64
      Top = 75
      Width = 141
      Height = 21
      TabOrder = 6
    end
  end
  object pnlGombok: TPanel
    Left = 0
    Top = 517
    Width = 980
    Height = 39
    Align = alBottom
    TabOrder = 1
    TabStop = True
    DesignSize = (
      980
      39)
    object TalLabel12: TTalLabel
      Left = 256
      Top = 14
      Width = 132
      Height = 13
      Caption = 'Kijel'#246'l'#233's: Ctrl+bal eg'#233'r gomb'
    end
    object btnOK: TBitBtn
      Left = 822
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Az '#250'j besorol'#225'sok '#233'rv'#233'nyes'#237't'#233'se'
      Action = actOK
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
      Left = 902
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
      TabOrder = 2
      OnClick = btnNyomtatClick
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
    object BitBtn1: TBitBtn
      Left = 710
      Top = 8
      Width = 106
      Height = 25
      Hint = 'Itt adhatja me, hogy a kijel'#246'lt egyedeket hov'#225' akarja besorolni'
      Action = actFeltolt
      Anchors = [akRight, akBottom]
      Caption = 'Csoportos megad'#225's'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 486
      Top = 8
      Width = 106
      Height = 25
      Hint = 'Az '#246'sszes kijel'#246'l'#233's megsz'#252'ntet'#233'se'
      Anchors = [akRight, akBottom]
      Caption = 'Kijel'#246'l'#233'sek t'#246'rl'#233'se'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn2Click
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 598
      Top = 8
      Width = 106
      Height = 25
      Hint = 
        'Egy jelenlegi csoportb'#243'l minden egyedet '#225'trakhat egy m'#225'sik csopo' +
        'rtba'
      Anchors = [akRight, akBottom]
      Caption = #193'trak'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn3Click
      NumGlyphs = 2
    end
  end
  object grdVal1: TTalDBGrid
    Left = 0
    Top = 103
    Width = 980
    Height = 414
    ControlType.Strings = (
      'UJ_TERMCSOP;CustomEdit;TalDBLookupComboBox1;F')
    Selected.Strings = (
      'AZONOSITO'#9'14'#9'Azonos'#237't'#243#9#9
      'PSION_AZONOSITO'#9'5'#9'Ps.azon.'#9#9
      'UT_ELLES_DAT'#9'10'#9'Utols'#243' ell'#233's'#9#9
      'Lakt_nap'#9'6'#9'Lakt.nap'#9#9
      'LAKT'#9'5'#9'Lakt.'#9#9
      'NAPI_TEJ_KG'#9'6'#9'Napi tej'#9#9
      'SZOMAT'#9'7'#9'Szom.ssz.'#9#9
      'UT_TERM_DAT'#9'10'#9'Ut.term.d'#225't.'#9#9
      'VEMH_KOD'#9'5'#9'V.k'#243'd'#9#9
      'SZARAZ_DATUM'#9'10'#9'Sz'#225'raz d'#225'tum'#9#9
      'VARH_ELLES_datum'#9'10'#9'V'#225'rh.ell'#233's'#9#9
      'KEZ_DATUM'#9'10'#9'Ut.kezel'#233's'#9#9
      'FCSOP'#9'7'#9'Bef.csop'#9#9
      'TERMELESI_CSOPORT_KOD'#9'8'#9'Jelen.csop'#9#9
      'UJ_TERMCSOP'#9'10'#9#218'j csoport'#9#9
      'UJCS_NEV'#9'30'#9#218'j csoport'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 14
    ShowHorzScrollBar = True
    Align = alClient
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    MultiSelectOptions = [msoShiftSelect]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgMultiSelect, dgShowFooter, dgShowCellHint]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnDblClick = grdVal1DblClick
    DefaultSet = False
    SortDir = sdAsc
    SortType = stGrid
    SortColumn = 0
    SortShow = True
    NotEnabledFieldColor = clMoneyGreen
    NotEnabledFieldColorize = False
    FilterColor = clGray
    FixedColor = clWindow
    ShowFooter = True
    SaveIndex = False
    ShowMaskedNumericValues = False
    SaveExportParamsFile = False
  end
  object ActionList1: TActionList
    Left = 220
    Top = 148
    object actOK: TAction
      Caption = 'OK'
      OnExecute = actOKExecute
    end
    object actMegsem: TAction
      Caption = 'M'#233'gsem'
    end
    object actFeltolt: TAction
      Caption = 'Felt'#246'lt'
      OnExecute = actFeltoltExecute
    end
  end
  object qryLista: TTalQuery
    Connection = dtmTarka.cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '* from TERMELESI_CSOPORT')
    Left = 200
    Top = 312
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AZONOSITO=AZONOSITO'
      'PSION_AZONOSITO=PSION_AZONOSITO'
      'UT_ELLES_DAT=UT_ELLES_DAT'
      'Lakt_nap=Lakt_nap'
      'LAKT=LAKT'
      'NAPI_TEJ_KG=NAPI_TEJ_KG'
      'SZOMAT=SZOMAT'
      'UT_TERM_DAT=UT_TERM_DAT'
      'VEMH_KOD=VEMH_KOD'
      'SZARAZ_DATUM=SZARAZ_DATUM'
      'VARH_ELLES_datum=VARH_ELLES_datum'
      'KEZ_DATUM=KEZ_DATUM'
      'FCSOP=FCSOP'
      'TERMELESI_CSOPORT_KOD=TERMELESI_CSOPORT_KOD'
      'UJ_TERMCSOP=UJ_TERMCSOP'
      'UJCS_NEV=UJCS_NEV'
      'FTCS_NEV=FTCS_NEV'
      'ATCS_NEV=ATCS_NEV'
      'ID=ID')
    OpenDataSource = False
    Left = 248
    Top = 312
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 39160.621488599530000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 304
    Top = 312
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000100000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo4: TfrxMemoView
          Left = 277.606539525000000000
          Top = 49.133889999999990000
          Width = 491.338777950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            #258#353'j termel'#258#169'si csoportba soroland'#258#322' egyedek')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baCenter
          Left = 349.606566495000100000
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
            
              #258#129'llatteny'#258#169'szt'#258#169'si Teljes'#258#173'tm'#258#169'nyvizsg'#258#711'l'#258#322' Kft adatfeldolgoz'#258#322 +
              ' rendszer '#194#169' 2006')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 880.630172680002000000
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
          Left = 929.764380000002000000
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
          Left = 997.795524570002000000
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
          Top = 45.354311179999990000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 268.346630000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'XXX-XX-XX'
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
          Left = 22.677180000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
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
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = -0.000000000000004441
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'AZONOSITO'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."AZONOSITO"]')
        end
        object Memo10: TfrxMemoView
          Left = 941.102970000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'UJ_TERMCSOP'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."UJ_TERMCSOP"]')
        end
        object Memo3: TfrxMemoView
          Left = 120.944960000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'PSION_AZONOSITO'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."PSION_AZONOSITO"]')
        end
        object Memo11: TfrxMemoView
          Left = 170.078850000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'UT_ELLES_DAT'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."UT_ELLES_DAT"]')
        end
        object Memo16: TfrxMemoView
          Left = 291.023810000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          DataField = 'LAKT'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."LAKT"]')
        end
        object Memo18: TfrxMemoView
          Left = 253.228510000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          DataField = 'Lakt_nap'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."Lakt_nap"]')
        end
        object Memo20: TfrxMemoView
          Left = 332.598640000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'NAPI_TEJ_KG'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."NAPI_TEJ_KG"]')
        end
        object Memo22: TfrxMemoView
          Left = 381.732530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'SZOMAT'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBLista."SZOMAT"]')
        end
        object Memo24: TfrxMemoView
          Left = 430.866420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'UT_TERM_DAT'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."UT_TERM_DAT"]')
        end
        object Memo25: TfrxMemoView
          Left = 514.016080000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'VEMH_KOD'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."VEMH_KOD"]')
        end
        object Memo28: TfrxMemoView
          Left = 548.031850000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SZARAZ_DATUM'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."SZARAZ_DATUM"]')
        end
        object Memo30: TfrxMemoView
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VARH_ELLES_datum'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."VARH_ELLES_datum"]')
        end
        object Memo31: TfrxMemoView
          Left = 721.890230000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'KEZ_DATUM'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KEZ_DATUM"]')
        end
        object Memo34: TfrxMemoView
          Left = 810.709185000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'FCSOP'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."FCSOP"]')
        end
        object Memo36: TfrxMemoView
          Left = 873.071430000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'TERMELESI_CSOPORT_KOD'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."TERMELESI_CSOPORT_KOD"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        object Memo39: TfrxMemoView
          Left = 899.528140000002000000
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
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Lista - '#258#353'j termel'#258#169'si csoportba soroland'#258#322' egyedek')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 26.456710000000000000
        Top = 120.944960000000000000
        Width = 1046.929810000000000000
        object Line1: TfrxLineView
          Align = baWidth
          Top = 22.677180000000010000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 109.606370000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'PS.azon.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 170.078850000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ut.ell'#258#169's')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 294.803340000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Lakt.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 241.889920000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Lakt.nap')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 330.708875000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Napi tej')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 381.732530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Szomat')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 430.866420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ut.term.d'#258#711'tum')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 517.795610000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Vk.')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 548.031850000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#711'raz.d'#258#711'tum')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'V'#258#711'rhat'#258#322' ell'#258#169's')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 725.669760000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ut.kezel'#258#169's d'#258#711't.')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 812.598950000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Fej.csop.')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 873.071430000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Akt.csop.')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 941.102970000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#353'j csop.')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 41.574830000000100000
        Top = 291.023810000000000000
        Width = 1046.929810000000000000
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
          Align = baWidth
          Top = 7.559055119999982000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 162.519790000000000000
          Top = 18.897637799999980000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          Memo.UTF8 = (
            'egyed')
        end
      end
    end
  end
  object sdsBon: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'  E.ID,'#13#10'  E.ENAR,'#13#10'  e.FULSZAM,'#13#10'  E.SZULDAT,'#13#10'  E.IVAR' +
      ','#13#10'  E.IVAR+'#39' - '#39'+KI.KOD_NEV AS IVARNEV,'#13#10'  E.SZIN,'#13#10'  E.SZIN +'#39 +
      ' - '#39'+KS.KOD_NEV AS SZINNEV,'#13#10'  E.FAJTAKOD + '#39' - '#39' + FAJTA.KOD_NE' +
      'V AS FAJTANEV,'#13#10'  E.NEV,'#13#10'  E.ALLDAT,'#13#10'  E.ANYA_ENAR,'#13#10'  ELLESEK' +
      '.ELLES_LEF,'#13#10'  ELLESEK.ELLES_LEF +'#39' - '#39'+KEF.KOD_NEV AS ELLLEFNEV' +
      ','#13#10'  BORJAK.BORJU_SULY,'#13#10'  E.MOD_DAT,'#13#10'  E.MOD_KOD,'#13#10'  E.MLEVEL1' +
      ','#13#10'  E.MLEVEL2'#13#10'FROM EGYEDEK E'#13#10'LEFT JOIN BORJAK ON BORJAK.BORJU' +
      '_ENAR=E.ENAR'#13#10'LEFT JOIN ELLESEK ON ELLESEK.ID=BORJAK.ELLESEK_ID'#13 +
      #10'LEFT JOIN KODOK KI ON KI.KOD=E.IVAR AND KI.KODTIPUSOK_TIPUSKOD=' +
      #39'IVAR'#39#13#10'LEFT JOIN KODOK KS ON KS.KOD=E.SZIN AND KS.KODTIPUSOK_TI' +
      'PUSKOD='#39'SZIN'#39#13#10'LEFT JOIN KODOK KEF ON KEF.KOD=ELLESEK.ELLES_LEF ' +
      'AND KEF.KODTIPUSOK_TIPUSKOD='#39'ELL_LEF'#39#13#10'LEFT JOIN KODOK FAJTA ON ' +
      'FAJTA.KODTIPUSOK_TIPUSKOD='#39'FAJTA'#39' AND FAJTA.KOD=E.FAJTAKOD'#13#10'WHER' +
      'E (E.MLEVEL1 >'#39' '#39') AND (E.MLEVEL2 > '#39' '#39')'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  E.ID,'#13#10'  E.ENAR,'#13#10'  e.FULSZAM,'#13#10'  E.SZULDAT,'#13#10'  E.IVAR' +
      ','#13#10'  E.IVAR+'#39' - '#39'+KI.KOD_NEV AS IVARNEV,'#13#10'  E.SZIN,'#13#10'  E.SZIN +'#39 +
      ' - '#39'+KS.KOD_NEV AS SZINNEV,'#13#10'  E.FAJTAKOD + '#39' - '#39' + FAJTA.KOD_NE' +
      'V AS FAJTANEV,'#13#10'  E.NEV,'#13#10'  E.ALLDAT,'#13#10'  E.ANYA_ENAR,'#13#10'  ELLESEK' +
      '.ELLES_LEF,'#13#10'  ELLESEK.ELLES_LEF +'#39' - '#39'+KEF.KOD_NEV AS ELLLEFNEV' +
      ','#13#10'  BORJAK.BORJU_SULY,'#13#10'  E.MOD_DAT,'#13#10'  E.MOD_KOD,'#13#10'  E.MLEVEL1' +
      ','#13#10'  E.MLEVEL2'#13#10'FROM EGYEDEK E'#13#10'LEFT JOIN BORJAK ON BORJAK.BORJU' +
      '_ENAR=E.ENAR'#13#10'LEFT JOIN ELLESEK ON ELLESEK.ID=BORJAK.ELLESEK_ID'#13 +
      #10'LEFT JOIN KODOK KI ON KI.KOD=E.IVAR AND KI.KODTIPUSOK_TIPUSKOD=' +
      #39'IVAR'#39#13#10'LEFT JOIN KODOK KS ON KS.KOD=E.SZIN AND KS.KODTIPUSOK_TI' +
      'PUSKOD='#39'SZIN'#39#13#10'LEFT JOIN KODOK KEF ON KEF.KOD=ELLESEK.ELLES_LEF ' +
      'AND KEF.KODTIPUSOK_TIPUSKOD='#39'ELL_LEF'#39#13#10'LEFT JOIN KODOK FAJTA ON ' +
      'FAJTA.KODTIPUSOK_TIPUSKOD='#39'FAJTA'#39' AND FAJTA.KOD=E.FAJTAKOD'#13#10'WHER' +
      'E (E.MLEVEL1 >'#39' '#39') AND (E.MLEVEL2 > '#39' '#39')'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 219
    Top = 200
    object sdsBonID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsBonENAR: TWideStringField
      DisplayLabel = 'Egyed ENAR'
      FieldName = 'ENAR'
      ProviderFlags = []
      Size = 14
    end
    object sdsBonSZULDAT: TDateTimeField
      DisplayLabel = 'Sz'#252'l.d'#225'tum.'
      DisplayWidth = 10
      FieldName = 'SZULDAT'
      ProviderFlags = []
    end
    object sdsBonMLEVEL1: TWideStringField
      DisplayLabel = 'Marhalev'#233'lsz'#225'm 1'
      FieldName = 'MLEVEL1'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object sdsBonMLEVEL2: TWideStringField
      DisplayLabel = 'Marhalev'#233'lsz'#225'm 2.'
      FieldName = 'MLEVEL2'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object sdsBonIVAR: TWideStringField
      DisplayLabel = 'Ivar'
      FieldName = 'IVAR'
      ProviderFlags = []
      Visible = False
      FixedChar = True
      Size = 1
    end
    object sdsBonIVARNEV: TWideStringField
      DisplayLabel = 'Neme'
      DisplayWidth = 25
      FieldName = 'IVARNEV'
      ProviderFlags = []
      Size = 30
    end
    object sdsBonANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object sdsBonELLES_LEF: TWideStringField
      FieldName = 'ELLES_LEF'
      ProviderFlags = []
      Visible = False
      Size = 10
    end
    object sdsBonBORJU_SULY: TBCDField
      FieldName = 'BORJU_SULY'
      ProviderFlags = []
      Precision = 6
      Size = 1
    end
    object sdsBonMOD_DAT: TDateTimeField
      FieldName = 'MOD_DAT'
      ProviderFlags = []
      Visible = False
    end
    object sdsBonMOD_KOD: TWideStringField
      FieldName = 'MOD_KOD'
      ProviderFlags = []
      Visible = False
      Size = 3
    end
    object sdsBonSZINNEV: TWideStringField
      FieldName = 'SZINNEV'
      ProviderFlags = []
      Visible = False
      Size = 43
    end
    object sdsBonELLLEFNEV: TWideStringField
      FieldName = 'ELLLEFNEV'
      ProviderFlags = []
      Visible = False
      Size = 43
    end
    object sdsBonNEV: TWideStringField
      FieldName = 'NEV'
      ProviderFlags = []
      Size = 40
    end
    object sdsBonFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsBonSZIN: TWideStringField
      FieldName = 'SZIN'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsBonALLDAT: TDateTimeField
      FieldName = 'ALLDAT'
      ProviderFlags = []
    end
    object sdsBonFAJTANEV: TSmallintField
      FieldName = 'FAJTANEV'
      ProviderFlags = []
    end
  end
  object dtsBon: TDataSource
    DataSet = sdsBon
    Left = 286
    Top = 200
  end
end
