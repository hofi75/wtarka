inherited frmSzarmLista: TfrmSzarmLista
  Left = 258
  Top = 201
  Width = 516
  Height = 348
  Caption = 'Kimutat'#225's az egyedek sz'#225'rmaz'#225'si adatair'#243'l'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 280
    Width = 508
    inherited BitBtn1: TTalBitBtn
      Left = 323
    end
    inherited BitBtn2: TTalBitBtn
      Left = 421
    end
  end
  inherited Panel2: TPanel
    Width = 508
    Height = 280
    object TalGroupBox3: TTalGroupBox
      Left = 255
      Top = 186
      Width = 218
      Height = 75
      Caption = 'Lista kimenete '
      TabOrder = 4
      object rbExcel: TRadioButton
        Left = 10
        Top = 43
        Width = 71
        Height = 17
        Caption = 'Excel f'#225'jl'
        TabOrder = 0
      end
      object rbLista: TRadioButton
        Left = 10
        Top = 19
        Width = 63
        Height = 17
        Caption = 'Lista'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object TalGroupBox1: TTalGroupBox
      Left = 24
      Top = 186
      Width = 217
      Height = 75
      Caption = ' List'#225'n szerepl'#337' azonos'#237't'#243'  '
      TabOrder = 2
      object rbPsAzon: TTalRadioButton
        Left = 11
        Top = 45
        Width = 135
        Height = 17
        Caption = 'Haszn'#225'lati sz'#225'm'
        TabOrder = 0
      end
      object rbEnar: TTalRadioButton
        Left = 11
        Top = 21
        Width = 135
        Height = 17
        Caption = 'Teljes azonos'#237't'#243
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object TalGroupBox4: TTalGroupBox
      Left = 24
      Top = 14
      Width = 217
      Height = 75
      Caption = ' List'#225'zand'#243' egyedek '
      TabOrder = 0
      object rbCsakElo: TTalRadioButton
        Left = 11
        Top = 46
        Width = 150
        Height = 17
        Caption = 'csak '#233'l'#337' egyedek'
        TabOrder = 1
      end
      object rbMindenki: TTalRadioButton
        Left = 11
        Top = 22
        Width = 113
        Height = 17
        Caption = 'Minden egyed'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
    end
    object TalGroupBox2: TTalGroupBox
      Left = 24
      Top = 90
      Width = 217
      Height = 88
      Caption = ' '
      TabOrder = 1
      object rbCsakTehen: TTalRadioButton
        Left = 11
        Top = 60
        Width = 79
        Height = 17
        Caption = 'csak teh'#233'n'
        TabOrder = 2
      end
      object rbCsakUszo: TTalRadioButton
        Left = 11
        Top = 36
        Width = 79
        Height = 17
        Caption = 'csak '#252'sz'#337
        TabOrder = 1
      end
      object rbMind: TTalRadioButton
        Left = 11
        Top = 12
        Width = 113
        Height = 17
        Caption = #220'sz'#337' '#233's teh'#233'n'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
    end
    object TalGroupBox5: TTalGroupBox
      Left = 256
      Top = 90
      Width = 217
      Height = 75
      Caption = 'Rendezetts'#233'g '
      TabOrder = 3
      object rbApa: TTalRadioButton
        Left = 11
        Top = 45
        Width = 174
        Height = 17
        Caption = 'Apa azonos'#237't'#243'ra n'#246'vekv'#337
        TabOrder = 0
      end
      object rbEgyed: TTalRadioButton
        Left = 11
        Top = 21
        Width = 190
        Height = 17
        Caption = 'Egyed azonos'#237't'#243'ra n'#246'vekv'#337
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
  end
  object sdsNyomtat: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'E.ENAR,'#13#10'SUBSTR(e.ENAR,6,4) as PSION_AZONOSITO,'#13#10'E.SZULD' +
      'AT,'#13#10'E.ANYA_ENAR,'#13#10'A.NEV AS ANYANEV,'#13#10'A.KKOD || '#39'- '#39' || KANYA.KO' +
      'D_NEV AS ANYAKONS,'#13#10'A.SZULDAT AS ANYASZULDAT,'#13#10'E.APAKLSZ AS APAA' +
      'ZON,'#13#10'APA1.NEV AS APANEV,'#13#10'APA1.SZULDAT AS APASZULDAT,'#13#10'APA1.KKO' +
      'D || '#39'- '#39' || KAPA.KOD_NEV AS APAKONS,'#13#10'ANA.ENAR AS ANAAZON,'#13#10'ANA' +
      '.NEV AS ANANEV,'#13#10'ANA.SZULDAT AS ANASZULDAT,'#13#10'ANA.KKOD || '#39'- '#39' ||' +
      ' KANA.KOD_NEV AS ANAKONS,'#13#10'ANP.KPLSZ AS ANPAZON,'#13#10'ANP.NEV AS ANP' +
      'NEV,'#13#10'ANP.SZULDAT AS ANPSZULDAT,'#13#10'ANP.KKOD  || '#39'- '#39' || KANP.KOD_' +
      'NEV AS ANPKONS,'#13#10'APA1.AENAR AS APANANYA_AZON,'#13#10'APA1.ANYANEV AS A' +
      'PAANYANEV,'#13#10'APA1.APAKPLSZ AS APAPAZON,'#13#10'APAP.NEV AS APAPNEV,'#13#10'AP' +
      'AP.KKOD || '#39' - '#39' || KAPP.KOD_NEV AS APAPKONS,'#13#10'APAP.SZULDAT AS A' +
      'PAPSZULDAT'#13#10'FROM EGYEDEK E'#13#10'LEFT JOIN EGYEDEK A ON A.ENAR=E.ANYA' +
      '_ENAR AND TRIM(E.ANYA_ENAR) IS NOT NULL'#13#10'LEFT JOIN EGYEDEK ANA O' +
      'N ANA.ENAR=A.ANYA_ENAR AND TRIM(A.ANYA_ENAR) IS NOT NULL'#13#10'LEFT J' +
      'OIN APA APA1 ON APA1.KPLSZ=E.APAKLSZ '#13#10'LEFT JOIN APA ANP ON ANP.' +
      'KPLSZ=ANA.APAKLSZ'#13#10'LEFT JOIN APA APAP ON APAP.KPLSZ=APA1.APAKPLS' +
      'Z'#13#10'LEFT JOIN KODOK KANYA ON KANYA.KOD=A.KKOD AND KANYA.KODTIPUSO' +
      'K_TIPUSKOD='#39'KONSTR'#39#13#10'LEFT JOIN KODOK KAPA ON KAPA.KOD=APA1.KKOD ' +
      'AND KAPA.KODTIPUSOK_TIPUSKOD='#39'KONSTR'#39#13#10'LEFT JOIN KODOK KANA ON K' +
      'ANA.KOD=ANA.KKOD AND KANA.KODTIPUSOK_TIPUSKOD='#39'KONSTR'#39#13#10'LEFT JOI' +
      'N KODOK KANP ON KANP.KOD=ANP.KKOD AND KANP.KODTIPUSOK_TIPUSKOD='#39 +
      'KONSTR'#39#13#10'LEFT JOIN KODOK KAPP ON KAPP.KOD=APAP.KKOD AND KAPP.KOD' +
      'TIPUSOK_TIPUSKOD='#39'KONSTR'#39#13#10'WHERE E.IVAR = '#39'2'#39#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'E.ENAR,'#13#10'SUBSTR(e.ENAR,6,4) as PSION_AZONOSITO,'#13#10'E.SZULD' +
      'AT,'#13#10'E.ANYA_ENAR,'#13#10'A.NEV AS ANYANEV,'#13#10'A.KKOD || '#39'- '#39' || KANYA.KO' +
      'D_NEV AS ANYAKONS,'#13#10'A.SZULDAT AS ANYASZULDAT,'#13#10'E.APAKLSZ AS APAA' +
      'ZON,'#13#10'APA1.NEV AS APANEV,'#13#10'APA1.SZULDAT AS APASZULDAT,'#13#10'APA1.KKO' +
      'D || '#39'- '#39' || KAPA.KOD_NEV AS APAKONS,'#13#10'ANA.ENAR AS ANAAZON,'#13#10'ANA' +
      '.NEV AS ANANEV,'#13#10'ANA.SZULDAT AS ANASZULDAT,'#13#10'ANA.KKOD || '#39'- '#39' ||' +
      ' KANA.KOD_NEV AS ANAKONS,'#13#10'ANP.KPLSZ AS ANPAZON,'#13#10'ANP.NEV AS ANP' +
      'NEV,'#13#10'ANP.SZULDAT AS ANPSZULDAT,'#13#10'ANP.KKOD  || '#39'- '#39' || KANP.KOD_' +
      'NEV AS ANPKONS,'#13#10'APA1.AENAR AS APANANYA_AZON,'#13#10'APA1.ANYANEV AS A' +
      'PAANYANEV,'#13#10'APA1.APAKPLSZ AS APAPAZON,'#13#10'APAP.NEV AS APAPNEV,'#13#10'AP' +
      'AP.KKOD || '#39' - '#39' || KAPP.KOD_NEV AS APAPKONS,'#13#10'APAP.SZULDAT AS A' +
      'PAPSZULDAT'#13#10'FROM EGYEDEK E'#13#10'LEFT JOIN EGYEDEK A ON A.ENAR=E.ANYA' +
      '_ENAR AND TRIM(E.ANYA_ENAR) IS NOT NULL'#13#10'LEFT JOIN EGYEDEK ANA O' +
      'N ANA.ENAR=A.ANYA_ENAR AND TRIM(A.ANYA_ENAR) IS NOT NULL'#13#10'LEFT J' +
      'OIN APA APA1 ON APA1.KPLSZ=E.APAKLSZ '#13#10'LEFT JOIN APA ANP ON ANP.' +
      'KPLSZ=ANA.APAKLSZ'#13#10'LEFT JOIN APA APAP ON APAP.KPLSZ=APA1.APAKPLS' +
      'Z'#13#10'LEFT JOIN KODOK KANYA ON KANYA.KOD=A.KKOD AND KANYA.KODTIPUSO' +
      'K_TIPUSKOD='#39'KONSTR'#39#13#10'LEFT JOIN KODOK KAPA ON KAPA.KOD=APA1.KKOD ' +
      'AND KAPA.KODTIPUSOK_TIPUSKOD='#39'KONSTR'#39#13#10'LEFT JOIN KODOK KANA ON K' +
      'ANA.KOD=ANA.KKOD AND KANA.KODTIPUSOK_TIPUSKOD='#39'KONSTR'#39#13#10'LEFT JOI' +
      'N KODOK KANP ON KANP.KOD=ANP.KKOD AND KANP.KODTIPUSOK_TIPUSKOD='#39 +
      'KONSTR'#39#13#10'LEFT JOIN KODOK KAPP ON KAPP.KOD=APAP.KKOD AND KAPP.KOD' +
      'TIPUSOK_TIPUSKOD='#39'KONSTR'#39#13#10'WHERE E.IVAR = '#39'2'#39#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 256
    Top = 32
    object sdsNyomtatENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsNyomtatPSION_AZONOSITO: TWideStringField
      FieldName = 'PSION_AZONOSITO'
      ReadOnly = True
      Size = 4
    end
    object sdsNyomtatSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsNyomtatANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 10
    end
    object sdsNyomtatANYANEV: TWideStringField
      FieldName = 'ANYANEV'
      Size = 30
    end
    object sdsNyomtatANYAKONS: TWideStringField
      FieldName = 'ANYAKONS'
      ReadOnly = True
      Size = 35
    end
    object sdsNyomtatANYASZULDAT: TDateTimeField
      FieldName = 'ANYASZULDAT'
    end
    object sdsNyomtatAPAAZON: TWideStringField
      FieldName = 'APAAZON'
      Size = 10
    end
    object sdsNyomtatAPANEV: TWideStringField
      FieldName = 'APANEV'
      Size = 40
    end
    object sdsNyomtatAPASZULDAT: TDateTimeField
      FieldName = 'APASZULDAT'
    end
    object sdsNyomtatAPAKONS: TWideStringField
      FieldName = 'APAKONS'
      ReadOnly = True
      Size = 35
    end
    object sdsNyomtatANAAZON: TWideStringField
      FieldName = 'ANAAZON'
      Size = 14
    end
    object sdsNyomtatANANEV: TWideStringField
      FieldName = 'ANANEV'
      Size = 30
    end
    object sdsNyomtatANASZULDAT: TDateTimeField
      FieldName = 'ANASZULDAT'
    end
    object sdsNyomtatANAKONS: TWideStringField
      FieldName = 'ANAKONS'
      ReadOnly = True
      Size = 35
    end
    object sdsNyomtatANPAZON: TWideStringField
      FieldName = 'ANPAZON'
      Size = 5
    end
    object sdsNyomtatANPNEV: TWideStringField
      FieldName = 'ANPNEV'
      Size = 40
    end
    object sdsNyomtatANPSZULDAT: TDateTimeField
      FieldName = 'ANPSZULDAT'
    end
    object sdsNyomtatANPKONS: TWideStringField
      FieldName = 'ANPKONS'
      ReadOnly = True
      Size = 35
    end
    object sdsNyomtatAPANANYA_AZON: TWideStringField
      FieldName = 'APANANYA_AZON'
      Size = 10
    end
    object sdsNyomtatAPAANYANEV: TWideStringField
      FieldName = 'APAANYANEV'
      Size = 40
    end
    object sdsNyomtatAPAPAZON: TWideStringField
      FieldName = 'APAPAZON'
      Size = 5
    end
    object sdsNyomtatAPAPNEV: TWideStringField
      FieldName = 'APAPNEV'
      Size = 40
    end
    object sdsNyomtatAPAPKONS: TWideStringField
      FieldName = 'APAPKONS'
      ReadOnly = True
      Size = 36
    end
    object sdsNyomtatAPAPSZULDAT: TDateTimeField
      FieldName = 'APAPSZULDAT'
    end
  end
  object dtsNyomtat: TDataSource
    DataSet = sdsNyomtat
    Left = 312
    Top = 32
  end
  object rptNyomtat: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 41141.831344756950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      ''
      'begin'
      '  IF <PSION> = '#39'IGEN'#39' then begin'
      '    memo61.text:=<frxDBNyomtat."PSION_AZONOSITO">;'
      '  end else begin'
      '    s:= <frxDBNyomtat."ENAR">;'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo61.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(' +
        's,10,1)'
      '    Else'
      '      If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '        memo61.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Cop' +
        'y(s,12,1) ;'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 448
    Top = 40
    Datasets = <
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end
      item
        DataSet = frxDBNyomtat
        DataSetName = 'frxDBNyomtat'
      end>
    Variables = <
      item
        Name = ' New Category1'
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
        Name = 'New Variable1'
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
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 130.393846025000000000
          Top = 49.133889999999990000
          Width = 457.323007950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kimutat'#258#711's az egyedek sz'#258#711'rmaz'#258#711'si adatair'#258#322'l')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
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
        object Memo8: TfrxMemoView
          Left = 514.015762680000000000
          Top = 22.677180000000000000
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
          Left = 563.149970000000000000
          Top = 22.677180000000000000
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
        object SysMemo2: TfrxSysMemoView
          Left = 631.181114570000000000
          Top = 22.677180000000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TIME]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 86.929190000000000000
          Top = 94.488250000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          StretchMode = smActualHeight
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SzuroFeltetelek]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 45.354311179999990000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo36: TfrxMemoView
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 81.259842520000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#313#177'r'#313#8216' felt'#258#169'telek:')
          ParentFont = False
          WordWrap = False
        end
        object Memo1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 22.677180000000000000
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
        end
        object Memo6: TfrxMemoView
          Left = 83.149660000000000000
          Top = 22.677180000000000000
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
        end
        object Memo37: TfrxMemoView
          Left = 275.905690000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ENAR_KOD'
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBdtsTiborTenyeszet."ENAR_KOD"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 81.259842520000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Rendezetts'#258#169'g:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 86.929190000000000000
          Top = 75.590600000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Rendezettseg]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 49.133890000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBNyomtat
        DataSetName = 'frxDBNyomtat'
        RowCount = 0
        object SysMemo8: TfrxSysMemoView
          Width = 37.795280470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 45.354362440000000000
          Width = 120.944913620000000000
          Height = 18.897650000000000000
          DataSet = frxDBNyomtat
          DataSetName = 'frxDBNyomtat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBNyomtat."AZONOSITO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 173.858380000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SZULDAT'
          DataSet = frxDBNyomtat
          DataSetName = 'frxDBNyomtat'
          Memo.UTF8 = (
            '[frxDBNyomtat."SZULDAT"]')
        end
        object Memo7: TfrxMemoView
          Left = 264.567100000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'APAAZON'
          DataSet = frxDBNyomtat
          DataSetName = 'frxDBNyomtat'
          Memo.UTF8 = (
            '[frxDBNyomtat."APAAZON"]')
        end
        object Memo10: TfrxMemoView
          Left = 264.567100000000000000
          Top = 22.677180000000020000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_ENAR'
          DataSet = frxDBNyomtat
          DataSetName = 'frxDBNyomtat'
          Memo.UTF8 = (
            '[frxDBNyomtat."ANYA_ENAR"]')
        end
        object Memo11: TfrxMemoView
          Left = 411.968770000000000000
          Top = 22.677180000000020000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'ANPAZON'
          DataSet = frxDBNyomtat
          DataSetName = 'frxDBNyomtat'
          Memo.UTF8 = (
            '[frxDBNyomtat."ANPAZON"]')
        end
        object Memo14: TfrxMemoView
          Left = 566.929499999999900000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'APANANYA_AZON'
          DataSet = frxDBNyomtat
          DataSetName = 'frxDBNyomtat'
          Memo.UTF8 = (
            '[frxDBNyomtat."APANANYA_AZON"]')
        end
        object Memo15: TfrxMemoView
          Left = 566.929499999999900000
          Top = 22.677180000000020000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'ANAAZON'
          DataSet = frxDBNyomtat
          DataSetName = 'frxDBNyomtat'
          Memo.UTF8 = (
            '[frxDBNyomtat."ANAAZON"]')
        end
        object Memo16: TfrxMemoView
          Left = 411.968770000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'APAPAZON'
          DataSet = frxDBNyomtat
          DataSetName = 'frxDBNyomtat'
          Memo.UTF8 = (
            '[frxDBNyomtat."APAPAZON"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        object Memo38: TfrxMemoView
          Left = 695.433520000000000000
          Width = 15.118110240000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 638.740570000000000000
          Width = 30.236240000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'oldal:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 684.094930000000000000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
        object Memo9: TfrxMemoView
          Left = 668.976810000000000000
          Width = 15.118110240000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TotalPages#]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338582680000000000
          Width = 151.181200000000000000
          Height = 15.118110240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'List'#258#711'k - Kimutat'#258#711's az egyedek sz'#258#711'rmaz'#258#711'si adatar'#258#322'l')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 52.913420000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = -0.000000000000000444
          Width = 34.015748030000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'sorsz.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 45.354360000000010000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          Left = 49.133890000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'egyed azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 173.858380000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = frxDBNyomtat
          DataSetName = 'frxDBNyomtat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'l.d'#258#711'tuma')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 264.567100000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Apa azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 411.968770000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Apai nagyapa')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 411.968770000000000000
          Top = 22.677179999999990000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Anyai nagyapa')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 264.567100000000000000
          Top = 22.677179999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBNyomtat
          DataSetName = 'frxDBNyomtat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Anya azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 566.929500000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'apai nagyanya')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 566.929500000000000000
          Top = 22.677179999999990000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'anyai nagyanya')
          ParentFont = False
        end
      end
    end
  end
  object frxDBNyomtat: TfrxDBDataset
    UserName = 'frxDBNyomtat'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'PSION_AZONOSITO=PSION_AZONOSITO'
      'SZULDAT=SZULDAT'
      'ANYA_ENAR=ANYA_ENAR'
      'ANYANEV=ANYANEV'
      'ANYAKONS=ANYAKONS'
      'ANYASZULDAT=ANYASZULDAT'
      'APAAZON=APAAZON'
      'APANEV=APANEV'
      'APASZULDAT=APASZULDAT'
      'APAKONS=APAKONS'
      'ANAAZON=ANAAZON'
      'ANANEV=ANANEV'
      'ANASZULDAT=ANASZULDAT'
      'ANAKONS=ANAKONS'
      'ANPAZON=ANPAZON'
      'ANPNEV=ANPNEV'
      'ANPSZULDAT=ANPSZULDAT'
      'ANPKONS=ANPKONS'
      'APANANYA_AZON=APANANYA_AZON'
      'APAANYANEV=APAANYANEV'
      'APAPAZON=APAPAZON'
      'APAPNEV=APAPNEV'
      'APAPKONS=APAPKONS'
      'APAPSZULDAT=APAPSZULDAT')
    DataSet = sdsNyomtat
    Left = 400
    Top = 40
  end
end
