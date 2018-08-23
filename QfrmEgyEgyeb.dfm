inherited frmGyEgyeb: TfrmGyEgyeb
  Left = 329
  Top = 299
  Width = 701
  Height = 387
  Caption = 'Gy'#243'gyszerek egy'#233'b felhaszn'#225'l'#225'sai'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 310
    Width = 685
    inherited btnTorol: TBitBtn
      Left = 447
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 527
    end
    inherited btnCancel: TBitBtn
      Left = 607
    end
    inherited btnModosit: TBitBtn
      Left = 367
    end
    inherited btnUj: TBitBtn
      Left = 287
    end
    inherited btnNyomtat: TBitBtn
      Visible = False
    end
  end
  inherited pnlMod: TTalPanel
    Left = 238
    Width = 447
    Height = 310
    object TalLabel5: TTalLabel
      Left = 44
      Top = 69
      Width = 54
      Height = 13
      Caption = 'Mennyis'#233'g:'
    end
    object TalLabel7: TTalLabel
      Left = 44
      Top = 108
      Width = 54
      Height = 13
      Caption = 'Mennyis'#233'g:'
      FocusControl = edtBeszMenny
    end
    object TalLabel1: TTalLabel
      Left = 44
      Top = 148
      Width = 59
      Height = 13
      Caption = 'Megjegyz'#233's:'
      FocusControl = edtBeszMenny
    end
    object Label9: TTalLabel
      Left = 44
      Top = 33
      Width = 73
      Height = 13
      Caption = 'Gy'#243'gyszer k'#243'd:'
      FocusControl = edtGyogyszerKod
    end
    object edtDatum: TTalDBEdit
      Left = 128
      Top = 64
      Width = 84
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = 'edtD.  .  '
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      TabOrder = 0
      DataField = 'DATUM'
      DataSource = dtsGyEgyeb
    end
    object edtBeszMenny: TTalDBEdit
      Left = 128
      Top = 104
      Width = 65
      Height = 22
      Alignment = taRightJustify
      Required = True
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = 'edtBeszMenny'
      Color = clInfoBk
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 1
      OnExit = edtBeszMennyExit
      DataField = 'MENNYISEG'
      DataSource = dtsGyEgyeb
    end
    object TalDBMemo1: TTalDBMemo
      Left = 128
      Top = 144
      Width = 297
      Height = 113
      DataField = 'MEGJEGYZES'
      DataSource = dtsGyEgyeb
      TabOrder = 2
    end
    object edtGyogyszerKod: TTalDBEdit
      Left = 128
      Top = 28
      Width = 45
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'edtGyogyszerKod'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 3
      DataField = 'KOD'
      DataSource = dtsGyEgyeb
    end
    object edtGyogyszerNev: TTalDBEdit
      Left = 183
      Top = 28
      Width = 242
      Height = 22
      TabStop = False
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clWindow
      Text = 'edtGyogyszerNev'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
      DataField = 'NEV'
      DataSource = dtsGyEgyeb
    end
    object TalDBEdit1: TTalDBEdit
      Left = 200
      Top = 104
      Width = 45
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = 'TalDBEdit1'
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentCtl3D = False
      TabOrder = 5
      DataField = 'ME'
      DataSource = dtsGyEgyeb
    end
  end
  inherited grdVal: TTalDBGrid
    Width = 238
    Height = 310
    IniAttributes.SectionName = 'frmGyEgyeb'
    DataSource = dtsGyEgyeb
  end
  inherited ActionList1: TActionList
    Left = 140
    Top = 68
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
  end
  object sdsGyEgyeb: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'GYOGYSZEREK.KOD,'#13#10'GYOGYSZEREK.NEV,'#13#10'GYFELH.GYOGYSZERKLT_' +
      'ID,'#13#10'GYFELH.DATUM,'#13#10'GYFELH.ID,'#13#10'GYFELH.MENNYISEG,'#13#10'GK.ME,'#13#10'GYFEL' +
      'H.MEGJEGYZES,'#13#10'GYFELH.USER_KOD,'#13#10'GYFELH.UTMOD_DAT'#13#10'FROM GYFELH'#13#10 +
      'JOIN GYOGYSZER_KLT GK ON GYFELH.GYOGYSZERKLT_ID = GK.ID'#13#10'JOIN GY' +
      'OGYSZEREK ON GYOGYSZEREK.KOD = GK.GYOGYSZER_KOD'#13#10'WHERE GYFELH.GY' +
      'OGYSZERKLT_ID = :GYID'
    DataSet.Parameters = <
      item
        Name = 'GYID'
        Attributes = [paSigned]
        DataType = ftString
        Size = 20
        Value = '0'
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'GYOGYSZEREK.KOD,'#13#10'GYOGYSZEREK.NEV,'#13#10'GYFELH.GYOGYSZERKLT_' +
      'ID,'#13#10'GYFELH.DATUM,'#13#10'GYFELH.ID,'#13#10'GYFELH.MENNYISEG,'#13#10'GK.ME,'#13#10'GYFEL' +
      'H.MEGJEGYZES,'#13#10'GYFELH.USER_KOD,'#13#10'GYFELH.UTMOD_DAT'#13#10'FROM GYFELH'#13#10 +
      'JOIN GYOGYSZER_KLT GK ON GYFELH.GYOGYSZERKLT_ID = GK.ID'#13#10'JOIN GY' +
      'OGYSZEREK ON GYOGYSZEREK.KOD = GK.GYOGYSZER_KOD'#13#10'WHERE GYFELH.GY' +
      'OGYSZERKLT_ID = :GYID'
    Provider.DataSet.Parameters = <
      item
        Name = 'GYID'
        Attributes = [paSigned]
        DataType = ftString
        Size = 20
        Value = '0'
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 64
    Top = 144
    object sdsGyEgyebDATUM: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'D'#225'tum'
      DisplayWidth = 12
      FieldName = 'DATUM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsGyEgyebMENNYISEG: TBCDField
      DisplayLabel = 'Mennyis'#233'g'
      DisplayWidth = 10
      FieldName = 'MENNYISEG'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object sdsGyEgyebKOD: TWideStringField
      FieldName = 'KOD'
      ProviderFlags = []
      Visible = False
      Size = 10
    end
    object sdsGyEgyebNEV: TWideStringField
      FieldName = 'NEV'
      ProviderFlags = []
      Visible = False
      Size = 80
    end
    object sdsGyEgyebGYOGYSZERKLT_ID: TBCDField
      FieldName = 'GYOGYSZERKLT_ID'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsGyEgyebID: TBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
    object sdsGyEgyebME: TWideStringField
      FieldName = 'ME'
      ProviderFlags = []
      Visible = False
      Size = 10
    end
    object sdsGyEgyebMEGJEGYZES: TWideStringField
      FieldName = 'MEGJEGYZES'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 600
    end
    object sdsGyEgyebUSER_KOD: TWideStringField
      FieldName = 'USER_KOD'
      ProviderFlags = [pfInUpdate]
      Visible = False
      Size = 10
    end
    object sdsGyEgyebUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
  end
  object dtsGyEgyeb: TDataSource
    DataSet = sdsGyEgyeb
    Left = 152
    Top = 148
  end
end
