inherited frmEletLista: TfrmEletLista
  Left = 987
  Top = 368
  Width = 450
  Height = 256
  ActiveControl = edtEgyed
  Caption = 'Egyed '#233'lett'#246'rt'#233'neti lap'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 177
    Width = 434
    inherited BitBtn1: TTalBitBtn
      Left = 271
      Width = 79
      Glyph.Data = {00000000}
    end
    inherited BitBtn2: TTalBitBtn
      Left = 355
    end
  end
  inherited Panel2: TPanel
    Width = 434
    Height = 177
    object TalLabel1: TTalLabel
      Left = 84
      Top = 61
      Width = 82
      Height = 13
      Alignment = taRightJustify
      Caption = 'Egyed azonos'#237't'#243':'
    end
    object edtEgyed: TTalEdit
      Left = 172
      Top = 57
      Width = 125
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
    object rbRendezettseg: TTalRadioGroup
      Left = 80
      Top = 112
      Width = 233
      Height = 57
      Caption = 'Lista rendezetts'#233'ge  '
      ItemIndex = 1
      Items.Strings = (
        'Csak id'#337'rendben'
        'Esem'#233'ny t'#237'pusonk'#233'nt id'#337'rendben')
      TabOrder = 1
      Visible = False
    end
  end
  inherited ActionList1: TActionList
    Left = 316
    Top = 68
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 39230.840396157400000000
    ReportOptions.LastChange = 40675.904443171300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 368
    Top = 16
    Datasets = <
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end
      item
        DataSet = frxDBGn14
        DataSetName = 'frxDBGn14'
      end>
    Variables = <
      item
        Name = ' Parameterek'
        Value = Null
      end
      item
        Name = 'TENYESZET'
        Value = Null
      end
      item
        Name = 'EV'
        Value = Null
      end>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 185.197011495000000000
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
            'Wtarka  '#194#169' 2010')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 600.944952680000000000
          Top = 17.007889880000000000
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
          Left = 650.079160000000000000
          Top = 17.007889880000000000
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
        object Memo6: TfrxMemoView
          Left = 153.071026020000000000
          Top = 26.456710000000000000
          Width = 411.968647950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'GN15  szerinti korcsoport statisztika')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 128.504020000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 11.338590000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'D'#258#711'tum')
        end
        object Memo13: TfrxMemoView
          Left = 154.960730000000000000
          Top = 105.826840000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AllowExpressions = False
          HAlign = haRight
          Memo.UTF8 = (
            '0 - 6 h'#258#322)
        end
        object Memo14: TfrxMemoView
          Left = 404.409710000000000000
          Top = 105.826840000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '6 - 24 h'#258#322)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 517.795610000000000000
          Top = 105.826840000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '24 h'#258#322' felett')
        end
        object Memo16: TfrxMemoView
          Left = 627.401980000000000000
          Top = 105.826840000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #258#8211'sszesen')
        end
        object Memo19: TfrxMemoView
          Left = 238.110390000000000000
          Top = 105.826840000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '6  - 12 h'#258#322)
        end
        object Memo20: TfrxMemoView
          Left = 321.260050000000000000
          Top = 105.826840000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '12 - 24 h'#258#322)
        end
        object Memo3: TfrxMemoView
          Left = 147.401670000000000000
          Top = 52.913420000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[TENYESZET]')
        end
        object Memo17: TfrxMemoView
          Left = 198.425325000000000000
          Top = 75.590600000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[EV]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 28.346446930000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDBGn14
        DataSetName = 'frxDBGn14'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'NAP'
          DataSet = frxDBGn14
          DataSetName = 'frxDBGn14'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'yyyy.mm'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[frxDBGn14."NAP"]')
        end
        object Memo4: TfrxMemoView
          Left = 139.842610000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NULLA_HAT'
          DataSet = frxDBGn14
          DataSetName = 'frxDBGn14'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBGn14."NULLA_HAT"]')
        end
        object Memo5: TfrxMemoView
          Left = 396.850650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'HAT_HUSZONNEGY'
          DataSet = frxDBGn14
          DataSetName = 'frxDBGn14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBGn14."HAT_HUSZONNEGY"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 510.236550000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'HUSZONEGY_TOL'
          DataSet = frxDBGn14
          DataSetName = 'frxDBGn14'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBGn14."HUSZONEGY_TOL"]')
        end
        object Memo9: TfrxMemoView
          Left = 612.283860000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'LETSZAM'
          DataSet = frxDBGn14
          DataSetName = 'frxDBGn14'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBGn14."LETSZAM"]')
        end
        object Memo10: TfrxMemoView
          Left = 234.330860000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'HAT_TIZENKETTO'
          DataSet = frxDBGn14
          DataSetName = 'frxDBGn14'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBGn14."HAT_TIZENKETTO"]')
        end
        object Memo11: TfrxMemoView
          Left = 313.700990000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'T12_HUSZONNEGY'
          DataSet = frxDBGn14
          DataSetName = 'frxDBGn14'
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBGn14."T12_HUSZONNEGY"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo27: TfrxMemoView
          Left = 582.047627320000000000
          Width = 136.063080000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalPages#] / [<Page>].oldal')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Lista - GN15 szerinti korcsoport statisztika')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
      end
    end
  end
  object sdsGn14: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT '#13#10'NN.NAP,'#13#10'cast((SELECT COUNT(*) FROM EGYEDEK '#13#10'  where (' +
      ' EGYEDEK.SZULDAT < NN.NAP) '#13#10'    AND ((EGYEDEK.ALLDAT IS NULL) O' +
      'R (EGYEDEK.ALLDAT <= NN.NAP ))'#13#10'    AND ((EGYEDEK.KIKDAT IS NULL' +
      ') OR (EGYEDEK.KIKDAT > NN.NAP))  '#13#10'    AND MONTHS_BETWEEN( NN.NA' +
      'P, EGYEDEK.SZULDAT) <= 6  /*1*/ ) AS NUMERIC(10,0) )  AS NULLA_H' +
      'AT,'#13#10'cast((SELECT COUNT(*) FROM EGYEDEK '#13#10'  where ( EGYEDEK.SZUL' +
      'DAT < NN.NAP) AND  '#13#10'        ((EGYEDEK.KIKDAT > NN.NAP) OR (egye' +
      'dek.KIKDAT is null )) '#13#10'   AND ((EGYEDEK.ALLDAT IS NULL) OR (EGY' +
      'EDEK.ALLDAT <= NN.NAP))    '#13#10'   AND MONTHS_BETWEEN( NN.NAP, EGYE' +
      'DEK.SZULDAT) > 6 AND'#13#10'       MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZU' +
      'LDAT) <=12  /*1*/) AS NUMERIC(10,0) )  AS HAT_TIZENKETTO,'#13#10'cast(' +
      '(SELECT COUNT(*) FROM EGYEDEK '#13#10'  where ( EGYEDEK.SZULDAT < NN.N' +
      'AP) AND  '#13#10'        ((EGYEDEK.KIKDAT > NN.NAP) OR (egyedek.KIKDAT' +
      ' is null )) '#13#10'   AND ((EGYEDEK.ALLDAT IS NULL) OR (EGYEDEK.ALLDA' +
      'T <= NN.NAP))    '#13#10'   AND MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZULDA' +
      'T) > 12 AND '#13#10'       MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZULDAT) <=' +
      ' 24 /*1*/) AS NUMERIC(10,0) )  AS T12_HUSZONNEGY,'#13#10'cast((SELECT ' +
      'COUNT(*) FROM EGYEDEK '#13#10'  where ( EGYEDEK.SZULDAT < NN.NAP) AND ' +
      ' '#13#10'        ((EGYEDEK.KIKDAT > NN.NAP) OR (egyedek.KIKDAT is null' +
      ' )) '#13#10'   AND ((EGYEDEK.ALLDAT IS NULL) OR (EGYEDEK.ALLDAT <= NN.' +
      'NAP))    '#13#10'   AND MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZULDAT) > 6 A' +
      'ND '#13#10'       MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZULDAT) <= 24 /*1*/' +
      ') AS NUMERIC(10,0) ) AS HAT_HUSZONNEGY,   '#13#10'cast((SELECT COUNT(*' +
      ') FROM EGYEDEK '#13#10'  where ((egyedek.KIKDAT is null AND EGYEDEK.SZ' +
      'ULDAT < NN.NAP) OR'#13#10'    (EGYEDEK.KIKDAT > NN.NAP)) '#13#10'   AND ((EG' +
      'YEDEK.ALLDAT IS NULL) OR (EGYEDEK.ALLDAT <= NN.NAP))        '#13#10'  ' +
      ' AND MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZULDAT) > 24 /*1*/ )  AS N' +
      'UMERIC(10,0) ) AS HUSZONEGY_TOL,'#13#10'cast((SELECT COUNT(*) FROM EGY' +
      'EDEK '#13#10'  WHERE (EGYEDEK.SZULDAT < NN.NAP) '#13#10'  AND ((EGYEDEK.KIKD' +
      'AT IS NULL) OR (EGYEDEK.KIKDAT > NN.NAP))'#13#10'  AND ((EGYEDEK.ALLDA' +
      'T IS NULL) OR (EGYEDEK.ALLDAT <= NN.NAP)) /*1*/ ) AS NUMERIC(10,' +
      '0) ) as LETSZAM'#13#10'FROM TMP_NAPOK NN '#13#10'WHERE NN.NAP < SYSDATE'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT '#13#10'NN.NAP,'#13#10'cast((SELECT COUNT(*) FROM EGYEDEK '#13#10'  where (' +
      ' EGYEDEK.SZULDAT < NN.NAP) '#13#10'    AND ((EGYEDEK.ALLDAT IS NULL) O' +
      'R (EGYEDEK.ALLDAT <= NN.NAP ))'#13#10'    AND ((EGYEDEK.KIKDAT IS NULL' +
      ') OR (EGYEDEK.KIKDAT > NN.NAP))  '#13#10'    AND MONTHS_BETWEEN( NN.NA' +
      'P, EGYEDEK.SZULDAT) <= 6  /*1*/ ) AS NUMERIC(10,0) )  AS NULLA_H' +
      'AT,'#13#10'cast((SELECT COUNT(*) FROM EGYEDEK '#13#10'  where ( EGYEDEK.SZUL' +
      'DAT < NN.NAP) AND  '#13#10'        ((EGYEDEK.KIKDAT > NN.NAP) OR (egye' +
      'dek.KIKDAT is null )) '#13#10'   AND ((EGYEDEK.ALLDAT IS NULL) OR (EGY' +
      'EDEK.ALLDAT <= NN.NAP))    '#13#10'   AND MONTHS_BETWEEN( NN.NAP, EGYE' +
      'DEK.SZULDAT) > 6 AND'#13#10'       MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZU' +
      'LDAT) <=12  /*1*/) AS NUMERIC(10,0) )  AS HAT_TIZENKETTO,'#13#10'cast(' +
      '(SELECT COUNT(*) FROM EGYEDEK '#13#10'  where ( EGYEDEK.SZULDAT < NN.N' +
      'AP) AND  '#13#10'        ((EGYEDEK.KIKDAT > NN.NAP) OR (egyedek.KIKDAT' +
      ' is null )) '#13#10'   AND ((EGYEDEK.ALLDAT IS NULL) OR (EGYEDEK.ALLDA' +
      'T <= NN.NAP))    '#13#10'   AND MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZULDA' +
      'T) > 12 AND '#13#10'       MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZULDAT) <=' +
      ' 24 /*1*/) AS NUMERIC(10,0) )  AS T12_HUSZONNEGY,'#13#10'cast((SELECT ' +
      'COUNT(*) FROM EGYEDEK '#13#10'  where ( EGYEDEK.SZULDAT < NN.NAP) AND ' +
      ' '#13#10'        ((EGYEDEK.KIKDAT > NN.NAP) OR (egyedek.KIKDAT is null' +
      ' )) '#13#10'   AND ((EGYEDEK.ALLDAT IS NULL) OR (EGYEDEK.ALLDAT <= NN.' +
      'NAP))    '#13#10'   AND MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZULDAT) > 6 A' +
      'ND '#13#10'       MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZULDAT) <= 24 /*1*/' +
      ') AS NUMERIC(10,0) ) AS HAT_HUSZONNEGY,   '#13#10'cast((SELECT COUNT(*' +
      ') FROM EGYEDEK '#13#10'  where ((egyedek.KIKDAT is null AND EGYEDEK.SZ' +
      'ULDAT < NN.NAP) OR'#13#10'    (EGYEDEK.KIKDAT > NN.NAP)) '#13#10'   AND ((EG' +
      'YEDEK.ALLDAT IS NULL) OR (EGYEDEK.ALLDAT <= NN.NAP))        '#13#10'  ' +
      ' AND MONTHS_BETWEEN( NN.NAP, EGYEDEK.SZULDAT) > 24 /*1*/ )  AS N' +
      'UMERIC(10,0) ) AS HUSZONEGY_TOL,'#13#10'cast((SELECT COUNT(*) FROM EGY' +
      'EDEK '#13#10'  WHERE (EGYEDEK.SZULDAT < NN.NAP) '#13#10'  AND ((EGYEDEK.KIKD' +
      'AT IS NULL) OR (EGYEDEK.KIKDAT > NN.NAP))'#13#10'  AND ((EGYEDEK.ALLDA' +
      'T IS NULL) OR (EGYEDEK.ALLDAT <= NN.NAP)) /*1*/ ) AS NUMERIC(10,' +
      '0) ) as LETSZAM'#13#10'FROM TMP_NAPOK NN '#13#10'WHERE NN.NAP < SYSDATE'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 16
    Top = 8
    object sdsGn14NAP: TDateTimeField
      FieldName = 'NAP'
    end
    object sdsGn14NULLA_HAT: TBCDField
      FieldName = 'NULLA_HAT'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object sdsGn14HAT_TIZENKETTO: TBCDField
      FieldName = 'HAT_TIZENKETTO'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object sdsGn14T12_HUSZONNEGY: TBCDField
      FieldName = 'T12_HUSZONNEGY'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object sdsGn14HAT_HUSZONNEGY: TBCDField
      FieldName = 'HAT_HUSZONNEGY'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object sdsGn14HUSZONEGY_TOL: TBCDField
      FieldName = 'HUSZONEGY_TOL'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object sdsGn14LETSZAM: TBCDField
      FieldName = 'LETSZAM'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
  end
  object frxDBGn14: TfrxDBDataset
    UserName = 'frxDBGn14'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NAP=NAP'
      'NULLA_HAT=NULLA_HAT'
      'HAT_TIZENKETTO=HAT_TIZENKETTO'
      'T12_HUSZONNEGY=T12_HUSZONNEGY'
      'HAT_HUSZONNEGY=HAT_HUSZONNEGY'
      'HUSZONEGY_TOL=HUSZONEGY_TOL'
      'LETSZAM=LETSZAM')
    DataSet = sdsGn14
    Left = 80
    Top = 8
  end
end
