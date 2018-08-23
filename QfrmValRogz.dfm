inherited frmValRogz: TfrmValRogz
  Left = 322
  Top = 164
  Width = 783
  Height = 509
  Caption = 'V'#225'laszt'#225'si adatok r'#246'gz'#237't'#233'se'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 432
    Width = 767
    inherited btnTorol: TBitBtn
      Left = 529
      Visible = False
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 609
    end
    inherited btnCancel: TBitBtn
      Left = 689
    end
    inherited btnModosit: TBitBtn
      Left = 449
    end
    inherited btnUj: TBitBtn
      Left = 369
    end
    inherited btnNyomtat: TBitBtn
      OnClick = btnNyomtatClick
    end
  end
  inherited pnlMod: TTalPanel
    Left = 378
    Top = 38
    Width = 389
    Height = 394
    object TalLabel4: TTalLabel
      Left = 24
      Top = 178
      Width = 62
      Height = 13
      Caption = 'Sz'#252'let'#233'si id'#337':'
    end
    object TalLabel5: TTalLabel
      Left = 24
      Top = 203
      Width = 92
      Height = 13
      Caption = 'Sz'#252'let'#233'skori t'#246'meg:'
    end
    object TalLabel8: TTalLabel
      Left = 24
      Top = 228
      Width = 21
      Height = 13
      Caption = 'Ivar:'
    end
    object TalLabel10: TTalLabel
      Left = 24
      Top = 275
      Width = 90
      Height = 13
      Caption = 'V'#225'laszt'#225's ideje:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TalLabel1: TTalLabel
      Left = 24
      Top = 39
      Width = 90
      Height = 13
      Caption = 'Egyed azonos'#237't'#243'ja:'
    end
    object TalLabel17: TTalLabel
      Left = 24
      Top = 87
      Width = 41
      Height = 13
      Caption = 'F'#252'lsz'#225'm:'
    end
    object TalLabel3: TTalLabel
      Left = 24
      Top = 135
      Width = 23
      Height = 13
      Caption = 'N'#233'v:'
    end
    object TalLabel9: TTalLabel
      Left = 24
      Top = 111
      Width = 58
      Height = 13
      Caption = 'Teh'#233'nsz'#225'm:'
    end
    object TalLabel7: TTalLabel
      Left = 200
      Top = 203
      Width = 15
      Height = 13
      Caption = 'kg '
    end
    object TalLabel6: TTalLabel
      Left = 24
      Top = 299
      Width = 100
      Height = 13
      Caption = 'V'#225'laszt'#225'si t'#246'meg:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TalLabel2: TTalLabel
      Left = 24
      Top = 323
      Width = 90
      Height = 13
      Caption = 'Korrig'#225'lt t'#246'meg:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TalLabel11: TTalLabel
      Left = 200
      Top = 299
      Width = 15
      Height = 13
      Caption = 'kg '
    end
    object TalLabel12: TTalLabel
      Left = 200
      Top = 323
      Width = 15
      Height = 13
      Caption = 'kg '
    end
    object TalDBEdit2: TTalDBEdit
      Left = 145
      Top = 173
      Width = 64
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = ' '
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 1
      DataField = 'SZULDAT'
      DataSource = dtsKeres
    end
    object TalDBEdit5: TTalDBEdit
      Left = 145
      Top = 198
      Width = 48
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 2
      DataField = 'SZUL_SULY'
      DataSource = dtsKeres
    end
    object edtValDatum: TTalDBEdit
      Left = 145
      Top = 270
      Width = 88
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = 'edtV.  .  '
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      TabOrder = 7
      DataField = 'VALDAT'
      DataSource = dtsKeres
    end
    object edtAzonosito: TTalDBEdit
      Left = 145
      Top = 34
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtAzonosito'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edtAzonositoExit
      DataField = 'ENAR'
      DataSource = dtsKeres
    end
    object edtSpecAzon: TTalDBEdit
      Left = 145
      Top = 82
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtSpecAzon'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 3
      DataField = 'FULSZAM'
      DataSource = dtsKeres
    end
    object edtNev: TTalDBEdit
      Left = 145
      Top = 130
      Width = 185
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtNev'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 4
      DataField = 'NEV'
      DataSource = dtsKeres
    end
    object TalDBEdit4: TTalDBEdit
      Left = 145
      Top = 223
      Width = 185
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'TalDBEdit4'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 5
      DataField = 'IVAR'
      DataSource = dtsKeres
    end
    object TalDBEdit7: TTalDBEdit
      Left = 145
      Top = 106
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'TalDBEdit7'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 6
      DataField = 'TEHENSZAM'
      DataSource = dtsKeres
    end
    object edtValTom: TTalDBEdit
      Left = 145
      Top = 294
      Width = 48
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      Text = 'edtValTom'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 8
      OnExit = edtValTomExit
      DataField = 'VALTOM'
      DataSource = dtsKeres
    end
    object edtTom205: TTalDBEdit
      Left = 145
      Top = 318
      Width = 48
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      ValueMin = '0,00'
      Text = '0'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 9
      DataField = 'TOM205'
      DataSource = dtsKeres
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 38
    Width = 378
    Height = 394
    IniAttributes.SectionName = 'frmValRogz'
    DataSource = dtsKeres
  end
  object pnlKeres: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 767
    Height = 38
    Align = alTop
    TabOrder = 3
    object lblS2: TTalLabel
      Left = 404
      Top = 12
      Width = 137
      Height = 13
      Caption = 'Utols'#243' m'#243'dos'#237't'#225's d'#225'tuma >= '
    end
    object lblS1: TTalLabel
      Left = 267
      Top = 12
      Width = 122
      Height = 13
      Caption = 'Megjelen'#237'tett adatok:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TalLabel18: TTalLabel
      Left = 8
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object btnLeker: TBitBtn
      Left = 632
      Top = 5
      Width = 114
      Height = 27
      Hint = 'Adatlek'#233'r'#233's a sz'#369'r'#337'felt'#233'telek figyelembev'#233'tel'#233'vel'
      Caption = 'Adatlek'#233'r'#233's'
      TabOrder = 0
      OnClick = btnLekerClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
        77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
        07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object TalSearch1: TTalSearch
      Left = 58
      Top = 8
      Width = 153
      Height = 21
      DataSource = dtsKeres
      TabOrder = 1
    end
    object edtDatTol: TTalEdit
      Left = 544
      Top = 8
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
      TabOrder = 2
    end
  end
  inherited ActionList1: TActionList
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
  end
  object sdsKeres: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'  E.ID,'#13#10'  E.ENAR,'#13#10'  E.FULSZAM,'#13#10'  E.TEHENSZAM,'#13#10'  E.NE' +
      'V,'#13#10'  E.SZULDAT,'#13#10'  E.IVAR || '#39' - '#39' || IVAR.KOD_NEV AS IVAR,'#13#10'  ' +
      'E.SZUL_SULY,'#13#10'  E.VALDAT,'#13#10'  E.VALTOM,'#13#10'  E.TOM205,'#13#10'  E.MOD_DAT' +
      ','#13#10'  E.MOD_KOD,'#13#10'  E.TENYESZET'#13#10'FROM EGYEDEK E'#13#10'LEFT JOIN KODOK ' +
      'IVAR ON IVAR.KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39' AND IVAR.KOD = E.IVAR'#13 +
      #10'WHERE 1 = 1'#13#10
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  E.ID,'#13#10'  E.ENAR,'#13#10'  E.FULSZAM,'#13#10'  E.TEHENSZAM,'#13#10'  E.NE' +
      'V,'#13#10'  E.SZULDAT,'#13#10'  E.IVAR || '#39' - '#39' || IVAR.KOD_NEV AS IVAR,'#13#10'  ' +
      'E.SZUL_SULY,'#13#10'  E.VALDAT,'#13#10'  E.VALTOM,'#13#10'  E.TOM205,'#13#10'  E.MOD_DAT' +
      ','#13#10'  E.MOD_KOD,'#13#10'  E.TENYESZET'#13#10'FROM EGYEDEK E'#13#10'LEFT JOIN KODOK ' +
      'IVAR ON IVAR.KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39' AND IVAR.KOD = E.IVAR'#13 +
      #10'WHERE 1 = 1'#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 116
    Top = 136
    object sdsKeresID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInWhere]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsKeresENAR: TWideStringField
      DisplayLabel = 'EN'#193'R'
      FieldName = 'ENAR'
      ProviderFlags = []
      Size = 14
    end
    object sdsKeresVALDAT: TDateTimeField
      DisplayLabel = 'V'#225'l.d'#225'tum'
      DisplayWidth = 10
      FieldName = 'VALDAT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsKeresVALTOM: TSmallintField
      DisplayLabel = 'V'#225'l.t'#246'meg'
      FieldName = 'VALTOM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsKeresTOM205: TSmallintField
      DisplayLabel = 'Korr.t'#246'meg'
      FieldName = 'TOM205'
      ProviderFlags = [pfInUpdate]
    end
    object sdsKeresFULSZAM: TWideStringField
      DisplayLabel = 'F'#252'lsz'#225'm'
      FieldName = 'FULSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsKeresTEHENSZAM: TWideStringField
      DisplayLabel = 'Teh'#233'nsz'#225'm'
      FieldName = 'TEHENSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsKeresNEV: TWideStringField
      DisplayLabel = 'N'#233'v'
      FieldName = 'NEV'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object sdsKeresSZULDAT: TDateTimeField
      DisplayLabel = 'Sz'#252'l.d'#225'tum'
      DisplayWidth = 10
      FieldName = 'SZULDAT'
      ProviderFlags = []
    end
    object sdsKeresIVAR: TWideStringField
      DisplayLabel = 'Ivar'
      FieldName = 'IVAR'
      ProviderFlags = []
      Size = 34
    end
    object sdsKeresTENYESZET: TWideStringField
      DisplayLabel = 'Teny'#233'szet'
      FieldName = 'TENYESZET'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object sdsKeresMOD_DAT: TDateTimeField
      FieldName = 'MOD_DAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsKeresMOD_KOD: TWideStringField
      FieldName = 'MOD_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 3
    end
    object sdsKeresSZUL_SULY: TSmallintField
      FieldName = 'SZUL_SULY'
      ProviderFlags = []
      Visible = False
    end
  end
  object dtsKeres: TDataSource
    DataSet = sdsKeres
    Left = 188
    Top = 136
  end
  object frxDBDatasetV: TfrxDBDataset
    UserName = 'frxDBDatasetV'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ENAR=ENAR'
      'VALDAT=VALDAT'
      'VALTOM=VALTOM'
      'TOM205=TOM205'
      'FULSZAM=FULSZAM'
      'TEHENSZAM=TEHENSZAM'
      'NEV=NEV'
      'SZULDAT=SZULDAT'
      'IVAR=IVAR'
      'TENYESZET=TENYESZET'
      'MOD_DAT=MOD_DAT'
      'MOD_KOD=MOD_KOD'
      'SZUL_SULY=SZUL_SULY')
    DataSet = sdsKeres
    Left = 112
    Top = 240
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 40070.909916805560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo3OnAfterData(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      ''
      'begin'
      '  s:=<frxDBdtsTermekenyit."AZONOSITO">;'
      '  if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo3.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(s' +
        ',10,1)'
      '   Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '      memo3.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy(s' +
        ',10,1) ;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 240
    Datasets = <
      item
        DataSet = frmTomeg1.frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 204.094681020000000000
          Top = 49.133889999999990000
          Width = 309.921337950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kihajt'#258#711's - behajt'#258#711's')
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
        object Memo35: TfrxMemoView
          Left = 370.393940000000000000
          Top = 79.370130000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[SzuroFeltetelek]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 45.354311179999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo36: TfrxMemoView
          Left = 272.126160000000000000
          Top = 79.370130000000000000
          Width = 92.598432520000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'R'#258#182'gz'#258#173't'#258#169's d'#258#711'tuma:')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
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
        object Memo6: TfrxMemoView
          Left = 83.149660000000000000
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
        object Memo37: TfrxMemoView
          Left = 275.905690000000000000
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
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        DataSet = frmTomeg1.frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object SysMemo3: TfrxSysMemoView
          Left = 3.779527560000000000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'ENAR'
          DataSet = frmTomeg1.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."ENAR"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 143.622140000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'KI_DAT'
          DataSet = frmTomeg1.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."KI_DAT"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 234.330860000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'KI_TOM'
          DataSet = frmTomeg1.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."KI_TOM"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 355.275820000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'BE_DAT'
          DataSet = frmTomeg1.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."BE_DAT"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 434.645950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'BE_TOM'
          DataSet = frmTomeg1.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."BE_TOM"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        object Memo38: TfrxMemoView
          Left = 695.433520000000000000
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
        object Memo39: TfrxMemoView
          Left = 638.740570000000000000
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
        object Memo40: TfrxMemoView
          Left = 684.094930000000000000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
        object Memo9: TfrxMemoView
          Left = 668.976810000000000000
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
        object Memo2: TfrxMemoView
          Left = 11.338582680000000000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'List'#258#711'k - Kihajt'#258#711'sok behajt'#258#711'sok r'#258#182'gz'#258#173't'#258#169'se')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Width = 34.015748030000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'sorsz.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          Left = 47.244094488189000000
          Width = 52.913420000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '  Egyed'
            'azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 143.622140000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kihajt'#258#711's d'#258#711'tuma')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 234.330860000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kihajt'#258#711'skori t'#258#182'meg')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 359.055350000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Behajt'#258#711's d'#258#711'tuma')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 427.086890000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Behajt'#258#711'skori t'#258#182'meg')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 37.795300000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 30.236220470000000000
          Top = 18.897637799999980000
          Width = 56.692913390000000000
          Height = 12.094488188976400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T'#258#169'telsz'#258#711'm:')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 94.488250000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 7.559055119999982000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
