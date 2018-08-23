inherited frmKezParamData: TfrmKezParamData
  Left = 657
  Top = 249
  Width = 348
  Height = 178
  ActiveControl = edtKOD
  Caption = 'Param'#233'ter'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 99
    Width = 332
    inherited BitBtn1: TTalBitBtn
      Left = 173
    end
    inherited BitBtn2: TTalBitBtn
      Left = 253
    end
  end
  inherited Panel2: TPanel
    Width = 332
    Height = 99
    object TalLabel1: TTalLabel
      Left = 24
      Top = 20
      Width = 22
      Height = 13
      Caption = 'K'#243'd:'
    end
    object TalLabel2: TTalLabel
      Left = 24
      Top = 48
      Width = 64
      Height = 13
      Caption = 'Megnevez'#233's:'
    end
    object TalLabel3: TTalLabel
      Left = 24
      Top = 76
      Width = 39
      Height = 13
      Caption = 'Csoport:'
    end
    object edtKOD: TTalEdit
      Left = 104
      Top = 16
      Width = 65
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
    object edtNEV: TTalEdit
      Left = 104
      Top = 44
      Width = 209
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 1
    end
    object TalDBLookupComboBox1: TTalDBLookupComboBox
      Left = 104
      Top = 72
      Width = 209
      Height = 21
      DataField = 'CSOPORT_KOD'
      DataSource = frmKezParam.dstKodKarb
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = frmKezParam.dtsCsoport
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    Left = 104
    Top = 100
  end
end
