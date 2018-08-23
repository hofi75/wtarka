inherited frmInszKarb: TfrmInszKarb
  Left = 356
  Top = 196
  Width = 723
  Height = 540
  Caption = 'Inszemin'#225'torok karbantart'#225'sa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 216
    Top = -16
    Width = 20
    Height = 13
    Caption = 'N'#233'v'
  end
  inherited pnlGombok: TPanel
    Top = 463
    Width = 707
    inherited btnTorol: TBitBtn
      Left = 469
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 549
    end
    inherited btnCancel: TBitBtn
      Left = 629
    end
    inherited btnModosit: TBitBtn
      Left = 389
    end
    inherited btnUj: TBitBtn
      Left = 309
    end
    inherited btnNyomtat: TBitBtn
      OnClick = btnNyomtatClick
    end
  end
  inherited pnlMod: TTalPanel
    Left = 363
    Top = 41
    Height = 422
    object TalLabel1: TTalLabel
      Left = 5
      Top = 130
      Width = 22
      Height = 13
      Caption = 'K'#243'd:'
    end
    object TalLabel2: TTalLabel
      Left = 5
      Top = 160
      Width = 23
      Height = 13
      Caption = 'N'#233'v:'
    end
    object TalLabel6: TTalLabel
      Left = 5
      Top = 208
      Width = 63
      Height = 13
      Caption = 'Telefonsz'#225'm:'
    end
    object edtKOD: TTalDBEdit
      Left = 82
      Top = 125
      Width = 65
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtKOD'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 0
      OnExit = edtKODExit
      DataField = 'KOD'
      DataSource = dtsInsz
    end
    object edtNev: TTalDBEdit
      Left = 82
      Top = 155
      Width = 247
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtNev'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 1
      DataField = 'NEV'
      DataSource = dtsInsz
    end
    object edtTelefon: TTalDBEdit
      Left = 82
      Top = 203
      Width = 159
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtTelefon'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 2
      DataField = 'TELEFONSZAM'
      DataSource = dtsInsz
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 41
    Width = 363
    Height = 422
    IniAttributes.SectionName = 'frmInszKarb'
    DataSource = dtsInsz
  end
  object TalPanel1: TTalPanel [4]
    Left = 0
    Top = 0
    Width = 707
    Height = 41
    Align = alTop
    TabOrder = 3
    object TalLabel3: TTalLabel
      Left = 8
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object TalSearch1: TTalSearch
      Left = 56
      Top = 8
      Width = 193
      Height = 21
      DataSource = dtsInsz
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
  object dtsInsz: TDataSource
    DataSet = sdsInsz
    Left = 240
    Top = 52
  end
  object sdsInsz: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'SELECT * FROM INSZEMINATOROK'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 'SELECT * FROM INSZEMINATOROK'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 184
    Top = 56
    object sdsInszKOD: TWideStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'KOD'
      Size = 10
    end
    object sdsInszNEV: TWideStringField
      DisplayLabel = 'N'#233'v'
      FieldName = 'NEV'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsInszIRSZ: TWideStringField
      FieldName = 'IRSZ'
      ProviderFlags = []
      Visible = False
      Size = 5
    end
    object sdsInszIRSZAM_ID: TBCDField
      FieldName = 'IRSZAM_ID'
      ProviderFlags = []
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsInszUTCA: TWideStringField
      FieldName = 'UTCA'
      ProviderFlags = []
      Visible = False
      Size = 80
    end
    object sdsInszTELEFONSZAM: TWideStringField
      DisplayLabel = 'Telefon'
      FieldName = 'TELEFONSZAM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sdsInszCHANGED: TDateTimeField
      FieldName = 'CHANGED'
      ProviderFlags = []
      Visible = False
    end
    object sdsInszROW_ID: TVarBytesField
      FieldName = 'ROW_ID'
      ProviderFlags = []
      Visible = False
    end
  end
end
