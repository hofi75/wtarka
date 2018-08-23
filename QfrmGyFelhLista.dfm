inherited frmGyFelhLista: TfrmGyFelhLista
  Width = 532
  Height = 347
  Caption = 'Gy'#243'gyszerfelhaszn'#225'l'#225'sok list'#225'z'#225'sa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 268
    Width = 516
    inherited BitBtn2: TTalBitBtn
      Left = 437
    end
  end
  inherited Panel2: TPanel
    Width = 516
    Height = 268
    object TalLabel1: TTalLabel
      Left = 61
      Top = 39
      Width = 43
      Height = 13
      Caption = 'Id'#337'szak: '
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel3: TTalLabel
      Left = 226
      Top = 39
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label9: TTalLabel
      Left = 61
      Top = 94
      Width = 73
      Height = 13
      Caption = 'Gy'#243'gyszer k'#243'd:'
      FocusControl = edtGyogyszerKod
    end
    object btnGyogyszer: TTalSpeedButton
      Left = 193
      Top = 89
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = btnGyogyszerClick
    end
    object TalLabel6: TTalLabel
      Left = 61
      Top = 66
      Width = 74
      Height = 13
      Caption = 'Betegs'#233'g t'#237'pus:'
    end
    object edtDatTol: TTalEdit
      Left = 144
      Top = 35
      Width = 78
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = '1899.12.30'
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      ReadOnly = False
      TabOrder = 0
    end
    object edtDatIg: TTalEdit
      Left = 240
      Top = 35
      Width = 80
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = '1899.12.30'
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      ReadOnly = False
      TabOrder = 1
    end
    object edtGyogyszerKod: TTalDBEdit
      Left = 144
      Top = 89
      Width = 45
      Height = 22
      Hint = 'F9-re v'#225'laszthat a gy'#243'gyszerek k'#246'z'#252'l'
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtGyogyszerKod'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 3
      OnExit = edtGyogyszerKodExit
      DataField = 'GYOGYSZER_KOD'
      SpeedButton = btnGyogyszer
    end
    object edtGyogyszerNev: TTalDBEdit
      Left = 219
      Top = 89
      Width = 210
      Height = 22
      TabStop = False
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Text = 'DBEdit10'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
      DataField = 'NEV'
    end
    object cbBetTipSzuro: TTalComboBox
      Left = 144
      Top = 62
      Width = 193
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
    end
    object TalGroupBox5: TTalGroupBox
      Left = 43
      Top = 144
      Width = 201
      Height = 78
      Caption = 'Lista t'#237'pusa   '
      TabOrder = 5
      object rbR2: TTalRadioButton
        Left = 11
        Top = 45
        Width = 174
        Height = 17
        Caption = 'Csak '#246'sszes'#237'tett adatok'
        TabOrder = 0
      end
      object rbR1: TTalRadioButton
        Left = 11
        Top = 20
        Width = 151
        Height = 17
        Caption = 'R'#233'szletes lista'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object TalGroupBox3: TTalGroupBox
      Left = 266
      Top = 144
      Width = 218
      Height = 78
      Caption = 'Lista kimenete '
      TabOrder = 6
      object rbExcel: TRadioButton
        Left = 10
        Top = 45
        Width = 71
        Height = 17
        Caption = 'Excel f'#225'jl'
        TabOrder = 0
      end
      object rbLista: TRadioButton
        Left = 10
        Top = 20
        Width = 63
        Height = 17
        Caption = 'Lista'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
  end
  object sdsKeszlet: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT GK.ID, GK.GYOGYSZER_KOD, GK.AKT_KESZLET, GK.BEVET_DATUM, ' +
      'GK.BEV_MENNY,'#13#10'GK.ME, G.NEV'#13#10'FROM GYOGYSZER_KLT GK'#13#10'JOIN GYOGYSZ' +
      'EREK G ON G.KOD = GK.GYOGYSZER_KOD'#13#10'WHERE GK.ID IN'#13#10'(SELECT K.GY' +
      'KLT1_ID'#13#10'FROM KEZELESEK K'#13#10'WHERE  (K.GYKLT1_ID IS NOT NULL AND K' +
      '.KEZ_DATUM BETWEEN :DAT_TOL AND :DAT_IG)'#13#10'OR GK.ID IN'#13#10'(SELECT K' +
      '.GYKLT2_ID'#13#10'FROM KEZELESEK K'#13#10'WHERE  K.GYKLT2_ID IS NOT NULL AND' +
      ' K.KEZ_DATUM BETWEEN :DAT_TOL AND :DAT_IG)'#13#10'OR GK.ID IN'#13#10'(SELECT' +
      ' K.GYKLT3_ID'#13#10'FROM KEZELESEK K'#13#10'WHERE  K.GYKLT3_ID IS NOT NULL A' +
      'ND K.KEZ_DATUM BETWEEN :DAT_TOL AND :DAT_IG))'#13#10'OR (GK.AKT_KESZLE' +
      'T > 0 AND GK.BEVET_DATUM BETWEEN :DAT_TOL AND :DAT_IG)'#13#10
    DataSet.Parameters = <
      item
        Name = 'DAT_TOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_TOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_TOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_TOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Provider.DataSet.CommandText = 
      'SELECT GK.ID, GK.GYOGYSZER_KOD, GK.AKT_KESZLET, GK.BEVET_DATUM, ' +
      'GK.BEV_MENNY,'#13#10'GK.ME, G.NEV'#13#10'FROM GYOGYSZER_KLT GK'#13#10'JOIN GYOGYSZ' +
      'EREK G ON G.KOD = GK.GYOGYSZER_KOD'#13#10'WHERE GK.ID IN'#13#10'(SELECT K.GY' +
      'KLT1_ID'#13#10'FROM KEZELESEK K'#13#10'WHERE  (K.GYKLT1_ID IS NOT NULL AND K' +
      '.KEZ_DATUM BETWEEN :DAT_TOL AND :DAT_IG)'#13#10'OR GK.ID IN'#13#10'(SELECT K' +
      '.GYKLT2_ID'#13#10'FROM KEZELESEK K'#13#10'WHERE  K.GYKLT2_ID IS NOT NULL AND' +
      ' K.KEZ_DATUM BETWEEN :DAT_TOL AND :DAT_IG)'#13#10'OR GK.ID IN'#13#10'(SELECT' +
      ' K.GYKLT3_ID'#13#10'FROM KEZELESEK K'#13#10'WHERE  K.GYKLT3_ID IS NOT NULL A' +
      'ND K.KEZ_DATUM BETWEEN :DAT_TOL AND :DAT_IG))'#13#10'OR (GK.AKT_KESZLE' +
      'T > 0 AND GK.BEVET_DATUM BETWEEN :DAT_TOL AND :DAT_IG)'#13#10
    Provider.DataSet.Parameters = <
      item
        Name = 'DAT_TOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_TOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_TOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_TOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    AfterScroll = sdsKeszletAfterScroll
    Left = 304
    Top = 54
    object sdsKeszletID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object sdsKeszletGYOGYSZER_KOD: TWideStringField
      FieldName = 'GYOGYSZER_KOD'
      Size = 10
    end
    object sdsKeszletME: TWideStringField
      FieldName = 'ME'
      Size = 10
    end
    object sdsKeszletBEV_MENNY: TBCDField
      FieldName = 'BEV_MENNY'
      Precision = 15
      Size = 2
    end
    object sdsKeszletBEVET_DATUM: TDateTimeField
      FieldName = 'BEVET_DATUM'
    end
    object sdsKeszletAKT_KESZLET: TBCDField
      FieldName = 'AKT_KESZLET'
      Precision = 15
      Size = 2
    end
    object sdsKeszletNEV: TWideStringField
      FieldName = 'NEV'
      Size = 80
    end
  end
  object dtsKeszlet: TDataSource
    DataSet = sdsKeszlet
    Left = 360
    Top = 56
  end
  object frxDBKeszlet: TfrxDBDataset
    UserName = 'frxDBKeszlet'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'GYOGYSZER_KOD=GYOGYSZER_KOD'
      'ME=ME'
      'BEV_MENNY=BEV_MENNY'
      'BEVET_DATUM=BEVET_DATUM'
      'AKT_KESZLET=AKT_KESZLET'
      'NEV=NEV')
    DataSet = sdsKeszlet
    Left = 416
    Top = 56
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 39375.852727210600000000
    ReportOptions.LastChange = 39496.571442777800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure DetailData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBKez."KELL"> = '#39'1'#39' then begin'
      '    if <teteles> = 1 then begin'
      '      DetailData1.visible := true;'
      '    end else begin'
      '      DetailData1.visible := false;'
      '    end;'
      '  end else begin'
      '    DetailData1.visible := false;'
      '  end;'
      ''
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <frxDBKez."KELL"> = '#39'0'#39' then begin'
      '    Memo30.text := '#39'Felhaszn'#225'l'#225's '#39' + <datumtol> + '#39' el'#337'tt: '#39';'
      '    GroupFooter1.visible := true;'
      '  end else if <frxDBKez."KELL"> = '#39'1'#39' then begin'
      
        '    Memo30.text := '#39#214'sszes felhaszn'#225'l'#225's a megadott id'#337'szakban: '#39 +
        ';'
      '    GroupFooter1.visible := true;'
      '  end else if <frxDBKez."KELL"> = '#39'2'#39' then begin'
      '    GroupFooter1.visible := false;'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 472
    Top = 56
    Datasets = <
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end
      item
        DataSet = frxDBEgyeb
        DataSetName = 'frxDBEgyeb'
      end
      item
        DataSet = frxDBKeszlet
        DataSetName = 'frxDBKeszlet'
      end
      item
        DataSet = frxDBKez
        DataSetName = 'frxDBKez'
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
        Name = 'datumtol'
        Value = Null
      end
      item
        Name = 'datumig'
        Value = Null
      end
      item
        Name = 'teteles'
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
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
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
            'WTARKA '#194#169' 2009')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 45.354311179999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 517.795292680000000000
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
          Left = 566.929500000000000000
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
          Left = 634.960644570000000000
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
        object Memo7: TfrxMemoView
          Left = 26.456710000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ATKOD'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."ATKOD"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 86.929190000000000000
          Top = 22.677180000000000000
          Width = 177.637910000000000000
          Height = 18.897637800000000000
          DataField = 'TELEP_NEV'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."TELEP_NEV"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 279.685220000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ENAR_KOD'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."ENAR_KOD"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 665.197280000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          Left = -0.000007320000000000
          Width = 393.071120000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kezel'#258#169'sek - Gy'#258#322'gyszerfelhaszn'#258#711'l'#258#711'sok lista')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 691.653990000000000000
          Width = 15.118110240000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 634.961040000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'oldal:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 680.315400000000000000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
        object Memo20: TfrxMemoView
          Left = 665.197280000000000000
          Width = 15.118110240000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        DataSet = frxDBKeszlet
        DataSetName = 'frxDBKeszlet'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 79.370130000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'NEV'
          DataSet = frxDBKeszlet
          DataSetName = 'frxDBKeszlet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBKeszlet."NEV"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBKeszlet
          DataSetName = 'frxDBKeszlet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBKeszlet."GYOGYSZER_KOD"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 309.921460000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'BEVET_DATUM'
          DataSet = frxDBKeszlet
          DataSetName = 'frxDBKeszlet'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBKeszlet."BEVET_DATUM"]')
        end
        object Memo24: TfrxMemoView
          Left = 604.724800000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ME'
          DataSet = frxDBKeszlet
          DataSetName = 'frxDBKeszlet'
          Memo.UTF8 = (
            '[frxDBKeszlet."ME"]')
        end
        object Memo17: TfrxMemoView
          Left = 506.457020000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxDBKeszlet
          DataSetName = 'frxDBKeszlet'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBKeszlet."BEV_MENNY"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 41.574830000000000000
        Top = 600.945270000000000000
        Width = 718.110700000000000000
        object SysMemo3: TfrxSysMemoView
          Left = 7.559060000000000000
          Top = 15.118119999999980000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            #258#8211'sszesen [COUNT(MasterData1,2)] t'#258#169'tel van a list'#258#711'n.')
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 7.559059999999931000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
      object DetailData1: TfrxDetailData
        Height = 22.677180000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'DetailData1OnBeforePrint'
        DataSet = frxDBKez
        DataSetName = 'frxDBKez'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo21: TfrxMemoView
          Left = 408.189240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'KEZ_DATUM'
          DataSet = frxDBKez
          DataSetName = 'frxDBKez'
          Memo.UTF8 = (
            '[frxDBKez."KEZ_DATUM"]')
        end
        object Memo23: TfrxMemoView
          Left = 506.457020000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxDBKez
          DataSetName = 'frxDBKez'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxDBKez."MENNY1">+<frxDBKez."MENNY2">+<frxDBKez."MENNY3">]')
        end
        object Memo27: TfrxMemoView
          Left = 604.724800000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ME'
          DataSet = frxDBKeszlet
          DataSetName = 'frxDBKeszlet'
          Memo.UTF8 = (
            '[frxDBKeszlet."ME"]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBKez."KELL"'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object SysMemo4: TfrxSysMemoView
          Left = 495.118430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<frxDBKez."MENNY1">+<frxDBKez."MENNY2">+<frxDBKez."MENNY3">' +
              ',DetailData1,1)]')
        end
        object Memo28: TfrxMemoView
          Left = 604.724800000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ME'
          DataSet = frxDBKeszlet
          DataSetName = 'frxDBKeszlet'
          Memo.UTF8 = (
            '[frxDBKeszlet."ME"]')
        end
        object Memo30: TfrxMemoView
          Left = 211.653680000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDBKez
          DataSetName = 'frxDBKez'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 11.338590000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBKeszlet."ID"'
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 517.795610000000000000
        Width = 718.110700000000000000
        object Memo29: TfrxMemoView
          Left = 604.724800000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ME'
          DataSet = frxDBKeszlet
          DataSetName = 'frxDBKeszlet'
          Memo.UTF8 = (
            '[frxDBKeszlet."ME"]')
        end
        object SysMemo5: TfrxSysMemoView
          Left = 502.677490000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxDBKeszlet."BEV_MENNY"> - SUM(<frxDBKez."MENNY1">+<frxDBKez.' +
              '"MENNY2">+<frxDBKez."MENNY3">,DetailData1,1) - SUM(<frxDBEgyeb."' +
              'MENNYISEG">,DetailData2,1)]')
        end
        object Memo31: TfrxMemoView
          Left = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Z'#258#711'r'#258#322'k'#258#169'szlet az id'#313#8216'szak v'#258#169'g'#258#169'n:')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 128.504020000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 126.614316025000000000
          Top = 0.000000000000142109
          Width = 464.882067950000000000
          Height = 49.133890000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kimutat'#258#711's a [datumtol] '#226#8364#8220' [datumig] k'#258#182'z'#258#182'tti id'#313#8216'szak'
            'gy'#258#322'gyszer k'#258#169'szlet mozg'#258#711'sair'#258#322'l')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.252010000000410000
          Width = 680.315400000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          AutoWidth = True
          Memo.UTF8 = (
            '[SzuroFeltetelek]')
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 128.504020000001000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000290000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'G y '#258#322' g y s z e r')
        end
        object Memo13: TfrxMemoView
          Left = 306.141930000000000000
          Top = 90.708720000000400000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Bev'#258#169'telez'#258#169's d'#258#711'tuma')
        end
        object Memo14: TfrxMemoView
          Left = 408.189240000000000000
          Top = 90.708720000000400000
          Width = 83.149660000000000000
          Height = 34.015770000000000000
          Memo.UTF8 = (
            'Felhaszn'#258#711'l'#258#711's d'#258#711'tuma')
        end
        object Memo25: TfrxMemoView
          Left = 3.779530000000000000
          Top = 105.826840000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'K'#258#322'd')
        end
        object Memo26: TfrxMemoView
          Left = 79.370130000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Megnevez'#258#169's')
        end
        object Memo5: TfrxMemoView
          Left = 506.457020000000000000
          Top = 105.826840000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Mennyis'#258#169'g')
        end
        object Memo16: TfrxMemoView
          Left = 604.724800000000000000
          Top = 105.826840000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'ME')
        end
      end
      object DetailData2: TfrxDetailData
        Height = 22.677180000000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEgyeb
        DataSetName = 'frxDBEgyeb'
        RowCount = 0
        object Memo32: TfrxMemoView
          Left = 408.189240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATUM'
          DataSet = frxDBEgyeb
          DataSetName = 'frxDBEgyeb'
          Memo.UTF8 = (
            '[frxDBEgyeb."DATUM"]')
        end
        object Memo33: TfrxMemoView
          Left = 502.677490000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'MENNYISEG'
          DataSet = frxDBEgyeb
          DataSetName = 'frxDBEgyeb'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBEgyeb."MENNYISEG"]')
        end
        object Memo34: TfrxMemoView
          Left = 604.724800000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ME'
          DataSet = frxDBKeszlet
          DataSetName = 'frxDBKeszlet'
          Memo.UTF8 = (
            '[frxDBKeszlet."ME"]')
        end
        object Memo35: TfrxMemoView
          Left = 124.724490000000000000
          Top = -0.000000000000056843
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'MEGJEGYZES'
          DataSet = frxDBEgyeb
          DataSetName = 'frxDBEgyeb'
          Memo.UTF8 = (
            '[frxDBEgyeb."MEGJEGYZES"]')
        end
      end
    end
  end
  object sdsBetTip: TTalQuery
    Parameters = <>
    SQL.Strings = (
      'select  kk.KOD, '
      'kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD='#39'BET_TIP'#39
      '')
    Left = 304
    Top = 96
    object StringField33: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField34: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsBetTip: TDataSource
    DataSet = sdsBetTip
    Left = 360
    Top = 96
  end
  object sdsKez: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT KK.EGYEDEK_ID,'#13#10'KK.KEZ_DATUM,'#13#10'CASE WHEN KK.GYKLT1_ID = :' +
      'KLT_ID THEN KK.GYMENNY_1 ELSE 0 END AS MENNY1,'#13#10'CASE WHEN KK.GYK' +
      'LT2_ID = :KLT_ID THEN KK.GYMENNY_2 ELSE 0 END AS MENNY2,'#13#10'CASE W' +
      'HEN KK.GYKLT3_ID = :KLT_ID THEN KK.GYMENNY_3 ELSE 0 END AS MENNY' +
      '3,'#13#10'CASE WHEN KK.KEZ_DATUM < :DAT_TOL THEN 0 '#13#10'  WHEN KK.KEZ_DAT' +
      'UM BETWEEN :DAT_TOL AND :DAT_IG THEN 1'#13#10'  WHEN KK.KEZ_DATUM > :D' +
      'AT_IG THEN 2 END AS KELL'#13#10'FROM KEZELESEK KK'#13#10'WHERE'#13#10'(KK.KEZ_DATU' +
      'M <= :DAT_IG) AND'#13#10'(KK.GYKLT1_ID = :KLT_ID OR KK.GYKLT2_ID = :KL' +
      'T_ID OR KK.GYKLT3_ID = :KLT_ID)'
    DataSet.Parameters = <
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_TOL'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_TOL'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Provider.DataSet.CommandText = 
      'SELECT KK.EGYEDEK_ID,'#13#10'KK.KEZ_DATUM,'#13#10'CASE WHEN KK.GYKLT1_ID = :' +
      'KLT_ID THEN KK.GYMENNY_1 ELSE 0 END AS MENNY1,'#13#10'CASE WHEN KK.GYK' +
      'LT2_ID = :KLT_ID THEN KK.GYMENNY_2 ELSE 0 END AS MENNY2,'#13#10'CASE W' +
      'HEN KK.GYKLT3_ID = :KLT_ID THEN KK.GYMENNY_3 ELSE 0 END AS MENNY' +
      '3,'#13#10'CASE WHEN KK.KEZ_DATUM < :DAT_TOL THEN 0 '#13#10'  WHEN KK.KEZ_DAT' +
      'UM BETWEEN :DAT_TOL AND :DAT_IG THEN 1'#13#10'  WHEN KK.KEZ_DATUM > :D' +
      'AT_IG THEN 2 END AS KELL'#13#10'FROM KEZELESEK KK'#13#10'WHERE'#13#10'(KK.KEZ_DATU' +
      'M <= :DAT_IG) AND'#13#10'(KK.GYKLT1_ID = :KLT_ID OR KK.GYKLT2_ID = :KL' +
      'T_ID OR KK.GYKLT3_ID = :KLT_ID)'
    Provider.DataSet.Parameters = <
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_TOL'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_TOL'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DAT_IG'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'KLT_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 384
    Top = 150
    object sdsKezEGYEDEK_ID: TBCDField
      FieldName = 'EGYEDEK_ID'
      Precision = 15
      Size = 0
    end
    object sdsKezKEZ_DATUM: TDateTimeField
      FieldName = 'KEZ_DATUM'
    end
    object sdsKezMENNY1: TBCDField
      FieldName = 'MENNY1'
      ReadOnly = True
      Precision = 15
      Size = 2
    end
    object sdsKezMENNY2: TBCDField
      FieldName = 'MENNY2'
      ReadOnly = True
      Precision = 15
      Size = 2
    end
    object sdsKezMENNY3: TBCDField
      FieldName = 'MENNY3'
      ReadOnly = True
      Precision = 15
      Size = 2
    end
    object sdsKezKELL: TIntegerField
      FieldName = 'KELL'
      ReadOnly = True
    end
  end
  object dtsKez: TDataSource
    DataSet = sdsKez
    Left = 432
    Top = 152
  end
  object frxDBKez: TfrxDBDataset
    UserName = 'frxDBKez'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EGYEDEK_ID=EGYEDEK_ID'
      'KEZ_DATUM=KEZ_DATUM'
      'MENNY1=MENNY1'
      'MENNY2=MENNY2'
      'MENNY3=MENNY3'
      'KELL=KELL')
    DataSet = sdsKez
    Left = 480
    Top = 152
  end
  object sdsEgyeb: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT F.ID,'#13#10'F.DATUM,'#13#10'F.GYOGYSZERKLT_ID,'#13#10'F.MENNYISEG,'#13#10'F.MEGJ' +
      'EGYZES'#13#10'FROM GYFELH F'#13#10'WHERE'#13#10'(F.DATUM <= :DAT_IG) AND'#13#10'(F.GYOGY' +
      'SZERKLT_ID = :KLT_ID )'
    DataSet.Parameters = <
      item
        Name = 'DAT_IG'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'KLT_ID'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 15
        Size = 19
        Value = Null
      end>
    Provider.DataSet.CommandText = 
      'SELECT F.ID,'#13#10'F.DATUM,'#13#10'F.GYOGYSZERKLT_ID,'#13#10'F.MENNYISEG,'#13#10'F.MEGJ' +
      'EGYZES'#13#10'FROM GYFELH F'#13#10'WHERE'#13#10'(F.DATUM <= :DAT_IG) AND'#13#10'(F.GYOGY' +
      'SZERKLT_ID = :KLT_ID )'
    Provider.DataSet.Parameters = <
      item
        Name = 'DAT_IG'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'KLT_ID'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 15
        Size = 19
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 384
    Top = 206
    object sdsEgyebID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object sdsEgyebDATUM: TDateTimeField
      FieldName = 'DATUM'
    end
    object sdsEgyebGYOGYSZERKLT_ID: TBCDField
      FieldName = 'GYOGYSZERKLT_ID'
      Precision = 15
      Size = 0
    end
    object sdsEgyebMENNYISEG: TBCDField
      FieldName = 'MENNYISEG'
      Precision = 15
      Size = 2
    end
    object sdsEgyebMEGJEGYZES: TWideStringField
      FieldName = 'MEGJEGYZES'
      Size = 600
    end
  end
  object dtsEgyeb: TDataSource
    DataSet = sdsEgyeb
    Left = 432
    Top = 208
  end
  object frxDBEgyeb: TfrxDBDataset
    UserName = 'frxDBEgyeb'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DATUM=DATUM'
      'GYOGYSZERKLT_ID=GYOGYSZERKLT_ID'
      'MENNYISEG=MENNYISEG'
      'MEGJEGYZES=MEGJEGYZES')
    DataSet = sdsEgyeb
    Left = 488
    Top = 208
  end
end
