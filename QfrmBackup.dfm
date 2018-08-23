object frmBackup: TfrmBackup
  Left = 289
  Top = 211
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Adatb'#225'zis ment'#233'sek'
  ClientHeight = 255
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TalPanel1: TTalPanel
    Left = 0
    Top = 0
    Width = 510
    Height = 209
    Align = alTop
    TabOrder = 0
    object memBackup: TTalMemo
      Left = 8
      Top = 8
      Width = 493
      Height = 197
      TabOrder = 0
    end
  end
  object TalPanel2: TTalPanel
    Left = 0
    Top = 209
    Width = 510
    Height = 46
    Align = alClient
    TabOrder = 1
    object btnStart: TTalBitBtn
      Left = 328
      Top = 12
      Width = 75
      Height = 25
      Action = actStart
      Caption = 'Start'
      TabOrder = 0
    end
    object btnExit: TTalBitBtn
      Left = 424
      Top = 12
      Width = 75
      Height = 25
      Action = actExit
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 1
    end
  end
  object ActionList: TActionList
    Left = 12
    Top = 12
    object actStart: TAction
      Caption = 'Start'
      OnExecute = actStartExecute
    end
    object actExit: TAction
      Caption = 'Kil'#233'p'#233's'
      OnExecute = actExitExecute
    end
  end
end
