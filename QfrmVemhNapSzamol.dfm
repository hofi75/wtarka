object frmVemhNapSzamol: TfrmVemhNapSzamol
  Left = 325
  Top = 200
  Width = 400
  Height = 285
  ActiveControl = edtTerm1
  Caption = 'Vemhess'#233'gi nap kisz'#225'm'#237't'#225's'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 392
    Height = 210
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TalLabel1: TTalLabel
      Left = 76
      Top = 52
      Width = 114
      Height = 13
      Caption = 'Term'#233'keny'#237't'#233's d'#225'tuma: '
    end
    object TalLabel2: TTalLabel
      Left = 76
      Top = 76
      Width = 63
      Height = 13
      Caption = 'Ell'#233's d'#225'tuma:'
    end
    object TalLabel3: TTalLabel
      Left = 76
      Top = 107
      Width = 127
      Height = 13
      Caption = 'Sz'#225'm'#237'tott vemhess'#233'gi nap:'
    end
    object TalBevel1: TTalBevel
      Left = 20
      Top = 133
      Width = 359
      Height = 2
    end
    object TalLabel4: TTalLabel
      Left = 76
      Top = 152
      Width = 111
      Height = 13
      Caption = 'Term'#233'keny'#237't'#233's d'#225'tuma:'
    end
    object TalLabel5: TTalLabel
      Left = 76
      Top = 176
      Width = 102
      Height = 13
      Caption = 'V'#225'rhat'#243' ell'#233's d'#225'tuma:'
    end
    object TalLabel6: TTalLabel
      Left = 76
      Top = 13
      Width = 142
      Height = 13
      Caption = #193'tlagos vemhess'#233'gi napsz'#225'm:'
    end
    object edtVemhNap: TTalEdit
      Left = 240
      Top = 100
      Width = 49
      Height = 26
      TabStop = False
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Color = clActiveBorder
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtAtlNapSzam: TTalEdit
      Left = 240
      Top = 8
      Width = 49
      Height = 22
      TabStop = False
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      Text = '0'
      Color = clActiveBorder
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtTerm1: TTalMaskEdit
      Left = 214
      Top = 48
      Width = 75
      Height = 21
      EditMask = '!9999/99/00;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '    .  .  '
      OnExit = edtTerm1Exit
    end
    object edtEllDat: TTalMaskEdit
      Left = 214
      Top = 72
      Width = 75
      Height = 21
      EditMask = '!9999/99/00;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '    .  .  '
      OnExit = edtEllDatExit
    end
    object edtTermDat2: TTalMaskEdit
      Left = 215
      Top = 148
      Width = 74
      Height = 21
      EditMask = '!9999/99/00;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '    .  .  '
      OnExit = edtTermDat2Exit
    end
    object edtVarhatoElles: TTalEdit
      Left = 215
      Top = 173
      Width = 74
      Height = 22
      TabStop = False
      Alignment = taCenter
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Color = clActiveBorder
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 210
    Width = 392
    Height = 41
    Align = alBottom
    Anchors = [akRight, akBottom]
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    DesignSize = (
      388
      37)
    object BitBtn2: TTalBitBtn
      Left = 298
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
  object ActionList1: TActionList
    Left = 332
    Top = 60
    object actMegsem: TAction
      Caption = 'M'#233'gsem'
      OnExecute = actMegsemExecute
    end
  end
end
