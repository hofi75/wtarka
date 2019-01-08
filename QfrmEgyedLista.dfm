inherited frmEgyedLista: TfrmEgyedLista
  Left = 729
  Top = 271
  Width = 845
  Height = 624
  Caption = 'Egyedek list'#225'z'#225'sa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 545
    Width = 829
    inherited BitBtn1: TTalBitBtn
      Left = 654
    end
    inherited BitBtn2: TTalBitBtn
      Left = 750
    end
  end
  inherited Panel2: TPanel
    Width = 829
    Height = 545
    object TalLabel1: TTalLabel
      Left = 24
      Top = 40
      Width = 82
      Height = 13
      Caption = 'Egyed azonos'#237't'#243':'
    end
    object TalLabel2: TTalLabel
      Left = 272
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
      Left = 272
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
      Left = 272
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
    object TalLabel9: TTalLabel
      Left = 240
      Top = 113
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel10: TTalLabel
      Left = 24
      Top = 137
      Width = 132
      Height = 13
      Caption = #193'llom'#225'nyba ker'#252'l'#233's d'#225'tuma:'
    end
    object TalLabel11: TTalLabel
      Left = 240
      Top = 137
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel12: TTalLabel
      Left = 24
      Top = 188
      Width = 21
      Height = 13
      Caption = 'Ivar:'
    end
    object TalLabel13: TTalLabel
      Left = 24
      Top = 211
      Width = 26
      Height = 13
      Caption = 'Fajta:'
    end
    object TalLabel14: TTalLabel
      Left = 24
      Top = 236
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
    object TalLabel15: TTalLabel
      Left = 24
      Top = 291
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
    object TalLabel16: TTalLabel
      Left = 244
      Top = 289
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel17: TTalLabel
      Left = 308
      Top = 315
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel18: TTalLabel
      Left = 24
      Top = 315
      Width = 67
      Height = 13
      Caption = 'Kiker'#252'l'#233's k'#243'd:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel20: TTalLabel
      Left = 644
      Top = 315
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel21: TTalLabel
      Left = 468
      Top = 315
      Width = 18
      Height = 13
      Caption = ' ok:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel22: TTalLabel
      Left = 24
      Top = 267
      Width = 122
      Height = 13
      Caption = 'Adott napon '#233'l'#337' egyedek:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel23: TTalLabel
      Left = 351
      Top = 113
      Width = 90
      Height = 13
      Caption = #201'letkor napokban: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel24: TTalLabel
      Left = 488
      Top = 113
      Width = 3
      Height = 13
      Caption = '-'
    end
    object TalLabel25: TTalLabel
      Left = 24
      Top = 161
      Width = 86
      Height = 13
      Caption = 'V'#225'laszt'#225's d'#225'tuma:'
    end
    object TalLabel26: TTalLabel
      Left = 240
      Top = 161
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel27: TTalLabel
      Left = 351
      Top = 161
      Width = 85
      Height = 13
      Caption = 'V'#225'laszt'#225'si t'#246'meg: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TalLabel28: TTalLabel
      Left = 488
      Top = 161
      Width = 3
      Height = 13
      Caption = '-'
    end
    object edtEgyedTol: TTalEdit
      Left = 160
      Top = 35
      Width = 105
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
      Left = 288
      Top = 35
      Width = 105
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
      Width = 105
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
      Left = 288
      Top = 59
      Width = 105
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
      Width = 105
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
      Left = 288
      Top = 83
      Width = 105
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
    object edtSzulDatTol: TTalEdit
      Left = 160
      Top = 108
      Width = 79
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
      Width = 79
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
    object edtAllDatTol: TTalEdit
      Left = 160
      Top = 132
      Width = 79
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
      TabOrder = 11
    end
    object edtAllDatIg: TTalEdit
      Left = 256
      Top = 132
      Width = 79
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
      TabOrder = 12
    end
    object cbIvar: TTalComboBox
      Left = 160
      Top = 184
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 17
      OnCloseUp = cbIvarCloseUp
      Items.Strings = (
        'H'#237'mivar'#250
        'N'#337'ivar'#250
        'Mind')
    end
    object cbFajta: TTalComboBox
      Left = 160
      Top = 207
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 19
      Items.Strings = (
        'H'#237'mivar'#250
        'N'#337'ivar'#250
        'Mind')
    end
    object TalGroupBox3: TTalGroupBox
      Left = 18
      Top = 339
      Width = 255
      Height = 46
      Caption = 'Lista kimenete '
      TabOrder = 28
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
      Top = 393
      Width = 367
      Height = 144
      Caption = 'Lista rendezetts'#233'ge '
      TabOrder = 30
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
      object rbRend4: TTalRadioButton
        Left = 10
        Top = 87
        Width = 254
        Height = 17
        Caption = #201'letkorra napban'
        TabOrder = 3
      end
      object rbRend5: TTalRadioButton
        Left = 10
        Top = 109
        Width = 254
        Height = 17
        Caption = 'V'#225'laszt'#225'si t'#246'meg szerint cs'#246'kken'#337' sorrendben'
        TabOrder = 4
      end
    end
    object rgListazando2: TTalGroupBox
      Left = 160
      Top = 228
      Width = 293
      Height = 30
      TabOrder = 20
      object rbCsakElo: TTalRadioButton
        Left = 8
        Top = 9
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
        OnClick = rbKiesettClick
      end
      object rbKiesett: TTalRadioButton
        Left = 104
        Top = 9
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
        Top = 9
        Width = 70
        Height = 16
        Caption = 'Mind'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = rbKiesettClick
      end
    end
    object edtKiDatTol: TTalEdit
      Left = 160
      Top = 286
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
      TabOrder = 22
    end
    object edtKiDatIg: TTalEdit
      Left = 261
      Top = 286
      Width = 84
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
      TabOrder = 23
    end
    object cbKikkodTol: TTalComboBox
      Left = 160
      Top = 311
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 24
    end
    object cbKikkodIg: TTalComboBox
      Left = 320
      Top = 311
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 25
    end
    object cbKikokTol: TTalComboBox
      Left = 496
      Top = 311
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 26
    end
    object cbKikokIg: TTalComboBox
      Left = 656
      Top = 311
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 27
    end
    object edtElo: TTalEdit
      Left = 160
      Top = 262
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
      TabOrder = 21
    end
    object grpTehen: TTalGroupBox
      Left = 343
      Top = 178
      Width = 293
      Height = 33
      TabOrder = 18
      object rbCsakTehen: TTalRadioButton
        Left = 8
        Top = 11
        Width = 89
        Height = 17
        Caption = 'Csak teh'#233'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = rbKiesettClick
      end
      object rbCsakUszo: TTalRadioButton
        Left = 104
        Top = 11
        Width = 96
        Height = 17
        Caption = 'Csak '#252'sz'#337
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rbKiesettClick
      end
      object rbUszoEsTehen: TTalRadioButton
        Left = 219
        Top = 11
        Width = 70
        Height = 17
        Caption = 'Mind'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnClick = rbKiesettClick
      end
    end
    object edtKortol: TTalEdit
      Left = 445
      Top = 108
      Width = 39
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      ValueMin = '0'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 4
      ReadOnly = False
      TabOrder = 9
    end
    object edtKorig: TTalEdit
      Left = 498
      Top = 108
      Width = 39
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 4
      ReadOnly = False
      TabOrder = 10
    end
    object edtValDatTol: TTalEdit
      Left = 160
      Top = 156
      Width = 79
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
      TabOrder = 13
    end
    object edtValDatIg: TTalEdit
      Left = 256
      Top = 156
      Width = 79
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
      TabOrder = 14
    end
    object edtKgTol: TTalEdit
      Left = 445
      Top = 156
      Width = 39
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      ValueMin = '0'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 4
      ReadOnly = False
      TabOrder = 15
    end
    object edtkgIg: TTalEdit
      Left = 498
      Top = 156
      Width = 39
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = 4
      ReadOnly = False
      TabOrder = 16
    end
    object rgAzon: TTalGroupBox
      Left = 288
      Top = 339
      Width = 345
      Height = 46
      Caption = ' List'#225'n szerepl'#337' azonos'#237't'#243'  '
      TabOrder = 29
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
  end
  inherited ActionList1: TActionList
    Left = 636
    Top = 236
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'SZULDAT=SZULDAT'
      'ANYA_ENAR=ANYA_ENAR'
      'APAKLSZ=APAKLSZ'
      'FAJTAKOD=FAJTAKOD'
      'KKOD=KKOD'
      'TKV=TKV'
      'SV=SV'
      'IVAR=IVAR'
      'ALLDAT=ALLDAT'
      'KIKDAT=KIKDAT'
      'KIKOD=KIKOD'
      'KIKOK=KIKOK'
      'TENYESZET=TENYESZET'
      'PS_AZON=PS_AZON'
      'VALDAT=VALDAT'
      'VALTOM=VALTOM'
      'MIN=MIN'
      'ELETKOR_NAP=ELETKOR_NAP')
    DataSet = sdsLista
    Left = 632
    Top = 104
  end
  object qryList: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    Left = 568
    Top = 40
  end
  object sdsLista: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'E.TENYESZET,'#13#10'case when trim(E.ENAR) is not null then e.' +
      'enar'#13#10'else e.fulszam end as enar,'#13#10'SUBSTR(e.ENAR,6,4) as PS_AZON' +
      ','#13#10'E.FULSZAM,'#13#10'E.SZULDAT,'#13#10'cast(CASE WHEN E.KIKDAT IS NULL THEN'#13 +
      #10'  round((sysdate -  E.SZULDAT))'#13#10'ELSE round((E.KIKDAT - E.SZULD' +
      'AT)) END as numeric) AS ELETKOR_NAP,'#13#10'E.VALDAT, E.VALTOM,'#13#10'E.MIN' +
      ','#13#10'E.ANYA_ENAR,'#13#10'E.APAKLSZ,'#13#10'E.FAJTAKOD,'#13#10'E.KKOD,'#13#10'E.TKV,'#13#10'E.SV,' +
      #13#10'E.IVAR,'#13#10'E.ALLDAT,'#13#10'E.KIKDAT,'#13#10'E.KIKOD,'#13#10'E.KIKOK'#13#10'FROM EGYEDEK' +
      ' E'#13#10'WHERE 1 = 1'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'E.TENYESZET,'#13#10'case when trim(E.ENAR) is not null then e.' +
      'enar'#13#10'else e.fulszam end as enar,'#13#10'SUBSTR(e.ENAR,6,4) as PS_AZON' +
      ','#13#10'E.FULSZAM,'#13#10'E.SZULDAT,'#13#10'cast(CASE WHEN E.KIKDAT IS NULL THEN'#13 +
      #10'  round((sysdate -  E.SZULDAT))'#13#10'ELSE round((E.KIKDAT - E.SZULD' +
      'AT)) END as numeric) AS ELETKOR_NAP,'#13#10'E.VALDAT, E.VALTOM,'#13#10'E.MIN' +
      ','#13#10'E.ANYA_ENAR,'#13#10'E.APAKLSZ,'#13#10'E.FAJTAKOD,'#13#10'E.KKOD,'#13#10'E.TKV,'#13#10'E.SV,' +
      #13#10'E.IVAR,'#13#10'E.ALLDAT,'#13#10'E.KIKDAT,'#13#10'E.KIKOD,'#13#10'E.KIKOK'#13#10'FROM EGYEDEK' +
      ' E'#13#10'WHERE 1 = 1'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 627
    Top = 40
    object sdsListaENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsListaFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      FixedChar = True
      Size = 15
    end
    object sdsListaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsListaANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      FixedChar = True
      Size = 10
    end
    object sdsListaAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
      Size = 10
    end
    object sdsListaFAJTAKOD: TWideStringField
      FieldName = 'FAJTAKOD'
      Size = 5
    end
    object sdsListaKKOD: TWideStringField
      FieldName = 'KKOD'
      FixedChar = True
      Size = 3
    end
    object sdsListaTKV: TWideStringField
      FieldName = 'TKV'
      FixedChar = True
      Size = 1
    end
    object sdsListaSV: TSmallintField
      FieldName = 'SV'
    end
    object sdsListaIVAR: TWideStringField
      FieldName = 'IVAR'
      FixedChar = True
      Size = 1
    end
    object sdsListaALLDAT: TDateTimeField
      FieldName = 'ALLDAT'
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
    object sdsListaTENYESZET: TWideStringField
      FieldName = 'TENYESZET'
      Size = 7
    end
    object sdsListaPS_AZON: TWideStringField
      FieldName = 'PS_AZON'
      ReadOnly = True
      Size = 4
    end
    object sdsListaVALDAT: TDateTimeField
      FieldName = 'VALDAT'
    end
    object sdsListaVALTOM: TIntegerField
      FieldName = 'VALTOM'
    end
    object sdsListaMIN: TBCDField
      FieldName = 'MIN'
      Precision = 6
      Size = 2
    end
    object sdsListaELETKOR_NAP: TBCDField
      FieldName = 'ELETKOR_NAP'
      ReadOnly = True
      Precision = 32
      Size = 0
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
    ReportOptions.LastChange = 40525.794517314820000000
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
    Left = 568
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 81.590590240000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 427.976716020000000000
          Top = 22.800556670000000000
          Width = 188.976377950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Egyedek list'#258#711'z'#258#711'sa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baCenter
          Left = 349.606566495000100000
          Top = 3.000000000000000000
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
          Left = 876.850642680000000000
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
          Left = 925.984850000000000000
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
          Left = 994.015994570000000000
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
          Top = 60.472480000000000000
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
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 42.574830000000000000
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
          Top = 60.472480000000000000
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
          Top = 41.574830000000000000
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
        object Memo1: TfrxMemoView
          Left = 12.671923330000000000
          Top = 1.333333329999999000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
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
          Left = 73.144403330000000000
          Top = 1.333333329999999000
          Width = 177.637910000000000000
          Height = 15.118107800000000000
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
        object Memo29: TfrxMemoView
          Left = 264.567100000000000000
          Top = 1.333333329999999000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
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
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
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
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
        end
        object Memo17: TfrxMemoView
          Left = 174.078850000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'SZULDAT'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."SZULDAT"]')
        end
        object Memo18: TfrxMemoView
          Left = 389.512060000000000000
          Width = 109.606304090000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_ENAR'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_ENAR"]')
        end
        object Memo19: TfrxMemoView
          Left = 321.480520000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'APAKLSZ'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APAKLSZ"]')
        end
        object Memo20: TfrxMemoView
          Left = 547.252320000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'FAJTAKOD'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."FAJTAKOD"]')
        end
        object Memo22: TfrxMemoView
          Left = 585.047620000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'KKOD'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KKOD"]')
        end
        object Memo24: TfrxMemoView
          Left = 624.732685000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'MIN'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."MIN"]')
        end
        object Memo10: TfrxMemoView
          Left = 261.015770000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'ELETKOR_NAP'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."ELETKOR_NAP"]')
        end
        object Memo21: TfrxMemoView
          Left = 514.252010000000100000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DataField = 'IVAR'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."IVAR"]')
        end
        object Memo23: TfrxMemoView
          Left = 692.385900000000000000
          Width = 69.622140000000000000
          Height = 18.897650000000000000
          DataField = 'VALDAT'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'yyyy.mm.dd'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[frxDBLista."VALDAT"]')
          WordBreak = True
        end
        object Memo34: TfrxMemoView
          Left = 769.826840000000000000
          Width = 60.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALTOM'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VALTOM"]')
          WordBreak = True
        end
        object Memo44: TfrxMemoView
          Left = 859.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'KIKDAT'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KIKDAT"]')
        end
        object Memo45: TfrxMemoView
          Left = 955.616883330000000000
          Width = 23.370130000000000000
          Height = 18.897650000000000000
          DataField = 'KIKOD'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KIKOD"]')
        end
        object Memo46: TfrxMemoView
          Left = 986.616883330000000000
          Width = 24.703463330000000000
          Height = 18.897650000000000000
          DataField = 'KIKOK'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KIKOK"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 362.834880000000000000
        Width = 1046.929810000000000000
        object Memo38: TfrxMemoView
          Left = 1024.252630000000000000
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
          Left = 967.559680000000000000
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
          Left = 1012.914040000000000000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
        object Memo9: TfrxMemoView
          Left = 997.795920000000000000
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
        Top = 124.724490000000000000
        Width = 1046.929810000000000000
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
          Width = 1046.929810000000000000
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
        object Memo11: TfrxMemoView
          Left = 175.078850000000000000
          Top = 0.779529999999994100
          Width = 69.921274490000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'l.d'#258#711'tum')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 540.472790000000000000
          Top = 0.779529999999994100
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fajta')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 390.291590000000000000
          Top = 0.779529999999994100
          Width = 96.606304090000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ANYA ENAR')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 583.937385000000000000
          Top = 0.779529999999994100
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kons.')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 623.622450000000000000
          Top = 1.779529999999994000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Min.')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 507.287447960000000000
          Top = 0.779529999999994100
          Width = 23.047244090000000000
          Height = 17.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ivar')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 322.480520000000000000
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
        object Memo27: TfrxMemoView
          Left = 257.015770000000000000
          Top = 0.779529999999994100
          Width = 39.921274490000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #258#8240'letkor'
            'nap')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 682.826840000000000000
          Top = 0.779529999999994100
          Width = 127.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711'si')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 693.826840000000000000
          Top = 17.055039999999990000
          Width = 55.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'd'#258#711'tum')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 770.826840000000000000
          Top = 16.055039999999990000
          Width = 55.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'T'#258#182'meg')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 881.724490000000000000
          Top = 1.055040000000005000
          Width = 105.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kiker'#258#317'l'#258#169's')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 868.724490000000000000
          Top = 17.330549999999990000
          Width = 55.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'd'#258#711'tum')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 953.283550000000000000
          Top = 15.330549999999990000
          Width = 55.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'K'#258#322'd / ok')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
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
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
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
    Left = 720
    Top = 120
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    FixedWidth = True
    Background = False
    Left = 736
    Top = 168
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    Left = 744
    Top = 216
  end
end
