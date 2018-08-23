inherited frmFuljRend: TfrmFuljRend
  Left = 584
  Top = 250
  Width = 768
  Height = 403
  Caption = 'F'#252'ljelz'#337' rendel'#233'sek nyilv'#225'ntart'#225'sa'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 326
    Width = 752
    inherited btnTorol: TBitBtn
      Left = 514
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 594
    end
    inherited btnCancel: TBitBtn
      Left = 674
    end
    inherited btnModosit: TBitBtn
      Left = 434
    end
    inherited btnUj: TBitBtn
      Left = 354
    end
  end
  inherited pnlMod: TTalPanel
    Left = 408
    Height = 326
    object TalLabel1: TTalLabel
      Left = 15
      Top = 36
      Width = 79
      Height = 13
      Caption = 'Rendel'#233's m'#243'dja:'
    end
    object TalLabel2: TTalLabel
      Left = 15
      Top = 69
      Width = 86
      Height = 13
      Caption = 'Rendel'#233's d'#225'tuma:'
    end
    object TalLabel3: TTalLabel
      Left = 15
      Top = 101
      Width = 130
      Height = 13
      Caption = 'V'#225'rhat'#243' be'#233'rkez'#233's d'#225'tuma:'
    end
    object TalLabel8: TTalLabel
      Left = 15
      Top = 133
      Width = 93
      Height = 13
      Caption = 'Rendelt mennyis'#233'g:'
    end
    object TalLabel4: TTalLabel
      Left = 15
      Top = 165
      Width = 59
      Height = 13
      Caption = 'Megjegyz'#233's:'
    end
    object TalLabel5: TTalLabel
      Left = 224
      Top = 133
      Width = 27
      Height = 13
      Caption = 'darab'
    end
    object lucRend: TTalDBLookupComboBox
      Left = 114
      Top = 32
      Width = 185
      Height = 21
      DataField = 'REND_MOD'
      DataSource = dtsFulJelzok
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtsRendKod
      TabOrder = 0
    end
    object edtRendDat: TTalDBEdit
      Left = 154
      Top = 64
      Width = 80
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      ParentCtl3D = False
      TabOrder = 1
      OnExit = edtRendDatExit
      DataField = 'DATUM'
      DataSource = dtsFulJelzok
    end
    object edtBeerkDat: TTalDBEdit
      Left = 154
      Top = 96
      Width = 80
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      ParentCtl3D = False
      TabOrder = 2
      OnExit = edtBeerkDatExit
      DataField = 'VARHATO_ERK'
      DataSource = dtsFulJelzok
    end
    object edtMenny: TTalDBEdit
      Left = 154
      Top = 128
      Width = 63
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 3
      DataField = 'MENNYISEG'
      DataSource = dtsFulJelzok
    end
    object TalDBMemo1: TTalDBMemo
      Left = 16
      Top = 184
      Width = 305
      Height = 169
      DataField = 'MEGJEGYZES'
      DataSource = dtsFulJelzok
      MaxLength = 600
      TabOrder = 4
    end
  end
  inherited grdVal: TTalDBGrid
    Width = 408
    Height = 326
    DataSource = dtsFulJelzok
  end
  inherited ActionList1: TActionList
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
  end
  object sdsFuljelzok: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'FF.ID,'#13#10'FF.DATUM,'#13#10'FF.MENNYISEG,'#13#10'FF.VARHATO_ERK,'#13#10'FF.RE' +
      'ND_MOD,'#13#10'FF.MEGJEGYZES,'#13#10'FF.UTMOD_DAT,'#13#10'FF.UTMOD_KOD,'#13#10'RK.KOD ||' +
      ' '#39' - '#39' || RK.KOD_NEV AS REND_NEV'#13#10'FROM FULJ_REND FF'#13#10'LEFT JOIN K' +
      'ODOK RK ON (RK.KODTIPUSOK_TIPUSKOD='#39'RENDKOD'#39' AND RK.KOD=FF.REND_' +
      'MOD)'#13#10'ORDER BY FF.DATUM DESC'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'FF.ID,'#13#10'FF.DATUM,'#13#10'FF.MENNYISEG,'#13#10'FF.VARHATO_ERK,'#13#10'FF.RE' +
      'ND_MOD,'#13#10'FF.MEGJEGYZES,'#13#10'FF.UTMOD_DAT,'#13#10'FF.UTMOD_KOD,'#13#10'RK.KOD ||' +
      ' '#39' - '#39' || RK.KOD_NEV AS REND_NEV'#13#10'FROM FULJ_REND FF'#13#10'LEFT JOIN K' +
      'ODOK RK ON (RK.KODTIPUSOK_TIPUSKOD='#39'RENDKOD'#39' AND RK.KOD=FF.REND_' +
      'MOD)'#13#10'ORDER BY FF.DATUM DESC'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 163
    Top = 16
    object sdsFuljelzokID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsFuljelzokDATUM: TDateTimeField
      DisplayLabel = 'Rend.d'#225'tuma'
      DisplayWidth = 10
      FieldName = 'DATUM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFuljelzokREND_NEV: TWideStringField
      DisplayLabel = 'Rendel'#233's m'#243'dja'
      DisplayWidth = 17
      FieldName = 'REND_NEV'
      ReadOnly = True
      Size = 43
    end
    object sdsFuljelzokMENNYISEG: TBCDField
      DisplayLabel = 'Mennyis'#233'g'
      DisplayWidth = 8
      FieldName = 'MENNYISEG'
      Precision = 10
      Size = 0
    end
    object sdsFuljelzokVARHATO_ERK: TDateTimeField
      DisplayLabel = 'V'#225'rhat'#243' '#233'rk.'
      DisplayWidth = 10
      FieldName = 'VARHATO_ERK'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFuljelzokMEGJEGYZES: TWideStringField
      DisplayLabel = 'Megjegyz'#233's'
      FieldName = 'MEGJEGYZES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 600
    end
    object sdsFuljelzokUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsFuljelzokREND_MOD: TWideStringField
      FieldName = 'REND_MOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsFuljelzokUTMOD_KOD: TWideStringField
      FieldName = 'UTMOD_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
  end
  object dtsFulJelzok: TDataSource
    DataSet = sdsFuljelzok
    Left = 230
    Top = 16
  end
  object qryRendKod: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  kk.KOD, '
      'kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'RENDKOD'#39)
    Left = 160
    Top = 71
    object qryRendKodKOD: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object qryRendKodKOD_NEV: TWideStringField
      FieldName = 'KOD_NEV'
      ReadOnly = True
      Size = 43
    end
  end
  object dtsRendKod: TDataSource
    DataSet = qryRendKod
    Left = 232
    Top = 71
  end
  object qryLista: TTalQuery
    Connection = dtmTarka.cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'FF.ID,'
      'FF.FULJ_AZON,'
      'FF.BEVET_DATUM,'
      'FF.RENDELES_DATUM,'
      'FF.JELENTES_DATUM,'
      'FF.KIADAS_DATUM,'
      'FF.RENDELESI_KOD,'
      'FF.UTMOD_DAT,'
      'FF.UTMOD_KOD,'
      'RK.KOD+'#39' - '#39'+RK.KOD_NEV AS REND_NEV'
      'FROM FULJELZO FF'
      
        'LEFT JOIN KODOK RK ON (RK.KODTIPUSOK_TIPUSKOD='#39'RENDKOD'#39' AND RK.K' +
        'OD=FF.RENDELESI_KOD)'
      'WHERE FF.KIADAS_DATUM IS NULL'
      'ORDER BY FULJ_AZON')
    Left = 160
    Top = 136
    object qryListaID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object qryListaFULJ_AZON: TStringField
      FieldName = 'FULJ_AZON'
      Size = 14
    end
    object qryListaBEVET_DATUM: TDateTimeField
      FieldName = 'BEVET_DATUM'
    end
    object qryListaRENDELES_DATUM: TDateTimeField
      FieldName = 'RENDELES_DATUM'
    end
    object qryListaJELENTES_DATUM: TDateTimeField
      FieldName = 'JELENTES_DATUM'
    end
    object qryListaKIADAS_DATUM: TDateTimeField
      FieldName = 'KIADAS_DATUM'
    end
    object qryListaRENDELESI_KOD: TStringField
      FieldName = 'RENDELESI_KOD'
      Size = 10
    end
    object qryListaUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
    end
    object qryListaUTMOD_KOD: TStringField
      FieldName = 'UTMOD_KOD'
      Size = 3
    end
    object qryListaREND_NEV: TStringField
      FieldName = 'REND_NEV'
      ReadOnly = True
      Size = 43
    end
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FULJ_AZON=FULJ_AZON'
      'BEVET_DATUM=BEVET_DATUM'
      'RENDELES_DATUM=RENDELES_DATUM'
      'JELENTES_DATUM=JELENTES_DATUM'
      'KIADAS_DATUM=KIADAS_DATUM'
      'RENDELESI_KOD=RENDELESI_KOD'
      'UTMOD_DAT=UTMOD_DAT'
      'UTMOD_KOD=UTMOD_KOD'
      'REND_NEV=REND_NEV')
    DataSet = qryLista
    Left = 208
    Top = 136
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 38886.924736006940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 264
    Top = 136
    Datasets = <
      item
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'SzuroFeltetelek'
        Value = Null
      end
      item
        Name = 'Rendezettseg'
        Value = Null
      end
      item
        Name = 'ENAR_KOD'
        Value = Null
      end
      item
        Name = 'TENYESZET_NEv'
        Value = Null
      end
      item
        Name = 'AT_KFTKOD'
        Value = Null
      end>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 113.385961020000000000
          Top = 60.472479999999990000
          Width = 491.338777950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Felhaszn'#258#711'lhat'#258#322' f'#258#317'ljelz'#313#8216'k')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baCenter
          Left = 185.197011495000000000
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
            
              #258#129'llatteny'#258#169'szt'#258#169'si Teljes'#258#173'tm'#258#169'nyvizsg'#258#711'l'#258#322' Kft adatfeldolgoz'#258#322 +
              ' rendszer '#194#169' 2006')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 514.015762679999900000
          Top = 22.677180000000000000
          Width = 43.464566929999990000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'K'#258#169'sz'#258#317'lt:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 563.149970000000100000
          Top = 22.677180000000000000
          Width = 62.362204720000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 631.181114570000000000
          Top = 22.677180000000000000
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
          Top = 49.133841179999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[ENAR_KOD]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 83.149660000000000000
          Top = 22.677180000000000000
          Width = 177.637910000000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TENYESZET_NEv]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 275.905690000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataSetName = 'frxDBList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[AT_KFTKOD]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'FULJ_AZON'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."FULJ_AZON"]')
        end
        object Memo9: TfrxMemoView
          Left = 249.448979999999600000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'RENDELES_DATUM'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."RENDELES_DATUM"]')
        end
        object Memo11: TfrxMemoView
          Left = 137.952845000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'BEVET_DATUM'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."BEVET_DATUM"]')
        end
        object Memo15: TfrxMemoView
          Left = 347.716760000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'REND_NEV'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."REND_NEV"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        object Memo39: TfrxMemoView
          Left = 559.370440000000000000
          Top = 3.779530000000022000
          Width = 136.063080000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalPages#] / [<Page>].oldal')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 11.338582680000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Lista - Felhaszn'#258#711'lhat'#258#322' f'#258#317'ljelz'#313#8216'k')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 245.669450000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Rendel'#258#169's d'#258#711'tuma')
        end
        object Memo12: TfrxMemoView
          Left = 143.622140000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000010000
          HAlign = haCenter
          Memo.UTF8 = (
            'Bev'#258#169'telez'#258#169's d'#258#711'tuma')
        end
        object Memo16: TfrxMemoView
          Left = 347.716760000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Rendel'#258#169's t'#258#173'pusa')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 41.574830000000050000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 30.236220470000000000
          Top = 18.897637799999980000
          Width = 68.031503390000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #258#8211'sszesen:')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 105.826840000000000000
          Top = 18.897637799999980000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 18.897869680000000000
          Top = 7.559055119999982000
          Width = 680.314960630000000000
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 162.519790000000000000
          Top = 18.897637799999980000
          Width = 192.756030000000000000
          Height = 18.897637800000000000
          Memo.UTF8 = (
            'kiadhat'#258#322' szabad f'#258#317'ljelz'#313#8216)
        end
      end
    end
  end
end
