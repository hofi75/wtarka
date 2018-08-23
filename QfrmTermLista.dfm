inherited frmTermLista: TfrmTermLista
  Left = 541
  Top = 185
  Width = 698
  Height = 510
  Caption = 'frmTermLista'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 431
    Width = 682
    inherited BitBtn1: TTalBitBtn
      Left = 509
    end
    inherited BitBtn2: TTalBitBtn
      Left = 603
    end
  end
  inherited Panel2: TPanel
    Width = 682
    Height = 431
    object TalLabel1: TTalLabel
      Left = 30
      Top = 92
      Width = 111
      Height = 13
      Caption = 'Term'#233'keny'#237't'#233's d'#225'tuma:'
    end
    object lblVemh: TTalLabel
      Left = 30
      Top = 120
      Width = 81
      Height = 13
      Caption = 'Vemhess'#233'gi k'#243'd:'
    end
    object TalLabel5: TTalLabel
      Left = 30
      Top = 149
      Width = 91
      Height = 13
      Caption = 'Term'#233'keny'#237't'#337' bika:'
    end
    object TalLabel11: TTalLabel
      Left = 264
      Top = 92
      Width = 9
      Height = 13
      Caption = '---'
    end
    object TalLabel14: TTalLabel
      Left = 196
      Top = 121
      Width = 9
      Height = 13
      Caption = '---'
    end
    object TalLabel15: TTalLabel
      Left = 219
      Top = 149
      Width = 9
      Height = 13
      Caption = '---'
    end
    object TalLabel21: TTalLabel
      Left = 30
      Top = 66
      Width = 33
      Height = 13
      Caption = 'Egyed:'
    end
    object TalLabel24: TTalLabel
      Left = 289
      Top = 42
      Width = 18
      Height = 16
      Caption = '-t'#243'l'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel25: TTalLabel
      Left = 437
      Top = 41
      Width = 15
      Height = 16
      Caption = '-ig'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel26: TTalLabel
      Left = 30
      Top = 42
      Width = 82
      Height = 13
      Caption = 'Egyed azonos'#237't'#243':'
    end
    object TalLabel2: TTalLabel
      Left = 30
      Top = 16
      Width = 52
      Height = 13
      Caption = 'Teny'#233'szet:'
    end
    object rbTehen: TTalRadioButton
      Left = 166
      Top = 65
      Width = 46
      Height = 17
      Caption = 'teh'#233'n'
      Checked = True
      TabOrder = 3
      TabStop = True
    end
    object rbNovendek: TTalRadioButton
      Left = 238
      Top = 65
      Width = 66
      Height = 17
      Caption = 'n'#246'vend'#233'k'
      TabOrder = 4
    end
    object eTermDatTol: TTalEdit
      Left = 166
      Top = 88
      Width = 86
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
      TabOrder = 5
    end
    object eTermDatIg: TTalEdit
      Left = 286
      Top = 88
      Width = 88
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
      TabOrder = 6
    end
    object eVemhKodTol: TTalEdit
      Left = 166
      Top = 116
      Width = 21
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 7
    end
    object eVemhKodIg: TTalEdit
      Left = 214
      Top = 116
      Width = 21
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 8
    end
    object eTermBikaTol: TTalEdit
      Left = 166
      Top = 143
      Width = 45
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 9
    end
    object eTermBikaIg: TTalEdit
      Left = 236
      Top = 145
      Width = 45
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 10
    end
    object rbRendezettseg: TTalRadioGroup
      Left = 29
      Top = 345
      Width = 265
      Height = 65
      Caption = '  Lista rendezetts'#233'ge  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Egyed azonos'#237't'#243'ra n'#246'vekv'#337
        'Term'#233'keny'#237't'#233's d'#225'tum + egyed azonos'#237't'#243)
      ParentFont = False
      TabOrder = 14
    end
    object gbKimenet: TTalGroupBox
      Left = 310
      Top = 345
      Width = 241
      Height = 65
      Caption = 'Lista kimenete '
      TabOrder = 12
      object rbExcel: TRadioButton
        Left = 13
        Top = 40
        Width = 71
        Height = 17
        Caption = 'Excel f'#225'jl'
        TabOrder = 0
      end
      object rbLista: TRadioButton
        Left = 13
        Top = 19
        Width = 71
        Height = 17
        Caption = 'Lista'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object gbElo: TTalGroupBox
      Left = 29
      Top = 257
      Width = 265
      Height = 81
      Caption = ' List'#225'zand'#243' egyedek '
      TabOrder = 13
      object rbCsakElo: TTalRadioButton
        Left = 11
        Top = 17
        Width = 150
        Height = 17
        Caption = 'csak '#233'l'#337' egyedek'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbMind: TTalRadioButton
        Left = 11
        Top = 59
        Width = 150
        Height = 17
        Caption = 'Minden egyed'
        TabOrder = 2
      end
      object rbCsakKiesett: TTalRadioButton
        Left = 11
        Top = 38
        Width = 150
        Height = 17
        Caption = 'csak kiesett egyedek'
        TabOrder = 1
      end
    end
    object edtEgyedTol: TTalEdit
      Left = 166
      Top = 37
      Width = 120
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
    object edtEgyedIg: TTalEdit
      Left = 311
      Top = 37
      Width = 120
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 2
    end
    object edtTenyeszet: TTalEdit
      Left = 166
      Top = 11
      Width = 73
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 0
    end
    object pnlSperma: TTalPanel
      Left = 22
      Top = 168
      Width = 475
      Height = 88
      BevelOuter = bvNone
      TabOrder = 11
      object TalLabel6: TTalLabel
        Left = 7
        Top = 9
        Width = 104
        Height = 13
        Caption = 'Term'#233'keny'#237't'#233's m'#243'dja:'
      end
      object TalLabel7: TTalLabel
        Left = 7
        Top = 37
        Width = 91
        Height = 13
        Caption = 'Inszemin'#225'tor k'#243'dja:'
      end
      object TalLabel8: TTalLabel
        Left = 7
        Top = 65
        Width = 107
        Height = 13
        Caption = 'Sperma el'#337#225'll'#237't'#243' k'#243'dja:'
      end
      object TalLabel16: TTalLabel
        Left = 174
        Top = 9
        Width = 9
        Height = 13
        Caption = '---'
      end
      object TalLabel17: TTalLabel
        Left = 197
        Top = 65
        Width = 9
        Height = 13
        Caption = '---'
      end
      object TalLabel18: TTalLabel
        Left = 197
        Top = 37
        Width = 9
        Height = 13
        Caption = '---'
      end
      object TalLabel9: TTalLabel
        Left = 288
        Top = 37
        Width = 78
        Height = 13
        Caption = 'Sperma eredete:'
      end
      object TalLabel19: TTalLabel
        Left = 406
        Top = 37
        Width = 9
        Height = 13
        Caption = '---'
      end
      object TalLabel10: TTalLabel
        Left = 288
        Top = 65
        Width = 71
        Height = 13
        Caption = 'Sperma t'#237'pusa:'
      end
      object TalLabel20: TTalLabel
        Left = 406
        Top = 65
        Width = 9
        Height = 13
        Caption = '---'
      end
      object eTermModIg: TTalEdit
        Left = 192
        Top = 4
        Width = 21
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
      object eTermModTol: TTalEdit
        Left = 144
        Top = 4
        Width = 21
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 0
      end
      object eInszemKodTol: TTalEdit
        Left = 144
        Top = 32
        Width = 45
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 2
      end
      object eInszemKodIg: TTalEdit
        Left = 222
        Top = 32
        Width = 45
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 3
      end
      object eSpermKodTol: TTalEdit
        Left = 144
        Top = 60
        Width = 45
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 4
      end
      object eSpermKodIg: TTalEdit
        Left = 222
        Top = 60
        Width = 45
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 5
      end
      object eSpermEredTol: TTalEdit
        Left = 376
        Top = 32
        Width = 21
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 6
      end
      object eSpermEredIg: TTalEdit
        Left = 424
        Top = 32
        Width = 21
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 7
      end
      object eSpermTipTol: TTalEdit
        Left = 376
        Top = 60
        Width = 21
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 8
      end
      object eSpermTipIg: TTalEdit
        Left = 424
        Top = 60
        Width = 21
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        ReadOnly = False
        TabOrder = 9
      end
    end
    object rbMindenki: TTalRadioButton
      Left = 318
      Top = 65
      Width = 66
      Height = 17
      Caption = 'mind'
      TabOrder = 15
    end
  end
  inherited ActionList1: TActionList
    Left = 548
  end
  object qrySeged: TTalQuery
    Connection = dtmTarka.cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT EGYEDEK.AZONOSITO, EGYEDEK.PSION_AZONOSITO,'
      'TERMEKENYITESEK.TERM_DATUM, '
      'TERMEKENYITESEK.ELLES_SSZ, TERMEKENYITESEK.TERM_SSZ, '
      'TERMEKENYITESEK.VEMH_KOD, TERMEKENYITESEK.BIKA_ID, '
      'TERMEKENYITESEK.TERM_MOD, TERMEKENYITESEK.INSZEMINATOROK_KOD, '
      'SPERMAKLT.SPERMA_ELOALL, SPERMAKLT.SPERMA_EREDET, '
      'SPERMAKLT.SPERMA_TIPUS, BIKA.KLSZ AS BIKA_KLSZ, '
      'SPERMAKLT.SPERMA_AZONOSITO , tcs.kod, tcs.nev '
      'FROM TERMEKENYITESEK '
      'JOIN SPERMAKLT ON SPERMAKLT.ID=TERMEKENYITESEK.SPERMAKLT_ID '
      'LEFT JOIN EGYEDEK ON EGYEDEK.ID=TERMEKENYITESEK.EGYEDEK_ID '
      
        'left join termelesi_csoport tcs on tcs.kod=Egyedek.termelesi_cso' +
        'port_kod '
      'LEFT JOIN BIKA ON BIKA.ID=TERMEKENYITESEK.BIKA_ID '
      'WHERE TERMEKENYITESEK.ELLES_SSZ > 1  '
      'And  TERMEKENYITESEK.TERM_DATUM  BETWEEN '#39'2005.11.08'#39' '
      'AND '#39'2006.11.08'#39' ORDER BY EGYEDEK.AZONOSITO')
    Left = 464
    Top = 64
  end
  object sdsTermekenyitesek: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT EGYEDEK.ENAR,EGYEDEK.FULSZAM, EGYEDEK.TEHENSZAM,'#13#10'TERMEKE' +
      'NYITESEK.DATUM, '#13#10'COALESCE(TERMEKENYITESEK.ALLAPOT,'#39#39') AS ALLAPO' +
      'T, '#13#10'TERMEKENYITESEK.KPLSZ, '#13#10'TERMEKENYITESEK.MOD, '#13#10'TERMEKENYIT' +
      'ESEK.INSZ, '#13#10'TERMEKENYITESEK.ALLOMAS, '#13#10'TERMEKENYITESEK.EREDET, ' +
      #13#10'TERMEKENYITESEK.TIP, '#13#10'TERMEKENYITESEK.ISMBIK,'#13#10'TERMEKENYITESE' +
      'K.TSZAM,'#13#10'TERMEKENYITESEK.SZUPOV,'#13#10'TERMEKENYITESEK.VEMH_DATUM,'#13#10 +
      'BIKA.KPLSZ ,'#13#10'BIKA.NEV'#13#10'FROM TERMEKENYITESEK  '#13#10'LEFT JOIN EGYEDE' +
      'K ON EGYEDEK.ID = TERMEKENYITESEK.EGYED_ID  '#13#10'LEFT JOIN APA BIKA' +
      ' ON BIKA.KPLSZ = TERMEKENYITESEK.KPLSZ  '#13#10'WHERE 1 = 1 '#13#10'  '
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT EGYEDEK.ENAR,EGYEDEK.FULSZAM, EGYEDEK.TEHENSZAM,'#13#10'TERMEKE' +
      'NYITESEK.DATUM, '#13#10'COALESCE(TERMEKENYITESEK.ALLAPOT,'#39#39') AS ALLAPO' +
      'T, '#13#10'TERMEKENYITESEK.KPLSZ, '#13#10'TERMEKENYITESEK.MOD, '#13#10'TERMEKENYIT' +
      'ESEK.INSZ, '#13#10'TERMEKENYITESEK.ALLOMAS, '#13#10'TERMEKENYITESEK.EREDET, ' +
      #13#10'TERMEKENYITESEK.TIP, '#13#10'TERMEKENYITESEK.ISMBIK,'#13#10'TERMEKENYITESE' +
      'K.TSZAM,'#13#10'TERMEKENYITESEK.SZUPOV,'#13#10'TERMEKENYITESEK.VEMH_DATUM,'#13#10 +
      'BIKA.KPLSZ ,'#13#10'BIKA.NEV'#13#10'FROM TERMEKENYITESEK  '#13#10'LEFT JOIN EGYEDE' +
      'K ON EGYEDEK.ID = TERMEKENYITESEK.EGYED_ID  '#13#10'LEFT JOIN APA BIKA' +
      ' ON BIKA.KPLSZ = TERMEKENYITESEK.KPLSZ  '#13#10'WHERE 1 = 1 '#13#10'  '
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 547
    Top = 64
    object sdsTermekenyitesekENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsTermekenyitesekFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      FixedChar = True
      Size = 15
    end
    object sdsTermekenyitesekDATUM: TDateTimeField
      FieldName = 'DATUM'
    end
    object sdsTermekenyitesekALLAPOT: TWideStringField
      FieldName = 'ALLAPOT'
      ReadOnly = True
      Size = 1
    end
    object sdsTermekenyitesekMOD: TWideStringField
      FieldName = 'MOD'
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekINSZ: TWideStringField
      FieldName = 'INSZ'
      FixedChar = True
      Size = 5
    end
    object sdsTermekenyitesekALLOMAS: TWideStringField
      FieldName = 'ALLOMAS'
      FixedChar = True
      Size = 3
    end
    object sdsTermekenyitesekEREDET: TWideStringField
      FieldName = 'EREDET'
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekTIP: TWideStringField
      FieldName = 'TIP'
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekISMBIK: TWideStringField
      FieldName = 'ISMBIK'
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekTSZAM: TWideStringField
      FieldName = 'TSZAM'
      FixedChar = True
      Size = 15
    end
    object sdsTermekenyitesekSZUPOV: TWideStringField
      FieldName = 'SZUPOV'
      FixedChar = True
      Size = 1
    end
    object sdsTermekenyitesekVEMH_DATUM: TDateTimeField
      FieldName = 'VEMH_DATUM'
    end
    object sdsTermekenyitesekKPLSZ: TWideStringField
      FieldName = 'KPLSZ'
      Size = 5
    end
    object sdsTermekenyitesekKPLSZ_1: TWideStringField
      FieldName = 'KPLSZ_1'
      Size = 5
    end
    object sdsTermekenyitesekNEV: TWideStringField
      FieldName = 'NEV'
      Size = 40
    end
    object sdsTermekenyitesekTEHENSZAM: TWideStringField
      FieldName = 'TEHENSZAM'
      Size = 15
    end
  end
  object frxDBdtsTermekenyit: TfrxDBDataset
    UserName = 'frxDBdtsTermekenyit'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'DATUM=DATUM'
      'ALLAPOT=ALLAPOT'
      'MOD=MOD'
      'INSZ=INSZ'
      'ALLOMAS=ALLOMAS'
      'EREDET=EREDET'
      'TIP=TIP'
      'ISMBIK=ISMBIK'
      'TSZAM=TSZAM'
      'SZUPOV=SZUPOV'
      'VEMH_DATUM=VEMH_DATUM'
      'KPLSZ=KPLSZ'
      'KPLSZ_1=KPLSZ_1'
      'NEV=NEV'
      'TEHENSZAM=TEHENSZAM')
    DataSet = sdsTermekenyitesek
    Left = 544
    Top = 120
  end
  object frxRepTermekenyitesek: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 40261.918925752300000000
    ReportOptions.LastChange = 40944.663428402780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure Memo28OnAfterData(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      'begin'
      '    s := <frxDBdtsTermekenyit."ENAR">;'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10) )  Then'
      
        '      memo28.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Cop' +
        'y(s,10,1)'
      '     Else'
      '      memo28.text := Copy(s,1,14);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 536
    Top = 176
    Datasets = <
      item
        DataSet = frxDBdtsTermekenyit
        DataSetName = 'frxDBdtsTermekenyit'
      end
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
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
        Name = 'Cim'
        Value = ''
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
        Height = 96.370120240000040000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 58.582776020000000000
          Top = 47.236240000000010000
          Width = 600.945147950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Cim]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 542.913412680000000000
          Top = 20.779527560000000000
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
          Left = 592.047620000000000000
          Top = 20.779530000000000000
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
          Left = 660.078764570000000000
          Top = 20.779530000000000000
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
        object Memo4: TfrxMemoView
          Left = 2.440940000000034000
          Top = 77.472480000000040000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SzuroFeltetelek]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 43.456661180000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 9.999999999999990000
          Top = 20.779530000000000000
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
          Left = 70.472480000000000000
          Top = 20.779530000000000000
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
          Left = 263.228510000000000000
          Top = 20.779530000000000000
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
        object Memo23: TfrxMemoView
          Align = baCenter
          Left = 185.197011495000000000
          Top = 4.102350000000001000
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
      end
      object MasterData1: TfrxMasterData
        Height = 20.889610000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBdtsTermekenyit
        DataSetName = 'frxDBdtsTermekenyit'
        RowCount = 0
        object Memo24: TfrxMemoView
          Left = 165.401672440000000000
          Top = 1.991960000000006000
          Width = 75.590553620000000000
          Height = 18.897650000000000000
          DataField = 'DATUM'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."DATUM"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 278.787572440000000000
          Top = 1.991960000000006000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'KPLSZ'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."KPLSZ"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 456.425482440000000000
          Top = 1.991960000000006000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          DataField = 'MOD'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."MOD"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 6.220438270000000000
          Top = 1.991960000000006000
          Width = 109.606323620000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo28OnAfterData'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."ENAR"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 543.354672439999900000
          Top = 1.991960000000006000
          Width = 34.015769999999990000
          Height = 18.897650000000000000
          DataField = 'ALLOMAS'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."ALLOMAS"]')
        end
        object Memo30: TfrxMemoView
          Left = 584.929502440000000000
          Top = 1.991960000000006000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'TSZAM'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."TSZAM"]')
        end
        object Memo31: TfrxMemoView
          Left = 660.520102440000000000
          Top = 1.991960000000006000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DataField = 'TIP'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."TIP"]')
        end
        object Memo32: TfrxMemoView
          Left = 694.535872440000300000
          Top = 1.991960000000006000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'EREDET'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."EREDET"]')
        end
        object Memo33: TfrxMemoView
          Left = 496.110547440000000000
          Top = 1.991960000000006000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'INSZ'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."INSZ"]')
        end
        object Memo34: TfrxMemoView
          Left = 133.275667440000000000
          Top = 1.991960000000006000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DataField = 'SZUPOV'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."SZUPOV"]')
        end
        object Memo5: TfrxMemoView
          Left = 336.378170000000000000
          Top = 1.991960000000006000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'NEV'
          DataSet = frxDBdtsTermekenyit
          DataSetName = 'frxDBdtsTermekenyit'
          Memo.UTF8 = (
            '[frxDBdtsTermekenyit."NEV"]')
          WordBreak = True
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 23.118120000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object Memo35: TfrxMemoView
          Top = 1.928879999999992000
          Width = 249.448980000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bejelentett term'#258#169'keny'#258#173't'#258#169'sek')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 702.094937320000000000
          Top = 2.928879999999992000
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
        object Memo37: TfrxMemoView
          Left = 645.401987320000000000
          Top = 2.928879999999992000
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
        object Memo38: TfrxMemoView
          Left = 690.756347320000000000
          Top = 2.928879999999992000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 26.897650000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.559040470000000000
          Top = 4.180882680000025000
          Width = 75.590563390000000000
          Height = 15.874018190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T'#258#169'telsz'#258#711'm:')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 94.267780000000000000
          Top = 4.180894879999983000
          Width = 120.944960000000000000
          Height = 15.874018190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 0.621829999999988600
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        Height = 41.574830000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baWidth
          Top = 39.677179999999990000
          Width = 718.110700000000000000
          StretchMode = smActualHeight
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 6.220438270000000000
          Top = 5.661409999999989000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'A term'#258#169'keny'#258#173'tett egyed'
            'ENAR sz'#258#711'ma')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 164.960732440000000000
          Top = 5.661409999999989000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Term'#258#169'keny'#258#173't'#258#169's'
            'd'#258#711'tuma')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 248.110392440000000000
          Top = 5.661409999999989000
          Width = 26.456709999999990000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ism.'
            'bika')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 280.236395000000000000
          Top = 5.661409999999989000
          Width = 166.299320000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'A term'#258#169'keny'#258#173't'#313#8216' bika'
            'sz'#258#711'ma,      neve')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 454.094775000000000000
          Top = 5.661409999999989000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Term.'
            'm'#258#322'dja')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 542.913730000000000000
          Top = 5.661409999999989000
          Width = 37.795300000000010000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Mest'
            #258#711'll.k'#258#322'd')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 584.488560000000000000
          Top = 5.661409999999989000
          Width = 136.063080000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '                Sperma'
            'term.sz'#258#711'ma, t'#258#173'pusa, eredete')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 496.110547440000000000
          Top = 5.661409999999989000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Insz.'
            'k'#258#322'dja')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 123.385900000000000000
          Top = 5.661409999999989000
          Width = 37.795300000000010000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Szuper'
            'ovul'#258#711'lt')
          ParentFont = False
        end
      end
    end
  end
  object sdsHterm: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'  TERMEKENYITESEK.ID,'#13#10'  EGYEDEK.ENAR,'#13#10'  EGYEDEK.FULSZA' +
      'M,'#13#10'  EGYEDEK.TENYESZET,'#13#10'  TERMEKENYITESEK.EGYED_ID,'#13#10'  TERMEKE' +
      'NYITESEK.BIKA_KLSZ,'#13#10'  TERMEKENYITESEK.DATUM_TOL,'#13#10'  TERMEKENYIT' +
      'ESEK.DATUM_IG,'#13#10'  TERMEKENYITESEK.UTMOD_DAT,'#13#10'  TERMEKENYITESEK.' +
      'UTMOD_KOD,'#13#10'  APA.NEV,'#13#10'  SUBSTR(EGYEDEK.ENAR,6,4) AS HASZN_SZAM' +
      #13#10'FROM TERMH TERMEKENYITESEK'#13#10'JOIN EGYEDEK  ON EGYEDEK.ID = TERM' +
      'EKENYITESEK.EGYED_ID'#13#10'JOIN APA ON APA.KPLSZ = TERMEKENYITESEK.BI' +
      'KA_KLSZ'#13#10' WHERE  1=1'#13#10' '
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  TERMEKENYITESEK.ID,'#13#10'  EGYEDEK.ENAR,'#13#10'  EGYEDEK.FULSZA' +
      'M,'#13#10'  EGYEDEK.TENYESZET,'#13#10'  TERMEKENYITESEK.EGYED_ID,'#13#10'  TERMEKE' +
      'NYITESEK.BIKA_KLSZ,'#13#10'  TERMEKENYITESEK.DATUM_TOL,'#13#10'  TERMEKENYIT' +
      'ESEK.DATUM_IG,'#13#10'  TERMEKENYITESEK.UTMOD_DAT,'#13#10'  TERMEKENYITESEK.' +
      'UTMOD_KOD,'#13#10'  APA.NEV,'#13#10'  SUBSTR(EGYEDEK.ENAR,6,4) AS HASZN_SZAM' +
      #13#10'FROM TERMH TERMEKENYITESEK'#13#10'JOIN EGYEDEK  ON EGYEDEK.ID = TERM' +
      'EKENYITESEK.EGYED_ID'#13#10'JOIN APA ON APA.KPLSZ = TERMEKENYITESEK.BI' +
      'KA_KLSZ'#13#10' WHERE  1=1'#13#10' '
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 531
    Top = 240
    object sdsHtermID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object sdsHtermENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsHtermFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      FixedChar = True
      Size = 15
    end
    object sdsHtermTENYESZET: TWideStringField
      FieldName = 'TENYESZET'
      FixedChar = True
      Size = 7
    end
    object sdsHtermEGYED_ID: TBCDField
      FieldName = 'EGYED_ID'
      Precision = 15
      Size = 0
    end
    object sdsHtermBIKA_KLSZ: TBCDField
      FieldName = 'BIKA_KLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHtermDATUM_TOL: TDateTimeField
      FieldName = 'DATUM_TOL'
    end
    object sdsHtermDATUM_IG: TDateTimeField
      FieldName = 'DATUM_IG'
    end
    object sdsHtermUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
    end
    object sdsHtermUTMOD_KOD: TWideStringField
      FieldName = 'UTMOD_KOD'
      Size = 3
    end
    object sdsHtermNEV: TWideStringField
      FieldName = 'NEV'
      FixedChar = True
      Size = 40
    end
    object sdsHtermHASZN_SZAM: TWideStringField
      FieldName = 'HASZN_SZAM'
      ReadOnly = True
      Size = 4
    end
  end
  object frxDBHterm: TfrxDBDataset
    UserName = 'frxDBdtsHtermL'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'TENYESZET=TENYESZET'
      'EGYED_ID=EGYED_ID'
      'BIKA_KLSZ=BIKA_KLSZ'
      'DATUM_TOL=DATUM_TOL'
      'DATUM_IG=DATUM_IG'
      'UTMOD_DAT=UTMOD_DAT'
      'UTMOD_KOD=UTMOD_KOD'
      'NEV=NEV'
      'HASZN_SZAM=HASZN_SZAM')
    DataSet = sdsHterm
    Left = 592
    Top = 240
  end
end
