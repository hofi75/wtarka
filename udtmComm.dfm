object dtmComm: TdtmComm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 971
  Top = 433
  Height = 312
  Width = 623
  object sdsPackIn: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'SELECT * FROM COMM_PACK_IN WHERE ID = :P_ID'
    DataSet.Parameters = <
      item
        Name = 'P_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.DataSet.CommandText = 'SELECT * FROM COMM_PACK_IN WHERE ID = :P_ID'
    Provider.DataSet.Parameters = <
      item
        Name = 'P_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 148
    Top = 16
    object sdsPackInID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Precision = 15
      Size = 0
    end
    object sdsPackInSRC_SITE: TWideStringField
      FieldName = 'SRC_SITE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsPackInPACK_NR: TIntegerField
      FieldName = 'PACK_NR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPackInPACK_DATE: TDateTimeField
      FieldName = 'PACK_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPackInFROM_DATE: TDateTimeField
      FieldName = 'FROM_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPackInTO_DATE: TDateTimeField
      FieldName = 'TO_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPackInSTATUS: TBCDField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 0
    end
  end
  object sdsPackOut: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'SELECT * FROM COMM_PACK_OUT WHERE ID = :P_ID'
    DataSet.Parameters = <
      item
        Name = 'P_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.DataSet.CommandText = 'SELECT * FROM COMM_PACK_OUT WHERE ID = :P_ID'
    Provider.DataSet.Parameters = <
      item
        Name = 'P_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 148
    Top = 72
    object sdsPackOutID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Precision = 15
      Size = 0
    end
    object sdsPackOutDEST_SITE: TWideStringField
      FieldName = 'DEST_SITE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsPackOutPACK_NR: TIntegerField
      FieldName = 'PACK_NR'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPackOutPACK_DATE: TDateTimeField
      FieldName = 'PACK_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPackOutFROM_DATE: TDateTimeField
      FieldName = 'FROM_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPackOutTO_DATE: TDateTimeField
      FieldName = 'TO_DATE'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPackOutSTATUS: TBCDField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 0
    end
  end
  object sdsCommTable: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from COMM_TABLE where COMM_STATE = 1'#13#10
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 'select * from COMM_TABLE where COMM_STATE = 1'#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 44
    Top = 16
  end
  object prcPackIn: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'PROC_COMM_IN'
    Parameters = <
      item
        Name = 'P_SITE'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_PACKNR'
        Attributes = [paNullable]
        DataType = ftBCD
        Size = 18
        Value = Null
      end
      item
        Name = 'P_DEST'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_PACK_ID'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdOutput
        Size = 18
        Value = Null
      end>
    Left = 236
    Top = 24
  end
  object prcPackOut: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'PROC_COMM_OUT'
    Parameters = <
      item
        Name = 'P_SITE'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_PACK_ID'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdOutput
        Size = 15
        Value = Null
      end>
    Left = 236
    Top = 80
  end
  object ConnKomm: TTalConnection
    ConnectionString = 
      'Provider=OraOLEDB.Oracle.1;Password=komm;Persist Security Info=T' +
      'rue;User ID=komm;Data Source=XE'
    LoginPrompt = False
    Provider = 'OraOLEDB.Oracle.1'
    Left = 40
    Top = 72
  end
  object dsDelCommand: TTalDataset
    Connection = dtmTarka.cnTarka
    CommandText = 'SELECT * FROM COMM_DEL_COMMAND '#13#10'WHERE STATUS = '#39'0'#39
    Parameters = <>
    Left = 152
    Top = 124
  end
end
