inherited frmCsaladfa: TfrmCsaladfa
  Left = 801
  Top = 193
  Width = 507
  Height = 278
  Caption = 'Csal'#225'dfa megjelen'#237't'#233'se'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 199
    Width = 491
    inherited BitBtn1: TTalBitBtn
      Left = 310
    end
    inherited BitBtn2: TTalBitBtn
      Left = 412
      Caption = 'M'#233'gsem'
    end
  end
  inherited Panel2: TPanel
    Width = 491
    Height = 199
    object TalLabel3: TTalLabel
      Left = 72
      Top = 124
      Width = 126
      Height = 13
      Caption = 'P'#225'ros'#237't'#225'sra megadott bika:'
    end
    object TalSpeedButton1: TTalSpeedButton
      Left = 335
      Top = 119
      Width = 25
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = TalSpeedButton1Click
    end
    object TalLabel15: TTalLabel
      Left = 70
      Top = 80
      Width = 82
      Height = 13
      Caption = 'Egyed azonos'#237't'#243':'
    end
    object edtParBika: TTalMaskEdit
      Left = 210
      Top = 120
      Width = 119
      Height = 21
      TabOrder = 0
      OnExit = edtParBikaExit
    end
    object edtAzonosito: TTalEdit
      Left = 210
      Top = 75
      Width = 119
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
      OnExit = edtAzonositoExit
    end
  end
  object sdsLista: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'CS.ID,'#13#10'CS.SZULOK,'#13#10'COALESCE(((SELECT count(1) FROM OSOK' +
      ' WHERE OSOK.EGYED = :ANYA1 AND OSOK.OS=cs.szulok)  +'#13#10'          ' +
      '(SELECT count(1) FROM OSOK WHERE OSOK.EGYED = :APA1 AND OSOK.OS=' +
      'cs.szulok)),0) AS VS,'#13#10'CS.GEN_1,'#13#10'COALESCE(((SELECT count(1) FRO' +
      'M OSOK WHERE OSOK.EGYED = :ANYA2 AND OSOK.OS=cs.gen_1)  +'#13#10'     ' +
      '     (SELECT count(1) FROM OSOK WHERE OSOK.EGYED = :APA2 AND OSO' +
      'K.OS=cs.gen_1)),0) AS V1,'#13#10'CS.GEN_2,'#13#10'COALESCE(((SELECT count(1)' +
      ' FROM OSOK WHERE OSOK.EGYED = :ANYA3 AND OSOK.OS=cs.gen_2)  +'#13#10' ' +
      '         (SELECT count(1) FROM OSOK WHERE OSOK.EGYED = :APA3 AND' +
      ' OSOK.OS=cs.gen_2)),0) AS V2,'#13#10'CS.GEN_3,'#13#10'COALESCE(((SELECT coun' +
      't(1) FROM OSOK WHERE OSOK.EGYED = :ANYA4 AND OSOK.OS=cs.gen_3)  ' +
      '+'#13#10'          (SELECT count(1) FROM OSOK WHERE OSOK.EGYED = :APA4' +
      ' AND OSOK.OS=cs.gen_3)),0) AS V3,'#13#10'CS.GEN_4,'#13#10'COALESCE(((SELECT ' +
      'count(1) FROM OSOK WHERE OSOK.EGYED = :ANYA5 AND OSOK.OS=cs.gen_' +
      '4)  +'#13#10'          (SELECT count(1) FROM OSOK WHERE OSOK.EGYED = :' +
      'APA5 AND OSOK.OS=cs.gen_4)),0) AS V4'#13#10'FROM CSALADFA CS'#13#10'WHERE CS' +
      '.SZUL_EGYED = :SZ_EGYED'#13#10'ORDER BY ID'
    DataSet.Parameters = <
      item
        Name = 'ANYA1'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'APA1'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'ANYA2'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'APA2'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'ANYA3'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'APA3'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'ANYA4'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'APA4'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'ANYA5'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'APA5'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'SZ_EGYED'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'CS.ID,'#13#10'CS.SZULOK,'#13#10'COALESCE(((SELECT count(1) FROM OSOK' +
      ' WHERE OSOK.EGYED = :ANYA1 AND OSOK.OS=cs.szulok)  +'#13#10'          ' +
      '(SELECT count(1) FROM OSOK WHERE OSOK.EGYED = :APA1 AND OSOK.OS=' +
      'cs.szulok)),0) AS VS,'#13#10'CS.GEN_1,'#13#10'COALESCE(((SELECT count(1) FRO' +
      'M OSOK WHERE OSOK.EGYED = :ANYA2 AND OSOK.OS=cs.gen_1)  +'#13#10'     ' +
      '     (SELECT count(1) FROM OSOK WHERE OSOK.EGYED = :APA2 AND OSO' +
      'K.OS=cs.gen_1)),0) AS V1,'#13#10'CS.GEN_2,'#13#10'COALESCE(((SELECT count(1)' +
      ' FROM OSOK WHERE OSOK.EGYED = :ANYA3 AND OSOK.OS=cs.gen_2)  +'#13#10' ' +
      '         (SELECT count(1) FROM OSOK WHERE OSOK.EGYED = :APA3 AND' +
      ' OSOK.OS=cs.gen_2)),0) AS V2,'#13#10'CS.GEN_3,'#13#10'COALESCE(((SELECT coun' +
      't(1) FROM OSOK WHERE OSOK.EGYED = :ANYA4 AND OSOK.OS=cs.gen_3)  ' +
      '+'#13#10'          (SELECT count(1) FROM OSOK WHERE OSOK.EGYED = :APA4' +
      ' AND OSOK.OS=cs.gen_3)),0) AS V3,'#13#10'CS.GEN_4,'#13#10'COALESCE(((SELECT ' +
      'count(1) FROM OSOK WHERE OSOK.EGYED = :ANYA5 AND OSOK.OS=cs.gen_' +
      '4)  +'#13#10'          (SELECT count(1) FROM OSOK WHERE OSOK.EGYED = :' +
      'APA5 AND OSOK.OS=cs.gen_4)),0) AS V4'#13#10'FROM CSALADFA CS'#13#10'WHERE CS' +
      '.SZUL_EGYED = :SZ_EGYED'#13#10'ORDER BY ID'
    Provider.DataSet.Parameters = <
      item
        Name = 'ANYA1'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'APA1'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'ANYA2'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'APA2'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'ANYA3'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'APA3'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'ANYA4'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'APA4'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'ANYA5'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'APA5'
        DataType = ftString
        Size = 2
        Value = #39#39
      end
      item
        Name = 'SZ_EGYED'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 115
    Top = 152
    object sdsListaID: TBCDField
      FieldName = 'ID'
      Precision = 18
      Size = 0
    end
    object sdsListaSZULOK: TWideStringField
      FieldName = 'SZULOK'
      Size = 16
    end
    object sdsListaVS: TBCDField
      FieldName = 'VS'
      ReadOnly = True
      Precision = 32
    end
    object sdsListaGEN_1: TWideStringField
      FieldName = 'GEN_1'
    end
    object sdsListaV1: TBCDField
      FieldName = 'V1'
      ReadOnly = True
      Precision = 32
    end
    object sdsListaGEN_2: TWideStringField
      FieldName = 'GEN_2'
    end
    object sdsListaV2: TBCDField
      FieldName = 'V2'
      ReadOnly = True
      Precision = 32
    end
    object sdsListaGEN_3: TWideStringField
      FieldName = 'GEN_3'
    end
    object sdsListaV3: TBCDField
      FieldName = 'V3'
      ReadOnly = True
      Precision = 32
    end
    object sdsListaGEN_4: TWideStringField
      FieldName = 'GEN_4'
    end
    object sdsListaV4: TBCDField
      FieldName = 'V4'
      ReadOnly = True
      Precision = 32
    end
  end
  object dtsLista: TDataSource
    DataSet = sdsLista
    Left = 174
    Top = 152
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'SZULOK=SZULOK'
      'VS=VS'
      'GEN_1=GEN_1'
      'V1=V1'
      'GEN_2=GEN_2'
      'V2=V2'
      'GEN_3=GEN_3'
      'V3=V3'
      'GEN_4=GEN_4'
      'V4=V4')
    OpenDataSource = False
    DataSet = sdsLista
    Left = 232
    Top = 152
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 39230.840396157400000000
    ReportOptions.LastChange = 41140.436403495370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      ''
      'procedure Memo12OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo12OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s:=<frxDBLista."AZONOSITO">;'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo12.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(' +
        's,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo12.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy' +
        '(s,12,1)'
      '     else'
      '       memo12.text := <frxDBLista."AZONOSITO">;'
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  if <frxDBLista."VS"> > 1 then'
      '//    Memo7.style := '#39'vastag'#39
      '//  else'
      '//    Memo7.style := '#39'alap'#39';'
      'end;'
      ''
      'procedure Memo8OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  if <frxDBLista."V1"> > 1 then'
      '//    Memo8.style := '#39'vastag'#39
      '//  else'
      '//    Memo8.style := '#39'alap'#39';'
      'end;'
      ''
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  if <frxDBLista."V2"> > 1 then'
      '//    Memo10.style := '#39'vastag'#39
      '//  else'
      '//    Memo10.style := '#39'alap'#39';'
      'end;'
      ''
      'procedure Memo13OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  if <frxDBLista."V3"> > 1 then'
      '//    Memo13.style := '#39'vastag'#39
      '//  else'
      '//    Memo13.style := '#39'alap'#39';'
      'end;'
      ''
      'procedure Memo14OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '//  if <frxDBLista."V4"> > 1 then'
      '//    Memo14.style := '#39'vastag'#39
      '//  else'
      '//    Memo14.style := '#39'alap'#39';'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 296
    Top = 152
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
        Name = ' Parameterek'
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
        Name = 'ENAR_KOD'
        Value = Null
      end
      item
        Name = 'TENYESZET_NEv'
        Value = Null
      end
      item
        Name = 'ATKFT_KOD'
        Value = Null
      end
      item
        Name = 'PSION'
        Value = Null
      end>
    Style = <
      item
        Name = 'alap'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'vastag'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
      end>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSet = frmTibor.frxDBdtsTiborTenyeszet
      DataSetName = 'frxDBdtsTiborTenyeszet'
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
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
            'WinTarka - H'#258#351'shaszn'#258#351' szarvasmarha nyilv'#258#711'ntart'#258#322' program ')
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
        object Memo3: TfrxMemoView
          Left = 249.448980000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ENAR_KOD'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'XXX-XX-XX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."ENAR_KOD"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          Left = 64.252010000000000000
          Top = 15.118126100000000000
          Width = 177.637910000000000000
          Height = 18.897637800000000000
          DataField = 'TELEP_NEV'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."TELEP_NEV"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ATKOD'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."ATKOD"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 111.496196020000000000
          Top = 30.236240000000000000
          Width = 495.118307950000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Csal'#258#711'dfa t'#258#711'bl'#258#711'zat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Top = 68.031540000000010000
          Width = 716.220882520000000000
          Height = 18.897640240000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Megjelen'#258#173'tett egyedek: [SzuroFeltetelek]')
          ParentFont = False
          WordWrap = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 28.346446930000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
        RowCount = 0
        Stretched = True
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779529999999994000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo7OnBeforePrint'
          DataField = 'SZULOK'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."SZULOK"]')
        end
        object Memo8: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779529999999994000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo8OnBeforePrint'
          DataField = 'GEN_1'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."GEN_1"]')
        end
        object Memo10: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779529999999994000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          DataField = 'GEN_2'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."GEN_2"]')
        end
        object Memo13: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779529999999994000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          DataField = 'GEN_3'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."GEN_3"]')
        end
        object Memo14: TfrxMemoView
          Left = 570.709030000000000000
          Top = 3.779529999999994000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo14OnBeforePrint'
          DataField = 'GEN_4'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBLista."GEN_4"]')
        end
        object Line3: TfrxLineView
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 147.401670000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 287.244280000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 427.086890000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 566.929500000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 718.110700000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 26.456709999999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 313.700990000000000000
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
            'Csal'#258#711'dfa megjelen'#258#173't'#258#169'se')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baWidth
          Top = 30.236240000000010000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo64: TfrxMemoView
          Left = 175.748145000000000000
          Top = 7.559059999999988000
          Width = 79.370130000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '1.gener'#258#711'ci'#258#322)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 321.260050000000000000
          Top = 7.559059999999988000
          Width = 75.590600000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '2.gener'#258#711'ci'#258#322)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 459.212895000000000000
          Top = 7.559059999999988000
          Width = 79.370130000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '3.gener'#258#711'ci'#258#322)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 591.496445000000000000
          Top = 7.559059999999988000
          Width = 86.929190000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '4.gener'#258#711'ci'#258#322)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 22.677180000000000000
          Top = 7.559059999999988000
          Width = 105.826840000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'l'#313#8216'k')
          ParentFont = False
        end
      end
    end
  end
  object prcLista: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'CSALADFA_TOLTES'
    Parameters = <
      item
        Name = 'P_EGYED_AZON'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_ANYA_AZON'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'P_APA_AZON'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 360
    Top = 152
  end
end
