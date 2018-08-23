inherited frmLogin: TfrmLogin
  Left = 350
  Top = 375
  VertScrollBar.Range = 0
  ActiveControl = edtFelhasznaloKod
  BorderStyle = bsSingle
  Caption = 'Bejelentkez'#233's'
  ClientHeight = 166
  ClientWidth = 331
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 125
    Width = 331
    inherited BitBtn1: TTalBitBtn
      Left = 164
    end
    inherited BitBtn2: TTalBitBtn
      Left = 244
    end
    object edtJelszoMod: TBitBtn
      Left = 8
      Top = 6
      Width = 92
      Height = 25
      Action = actJelszoModosit
      Anchors = [akLeft, akBottom]
      Caption = 'Jelsz'#243' m'#243'dos'#237't'#225's'
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Width = 331
    Height = 125
    object Label1: TLabel
      Left = 29
      Top = 36
      Width = 77
      Height = 13
      Caption = 'Felhaszn'#225'l'#243'k'#243'd:'
    end
    object Label2: TLabel
      Left = 29
      Top = 68
      Width = 32
      Height = 13
      Caption = 'Jelsz'#243':'
    end
    object edtFelhasznaloKod: TEdit
      Left = 133
      Top = 32
      Width = 156
      Height = 21
      TabOrder = 0
    end
    object edtJelszo: TEdit
      Left = 133
      Top = 64
      Width = 156
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  inherited ActionList1: TActionList
    Left = 292
    Top = 4
    inherited actOK: TAction
      Tag = -1
    end
    inherited actMegsem: TAction
      Tag = -1
    end
    object actJelszoModosit: TAction
      Tag = -1
      Caption = 'Jelsz'#243' m'#243'dos'#237't'#225's'
      OnExecute = actJelszoModositExecute
    end
  end
end
