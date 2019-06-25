object ATorzskonyves: TATorzskonyves
  Left = 664
  Top = 410
  Width = 488
  Height = 174
  Caption = 'A t'#246'rzsk'#246'nyvek egyedek sz'#225'ma'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 97
    Height = 16
    Caption = 'Sz'#252'let'#233'si d'#225'tum:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 66
    Height = 16
    Caption = 'Teny'#233'szet:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnPrint: TTalBitBtn
    Left = 352
    Top = 72
    Width = 105
    Height = 33
    Caption = 'Nyomtat'#225's'
    TabOrder = 0
    OnClick = btnPrintClick
  end
  object cbTenyeszet: TTalDBLookupComboBox
    Left = 145
    Top = 12
    Width = 313
    Height = 24
    DropDownRows = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'TKOD'
    ListField = 'LISTA'
    ListSource = dtsTenyeszet
    ParentFont = False
    TabOrder = 1
  end
  object edtBirthdate: TTalEdit
    Left = 145
    Top = 42
    Width = 97
    Height = 26
    Alignment = taLeftJustify
    Required = False
    RequiredColor = clInfoBk
    ReadOnlyColor = clActiveBorder
    ValueType = etDate
    Text = '1899.12.30'
    Enabled = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    SpinVisible = False
    ButtonVisible = True
    MaxLength = 10
    ParentFont = False
    ReadOnly = False
    TabOrder = 2
  end
  object dtsTenyeszet: TDataSource
    DataSet = sdsTenyeszet
    Left = 88
    Top = 136
  end
  object ADOAtorzskonyv: TADOStoredProc
    Connection = dtmTarka.cnTarka
    CommandTimeout = 150
    ProcedureName = 'ATORZSKONYV_TEST'
    Parameters = <
      item
        Name = 'P_TKOD'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_BIRTHDATE'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 40
    Top = 80
  end
  object sdsTReturn: TTalSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 'SELECT * from TRETURN'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 'SELECT * from TRETURN'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    PacketRecords = 500
    Params = <>
    Left = 112
    Top = 80
    object sdsTReturnV1: TWideStringField
      FieldName = 'V1'
      Size = 256
    end
    object sdsTReturnV2: TWideStringField
      FieldName = 'V2'
      Size = 256
    end
    object sdsTReturnV3: TWideStringField
      FieldName = 'V3'
      Size = 256
    end
    object sdsTReturnV4: TWideStringField
      FieldName = 'V4'
      Size = 256
    end
    object sdsTReturnV5: TWideStringField
      FieldName = 'V5'
      Size = 256
    end
    object sdsTReturnV6: TWideStringField
      FieldName = 'V6'
      Size = 256
    end
    object sdsTReturnV7: TWideStringField
      FieldName = 'V7'
      Size = 256
    end
  end
  object dtsTReturn: TDataSource
    DataSet = sdsTReturn
    Left = 178
    Top = 80
  end
  object frxTReturn: TfrxDBDataset
    UserName = 'frxTReturn'
    CloseDataSource = False
    FieldAliases.Strings = (
      'V1=V1'
      'V2=V2'
      'V3=V3'
      'V4=V4'
      'V5=V5'
      'V6=V6'
      'V7=V7')
    DataSource = dtsTReturn
    Left = 244
    Top = 80
  end
  object frxRepListak: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 40240.498815532400000000
    ReportOptions.LastChange = 43641.867316979170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    Left = 308
    Top = 80
    Datasets = <
      item
        DataSet = frxTReturn
        DataSetName = 'frxTReturn'
      end>
    Variables = <
      item
        Name = ' Parameters'
        Value = Null
      end
      item
        Name = 'p1'
        Value = Null
      end
      item
        Name = 'p2'
        Value = Null
      end
      item
        Name = 'p3'
        Value = Null
      end
      item
        Name = 'p4'
        Value = Null
      end
      item
        Name = 'p0'
        Value = Null
      end>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          Align = baCenter
          Left = 196.346624995000000000
          Top = 7.559060000000000000
          Width = 347.716677010000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'WinTarka - H'#258#351'shaszn'#258#351' szarvasmarha nyilv'#258#711'ntart'#258#322' program ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 646.299234570000000000
          Top = 30.236240000000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TIME]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 52.913371180000000000
          Width = 740.409927000000000000
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        Height = 94.488250000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        DataSet = frxTReturn
        DataSetName = 'frxTReturn'
        RowCount = 0
        object Shape52: TfrxShapeView
          Left = 642.520100000000000000
          Width = 49.133846060000000000
          Height = 22.677180000000000000
        end
        object Shape26: TfrxShapeView
          Left = 472.441250000000000000
          Width = 49.133846060000000000
          Height = 22.677180000000000000
        end
        object Shape50: TfrxShapeView
          Left = 279.685220000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Shape15: TfrxShapeView
          Left = 222.992270000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Shape6: TfrxShapeView
          Left = 124.724490000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
        end
        object Shape4: TfrxShapeView
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Shape5: TfrxShapeView
          Left = 68.031540000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
        end
        object Memo7: TfrxMemoView
          Left = 37.795300000000000000
          Top = 37.795300000000000000
          Width = 79.370093390000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo7OnAfterData'
          DataField = 'V2'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTReturn."V2"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 3.779530000000000000
          Width = 105.826803390000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo2OnAfterData'
          DataField = 'V1'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTReturn."V1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 90.708720000000000000
          Top = 64.252010000000000000
          Width = 105.826810710000000000
          Height = 11.338590000000000000
          DataField = 'V3'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTReturn."V3"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object Shape9: TfrxShapeView
          Left = 170.078850000000000000
          Width = 52.913420000000000000
          Height = 22.677180000000000000
        end
        object Memo17: TfrxMemoView
          Left = 181.417440000000000000
          Top = 49.133890000000000000
          Width = 79.370100710000000000
          Height = 11.338590000000000000
          DataField = 'V4'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxTReturn."V4"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 419.527642050000000000
          Top = 37.795300000000000000
          Width = 90.708705350000000000
          Height = 11.338590000000000000
          DataField = 'V6'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTReturn."V6"]')
          ParentFont = False
        end
        object Shape12: TfrxShapeView
          Left = 336.378170000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
        end
        object Shape25: TfrxShapeView
          Left = 404.409710000000000000
          Width = 68.031496060000000000
          Height = 22.677180000000000000
        end
        object Shape27: TfrxShapeView
          Left = 521.575140000000000000
          Width = 37.795256060000000000
          Height = 22.677180000000000000
        end
        object Shape28: TfrxShapeView
          Left = 608.504330000000000000
          Width = 34.015726060000000000
          Height = 22.677180000000000000
        end
        object Shape29: TfrxShapeView
          Left = 691.653990000000000000
          Width = 49.133846060000000000
          Height = 22.677180000000000000
        end
        object Memo94: TfrxMemoView
          Left = 283.464598660000000000
          Top = 41.574830000000000000
          Width = 68.031522910000000000
          Height = 11.338590000000000000
          DataField = 'V5'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTReturn."V5"]')
          ParentFont = False
        end
        object Shape51: TfrxShapeView
          Left = 559.370440000000000000
          Width = 49.133846060000000000
          Height = 22.677180000000000000
        end
      end
    end
  end
  object sdsTenyeszet: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select tkod || '#39' - '#39' || tnev2 as lista, * from teny order by tko' +
      'd'
    DataSet.FieldDefs = <
      item
        Name = 'LISTA'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 88
      end
      item
        Name = 'TKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'EKOD'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'RKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'ALLAPOT'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TIPUS'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'BDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'IRSZ'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'VAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'KTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'KTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'HSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TNEV1'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TNEV2'
        DataType = ftWideString
        Size = 78
      end
      item
        Name = 'TNEV3'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'TEL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftWideString
        Size = 37
      end
      item
        Name = 'FAX'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TIRSZ'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TVAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TKTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'TKTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'THSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KKOD'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TMEGYE'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CHANGED'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'ROW_ID'
        DataType = ftVarBytes
        Size = 16
      end>
    DataSet.Parameters = <>
    DataSet.StoreDefs = True
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select tkod || '#39' - '#39' || tnev2 as lista, * from teny order by tko' +
      'd'
    Provider.DataSet.FieldDefs = <
      item
        Name = 'LISTA'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 88
      end
      item
        Name = 'TKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'EKOD'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'RKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'ALLAPOT'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TIPUS'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'BDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'IRSZ'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'VAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'KTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'KTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'HSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TNEV1'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TNEV2'
        DataType = ftWideString
        Size = 78
      end
      item
        Name = 'TNEV3'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'TEL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftWideString
        Size = 37
      end
      item
        Name = 'FAX'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TIRSZ'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TVAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TKTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'TKTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'THSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KKOD'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TMEGYE'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CHANGED'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'ROW_ID'
        DataType = ftVarBytes
        Size = 16
      end>
    Provider.DataSet.Parameters = <>
    Provider.DataSet.StoreDefs = True
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    FieldDefs = <
      item
        Name = 'LISTA'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 88
      end
      item
        Name = 'TKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'EKOD'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'RKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'ALLAPOT'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'BDAT'
        DataType = ftDateTime
      end
      item
        Name = 'IRSZ'
        DataType = ftInteger
      end
      item
        Name = 'VAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'KTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'KTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'HSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TNEV1'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TNEV2'
        DataType = ftWideString
        Size = 78
      end
      item
        Name = 'TNEV3'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'TEL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftWideString
        Size = 37
      end
      item
        Name = 'FAX'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TIRSZ'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TVAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TKTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'TKTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'THSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KKOD'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TMEGYE'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CHANGED'
        DataType = ftDateTime
      end
      item
        Name = 'ROW_ID'
        DataType = ftVarBytes
        Size = 16
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 144
    Top = 128
    object sdsTenyeszetLISTA: TWideStringField
      FieldName = 'LISTA'
      ReadOnly = True
      Size = 88
    end
    object sdsTenyeszetTKOD: TWideStringField
      FieldName = 'TKOD'
      Size = 7
    end
    object sdsTenyeszetEKOD: TWideStringField
      FieldName = 'EKOD'
      Size = 5
    end
    object sdsTenyeszetRKOD: TWideStringField
      FieldName = 'RKOD'
      Size = 7
    end
    object sdsTenyeszetALLAPOT: TWideStringField
      FieldName = 'ALLAPOT'
      Size = 1
    end
    object sdsTenyeszetTIPUS: TWideStringField
      FieldName = 'TIPUS'
      Size = 1
    end
    object sdsTenyeszetBDAT: TDateTimeField
      FieldName = 'BDAT'
    end
    object sdsTenyeszetIRSZ: TIntegerField
      FieldName = 'IRSZ'
    end
    object sdsTenyeszetVAROS: TWideStringField
      FieldName = 'VAROS'
    end
    object sdsTenyeszetKTNEV: TWideStringField
      FieldName = 'KTNEV'
      Size = 30
    end
    object sdsTenyeszetKTJELL: TWideStringField
      FieldName = 'KTJELL'
      Size = 15
    end
    object sdsTenyeszetHSZ: TWideStringField
      FieldName = 'HSZ'
      Size = 10
    end
    object sdsTenyeszetTNEV1: TWideStringField
      FieldName = 'TNEV1'
      Size = 15
    end
    object sdsTenyeszetTNEV2: TWideStringField
      FieldName = 'TNEV2'
      Size = 78
    end
    object sdsTenyeszetTNEV3: TWideStringField
      FieldName = 'TNEV3'
      Size = 50
    end
    object sdsTenyeszetTEL: TWideStringField
      FieldName = 'TEL'
      Size = 15
    end
    object sdsTenyeszetEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 37
    end
    object sdsTenyeszetFAX: TWideStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsTenyeszetTIRSZ: TWideStringField
      FieldName = 'TIRSZ'
      Size = 5
    end
    object sdsTenyeszetTVAROS: TWideStringField
      FieldName = 'TVAROS'
    end
    object sdsTenyeszetTKTNEV: TWideStringField
      FieldName = 'TKTNEV'
      Size = 30
    end
    object sdsTenyeszetTKTJELL: TWideStringField
      FieldName = 'TKTJELL'
      Size = 15
    end
    object sdsTenyeszetTHSZ: TWideStringField
      FieldName = 'THSZ'
      Size = 10
    end
    object sdsTenyeszetKKOD: TWideStringField
      FieldName = 'KKOD'
      Size = 10
    end
    object sdsTenyeszetTMEGYE: TWideStringField
      FieldName = 'TMEGYE'
      Size = 5
    end
    object sdsTenyeszetCHANGED: TDateTimeField
      FieldName = 'CHANGED'
    end
    object sdsTenyeszetROW_ID: TVarBytesField
      FieldName = 'ROW_ID'
    end
  end
end
