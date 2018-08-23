inherited frmUjraSzamol: TfrmUjraSzamol
  Left = 303
  Top = 171
  Width = 502
  Height = 335
  Caption = 'frmUjraSzamol'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 267
    Width = 494
    inherited BitBtn1: TTalBitBtn
      Left = 327
    end
    inherited BitBtn2: TTalBitBtn
      Left = 407
    end
  end
  inherited Panel2: TPanel
    Width = 494
    Height = 267
    object lblValDat: TLabel
      Left = 136
      Top = 84
      Width = 86
      Height = 13
      Caption = 'V'#225'laszt'#225's d'#225'tuma:'
    end
    object lblTeny: TLabel
      Left = 168
      Top = 108
      Width = 52
      Height = 13
      Caption = 'Teny'#233'szet:'
      Visible = False
    end
    object edtValDat: TTalEdit
      Left = 232
      Top = 80
      Width = 81
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = '1899.12.30'
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      ReadOnly = False
      TabOrder = 0
    end
    object edtTeny: TTalEdit
      Left = 232
      Top = 104
      Width = 65
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ReadOnly = False
      TabOrder = 1
      Visible = False
    end
  end
  object stpSv: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'SV_SZAMOL'
    Parameters = <
      item
        Name = 'VDAT_TOL'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'VDAT_IG'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 360
    Top = 80
  end
  object stpKmi: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'ANYA_KMI'
    Parameters = <
      item
        Name = 'PTENYKOD'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 360
    Top = 136
  end
end
