inherited frmTenyKarb: TfrmTenyKarb
  Left = 287
  Top = 89
  Width = 1000
  Height = 678
  Caption = 'Teny'#233'szetek adatai'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 601
    Width = 984
    inherited btnTorol: TBitBtn
      Left = 746
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 826
    end
    inherited btnCancel: TBitBtn
      Left = 906
    end
    inherited btnModosit: TBitBtn
      Left = 666
    end
    inherited btnUj: TBitBtn
      Left = 586
    end
  end
  inherited pnlMod: TTalPanel
    Top = 38
    Width = 650
    Height = 563
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 99
      Height = 13
      Caption = 'EN'#193'R teny'#233'szetk'#243'd:'
      FocusControl = edtEnar
    end
    object Label2: TLabel
      Left = 24
      Top = 48
      Width = 92
      Height = 13
      Caption = 'EN'#193'R els'#337' 5 jegye:'
      FocusControl = edtEnar5
    end
    object Label3: TLabel
      Left = 24
      Top = 72
      Width = 106
      Height = 13
      Caption = 'Term.ell.teny'#233'szetk'#243'd:'
      FocusControl = edtTkod
    end
    object Label25: TLabel
      Left = 24
      Top = 512
      Width = 62
      Height = 13
      Caption = 'K'#246'rzet k'#243'dja:'
      FocusControl = DBEdit24
    end
    object Label26: TLabel
      Left = 24
      Top = 537
      Width = 35
      Height = 13
      Caption = 'Megye:'
    end
    object TalLabel3: TTalLabel
      Left = 168
      Top = 512
      Width = 194
      Height = 13
      Caption = '(megyei k'#246'rzetbe sorolt teny'#233'szet eset'#233'n)'
    end
    object edtEnar: TDBEdit
      Left = 135
      Top = 20
      Width = 74
      Height = 21
      DataField = 'TKOD'
      DataSource = dtsKeres
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = edtEnarExit
    end
    object edtEnar5: TDBEdit
      Left = 135
      Top = 44
      Width = 48
      Height = 21
      DataField = 'EKOD'
      DataSource = dtsKeres
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnExit = edtEnar5Exit
    end
    object edtTkod: TDBEdit
      Left = 135
      Top = 68
      Width = 74
      Height = 21
      DataField = 'RKOD'
      DataSource = dtsKeres
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit24: TDBEdit
      Left = 118
      Top = 508
      Width = 42
      Height = 21
      DataField = 'KKOD'
      DataSource = dtsKeres
      TabOrder = 3
    end
    object TalPanel1: TTalPanel
      Left = 16
      Top = 100
      Width = 593
      Height = 121
      BevelInner = bvLowered
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 4
      object Label6: TLabel
        Left = 312
        Top = 25
        Width = 90
        Height = 13
        Caption = 'Bejelent'#233's d'#225'tuma:'
      end
      object Label4: TLabel
        Left = 8
        Top = 25
        Width = 35
        Height = 13
        Caption = #193'llapot:'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 176
        Top = 25
        Width = 30
        Height = 13
        Caption = 'T'#237'pus:'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 8
        Top = 49
        Width = 62
        Height = 13
        Caption = 'Ir'#225'ny'#237't'#243'sz'#225'm:'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 175
        Top = 49
        Width = 49
        Height = 13
        Caption = 'Telep'#252'l'#233's:'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 8
        Top = 140
        Width = 36
        Height = 13
        Caption = 'KTNEV'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 8
        Top = 74
        Width = 21
        Height = 13
        Caption = 'C'#237'm:'
        FocusControl = DBEdit10
      end
      object TalLabel1: TTalLabel
        Left = 6
        Top = 3
        Width = 63
        Height = 13
        Caption = 'Teny'#233'szet '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 96
        Width = 83
        Height = 13
        Caption = 'K'#246'zter'#252'let jellege:'
        FocusControl = DBEdit10
      end
      object Label17: TLabel
        Left = 328
        Top = 96
        Width = 46
        Height = 13
        Caption = 'H'#225'zsz'#225'm:'
        FocusControl = DBEdit10
      end
      object DBEdit4: TDBEdit
        Left = 95
        Top = 21
        Width = 34
        Height = 21
        Ctl3D = True
        DataField = 'ALLAPOT'
        DataSource = dtsKeres
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 231
        Top = 21
        Width = 42
        Height = 21
        Ctl3D = True
        DataField = 'TIPUS'
        DataSource = dtsKeres
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 95
        Top = 45
        Width = 58
        Height = 21
        Ctl3D = True
        DataField = 'IRSZ'
        DataSource = dtsKeres
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 231
        Top = 45
        Width = 265
        Height = 21
        Ctl3D = True
        DataField = 'VAROS'
        DataSource = dtsKeres
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit9: TDBEdit
        Left = 95
        Top = 69
        Width = 402
        Height = 21
        Ctl3D = True
        DataField = 'KTNEV'
        DataSource = dtsKeres
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit10: TDBEdit
        Left = 95
        Top = 92
        Width = 199
        Height = 21
        Ctl3D = True
        DataField = 'KTJELL'
        DataSource = dtsKeres
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit11: TDBEdit
        Left = 392
        Top = 92
        Width = 105
        Height = 21
        Ctl3D = True
        DataField = 'HSZ'
        DataSource = dtsKeres
        ParentCtl3D = False
        TabOrder = 6
      end
      object TalDBEdit1: TTalDBEdit
        Left = 416
        Top = 20
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
        ParentCtl3D = False
        TabOrder = 7
        DataField = 'BDAT'
        DataSource = dtsKeres
      end
    end
    object TalGroupBox1: TTalGroupBox
      Left = 16
      Top = 228
      Width = 593
      Height = 265
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object Label12: TLabel
        Left = 8
        Top = 36
        Width = 29
        Height = 13
        Caption = 'Neve:'
        FocusControl = DBEdit12
      end
      object Label15: TLabel
        Left = 8
        Top = 108
        Width = 39
        Height = 13
        Caption = 'Telefon:'
        FocusControl = DBEdit15
      end
      object Label16: TLabel
        Left = 8
        Top = 132
        Width = 38
        Height = 13
        Caption = 'E-MAIL:'
      end
      object Label19: TLabel
        Left = 8
        Top = 156
        Width = 23
        Height = 13
        Caption = 'FAX:'
        FocusControl = DBEdit18
      end
      object Label20: TLabel
        Left = 8
        Top = 188
        Width = 62
        Height = 13
        Caption = 'Ir'#225'ny'#237't'#243'sz'#225'm:'
        FocusControl = DBEdit19
      end
      object Label21: TLabel
        Left = 175
        Top = 188
        Width = 46
        Height = 13
        Caption = 'Telep'#252'l'#233's'
        FocusControl = DBEdit20
      end
      object Label22: TLabel
        Left = 8
        Top = 212
        Width = 21
        Height = 13
        Caption = 'C'#237'm:'
        FocusControl = DBEdit21
      end
      object Label23: TLabel
        Left = 8
        Top = 236
        Width = 83
        Height = 13
        Caption = 'K'#246'zter'#252'let jellege:'
        FocusControl = DBEdit22
      end
      object Label24: TLabel
        Left = 336
        Top = 236
        Width = 46
        Height = 13
        Caption = 'H'#225'zsz'#225'm:'
        FocusControl = DBEdit23
      end
      object TalLabel2: TTalLabel
        Left = 6
        Top = 11
        Width = 35
        Height = 13
        Caption = 'Tart'#243':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit12: TDBEdit
        Left = 95
        Top = 32
        Width = 199
        Height = 21
        DataField = 'TNEV1'
        DataSource = dtsKeres
        TabOrder = 0
      end
      object DBEdit13: TDBEdit
        Left = 95
        Top = 56
        Width = 485
        Height = 21
        DataField = 'TNEV2'
        DataSource = dtsKeres
        TabOrder = 1
      end
      object DBEdit14: TDBEdit
        Left = 95
        Top = 80
        Width = 485
        Height = 21
        DataField = 'TNEV3'
        DataSource = dtsKeres
        TabOrder = 2
      end
      object DBEdit15: TDBEdit
        Left = 95
        Top = 104
        Width = 199
        Height = 21
        DataField = 'TEL'
        DataSource = dtsKeres
        TabOrder = 3
      end
      object DBEdit17: TDBEdit
        Left = 95
        Top = 128
        Width = 485
        Height = 21
        DataField = 'EMAIL'
        DataSource = dtsKeres
        TabOrder = 4
      end
      object DBEdit18: TDBEdit
        Left = 95
        Top = 152
        Width = 199
        Height = 21
        DataField = 'FAX'
        DataSource = dtsKeres
        TabOrder = 5
      end
      object DBEdit19: TDBEdit
        Left = 95
        Top = 184
        Width = 58
        Height = 21
        DataField = 'TIRSZ'
        DataSource = dtsKeres
        TabOrder = 6
      end
      object DBEdit20: TDBEdit
        Left = 233
        Top = 184
        Width = 264
        Height = 21
        DataField = 'TVAROS'
        DataSource = dtsKeres
        TabOrder = 7
      end
      object DBEdit21: TDBEdit
        Left = 95
        Top = 208
        Width = 402
        Height = 21
        DataField = 'TKTNEV'
        DataSource = dtsKeres
        TabOrder = 8
      end
      object DBEdit22: TDBEdit
        Left = 95
        Top = 232
        Width = 199
        Height = 21
        DataField = 'TKTJELL'
        DataSource = dtsKeres
        TabOrder = 9
      end
      object DBEdit23: TDBEdit
        Left = 392
        Top = 232
        Width = 105
        Height = 21
        DataField = 'THSZ'
        DataSource = dtsKeres
        TabOrder = 10
      end
    end
    object cbMegye: TTalDBLookupComboBox
      Left = 118
      Top = 534
      Width = 171
      Height = 21
      DataField = 'TMEGYE'
      DataSource = dtsKeres
      KeyField = 'KOD'
      ListField = 'NEV'
      ListSource = dtsMegye
      TabOrder = 6
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 38
    Height = 563
    DataSource = dtsKeres
  end
  object pnlKeres: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 984
    Height = 38
    Align = alTop
    TabOrder = 3
    object TalLabel18: TTalLabel
      Left = 24
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object TalSearch1: TTalSearch
      Left = 74
      Top = 8
      Width = 231
      Height = 21
      TabStop = False
      DataSource = dtsKeres
      TabOrder = 0
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
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT '#13#10'TKOD,'#13#10'EKOD,'#13#10'RKOD,'#13#10'ALLAPOT,'#13#10'TIPUS,'#13#10'BDAT,'#13#10'IRSZ,'#13#10'VA' +
      'ROS,'#13#10'KTNEV,'#13#10'KTJELL,'#13#10'HSZ,'#13#10'TNEV1,'#13#10'TNEV2,'#13#10'TNEV3,'#13#10'TEL,'#13#10'EMAIL' +
      ','#13#10'FAX,'#13#10'TIRSZ,'#13#10'TVAROS,'#13#10'TKTNEV,'#13#10'TKTJELL,'#13#10'THSZ,'#13#10'KKOD,'#13#10'TMEGY' +
      'E'#13#10'from TENY'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT '#13#10'TKOD,'#13#10'EKOD,'#13#10'RKOD,'#13#10'ALLAPOT,'#13#10'TIPUS,'#13#10'BDAT,'#13#10'IRSZ,'#13#10'VA' +
      'ROS,'#13#10'KTNEV,'#13#10'KTJELL,'#13#10'HSZ,'#13#10'TNEV1,'#13#10'TNEV2,'#13#10'TNEV3,'#13#10'TEL,'#13#10'EMAIL' +
      ','#13#10'FAX,'#13#10'TIRSZ,'#13#10'TVAROS,'#13#10'TKTNEV,'#13#10'TKTJELL,'#13#10'THSZ,'#13#10'KKOD,'#13#10'TMEGY' +
      'E'#13#10'from TENY'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 108
    Top = 92
    object sdsKeresTKOD: TWideStringField
      DisplayLabel = 'EN'#193'R k'#243'd'
      DisplayWidth = 10
      FieldName = 'TKOD'
      FixedChar = True
      Size = 7
    end
    object sdsKeresEKOD: TWideStringField
      DisplayLabel = 'EN'#193'R eleje'
      DisplayWidth = 10
      FieldName = 'EKOD'
      FixedChar = True
      Size = 5
    end
    object sdsKeresRKOD: TWideStringField
      DisplayLabel = 'Term.ell.k'#243'd'
      DisplayWidth = 10
      FieldName = 'RKOD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object sdsKeresALLAPOT: TWideStringField
      DisplayLabel = #193'llapot'
      FieldName = 'ALLAPOT'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object sdsKeresTIPUS: TWideStringField
      DisplayLabel = 'T'#237'pus'
      FieldName = 'TIPUS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object sdsKeresBDAT: TDateTimeField
      FieldName = 'BDAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsKeresIRSZ: TSmallintField
      FieldName = 'IRSZ'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object sdsKeresVAROS: TWideStringField
      FieldName = 'VAROS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
    end
    object sdsKeresKTNEV: TWideStringField
      FieldName = 'KTNEV'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 30
    end
    object sdsKeresKTJELL: TWideStringField
      FieldName = 'KTJELL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 15
    end
    object sdsKeresHSZ: TWideStringField
      FieldName = 'HSZ'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 10
    end
    object sdsKeresTNEV1: TWideStringField
      DisplayLabel = 'Tart'#243' n'#233'v 1'
      FieldName = 'TNEV1'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object sdsKeresTNEV2: TWideStringField
      DisplayLabel = 'Tart'#243' n'#233'v 2'
      FieldName = 'TNEV2'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 78
    end
    object sdsKeresTNEV3: TWideStringField
      DisplayLabel = 'Tart'#243' n'#233'v 3'
      FieldName = 'TNEV3'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object sdsKeresTEL: TWideStringField
      FieldName = 'TEL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 15
    end
    object sdsKeresEMAIL: TWideStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 37
    end
    object sdsKeresFAX: TWideStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 15
    end
    object sdsKeresTIRSZ: TWideStringField
      FieldName = 'TIRSZ'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 5
    end
    object sdsKeresTVAROS: TWideStringField
      FieldName = 'TVAROS'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
    end
    object sdsKeresTKTNEV: TWideStringField
      FieldName = 'TKTNEV'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 30
    end
    object sdsKeresTKTJELL: TWideStringField
      FieldName = 'TKTJELL'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 15
    end
    object sdsKeresTHSZ: TWideStringField
      FieldName = 'THSZ'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 10
    end
    object sdsKeresTMEGYE: TWideStringField
      FieldName = 'TMEGYE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsKeresKKOD: TWideStringField
      FieldName = 'KKOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
  end
  object dtsKeres: TDataSource
    DataSet = sdsKeres
    Left = 171
    Top = 92
  end
  object sdsMegye: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select MEGYE.KOD, MEGYE.KOD || '#39'-'#39' || MEGYE.NEV AS NEV '#13#10'from ME' +
      'GYE'#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select MEGYE.KOD, MEGYE.KOD || '#39'-'#39' || MEGYE.NEV AS NEV '#13#10'from ME' +
      'GYE'#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 104
    Top = 184
    object sdsMegyeKOD: TWideStringField
      FieldName = 'KOD'
      FixedChar = True
      Size = 2
    end
    object sdsMegyeNEV: TWideStringField
      FieldName = 'NEV'
      FixedChar = True
      Size = 60
    end
  end
  object dtsMegye: TDataSource
    DataSet = sdsMegye
    Left = 178
    Top = 184
  end
end
