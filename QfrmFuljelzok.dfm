inherited frmFuljelzo: TfrmFuljelzo
  Left = 952
  Top = 264
  Width = 856
  Height = 487
  Caption = 'F'#252'ljelz'#337' k'#233'szletek'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 410
    Width = 840
    inherited btnTorol: TBitBtn
      Left = 602
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 682
    end
    inherited btnCancel: TBitBtn
      Left = 762
    end
    inherited btnModosit: TBitBtn
      Left = 522
    end
    inherited btnUj: TBitBtn
      Left = 442
    end
    inherited btnNyomtat: TBitBtn
      OnClick = btnNyomtatClick
    end
    object btnOKUj: TBitBtn
      Left = 362
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK+'#250'j'
      TabOrder = 6
      OnClick = btnOKUjClick
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000E0000000D0000000100
        0400000000006800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333339993333330033333999333333003333399933333300333339993333
        3300399999999999330039999999999933003999999999993300333339993333
        3300333339993333330033333999333333003333399933333300333333333333
        3300}
    end
    object btnCsopRogz: TBitBtn
      Left = 240
      Top = 8
      Width = 117
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Csoportos r'#246'gz'#237't'#233's'
      TabOrder = 7
      TabStop = False
      OnClick = btnCsopRogzClick
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000E0000000D0000000100
        0400000000006800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333339993333330033333999333333003333399933333300333339993333
        3300399999999999330039999999999933003999999999993300333339993333
        3300333339993333330033333999333333003333399933333300333333333333
        3300}
    end
  end
  inherited pnlMod: TTalPanel
    Left = 527
    Width = 313
    Height = 410
    object TalLabel8: TTalLabel
      Left = 15
      Top = 133
      Width = 60
      Height = 13
      Caption = 'ENAR sz'#225'm:'
    end
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
      Width = 91
      Height = 13
      Caption = 'Be'#233'rkez'#233's d'#225'tuma:'
    end
    object TalLabel4: TTalLabel
      Left = 15
      Top = 364
      Width = 73
      Height = 13
      Caption = 'Kiad'#225's d'#225'tuma:'
    end
    object lblDb: TTalLabel
      Left = 15
      Top = 392
      Width = 61
      Height = 13
      Caption = 'R'#246'gz'#237'tett db:'
    end
    object edtEnar: TTalDBEdit
      Left = 114
      Top = 128
      Width = 95
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 3
      DataField = 'FULJ_AZON'
      DataSource = dtsFulJelzok
    end
    object lucRend: TTalDBLookupComboBox
      Left = 114
      Top = 32
      Width = 185
      Height = 21
      DataField = 'RENDELESI_KOD'
      DataSource = dtsFulJelzok
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtsRendKod
      TabOrder = 0
    end
    object edtRendDat: TTalDBEdit
      Left = 114
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
      DataField = 'RENDELES_DATUM'
      DataSource = dtsFulJelzok
    end
    object edtBeerkDat: TTalDBEdit
      Left = 114
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
      DataField = 'BEVET_DATUM'
      DataSource = dtsFulJelzok
    end
    object edtKiadasDat: TTalDBEdit
      Left = 113
      Top = 359
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
      TabOrder = 5
      DataField = 'KIADAS_DATUM'
      DataSource = dtsFulJelzok
    end
    object pnlRogz: TTalPanel
      Left = 16
      Top = 168
      Width = 281
      Height = 81
      BorderStyle = bsSingle
      TabOrder = 4
      object TalLabel5: TTalLabel
        Left = 15
        Top = 16
        Width = 119
        Height = 13
        Caption = 'ENAR sz'#225'm els'#337' 5 jegye:'
      end
      object TalLabel6: TTalLabel
        Left = 55
        Top = 48
        Width = 77
        Height = 13
        Caption = 'haszn'#225'lati sz'#225'm:'
      end
      object TalLabel7: TTalLabel
        Left = 190
        Top = 48
        Width = 9
        Height = 13
        Caption = ' - '
      end
      object edtHsz: TTalEdit
        Left = 142
        Top = 43
        Width = 43
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
        MaxLength = 4
        ReadOnly = False
        TabOrder = 0
        OnExit = edtHszExit
        OnKeyUp = edtHszKeyUp
      end
      object edtCrc: TTalEdit
        Left = 206
        Top = 43
        Width = 17
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 1
      end
      object edtEnar5: TTalMaskEdit
        Left = 142
        Top = 12
        Width = 42
        Height = 21
        EditMask = '00000;0;_'
        MaxLength = 5
        TabOrder = 2
        OnExit = edtEnar5Exit
      end
    end
    object pnlCsop: TTalPanel
      Left = 16
      Top = 249
      Width = 281
      Height = 81
      BorderStyle = bsSingle
      TabOrder = 6
      object TalLabel9: TTalLabel
        Left = 15
        Top = 16
        Width = 119
        Height = 13
        Caption = 'ENAR sz'#225'm els'#337' 5 jegye:'
      end
      object TalLabel10: TTalLabel
        Left = 13
        Top = 48
        Width = 77
        Height = 13
        Caption = 'haszn'#225'lati sz'#225'm:'
      end
      object TalLabel11: TTalLabel
        Left = 147
        Top = 48
        Width = 9
        Height = 13
        Caption = ' - '
      end
      object edtHszTol: TTalEdit
        Left = 100
        Top = 43
        Width = 43
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
        MaxLength = 4
        ReadOnly = False
        TabOrder = 0
        OnExit = edtHszTolExit
      end
      object edtHszIg: TTalEdit
        Left = 163
        Top = 43
        Width = 43
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
        ReadOnly = False
        TabOrder = 1
        OnExit = edtHszIgExit
      end
      object edtEnar51: TTalMaskEdit
        Left = 142
        Top = 12
        Width = 42
        Height = 21
        EditMask = '00000;0;_'
        MaxLength = 5
        TabOrder = 2
        OnExit = edtEnar51Exit
      end
    end
  end
  inherited grdVal: TTalDBGrid
    Width = 527
    Height = 410
    Selected.Strings = (
      'FULJ_AZON'#9'14'#9'ENAR sz'#225'm'#9#9
      'REND_NEV'#9'15'#9'Rendel'#233's m'#243'dja'#9#9
      'RENDELES_DATUM'#9'18'#9'Rendel'#233's d'#225'tuma'#9#9
      'BEVET_DATUM'#9'10'#9#201'rkez'#233's d'#225'tuma'#9#9
      'KIADAS_DATUM'#9'18'#9'Kiad'#225's d'#225'tuma'#9#9)
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
      'SELECT'#13#10'FF.ID,'#13#10'FF.FULJ_AZON,'#13#10'FF.BEVET_DATUM,'#13#10'FF.RENDELES_DATU' +
      'M,'#13#10'FF.JELENTES_DATUM,'#13#10'FF.KIADAS_DATUM,'#13#10'FF.RENDELESI_KOD,'#13#10'FF.' +
      'UTMOD_DAT,'#13#10'FF.UTMOD_KOD--,'#13#10'--RK.KOD || '#39' - '#39' || RK.KOD_NEV AS ' +
      'REND_NEV'#13#10'FROM FULJELZO FF'#13#10'--LEFT JOIN KODOK RK ON (RK.KODTIPUS' +
      'OK_TIPUSKOD='#39'RENDKOD'#39' AND RK.KOD=FF.RENDELESI_KOD)'#13#10'WHERE FF.KIA' +
      'DAS_DATUM IS NULL /*LIKE*/'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'FF.ID,'#13#10'FF.FULJ_AZON,'#13#10'FF.BEVET_DATUM,'#13#10'FF.RENDELES_DATU' +
      'M,'#13#10'FF.JELENTES_DATUM,'#13#10'FF.KIADAS_DATUM,'#13#10'FF.RENDELESI_KOD,'#13#10'FF.' +
      'UTMOD_DAT,'#13#10'FF.UTMOD_KOD--,'#13#10'--RK.KOD || '#39' - '#39' || RK.KOD_NEV AS ' +
      'REND_NEV'#13#10'FROM FULJELZO FF'#13#10'--LEFT JOIN KODOK RK ON (RK.KODTIPUS' +
      'OK_TIPUSKOD='#39'RENDKOD'#39' AND RK.KOD=FF.RENDELESI_KOD)'#13#10'WHERE FF.KIA' +
      'DAS_DATUM IS NULL /*LIKE*/'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 163
    Top = 16
    object sdsFuljelzokID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsFuljelzokFULJ_AZON: TWideStringField
      DisplayLabel = 'ENAR'
      FieldName = 'FULJ_AZON'
      ProviderFlags = [pfInUpdate]
      OnGetText = sdsFuljelzokFULJ_AZONGetText
      Size = 14
    end
    object sdsFuljelzokRENDELES_DATUM: TDateTimeField
      DisplayLabel = 'Rendel'#233's d'#225'tuma'
      DisplayWidth = 18
      FieldName = 'RENDELES_DATUM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFuljelzokBEVET_DATUM: TDateTimeField
      DisplayLabel = #201'rkez'#233's d'#225'tuma'
      DisplayWidth = 10
      FieldName = 'BEVET_DATUM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFuljelzokKIADAS_DATUM: TDateTimeField
      DisplayLabel = 'Kiad'#225's d'#225'tuma'
      DisplayWidth = 18
      FieldName = 'KIADAS_DATUM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsFuljelzokJELENTES_DATUM: TDateTimeField
      FieldName = 'JELENTES_DATUM'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsFuljelzokUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsFuljelzokRENDELESI_KOD: TWideStringField
      FieldName = 'RENDELESI_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 4
    end
    object sdsFuljelzokUTMOD_KOD: TWideStringField
      FieldName = 'UTMOD_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 3
    end
  end
  object dtsFulJelzok: TDataSource
    DataSet = sdsFuljelzok
    Left = 230
    Top = 16
  end
  object qryLista: TTalQuery
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
      'RK.KOD||'#39' - '#39'||RK.KOD_NEV AS REND_NEV'
      'FROM FULJELZO FF'
      
        'LEFT JOIN KODOK RK ON (RK.KODTIPUSOK_TIPUSKOD='#39'RENDKOD'#39' AND RK.K' +
        'OD=FF.RENDELESI_KOD)'
      'WHERE FF.KIADAS_DATUM IS NULL'
      'AND FF.FULJ_AZON LIKE :TENYESZET'
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
      OnGetText = sdsFuljelzokFULJ_AZONGetText
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
    ReportOptions.LastChange = 40580.777059456000000000
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
          Top = 60.472480000000000000
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
            'WinTarka - H'#258#351'shaszn'#258#351' szarvasmarha nyilv'#258#711'ntart'#258#322' program ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 514.015762680000000000
          Top = 22.677180000000000000
          Width = 43.464566930000000000
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
          Left = 563.149970000000000000
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
          Top = 49.133841180000010000
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
          Width = 56.692950000000000000
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
          Left = 249.448980000000000000
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
          Height = 34.015770000000000000
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
        Height = 41.574830000000100000
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
          Left = 7.559279680000000000
          Top = 7.559055119999982000
          Width = 684.094490630000000000
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
  object qryRendKod: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'select kk.KOD , '
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
end
