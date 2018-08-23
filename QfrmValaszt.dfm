inherited frmValaszt: TfrmValaszt
  Left = 455
  Top = 255
  Caption = 'frmValaszt'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited grdVal: TTalDBGrid
      DataSource = dtsFulJelzok
    end
    inherited pnlGombok: TPanel
      inherited btnTorol: TBitBtn
        Visible = False
        OnClick = btnTorolClick
      end
      inherited btnCancel: TBitBtn
        Caption = 'M'#233'gsem'
      end
      inherited btnModosit: TBitBtn
        Visible = False
      end
      inherited btnUj: TBitBtn
        Visible = False
      end
    end
  end
  object sdsFuljelzok: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    Connection.Provider = 'OraOLEDB.Oracle'
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'FF.ID,'#13#10'FF.FULJ_AZON,'#13#10'FF.BEVET_DATUM,'#13#10'FF.RENDELES_DATU' +
      'M,'#13#10'FF.JELENTES_DATUM,'#13#10'FF.KIADAS_DATUM,'#13#10'FF.RENDELESI_KOD,'#13#10'FF.' +
      'UTMOD_DAT,'#13#10'FF.UTMOD_KOD,'#13#10'RK.KOD || '#39' - '#39' || RK.KOD_NEV AS REND' +
      '_NEV'#13#10'FROM FULJELZO FF'#13#10'LEFT JOIN KODOK RK ON (RK.KODTIPUSOK_TIP' +
      'USKOD='#39'RENDKOD'#39' AND RK.KOD=FF.RENDELESI_KOD)'#13#10'WHERE FF.KIADAS_DA' +
      'TUM IS NULL and '#13#10'   FF.FULJ_AZON LIKE :ENARPrefix'
    DataSet.Parameters = <
      item
        Name = 'ENARPrefix'
        Size = -1
        Value = Null
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'FF.ID,'#13#10'FF.FULJ_AZON,'#13#10'FF.BEVET_DATUM,'#13#10'FF.RENDELES_DATU' +
      'M,'#13#10'FF.JELENTES_DATUM,'#13#10'FF.KIADAS_DATUM,'#13#10'FF.RENDELESI_KOD,'#13#10'FF.' +
      'UTMOD_DAT,'#13#10'FF.UTMOD_KOD,'#13#10'RK.KOD || '#39' - '#39' || RK.KOD_NEV AS REND' +
      '_NEV'#13#10'FROM FULJELZO FF'#13#10'LEFT JOIN KODOK RK ON (RK.KODTIPUSOK_TIP' +
      'USKOD='#39'RENDKOD'#39' AND RK.KOD=FF.RENDELESI_KOD)'#13#10'WHERE FF.KIADAS_DA' +
      'TUM IS NULL and '#13#10'   FF.FULJ_AZON LIKE :ENARPrefix'
    Provider.DataSet.Parameters = <
      item
        Name = 'ENARPrefix'
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <
      item
        DataType = ftString
        Name = 'ENARPrefix'
        ParamType = ptInput
        Size = 32
      end>
    ReadOnly = True
    Left = 163
    Top = 40
    object sdsFuljelzokFULJ_AZON: TWideStringField
      DisplayLabel = 'ENAR sz'#225'm'
      FieldName = 'FULJ_AZON'
      ProviderFlags = []
      OnGetText = sdsFuljelzokFULJ_AZONGetText
      Size = 14
    end
    object sdsFuljelzokREND_NEV: TWideStringField
      DisplayLabel = 'Rendel'#233's m'#243'dja'
      DisplayWidth = 15
      FieldName = 'REND_NEV'
      ProviderFlags = []
      ReadOnly = True
      Size = 43
    end
    object sdsFuljelzokRENDELES_DATUM: TDateTimeField
      DisplayLabel = 'Rendel'#233's d'#225'tuma'
      DisplayWidth = 10
      FieldName = 'RENDELES_DATUM'
      ProviderFlags = []
    end
    object sdsFuljelzokBEVET_DATUM: TDateTimeField
      DisplayLabel = #201'rkez'#233's d'#225'tuma'
      DisplayWidth = 10
      FieldName = 'BEVET_DATUM'
      ProviderFlags = []
    end
    object sdsFuljelzokKIADAS_DATUM: TDateTimeField
      DisplayLabel = 'Kiad'#225's d'#225'tuma'
      DisplayWidth = 18
      FieldName = 'KIADAS_DATUM'
      ProviderFlags = []
    end
    object sdsFuljelzokID: TBCDField
      FieldName = 'ID'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsFuljelzokJELENTES_DATUM: TDateTimeField
      FieldName = 'JELENTES_DATUM'
      ProviderFlags = []
      Visible = False
    end
    object sdsFuljelzokUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
      ProviderFlags = []
      Visible = False
    end
    object sdsFuljelzokRENDELESI_KOD: TWideStringField
      FieldName = 'RENDELESI_KOD'
      ProviderFlags = []
      Visible = False
      Size = 4
    end
    object sdsFuljelzokUTMOD_KOD: TWideStringField
      FieldName = 'UTMOD_KOD'
      ProviderFlags = []
      Visible = False
      Size = 3
    end
  end
  object dtsFulJelzok: TDataSource
    DataSet = sdsFuljelzok
    Left = 230
    Top = 40
  end
  object sdsKimeno: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT *'#13#10'FROM COMM_PACK_OUT CO'#13#10'ORDER BY DEST_SITE, PACK_NR,STA' +
      'TUS'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT *'#13#10'FROM COMM_PACK_OUT CO'#13#10'ORDER BY DEST_SITE, PACK_NR,STA' +
      'TUS'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 163
    Top = 88
    object sdsKimenoID: TBCDField
      FieldName = 'ID'
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsKimenoDEST_SITE: TWideStringField
      DisplayLabel = 'C'#233'l telep'
      DisplayWidth = 10
      FieldName = 'DEST_SITE'
      ProviderFlags = []
      Size = 30
    end
    object sdsKimenoPACK_NR: TIntegerField
      DisplayLabel = 'Csomagsz'#225'm'
      FieldName = 'PACK_NR'
      ProviderFlags = []
    end
    object sdsKimenoPACK_DATE: TDateTimeField
      DisplayLabel = 'Csomag d'#225'tum'
      DisplayWidth = 12
      FieldName = 'PACK_DATE'
      ProviderFlags = []
    end
    object sdsKimenoFROM_DATE: TDateTimeField
      DisplayLabel = 'Id'#337'szak - t'#243'l'
      DisplayWidth = 12
      FieldName = 'FROM_DATE'
      ProviderFlags = []
    end
    object sdsKimenoTO_DATE: TDateTimeField
      DisplayLabel = 'Id'#337'szak - ig'
      DisplayWidth = 12
      FieldName = 'TO_DATE'
      ProviderFlags = []
    end
    object sdsKimenoSTATUS: TBCDField
      DisplayLabel = #193'llapot'
      DisplayWidth = 5
      FieldName = 'STATUS'
      ProviderFlags = []
      Precision = 32
      Size = 0
    end
  end
  object dtsKimeno: TDataSource
    DataSet = sdsKimeno
    Left = 230
    Top = 88
  end
  object sdsBejovo: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT *'#13#10'FROM COMM_PACK_IN CO'#13#10'ORDER BY SRC_SITE, PACK_NR,STATU' +
      'S'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT *'#13#10'FROM COMM_PACK_IN CO'#13#10'ORDER BY SRC_SITE, PACK_NR,STATU' +
      'S'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 163
    Top = 136
    object BCDField1: TBCDField
      FieldName = 'ID'
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsBejovoSRC_SITE: TWideStringField
      DisplayLabel = 'K'#252'ld'#337
      DisplayWidth = 10
      FieldName = 'SRC_SITE'
      Size = 30
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Csomagsz'#225'm'
      FieldName = 'PACK_NR'
      ProviderFlags = []
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Csomag d'#225'tum'
      DisplayWidth = 12
      FieldName = 'PACK_DATE'
      ProviderFlags = []
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Id'#337'szak - t'#243'l'
      DisplayWidth = 12
      FieldName = 'FROM_DATE'
      ProviderFlags = []
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = 'Id'#337'szak - ig'
      DisplayWidth = 12
      FieldName = 'TO_DATE'
      ProviderFlags = []
    end
    object BCDField2: TBCDField
      DisplayLabel = #193'llapot'
      DisplayWidth = 5
      FieldName = 'STATUS'
      ProviderFlags = []
      Precision = 32
      Size = 0
    end
  end
  object dtsBejovo: TDataSource
    DataSet = sdsBejovo
    Left = 230
    Top = 136
  end
end
