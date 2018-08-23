inherited frmIrszam: TfrmIrszam
  Left = 296
  Top = 207
  Width = 698
  Height = 455
  Caption = 'Ir'#225'ny'#237't'#243'sz'#225'mok karbantart'#225'sa'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 389
    Width = 690
    inherited btnTorol: TBitBtn
      Left = 444
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 524
    end
    inherited btnCancel: TBitBtn
      Left = 604
    end
    inherited btnModosit: TBitBtn
      Left = 364
    end
    inherited btnUj: TBitBtn
      Left = 284
    end
  end
  inherited pnlMod: TTalPanel
    Left = 346
    Top = 35
    Height = 354
    object TalLabel1: TTalLabel
      Left = 8
      Top = 125
      Width = 22
      Height = 13
      Caption = 'Irsz.:'
    end
    object TalLabel2: TTalLabel
      Left = 8
      Top = 157
      Width = 41
      Height = 13
      Caption = 'Helys'#233'g:'
    end
    object edtKod: TTalDBEdit
      Left = 56
      Top = 120
      Width = 57
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 0
      DataField = 'KOD'
      DataSource = dtsIrszam
    end
    object edtNev: TTalDBEdit
      Left = 56
      Top = 152
      Width = 257
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 1
      DataField = 'TELEPULES'
      DataSource = dtsIrszam
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 35
    Width = 346
    Height = 354
    DataSource = dtsIrszam
  end
  object TalPanel1: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 690
    Height = 35
    Align = alTop
    TabOrder = 3
    object TalLabel3: TTalLabel
      Left = 16
      Top = 10
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object TalSearch1: TTalSearch
      Left = 88
      Top = 6
      Width = 249
      Height = 21
      DataSource = dtsIrszam
      CaseSensitivity = wwcsCaseInsensitive
      TabOrder = 0
    end
  end
  inherited ActionList1: TActionList
    Left = 252
    Top = 100
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
  end
  object sdsIrszam: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from irszam'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 'select * from irszam'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 136
    Top = 168
    object sdsIrszamID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsIrszamKOD: TWideStringField
      DisplayLabel = 'IRSZ'
      FieldName = 'KOD'
      Size = 5
    end
    object sdsIrszamTELEPULES: TWideStringField
      DisplayLabel = 'Telep'#252'l'#233's'
      FieldName = 'TELEPULES'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object dtsIrszam: TDataSource
    DataSet = sdsIrszam
    Left = 240
    Top = 168
  end
end
