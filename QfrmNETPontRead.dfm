inherited frmNETPontRead: TfrmNETPontRead
  Caption = 'NET Pontszam beolvasasa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object TalLabel3: TTalLabel
      Left = 8
      Top = 117
      Width = 188
      Height = 13
      Caption = 'NET-pontsz'#225'mokat tartalmaz'#243' file neve:'
    end
    object progressLabel: TTalLabel
      Left = 208
      Top = 157
      Width = 3
      Height = 13
    end
    object edtFFileName: TTalEdit
      Left = 208
      Top = 112
      Width = 241
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
    object TalBitBtn3: TTalBitBtn
      Left = 453
      Top = 112
      Width = 28
      Height = 22
      TabOrder = 1
      OnClick = TalBitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
      NumGlyphs = 2
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'CSV file|*.csv'
    InitialDir = '\wtarka\komm\inbox'
    Options = [ofHideReadOnly, ofNoChangeDir, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 36
    Top = 36
  end
end
