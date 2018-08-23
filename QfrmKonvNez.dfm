inherited frmKonvNez: TfrmKonvNez
  Left = 279
  Top = 164
  Width = 820
  Height = 519
  Caption = #193'tvett adatok megtekint'#233'se'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 444
    Width = 812
    inherited BitBtn1: TTalBitBtn
      Left = 645
    end
    inherited BitBtn2: TTalBitBtn
      Left = 725
      Caption = 'Kil'#233'p'#233's'
    end
  end
  inherited Panel2: TPanel
    Width = 812
    Height = 444
    object TalPanel1: TTalPanel
      Left = 0
      Top = 0
      Width = 808
      Height = 38
      Align = alTop
      TabOrder = 0
      object TalLabel1: TTalLabel
        Left = 8
        Top = 12
        Width = 41
        Height = 13
        Caption = 'Keres'#233's:'
      end
      object TalLabel2: TTalLabel
        Left = 232
        Top = 12
        Width = 30
        Height = 13
        Caption = 'T'#225'bla:'
      end
      object TalSearch1: TTalSearch
        Left = 56
        Top = 8
        Width = 169
        Height = 21
        DataSource = dtsKeres
        CaseSensitivity = wwcsCaseInsensitive
        TabOrder = 0
      end
      object cbTabla: TTalComboBox
        Left = 272
        Top = 8
        Width = 441
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        OnCloseUp = cbTablaCloseUp
        Items.Strings = (
          'ANYA'
          'ANYAKULL'
          'APA'
          'APAKULL'
          'BORJKULL'
          'ELLES'
          'EMBRIO'
          'FAJTA'
          'HTENY'
          'ITV'
          'KIHBEH'
          'KIKOD'
          'KIKOK'
          'KSTV'
          'MERES'
          'ORSZAG'
          'SZARMIG'
          'SZIN'
          'SZLAPOK'
          'TENY'
          'TERM'
          'USTV'
          'VERH')
      end
      object btnLeker: TTalBitBtn
        Left = 720
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Adatlek'#233'r'#233's'
        TabOrder = 2
        OnClick = btnLekerClick
      end
    end
    object grdKeres: TTalDBGrid
      Left = 0
      Top = 38
      Width = 808
      Height = 402
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Align = alClient
      DataSource = dtsKeres
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
    Left = 548
    Top = 76
    inherited actOK: TAction
      Visible = False
    end
    inherited actMegsem: TAction
      Caption = 'Kil'#233'p'#233's'
    end
  end
  object sdsKeres: TTalSimpleDataSet
    Aggregates = <>
    DataSet.Parameters = <>
    Provider.DataSet.Parameters = <>
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 128
    Top = 128
  end
  object dtsKeres: TDataSource
    DataSet = sdsKeres
    Left = 200
    Top = 128
  end
end
