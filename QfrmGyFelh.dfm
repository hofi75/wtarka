inherited frmGyFelh: TfrmGyFelh
  Width = 629
  Height = 453
  Caption = 'Gy'#243'gyszerfelhaszn'#225'l'#225'sok r'#233'szletesen'
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 621
    Height = 419
    inherited grdVal: TTalDBGrid
      Width = 619
      Height = 345
      IniAttributes.SectionName = 'frmGyFelh'
      DataSource = dtsFelh
    end
    inherited pnlGombok: TPanel
      Top = 379
      Width = 619
      inherited btnTorol: TBitBtn
        Left = 373
        Visible = False
      end
      inherited btnOK: TBitBtn
        Left = 453
        Visible = False
      end
      inherited btnCancel: TBitBtn
        Left = 533
      end
      inherited btnModosit: TBitBtn
        Left = 293
        Visible = False
      end
      inherited btnUj: TBitBtn
        Left = 213
        Visible = False
      end
      inherited btnNyomtat: TBitBtn
        Visible = False
      end
    end
    inherited pnlKereses: TPanel
      Width = 619
    end
  end
  object sdsFelh: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'E.ENAR,'#13#10'K.KEZ_DATUM,'#13#10'CASE WHEN K.GYKLT1_ID = GYK.ID TH' +
      'EN K.GYMENNY_1'#13#10'     WHEN K.GYKLT2_ID = GYK.ID THEN K.GYMENNY_2'#13 +
      #10'     WHEN K.GYKLT3_ID = GYK.ID THEN K.GYMENNY_3'#13#10'END AS MENNY,'#13 +
      #10'GYK.ME,'#13#10'KP.NEV'#13#10'FROM KEZELESEK K'#13#10'JOIN EGYEDEK E ON E.ID = K.E' +
      'GYEDEK_ID'#13#10'JOIN GYOGYSZER_KLT GYK ON GYK.ID = :ID'#13#10'JOIN KEZ_PARA' +
      'M KP ON KP.ID= K.KEZELES_ID'#13#10'WHERE K.GYKLT1_ID = :ID'#13#10'OR K.GYKLT' +
      '2_ID = :ID'#13#10'OR K.GYKLT3_ID = :ID'#13#10'ORDER BY KEZ_DATUM'
    DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'E.ENAR,'#13#10'K.KEZ_DATUM,'#13#10'CASE WHEN K.GYKLT1_ID = GYK.ID TH' +
      'EN K.GYMENNY_1'#13#10'     WHEN K.GYKLT2_ID = GYK.ID THEN K.GYMENNY_2'#13 +
      #10'     WHEN K.GYKLT3_ID = GYK.ID THEN K.GYMENNY_3'#13#10'END AS MENNY,'#13 +
      #10'GYK.ME,'#13#10'KP.NEV'#13#10'FROM KEZELESEK K'#13#10'JOIN EGYEDEK E ON E.ID = K.E' +
      'GYEDEK_ID'#13#10'JOIN GYOGYSZER_KLT GYK ON GYK.ID = :ID'#13#10'JOIN KEZ_PARA' +
      'M KP ON KP.ID= K.KEZELES_ID'#13#10'WHERE K.GYKLT1_ID = :ID'#13#10'OR K.GYKLT' +
      '2_ID = :ID'#13#10'OR K.GYKLT3_ID = :ID'#13#10'ORDER BY KEZ_DATUM'
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 139
    Top = 96
    object sdsFelhENAR: TWideStringField
      DisplayLabel = 'Egyed azonos'#237't'#243
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsFelhKEZ_DATUM: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'D'#225'tum'
      FieldName = 'KEZ_DATUM'
    end
    object sdsFelhMENNY: TBCDField
      Alignment = taCenter
      DisplayLabel = 'Mennyis'#233'g'
      FieldName = 'MENNY'
      ReadOnly = True
      Precision = 15
    end
    object sdsFelhME: TWideStringField
      FieldName = 'ME'
      Size = 10
    end
    object sdsFelhNEV: TWideStringField
      DisplayLabel = 'Betegs'#233'g'
      FieldName = 'NEV'
      Size = 30
    end
  end
  object dtsFelh: TDataSource
    DataSet = sdsFelh
    Left = 230
    Top = 96
  end
end
