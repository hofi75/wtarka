inherited frmKodKarb: TfrmKodKarb
  Left = 439
  Top = 181
  Width = 396
  Caption = 'K'#243'd karbantart'#243
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 380
    inherited BitBtn1: TTalBitBtn
      Left = 221
      Enabled = False
      Visible = False
    end
    inherited BitBtn2: TTalBitBtn
      Left = 301
      Caption = 'Kil'#233'p'#233's'
    end
    object bbtnUj: TTalBitBtn
      Left = 8
      Top = 3
      Width = 75
      Height = 25
      Caption = #218'j'
      TabOrder = 2
      OnClick = bbtnUjClick
    end
    object bbtnModosit: TTalBitBtn
      Left = 96
      Top = 3
      Width = 75
      Height = 25
      Caption = 'M'#243'dos'#237't'
      TabOrder = 3
      OnClick = bbtnModositClick
    end
    object bbtnTorol: TTalBitBtn
      Left = 184
      Top = 3
      Width = 75
      Height = 25
      Caption = 'T'#246'r'#246'l'
      TabOrder = 4
      OnClick = bbtnTorolClick
    end
  end
  inherited Panel2: TPanel
    Width = 380
    object TalPanel1: TTalPanel
      Left = 0
      Top = 0
      Width = 376
      Height = 41
      Align = alTop
      TabOrder = 0
      object cbKodTipus: TTalComboBox
        Left = 16
        Top = 8
        Width = 273
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbKodTipusChange
      end
    end
    object DBGrid1: TTalDBGrid
      Left = 0
      Top = 41
      Width = 376
      Height = 225
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Align = alClient
      DataSource = dstKodKarb
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize, dgTabExitsOnLastCol]
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = True
      DefaultSet = True
      SortDir = sdAsc
      SortType = stGrid
      SortColumn = 0
      SortShow = True
      NotEnabledFieldColor = clMoneyGreen
      NotEnabledFieldColorize = False
      FilterColor = clGray
      FixedColor = clWindow
      ShowFooter = True
      SaveIndex = False
      ShowMaskedNumericValues = False
      SaveExportParamsFile = False
    end
  end
  inherited ActionList1: TActionList
    Left = 188
    Top = 20
    inherited actMegsem: TAction
      Caption = 'Kil'#233'p'#233's'
    end
  end
  object dstKodKarb: TDataSource
    DataSet = qryKodKarb
    Left = 264
    Top = 80
  end
  object qryKodKarb2: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    Left = 304
    Top = 32
  end
  object qryKodKarb: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 256
    Top = 32
  end
end
