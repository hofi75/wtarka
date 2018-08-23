inherited frmKarbUjMod: TfrmKarbUjMod
  Left = 444
  Top = 342
  Width = 372
  Height = 173
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 98
    Width = 364
    inherited BitBtn1: TTalBitBtn
      Left = 197
      Enabled = False
    end
    inherited BitBtn2: TTalBitBtn
      Left = 277
    end
  end
  inherited Panel2: TPanel
    Width = 364
    Height = 98
    object leTipus: TLabeledEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'T'#237'pus'
      Enabled = False
      TabOrder = 2
    end
    object leKod: TLabeledEdit
      Left = 16
      Top = 64
      Width = 121
      Height = 21
      EditLabel.Width = 19
      EditLabel.Height = 13
      EditLabel.Caption = 'K'#243'd'
      TabOrder = 0
      OnChange = leKodChange
      OnKeyPress = leKodKeyPress
    end
    object leKodNev: TLabeledEdit
      Tag = -1
      Left = 152
      Top = 64
      Width = 188
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = 'k'#243'dn'#233'v'
      MaxLength = 30
      TabOrder = 1
      OnChange = leKodNevChange
    end
  end
  inherited ActionList1: TActionList
    Left = 228
  end
end
