inherited frmEllesLista: TfrmEllesLista
  Width = 616
  Height = 446
  Caption = 'Ell'#233'sek list'#225'z'#225'sa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 367
    Width = 600
    inherited BitBtn1: TTalBitBtn
      Left = 427
    end
    inherited BitBtn2: TTalBitBtn
      Left = 521
    end
  end
  inherited Panel2: TPanel
    Width = 600
    Height = 367
    object Label3: TLabel
      Left = 49
      Top = 149
      Width = 76
      Height = 16
      Caption = 'Ell'#233's d'#225'tuma'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel4: TTalLabel
      Left = 238
      Top = 149
      Width = 18
      Height = 16
      Caption = '-t'#243'l'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel5: TTalLabel
      Left = 356
      Top = 149
      Width = 14
      Height = 16
      Caption = '-ig'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 49
      Top = 174
      Width = 84
      Height = 16
      Caption = 'Ell'#233's lefoly'#225'sa'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel8: TTalLabel
      Left = 212
      Top = 176
      Width = 9
      Height = 13
      Caption = '---'
    end
    object Label4: TLabel
      Left = 49
      Top = 200
      Width = 97
      Height = 16
      Caption = 'Borj'#250' kies'#233's k'#243'd'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 49
      Top = 225
      Width = 90
      Height = 16
      Caption = 'Borj'#250' kies'#233's ok'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 49
      Top = 251
      Width = 53
      Height = 16
      Caption = 'Borj'#250' ivar'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel24: TTalLabel
      Left = 278
      Top = 42
      Width = 18
      Height = 16
      Caption = '-t'#243'l'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel25: TTalLabel
      Left = 426
      Top = 41
      Width = 14
      Height = 16
      Caption = '-ig'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel26: TTalLabel
      Left = 49
      Top = 42
      Width = 101
      Height = 16
      Caption = 'Egyed azonos'#237't'#243':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel2: TTalLabel
      Left = 49
      Top = 16
      Width = 63
      Height = 16
      Caption = 'Teny'#233'szet:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RadioGroup1: TRadioGroup
      Left = 49
      Top = 69
      Width = 288
      Height = 49
      Caption = 'List'#225'n szerepl'#337' egyedek '
      TabOrder = 3
    end
    object rbOsszes: TRadioButton
      Left = 57
      Top = 88
      Width = 112
      Height = 17
      Caption = #214'sszes teh'#233'n'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = True
    end
    object rbElo: TRadioButton
      Left = 193
      Top = 88
      Width = 80
      Height = 17
      Caption = #201'l'#337' teh'#233'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edtEllDatTol: TTalEdit
      Left = 153
      Top = 146
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
      TabOrder = 7
    end
    object edtEllDatIg: TTalEdit
      Left = 272
      Top = 146
      Width = 82
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
      TabOrder = 8
    end
    object cbEllesLefTol: TTalComboBox
      Left = 153
      Top = 172
      Width = 49
      Height = 21
      ItemHeight = 13
      TabOrder = 10
    end
    object cbEllesLefIg: TTalComboBox
      Left = 233
      Top = 172
      Width = 49
      Height = 21
      ItemHeight = 13
      TabOrder = 6
    end
    object cbKiKod: TTalComboBox
      Left = 153
      Top = 198
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 11
    end
    object cbKiOk: TTalComboBox
      Left = 153
      Top = 223
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 12
    end
    object cbBorjuIvar: TTalComboBox
      Left = 153
      Top = 249
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 13
    end
    object rbRendezettseg: TTalRadioGroup
      Left = 48
      Top = 284
      Width = 241
      Height = 67
      Caption = '  Lista rendezetts'#233'ge  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Egyed azonos'#237't'#243'ra n'#246'vekv'#337
        'Ell'#233's d'#225'tum + egyed azonos'#237't'#243)
      ParentFont = False
      TabOrder = 14
    end
    object gbKimenet: TTalGroupBox
      Left = 320
      Top = 284
      Width = 209
      Height = 67
      Caption = 'Lista kimenete '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
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
    object cbElso: TTalCheckBox
      Left = 46
      Top = 124
      Width = 200
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Csak az els'#337'borjas tehenek'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object edtEgyedTol: TTalEdit
      Left = 153
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
      Left = 300
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
      Left = 153
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
  end
  inherited ActionList1: TActionList
    Left = 524
    Top = 28
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
    Left = 432
    Top = 72
  end
  object sdsLista: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT   case '#13#10'    when LENGTH(TRIM(EGYEDEK.enar)) is not null ' +
      'then EGYEDEK.enar'#13#10'    WHEN length(COALESCE(EGYEDEK.TEHENSZAM,'#39#39 +
      ')) is not null THEN EGYEDEK.TEHENSZAM'#13#10'    WHEN length(COALESCE(' +
      'EGYEDEK.FULSZAM,'#39#39')) is not null THEN EGYEDEK.FULSZAM'#13#10'    ELSE ' +
      'COALESCE(EGYEDEK.ID_ENAR,'#39' '#39') END AS ENAR,  ELLESEK.E_TERM_DAT, ' +
      'ELLESEK.E_TERM_ID , '#13#10'ELLESEK.ELLES_DATUM, ELLESEK.ELLES_LEF,'#13#10'c' +
      'ast(coalesce(BORJAK.BORJU_SSZ,0) as integer) as BORJU_SSZ, '#13#10'coa' +
      'lesce(BORJAK.BORJU_IVAR,'#39#39') as BORJU_IVAR, '#13#10'COALESCE(BORJAK.BOR' +
      'JU_SZIN,'#39#39') AS BORJU_SZIN , '#13#10'cast(COALESCE(BORJAK.BORJU_SULY, 0' +
      ') as integer) AS BORJU_SULY , '#13#10'COALESCE(BORJAK.BORJU_KIESES_KOD' +
      ','#39#39') AS BORJU_KIESES_KOD, '#13#10'COALESCE(BORJAK.BORJU_KIESES_OK , '#39#39 +
      #39#39') AS BORJU_KIESES_OK, '#13#10'COALESCE(BORJAK.BORJU_ENAR,'#39#39') AS BORJ' +
      'U_ENAR,'#13#10'coalesce(tt.kplsz,'#39#39') as kplsz'#13#10'FROM ELLESEK '#13#10'LEFT JOI' +
      'N BORJAK ON BORJAK.ELLESEK_ID=ELLESEK.ID '#13#10'JOIN EGYEDEK ON EGYED' +
      'EK.ID=ELLESEK.EGYED_ID'#13#10'left join termekenyitesek tt on tt.egyed' +
      '_id = ellesek.egyed_id and tt.datum = ellesek.e_term_dat'#13#10'where ' +
      '1=1'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT   case '#13#10'    when LENGTH(TRIM(EGYEDEK.enar)) is not null ' +
      'then EGYEDEK.enar'#13#10'    WHEN length(COALESCE(EGYEDEK.TEHENSZAM,'#39#39 +
      ')) is not null THEN EGYEDEK.TEHENSZAM'#13#10'    WHEN length(COALESCE(' +
      'EGYEDEK.FULSZAM,'#39#39')) is not null THEN EGYEDEK.FULSZAM'#13#10'    ELSE ' +
      'COALESCE(EGYEDEK.ID_ENAR,'#39' '#39') END AS ENAR,  ELLESEK.E_TERM_DAT, ' +
      'ELLESEK.E_TERM_ID , '#13#10'ELLESEK.ELLES_DATUM, ELLESEK.ELLES_LEF,'#13#10'c' +
      'ast(coalesce(BORJAK.BORJU_SSZ,0) as integer) as BORJU_SSZ, '#13#10'coa' +
      'lesce(BORJAK.BORJU_IVAR,'#39#39') as BORJU_IVAR, '#13#10'COALESCE(BORJAK.BOR' +
      'JU_SZIN,'#39#39') AS BORJU_SZIN , '#13#10'cast(COALESCE(BORJAK.BORJU_SULY, 0' +
      ') as integer) AS BORJU_SULY , '#13#10'COALESCE(BORJAK.BORJU_KIESES_KOD' +
      ','#39#39') AS BORJU_KIESES_KOD, '#13#10'COALESCE(BORJAK.BORJU_KIESES_OK , '#39#39 +
      #39#39') AS BORJU_KIESES_OK, '#13#10'COALESCE(BORJAK.BORJU_ENAR,'#39#39') AS BORJ' +
      'U_ENAR,'#13#10'coalesce(tt.kplsz,'#39#39') as kplsz'#13#10'FROM ELLESEK '#13#10'LEFT JOI' +
      'N BORJAK ON BORJAK.ELLESEK_ID=ELLESEK.ID '#13#10'JOIN EGYEDEK ON EGYED' +
      'EK.ID=ELLESEK.EGYED_ID'#13#10'left join termekenyitesek tt on tt.egyed' +
      '_id = ellesek.egyed_id and tt.datum = ellesek.e_term_dat'#13#10'where ' +
      '1=1'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 515
    Top = 72
    object sdsListaENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsListaE_TERM_DAT: TDateTimeField
      FieldName = 'E_TERM_DAT'
    end
    object sdsListaE_TERM_ID: TBCDField
      FieldName = 'E_TERM_ID'
      Precision = 15
      Size = 0
    end
    object sdsListaELLES_DATUM: TDateTimeField
      FieldName = 'ELLES_DATUM'
    end
    object sdsListaELLES_LEF: TWideStringField
      FieldName = 'ELLES_LEF'
      Size = 10
    end
    object sdsListaBORJU_SSZ: TBCDField
      DisplayWidth = 3
      FieldName = 'BORJU_SSZ'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsListaBORJU_IVAR: TWideStringField
      FieldName = 'BORJU_IVAR'
      ReadOnly = True
      Size = 10
    end
    object sdsListaBORJU_SZIN: TWideStringField
      FieldName = 'BORJU_SZIN'
      ReadOnly = True
      Size = 10
    end
    object sdsListaBORJU_ENAR: TWideStringField
      FieldName = 'BORJU_ENAR'
      ReadOnly = True
      Size = 14
    end
    object sdsListaBORJU_SULY: TBCDField
      FieldName = 'BORJU_SULY'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsListaBORJU_KIESES_KOD: TWideStringField
      FieldName = 'BORJU_KIESES_KOD'
      ReadOnly = True
      Size = 10
    end
    object sdsListaBORJU_KIESES_OK: TWideStringField
      FieldName = 'BORJU_KIESES_OK'
      ReadOnly = True
      Size = 10
    end
    object sdsListaKPLSZ: TWideStringField
      FieldName = 'KPLSZ'
      ReadOnly = True
      Size = 5
    end
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'E_TERM_DAT=E_TERM_DAT'
      'E_TERM_ID=E_TERM_ID'
      'ELLES_DATUM=ELLES_DATUM'
      'ELLES_LEF=ELLES_LEF'
      'BORJU_SSZ=BORJU_SSZ'
      'BORJU_IVAR=BORJU_IVAR'
      'BORJU_SZIN=BORJU_SZIN'
      'BORJU_ENAR=BORJU_ENAR'
      'BORJU_SULY=BORJU_SULY'
      'BORJU_KIESES_KOD=BORJU_KIESES_KOD'
      'BORJU_KIESES_OK=BORJU_KIESES_OK'
      'KPLSZ=KPLSZ')
    DataSet = sdsLista
    Left = 512
    Top = 128
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 40244.442323263880000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo3OnAfterData(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      ''
      'begin'
      '  s:=<frxDBLista."ENAR">;'
      '  if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo3.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(s' +
        ',10,1)'
      '   Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '      memo3.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy(s' +
        ',12,1) ;'
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 504
    Top = 184
    Datasets = <
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end
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
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 257.008040000000000000
          Top = 52.913420000000000000
          Width = 188.976377950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ell'#258#169'sek lista')
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
          Left = 86.929190000000000000
          Top = 86.929190000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
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
        object Line3: TfrxLineView
          Align = baWidth
          Top = 45.354311179999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 68.031540000000010000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Rendezetts'#258#169'g:')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 81.259842520000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#313#177'r'#313#8216' felt'#258#169'telek:')
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
        object Memo41: TfrxMemoView
          Left = 83.149660000000000000
          Top = 68.031540000000010000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Rendezettseg]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
        RowCount = 0
        object SysMemo3: TfrxSysMemoView
          Left = -0.000002440000000000
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
        object Memo11: TfrxMemoView
          Left = 128.504020000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'E_TERM_DAT'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."E_TERM_DAT"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 268.346630000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ELLES_DATUM'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."ELLES_DATUM"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 343.937230000000300000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'ELLES_LEF'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."ELLES_LEF"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 385.512060000000200000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'BORJU_SSZ'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."BORJU_SSZ"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 419.527830000000200000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'BORJU_IVAR'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."BORJU_IVAR"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 453.543600000000200000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'BORJU_SZIN'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."BORJU_SZIN"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 495.118430000000200000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'BORJU_SULY'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."BORJU_SULY"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 544.252320000000200000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'BORJU_KIESES_KOD'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."BORJU_KIESES_KOD"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 582.047620000000100000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'BORJU_KIESES_OK'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."BORJU_KIESES_OK"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 623.622450000000100000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'BORJU_ENAR'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."BORJU_ENAR"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 34.015769999999990000
          Width = 86.929143620000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo3OnAfterData'
          DataField = 'ENAR'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."ENAR"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 215.433210000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'KPLSZ'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBLista."KPLSZ"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        object Memo39: TfrxMemoView
          Left = 612.283860000000000000
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
        object Memo9: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590590240000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TotalPages#] / [Page]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338582680000000000
          Width = 151.181200000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'List'#258#711'k - Ell'#258#169'sek : Ell'#258#169'sek lista')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Width = 30.236218029999990000
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
          Top = 45.354360000000010000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          Left = 41.574830000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Teh'#258#169'n'
            'azon.')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 132.283550000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Eredm.term.'
            'd'#258#711'tuma')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 272.126160000000100000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '  Ell'#258#169's'
            'd'#258#711'tuma')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 340.157700000000200000
          Width = 34.015770000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ell'#258#169's'
            '  lef.')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 381.732530000000300000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              '--------------------------------------- Borj'#258#351' -----------------' +
              '----------------------')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 381.732530000000300000
          Top = 15.118120000000010000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ssz')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 415.748300000000200000
          Top = 15.118120000000010000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ivar')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 457.323130000000200000
          Top = 15.118120000000010000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'sz'#258#173'n')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 495.118430000000200000
          Top = 15.118120000000010000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            's'#258#351'ly')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 544.252320000000200000
          Top = 15.118120000000010000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ki.k'#258#322'd')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 582.047620000000100000
          Top = 15.118120000000010000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ki.ok')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 623.622450000000100000
          Top = 15.118120000000010000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 200.315090000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Apa KPLSZ')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 30.236240000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 30.236220470000000000
          Top = 7.559047799999973000
          Width = 56.692913390000000000
          Height = 12.094488190000000000
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
          Top = 7.559059999999988000
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
          Top = 3.779525120000017000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
