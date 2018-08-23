inherited frmEnarGyujt: TfrmEnarGyujt
  Left = 404
  Top = 217
  Width = 403
  Height = 268
  Caption = 'ENAR bejelnet'#337'k legy'#369'jt'#233'se'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 189
    Width = 387
    inherited BitBtn1: TTalBitBtn
      Left = 228
      Caption = 'Ind'#237't'#225's'
    end
    inherited BitBtn2: TTalBitBtn
      Left = 308
      Caption = 'Kil'#233'p'#233's'
    end
  end
  inherited Panel2: TPanel
    Width = 387
    Height = 189
    object TalLabel1: TTalLabel
      Left = 65
      Top = 79
      Width = 258
      Height = 32
      Alignment = taCenter
      Caption = 
        'Ezzel a funkci'#243'val lehet az ENAR bejelent'#233'shez az adatokat legy'#369 +
        'jteni.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
  end
  inherited ActionList1: TActionList
    Left = 324
    Top = 20
  end
  object qryBejelent: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      'CASE WHEN trim(e.szorsz) is null THEN '#39'HU'#39
      'ELSE SUBSTR(E.szorsz,1,2) END AS ORSZAG,'
      'SUBSTR(E.ENAR,LENGTH(E.ENAR)-10,10) AS AZON,'
      'E.SZULDAT,'
      'E.IVAR,'
      'E.SZIN,'
      'E.FAJTAKOD,'
      
        'CASE WHEN ((trim(e.anya_enar) is null) and (trim(E.ANYA_id_ENAR)' +
        ' is not null))  THEN substr(e.anya_id_enar,1,2)'
      'ELSE '#39'HU'#39' END AS ANYAORSZAG,'
      
        'CASE WHEN ((trim(e.anya_enar) is null) and (trim(E.ANYA_id_ENAR)' +
        ' is not null))  THEN trim(e.anya_id_enar)'
      'ELSE E.ANYA_ENAR END AS ANYA_AZON,'
      'coalesce(E.IKER,0) as iker,'
      'ELLESEK.ELLES_LEF,'
      'BORJAK.BORJU_SULY,'
      'CASE WHEN E.alldat IS NULL THEN E.SZULDAT ELSE'
      'E.ALLDAT END AS BEKERULES'
      'FROM EGYEDEK E'
      'JOIN BORJAK ON BORJAK.BORJU_ENAR=E.enar'
      'JOIN ELLESEK ON ELLESEK.ID=BORJAK.ELLESEK_ID'
      'WHERE E.ENAR_BE_DATUM IS NULL AND TRIM(e.enar) IS NOT NULL')
    Left = 72
    Top = 128
    object qryBejelentORSZAG: TWideStringField
      FieldName = 'ORSZAG'
      ReadOnly = True
      Size = 2
    end
    object qryBejelentAZON: TWideStringField
      FieldName = 'AZON'
      ReadOnly = True
      Size = 10
    end
    object qryBejelentSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object qryBejelentIVAR: TWideStringField
      FieldName = 'IVAR'
      FixedChar = True
      Size = 1
    end
    object qryBejelentSZIN: TWideStringField
      FieldName = 'SZIN'
      FixedChar = True
      Size = 1
    end
    object qryBejelentFAJTAKOD: TWideStringField
      FieldName = 'FAJTAKOD'
      Size = 5
    end
    object qryBejelentANYAORSZAG: TWideStringField
      FieldName = 'ANYAORSZAG'
      ReadOnly = True
      Size = 2
    end
    object qryBejelentANYA_AZON: TWideStringField
      FieldName = 'ANYA_AZON'
      ReadOnly = True
      Size = 15
    end
    object qryBejelentIKER: TBCDField
      FieldName = 'IKER'
      ReadOnly = True
      Precision = 32
    end
    object qryBejelentELLES_LEF: TWideStringField
      FieldName = 'ELLES_LEF'
      Size = 10
    end
    object qryBejelentBORJU_SULY: TBCDField
      FieldName = 'BORJU_SULY'
      Precision = 6
      Size = 1
    end
    object qryBejelentBEKERULES: TDateTimeField
      FieldName = 'BEKERULES'
      ReadOnly = True
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBdstEnarEll'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ORSZAG=ORSZAG'
      'AZON=AZON'
      'SZULDAT=SZULDAT'
      'IVAR=IVAR'
      'SZIN=SZIN'
      'FAJTAKOD=FAJTAKOD'
      'ANYAORSZAG=ANYAORSZAG'
      'ANYA_AZON=ANYA_AZON'
      'IKER=IKER'
      'ELLES_LEF=ELLES_LEF'
      'BORJU_SULY=BORJU_SULY'
      'BEKERULES=BEKERULES')
    OpenDataSource = False
    DataSet = qryHiba
    Left = 144
    Top = 128
  end
  object qryHiba: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      'CASE WHEN trim(e.szorsz) is null THEN '#39'HU'#39
      'ELSE SUBSTR(E.szorsz,1,2) END AS ORSZAG,'
      'SUBSTR(E.ENAR,LENGTH(E.ENAR)-10,10) AS AZON,'
      'E.SZULDAT,'
      'E.IVAR,'
      'E.SZIN,'
      'E.FAJTAKOD,'
      
        'CASE WHEN ((trim(e.anya_enar) is null) and (trim(E.ANYA_id_ENAR)' +
        ' is not null))  THEN substr(e.anya_id_enar,1,2)'
      'ELSE '#39'HU'#39' END AS ANYAORSZAG,'
      
        'CASE WHEN ((trim(e.anya_enar) is null) and (trim(E.ANYA_id_ENAR)' +
        ' is not null))  THEN trim(e.anya_id_enar)'
      'ELSE E.ANYA_ENAR END AS ANYA_AZON,'
      'coalesce(E.IKER,0) as iker,'
      'ELLESEK.ELLES_LEF,'
      'BORJAK.BORJU_SULY,'
      'CASE WHEN E.alldat IS NULL THEN E.SZULDAT ELSE'
      'E.ALLDAT END AS BEKERULES'
      'FROM EGYEDEK E'
      'JOIN BORJAK ON BORJAK.BORJU_ENAR=E.enar'
      'JOIN ELLESEK ON ELLESEK.ID=BORJAK.ELLESEK_ID'
      'WHERE E.ENAR_BE_DATUM IS NULL AND TRIM(e.enar) IS NOT NULL'
      'AND ((FAJTAKOD = '#39#39') OR (trim(FAJTAKOD) IS NULL))')
    Left = 16
    Top = 128
    object qryHibaORSZAG: TWideStringField
      FieldName = 'ORSZAG'
      ReadOnly = True
      Size = 2
    end
    object qryHibaAZON: TWideStringField
      FieldName = 'AZON'
      ReadOnly = True
      Size = 10
    end
    object qryHibaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object qryHibaIVAR: TWideStringField
      FieldName = 'IVAR'
      FixedChar = True
      Size = 1
    end
    object qryHibaSZIN: TWideStringField
      FieldName = 'SZIN'
      FixedChar = True
      Size = 1
    end
    object qryHibaFAJTAKOD: TWideStringField
      FieldName = 'FAJTAKOD'
      Size = 5
    end
    object qryHibaANYAORSZAG: TWideStringField
      FieldName = 'ANYAORSZAG'
      ReadOnly = True
      Size = 2
    end
    object qryHibaANYA_AZON: TWideStringField
      FieldName = 'ANYA_AZON'
      ReadOnly = True
      Size = 15
    end
    object qryHibaIKER: TBCDField
      FieldName = 'IKER'
      ReadOnly = True
      Precision = 32
    end
    object qryHibaELLES_LEF: TWideStringField
      FieldName = 'ELLES_LEF'
      Size = 10
    end
    object qryHibaBORJU_SULY: TBCDField
      FieldName = 'BORJU_SULY'
      Precision = 6
      Size = 1
    end
    object qryHibaBEKERULES: TDateTimeField
      FieldName = 'BEKERULES'
      ReadOnly = True
    end
  end
  object frxRepLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 40940.890236655090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo3OnAfterData(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      ''
      'begin'
      '  s:=<frxDBdstEnarEll."AZON">;'
      '  if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo3.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(s' +
        ',10,1)'
      '   Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '      memo3.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy(s' +
        ',12,1) ;'
      'end;'
      ''
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 232
    Top = 128
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBdstEnarEll'
      end
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
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
        object Memo4: TfrxMemoView
          Left = 130.393846025000000000
          Top = 56.692949999999990000
          Width = 457.323007950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Hib'#258#711's adatok - nincs kit'#258#182'ltve a fajta k'#258#322'd')
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
          Left = 532.913412680000000000
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
          Left = 582.047620000000000000
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
          Left = 650.078764570000000000
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
          Left = 98.267780000000000000
          Top = 105.826840000000000000
          Width = 105.826840000000000000
          Height = 18.897640240000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SzuroFeltetelek]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 49.133841180000010000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.149660000000000000
          Width = 90.708720000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Rendezetts'#258#169'g:')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          Left = 3.779530000000000000
          Top = 105.826840000000000000
          Width = 88.818902520000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
        object Memo41: TfrxMemoView
          Left = 98.267780000000000000
          Top = 83.149660000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Rendezettseg]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBdstEnarEll'
        RowCount = 0
        object SysMemo3: TfrxSysMemoView
          Left = 3.779530000000000000
          Width = 37.795280470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 52.913420000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo3OnAfterData'
          OnBeforePrint = 'Memo3OnBeforePrint'
          DataField = 'AZON'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBdstEnarEll'
          Memo.UTF8 = (
            '[frxDBdstEnarEll."AZON"]')
        end
        object Memo11: TfrxMemoView
          Left = 192.756030000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'ORSZAG'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBdstEnarEll'
          Memo.UTF8 = (
            '[frxDBdstEnarEll."ORSZAG"]')
        end
        object Memo16: TfrxMemoView
          Left = 249.448980000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'SZULDAT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBdstEnarEll'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdstEnarEll."SZULDAT"]')
        end
        object Memo17: TfrxMemoView
          Left = 381.732530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'FAJTAKOD'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBdstEnarEll'
          Memo.UTF8 = (
            '[frxDBdstEnarEll."FAJTAKOD"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 396.850650000000000000
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
          Width = 226.771800000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'List'#258#711'k - ENAR bejelent'#313#8216' hibalista')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Width = 45.354338030000000000
          Height = 15.874015748031500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'sorsz.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          Left = 52.913420000000000000
          Width = 124.724490000000000000
          Height = 15.874015748031500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Borj'#258#351' azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 185.196970000000000000
          Width = 45.354360000000000000
          Height = 15.874015748031500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Orsz'#258#711'g')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 245.669450000000000000
          Width = 109.606370000000000000
          Height = 15.874015748031500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'l.d'#258#711'tum')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 374.173470000000000000
          Width = 94.488250000000000000
          Height = 15.874015748031500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Fajtak'#258#322'd')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 22.677160470000000000
          Top = 11.338577800000000000
          Width = 71.811033390000000000
          Height = 19.653548190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T'#258#169'telsz'#258#711'm:')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 98.267780000000000000
          Top = 11.338577800000000000
          Width = 120.944960000000000000
          Height = 19.653548190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 3.779525120000017000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
