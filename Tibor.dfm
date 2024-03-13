inherited frmTibor: TfrmTibor
  Left = 1023
  Top = 743
  Caption = 'frmTibor'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object qryTiborTenyeszet: TTalQuery
    Connection = dtmTarka.cnTarka
    CursorType = ctStatic
    BeforeOpen = qryTiborTenyeszetBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT TENY.TNEV1 AS NEV, TENY.EKOD AS ENAR_kod,'
      
        '               (TARKA_UTILS.LEFT(TENY.TKOD,2) || '#39'-'#39' || SUBSTR(T' +
        'ENY.TKOD, 3, 3) || '#39'-'#39' || TARKA_UTILS.RIGHT(TENY.TKOD, 2)) as AT' +
        'KOD,'
      '               TENY.TNEV2 AS TELEP_NEV, TENY.TKOD'
      'FROM PARAM'
      'JOIN TENY ON TENY.TKOD = PARAM.TENYESZET'
      'WHERE ROWNUM = 1')
    Left = 488
    Top = 8
    object qryTiborTenyeszetNEV: TWideStringField
      FieldName = 'NEV'
      FixedChar = True
      Size = 15
    end
    object qryTiborTenyeszetENAR_kod: TWideStringField
      FieldName = 'ENAR_kod'
      FixedChar = True
      Size = 5
    end
    object qryTiborTenyeszetATKOD: TWideStringField
      FieldName = 'ATKOD'
      ReadOnly = True
      Size = 9
    end
    object qryTiborTenyeszetTELEP_NEV: TWideStringField
      FieldName = 'TELEP_NEV'
      FixedChar = True
      Size = 78
    end
    object qryTiborTenyeszetTKOD: TWideStringField
      FieldName = 'TKOD'
      FixedChar = True
      Size = 7
    end
  end
  object frxDBdtsTiborTenyeszet: TfrxDBDataset
    UserName = 'frxDBdtsTiborTenyeszet'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NEV=NEV'
      'ENAR_kod=ENAR_kod'
      'ATKOD=ATKOD'
      'TELEP_NEV=TELEP_NEV'
      'TKOD=TKOD')
    DataSet = qryTiborTenyeszet
    Left = 456
    Top = 8
  end
  object qryHonapok: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    Left = 480
    Top = 64
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBdtsHonapok'
    CloseDataSource = False
    DataSet = qryHonapok
    Left = 448
    Top = 64
  end
end
