object frmAtkotes: TfrmAtkotes
  Left = 1286
  Top = 321
  Width = 537
  Height = 351
  Caption = #193'tk'#246't'#233's'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TalLabel14: TTalLabel
    Left = 16
    Top = 26
    Width = 82
    Height = 13
    Caption = 'ENAR azonos'#237't'#243':'
  end
  object TalLabel1: TTalLabel
    Left = 16
    Top = 74
    Width = 89
    Height = 13
    Caption = 'Jelenlegi teny'#233'szet'
  end
  object TalLabel2: TTalLabel
    Left = 16
    Top = 130
    Width = 58
    Height = 13
    Caption = #218'j teny'#233'szet'
  end
  object btnAtkotes: TTalBitBtn
    Left = 139
    Top = 206
    Width = 89
    Height = 33
    Caption = #193'tk'#246't'#233's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TabStop = False
    OnClick = btnAtkotesClick
  end
  object btnMegse: TTalBitBtn
    Left = 243
    Top = 206
    Width = 89
    Height = 33
    Caption = 'M'#233'gse'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TabStop = False
    OnClick = btnMegseClick
  end
  object lucTenyeszet: TTalDBLookupComboBox
    Left = 135
    Top = 121
    Width = 200
    Height = 28
    DataField = 'KOD'
    DataSource = dtmTarka.dtsKikHely
    DropDownAlign = daRight
    DropDownWidth = 220
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'KOD'
    ListField = 'TKOD'
    ListSource = dtmTarka.dtsKikHely
    ParentFont = False
    TabOrder = 2
  end
  object edtENAR: TEdit
    Left = 136
    Top = 24
    Width = 193
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = 'edtENAR'
  end
  object edtTenyeszet: TEdit
    Left = 136
    Top = 64
    Width = 193
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = 'edtENAR'
  end
end
