inherited frmJelszoBekeres: TfrmJelszoBekeres
  Left = 339
  Top = 270
  Width = 356
  Height = 222
  ActiveControl = edtFelh
  Caption = 'Jelsz'#243' m'#243'dos'#237't'#225's'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 143
    Width = 340
    inherited BitBtn1: TTalBitBtn
      Left = 181
    end
    inherited BitBtn2: TTalBitBtn
      Left = 261
    end
  end
  inherited Panel2: TPanel
    Width = 340
    Height = 143
    object Label1: TLabel
      Left = 16
      Top = 36
      Width = 77
      Height = 13
      Caption = 'Felhaszn'#225'l'#243'n'#233'v:'
    end
    object Label2: TLabel
      Left = 16
      Top = 60
      Width = 54
      Height = 13
      Caption = 'R'#233'gi jelsz'#243':'
    end
    object Label3: TLabel
      Left = 16
      Top = 84
      Width = 42
      Height = 13
      Caption = #218'j jelsz'#243':'
    end
    object Label4: TLabel
      Left = 16
      Top = 108
      Width = 101
      Height = 13
      Caption = #218'j jelsz'#243' m'#233'gegyszer:'
    end
    object edtFelh: TEdit
      Left = 127
      Top = 32
      Width = 183
      Height = 21
      TabOrder = 0
    end
    object edtRegi: TEdit
      Left = 127
      Top = 56
      Width = 183
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object edtUj: TEdit
      Left = 127
      Top = 80
      Width = 183
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
    object edtUj1: TEdit
      Left = 127
      Top = 104
      Width = 183
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
    end
  end
  inherited ActionList1: TActionList
    Left = 284
    Top = 4
    inherited actOK: TAction
      Tag = -1
    end
    inherited actMegsem: TAction
      Tag = -1
    end
  end
end
