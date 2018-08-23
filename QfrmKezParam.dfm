inherited frmKezParam: TfrmKezParam
  Left = 321
  Top = 167
  Height = 361
  ActiveControl = TalSearch1
  Caption = 'Kezel'#233'si param'#233'terek karbantart'#243
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 282
    inherited BitBtn1: TTalBitBtn
      Left = 339
    end
    inherited BitBtn2: TTalBitBtn
      Left = 430
      Caption = 'Kil'#233'p'#233's'
    end
    object bbtnUj: TTalBitBtn
      Left = 8
      Top = 7
      Width = 75
      Height = 25
      Caption = #218'j'
      TabOrder = 2
      OnClick = bbtnUjClick
    end
    object bbtnModosit: TTalBitBtn
      Left = 96
      Top = 7
      Width = 75
      Height = 25
      Caption = 'M'#243'dos'#237't'
      TabOrder = 3
      OnClick = bbtnModositClick
    end
    object bbtnTorol: TTalBitBtn
      Left = 184
      Top = 7
      Width = 75
      Height = 25
      Caption = 'T'#246'r'#246'l'
      TabOrder = 4
      OnClick = bbtnTorolClick
    end
  end
  inherited Panel2: TPanel
    Height = 282
    object TalPanel1: TTalPanel
      Left = 0
      Top = 0
      Width = 511
      Height = 30
      Align = alTop
      TabOrder = 0
      object Label8: TLabel
        Left = 26
        Top = 8
        Width = 41
        Height = 13
        Caption = 'Keres'#233's:'
      end
      object TalSearch1: TTalSearch
        Left = 80
        Top = 4
        Width = 208
        Height = 21
        DataSource = dstKodKarb
        CaseSensitivity = wwcsCaseInsensitive
        TabOrder = 0
        OnKeyDown = TalSearch1KeyDown
      end
    end
    object ParamGrid: TTalDBGrid
      Left = 0
      Top = 30
      Width = 511
      Height = 248
      Selected.Strings = (
        'KOD'#9'10'#9'K'#243'd'#9#9
        'NEV'#9'30'#9'Megnevez'#233's'#9#9
        'KOD_NEV'#9'30'#9'Csoport'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Align = alClient
      DataSource = dstKodKarb
      KeyOptions = [dgEnterToTab]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize, dgTabExitsOnLastCol]
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = True
      OnKeyDown = ParamGridKeyDown
      OnKeyPress = ParamGridKeyPress
      DefaultSet = True
      SortDir = sdAsc
      SortType = stGrid
      SortColumn = 0
      SortShow = True
      NotEnabledFieldColor = clMoneyGreen
      NotEnabledFieldColorize = False
      FilterColor = clGray
      FixedColor = clWindow
      ShowFooter = True
      SaveIndex = False
      ShowMaskedNumericValues = False
      SaveExportParamsFile = False
    end
  end
  inherited ActionList1: TActionList
    Left = 460
    Top = 36
    inherited actMegsem: TAction
      Caption = 'Kil'#233'p'#233's'
    end
  end
  object dstKodKarb: TDataSource
    DataSet = qryKezParam
    Left = 168
    Top = 100
  end
  object qryKezParam: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT KP.ID, KP.KOD, KP.NEV,'#13#10'KP.CSOPORT_KOD,KODOK.KOD_NEV'#13#10'FRO' +
      'M KEZ_PARAM KP'#13#10'LEFT JOIN KODOK ON KODOK.KODTIPUSOK_TIPUSKOD='#39'KE' +
      'ZCSOP'#39' AND KODOK.KOD=KP.CSOPORT_KOD'#13#10#13#10#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT KP.ID, KP.KOD, KP.NEV,'#13#10'KP.CSOPORT_KOD,KODOK.KOD_NEV'#13#10'FRO' +
      'M KEZ_PARAM KP'#13#10'LEFT JOIN KODOK ON KODOK.KODTIPUSOK_TIPUSKOD='#39'KE' +
      'ZCSOP'#39' AND KODOK.KOD=KP.CSOPORT_KOD'#13#10#13#10#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 88
    Top = 100
    object qryKezParamKOD: TWideStringField
      DisplayLabel = 'K'#243'd'
      DisplayWidth = 10
      FieldName = 'KOD'
      Size = 10
    end
    object qryKezParamNEV: TWideStringField
      DisplayLabel = 'Megnevez'#233's'
      DisplayWidth = 30
      FieldName = 'NEV'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryKezParamKOD_NEV: TWideStringField
      DisplayLabel = 'Csoport'
      DisplayWidth = 30
      FieldName = 'KOD_NEV'
      ProviderFlags = []
      Size = 30
    end
    object qryKezParamID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object qryKezParamCSOPORT_KOD: TWideStringField
      DisplayLabel = 'Csoport k'#243'd'
      FieldName = 'CSOPORT_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
  end
  object sdsCsoport: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT KODOK.KOD,KODOK.KOD_NEV'#13#10'FROM KODOK'#13#10'WHERE  KODOK.KODTIPU' +
      'SOK_TIPUSKOD='#39'KEZCSOP'#39#13#10#13#10#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT KODOK.KOD,KODOK.KOD_NEV'#13#10'FROM KODOK'#13#10'WHERE  KODOK.KODTIPU' +
      'SOK_TIPUSKOD='#39'KEZCSOP'#39#13#10#13#10#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 256
    Top = 108
    object sdsCsoportKOD: TWideStringField
      FieldName = 'KOD'
      ProviderFlags = []
      Size = 10
    end
    object sdsCsoportKOD_NEV: TWideStringField
      FieldName = 'KOD_NEV'
      ProviderFlags = []
      Size = 30
    end
  end
  object dtsCsoport: TDataSource
    DataSet = sdsCsoport
    Left = 328
    Top = 100
  end
end
