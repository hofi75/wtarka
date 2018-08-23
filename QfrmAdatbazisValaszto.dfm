inherited frmAdatbazsValaszto: TfrmAdatbazsValaszto
  Left = 322
  Top = 297
  Width = 235
  Height = 249
  ActiveControl = ListBox1
  Caption = 'V'#225'laszthat'#243' adatb'#225'zisok'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 174
    Width = 227
    inherited BitBtn1: TTalBitBtn
      Left = 60
    end
    inherited BitBtn2: TTalBitBtn
      Left = 140
    end
  end
  inherited Panel2: TPanel
    Width = 227
    Height = 174
    object ListBox1: TListBox
      Left = 8
      Top = 16
      Width = 201
      Height = 145
      ItemHeight = 13
      TabOrder = 0
      OnDblClick = ListBox1DblClick
    end
  end
  inherited ActionList1: TActionList
    Left = 124
    Top = 164
  end
end
