inherited frmCsopFaj: TfrmCsopFaj
  Left = 317
  Top = 181
  Width = 480
  Height = 289
  ActiveControl = lucFajta
  Caption = 'Fajta csoportos megad'#225'sa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 221
    Width = 472
    inherited BitBtn1: TTalBitBtn
      Left = 305
    end
    inherited BitBtn2: TTalBitBtn
      Left = 385
    end
  end
  inherited Panel2: TPanel
    Width = 472
    Height = 221
    object TalLabel1: TTalLabel
      Left = 17
      Top = 77
      Width = 429
      Height = 16
      Caption = 
        'A megadott fajta minden, m'#233'g nem megadott fajt'#225'j'#250' egyedhez belek' +
        'er'#252'l.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel7: TTalLabel
      Left = 103
      Top = 116
      Width = 26
      Height = 13
      Caption = 'Fajta:'
    end
    object lucFajta: TTalComboBox
      Left = 144
      Top = 112
      Width = 201
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object qryInfFajta: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FKOD || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 40
    Top = 152
    object qryInfFajtaFKOD: TIntegerField
      FieldName = 'FKOD'
    end
    object qryInfFajtaFNEV: TWideStringField
      FieldName = 'FNEV'
      ReadOnly = True
      Size = 83
    end
  end
  object dtsInfFajta: TDataSource
    DataSet = qryInfFajta
    Left = 112
    Top = 152
  end
end
