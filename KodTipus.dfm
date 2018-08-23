inherited frmKodList: TfrmKodList
  Left = 458
  Top = 323
  Width = 270
  Height = 286
  Caption = 'K'#243'd t'#225'bla'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 211
    Width = 262
    inherited BitBtn1: TTalBitBtn
      Left = 95
    end
    inherited BitBtn2: TTalBitBtn
      Left = 175
    end
  end
  inherited Panel2: TPanel
    Width = 262
    Height = 211
    object TalLabel1: TTalLabel
      Left = 77
      Top = 16
      Width = 103
      Height = 29
      Caption = 'K'#243'd lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TalGroupBox1: TTalGroupBox
      Left = 41
      Top = 80
      Width = 177
      Height = 81
      Caption = 'K'#243'dtipus  '
      TabOrder = 0
      object cbKodTipus: TTalComboBox
        Left = 16
        Top = 32
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 12
  end
  object qryKodTipus: TTalQuery
    Connection = dtmTarka.cnTarka
    CursorType = ctStatic
    Parameters = <>
    Left = 224
    Top = 48
  end
  object frxReportKodTipus: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38831.579877708290000000
    ReportOptions.LastChange = 39882.880322627300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 8
    Datasets = <
      item
        DataSet = frxDBdtsKodTipus
        DataSetName = 'frxDBdtsKodTipus'
      end
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 75.590600000000000000
          Width = 684.094930000000000000
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 612.283860000000000000
          Top = 3.779530000000001000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[TIME]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 548.031850000000000000
          Top = 3.779530000000001000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[DATE]')
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 272.126196615000000000
          Top = 26.456710000000000000
          Width = 173.858306770000000000
          Height = 22.677165350000000000
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'K'#258#322'dt'#258#173'pusok list'#258#711'ja')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000001000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'K'#258#169'sz'#258#317'lt:')
        end
        object Memo14: TfrxMemoView
          Left = 79.370130000000000000
          Top = 3.779530000000001000
          Width = 126.614173230000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #258#129'llatteny'#258#169'szt'#258#169'si')
        end
        object Memo15: TfrxMemoView
          Left = 79.370130000000000000
          Top = 22.677180000000000000
          Width = 126.614173230000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Teljes'#258#173'tm'#258#169'nyvizsg'#258#711'l'#258#322' KFT')
        end
        object Memo16: TfrxMemoView
          Left = 79.370130000000000000
          Top = 41.574830000000000000
          Width = 126.614173230000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Adatfeldolgoz'#258#711's')
        end
        object Memo17: TfrxMemoView
          Left = 306.141930000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Rendezve: t'#258#173'pus')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 170.078850000000000000
          Top = 3.023622050000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'tipuskod'
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tipuskod"]')
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.023622050000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'tipusnev'
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tipusnev"]')
        end
        object Memo6: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.023622050000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'kodhossz'
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."kodhossz"]')
        end
        object SysMemo3: TfrxSysMemoView
          Left = 30.236240000000000000
          Top = 3.779529999999994000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[LINE]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 650.138372640000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
        object Memo5: TfrxMemoView
          Left = 627.401980000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Lap')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 170.078850000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'T'#258#173'pusk'#258#322'd')
        end
        object Memo8: TfrxMemoView
          Left = 347.716760000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'T'#258#173'pusn'#258#169'v')
        end
        object Memo9: TfrxMemoView
          Left = 532.913730000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'K'#258#322'dhossz')
        end
        object Memo10: TfrxMemoView
          Left = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'sorsz.')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 45.354360000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 94.488250000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
        end
        object Memo12: TfrxMemoView
          Left = 30.236220472440900000
          Top = 18.897650000000000000
          Width = 56.692913385826800000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'T'#258#169'telsz'#258#711'm:')
        end
        object Line2: TfrxLineView
          Left = 11.338582680000000000
          Top = 7.559059999999988000
          Width = 684.094488188976000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBdtsKodTipus: TfrxDBDataset
    UserName = 'frxDBdtsKodTipus'
    CloseDataSource = False
    DataSet = qryKodTipus
    Left = 224
    Top = 8
  end
end
