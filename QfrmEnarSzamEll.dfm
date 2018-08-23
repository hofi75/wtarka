object frmEnarSzamEll: TfrmEnarSzamEll
  Left = 356
  Top = 261
  Width = 330
  Height = 155
  ActiveControl = edtEnar
  Caption = 'ENAR konroll sz'#225'm ellen'#337'rz'#233'se'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 80
    Width = 322
    Height = 41
    Align = alBottom
    Anchors = [akRight, akBottom]
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    DesignSize = (
      318
      37)
    object BitBtn2: TTalBitBtn
      Left = 228
      Top = 8
      Width = 75
      Height = 25
      Action = actMegsem
      Anchors = [akRight, akBottom]
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 80
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TalLabel6: TTalLabel
      Left = 28
      Top = 29
      Width = 96
      Height = 20
      Caption = 'ENAR sz'#225'm:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtEnar: TTalMaskEdit
      Left = 136
      Top = 25
      Width = 95
      Height = 28
      EditMask = '00000-0000;0;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      OnChange = edtEnarChange
      OnExit = edtEnarExit
    end
    object edtCdv: TTalEdit
      Left = 240
      Top = 25
      Width = 25
      Height = 30
      TabStop = False
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Left = 116
    Top = 76
    object actMegsem: TAction
      Caption = 'M'#233'gsem'
      OnExecute = actMegsemExecute
    end
  end
end
