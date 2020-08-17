inherited frmEgyedLista: TfrmEgyedLista
  Left = 335
  Top = 189
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
    object TalLabel19: TTalLabel
      Left = 248
      Top = 16
      Width = 30
      Height = 13
      Caption = 'T'#237'pus:'
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
        Left = 74
        Top = 19
        Width = 71
        Height = 17
        Caption = 'Excel f'#225'jl'
        TabOrder = 0
      end
      object rbLista: TRadioButton
        Left = 10
        Top = 19
        Width = 55
        Height = 17
        Caption = 'Lista'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object rbEgyediLapok: TRadioButton
        Left = 154
        Top = 19
        Width = 95
        Height = 17
        Caption = 'Egyedi lapok'
        TabOrder = 2
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
    object edtTenyeszetTipus: TTalEdit
      Left = 288
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
      TabOrder = 31
    end
    object progress: TTalGroupBox
      Left = 408
      Top = 400
      Width = 393
      Height = 97
      Caption = 'Egyedi lapok el'#337#225'll'#237't'#225'sa folyamatban'
      TabOrder = 32
      Visible = False
      object TalLabel29: TTalLabel
        Left = 16
        Top = 28
        Width = 55
        Height = 20
        Caption = 'ENAR: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblProgressENAR: TTalLabel
        Left = 83
        Top = 28
        Width = 182
        Height = 20
        Caption = 'Hello'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pbEgyediLapok: TProgressBar
        Left = 16
        Top = 64
        Width = 361
        Height = 25
        TabOrder = 0
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
      'ID=ID'
      'TENYESZET=TENYESZET'
      'ENAR=ENAR'
      'PS_AZON=PS_AZON'
      'FULSZAM=FULSZAM'
      'SZULDAT=SZULDAT'
      'ELETKOR_NAP=ELETKOR_NAP'
      'VALDAT=VALDAT'
      'VALTOM=VALTOM'
      'MIN=MIN'
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
      'TIPUS=TIPUS')
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
      'SELECT'#13#10'E.ID,'#13#10'E.TENYESZET,'#13#10'case when trim(E.ENAR) is not null ' +
      'then e.enar'#13#10'else e.fulszam end as enar,'#13#10'SUBSTR(e.ENAR,6,4) as ' +
      'PS_AZON,'#13#10'E.FULSZAM,'#13#10'E.SZULDAT,'#13#10'cast(CASE WHEN E.KIKDAT IS NUL' +
      'L THEN'#13#10'  round((sysdate -  E.SZULDAT))'#13#10'ELSE round((E.KIKDAT - ' +
      'E.SZULDAT)) END as numeric) AS ELETKOR_NAP,'#13#10'E.VALDAT, E.VALTOM,' +
      #13#10'E.MIN,'#13#10'E.ANYA_ENAR,'#13#10'E.APAKLSZ,'#13#10'E.FAJTAKOD,'#13#10'E.KKOD,'#13#10'E.TKV,' +
      #13#10'E.SV,'#13#10'E.IVAR,'#13#10'E.ALLDAT,'#13#10'E.KIKDAT,'#13#10'E.KIKOD,'#13#10'E.KIKOK,'#13#10'T.TI' +
      'PUS'#13#10'FROM EGYEDEK E'#13#10'left join teny t on t.tkod = E.TENYESZET'#13#10'W' +
      'HERE 1 = 1'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'E.ID,'#13#10'E.TENYESZET,'#13#10'case when trim(E.ENAR) is not null ' +
      'then e.enar'#13#10'else e.fulszam end as enar,'#13#10'SUBSTR(e.ENAR,6,4) as ' +
      'PS_AZON,'#13#10'E.FULSZAM,'#13#10'E.SZULDAT,'#13#10'cast(CASE WHEN E.KIKDAT IS NUL' +
      'L THEN'#13#10'  round((sysdate -  E.SZULDAT))'#13#10'ELSE round((E.KIKDAT - ' +
      'E.SZULDAT)) END as numeric) AS ELETKOR_NAP,'#13#10'E.VALDAT, E.VALTOM,' +
      #13#10'E.MIN,'#13#10'E.ANYA_ENAR,'#13#10'E.APAKLSZ,'#13#10'E.FAJTAKOD,'#13#10'E.KKOD,'#13#10'E.TKV,' +
      #13#10'E.SV,'#13#10'E.IVAR,'#13#10'E.ALLDAT,'#13#10'E.KIKDAT,'#13#10'E.KIKOD,'#13#10'E.KIKOK,'#13#10'T.TI' +
      'PUS'#13#10'FROM EGYEDEK E'#13#10'left join teny t on t.tkod = E.TENYESZET'#13#10'W' +
      'HERE 1 = 1'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 627
    Top = 40
    object sdsListaID: TBCDField
      FieldName = 'ID'
      Precision = 15
      Size = 0
    end
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
      Size = 4
    end
    object sdsListaFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      Size = 15
    end
    object sdsListaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
      ReadOnly = True
    end
    object sdsListaELETKOR_NAP: TBCDField
      FieldName = 'ELETKOR_NAP'
      Precision = 38
      Size = 0
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
    object sdsListaANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 14
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
      Size = 3
    end
    object sdsListaTKV: TWideStringField
      FieldName = 'TKV'
      Size = 1
    end
    object sdsListaSV: TIntegerField
      FieldName = 'SV'
    end
    object sdsListaIVAR: TWideStringField
      FieldName = 'IVAR'
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
    object sdsListaTIPUS: TWideStringField
      FieldName = 'TIPUS'
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
    ReportOptions.LastChange = 44040.420880752320000000
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
    StoreInDFM = False
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
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = True
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
