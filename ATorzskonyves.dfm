object ATorzskonyves: TATorzskonyves
  Left = 634
  Top = 402
  Width = 512
  Height = 238
  Caption = '"A" t'#246'rzsk'#246'nyves egyedek sz'#225'ma'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 97
    Height = 16
    Caption = 'Sz'#252'let'#233'si d'#225'tum:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 66
    Height = 16
    Caption = 'Teny'#233'szet:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblProgress: TLabel
    Left = 96
    Top = 88
    Width = 321
    Height = 24
    Alignment = taCenter
    Caption = 'A feldolgoz'#225's folyamatban...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnPrint: TTalBitBtn
    Left = 352
    Top = 128
    Width = 105
    Height = 33
    Caption = 'Nyomtat'#225's'
    TabOrder = 0
    OnClick = btnPrintClick
  end
  object cbTenyeszet: TTalDBLookupComboBox
    Left = 145
    Top = 12
    Width = 313
    Height = 24
    DropDownRows = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'TKOD'
    ListField = 'LISTA'
    ListSource = dtsTenyeszet
    ParentFont = False
    TabOrder = 1
  end
  object edtBirthdate: TTalEdit
    Left = 145
    Top = 42
    Width = 97
    Height = 26
    Alignment = taLeftJustify
    Required = False
    RequiredColor = clInfoBk
    ReadOnlyColor = clActiveBorder
    ValueType = etDate
    Text = '1899.12.30'
    Enabled = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    SpinVisible = False
    ButtonVisible = True
    MaxLength = 10
    ParentFont = False
    ReadOnly = False
    TabOrder = 2
  end
  object dtsTenyeszet: TDataSource
    DataSet = sdsTenyeszet
    Left = 32
    Top = 136
  end
  object ADOAtorzskonyv: TADOStoredProc
    Connection = dtmTarka.cnTarka
    CommandTimeout = 150
    ProcedureName = 'ATORZSKONYV_TEST'
    Parameters = <
      item
        Name = 'P_TKOD'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_BIRTHDATE'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 448
    Top = 40
  end
  object sdsTReturn: TTalSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 'SELECT * from TRETURN'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 'SELECT * from TRETURN'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 296
    Top = 40
    object sdsTReturnTKOD: TWideStringField
      FieldName = 'TKOD'
      Size = 256
    end
    object sdsTReturnSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsTReturnV1: TBCDField
      FieldName = 'V1'
      Precision = 32
    end
    object sdsTReturnV2: TBCDField
      FieldName = 'V2'
      Precision = 32
    end
    object sdsTReturnV3: TBCDField
      FieldName = 'V3'
      Precision = 32
    end
    object sdsTReturnV4: TBCDField
      FieldName = 'V4'
      Precision = 32
    end
    object sdsTReturnV5: TBCDField
      FieldName = 'V5'
      Precision = 32
    end
    object sdsTReturnV6: TBCDField
      FieldName = 'V6'
      Precision = 32
    end
    object sdsTReturnV7: TBCDField
      FieldName = 'V7'
      Precision = 32
    end
    object sdsTReturnV8: TBCDField
      FieldName = 'V8'
      Precision = 32
    end
  end
  object dtsTReturn: TDataSource
    DataSet = sdsTReturn
    Left = 178
    Top = 144
  end
  object frxTReturn: TfrxDBDataset
    UserName = 'frxTReturn'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TKOD=TKOD'
      'SZULDAT=SZULDAT'
      'V1=V1'
      'V2=V2'
      'V3=V3'
      'V4=V4'
      'V5=V5'
      'V6=V6'
      'V7=V7'
      'V8=V8')
    DataSource = dtsTReturn
    Left = 244
    Top = 144
  end
  object frxRepListak: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 40240.498815532400000000
    ReportOptions.LastChange = 43655.870956736110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    Left = 308
    Top = 144
    Datasets = <
      item
        DataSet = frxTReturn
        DataSetName = 'frxTReturn'
      end>
    Variables = <
      item
        Name = ' Parameters'
        Value = Null
      end
      item
        Name = 'SZULETESI_DATUM'
        Value = Null
      end
      item
        Name = 'TENYESZET'
        Value = Null
      end>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 222.992201650000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          Align = baCenter
          Left = 7.370124995000000000
          Top = 3.779530000000000000
          Width = 725.669677010000000000
          Height = 26.456700240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'WinTarka - H'#258#351'shaszn'#258#351' szarvasmarha nyilv'#258#711'ntart'#258#322' program ')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 642.519704570000000000
          Top = 79.370130000000000000
          Width = 75.590570710000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DATE]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 98.267731180000000000
          Width = 740.409927000000000000
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 3.590594995000000000
          Top = 98.267731180000000000
          Width = 733.228737010000000000
          Height = 124.724470470000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '"A"  t'#258#182'rzsk'#258#182'nyves egyedek sz'#258#711'ma')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 7.370124990000000000
          Top = 79.370130000000000000
          Width = 64.251927010000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Teny'#258#169'szet:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 75.590600000000000000
          Top = 79.370130000000000000
          Width = 502.677453390000000000
          Height = 15.118110240000000000
          OnAfterData = 'Memo2OnAfterData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TENYESZET]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 593.386210000000000000
          Top = 79.370130000000000000
          Width = 45.354277010000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'K'#258#169'sz'#258#317'lt:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 657.638220000000000000
        Top = 302.362400000000000000
        Width = 740.409927000000000000
        DataSet = frxTReturn
        DataSetName = 'frxTReturn'
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 7.559060000000000000
          Top = 18.897637800000000000
          Width = 721.890230000000000000
          Height = 37.795275590000000000
        end
        object Memo8: TfrxMemoView
          Left = 370.393695910000000000
          Top = 18.897637800000000000
          Width = 328.819027010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'napj'#258#711'n, vagy el'#313#8216'tte sz'#258#317'letett egyedek sz'#258#711'ma:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 30.236225350000000000
          Top = 18.897637800000000000
          Width = 249.448897010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'A lista k'#258#169'sz'#258#173't'#258#169's'#258#169'nek napj'#258#711'n '#258#169'l'#313#8216' '#258#169's')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Left = 7.559060000000000000
          Top = 56.692913390000000000
          Width = 721.890230000000000000
          Height = 37.795275590000000000
        end
        object Line1: TfrxLineView
          Left = 245.669291340000000000
          Top = 56.692913390000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 483.779527560000000000
          Top = 56.692913385826800000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 56.692913390000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'H'#258#173'mivar'#258#351':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 245.669450000000000000
          Top = 56.692913390000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#313#8216'ivar'#258#351':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 483.779840000000000000
          Top = 56.692913385826800000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8211'sszesen:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 340.157700000000000000
          Top = 56.692913390000000000
          Width = 143.622103390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTReturn."V2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 578.268090000000000000
          Top = 56.692913390000000000
          Width = 151.181163390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[<frxTReturn."V1">+<frxTReturn."V2">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181102360000000000
          Width = 721.890230000000000000
          Height = 37.795275590000000000
        end
        object Memo14: TfrxMemoView
          Left = 11.338590000000000000
          Top = 151.181102360000000000
          Width = 714.331087010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ezek k'#258#182'z'#258#317'l  "A"  t'#258#182'rzsk'#258#182'nyves:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Shape3: TfrxShapeView
          Left = 7.559060000000000000
          Top = 188.976377950000000000
          Width = 721.890230000000000000
          Height = 37.795275590000000000
        end
        object Line4: TfrxLineView
          Left = 245.669450000000000000
          Top = 188.976377950000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 483.779840000000000000
          Top = 188.976377952756000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 188.976377950000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'H'#258#173'mivar'#258#351':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 102.047310000000000000
          Top = 188.976377950000000000
          Width = 143.622103390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTReturn."V3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 245.669450000000000000
          Top = 188.976377950000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#313#8216'ivar'#258#351':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 340.157700000000000000
          Top = 188.976377950000000000
          Width = 143.622103390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTReturn."V4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 483.779840000000000000
          Top = 188.976377950000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8211'sszesen:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 578.268090000000000000
          Top = 188.976377950000000000
          Width = 151.181163390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[<frxTReturn."V3">+<frxTReturn."V4">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape5: TfrxShapeView
          Left = 7.559060000000000000
          Top = 283.464566930000000000
          Width = 721.890230000000000000
          Height = 37.795275590000000000
        end
        object Shape6: TfrxShapeView
          Left = 7.559060000000000000
          Top = 321.260050000000000000
          Width = 721.890230000000000000
          Height = 37.795275590000000000
        end
        object Line6: TfrxLineView
          Left = 245.669291340000000000
          Top = 321.260050000000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 483.779840000000000000
          Top = 321.260050000000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft]
        end
        object Shape7: TfrxShapeView
          Left = 7.559060000000000000
          Top = 415.748031496063000000
          Width = 721.890230000000000000
          Height = 37.795275590000000000
        end
        object Shape8: TfrxShapeView
          Left = 7.559060000000000000
          Top = 453.543307086614000000
          Width = 721.890230000000000000
          Height = 37.795275590000000000
        end
        object Line8: TfrxLineView
          Left = 245.669450000000000000
          Top = 453.543600000000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 483.779840000000000000
          Top = 453.543600000000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Top = 453.543600000000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'H'#258#173'mivar'#258#351':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 245.669450000000000000
          Top = 321.260050000000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#313#8216'ivar'#258#351':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 245.669450000000000000
          Top = 453.543600000000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#313#8216'ivar'#258#351':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 483.779840000000000000
          Top = 321.260050000000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8211'sszesen:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 483.779840000000000000
          Top = 453.543600000000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8211'sszesen:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 11.338590000000000000
          Top = 283.464750000000000000
          Width = 714.331087010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Azon  "A"  t'#258#182'rzsk'#258#182'nyves egyedek sz'#258#711'ma, amelyeknek a sz'#258#317'lei i' +
              's  "A"  t'#258#182'rzsk'#258#182'nyvesek:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 7.559060000000000000
          Top = 415.748300000000000000
          Width = 721.890147010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Azon "A" t'#258#182'rzsk'#258#182'nyves egyedek sz'#258#711'ma, amelyeknek a sz'#258#317'lei '#258#169's' +
              ' a nagysz'#258#317'lei is "A" t'#258#182'rzsk'#258#182'nyvesek:')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 102.047310000000000000
          Top = 321.260050000000000000
          Width = 143.622103390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTReturn."V5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 340.157700000000000000
          Top = 321.260050000000000000
          Width = 143.622103390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTReturn."V6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 578.268090000000000000
          Top = 321.260050000000000000
          Width = 151.181163390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[<frxTReturn."V5">+<frxTReturn."V6">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 102.047310000000000000
          Top = 453.543600000000000000
          Width = 143.622103390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTReturn."V7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 340.157700000000000000
          Top = 453.543600000000000000
          Width = 143.622103390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTReturn."V8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 578.268090000000000000
          Top = 453.543600000000000000
          Width = 151.181163390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[<frxTReturn."V7">+<frxTReturn."V8">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 102.047310000000000000
          Top = 56.692950000000000000
          Width = 143.622103390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          DataField = 'V1'
          DataSet = frxTReturn
          DataSetName = 'frxTReturn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxTReturn."V1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 321.260050000000000000
          Width = 94.488167010000000000
          Height = 37.795275590000000000
          AutoWidth = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'H'#258#173'mivar'#258#351':')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 279.685220000000000000
          Top = 18.897650000000000000
          Width = 90.708683390000000000
          Height = 37.795275590000000000
          OnAfterData = 'Memo2OnAfterData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SZULETESI_DATUM]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object sdsTenyeszet: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select tkod || '#39' - '#39' || tnev2 as lista, * from teny order by tko' +
      'd'
    DataSet.FieldDefs = <
      item
        Name = 'LISTA'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 88
      end
      item
        Name = 'TKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'EKOD'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'RKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'ALLAPOT'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TIPUS'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'BDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'IRSZ'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'VAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'KTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'KTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'HSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TNEV1'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TNEV2'
        DataType = ftWideString
        Size = 78
      end
      item
        Name = 'TNEV3'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'TEL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftWideString
        Size = 37
      end
      item
        Name = 'FAX'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TIRSZ'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TVAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TKTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'TKTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'THSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KKOD'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TMEGYE'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CHANGED'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'ROW_ID'
        DataType = ftVarBytes
        Size = 16
      end>
    DataSet.Parameters = <>
    DataSet.StoreDefs = True
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select tkod || '#39' - '#39' || tnev2 as lista, * from teny order by tko' +
      'd'
    Provider.DataSet.FieldDefs = <
      item
        Name = 'LISTA'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 88
      end
      item
        Name = 'TKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'EKOD'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'RKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'ALLAPOT'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TIPUS'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'BDAT'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'IRSZ'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'VAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'KTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'KTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'HSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TNEV1'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TNEV2'
        DataType = ftWideString
        Size = 78
      end
      item
        Name = 'TNEV3'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'TEL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftWideString
        Size = 37
      end
      item
        Name = 'FAX'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TIRSZ'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TVAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TKTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'TKTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'THSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KKOD'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TMEGYE'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CHANGED'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'ROW_ID'
        DataType = ftVarBytes
        Size = 16
      end>
    Provider.DataSet.Parameters = <>
    Provider.DataSet.StoreDefs = True
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    FieldDefs = <
      item
        Name = 'LISTA'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 88
      end
      item
        Name = 'TKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'EKOD'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'RKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'ALLAPOT'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'BDAT'
        DataType = ftDateTime
      end
      item
        Name = 'IRSZ'
        DataType = ftInteger
      end
      item
        Name = 'VAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'KTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'KTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'HSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TNEV1'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TNEV2'
        DataType = ftWideString
        Size = 78
      end
      item
        Name = 'TNEV3'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'TEL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftWideString
        Size = 37
      end
      item
        Name = 'FAX'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'TIRSZ'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TVAROS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TKTNEV'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'TKTJELL'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'THSZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'KKOD'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TMEGYE'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CHANGED'
        DataType = ftDateTime
      end
      item
        Name = 'ROW_ID'
        DataType = ftVarBytes
        Size = 16
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 104
    Top = 136
    object sdsTenyeszetLISTA: TWideStringField
      FieldName = 'LISTA'
      ReadOnly = True
      Size = 88
    end
    object sdsTenyeszetTKOD: TWideStringField
      FieldName = 'TKOD'
      Size = 7
    end
    object sdsTenyeszetEKOD: TWideStringField
      FieldName = 'EKOD'
      Size = 5
    end
    object sdsTenyeszetRKOD: TWideStringField
      FieldName = 'RKOD'
      Size = 7
    end
    object sdsTenyeszetALLAPOT: TWideStringField
      FieldName = 'ALLAPOT'
      Size = 1
    end
    object sdsTenyeszetTIPUS: TWideStringField
      FieldName = 'TIPUS'
      Size = 1
    end
    object sdsTenyeszetBDAT: TDateTimeField
      FieldName = 'BDAT'
    end
    object sdsTenyeszetIRSZ: TIntegerField
      FieldName = 'IRSZ'
    end
    object sdsTenyeszetVAROS: TWideStringField
      FieldName = 'VAROS'
    end
    object sdsTenyeszetKTNEV: TWideStringField
      FieldName = 'KTNEV'
      Size = 30
    end
    object sdsTenyeszetKTJELL: TWideStringField
      FieldName = 'KTJELL'
      Size = 15
    end
    object sdsTenyeszetHSZ: TWideStringField
      FieldName = 'HSZ'
      Size = 10
    end
    object sdsTenyeszetTNEV1: TWideStringField
      FieldName = 'TNEV1'
      Size = 15
    end
    object sdsTenyeszetTNEV2: TWideStringField
      FieldName = 'TNEV2'
      Size = 78
    end
    object sdsTenyeszetTNEV3: TWideStringField
      FieldName = 'TNEV3'
      Size = 50
    end
    object sdsTenyeszetTEL: TWideStringField
      FieldName = 'TEL'
      Size = 15
    end
    object sdsTenyeszetEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 37
    end
    object sdsTenyeszetFAX: TWideStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsTenyeszetTIRSZ: TWideStringField
      FieldName = 'TIRSZ'
      Size = 5
    end
    object sdsTenyeszetTVAROS: TWideStringField
      FieldName = 'TVAROS'
    end
    object sdsTenyeszetTKTNEV: TWideStringField
      FieldName = 'TKTNEV'
      Size = 30
    end
    object sdsTenyeszetTKTJELL: TWideStringField
      FieldName = 'TKTJELL'
      Size = 15
    end
    object sdsTenyeszetTHSZ: TWideStringField
      FieldName = 'THSZ'
      Size = 10
    end
    object sdsTenyeszetKKOD: TWideStringField
      FieldName = 'KKOD'
      Size = 10
    end
    object sdsTenyeszetTMEGYE: TWideStringField
      FieldName = 'TMEGYE'
      Size = 5
    end
    object sdsTenyeszetCHANGED: TDateTimeField
      FieldName = 'CHANGED'
    end
    object sdsTenyeszetROW_ID: TVarBytesField
      FieldName = 'ROW_ID'
    end
  end
end
