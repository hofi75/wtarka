object frmModOs: TfrmModOs
  Left = 712
  Top = 223
  Width = 694
  Height = 478
  Caption = 'frmModOs'
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
  object pnlGombok: TPanel
    Left = 0
    Top = 401
    Width = 678
    Height = 39
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      678
      39)
    object btnTorol: TBitBtn
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'T'#246'r'#246'l'
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object btnOK: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Action = actOK
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      TabOrder = 3
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
      Left = 600
      Top = 8
      Width = 75
      Height = 25
      Action = actMegsem
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'M'#233'gsem'
      TabOrder = 4
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
    object btnModosit: TBitBtn
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'M'#243'dos'#237't'
      TabOrder = 1
      OnClick = btnModositClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555775777777
        57705557757777775FF7555555555555000755555555555F777F555555555550
        87075555555555F7577F5555555555088805555555555F755F75555555555033
        805555555555F755F75555555555033B05555555555F755F75555555555033B0
        5555555555F755F75555555555033B05555555555F755F75555555555033B055
        55555555F755F75555555555033B05555555555F755F75555555555033B05555
        555555F75FF75555555555030B05555555555F7F7F75555555555000B0555555
        5555F777F7555555555501900555555555557777755555555555099055555555
        5555777755555555555550055555555555555775555555555555}
      NumGlyphs = 2
    end
    object btnUj: TBitBtn
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #218'j'
      TabOrder = 0
      OnClick = btnUjClick
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000E0000000D0000000100
        0400000000006800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333339993333330033333999333333003333399933333300333339993333
        3300399999999999330039999999999933003999999999993300333339993333
        3300333339993333330033333999333333003333399933333300333333333333
        3300}
    end
    object btnNyomtat: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Nyomtat'
      TabOrder = 5
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
  end
  object pnlMod: TTalPanel
    Left = 334
    Top = 0
    Width = 344
    Height = 401
    Align = alRight
    Enabled = False
    TabOrder = 1
  end
  object grdVal: TTalDBGrid
    Left = 0
    Top = 0
    Width = 334
    Height = 401
    TabStop = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
    Align = alClient
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize, dgTabExitsOnLastCol]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    DefaultSet = True
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
    Left = 228
    Top = 316
    object actOK: TAction
      Caption = 'OK'
    end
    object actMegsem: TAction
      Caption = 'M'#233'gsem'
    end
  end
end
