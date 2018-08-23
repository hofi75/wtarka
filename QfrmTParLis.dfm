inherited frmTParLis: TfrmTParLis
  Left = 378
  Top = 77
  Width = 710
  Height = 527
  Caption = 'Teny'#233'szt'#233'si adatok param'#233'terezhet'#337' list'#225'ja (Csak teh'#233'n)'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 448
    Width = 694
    inherited BitBtn1: TTalBitBtn
      Left = 528
      Width = 82
      Caption = 'Nyomtat'#225's'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
    end
    inherited BitBtn2: TTalBitBtn
      Left = 615
    end
  end
  inherited Panel2: TPanel
    Width = 694
    Height = 448
    object TalLabel1: TTalLabel
      Left = 24
      Top = 40
      Width = 82
      Height = 13
      Caption = 'Egyed azonos'#237't'#243':'
    end
    object TalLabel2: TTalLabel
      Left = 253
      Top = 40
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel3: TTalLabel
      Left = 24
      Top = 64
      Width = 109
      Height = 13
      Caption = 'Anya ENAR azonos'#237't'#243':'
    end
    object TalLabel4: TTalLabel
      Left = 253
      Top = 64
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel5: TTalLabel
      Left = 24
      Top = 88
      Width = 52
      Height = 13
      Caption = 'Apa KLSZ:'
    end
    object TalLabel6: TTalLabel
      Left = 253
      Top = 88
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel7: TTalLabel
      Left = 24
      Top = 16
      Width = 52
      Height = 13
      Caption = 'Teny'#233'szet:'
    end
    object TalLabel8: TTalLabel
      Left = 24
      Top = 113
      Width = 62
      Height = 13
      Caption = 'Sz'#252'let'#233'si id'#337':'
    end
    object TalLabel13: TTalLabel
      Left = 24
      Top = 137
      Width = 85
      Height = 13
      Caption = 'Konstrukci'#243's k'#243'd:'
    end
    object TalLabel14: TTalLabel
      Left = 24
      Top = 238
      Width = 98
      Height = 13
      Caption = 'List'#225'zand'#243' egyedek:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel16: TTalLabel
      Left = 244
      Top = 264
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel15: TTalLabel
      Left = 24
      Top = 266
      Width = 72
      Height = 13
      Caption = 'Kies'#233's d'#225'tuma:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel10: TTalLabel
      Left = 24
      Top = 161
      Width = 26
      Height = 13
      Caption = 'Fajta:'
    end
    object TalLabel9: TTalLabel
      Left = 243
      Top = 113
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel11: TTalLabel
      Left = 303
      Top = 137
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel12: TTalLabel
      Left = 303
      Top = 161
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel19: TTalLabel
      Left = 24
      Top = 211
      Width = 95
      Height = 13
      Caption = 'Utols'#243' ell'#233's d'#225'tuma:'
    end
    object TalLabel22: TTalLabel
      Left = 243
      Top = 211
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel23: TTalLabel
      Left = 24
      Top = 185
      Width = 70
      Height = 13
      Caption = 'Ell'#233'sek sz'#225'ma:'
    end
    object TalLabel24: TTalLabel
      Left = 196
      Top = 185
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object edtEgyedTol: TTalEdit
      Left = 160
      Top = 35
      Width = 87
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
      Left = 269
      Top = 35
      Width = 87
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
    object edtAnyaTol: TTalEdit
      Left = 160
      Top = 59
      Width = 87
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
    object edtAnyaIg: TTalEdit
      Left = 269
      Top = 59
      Width = 87
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
    object edtApaTol: TTalEdit
      Left = 160
      Top = 83
      Width = 87
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
    object edtApaIg: TTalEdit
      Left = 269
      Top = 83
      Width = 87
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
    object edtTenyeszet: TTalEdit
      Left = 160
      Top = 11
      Width = 55
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
    object edtSzulDatTol: TTalEdit
      Left = 160
      Top = 108
      Width = 83
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
    object edtSzulDatIg: TTalEdit
      Left = 256
      Top = 108
      Width = 83
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
    object cbKonsTol: TTalComboBox
      Left = 160
      Top = 133
      Width = 135
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 9
      Items.Strings = (
        'H'#237'mivar'#250
        'N'#337'ivar'#250
        'Mind')
    end
    object TalGroupBox3: TTalGroupBox
      Left = 378
      Top = 290
      Width = 245
      Height = 46
      Caption = 'Lista kimenete '
      TabOrder = 21
      object rbExcel: TRadioButton
        Left = 90
        Top = 19
        Width = 71
        Height = 17
        Caption = 'Excel f'#225'jl'
        TabOrder = 0
      end
      object rbLista: TRadioButton
        Left = 10
        Top = 19
        Width = 63
        Height = 17
        Caption = 'Lista'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object TalGroupBox2: TTalGroupBox
      Left = 18
      Top = 345
      Width = 356
      Height = 95
      Caption = 'Lista rendezetts'#233'ge '
      TabOrder = 22
      object rbRend2: TTalRadioButton
        Left = 10
        Top = 43
        Width = 254
        Height = 17
        Caption = 'Sz'#252'let'#233'si d'#225'tumra - egyed azonos'#237't'#243'ra n'#246'vekv'#337
        TabOrder = 0
      end
      object rbRend1: TTalRadioButton
        Left = 10
        Top = 21
        Width = 254
        Height = 17
        Caption = 'Egyed azonos'#237't'#243'ra / haszn'#225'lati sz'#225'mra n'#246'vekv'#337' '
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object rbRend3: TTalRadioButton
        Left = 10
        Top = 65
        Width = 254
        Height = 17
        Caption = 'Apa azonos'#237't'#243'ra + egyed azonos'#237't'#243'ra'
        TabOrder = 2
      end
    end
    object rgListazando2: TTalGroupBox
      Left = 160
      Top = 225
      Width = 289
      Height = 33
      TabOrder = 17
      object rbCsakElo: TTalRadioButton
        Left = 8
        Top = 11
        Width = 79
        Height = 16
        Caption = 'Csak '#233'l'#337
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object rbKiesett: TTalRadioButton
        Left = 104
        Top = 11
        Width = 96
        Height = 16
        Caption = 'Csak kiesett'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rbKiesettClick
      end
      object rbEloEsKiesett: TTalRadioButton
        Left = 219
        Top = 11
        Width = 63
        Height = 16
        Caption = 'Mind'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object edtKiDatTol: TTalEdit
      Left = 160
      Top = 261
      Width = 83
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
      TabOrder = 18
    end
    object edtKiDatIg: TTalEdit
      Left = 261
      Top = 261
      Width = 83
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
      TabOrder = 19
    end
    object rgAzon: TTalGroupBox
      Left = 18
      Top = 290
      Width = 356
      Height = 46
      Caption = ' List'#225'n szerepl'#337' azonos'#237't'#243'  '
      TabOrder = 20
      object rbPsAzon: TTalRadioButton
        Left = 11
        Top = 19
        Width = 118
        Height = 17
        Caption = 'Haszn'#225'lati sz'#225'm'
        TabOrder = 0
      end
      object rbEnar: TTalRadioButton
        Left = 155
        Top = 19
        Width = 135
        Height = 17
        Caption = 'Teljes azonos'#237't'#243
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object cbKonsIg: TTalComboBox
      Left = 320
      Top = 133
      Width = 135
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        'H'#237'mivar'#250
        'N'#337'ivar'#250
        'Mind')
    end
    object cbFajtaTol: TTalComboBox
      Left = 160
      Top = 157
      Width = 135
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 11
      Items.Strings = (
        'H'#237'mivar'#250
        'N'#337'ivar'#250
        'Mind')
    end
    object cbFajtaIg: TTalComboBox
      Left = 320
      Top = 157
      Width = 135
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 12
      Items.Strings = (
        'H'#237'mivar'#250
        'N'#337'ivar'#250
        'Mind')
    end
    object edtEllDatTol: TTalEdit
      Left = 160
      Top = 206
      Width = 81
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
      TabOrder = 15
    end
    object edtEllDatIg: TTalEdit
      Left = 256
      Top = 206
      Width = 83
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
      TabOrder = 16
    end
    object edtEllDbTol: TTalEdit
      Left = 160
      Top = 180
      Width = 30
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '0'
      ValueMax = '99'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ReadOnly = False
      TabOrder = 13
    end
    object edtEllDbIg: TTalEdit
      Left = 212
      Top = 180
      Width = 30
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      ValueMin = '0'
      ValueMax = '99'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ReadOnly = False
      TabOrder = 14
    end
  end
  object qryList: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    Left = 492
    Top = 40
  end
  object sdsLista: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'E.TENYESZET,'#13#10'case when trim(E.ENAR) is not null then e.' +
      'enar'#13#10'else e.fulszam end as enar,'#13#10'SUBSTR(e.ENAR,6,4) as PS_AZON' +
      ','#13#10'E.SZULDAT,'#13#10'E.ANYA_ENAR,'#13#10'E.APAKLSZ,'#13#10'E.KKOD,'#13#10'E.FAJTAKOD,'#13#10'E' +
      '.KIKDAT,'#13#10'E.KIKOD,'#13#10'E.KIKOK,'#13#10'(SELECT  ELSO_ELLES(E0.EGYED_ID)  ' +
      'FROM DUAL ) AS ELSO_ELLES_NAP,'#13#10'cast(ROUND((SELECT  MONTHS_BETWE' +
      'EN( ELSO_ELLES(E0.EGYED_ID), E.SZULDAT)  FROM DUAL ),1) as numer' +
      'ic(10,1)) AS ELSO_ELLES_KOR,'#13#10'cast((SELECT COUNT(distinct ellese' +
      'k.elles_datum) FROM ELLESEK WHERE ELLESEK.EGYED_ID = E0.EGYED_ID' +
      ') as numeric) AS ELLES_DB,'#13#10'CAST(UT_ELLES_DATUM(E0.EGYED_ID) AS ' +
      'DATE) AS UT_ELLES_DATUM ,'#13#10'cast(elles_ssz(e0.egyed_id, e0.elles_' +
      'datum) as numeric) as ELLES_SSZ,'#13#10'E0.ELLES_DATUM, E0.ELLES_LEF,'#13 +
      #10'cast(E0.ELLES_DATUM - EM1.ELLES_DATUM as numeric) AS KEK,'#13#10'T1.D' +
      'ATUM,'#13#10'CAST((SELECT COUNT(*) FROM TERMEKENYITESEK TT WHERE TT.EG' +
      'YED_ID = E0.EGYED_ID AND'#13#10'  TT.DATUM > COALESCE(EM1.ELLES_DATUM,' +
      'TO_DATE('#39'1950.01.01'#39','#39'YYYY.MM.DD'#39')) AND TT.DATUM < E0.ELLES_DATU' +
      'M) as numeric) AS TERM_DB'#13#10'FROM ELLESEK E0'#13#10'JOIN EGYEDEK E ON E.' +
      'ID=E0.EGYED_ID'#13#10'LEFT JOIN ELLESEK E2 ON E2.ID = KOV_ELLES_ID(E0.' +
      'EGYED_ID, E0.ELLES_DATUM)'#13#10'LEFT JOIN ELLESEK EM1 ON EM1.ID = ELO' +
      'ZO_ELLES_ID(E0.EGYED_ID, E0.ELLES_DATUM)'#13#10'LEFT JOIN TERMEKENYITE' +
      'SEK T1 ON T1.ID = ELLES_TERMEKENYITESE(E0.EGYED_ID,E0.ELLES_DATU' +
      'M)'#13#10'WHERE 1=1'#13#10#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'E.TENYESZET,'#13#10'case when trim(E.ENAR) is not null then e.' +
      'enar'#13#10'else e.fulszam end as enar,'#13#10'SUBSTR(e.ENAR,6,4) as PS_AZON' +
      ','#13#10'E.SZULDAT,'#13#10'E.ANYA_ENAR,'#13#10'E.APAKLSZ,'#13#10'E.KKOD,'#13#10'E.FAJTAKOD,'#13#10'E' +
      '.KIKDAT,'#13#10'E.KIKOD,'#13#10'E.KIKOK,'#13#10'(SELECT  ELSO_ELLES(E0.EGYED_ID)  ' +
      'FROM DUAL ) AS ELSO_ELLES_NAP,'#13#10'cast(ROUND((SELECT  MONTHS_BETWE' +
      'EN( ELSO_ELLES(E0.EGYED_ID), E.SZULDAT)  FROM DUAL ),1) as numer' +
      'ic(10,1)) AS ELSO_ELLES_KOR,'#13#10'cast((SELECT COUNT(distinct ellese' +
      'k.elles_datum) FROM ELLESEK WHERE ELLESEK.EGYED_ID = E0.EGYED_ID' +
      ') as numeric) AS ELLES_DB,'#13#10'CAST(UT_ELLES_DATUM(E0.EGYED_ID) AS ' +
      'DATE) AS UT_ELLES_DATUM ,'#13#10'cast(elles_ssz(e0.egyed_id, e0.elles_' +
      'datum) as numeric) as ELLES_SSZ,'#13#10'E0.ELLES_DATUM, E0.ELLES_LEF,'#13 +
      #10'cast(E0.ELLES_DATUM - EM1.ELLES_DATUM as numeric) AS KEK,'#13#10'T1.D' +
      'ATUM,'#13#10'CAST((SELECT COUNT(*) FROM TERMEKENYITESEK TT WHERE TT.EG' +
      'YED_ID = E0.EGYED_ID AND'#13#10'  TT.DATUM > COALESCE(EM1.ELLES_DATUM,' +
      'TO_DATE('#39'1950.01.01'#39','#39'YYYY.MM.DD'#39')) AND TT.DATUM < E0.ELLES_DATU' +
      'M) as numeric) AS TERM_DB'#13#10'FROM ELLESEK E0'#13#10'JOIN EGYEDEK E ON E.' +
      'ID=E0.EGYED_ID'#13#10'LEFT JOIN ELLESEK E2 ON E2.ID = KOV_ELLES_ID(E0.' +
      'EGYED_ID, E0.ELLES_DATUM)'#13#10'LEFT JOIN ELLESEK EM1 ON EM1.ID = ELO' +
      'ZO_ELLES_ID(E0.EGYED_ID, E0.ELLES_DATUM)'#13#10'LEFT JOIN TERMEKENYITE' +
      'SEK T1 ON T1.ID = ELLES_TERMEKENYITESE(E0.EGYED_ID,E0.ELLES_DATU' +
      'M)'#13#10'WHERE 1=1'#13#10#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 551
    Top = 40
    object sdsListaTENYESZET: TWideStringField
      FieldName = 'TENYESZET'
      Size = 7
    end
    object sdsListaENAR: TWideStringField
      FieldName = 'ENAR'
      ReadOnly = True
      Size = 15
    end
    object sdsListaPS_AZON: TWideStringField
      FieldName = 'PS_AZON'
      ReadOnly = True
      Size = 4
    end
    object sdsListaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsListaANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 10
    end
    object sdsListaAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
      Size = 10
    end
    object sdsListaKKOD: TWideStringField
      FieldName = 'KKOD'
      Size = 3
    end
    object sdsListaFAJTAKOD: TWideStringField
      FieldName = 'FAJTAKOD'
      Size = 5
    end
    object sdsListaKIKDAT: TDateTimeField
      FieldName = 'KIKDAT'
    end
    object sdsListaKIKOD: TWideStringField
      FieldName = 'KIKOD'
      Size = 10
    end
    object sdsListaKIKOK: TWideStringField
      FieldName = 'KIKOK'
      Size = 10
    end
    object sdsListaELSO_ELLES_NAP: TDateTimeField
      FieldName = 'ELSO_ELLES_NAP'
      ReadOnly = True
    end
    object sdsListaELLES_DATUM: TDateTimeField
      FieldName = 'ELLES_DATUM'
    end
    object sdsListaELLES_LEF: TWideStringField
      FieldName = 'ELLES_LEF'
      Size = 10
    end
    object sdsListaDATUM: TDateTimeField
      FieldName = 'DATUM'
    end
    object sdsListaUT_ELLES_DATUM: TDateTimeField
      FieldName = 'UT_ELLES_DATUM'
      ReadOnly = True
    end
    object sdsListaELLES_SSZ: TBCDField
      FieldName = 'ELLES_SSZ'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsListaKEK: TBCDField
      FieldName = 'KEK'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsListaELLES_DB: TBCDField
      FieldName = 'ELLES_DB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsListaTERM_DB: TBCDField
      FieldName = 'TERM_DB'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsListaELSO_ELLES_KOR: TBCDField
      FieldName = 'ELSO_ELLES_KOR'
      ReadOnly = True
      Precision = 10
      Size = 1
    end
  end
  object frxRepList: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 40475.810310682870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '  IF <PSION> = '#39'IGEN'#39' then begin'
      '    memo16.text:=<frxDBLista."PS_AZON">;'
      '  end else begin'
      '    s := <frxDBLista."ENAR">;'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(trim(s)) = 10)) Then'
      
        '      memo16.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(' +
        's,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo16.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Co' +
        'py(s,12,1)'
      '     else'
      '       memo16.text := <frxDBLista."ENAR">;'
      '  end;'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 492
    Top = 96
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
      end
      item
        Name = 'PSION'
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 85.370120240000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 230.551391020000000000
          Top = 22.800556670000000000
          Width = 257.007917950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Teny'#258#169'szt'#258#169'si adatok I. lista')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baCenter
          Left = 243.779726495000000000
          Top = 3.000000000000000000
          Width = 230.551247010000000000
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
          Left = 555.590592680000000000
          Top = 2.333333329999998000
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
          Left = 604.724800000000000000
          Top = 2.333333329999998000
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
          Left = 672.755944570001000000
          Top = 2.333333329999998000
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
          Top = 68.031539999999900000
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
        object Line3: TfrxLineView
          Align = baWidth
          Top = 19.795251180000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 50.133889999999990000
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
          Top = 68.031539999999900000
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
        object Memo41: TfrxMemoView
          Left = 83.149660000000000000
          Top = 49.133889999999990000
          Width = 311.740260000000000000
          Height = 18.897650000000000000
          AutoWidth = True
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
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
        RowCount = 0
        object SysMemo3: TfrxSysMemoView
          Left = -0.000002440000000000
          Width = 34.015750470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 41.574830000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          SuppressRepeated = True
        end
        object Memo19: TfrxMemoView
          Left = 158.960730000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'APAKLSZ'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APAKLSZ"]')
          SuppressRepeated = True
        end
        object Memo22: TfrxMemoView
          Left = 225.992270000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'KKOD'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KKOD"]')
          SuppressRepeated = True
        end
        object Memo18: TfrxMemoView
          Left = 272.126160000000100000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'ELLES_SSZ'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBLista."ELLES_SSZ"]')
        end
        object Memo25: TfrxMemoView
          Left = 321.260050000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'ELSO_ELLES_KOR'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ELSO_ELLES_KOR"]')
          SuppressRepeated = True
        end
        object Memo47: TfrxMemoView
          Left = 362.834880000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'ELLES_DATUM'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ELLES_DATUM"]')
        end
        object Memo11: TfrxMemoView
          Left = 445.984540000000100000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'ELLES_LEF'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ELLES_LEF"]')
        end
        object Memo17: TfrxMemoView
          Left = 491.338900000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'KEK'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KEK"]')
        end
        object Memo27: TfrxMemoView
          Left = 532.913730000000000000
          Width = 71.811069999999990000
          Height = 18.897650000000000000
          DataField = 'DATUM'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."DATUM"]')
        end
        object Memo23: TfrxMemoView
          Left = 612.283860000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'TERM_DB'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."TERM_DB"]')
        end
        object Memo24: TfrxMemoView
          Left = 650.079160000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'TERM_DB'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."TERM_DB"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        object Memo38: TfrxMemoView
          Left = 699.213049999998000000
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
          Left = 642.520099999998000000
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
          Left = 687.874459999998000000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
        object Memo9: TfrxMemoView
          Left = 672.756339999998000000
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
          Left = 7.559060000000000000
          Width = 207.874150000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'List'#258#711'k - Egyedek lst'#258#711'z'#258#711'sa')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 39.456710000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 1.000000000000000000
          Top = 0.779529999999994100
          Width = 34.015748030000000000
          Height = 15.874018190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ssz.')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 36.456692909999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 46.574830000000000000
          Top = 0.779529999999994100
          Width = 75.590580470000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 224.882035000000000000
          Top = 0.779529999999994100
          Width = 30.236240000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kons'
            'k'#258#322'd.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 159.960730000000000000
          Top = 0.779529999999994100
          Width = 48.692950000000000000
          Height = 27.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Apa '
            'KLSZ')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 264.567100000000000000
          Width = 30.236240000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ell.'
            'ssz')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 317.480520000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '1.ell'#258#169's.'
            #258#169'letkor')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 366.614410000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ell'#258#169's.'
            'd'#258#711'tuma')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 445.984540000000100000
          Width = 34.015770000000010000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ell'#258#169's.'
            'lef.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 491.338900000000000000
          Width = 34.015770000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'KEK'
            'nap')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 532.913730000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'E.term'
            'd'#258#711'tum')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 600.945270000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Term'
            'sz'#258#711'ma')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 642.520100000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'T.'
            'index')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 11.338570470000000000
          Top = 7.559047799999973000
          Width = 71.811033390000000000
          Height = 23.433078190000000000
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
          Left = 83.149660000000000000
          Top = 7.559059999999988000
          Width = 128.504020000000000000
          Height = 23.433078190000000000
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
          Align = baWidth
          Top = 3.779525119999960000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TENYESZET=TENYESZET'
      'ENAR=ENAR'
      'PS_AZON=PS_AZON'
      'SZULDAT=SZULDAT'
      'ANYA_ENAR=ANYA_ENAR'
      'APAKLSZ=APAKLSZ'
      'KKOD=KKOD'
      'FAJTAKOD=FAJTAKOD'
      'KIKDAT=KIKDAT'
      'KIKOD=KIKOD'
      'KIKOK=KIKOK'
      'ELSO_ELLES_NAP=ELSO_ELLES_NAP'
      'ELLES_DATUM=ELLES_DATUM'
      'ELLES_LEF=ELLES_LEF'
      'DATUM=DATUM'
      'UT_ELLES_DATUM=UT_ELLES_DATUM'
      'ELLES_SSZ=ELLES_SSZ'
      'KEK=KEK'
      'ELLES_DB=ELLES_DB'
      'TERM_DB=TERM_DB'
      'ELSO_ELLES_KOR=ELSO_ELLES_KOR')
    DataSet = sdsLista
    Left = 556
    Top = 104
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 628
    Top = 176
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    FixedWidth = True
    Background = False
    Left = 588
    Top = 176
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    Left = 580
    Top = 224
  end
  object ActionList2: TActionList
    OnExecute = ActionList1Execute
    Left = 488
    Top = 236
    object Action1: TAction
      Caption = 'Nyomtat'#225's'
      OnExecute = actOKExecute
    end
    object Action2: TAction
      Caption = 'Kil'#233'p'#233's'
      OnExecute = actMegsemExecute
    end
  end
end
