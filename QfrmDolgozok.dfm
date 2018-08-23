inherited frmDolgozok: TfrmDolgozok
  Left = 577
  Top = 419
  Width = 588
  Height = 401
  Caption = 'Felhaszn'#225'l'#243'k karbantart'#225'sa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 572
    Height = 363
    inherited grdVal: TTalDBGrid
      Width = 570
      Height = 289
      DataSource = dtsDolg
    end
    inherited pnlGombok: TPanel
      Top = 323
      Width = 570
      inherited btnTorol: TBitBtn
        Left = 334
        Action = actTorol
      end
      inherited btnOK: TBitBtn
        Left = 414
      end
      inherited btnCancel: TBitBtn
        Left = 494
      end
      inherited btnModosit: TBitBtn
        Left = 254
        Action = actModosit
      end
      inherited btnUj: TBitBtn
        Left = 174
        Action = actUj
      end
      inherited btnNyomtat: TBitBtn
        Action = actNyomtat
      end
    end
    inherited pnlKereses: TPanel
      Width = 570
    end
  end
  inherited ActionList1: TActionList
    Left = 380
    Top = 92
    inherited actOK: TAction
      Tag = -1
    end
    inherited actMegsem: TAction
      Tag = -1
    end
    object actUj: TAction
      Tag = 51
      Caption = #218'j'
      OnExecute = actUjExecute
    end
    object actModosit: TAction
      Tag = 52
      Caption = 'M'#243'dos'#237't'
      OnExecute = actModositExecute
    end
    object actTorol: TAction
      Tag = 53
      Caption = 'T'#246'r'#246'l'
      OnExecute = actTorolExecute
    end
    object actNyomtat: TAction
      Tag = 54
      Caption = 'Nyomtat'
    end
  end
  object dtsDolg: TDataSource
    DataSet = sdsDolg
    Left = 224
    Top = 88
  end
  object sdsDolg: TTalSimpleDataSet
    Aggregates = <>
    Connection.ConnectionString = 
      'Provider=OraOLEDB.Oracle.1;Password=tarka;Persist Security Info=' +
      'True;User ID=tarka;Data Source=localhost/xe;Extended Properties=' +
      '""'
    Connection.Provider = 'OraOLEDB.Oracle.1'
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 'SELECT * FROM USEREK WHERE TIPUS<>'#39'S'#39
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 'SELECT * FROM USEREK WHERE TIPUS<>'#39'S'#39
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    FieldDefs = <
      item
        Name = 'TENYESZET'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'NEV'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'JELSZO'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'FELH_KOD'
        DataType = ftWideString
        Size = 3
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 160
    Top = 88
    object sdsDolgFELH_KOD: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'K'#243'd'
      DisplayWidth = 7
      FieldName = 'FELH_KOD'
      Size = 3
    end
    object sdsDolgNEV: TWideStringField
      DisplayLabel = 'Felhaszn'#225'l'#243' neve'
      FieldName = 'NEV'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsDolgJELSZO: TWideStringField
      FieldName = 'JELSZO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsDolgTIPUS: TWideStringField
      DefaultExpression = #39#39
      FieldName = 'TIPUS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 1
    end
    object sdsDolgTENYESZET: TWideStringField
      FieldName = 'TENYESZET'
      Size = 7
    end
  end
end
