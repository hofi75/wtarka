inherited frmEgyediLapLista: TfrmEgyediLapLista
  Left = 847
  Top = 252
  Width = 701
  Height = 389
  Caption = 'Egyedi lap nyomtat'#225'sa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 315
    Width = 685
    Height = 36
    inherited BitBtn1: TTalBitBtn
      Left = 512
      Top = 2
    end
    inherited BitBtn2: TTalBitBtn
      Left = 606
      Top = 2
    end
  end
  inherited Panel2: TPanel
    Width = 685
    Height = 315
    object TalLabel1: TTalLabel
      Left = 32
      Top = 80
      Width = 82
      Height = 13
      Caption = 'Egyed azonos'#237't'#243':'
    end
    object TalLabel2: TTalLabel
      Left = 272
      Top = 80
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel3: TTalLabel
      Left = 32
      Top = 56
      Width = 52
      Height = 13
      Caption = 'Teny'#233'szet:'
    end
    object edtEgyedIg: TTalEdit
      Left = 288
      Top = 75
      Width = 105
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
    object edtTenyeszet: TTalEdit
      Left = 160
      Top = 51
      Width = 73
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
    end
    object edtEgyedTol: TTalEdit
      Left = 160
      Top = 75
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 2
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
    ReportOptions.LastChange = 42247.845985208300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  KonnyuElles : integer;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      
        'var                                                       <frxDB' +
        'Lista."KULLEM_IND"><frxDBLista."KULLEM_IND">'
      '  s : string;'
      'begin'
      '    s:= Trim(<frxDBLista."ENAR">);'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo7.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy' +
        '(s,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo7.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Cop' +
        'y(s,12,1)'
      '     else'
      '       memo7.text := <frxDBLista."ENAR">;'
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      ''
      'end;'
      ''
      'procedure Memo149OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COUNT(MasterData2)> > 0 then'
      
        '    Memo149.text := FormatFloat('#39'#.#'#39', 100 * KonnyuElles / <COUN' +
        'T(MasterData2)>) + '#39' %'#39
      '  else'
      '    Memo149.text := '#39'0'#39' ;'
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  KonnyuElles := 0;'
      'end;'
      ''
      'procedure MasterData2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<frxDBEgyElles."ELLES_LEF"> = '#39'1'#39') or  (<frxDBEgyElles."EL' +
        'LES_LEF"> = '#39'2'#39') then'
      '    KonnyuElles := KonnyuElles + 1;'
      ''
      ''
      'end;'
      ''
      'procedure Memo7OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s:= Trim(<frxDBLista."ENAR">);'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo7.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy' +
        '(s,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo7.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Cop' +
        'y(s,12,1)'
      '     else'
      '       memo7.text := <frxDBLista."ENAR">;'
      'end;'
      ''
      'procedure Memo84OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s := Trim(<frxDBLista."ANYA_ENAR">);'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo84.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Cop' +
        'y(s,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo84.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Co' +
        'py(s,12,1)'
      '     else'
      '       memo84.text := <frxDBLista."ANYA_ENAR">;'
      'end;'
      ''
      ''
      'procedure Memo83OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s := Trim(<frxDBLista."APA_ANYA">);'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo83.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Cop' +
        'y(s,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo83.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Co' +
        'py(s,12,1)'
      '     else'
      '       memo83.text := <frxDBLista."APA_ANYA">;'
      'end;'
      ''
      'procedure Memo106OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s := Trim(<frxDBLista."ANA_ANYA_ENAR">);'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo106.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Co' +
        'py(s,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo106.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + C' +
        'opy(s,12,1)'
      '     else'
      '       memo106.text := <frxDBLista."ANA_ANYA_ENAR">;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 592
    Top = 160
    Datasets = <
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end
      item
        DataSet = dtsEllesek
        DataSetName = 'frxDBEgyElles'
      end
      item
        DataSet = frxDBDKullem
        DataSetName = 'frxDBKullem'
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
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 204.094681020000000000
          Top = 52.913420000000000000
          Width = 309.921337950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Teh'#258#169'n ('#258#317'sz'#313#8216') egyedi lap')
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
        object Line3: TfrxLineView
          Align = baWidth
          Top = 45.354311180000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
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
          Left = 71.811070000000000000
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
        object Memo29: TfrxMemoView
          Left = 264.567100000000000000
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
      end
      object MasterData1: TfrxMasterData
        Height = 525.354670000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frmEgyedLista.frxDBLista
        DataSetName = 'frxDBLista'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Teny'#258#169'szet :  [frxDBLista."TENYESZET"]   [frxDBLista."TNEV2"]')
        end
        object Memo7: TfrxMemoView
          Left = 52.913420000000000000
          Top = 26.456710000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo7OnAfterData'
          OnBeforePrint = 'Memo7OnBeforePrint'
          DataField = 'ENAR'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBLista."ENAR"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'ENAR:')
        end
        object Memo11: TfrxMemoView
          Left = 177.637910000000000000
          Top = 26.456710000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm: [frxDBLista."FULSZAM"]')
        end
        object Memo12: TfrxMemoView
          Left = 340.157700000000000000
          Top = 26.456710000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Teh'#258#169'nsz'#258#711'm. [frxDBLista."TEHENSZAM"]')
        end
        object Memo14: TfrxMemoView
          Left = 525.354670000000000000
          Top = 26.456710000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'K'#258#317'lf.ENAR : [frxDBLista."ID_ENAR"]')
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'TKV : [frxDBLista."TKV"]')
        end
        object Memo18: TfrxMemoView
          Left = 71.811070000000000000
          Top = 79.370130000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Sz'#258#173'n : [frxDBLista."SZIN"]  [frxDBLista."SZINNEV"]')
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si d'#258#711'tum: [frxDBLista."SZULDAT"]')
        end
        object Memo16: TfrxMemoView
          Left = 275.905690000000000000
          Top = 52.913420000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            
              'Marhalev'#258#169'l sz'#258#711'ma: [frxDBLista."MLEVEL1"] [frxDBLista."MLEVEL2"' +
              ']')
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Align = baWidth
          Top = 49.133890000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Align = baWidth
          Top = 75.590600000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          Align = baWidth
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line8: TfrxLineView
          Left = 351.496290000000000000
          Top = 75.590600000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          Left = 355.275820000000000000
          Top = 79.370130000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Fajta : [frxDBLista."FAJTAKOD"]  [frxDBLista."FNEV"]')
        end
        object Memo20: TfrxMemoView
          Left = 79.370130000000000000
          Top = 105.826840000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."VER1"]')
        end
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Top = 105.826840000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'V'#258#169'rh'#258#711'nyad: ')
        end
        object Memo22: TfrxMemoView
          Left = 105.826840000000000000
          Top = 105.826840000000000000
          Width = 45.354338030000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."VSZ1"] %')
        end
        object Memo23: TfrxMemoView
          Left = 158.740260000000000000
          Top = 105.826840000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          DataField = 'VER2'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VER2"]')
        end
        object Memo24: TfrxMemoView
          Left = 185.196970000000000000
          Top = 105.826840000000000000
          Width = 45.354338030000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VSZ2"] %')
        end
        object Memo25: TfrxMemoView
          Left = 245.669450000000000000
          Top = 105.826840000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          DataField = 'VER3'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VER3"]')
        end
        object Memo26: TfrxMemoView
          Left = 272.126160000000000000
          Top = 105.826840000000000000
          Width = 45.354338030000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VSZ3"] %')
        end
        object Memo27: TfrxMemoView
          Left = 325.039580000000000000
          Top = 105.826840000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          DataField = 'VER4'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VER4"]')
        end
        object Memo28: TfrxMemoView
          Left = 351.496290000000000000
          Top = 105.826840000000000000
          Width = 45.354338030000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VSZ4"] %')
        end
        object Line9: TfrxLineView
          Align = baWidth
          Top = 128.504020000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line10: TfrxLineView
          Left = 449.764070000000000000
          Top = 102.047310000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo30: TfrxMemoView
          Left = 434.645950000000000000
          Top = 151.181200000000000000
          DataField = 'KKOD'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KKOD"]')
        end
        object Memo31: TfrxMemoView
          Left = 453.543600000000000000
          Top = 105.826840000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Konstrukci'#258#322's k'#258#322'd: [frxDBLista."KKOD"]')
        end
        object Subreport1: TfrxSubreport
          ShiftMode = smWhenOverlapped
          Top = 234.330860000000000000
          Width = 721.890230000000000000
          Height = 45.354330710000000000
          Page = frxRepLista.Page3
          PrintOnParent = True
        end
        object Line11: TfrxLineView
          Align = baWidth
          Top = 154.960730000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo33: TfrxMemoView
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711's d'#258#711'tuma: [frxDBLista."VALDAT"]')
        end
        object Memo34: TfrxMemoView
          Left = 262.330860000000000000
          Top = 132.283550000000000000
          Width = 27.913420000000000000
          Height = 18.897650000000000000
          DataField = 'VALKOR'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VALKOR"]')
        end
        object Memo35: TfrxMemoView
          Left = 302.362400000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            'T'#258#182'meg: [frxDBLista."VALTOM"]')
        end
        object Memo36: TfrxMemoView
          Left = 389.291590000000000000
          Top = 132.283550000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          HideZeros = True
          Memo.UTF8 = (
            #258#8240'tgy: [frxDBLista."TGYVAL"]')
        end
        object Memo37: TfrxMemoView
          Left = 483.779840000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '205.n: [frxDBLista."TOM205"]')
        end
        object Memo41: TfrxMemoView
          Left = 574.488560000000000000
          Top = 132.283550000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            'SV: [frxDBLista."SV"]')
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 158.740260000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            
              'Sz'#258#711'rmaz'#258#711'si orsz'#258#711'g: [frxDBLista."SZORSZ"] [frxDBLista."ORSZAGN' +
              'EV"]')
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 181.417440000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line12: TfrxLineView
          Left = 343.937230000000000000
          Top = 154.960730000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo43: TfrxMemoView
          Left = 347.716760000000000000
          Top = 158.740260000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Szarvalts'#258#711'g: [frxDBLista."SZARVALTSAG"]')
        end
        object Line13: TfrxLineView
          Left = 487.559370000000000000
          Top = 154.960730000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo44: TfrxMemoView
          Left = 495.118430000000000000
          Top = 158.740260000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Bikanevel'#313#8216' : [frxDBLista."BIKANEVELO"]')
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 185.196970000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            'T'#258#182'mege teny'#258#169'szt'#258#169'sbe '#258#711'll'#258#173't'#258#711'skor: [frxDBLista."TENYTOM"]')
        end
        object Line17: TfrxLineView
          Left = 343.937230000000000000
          Top = 181.417440000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo46: TfrxMemoView
          Left = 347.716760000000000000
          Top = 185.196970000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          HideZeros = True
          Memo.UTF8 = (
            'Kombin'#258#711'lt min'#313#8216's'#258#173't'#313#8216' index: [frxDBLista."KMI"]')
        end
        object Line18: TfrxLineView
          Align = baWidth
          Top = 234.330860000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line19: TfrxLineView
          Height = 517.795610000000000000
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 718.110700000000000000
          Height = 517.795610000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo47: TfrxMemoView
          Left = 49.133890000000000000
          Top = 287.244280000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'APAKLSZ'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."APAKLSZ"]')
        end
        object Memo48: TfrxMemoView
          Left = 49.133890000000000000
          Top = 309.921460000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'APA_FSZ'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_FSZ"]')
        end
        object Memo63: TfrxMemoView
          Left = 3.779530000000000000
          Top = 287.244280000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Apja:')
        end
        object Line21: TfrxLineView
          Align = baWidth
          Top = 400.630180000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo64: TfrxMemoView
          Left = 3.779530000000000000
          Top = 377.953000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169's d'#258#711'tuma:')
        end
        object Memo65: TfrxMemoView
          Left = 117.165430000000000000
          Top = 377.953000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'APA_SZULDAT'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_SZULDAT"]')
        end
        object Memo66: TfrxMemoView
          Left = 49.133890000000000000
          Top = 332.598640000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'APANEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APANEV"]')
        end
        object Memo67: TfrxMemoView
          Left = 3.779530000000000000
          Top = 332.598640000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'N'#258#169'v:')
        end
        object Memo68: TfrxMemoView
          Left = 49.133890000000000000
          Top = 355.275820000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'APA_FAJTANEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_FAJTANEV"]')
        end
        object Memo69: TfrxMemoView
          Left = 3.779530000000000000
          Top = 355.275820000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Fajta:')
        end
        object Memo70: TfrxMemoView
          Left = 306.141930000000000000
          Top = 287.244280000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'V'#258#169'rh'#258#711'nyada:')
        end
        object Memo71: TfrxMemoView
          Left = 306.141930000000000000
          Top = 309.921460000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."APA_VSZ1"] %')
        end
        object Memo72: TfrxMemoView
          Left = 359.055350000000000000
          Top = 309.921460000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'APA_V1NEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_V1NEV"]')
        end
        object Memo73: TfrxMemoView
          Left = 306.141930000000000000
          Top = 332.598640000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."APA_VSZ2"] %')
        end
        object Memo74: TfrxMemoView
          Left = 359.055350000000000000
          Top = 332.598640000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'APA_V2NEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_V2NEV"]')
        end
        object Memo75: TfrxMemoView
          Left = 306.141930000000000000
          Top = 355.275820000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."APA_VSZ3"] %')
        end
        object Memo76: TfrxMemoView
          Left = 359.055350000000000000
          Top = 355.275820000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'APA_V3NEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_V3NEV"]')
        end
        object Memo77: TfrxMemoView
          Left = 306.141930000000000000
          Top = 377.953000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."APA_VSZ4"] %')
        end
        object Memo78: TfrxMemoView
          Left = 359.055350000000000000
          Top = 377.953000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'APA_V4NEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_V4NEV"]')
        end
        object Line22: TfrxLineView
          Left = 495.118430000000000000
          Top = 279.685056460000000000
          Height = 120.944960000000000000
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 495.118430000000000000
          Top = 338.267723860000000000
          Width = 222.992270000000000000
          Frame.Typ = [ftTop]
        end
        object Memo79: TfrxMemoView
          Left = 498.897960000000000000
          Top = 287.244280000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Apja:')
        end
        object Memo80: TfrxMemoView
          Left = 544.252320000000000000
          Top = 287.244280000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'APA_APAKLSZ'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."APA_APAKLSZ"]')
        end
        object Memo81: TfrxMemoView
          Left = 498.897960000000000000
          Top = 309.921460000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'APA_APAFSZ'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_APAFSZ"]')
        end
        object Memo82: TfrxMemoView
          Left = 498.897960000000000000
          Top = 347.716760000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Anyja:')
        end
        object Memo83: TfrxMemoView
          Left = 544.252320000000000000
          Top = 347.716760000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo83OnAfterData'
          DataField = 'APA_ANYA'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_ANYA"]')
        end
        object Memo84: TfrxMemoView
          Left = 49.133890000000000000
          Top = 404.409873540000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo84OnAfterData'
          DataField = 'ANYA_ENAR'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_ENAR"]')
        end
        object Memo86: TfrxMemoView
          Left = 3.779530000000000000
          Top = 404.409873540000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Anyja:')
        end
        object Memo87: TfrxMemoView
          Left = 3.779530000000000000
          Top = 472.441413540000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169's d'#258#711'tuma:')
        end
        object Memo88: TfrxMemoView
          Left = 117.165430000000000000
          Top = 472.441413540000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_SZULDAT"]')
        end
        object Memo89: TfrxMemoView
          Left = 49.133890000000000000
          Top = 427.087053540000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_NEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_NEV"]')
        end
        object Memo90: TfrxMemoView
          Left = 3.779530000000000000
          Top = 427.087053540000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'N'#258#169'v:')
        end
        object Memo91: TfrxMemoView
          Left = 49.133890000000000000
          Top = 449.764233540000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_FAJTANEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_FAJTANEV"]')
        end
        object Memo92: TfrxMemoView
          Left = 3.779530000000000000
          Top = 449.764233540000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Fajta:')
        end
        object Memo93: TfrxMemoView
          Left = 306.141930000000000000
          Top = 404.409873540000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'V'#258#169'rh'#258#711'nyada:')
        end
        object Memo94: TfrxMemoView
          Left = 306.141930000000000000
          Top = 427.087053540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."ANYA_VSZ1"] %')
        end
        object Memo95: TfrxMemoView
          Left = 359.055350000000000000
          Top = 427.087053540000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_V1NEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_V1NEV"]')
        end
        object Memo96: TfrxMemoView
          Left = 306.141930000000000000
          Top = 449.764233540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."ANYA_VSZ2"] %')
        end
        object Memo97: TfrxMemoView
          Left = 359.055350000000000000
          Top = 449.764233540000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_V2NEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_V2NEV"]')
        end
        object Memo98: TfrxMemoView
          Left = 306.141930000000000000
          Top = 472.441413540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."ANYA_VSZ3"] %')
        end
        object Memo99: TfrxMemoView
          Left = 359.055350000000000000
          Top = 472.441413540000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_V3NEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_V3NEV"]')
        end
        object Memo100: TfrxMemoView
          Left = 306.141930000000000000
          Top = 495.118593540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."ANYA_VSZ4"] %')
        end
        object Memo101: TfrxMemoView
          Left = 359.055350000000000000
          Top = 495.118593540000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_V4NEV'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_V4NEV"]')
        end
        object Line24: TfrxLineView
          Left = 495.118430000000000000
          Top = 400.630180000000000000
          Height = 117.165430000000000000
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          Left = 495.118430000000000000
          Top = 455.433317400000000000
          Width = 222.992270000000000000
          Frame.Typ = [ftTop]
        end
        object Memo102: TfrxMemoView
          Left = 498.897960000000000000
          Top = 404.409873540000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Apja:')
        end
        object Memo103: TfrxMemoView
          Left = 544.252320000000000000
          Top = 404.409873540000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_APAKLSZ'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."ANYA_APAKLSZ"]')
        end
        object Memo105: TfrxMemoView
          Left = 498.897960000000000000
          Top = 464.882353540000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Anyja:')
        end
        object Memo106: TfrxMemoView
          Left = 544.252320000000000000
          Top = 464.882353540000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo106OnAfterData'
          DataField = 'ANA_ANYA_ENAR'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANA_ANYA_ENAR"]')
        end
        object Line26: TfrxLineView
          Align = baWidth
          Top = 517.795610000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo85: TfrxMemoView
          Left = 3.779530000000000000
          Top = 495.118430000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Kombin'#258#711'lt min'#313#8216's'#258#173't'#313#8216' index:')
        end
        object Memo104: TfrxMemoView
          Left = 498.897960000000000000
          Top = 429.866420000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ANA_APAFSZ'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANA_APAFSZ"]')
        end
        object Memo107: TfrxMemoView
          Left = 498.897960000000000000
          Top = 487.559370000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'ANA_ANYA_FULSZAM'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANA_ANYA_FULSZAM"]')
        end
        object Memo148: TfrxMemoView
          Left = 212.440940000000000000
          Top = 132.921150000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'V'#258#711'l.kor:')
        end
        object Memo150: TfrxMemoView
          Left = 181.417440000000000000
          Top = 404.409710000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_ELL'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_ELL"]')
        end
        object Memo151: TfrxMemoView
          Left = 170.078850000000000000
          Top = 495.118430000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ANYA_MIN'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_MIN"]')
        end
        object Memo152: TfrxMemoView
          Left = 3.779530000000000000
          Top = 211.653679999999000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Szaporas'#258#711'gi index:')
        end
        object Memo154: TfrxMemoView
          Left = 188.976500000000000000
          Top = 211.653679999999000000
          Width = 68.031540000000100000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'BNI index:')
        end
        object Memo156: TfrxMemoView
          Left = 332.598640000000000000
          Top = 211.653679999999000000
          Width = 86.929190000000100000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'K'#258#317'llemi index:')
        end
        object Memo153: TfrxMemoView
          Left = 124.724490000000000000
          Top = 211.653680000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'SZAPIND'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."SZAPIND"]')
        end
        object Memo155: TfrxMemoView
          Left = 423.307360000000000000
          Top = 211.653680000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'KULLEM_IND'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."KULLEM_IND"]')
        end
        object Memo157: TfrxMemoView
          Left = 260.787570000000000000
          Top = 211.653680000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'BNI'
          DataSet = frmEgyedLista.frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."BNI"]')
        end
        object Line50: TfrxLineView
          Align = baWidth
          Top = 207.874150000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 759.685530000000000000
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
          Left = 7.559060000000000000
          Width = 207.874150000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'List'#258#711'k - Teh'#258#169'n ('#258#317'sz'#313#8216') egyedi lap')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo42: TfrxMemoView
        Left = -3.779530000000000000
        Top = -3.779530000000000000
        DataField = 'SZARVALTSAG'
        DataSet = frmEgyedLista.frxDBLista
        DataSetName = 'frxDBLista'
        Memo.UTF8 = (
          '[frxDBLista."SZARVALTSAG"]')
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 45.354330710000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDKullem
        DataSetName = 'frxDBKullem'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Line14: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          DataSet = frxDBDKullem
          DataSetName = 'frxDBKullem'
          HideZeros = True
          Memo.UTF8 = (
            'K'#258#317'llemi b'#258#173'r'#258#711'lat'
            'd'#258#711'tuma: [frxDBKullem."BIRDAT"]')
        end
        object Memo60: TfrxMemoView
          Left = 151.181200000000000000
          Top = 11.338582680000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKullem
          DataSetName = 'frxDBKullem'
          HideZeros = True
          Memo.UTF8 = (
            'T'#258#173'pus: [frxDBKullem."TIPUS"]')
        end
        object Memo61: TfrxMemoView
          Left = 287.244280000000000000
          Top = 11.338582680000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKullem
          DataSetName = 'frxDBKullem'
          HideZeros = True
          Memo.UTF8 = (
            'Izmolts'#258#711'g: [frxDBKullem."IZOM"]')
        end
        object Memo62: TfrxMemoView
          Left = 430.866420000000000000
          Top = 11.338582680000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKullem
          DataSetName = 'frxDBKullem'
          HideZeros = True
          Memo.UTF8 = (
            'L'#258#711'bszerkezet: [frxDBKullem."LAB"]')
        end
        object Line16: TfrxLineView
          Left = 136.063080000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo158: TfrxMemoView
          Left = 582.047620000000000000
          Top = 11.338582680000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKullem
          DataSetName = 'frxDBKullem'
          HideZeros = True
          Memo.UTF8 = (
            'T'#313#8216'gy: [frxDBKullem."TOGY"]')
        end
        object Line15: TfrxLineView
          Align = baWidth
          Top = 45.354360000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData2: TfrxMasterData
        Height = 49.133890000000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData2OnAfterPrint'
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = dtsEllesek
        DataSetName = 'frxDBEgyElles'
        RowCount = 0
        object Memo109: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999910000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'E_TERM_DAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Memo.UTF8 = (
            '[frxDBEgyElles."E_TERM_DAT"]')
        end
        object Memo110: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'ELLES_DATUM'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Memo.UTF8 = (
            '[frxDBEgyElles."ELLES_DATUM"]')
        end
        object Memo113: TfrxMemoView
          Left = 102.047310000000000000
          Top = 3.779529999999910000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'BORJU_ENAR'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Memo.UTF8 = (
            '[frxDBEgyElles."BORJU_ENAR"]')
        end
        object Memo114: TfrxMemoView
          Left = 130.393785000000000000
          Top = 26.456710000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'KEK'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KEK"]')
        end
        object Memo117: TfrxMemoView
          Left = 215.433210000000000000
          Top = 3.779529999999990000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'KEK'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBEgyElles."KEK"]')
        end
        object Memo120: TfrxMemoView
          Left = 215.433210000000000000
          Top = 26.456710000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'ELLES_LEF'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."ELLES_LEF"]')
        end
        object Memo123: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779529999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'KPLSZ'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KPLSZ"]')
        end
        object Memo124: TfrxMemoView
          Left = 268.346630000000000000
          Top = 26.456710000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'BORJU_IVAR'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."BORJU_IVAR"]')
        end
        object Memo127: TfrxMemoView
          Left = 328.819110000000000000
          Top = 3.779529999999990000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'SZARVALTSAG'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."SZARVALTSAG"]')
        end
        object Memo128: TfrxMemoView
          Left = 328.819110000000000000
          Top = 26.456710000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'BORJU_SULY'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."BORJU_SULY"]')
        end
        object Memo131: TfrxMemoView
          Left = 379.842765000000000000
          Top = 3.779529999999910000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'VALDAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."VALDAT"]')
        end
        object Memo132: TfrxMemoView
          Left = 385.512060000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALTOM'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."VALTOM"]')
        end
        object Memo135: TfrxMemoView
          Left = 487.559370000000000000
          Top = 3.779529999999990000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'KOR_NAP'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KOR_NAP"]')
        end
        object Memo136: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779529999999910000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'TOM205'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."TOM205"]')
        end
        object Memo137: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'SV'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."SV"]')
        end
        object Memo143: TfrxMemoView
          Left = 608.504330000000000000
          Top = 3.779529999999910000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'KIKDAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Memo.UTF8 = (
            '[frxDBEgyElles."KIKDAT"]')
        end
        object Memo144: TfrxMemoView
          Left = 619.842920000000000000
          Top = 26.456710000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'KIKOD'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KIKOD"]')
        end
        object Memo145: TfrxMemoView
          Left = 665.197280000000000000
          Top = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'KIKOK'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KIKOK"]')
        end
        object Line28: TfrxLineView
          Align = baWidth
          Top = 49.133890000000200000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line29: TfrxLineView
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 98.267780000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 207.874150000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 260.787570000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 321.260050000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 366.614410000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          Left = 480.000310000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 540.472790000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          Left = 604.724800000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 718.110700000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo32: TfrxMemoView
          Left = 487.559370000000000000
          Top = 26.456710000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'TGYVAL'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."TGYVAL"]')
        end
      end
      object Header1: TfrxHeader
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo108: TfrxMemoView
          Left = 311.760831270000000000
          Top = 3.779529999999990000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ell'#258#169'sek')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Term.d'#258#711'tum')
        end
        object Memo112: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Ell'#258#169's.d'#258#711'tum')
        end
        object Memo115: TfrxMemoView
          Left = 102.047310000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Borj'#258#351' azonos'#258#173't'#258#322)
        end
        object Memo116: TfrxMemoView
          Left = 102.047310000000000000
          Top = 56.692950000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Ell'#258#169'sek k'#258#182'zti id'#313#8216)
        end
        object Memo118: TfrxMemoView
          Left = 211.653680000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'K.E.K')
        end
        object Memo119: TfrxMemoView
          Left = 211.653680000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Lef')
        end
        object Memo121: TfrxMemoView
          Left = 264.567100000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Bika')
        end
        object Memo122: TfrxMemoView
          Left = 264.567100000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Ivar')
        end
        object Memo125: TfrxMemoView
          Left = 328.819110000000000000
          Top = 37.795300000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Sza.')
        end
        object Memo126: TfrxMemoView
          Left = 328.819110000000000000
          Top = 56.692950000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Szt')
        end
        object Memo129: TfrxMemoView
          Left = 374.173470000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711's d'#258#711'tum')
        end
        object Memo130: TfrxMemoView
          Left = 374.173470000000000000
          Top = 56.692950000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711's.t'#258#182'meg')
        end
        object Memo133: TfrxMemoView
          Left = 487.559370000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Kor')
        end
        object Memo134: TfrxMemoView
          Left = 487.559370000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240't.gyar.')
        end
        object Memo138: TfrxMemoView
          Left = 551.811380000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '205 n.')
        end
        object Memo139: TfrxMemoView
          Left = 551.811380000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Sv %')
        end
        object Memo140: TfrxMemoView
          Left = 612.283860000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Kiker'#258#317'l'#258#169's ideje')
        end
        object Memo141: TfrxMemoView
          Left = 612.283860000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'm'#258#322'd')
        end
        object Memo142: TfrxMemoView
          Left = 661.417750000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ok')
        end
        object Line27: TfrxLineView
          Align = baWidth
          Top = 79.370130000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line40: TfrxLineView
          Align = baWidth
          Top = 34.015770000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line41: TfrxLineView
          Left = 98.267780000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 207.874150000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          Left = 260.787570000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          Left = 321.260050000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line45: TfrxLineView
          Left = 366.614410000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line46: TfrxLineView
          Left = 480.000310000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line47: TfrxLineView
          Left = 540.472790000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line48: TfrxLineView
          Left = 604.724800000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Left = -0.000000000000000444
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line49: TfrxLineView
          Left = 718.110700000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
      end
      object Footer1: TfrxFooter
        Height = 52.913420000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object SysMemo3: TfrxSysMemoView
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%5.0f'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            
              '[SUM(<frxDBEgyElles."KEK">,MasterData2)/IIF((count(MasterData2,0' +
              ')-1)>0, (count(MasterData2,0)-1),1) ]')
        end
        object Memo146: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'K'#258#169't ell'#258#169's k'#258#182'zti napok '#258#711'tlaga:')
        end
        object Memo147: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'K'#258#182'nny'#313#177' ell'#258#169'sek ar'#258#711'nya:')
        end
        object Memo149: TfrxMemoView
          Left = 185.196970000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo149OnBeforePrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '0')
        end
      end
    end
  end
  object sdsKullem: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT '#13#10'  K.ID, '#13#10'  K.ENAR, '#13#10'  E.FULSZAM, '#13#10'  E.TEHENSZAM, '#13#10' ' +
      ' K.KPLSZ, '#13#10'  BIRDAT, '#13#10'  FARMAG,'#13#10'  FARHOSSZ,'#13#10'  FARSZEL,'#13#10'  TO' +
      'RZSHOSSZ,'#13#10'  TORZSMELY,'#13#10'  COMBIZOM,'#13#10'  LAPIZOM,'#13#10'  FARLEJT,'#13#10'  ' +
      'HATSOLAB,'#13#10'  CSUD,'#13#10'  TOGYMELY,'#13#10'  BIMBO,'#13#10'  K.TIPUS,'#13#10'  IZOM,'#13#10 +
      '  K.LAB,'#13#10'  K.TOGY,'#13#10'  E.TENYESZET, '#13#10'  APA.NEV AS BIKANEV'#13#10'FROM' +
      ' EGYEDEK E'#13#10'LEFT JOIN KULLEM K ON E.ENAR = K.ENAR'#13#10'LEFT JOIN APA' +
      ' ON APA.KPLSZ = K.KPLSZ'#13#10'WHERE E.ID = :ID'
    DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Direction = pdInputOutput
        Size = 15
        Value = Null
      end>
    Provider.DataSet.CommandText = 
      'SELECT '#13#10'  K.ID, '#13#10'  K.ENAR, '#13#10'  E.FULSZAM, '#13#10'  E.TEHENSZAM, '#13#10' ' +
      ' K.KPLSZ, '#13#10'  BIRDAT, '#13#10'  FARMAG,'#13#10'  FARHOSSZ,'#13#10'  FARSZEL,'#13#10'  TO' +
      'RZSHOSSZ,'#13#10'  TORZSMELY,'#13#10'  COMBIZOM,'#13#10'  LAPIZOM,'#13#10'  FARLEJT,'#13#10'  ' +
      'HATSOLAB,'#13#10'  CSUD,'#13#10'  TOGYMELY,'#13#10'  BIMBO,'#13#10'  K.TIPUS,'#13#10'  IZOM,'#13#10 +
      '  K.LAB,'#13#10'  K.TOGY,'#13#10'  E.TENYESZET, '#13#10'  APA.NEV AS BIKANEV'#13#10'FROM' +
      ' EGYEDEK E'#13#10'LEFT JOIN KULLEM K ON E.ENAR = K.ENAR'#13#10'LEFT JOIN APA' +
      ' ON APA.KPLSZ = K.KPLSZ'#13#10'WHERE E.ID = :ID'
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Direction = pdInputOutput
        Size = 15
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptUnknown
        Size = -1
      end>
    ReadOnly = True
    Left = 204
    Top = 176
    object sdsKullemID: TBCDField
      FieldName = 'ID'
      Precision = 15
      Size = 0
    end
    object sdsKullemENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsKullemFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      Size = 15
    end
    object sdsKullemTEHENSZAM: TWideStringField
      FieldName = 'TEHENSZAM'
      Size = 15
    end
    object sdsKullemKPLSZ: TWideStringField
      FieldName = 'KPLSZ'
      Size = 5
    end
    object sdsKullemBIRDAT: TDateTimeField
      FieldName = 'BIRDAT'
    end
    object sdsKullemFARMAG: TIntegerField
      FieldName = 'FARMAG'
    end
    object sdsKullemFARHOSSZ: TIntegerField
      FieldName = 'FARHOSSZ'
    end
    object sdsKullemFARSZEL: TIntegerField
      FieldName = 'FARSZEL'
    end
    object sdsKullemTORZSHOSSZ: TIntegerField
      FieldName = 'TORZSHOSSZ'
    end
    object sdsKullemTORZSMELY: TIntegerField
      FieldName = 'TORZSMELY'
    end
    object sdsKullemCOMBIZOM: TIntegerField
      FieldName = 'COMBIZOM'
    end
    object sdsKullemLAPIZOM: TIntegerField
      FieldName = 'LAPIZOM'
    end
    object sdsKullemFARLEJT: TIntegerField
      FieldName = 'FARLEJT'
    end
    object sdsKullemHATSOLAB: TIntegerField
      FieldName = 'HATSOLAB'
    end
    object sdsKullemCSUD: TIntegerField
      FieldName = 'CSUD'
    end
    object sdsKullemTOGYMELY: TIntegerField
      FieldName = 'TOGYMELY'
    end
    object sdsKullemBIMBO: TIntegerField
      FieldName = 'BIMBO'
    end
    object sdsKullemTIPUS: TIntegerField
      FieldName = 'TIPUS'
    end
    object sdsKullemIZOM: TIntegerField
      FieldName = 'IZOM'
    end
    object sdsKullemLAB: TIntegerField
      FieldName = 'LAB'
    end
    object sdsKullemTOGY: TIntegerField
      FieldName = 'TOGY'
    end
    object sdsKullemTENYESZET: TWideStringField
      FieldName = 'TENYESZET'
      Size = 7
    end
    object sdsKullemBIKANEV: TWideStringField
      FieldName = 'BIKANEV'
      Size = 40
    end
  end
  object frxDBDKullem: TfrxDBDataset
    UserName = 'frxDBKullem'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ID=ID'
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'TEHENSZAM=TEHENSZAM'
      'KPLSZ=KPLSZ'
      'BIRDAT=BIRDAT'
      'FARMAG=FARMAG'
      'FARHOSSZ=FARHOSSZ'
      'FARSZEL=FARSZEL'
      'TORZSHOSSZ=TORZSHOSSZ'
      'TORZSMELY=TORZSMELY'
      'COMBIZOM=COMBIZOM'
      'LAPIZOM=LAPIZOM'
      'FARLEJT=FARLEJT'
      'HATSOLAB=HATSOLAB'
      'CSUD=CSUD'
      'TOGYMELY=TOGYMELY'
      'BIMBO=BIMBO'
      'TIPUS=TIPUS'
      'IZOM=IZOM'
      'LAB=LAB'
      'TOGY=TOGY'
      'TENYESZET=TENYESZET'
      'BIKANEV=BIKANEV')
    OpenDataSource = False
    DataSet = sdsKullem
    Left = 208
    Top = 240
  end
  object sdsEllesek: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT T.ENAR,T.FULSZAM, AE.E_TERM_DAT, AE.E_TERM_ID , '#13#10'AE.ELLE' +
      'S_DATUM, AE.ELLES_LEF, '#13#10'coalesce(BORJAK.BORJU_SSZ, 0) as BORJU_' +
      'SSZ, '#13#10'coalesce(BORJAK.BORJU_IVAR, '#39#39') as BORJU_IVAR, '#13#10'COALESCE' +
      '(BORJAK.BORJU_SZIN, '#39#39') AS BORJU_SZIN , '#13#10'cast(COALESCE(BORJAK.B' +
      'ORJU_SULY, 0) as number(4,1)) AS BORJU_SULY , '#13#10'COALESCE(BORJAK.' +
      'BORJU_KIESES_KOD, '#39#39') AS BORJU_KIESES_KOD, '#13#10'COALESCE(BORJAK.BOR' +
      'JU_KIESES_OK , '#39#39') AS BORJU_KIESES_OK, '#13#10'COALESCE(BORJAK.BORJU_E' +
      'NAR, '#39#39') AS BORJU_ENAR,'#13#10'BORJAK.SZARVALTSAG,'#13#10'CAST(COALESCE(TRUN' +
      'C(AE.ELLES_DATUM - EE.ELLES_DATUM),0) AS NUMBER (5,0)) AS KEK,'#13#10 +
      'TT.KPLSZ,TT.DATUM AS TERM_DATUM,'#13#10'B.VALDAT, B.VALTOM,'#13#10'CAST( TRU' +
      'NC(B.VALDAT - AE.ELLES_DATUM) AS NUMBER (5,0))AS KOR_NAP,'#13#10'CAST(' +
      'TOMGYAR(0, B.VALTOM, AE.ELLES_DATUM,B.VALDAT) AS INTEGER) AS TGY' +
      'VAL,'#13#10'CASE WHEN ELSO_ELLES(T.ID) IS NULL THEN 0'#13#10'  ELSE ROUND(TR' +
      'UNC( AE.ELLES_DATUM - ELSO_ELLES(T.ID))/ ELLES_SSZ(T.ID,AE.ELLES' +
      '_DATUM))  END  AS ATL_NAP,'#13#10'B.TOM205,  B.SV,'#13#10'B.KIKDAT, B.KIKOD,' +
      ' B.KIKOK'#13#10'FROM EGYEDEK T'#13#10'LEFT JOIN ELLESEK AE ON AE.EGYED_ID = ' +
      'T.ID '#13#10'LEFT JOIN BORJAK ON BORJAK.ELLESEK_ID = AE.ID  '#13#10'LEFT JOI' +
      'N ELLESEK EE ON EE.ID = ELOZO_ELLES_ID(T.ID, AE.ELLES_DATUM)'#13#10'LE' +
      'FT JOIN TERMEKENYITESEK TT ON TT.ID = ELLES_TERMEKENYITESE(t.id,' +
      ' AE.ELLES_DATUM)'#13#10'LEFT JOIN EGYEDEK B ON (B.ENAR = BORJAK.BORJU_' +
      'ENAR)  AND (B.TENYESZET = T.TENYESZET) AND TRIM(BORJAK.BORJU_ENA' +
      'R) IS NOT NULL'#13#10'WHERE T.ID = :ID'#13#10'ORDER BY AE.ELLES_DATUM'
    DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Provider.DataSet.CommandText = 
      'SELECT T.ENAR,T.FULSZAM, AE.E_TERM_DAT, AE.E_TERM_ID , '#13#10'AE.ELLE' +
      'S_DATUM, AE.ELLES_LEF, '#13#10'coalesce(BORJAK.BORJU_SSZ, 0) as BORJU_' +
      'SSZ, '#13#10'coalesce(BORJAK.BORJU_IVAR, '#39#39') as BORJU_IVAR, '#13#10'COALESCE' +
      '(BORJAK.BORJU_SZIN, '#39#39') AS BORJU_SZIN , '#13#10'cast(COALESCE(BORJAK.B' +
      'ORJU_SULY, 0) as number(4,1)) AS BORJU_SULY , '#13#10'COALESCE(BORJAK.' +
      'BORJU_KIESES_KOD, '#39#39') AS BORJU_KIESES_KOD, '#13#10'COALESCE(BORJAK.BOR' +
      'JU_KIESES_OK , '#39#39') AS BORJU_KIESES_OK, '#13#10'COALESCE(BORJAK.BORJU_E' +
      'NAR, '#39#39') AS BORJU_ENAR,'#13#10'BORJAK.SZARVALTSAG,'#13#10'CAST(COALESCE(TRUN' +
      'C(AE.ELLES_DATUM - EE.ELLES_DATUM),0) AS NUMBER (5,0)) AS KEK,'#13#10 +
      'TT.KPLSZ,TT.DATUM AS TERM_DATUM,'#13#10'B.VALDAT, B.VALTOM,'#13#10'CAST( TRU' +
      'NC(B.VALDAT - AE.ELLES_DATUM) AS NUMBER (5,0))AS KOR_NAP,'#13#10'CAST(' +
      'TOMGYAR(0, B.VALTOM, AE.ELLES_DATUM,B.VALDAT) AS INTEGER) AS TGY' +
      'VAL,'#13#10'CASE WHEN ELSO_ELLES(T.ID) IS NULL THEN 0'#13#10'  ELSE ROUND(TR' +
      'UNC( AE.ELLES_DATUM - ELSO_ELLES(T.ID))/ ELLES_SSZ(T.ID,AE.ELLES' +
      '_DATUM))  END  AS ATL_NAP,'#13#10'B.TOM205,  B.SV,'#13#10'B.KIKDAT, B.KIKOD,' +
      ' B.KIKOK'#13#10'FROM EGYEDEK T'#13#10'LEFT JOIN ELLESEK AE ON AE.EGYED_ID = ' +
      'T.ID '#13#10'LEFT JOIN BORJAK ON BORJAK.ELLESEK_ID = AE.ID  '#13#10'LEFT JOI' +
      'N ELLESEK EE ON EE.ID = ELOZO_ELLES_ID(T.ID, AE.ELLES_DATUM)'#13#10'LE' +
      'FT JOIN TERMEKENYITESEK TT ON TT.ID = ELLES_TERMEKENYITESE(t.id,' +
      ' AE.ELLES_DATUM)'#13#10'LEFT JOIN EGYEDEK B ON (B.ENAR = BORJAK.BORJU_' +
      'ENAR)  AND (B.TENYESZET = T.TENYESZET) AND TRIM(BORJAK.BORJU_ENA' +
      'R) IS NOT NULL'#13#10'WHERE T.ID = :ID'#13#10'ORDER BY AE.ELLES_DATUM'
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptUnknown
        Size = -1
      end>
    ReadOnly = True
    Left = 299
    Top = 176
    object sdsEllesekENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsEllesekFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      Size = 15
    end
    object sdsEllesekE_TERM_DAT: TDateTimeField
      FieldName = 'E_TERM_DAT'
    end
    object sdsEllesekE_TERM_ID: TBCDField
      FieldName = 'E_TERM_ID'
      Precision = 15
      Size = 0
    end
    object sdsEllesekELLES_DATUM: TDateTimeField
      FieldName = 'ELLES_DATUM'
    end
    object sdsEllesekELLES_LEF: TWideStringField
      FieldName = 'ELLES_LEF'
      Size = 10
    end
    object sdsEllesekBORJU_SSZ: TBCDField
      FieldName = 'BORJU_SSZ'
      ReadOnly = True
      Precision = 32
    end
    object sdsEllesekBORJU_IVAR: TWideStringField
      FieldName = 'BORJU_IVAR'
      ReadOnly = True
      Size = 10
    end
    object sdsEllesekBORJU_SZIN: TWideStringField
      FieldName = 'BORJU_SZIN'
      ReadOnly = True
      Size = 10
    end
    object sdsEllesekBORJU_SULY: TBCDField
      FieldName = 'BORJU_SULY'
      ReadOnly = True
      Precision = 4
      Size = 1
    end
    object sdsEllesekBORJU_KIESES_KOD: TWideStringField
      FieldName = 'BORJU_KIESES_KOD'
      ReadOnly = True
      Size = 10
    end
    object sdsEllesekBORJU_KIESES_OK: TWideStringField
      FieldName = 'BORJU_KIESES_OK'
      ReadOnly = True
      Size = 10
    end
    object sdsEllesekBORJU_ENAR: TWideStringField
      FieldName = 'BORJU_ENAR'
      ReadOnly = True
      Size = 14
    end
    object sdsEllesekSZARVALTSAG: TWideStringField
      FieldName = 'SZARVALTSAG'
      Size = 1
    end
    object sdsEllesekKEK: TIntegerField
      FieldName = 'KEK'
      ReadOnly = True
    end
    object sdsEllesekKPLSZ: TWideStringField
      FieldName = 'KPLSZ'
      Size = 5
    end
    object sdsEllesekTERM_DATUM: TDateTimeField
      FieldName = 'TERM_DATUM'
    end
    object sdsEllesekVALDAT: TDateTimeField
      FieldName = 'VALDAT'
    end
    object sdsEllesekVALTOM: TIntegerField
      FieldName = 'VALTOM'
    end
    object sdsEllesekKOR_NAP: TIntegerField
      FieldName = 'KOR_NAP'
      ReadOnly = True
    end
    object sdsEllesekTGYVAL: TBCDField
      FieldName = 'TGYVAL'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsEllesekATL_NAP: TBCDField
      FieldName = 'ATL_NAP'
      ReadOnly = True
      Precision = 32
    end
    object sdsEllesekTOM205: TIntegerField
      FieldName = 'TOM205'
    end
    object sdsEllesekSV: TIntegerField
      FieldName = 'SV'
    end
    object sdsEllesekKIKDAT: TDateTimeField
      FieldName = 'KIKDAT'
    end
    object sdsEllesekKIKOD: TWideStringField
      FieldName = 'KIKOD'
      Size = 10
    end
    object sdsEllesekKIKOK: TWideStringField
      FieldName = 'KIKOK'
      Size = 10
    end
  end
  object dtsEllesek: TfrxDBDataset
    UserName = 'frxDBEgyElles'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'E_TERM_DAT=E_TERM_DAT'
      'E_TERM_ID=E_TERM_ID'
      'ELLES_DATUM=ELLES_DATUM'
      'ELLES_LEF=ELLES_LEF'
      'BORJU_SSZ=BORJU_SSZ'
      'BORJU_IVAR=BORJU_IVAR'
      'BORJU_SZIN=BORJU_SZIN'
      'BORJU_SULY=BORJU_SULY'
      'BORJU_KIESES_KOD=BORJU_KIESES_KOD'
      'BORJU_KIESES_OK=BORJU_KIESES_OK'
      'BORJU_ENAR=BORJU_ENAR'
      'SZARVALTSAG=SZARVALTSAG'
      'KEK=KEK'
      'KPLSZ=KPLSZ'
      'TERM_DATUM=TERM_DATUM'
      'VALDAT=VALDAT'
      'VALTOM=VALTOM'
      'KOR_NAP=KOR_NAP'
      'TGYVAL=TGYVAL'
      'ATL_NAP=ATL_NAP'
      'TOM205=TOM205'
      'SV=SV'
      'KIKDAT=KIKDAT'
      'KIKOD=KIKOD'
      'KIKOK=KIKOK')
    OpenDataSource = False
    DataSet = sdsEllesek
    Left = 304
    Top = 240
  end
  object TalConnection1: TTalConnection
    Left = 232
    Top = 8
  end
  object frxEgyedLista: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 43438.862102337960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  KonnyuElles : integer;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s:= Trim(<frxDBLista."ENAR">);'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo7.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy' +
        '(s,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo7.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Cop' +
        'y(s,12,1)'
      '     else'
      '       memo7.text := <frxDBLista."ENAR">;'
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      ''
      'end;'
      ''
      'procedure Memo149OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <COUNT(MasterData2)> > 0 then'
      
        '    Memo149.text := FormatFloat('#39'#.#'#39', 100 * KonnyuElles / <COUN' +
        'T(MasterData2)>) + '#39' %'#39
      '  else'
      '    Memo149.text := '#39'0'#39' ;'
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  KonnyuElles := 0;'
      'end;'
      ''
      'procedure MasterData2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<frxDBEgyElles."ELLES_LEF"> = '#39'1'#39') or  (<frxDBEgyElles."EL' +
        'LES_LEF"> = '#39'2'#39') then'
      '    KonnyuElles := KonnyuElles + 1;'
      ''
      ''
      'end;'
      ''
      'procedure Memo7OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s:= Trim(<frxDBLista."ENAR">);'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo7.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy' +
        '(s,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo7.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Cop' +
        'y(s,12,1)'
      '     else'
      '       memo7.text := <frxDBLista."ENAR">;'
      'end;'
      '(*'
      'procedure Memo84OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s := Trim(<frxDBLista."ANYA_ENAR">);'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo84.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Cop' +
        'y(s,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo84.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Co' +
        'py(s,12,1)'
      '     else'
      '       memo84.text := <frxDBLista."ANYA_ENAR">;'
      'end;'
      ''
      ''
      'procedure Memo83OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s := Trim(<frxDBLista."APA_ANYA">);'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo83.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Cop' +
        'y(s,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo83.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Co' +
        'py(s,12,1)'
      '     else'
      '       memo83.text := <frxDBLista."APA_ANYA">;'
      'end;'
      ''
      'procedure Memo106OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s := Trim(<frxDBLista."ANA_ANYA_ENAR">);'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo106.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Co' +
        'py(s,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo106.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + C' +
        'opy(s,12,1)'
      '     else'
      '       memo106.text := <frxDBLista."ANA_ANYA_ENAR">;'
      'end;'
      '*)'
      'begin'
      ''
      'end.')
    Left = 592
    Top = 232
    Datasets = <
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end
      item
        DataSet = dtsEllesek
        DataSetName = 'frxDBEgyElles'
      end
      item
        DataSet = frxDBDKullem
        DataSetName = 'frxDBKullem'
      end
      item
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
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
        Name = 'IvarNev'
        Value = ''
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
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 192.756091020000000000
          Top = 52.913420000000000000
          Width = 321.259927950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            '[IvarNev] egyedi lap')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 45.354311180000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        Height = 525.354670000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            
              'Teny'#258#169'szet :  [frxDBLista."TENYESZET"] - [Trim(<frxDBLista."TNEV' +
              '2">)], [frxDBLista."VAROS"]')
        end
        object Memo7: TfrxMemoView
          Left = 52.913420000000000000
          Top = 26.456710000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo7OnAfterData'
          OnBeforePrint = 'Memo7OnBeforePrint'
          DataField = 'ENAR'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBLista."ENAR"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'ENAR:')
        end
        object Memo11: TfrxMemoView
          Left = 177.637910000000000000
          Top = 26.456710000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm: [frxDBLista."FULSZAM"]')
        end
        object Memo12: TfrxMemoView
          Left = 340.157700000000000000
          Top = 26.456710000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Teh'#258#169'nsz'#258#711'm. [frxDBLista."TEHENSZAM"]')
        end
        object Memo14: TfrxMemoView
          Left = 525.354670000000000000
          Top = 26.456710000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'K'#258#317'lf.ENAR : [frxDBLista."ID_ENAR"]')
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'TKV : [frxDBLista."TKV"]')
        end
        object Memo18: TfrxMemoView
          Left = 71.811070000000000000
          Top = 79.370130000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Sz'#258#173'n : [frxDBLista."SZIN"]  [frxDBLista."SZINNEV"]')
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si d'#258#711'tum: [frxDBLista."SZULDAT"]')
        end
        object Memo16: TfrxMemoView
          Left = 275.905690000000000000
          Top = 52.913420000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            
              'Marhalev'#258#169'l sz'#258#711'ma: [frxDBLista."MLEVEL1"] [frxDBLista."MLEVEL2"' +
              ']')
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Align = baWidth
          Top = 49.133890000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Align = baWidth
          Top = 75.590600000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          Align = baWidth
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line8: TfrxLineView
          Left = 351.496290000000000000
          Top = 75.590600000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          Left = 355.275820000000000000
          Top = 79.370130000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Fajta : [frxDBLista."FAJTAKOD"]  [frxDBLista."FNEV"]')
        end
        object Memo20: TfrxMemoView
          Left = 79.370130000000000000
          Top = 105.826840000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."VER1"]')
        end
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Top = 105.826840000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'V'#258#169'rh'#258#711'nyad: ')
        end
        object Memo22: TfrxMemoView
          Left = 105.826840000000000000
          Top = 105.826840000000000000
          Width = 45.354338030000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."VSZ1"] %')
        end
        object Memo23: TfrxMemoView
          Left = 158.740260000000000000
          Top = 105.826840000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          DataField = 'VER2'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VER2"]')
        end
        object Memo24: TfrxMemoView
          Left = 185.196970000000000000
          Top = 105.826840000000000000
          Width = 45.354338030000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VSZ2"] %')
        end
        object Memo25: TfrxMemoView
          Left = 245.669450000000000000
          Top = 105.826840000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          DataField = 'VER3'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VER3"]')
        end
        object Memo26: TfrxMemoView
          Left = 272.126160000000000000
          Top = 105.826840000000000000
          Width = 45.354338030000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VSZ3"] %')
        end
        object Memo27: TfrxMemoView
          Left = 325.039580000000000000
          Top = 105.826840000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          DataField = 'VER4'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VER4"]')
        end
        object Memo28: TfrxMemoView
          Left = 351.496290000000000000
          Top = 105.826840000000000000
          Width = 45.354338030000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VSZ4"] %')
        end
        object Line9: TfrxLineView
          Align = baWidth
          Top = 128.504020000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line10: TfrxLineView
          Left = 449.764070000000000000
          Top = 102.047310000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo30: TfrxMemoView
          Left = 434.645950000000000000
          Top = 151.181200000000000000
          DataField = 'KKOD'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KKOD"]')
        end
        object Memo31: TfrxMemoView
          Left = 453.543600000000000000
          Top = 105.826840000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Konstrukci'#258#322's k'#258#322'd: [frxDBLista."KKOD"]')
        end
        object Subreport1: TfrxSubreport
          ShiftMode = smWhenOverlapped
          Top = 234.330860000000000000
          Width = 721.890230000000000000
          Height = 45.354330710000000000
          Page = frxEgyedLista.Page3
          PrintOnParent = True
        end
        object Line11: TfrxLineView
          Align = baWidth
          Top = 154.960730000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo33: TfrxMemoView
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711's d'#258#711'tuma: [frxDBLista."VALDAT"]')
        end
        object Memo34: TfrxMemoView
          Left = 262.330860000000000000
          Top = 132.283550000000000000
          Width = 27.913420000000000000
          Height = 18.897650000000000000
          DataField = 'VALKOR'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."VALKOR"]')
        end
        object Memo35: TfrxMemoView
          Left = 302.362400000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            'T'#258#182'meg: [frxDBLista."VALTOM"]')
        end
        object Memo36: TfrxMemoView
          Left = 389.291590000000000000
          Top = 132.283550000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          HideZeros = True
          Memo.UTF8 = (
            #258#8240'tgy: [frxDBLista."TGYVAL"]')
        end
        object Memo37: TfrxMemoView
          Left = 483.779840000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '205.n: [frxDBLista."TOM205"]')
        end
        object Memo41: TfrxMemoView
          Left = 574.488560000000000000
          Top = 132.283550000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            'SV: [frxDBLista."SV"]')
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 158.740260000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            
              'Sz'#258#711'rmaz'#258#711'si orsz'#258#711'g: [frxDBLista."SZORSZ"] [frxDBLista."ORSZAGN' +
              'EV"]')
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 181.417440000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line12: TfrxLineView
          Left = 343.937230000000000000
          Top = 154.960730000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo43: TfrxMemoView
          Left = 347.716760000000000000
          Top = 158.740260000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Szarvalts'#258#711'g: [frxDBLista."SZARVALTSAG"]')
        end
        object Line13: TfrxLineView
          Left = 487.559370000000000000
          Top = 154.960730000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo44: TfrxMemoView
          Left = 495.118430000000000000
          Top = 158.740260000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Bikanevel'#313#8216' : [frxDBLista."BIKANEVELO"]')
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 185.196970000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            'T'#258#182'mege teny'#258#169'szt'#258#169'sbe '#258#711'll'#258#173't'#258#711'skor: [frxDBLista."TENYTOM"]')
        end
        object Line17: TfrxLineView
          Left = 343.937230000000000000
          Top = 181.417440000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo46: TfrxMemoView
          Left = 347.716760000000000000
          Top = 185.196970000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          HideZeros = True
          Memo.UTF8 = (
            'Kombin'#258#711'lt min'#313#8216's'#258#173't'#313#8216' index: [frxDBLista."KMI"]')
        end
        object Line18: TfrxLineView
          Align = baWidth
          Top = 234.330860000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line19: TfrxLineView
          Height = 517.795610000000000000
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 718.110700000000000000
          Height = 517.795610000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo47: TfrxMemoView
          Left = 49.133890000000000000
          Top = 287.244280000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EAP_KLSZ"]')
        end
        object Memo48: TfrxMemoView
          Left = 49.133890000000000000
          Top = 309.921460000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAP_FSZ"]')
        end
        object Memo63: TfrxMemoView
          Left = 3.779530000000000000
          Top = 287.244280000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Apja:')
        end
        object Line21: TfrxLineView
          Align = baWidth
          Top = 400.630180000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo64: TfrxMemoView
          Left = 3.779530000000000000
          Top = 377.953000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169's d'#258#711'tuma:')
        end
        object Memo65: TfrxMemoView
          Left = 117.165430000000000000
          Top = 377.953000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAP_SZULDAT"]')
        end
        object Memo66: TfrxMemoView
          Left = 49.133890000000000000
          Top = 332.598640000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAP_NEV"]')
        end
        object Memo67: TfrxMemoView
          Left = 3.779530000000000000
          Top = 332.598640000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'N'#258#169'v:')
        end
        object Memo68: TfrxMemoView
          Left = 49.133890000000000000
          Top = 355.275820000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAP_FAJTANEV"]')
        end
        object Memo69: TfrxMemoView
          Left = 3.779530000000000000
          Top = 355.275820000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Fajta:')
        end
        object Memo70: TfrxMemoView
          Left = 306.141930000000000000
          Top = 287.244280000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'V'#258#169'rh'#258#711'nyada:')
        end
        object Memo71: TfrxMemoView
          Left = 306.141930000000000000
          Top = 309.921460000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EAP_VSZ1"] %')
        end
        object Memo72: TfrxMemoView
          Left = 359.055350000000000000
          Top = 309.921460000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAP_F1NEV"]')
        end
        object Memo73: TfrxMemoView
          Left = 306.141930000000000000
          Top = 332.598640000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EAP_VSZ2"] %')
        end
        object Memo74: TfrxMemoView
          Left = 359.055350000000000000
          Top = 332.598640000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAP_F2NEV"]')
        end
        object Memo75: TfrxMemoView
          Left = 306.141930000000000000
          Top = 355.275820000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EAP_VSZ3"] %')
        end
        object Memo76: TfrxMemoView
          Left = 359.055350000000000000
          Top = 355.275820000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAP_F3NEV"]')
        end
        object Memo77: TfrxMemoView
          Left = 306.141930000000000000
          Top = 377.953000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EAP_VSZ4"] %')
        end
        object Memo78: TfrxMemoView
          Left = 359.055350000000000000
          Top = 377.953000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAP_F4NEV"]')
        end
        object Line22: TfrxLineView
          Left = 495.118430000000000000
          Top = 279.685056460000000000
          Height = 120.944960000000000000
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 495.118430000000000000
          Top = 338.267723860000000000
          Width = 222.992270000000000000
          Frame.Typ = [ftTop]
        end
        object Memo79: TfrxMemoView
          Left = 498.897960000000000000
          Top = 287.244280000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Apja:')
        end
        object Memo80: TfrxMemoView
          Left = 544.252320000000000000
          Top = 287.244280000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EAPAP_AZON"]')
        end
        object Memo81: TfrxMemoView
          Left = 498.897960000000000000
          Top = 309.921460000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAPAP_NEV"]')
        end
        object Memo82: TfrxMemoView
          Left = 498.897960000000000000
          Top = 347.716760000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Anyja:')
        end
        object Memo83: TfrxMemoView
          Left = 544.252320000000000000
          Top = 347.716760000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo83OnAfterData'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAPAN_AZON"]')
        end
        object Memo84: TfrxMemoView
          Left = 49.133890000000000000
          Top = 404.409873540000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo84OnAfterData'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAN_ENAR"]')
        end
        object Memo86: TfrxMemoView
          Left = 3.779530000000000000
          Top = 404.409873540000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Anyja:')
        end
        object Memo87: TfrxMemoView
          Left = 3.779530000000000000
          Top = 472.441413540000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169's d'#258#711'tuma:')
        end
        object Memo88: TfrxMemoView
          Left = 117.165430000000000000
          Top = 472.441413540000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAN_SZULDAT"]')
        end
        object Memo89: TfrxMemoView
          Left = 49.133890000000000000
          Top = 427.087053540000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAN_NEV"]')
        end
        object Memo90: TfrxMemoView
          Left = 3.779530000000000000
          Top = 427.087053540000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'N'#258#169'v:')
        end
        object Memo91: TfrxMemoView
          Left = 49.133890000000000000
          Top = 449.764233540000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAN_FAJTANEV"]')
        end
        object Memo92: TfrxMemoView
          Left = 3.779530000000000000
          Top = 449.764233540000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Fajta:')
        end
        object Memo93: TfrxMemoView
          Left = 306.141930000000000000
          Top = 404.409873540000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'V'#258#169'rh'#258#711'nyada:')
        end
        object Memo94: TfrxMemoView
          Left = 306.141930000000000000
          Top = 427.087053540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EAN_VSZ1"] %')
        end
        object Memo95: TfrxMemoView
          Left = 359.055350000000000000
          Top = 427.087053540000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAN_F1NEV"]')
        end
        object Memo96: TfrxMemoView
          Left = 306.141930000000000000
          Top = 449.764233540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EAN_VSZ2"] %')
        end
        object Memo97: TfrxMemoView
          Left = 359.055350000000000000
          Top = 449.764233540000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAN_F2NEV"]')
        end
        object Memo98: TfrxMemoView
          Left = 306.141930000000000000
          Top = 472.441413540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EAN_VSZ3"] %')
        end
        object Memo99: TfrxMemoView
          Left = 359.055350000000000000
          Top = 472.441413540000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAN_F3NEV"]')
        end
        object Memo100: TfrxMemoView
          Left = 306.141930000000000000
          Top = 495.118593540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EAN_VSZ4"] %')
        end
        object Memo101: TfrxMemoView
          Left = 359.055350000000000000
          Top = 495.118593540000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAN_F4NEV"]')
        end
        object Line24: TfrxLineView
          Left = 495.118430000000000000
          Top = 400.630180000000000000
          Height = 117.165430000000000000
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          Left = 495.118430000000000000
          Top = 455.433317400000000000
          Width = 222.992270000000000000
          Frame.Typ = [ftTop]
        end
        object Memo102: TfrxMemoView
          Left = 498.897960000000000000
          Top = 404.409873540000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Apja:')
        end
        object Memo103: TfrxMemoView
          Left = 544.252320000000000000
          Top = 404.409873540000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."EANAP_AZON"]')
        end
        object Memo105: TfrxMemoView
          Left = 498.897960000000000000
          Top = 464.882353540000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Anyja:')
        end
        object Memo106: TfrxMemoView
          Left = 544.252320000000000000
          Top = 464.882353540000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo106OnAfterData'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EANAN_AZON"]')
        end
        object Line26: TfrxLineView
          Align = baWidth
          Top = 517.795610000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo85: TfrxMemoView
          Left = 3.779530000000000000
          Top = 495.118430000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Kombin'#258#711'lt min'#313#8216's'#258#173't'#313#8216' index:')
        end
        object Memo104: TfrxMemoView
          Left = 498.897960000000000000
          Top = 429.866420000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EANAP_NEV"]')
        end
        object Memo107: TfrxMemoView
          Left = 498.897960000000000000
          Top = 487.559370000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EANAN_NEV"]')
        end
        object Memo148: TfrxMemoView
          Left = 212.440940000000000000
          Top = 132.921150000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'V'#258#711'l.kor:')
        end
        object Memo150: TfrxMemoView
          Left = 181.417440000000000000
          Top = 404.409710000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAN_ELL"]')
        end
        object Memo151: TfrxMemoView
          Left = 170.078850000000000000
          Top = 495.118430000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'EAN_KMI'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAN_KMI"]')
        end
        object Memo152: TfrxMemoView
          Left = 3.779530000000000000
          Top = 211.653680000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'Szaporas'#258#711'gi index:')
        end
        object Memo154: TfrxMemoView
          Left = 188.976500000000000000
          Top = 211.653680000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'BNI index:')
        end
        object Memo156: TfrxMemoView
          Left = 332.598640000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'K'#258#317'llemi index:')
        end
        object Memo153: TfrxMemoView
          Left = 124.724490000000000000
          Top = 211.653680000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'SZAPIND'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."SZAPIND"]')
        end
        object Memo155: TfrxMemoView
          Left = 423.307360000000000000
          Top = 211.653680000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'KULLEM_IND'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."KULLEM_IND"]')
        end
        object Memo157: TfrxMemoView
          Left = 260.787570000000000000
          Top = 211.653680000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'BNI'
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."BNI"]')
        end
        object Line50: TfrxLineView
          Align = baWidth
          Top = 207.874150000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 536.693260000000000000
          Top = 211.653680000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            'NET:')
        end
        object Memo6: TfrxMemoView
          Left = 582.047620000000000000
          Top = 211.653680000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBLista."NET_PONT"]')
        end
        object Memo9: TfrxMemoView
          Left = 498.897960000000000000
          Top = 374.173470000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataSet = frxDBLista
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."EAPAN_NEV"]')
        end
      end
      object Memo42: TfrxMemoView
        Left = -3.779530000000000000
        Top = -3.779530000000000000
        DataField = 'SZARVALTSAG'
        DataSet = frxDBLista
        DataSetName = 'frxDBLista'
        Memo.UTF8 = (
          '[frxDBLista."SZARVALTSAG"]')
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 45.354330710000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDKullem
        DataSetName = 'frxDBKullem'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Line14: TfrxLineView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          DataSet = frxDBDKullem
          DataSetName = 'frxDBKullem'
          HideZeros = True
          Memo.UTF8 = (
            'K'#258#317'llemi b'#258#173'r'#258#711'lat'
            'd'#258#711'tuma: [frxDBKullem."BIRDAT"]')
        end
        object Memo60: TfrxMemoView
          Left = 151.181200000000000000
          Top = 11.338582680000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKullem
          DataSetName = 'frxDBKullem'
          HideZeros = True
          Memo.UTF8 = (
            'T'#258#173'pus: [frxDBKullem."TIPUS"]')
        end
        object Memo61: TfrxMemoView
          Left = 287.244280000000000000
          Top = 11.338582680000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKullem
          DataSetName = 'frxDBKullem'
          HideZeros = True
          Memo.UTF8 = (
            'Izmolts'#258#711'g: [frxDBKullem."IZOM"]')
        end
        object Memo62: TfrxMemoView
          Left = 430.866420000000000000
          Top = 11.338582680000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKullem
          DataSetName = 'frxDBKullem'
          HideZeros = True
          Memo.UTF8 = (
            'L'#258#711'bszerkezet: [frxDBKullem."LAB"]')
        end
        object Line16: TfrxLineView
          Left = 136.063080000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo158: TfrxMemoView
          Left = 582.047620000000000000
          Top = 11.338582680000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKullem
          DataSetName = 'frxDBKullem'
          HideZeros = True
          Memo.UTF8 = (
            'T'#313#8216'gy: [frxDBKullem."TOGY"]')
        end
        object Line15: TfrxLineView
          Align = baWidth
          Top = 45.354360000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintOnPreviousPage = True
      object MasterData2: TfrxMasterData
        Height = 49.133890000000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData2OnAfterPrint'
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = dtsEllesek
        DataSetName = 'frxDBEgyElles'
        RowCount = 0
        object Memo109: TfrxMemoView
          Left = 98.267780000000000000
          Width = 109.606370000000000000
          Height = 24.566929130000000000
          DataField = 'E_TERM_DAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."E_TERM_DAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Width = 98.267780000000000000
          Height = 24.566929130000000000
          DataField = 'ELLES_DATUM'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."ELLES_DATUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 37.795300000000000000
          Top = 24.566929130000000000
          Width = 60.472480000000000000
          Height = 24.566929130000000000
          DataField = 'KEK'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBEgyElles."KEK"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Top = 24.566929130000000000
          Width = 37.795275590000000000
          Height = 24.566929130000000000
          DataField = 'ELLES_LEF'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."ELLES_LEF"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 260.787570000000000000
          Width = 22.677180000000000000
          Height = 24.566929130000000000
          DataField = 'BORJU_IVAR'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."BORJU_IVAR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 309.921460000000000000
          Width = 34.015770000000000000
          Height = 24.566929130000000000
          DataField = 'SZARVALTSAG'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."SZARVALTSAG"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 283.464750000000000000
          Width = 26.456710000000000000
          Height = 24.566929130000000000
          DataField = 'BORJU_SULY'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."BORJU_SULY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 343.937007870000000000
          Width = 52.913420000000000000
          Height = 24.566929130000000000
          DataField = 'VALDAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."VALDAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 396.850650000000000000
          Width = 52.913420000000000000
          Height = 24.566929130000000000
          DataField = 'VALTOM'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."VALTOM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 449.764070000000000000
          Width = 30.236240000000000000
          Height = 24.566929130000000000
          DataField = 'TOM205'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."TOM205"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 529.134200000000000000
          Width = 30.236240000000000000
          Height = 24.566929130000000000
          DataField = 'SV'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."SV"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 559.370440000000000000
          Width = 83.149660000000000000
          Height = 24.566929130000000000
          DataField = 'KIKDAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KIKDAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 642.520100000000000000
          Width = 37.795300000000000000
          Height = 24.566929130000000000
          DataField = 'KIKOD'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KIKOD"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 680.315400000000000000
          Width = 37.795300000000000000
          Height = 24.566929130000000000
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KIKOK"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line28: TfrxLineView
          Align = baWidth
          Top = 49.133890000000200000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line29: TfrxLineView
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 98.267780000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 207.874150000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 260.787570000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 309.921259842520000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 343.937007870000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line35: TfrxLineView
          Left = 480.000310000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          Left = 529.133858267717000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          Left = 642.520100000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          Left = 718.110700000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo32: TfrxMemoView
          Left = 480.000310000000000000
          Width = 49.133890000000000000
          Height = 24.566929130000000000
          DataField = 'TGYVAL'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."TGYVAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 98.267780000000000000
          Top = 24.566929130000000000
          Width = 26.456710000000000000
          Height = 24.566929130000000000
          DataField = 'E_TERM_DAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."E_TERM_DAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line56: TfrxLineView
          Top = 24.566929130000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line57: TfrxLineView
          Left = 37.795300000000000000
          Top = 24.566929130000000000
          Height = 24.566929133858300000
          Frame.Typ = [ftLeft]
        end
        object Memo53: TfrxMemoView
          Left = 124.724490000000000000
          Top = 24.566929130000000000
          Width = 83.149660000000000000
          Height = 24.566929130000000000
          DataField = 'E_TERM_DAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."E_TERM_DAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 207.874150000000000000
          Width = 52.913420000000000000
          Height = 24.566929130000000000
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."BORJU_ENAR"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 207.874150000000000000
          Top = 24.566929130000000000
          Width = 52.913420000000000000
          Height = 24.566929130000000000
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."BORJU_ENAR"]')
          ParentFont = False
        end
        object Line60: TfrxLineView
          Left = 283.464750000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo57: TfrxMemoView
          Left = 260.787570000000000000
          Top = 24.566929133858300000
          Width = 22.677180000000000000
          Height = 24.566929130000000000
          DataField = 'BORJU_IVAR'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."BORJU_IVAR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 283.464750000000000000
          Top = 24.566929133858300000
          Width = 26.456710000000000000
          Height = 24.566929130000000000
          DataField = 'BORJU_SULY'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."BORJU_SULY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 309.921460000000000000
          Top = 24.566929133858300000
          Width = 34.015770000000000000
          Height = 24.566929130000000000
          DataField = 'SZARVALTSAG'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."SZARVALTSAG"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line67: TfrxLineView
          Left = 396.850650000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo121: TfrxMemoView
          Left = 343.937230000000000000
          Top = 24.566929133858300000
          Width = 52.913420000000000000
          Height = 24.566929130000000000
          DataField = 'VALDAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."VALDAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line69: TfrxLineView
          Left = 449.764070000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo126: TfrxMemoView
          Left = 396.850650000000000000
          Top = 24.566929133858300000
          Width = 52.913420000000000000
          Height = 24.566929130000000000
          DataField = 'VALTOM'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."VALTOM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          Left = 449.764070000000000000
          Top = 24.566929133858300000
          Width = 30.236240000000000000
          Height = 24.566929130000000000
          DataField = 'TOM205'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."TOM205"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 480.000310000000000000
          Top = 24.566929133858300000
          Width = 49.133890000000000000
          Height = 24.566929130000000000
          DataField = 'TGYVAL'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."TGYVAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line71: TfrxLineView
          Left = 559.370440000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo135: TfrxMemoView
          Left = 529.134200000000000000
          Top = 24.566929130000000000
          Width = 30.236240000000000000
          Height = 24.566929130000000000
          DataField = 'SV'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."SV"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          Left = 559.370440000000000000
          Top = 24.566929130000000000
          Width = 83.149660000000000000
          Height = 24.566929130000000000
          DataField = 'KIKDAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KIKDAT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line75: TfrxLineView
          Left = 680.315400000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo162: TfrxMemoView
          Left = 642.520100000000000000
          Top = 24.566929133858300000
          Width = 37.795300000000000000
          Height = 24.566929130000000000
          DataField = 'KIKOD'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KIKOD"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          Left = 680.315400000000000000
          Top = 24.566929133858300000
          Width = 37.795300000000000000
          Height = 24.566929130000000000
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."KIKOK"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo108: TfrxMemoView
          Left = 311.760831270000000000
          Top = 3.779529999999990000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ell'#258#169'sek')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 98.267780000000000000
          Top = 34.015770000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Term'#258#169'keny'#258#173't'#258#169's ideje')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Top = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ell'#258#169's d'#258#711'tuma')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Top = 56.692950000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ell'#258#169's lef.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 260.787570000000000000
          Top = 34.015770000000000000
          Width = 22.677180000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ivar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 309.921460000000000000
          Top = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Szarv')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          Left = 343.937230000000000000
          Top = 34.015770000000000000
          Width = 52.913420000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711's d'#258#711'tuma')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 480.000310000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #258#8240'letnapi t'#258#182'm.gyar.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 449.764070000000000000
          Top = 34.015770000000000000
          Width = 30.236240000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '205 napos t'#258#182'meg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 529.134200000000000000
          Top = 34.015770000000000000
          Width = 30.236240000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SV %')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          Left = 559.370440000000000000
          Top = 34.015770000000000000
          Width = 83.149660000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kiker'#258#317'l'#258#169's ideje')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 642.520100000000000000
          Top = 34.015770000000000000
          Width = 37.795300000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kik. m'#258#322'dja')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line27: TfrxLineView
          Align = baWidth
          Top = 79.370130000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line40: TfrxLineView
          Align = baWidth
          Top = 34.015770000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line41: TfrxLineView
          Left = 98.267780000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 207.874150000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          Left = 260.787570000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          Left = 309.921259842520000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line45: TfrxLineView
          Left = 343.937007874016000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line46: TfrxLineView
          Left = 480.000310000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line47: TfrxLineView
          Left = 529.133858267717000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line48: TfrxLineView
          Left = 642.520100000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line39: TfrxLineView
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line49: TfrxLineView
          Left = 718.110700000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo38: TfrxMemoView
          Left = 98.267780000000000000
          Top = 56.692950000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Term'#258#169'keny'#258#173't'#313#8216' bika')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line54: TfrxLineView
          Top = 56.692950000000000000
          Width = 207.874150000000000000
          Frame.Typ = [ftTop]
        end
        object Memo40: TfrxMemoView
          Left = 37.795300000000000000
          Top = 56.692950000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Ell'#258#169'sek k'#258#182'zti id'#313#8216)
          ParentFont = False
          VAlign = vaCenter
        end
        object Line55: TfrxLineView
          Left = 37.795300000000000000
          Top = 56.692950000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo54: TfrxMemoView
          Left = 207.874150000000000000
          Top = 34.015770000000000000
          Width = 52.913420000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Borj'#258#351' ENAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line58: TfrxLineView
          Left = 283.464566929134000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo58: TfrxMemoView
          Left = 283.464750000000000000
          Top = 34.015770000000000000
          Width = 26.456710000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#317'l. s'#258#351'ly')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line66: TfrxLineView
          Left = 396.850650000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo123: TfrxMemoView
          Left = 396.850650000000000000
          Top = 34.015770000000000000
          Width = 52.913420000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'V'#258#711'laszt'#258#711'si t'#258#182'meg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line68: TfrxLineView
          Left = 449.764070000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line70: TfrxLineView
          Left = 559.370440000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line74: TfrxLineView
          Left = 680.315400000000000000
          Top = 34.015770000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo161: TfrxMemoView
          Left = 680.315400000000000000
          Top = 34.015770000000000000
          Width = 37.795300000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kik. oka')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 52.913420000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object SysMemo3: TfrxSysMemoView
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%5.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[SUM(<frxDBEgyElles."KEK">,MasterData2)/IIF((count(MasterData2,0' +
              ')-1)>0, (count(MasterData2,0)-1),1) ]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'K'#258#169't ell'#258#169's k'#258#182'zti napok '#258#711'tlaga:')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'K'#258#182'nny'#313#177' ell'#258#169'sek ar'#258#711'nya:')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 185.196970000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo149OnBeforePrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData4: TfrxMasterData
        Height = 49.133890000000000000
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData2OnAfterPrint'
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = dtsEllesek
        DataSetName = 'frxDBEgyElles'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'E_TERM_DAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."E_TERM_DAT"]')
        end
        object Memo29: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'ELLES_DATUM'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."ELLES_DATUM"]')
        end
        object Line52: TfrxLineView
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line53: TfrxLineView
          Left = 170.078850000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line59: TfrxLineView
          Left = 506.457020000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Line61: TfrxLineView
          Left = 718.110700000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo49: TfrxMemoView
          Left = 173.858380000000000000
          Top = 3.779530000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'E_TERM_DAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Memo.UTF8 = (
            '[frxDBEgyElles."E_TERM_DAT"]')
        end
        object Memo51: TfrxMemoView
          Left = 173.858380000000000000
          Top = 26.456710000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'E_TERM_DAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          Memo.UTF8 = (
            '[frxDBEgyElles."E_TERM_DAT"]')
        end
        object Memo52: TfrxMemoView
          Left = 514.016080000000000000
          Top = 15.118120000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'E_TERM_DAT'
          DataSet = dtsEllesek
          DataSetName = 'frxDBEgyElles'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBEgyElles."E_TERM_DAT"]')
        end
        object Line51: TfrxLineView
          Align = baWidth
          Top = 49.133890000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
      object Header2: TfrxHeader
        Height = 52.913385826771700000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo166: TfrxMemoView
          Left = 5.618901270000000000
          Width = 706.772110000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            'Utols'#258#322' ell'#258#169's ut'#258#711'ni term'#258#169'keny'#258#173't'#258#169'sek')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Top = 34.015770000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Term.d'#258#711'tum')
        end
        object Line63: TfrxLineView
          Align = baWidth
          Left = -0.000000000000000444
          Top = 34.015770000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Line64: TfrxLineView
          Left = 170.078850000000000000
          Top = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
        object Line65: TfrxLineView
          Left = 506.457020000000000000
          Top = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft]
        end
        object Line72: TfrxLineView
          Left = -0.000000000000000444
          Top = 30.236240000000000000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line73: TfrxLineView
          Left = 718.110700000000000000
          Top = 34.015770000000000000
          Height = 41.574830000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo168: TfrxMemoView
          Left = 170.078850000000000000
          Top = 34.015770000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Bika')
        end
        object Memo169: TfrxMemoView
          Left = 506.457020000000000000
          Top = 34.015770000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Eredm'#258#169'nye')
        end
        object Line62: TfrxLineView
          Align = baWidth
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object dtsLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'TENYESZET=TENYESZET'
      'TNEV2=TNEV2'
      'VAROS=VAROS'
      'FULSZAM=FULSZAM'
      'ID_ENAR=ID_ENAR'
      'TEHENSZAM=TEHENSZAM'
      'SZULDAT=SZULDAT'
      'MLEVEL1=MLEVEL1'
      'MLEVEL2=MLEVEL2'
      'TKV=TKV'
      'SZIN=SZIN'
      'SZINNEV=SZINNEV'
      'FAJTAKOD=FAJTAKOD'
      'FNEV=FNEV'
      'VER1=VER1'
      'VSZ1=VSZ1'
      'VER2=VER2'
      'VSZ2=VSZ2'
      'VER3=VER3'
      'VSZ3=VSZ3'
      'VER4=VER4'
      'VSZ4=VSZ4'
      'KKOD=KKOD'
      'VALDAT=VALDAT'
      'VALKOR=VALKOR'
      'VALTOM=VALTOM'
      'TOM205=TOM205'
      'SV=SV'
      'TGYVAL=TGYVAL'
      'SZORSZ=SZORSZ'
      'ORSZAGNEV=ORSZAGNEV'
      'SZARVALTSAG=SZARVALTSAG'
      'BIKANEVELO=BIKANEVELO'
      'TENYTOM=TENYTOM'
      'KMI=KMI'
      'IVAR=IVAR'
      'BNI=BNI'
      'SZAPIND=SZAPIND'
      'KULLEM_IND=KULLEM_IND'
      'NET_PONT=NET_PONT'
      'EAP_KLSZ=EAP_KLSZ'
      'EAP_NEV=EAP_NEV'
      'EAP_FSZ=EAP_FSZ'
      'EAP_FAJTAKOD=EAP_FAJTAKOD'
      'EAP_FAJTANEV=EAP_FAJTANEV'
      'EAP_SZULDAT=EAP_SZULDAT'
      'EAP_V1=EAP_V1'
      'EAP_VSZ1=EAP_VSZ1'
      'EAP_F1NEV=EAP_F1NEV'
      'EAP_V2=EAP_V2'
      'EAP_VSZ2=EAP_VSZ2'
      'EAP_F2NEV=EAP_F2NEV'
      'EAP_V3=EAP_V3'
      'EAP_VSZ3=EAP_VSZ3'
      'EAP_F3NEV=EAP_F3NEV'
      'EAP_V4=EAP_V4'
      'EAP_VSZ4=EAP_VSZ4'
      'EAP_F4NEV=EAP_F4NEV'
      'EAN_ENAR=EAN_ENAR'
      'EAN_ELL=EAN_ELL'
      'EAN_NEV=EAN_NEV'
      'EAN_FAJTAKOD=EAN_FAJTAKOD'
      'EAN_FAJTANEV=EAN_FAJTANEV'
      'EAN_SZULDAT=EAN_SZULDAT'
      'EAN_KMI=EAN_KMI'
      'EAN_V1=EAN_V1'
      'EAN_VSZ1=EAN_VSZ1'
      'EAN_F1NEV=EAN_F1NEV'
      'EAN_V2=EAN_V2'
      'EAN_VSZ2=EAN_VSZ2'
      'EAN_F2NEV=EAN_F2NEV'
      'EAN_V3=EAN_V3'
      'EAN_VSZ3=EAN_VSZ3'
      'EAN_F3NEV=EAN_F3NEV'
      'EAN_V4=EAN_V4'
      'EAN_VSZ4=EAN_VSZ4'
      'EAN_F4NEV=EAN_F4NEV'
      'EAPAP_AZON=EAPAP_AZON'
      'EAPAP_NEV=EAPAP_NEV'
      'EAPAN_AZON=EAPAN_AZON'
      'EAPAN_NEV=EAPAN_NEV'
      'EANAP_AZON=EANAP_AZON'
      'EANAP_NEV=EANAP_NEV'
      'EANAN_AZON=EANAN_AZON'
      'EANAN_NEV=EANAN_NEV')
    OpenDataSource = False
    DataSet = sdsLista
    Left = 32
    Top = 144
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'TENYESZET=TENYESZET'
      'TNEV2=TNEV2'
      'VAROS=VAROS'
      'FULSZAM=FULSZAM'
      'ID_ENAR=ID_ENAR'
      'TEHENSZAM=TEHENSZAM'
      'SZULDAT=SZULDAT'
      'MLEVEL1=MLEVEL1'
      'MLEVEL2=MLEVEL2'
      'TKV=TKV'
      'SZIN=SZIN'
      'SZINNEV=SZINNEV'
      'FAJTAKOD=FAJTAKOD'
      'FNEV=FNEV'
      'VER1=VER1'
      'VSZ1=VSZ1'
      'VER2=VER2'
      'VSZ2=VSZ2'
      'VER3=VER3'
      'VSZ3=VSZ3'
      'VER4=VER4'
      'VSZ4=VSZ4'
      'KKOD=KKOD'
      'VALDAT=VALDAT'
      'VALKOR=VALKOR'
      'VALTOM=VALTOM'
      'TOM205=TOM205'
      'SV=SV'
      'TGYVAL=TGYVAL'
      'SZORSZ=SZORSZ'
      'ORSZAGNEV=ORSZAGNEV'
      'SZARVALTSAG=SZARVALTSAG'
      'BIKANEVELO=BIKANEVELO'
      'TENYTOM=TENYTOM'
      'KMI=KMI'
      'IVAR=IVAR'
      'BNI=BNI'
      'SZAPIND=SZAPIND'
      'KULLEM_IND=KULLEM_IND'
      'NET_PONT=NET_PONT'
      'EAP_KLSZ=EAP_KLSZ'
      'EAP_NEV=EAP_NEV'
      'EAP_FSZ=EAP_FSZ'
      'EAP_FAJTAKOD=EAP_FAJTAKOD'
      'EAP_FAJTANEV=EAP_FAJTANEV'
      'EAP_SZULDAT=EAP_SZULDAT'
      'EAP_V1=EAP_V1'
      'EAP_VSZ1=EAP_VSZ1'
      'EAP_F1NEV=EAP_F1NEV'
      'EAP_V2=EAP_V2'
      'EAP_VSZ2=EAP_VSZ2'
      'EAP_F2NEV=EAP_F2NEV'
      'EAP_V3=EAP_V3'
      'EAP_VSZ3=EAP_VSZ3'
      'EAP_F3NEV=EAP_F3NEV'
      'EAP_V4=EAP_V4'
      'EAP_VSZ4=EAP_VSZ4'
      'EAP_F4NEV=EAP_F4NEV'
      'EAN_ENAR=EAN_ENAR'
      'EAN_ELL=EAN_ELL'
      'EAN_NEV=EAN_NEV'
      'EAN_FAJTAKOD=EAN_FAJTAKOD'
      'EAN_FAJTANEV=EAN_FAJTANEV'
      'EAN_SZULDAT=EAN_SZULDAT'
      'EAN_KMI=EAN_KMI'
      'EAN_V1=EAN_V1'
      'EAN_VSZ1=EAN_VSZ1'
      'EAN_F1NEV=EAN_F1NEV'
      'EAN_V2=EAN_V2'
      'EAN_VSZ2=EAN_VSZ2'
      'EAN_F2NEV=EAN_F2NEV'
      'EAN_V3=EAN_V3'
      'EAN_VSZ3=EAN_VSZ3'
      'EAN_F3NEV=EAN_F3NEV'
      'EAN_V4=EAN_V4'
      'EAN_VSZ4=EAN_VSZ4'
      'EAN_F4NEV=EAN_F4NEV'
      'EAPAP_AZON=EAPAP_AZON'
      'EAPAP_NEV=EAPAP_NEV'
      'EAPAN_AZON=EAPAN_AZON'
      'EAPAN_NEV=EAPAN_NEV'
      'EANAP_AZON=EANAP_AZON'
      'EANAP_NEV=EANAP_NEV'
      'EANAN_AZON=EANAN_AZON'
      'EANAN_NEV=EANAN_NEV')
    OpenDataSource = False
    DataSet = sdsLista
    Left = 136
    Top = 240
  end
  object sdsLista: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT E.ENAR,'#13#10'E.TENYESZET,'#13#10'TENY.TNEV2,'#13#10'TENY.VAROS as VAROS,'#13 +
      #10'E.FULSZAM,'#13#10'E.ID_ENAR,'#13#10'E.TEHENSZAM,'#13#10'E.SZULDAT,'#13#10'E.MLEVEL1,'#13#10'E' +
      '.MLEVEL2,'#13#10'E.TKV,'#13#10'E.SZIN, SZIN.NEV AS SZINNEV,'#13#10'E.FAJTAKOD, EF.' +
      'FNEV,'#13#10'E.VER1, E.VSZ1, E.VER2, E.VSZ2, E.VER3, E.VSZ3, E.VER4, E' +
      '.VSZ4,'#13#10'E.KKOD,'#13#10'E.VALDAT, CAST(TRUNC(E.VALDAT - E.SZULDAT) AS N' +
      'UMBER (5,0)) AS VALKOR, E.VALTOM, E.TOM205, E.SV,'#13#10'CAST(TOMGYAR(' +
      'E.SZUL_SULY, E.VALTOM, E.SZULDAT, E.VALDAT) AS INTEGER) AS TGYVA' +
      'L,'#13#10'E.SZORSZ, ORSZAG.NEV AS ORSZAGNEV,'#13#10'E.SZARVALTSAG,'#13#10'E.BIKANE' +
      'VELO,'#13#10'E.TENYTOM,'#13#10'E.MIN AS KMI,'#13#10'E.IVAR,'#13#10'CAST (BNI(E.ID) AS NU' +
      'MERIC(10,3)) AS BNI,'#13#10'CAST (SZAPIND(E.ID) AS NUMERIC(10,3)) AS S' +
      'ZAPIND,'#13#10'CAST (KULLEM_IND(E.ENAR) AS NUMERIC(10,3)) AS KULLEM_IN' +
      'D,'#13#10'E.NET_PONT,'#13#10'E.APAKLSZ AS EAP_KLSZ,'#13#10'EAP.NEV AS EAP_NEV,'#13#10'EA' +
      'P.FSZ AS EAP_FSZ,'#13#10'EAP.FKOD AS EAP_FAJTAKOD, EAPF.FNEV AS EAP_FA' +
      'JTANEV,'#13#10'EAP.SZULDAT AS EAP_SZULDAT,'#13#10'EAP.VER1 AS EAP_V1, EAP.VS' +
      'Z1 AS EAP_VSZ1, EAPF1.FNEV AS EAP_F1NEV,'#13#10'EAP.VER2 AS EAP_V2, EA' +
      'P.VSZ2 AS EAP_VSZ2, EAPF2.FNEV AS EAP_F2NEV,'#13#10'EAP.VER3 AS EAP_V3' +
      ', EAP.VSZ3 AS EAP_VSZ3, EAPF3.FNEV AS EAP_F3NEV,'#13#10'EAP.VER4 AS EA' +
      'P_V4, EAP.VSZ4 AS EAP_VSZ4, EAPF4.FNEV AS EAP_F4NEV,'#13#10'E.ANYA_ENA' +
      'R AS EAN_ENAR,'#13#10'E.ANYA_ELL AS EAN_ELL,'#13#10'EAN.NEV AS EAN_NEV,'#13#10'EAN' +
      '.FAJTAKOD AS EAN_FAJTAKOD, EANF.FNEV AS EAN_FAJTANEV,'#13#10'EAN.SZULD' +
      'AT AS EAN_SZULDAT,'#13#10'EAN.MIN AS EAN_KMI,'#13#10'EAN.VER1 AS EAN_V1, EAN' +
      '.VSZ1 AS EAN_VSZ1, EANF1.FNEV AS EAN_F1NEV,'#13#10'EAN.VER2 AS EAN_V2,' +
      ' EAN.VSZ2 AS EAN_VSZ2, EANF2.FNEV AS EAN_F2NEV,'#13#10'EAN.VER3 AS EAN' +
      '_V3, EAN.VSZ3 AS EAN_VSZ3, EANF3.FNEV AS EAN_F3NEV,'#13#10'EAN.VER4 AS' +
      ' EAN_V4, EAN.VSZ4 AS EAN_VSZ4, EANF4.FNEV AS EAN_F4NEV,'#13#10'EAPAP.K' +
      'AZON AS EAPAP_AZON,'#13#10'EAPAP.NEVEE AS EAPAP_NEV,'#13#10'EAP.AENAR AS EAP' +
      'AN_AZON,'#13#10'EAP.ANYANEV AS EAPAN_NEV,'#13#10'EANAP.KAZON AS EANAP_AZON,'#13 +
      #10'EANAP.NEVEE AS EANAP_NEV,'#13#10'EANAN.ENAR AS EANAN_AZON,'#13#10'EANAN.NEV' +
      ' AS EANAN_NEV'#13#10'FROM EGYEDEK E '#13#10'LEFT JOIN TENY ON TENY.TKOD = E.' +
      'TENYESZET '#13#10'LEFT JOIN SZIN ON SZIN.KOD = E.SZIN '#13#10'LEFT JOIN FAJT' +
      'A EF ON EF.FKOD = E.FAJTAKOD '#13#10'LEFT JOIN ORSZAG ON ORSZAG.KOD1 =' +
      ' E.SZORSZ '#13#10'LEFT JOIN KODOK IVARF ON IVARF.KOD = E.IVAR AND IVAR' +
      'F.KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39' '#13#10'LEFT JOIN APA EAP ON TRIM(EAP.K' +
      'PLSZ) = TRIM(E.APAKLSZ) AND E.APAKLSZ IS NOT NULL'#13#10'LEFT JOIN FAJ' +
      'TA EAPF ON EAPF.FKOD = EAP.FKOD AND EAP.KPLSZ IS NOT NULL '#13#10'LEFT' +
      ' JOIN FAJTA EAPF1 ON EAPF1.FKOD = EAP.VER1'#13#10'LEFT JOIN FAJTA EAPF' +
      '2 ON EAPF2.FKOD = EAP.VER2'#13#10'LEFT JOIN FAJTA EAPF3 ON EAPF3.FKOD ' +
      '= EAP.VER3'#13#10'LEFT JOIN FAJTA EAPF4 ON EAPF4.FKOD = EAP.VER4'#13#10'LEFT' +
      ' JOIN EGYEDEK EAN ON (((EAN.ENAR = TRIM(E.ANYA_ENAR)) AND (E.ANY' +
      'A_ENAR > '#39' '#39')) OR ((EAN.TEHENSZAM = TRIM(E.ANYA_ELL)) AND (E.ANY' +
      'A_ELL > '#39' '#39'))) AND EAN.TENYESZET = E.TENYESZET '#13#10'LEFT JOIN FAJTA' +
      ' EANF ON EANF.FKOD = EAN.FAJTAKOD '#13#10'LEFT JOIN FAJTA EANF1 ON EAN' +
      'F1.FKOD = EAN.VER1'#13#10'LEFT JOIN FAJTA EANF2 ON EANF2.FKOD = EAN.VE' +
      'R2'#13#10'LEFT JOIN FAJTA EANF3 ON EANF3.FKOD = EAN.VER3'#13#10'LEFT JOIN FA' +
      'JTA EANF4 ON EANF4.FKOD = EAN.VER4'#13#10'LEFT JOIN BIKTXT EAPAP ON EA' +
      'PAP.KAZTP = '#39'4'#39' AND TRIM(EAPAP.KAZON) = TRIM(EAP.APAKPLSZ)'#13#10'LEFT' +
      ' JOIN BIKTXT EANAP ON ((TRIM(EANAP.KAZON) = TRIM(EAN.APAKLSZ)) O' +
      'R (TRIM(EANAP.KAZON) = TRIM(EAN.APA_FULSZAM)) OR (TRIM(EANAP.KAZ' +
      'ON) = TRIM(EAN.ID_APA))) AND EANAP.KAZON IS NOT NULL'#13#10'LEFT JOIN ' +
      'EGYEDEK EANAN ON ((TRIM(EANAN.ENAR) = TRIM(EAN.ANYA_ENAR) AND EA' +
      'N.ANYA_ENAR IS NOT NULL) OR (TRIM(EANAN.TEHENSZAM) = TRIM(EAN.AN' +
      'YA_ELL) AND EAN.ANYA_ELL IS NOT NULL) OR (TRIM(EANAN.ID_ENAR) = ' +
      'TRIM(EAN.ANYA_ID_ENAR)) AND EAN.ANYA_ID_ENAR IS NOT NULL)'#13#10'where' +
      ' E.ENAR  = '#39'3207476221'#39
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT E.ENAR,'#13#10'E.TENYESZET,'#13#10'TENY.TNEV2,'#13#10'TENY.VAROS as VAROS,'#13 +
      #10'E.FULSZAM,'#13#10'E.ID_ENAR,'#13#10'E.TEHENSZAM,'#13#10'E.SZULDAT,'#13#10'E.MLEVEL1,'#13#10'E' +
      '.MLEVEL2,'#13#10'E.TKV,'#13#10'E.SZIN, SZIN.NEV AS SZINNEV,'#13#10'E.FAJTAKOD, EF.' +
      'FNEV,'#13#10'E.VER1, E.VSZ1, E.VER2, E.VSZ2, E.VER3, E.VSZ3, E.VER4, E' +
      '.VSZ4,'#13#10'E.KKOD,'#13#10'E.VALDAT, CAST(TRUNC(E.VALDAT - E.SZULDAT) AS N' +
      'UMBER (5,0)) AS VALKOR, E.VALTOM, E.TOM205, E.SV,'#13#10'CAST(TOMGYAR(' +
      'E.SZUL_SULY, E.VALTOM, E.SZULDAT, E.VALDAT) AS INTEGER) AS TGYVA' +
      'L,'#13#10'E.SZORSZ, ORSZAG.NEV AS ORSZAGNEV,'#13#10'E.SZARVALTSAG,'#13#10'E.BIKANE' +
      'VELO,'#13#10'E.TENYTOM,'#13#10'E.MIN AS KMI,'#13#10'E.IVAR,'#13#10'CAST (BNI(E.ID) AS NU' +
      'MERIC(10,3)) AS BNI,'#13#10'CAST (SZAPIND(E.ID) AS NUMERIC(10,3)) AS S' +
      'ZAPIND,'#13#10'CAST (KULLEM_IND(E.ENAR) AS NUMERIC(10,3)) AS KULLEM_IN' +
      'D,'#13#10'E.NET_PONT,'#13#10'E.APAKLSZ AS EAP_KLSZ,'#13#10'EAP.NEV AS EAP_NEV,'#13#10'EA' +
      'P.FSZ AS EAP_FSZ,'#13#10'EAP.FKOD AS EAP_FAJTAKOD, EAPF.FNEV AS EAP_FA' +
      'JTANEV,'#13#10'EAP.SZULDAT AS EAP_SZULDAT,'#13#10'EAP.VER1 AS EAP_V1, EAP.VS' +
      'Z1 AS EAP_VSZ1, EAPF1.FNEV AS EAP_F1NEV,'#13#10'EAP.VER2 AS EAP_V2, EA' +
      'P.VSZ2 AS EAP_VSZ2, EAPF2.FNEV AS EAP_F2NEV,'#13#10'EAP.VER3 AS EAP_V3' +
      ', EAP.VSZ3 AS EAP_VSZ3, EAPF3.FNEV AS EAP_F3NEV,'#13#10'EAP.VER4 AS EA' +
      'P_V4, EAP.VSZ4 AS EAP_VSZ4, EAPF4.FNEV AS EAP_F4NEV,'#13#10'E.ANYA_ENA' +
      'R AS EAN_ENAR,'#13#10'E.ANYA_ELL AS EAN_ELL,'#13#10'EAN.NEV AS EAN_NEV,'#13#10'EAN' +
      '.FAJTAKOD AS EAN_FAJTAKOD, EANF.FNEV AS EAN_FAJTANEV,'#13#10'EAN.SZULD' +
      'AT AS EAN_SZULDAT,'#13#10'EAN.MIN AS EAN_KMI,'#13#10'EAN.VER1 AS EAN_V1, EAN' +
      '.VSZ1 AS EAN_VSZ1, EANF1.FNEV AS EAN_F1NEV,'#13#10'EAN.VER2 AS EAN_V2,' +
      ' EAN.VSZ2 AS EAN_VSZ2, EANF2.FNEV AS EAN_F2NEV,'#13#10'EAN.VER3 AS EAN' +
      '_V3, EAN.VSZ3 AS EAN_VSZ3, EANF3.FNEV AS EAN_F3NEV,'#13#10'EAN.VER4 AS' +
      ' EAN_V4, EAN.VSZ4 AS EAN_VSZ4, EANF4.FNEV AS EAN_F4NEV,'#13#10'EAPAP.K' +
      'AZON AS EAPAP_AZON,'#13#10'EAPAP.NEVEE AS EAPAP_NEV,'#13#10'EAP.AENAR AS EAP' +
      'AN_AZON,'#13#10'EAP.ANYANEV AS EAPAN_NEV,'#13#10'EANAP.KAZON AS EANAP_AZON,'#13 +
      #10'EANAP.NEVEE AS EANAP_NEV,'#13#10'EANAN.ENAR AS EANAN_AZON,'#13#10'EANAN.NEV' +
      ' AS EANAN_NEV'#13#10'FROM EGYEDEK E '#13#10'LEFT JOIN TENY ON TENY.TKOD = E.' +
      'TENYESZET '#13#10'LEFT JOIN SZIN ON SZIN.KOD = E.SZIN '#13#10'LEFT JOIN FAJT' +
      'A EF ON EF.FKOD = E.FAJTAKOD '#13#10'LEFT JOIN ORSZAG ON ORSZAG.KOD1 =' +
      ' E.SZORSZ '#13#10'LEFT JOIN KODOK IVARF ON IVARF.KOD = E.IVAR AND IVAR' +
      'F.KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39' '#13#10'LEFT JOIN APA EAP ON TRIM(EAP.K' +
      'PLSZ) = TRIM(E.APAKLSZ) AND E.APAKLSZ IS NOT NULL'#13#10'LEFT JOIN FAJ' +
      'TA EAPF ON EAPF.FKOD = EAP.FKOD AND EAP.KPLSZ IS NOT NULL '#13#10'LEFT' +
      ' JOIN FAJTA EAPF1 ON EAPF1.FKOD = EAP.VER1'#13#10'LEFT JOIN FAJTA EAPF' +
      '2 ON EAPF2.FKOD = EAP.VER2'#13#10'LEFT JOIN FAJTA EAPF3 ON EAPF3.FKOD ' +
      '= EAP.VER3'#13#10'LEFT JOIN FAJTA EAPF4 ON EAPF4.FKOD = EAP.VER4'#13#10'LEFT' +
      ' JOIN EGYEDEK EAN ON (((EAN.ENAR = TRIM(E.ANYA_ENAR)) AND (E.ANY' +
      'A_ENAR > '#39' '#39')) OR ((EAN.TEHENSZAM = TRIM(E.ANYA_ELL)) AND (E.ANY' +
      'A_ELL > '#39' '#39'))) AND EAN.TENYESZET = E.TENYESZET '#13#10'LEFT JOIN FAJTA' +
      ' EANF ON EANF.FKOD = EAN.FAJTAKOD '#13#10'LEFT JOIN FAJTA EANF1 ON EAN' +
      'F1.FKOD = EAN.VER1'#13#10'LEFT JOIN FAJTA EANF2 ON EANF2.FKOD = EAN.VE' +
      'R2'#13#10'LEFT JOIN FAJTA EANF3 ON EANF3.FKOD = EAN.VER3'#13#10'LEFT JOIN FA' +
      'JTA EANF4 ON EANF4.FKOD = EAN.VER4'#13#10'LEFT JOIN BIKTXT EAPAP ON EA' +
      'PAP.KAZTP = '#39'4'#39' AND TRIM(EAPAP.KAZON) = TRIM(EAP.APAKPLSZ)'#13#10'LEFT' +
      ' JOIN BIKTXT EANAP ON ((TRIM(EANAP.KAZON) = TRIM(EAN.APAKLSZ)) O' +
      'R (TRIM(EANAP.KAZON) = TRIM(EAN.APA_FULSZAM)) OR (TRIM(EANAP.KAZ' +
      'ON) = TRIM(EAN.ID_APA))) AND EANAP.KAZON IS NOT NULL'#13#10'LEFT JOIN ' +
      'EGYEDEK EANAN ON ((TRIM(EANAN.ENAR) = TRIM(EAN.ANYA_ENAR) AND EA' +
      'N.ANYA_ENAR IS NOT NULL) OR (TRIM(EANAN.TEHENSZAM) = TRIM(EAN.AN' +
      'YA_ELL) AND EAN.ANYA_ELL IS NOT NULL) OR (TRIM(EANAN.ID_ENAR) = ' +
      'TRIM(EAN.ANYA_ID_ENAR)) AND EAN.ANYA_ID_ENAR IS NOT NULL)'#13#10'where' +
      ' E.ENAR  = '#39'3207476221'#39
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 139
    Top = 176
    object sdsListaENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsListaTENYESZET: TWideStringField
      FieldName = 'TENYESZET'
      Size = 7
    end
    object sdsListaTNEV2: TWideStringField
      FieldName = 'TNEV2'
      Size = 78
    end
    object sdsListaVAROS: TWideStringField
      FieldName = 'VAROS'
    end
    object sdsListaFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      Size = 15
    end
    object sdsListaID_ENAR: TWideStringField
      FieldName = 'ID_ENAR'
      Size = 15
    end
    object sdsListaTEHENSZAM: TWideStringField
      FieldName = 'TEHENSZAM'
      Size = 15
    end
    object sdsListaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsListaMLEVEL1: TWideStringField
      FieldName = 'MLEVEL1'
      Size = 7
    end
    object sdsListaMLEVEL2: TWideStringField
      FieldName = 'MLEVEL2'
      Size = 7
    end
    object sdsListaTKV: TWideStringField
      FieldName = 'TKV'
      Size = 1
    end
    object sdsListaSZIN: TWideStringField
      FieldName = 'SZIN'
      Size = 1
    end
    object sdsListaSZINNEV: TWideStringField
      FieldName = 'SZINNEV'
      Size = 40
    end
    object sdsListaFAJTAKOD: TWideStringField
      FieldName = 'FAJTAKOD'
      Size = 5
    end
    object sdsListaFNEV: TWideStringField
      FieldName = 'FNEV'
      Size = 40
    end
    object sdsListaVER1: TWideStringField
      FieldName = 'VER1'
      Size = 10
    end
    object sdsListaVSZ1: TBCDField
      FieldName = 'VSZ1'
      Precision = 6
      Size = 2
    end
    object sdsListaVER2: TWideStringField
      FieldName = 'VER2'
      Size = 10
    end
    object sdsListaVSZ2: TBCDField
      FieldName = 'VSZ2'
      Precision = 6
      Size = 2
    end
    object sdsListaVER3: TWideStringField
      FieldName = 'VER3'
      Size = 10
    end
    object sdsListaVSZ3: TBCDField
      FieldName = 'VSZ3'
      Precision = 6
      Size = 2
    end
    object sdsListaVER4: TWideStringField
      FieldName = 'VER4'
      Size = 10
    end
    object sdsListaVSZ4: TBCDField
      FieldName = 'VSZ4'
      Precision = 6
      Size = 2
    end
    object sdsListaKKOD: TWideStringField
      FieldName = 'KKOD'
      Size = 3
    end
    object sdsListaVALDAT: TDateTimeField
      FieldName = 'VALDAT'
    end
    object sdsListaVALKOR: TIntegerField
      FieldName = 'VALKOR'
      ReadOnly = True
    end
    object sdsListaVALTOM: TIntegerField
      FieldName = 'VALTOM'
    end
    object sdsListaTOM205: TIntegerField
      FieldName = 'TOM205'
    end
    object sdsListaSV: TIntegerField
      FieldName = 'SV'
    end
    object sdsListaTGYVAL: TBCDField
      FieldName = 'TGYVAL'
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object sdsListaSZORSZ: TWideStringField
      FieldName = 'SZORSZ'
      Size = 3
    end
    object sdsListaORSZAGNEV: TWideStringField
      FieldName = 'ORSZAGNEV'
      Size = 30
    end
    object sdsListaSZARVALTSAG: TWideStringField
      FieldName = 'SZARVALTSAG'
      Size = 1
    end
    object sdsListaBIKANEVELO: TWideStringField
      FieldName = 'BIKANEVELO'
      Size = 1
    end
    object sdsListaTENYTOM: TIntegerField
      FieldName = 'TENYTOM'
    end
    object sdsListaKMI: TBCDField
      FieldName = 'KMI'
      Precision = 6
      Size = 2
    end
    object sdsListaIVAR: TWideStringField
      FieldName = 'IVAR'
      Size = 1
    end
    object sdsListaBNI: TBCDField
      FieldName = 'BNI'
      ReadOnly = True
      Precision = 10
      Size = 3
    end
    object sdsListaSZAPIND: TBCDField
      FieldName = 'SZAPIND'
      ReadOnly = True
      Precision = 10
      Size = 3
    end
    object sdsListaKULLEM_IND: TBCDField
      FieldName = 'KULLEM_IND'
      ReadOnly = True
      Precision = 10
      Size = 3
    end
    object sdsListaNET_PONT: TIntegerField
      FieldName = 'NET_PONT'
    end
    object sdsListaEAP_KLSZ: TWideStringField
      FieldName = 'EAP_KLSZ'
      Size = 10
    end
    object sdsListaEAP_NEV: TWideStringField
      FieldName = 'EAP_NEV'
      Size = 40
    end
    object sdsListaEAP_FSZ: TWideStringField
      FieldName = 'EAP_FSZ'
      Size = 15
    end
    object sdsListaEAP_FAJTAKOD: TWideStringField
      FieldName = 'EAP_FAJTAKOD'
      Size = 10
    end
    object sdsListaEAP_FAJTANEV: TWideStringField
      FieldName = 'EAP_FAJTANEV'
      Size = 40
    end
    object sdsListaEAP_SZULDAT: TDateTimeField
      FieldName = 'EAP_SZULDAT'
    end
    object sdsListaEAP_V1: TWideStringField
      FieldName = 'EAP_V1'
      Size = 10
    end
    object sdsListaEAP_VSZ1: TBCDField
      FieldName = 'EAP_VSZ1'
      Precision = 6
      Size = 2
    end
    object sdsListaEAP_F1NEV: TWideStringField
      FieldName = 'EAP_F1NEV'
      Size = 40
    end
    object sdsListaEAP_V2: TWideStringField
      FieldName = 'EAP_V2'
      Size = 10
    end
    object sdsListaEAP_VSZ2: TBCDField
      FieldName = 'EAP_VSZ2'
      Precision = 6
      Size = 2
    end
    object sdsListaEAP_F2NEV: TWideStringField
      FieldName = 'EAP_F2NEV'
      Size = 40
    end
    object sdsListaEAP_V3: TWideStringField
      FieldName = 'EAP_V3'
      Size = 10
    end
    object sdsListaEAP_VSZ3: TBCDField
      FieldName = 'EAP_VSZ3'
      Precision = 6
      Size = 2
    end
    object sdsListaEAP_F3NEV: TWideStringField
      FieldName = 'EAP_F3NEV'
      Size = 40
    end
    object sdsListaEAP_V4: TWideStringField
      FieldName = 'EAP_V4'
      Size = 10
    end
    object sdsListaEAP_VSZ4: TBCDField
      FieldName = 'EAP_VSZ4'
      Precision = 6
      Size = 2
    end
    object sdsListaEAP_F4NEV: TWideStringField
      FieldName = 'EAP_F4NEV'
      Size = 40
    end
    object sdsListaEAN_ENAR: TWideStringField
      FieldName = 'EAN_ENAR'
      Size = 10
    end
    object sdsListaEAN_ELL: TWideStringField
      FieldName = 'EAN_ELL'
      Size = 11
    end
    object sdsListaEAN_NEV: TWideStringField
      FieldName = 'EAN_NEV'
      Size = 30
    end
    object sdsListaEAN_FAJTAKOD: TWideStringField
      FieldName = 'EAN_FAJTAKOD'
      Size = 5
    end
    object sdsListaEAN_FAJTANEV: TWideStringField
      FieldName = 'EAN_FAJTANEV'
      Size = 40
    end
    object sdsListaEAN_SZULDAT: TDateTimeField
      FieldName = 'EAN_SZULDAT'
    end
    object sdsListaEAN_KMI: TBCDField
      FieldName = 'EAN_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListaEAN_V1: TWideStringField
      FieldName = 'EAN_V1'
      Size = 10
    end
    object sdsListaEAN_VSZ1: TBCDField
      FieldName = 'EAN_VSZ1'
      Precision = 6
      Size = 2
    end
    object sdsListaEAN_F1NEV: TWideStringField
      FieldName = 'EAN_F1NEV'
      Size = 40
    end
    object sdsListaEAN_V2: TWideStringField
      FieldName = 'EAN_V2'
      Size = 10
    end
    object sdsListaEAN_VSZ2: TBCDField
      FieldName = 'EAN_VSZ2'
      Precision = 6
      Size = 2
    end
    object sdsListaEAN_F2NEV: TWideStringField
      FieldName = 'EAN_F2NEV'
      Size = 40
    end
    object sdsListaEAN_V3: TWideStringField
      FieldName = 'EAN_V3'
      Size = 10
    end
    object sdsListaEAN_VSZ3: TBCDField
      FieldName = 'EAN_VSZ3'
      Precision = 6
      Size = 2
    end
    object sdsListaEAN_F3NEV: TWideStringField
      FieldName = 'EAN_F3NEV'
      Size = 40
    end
    object sdsListaEAN_V4: TWideStringField
      FieldName = 'EAN_V4'
      Size = 10
    end
    object sdsListaEAN_VSZ4: TBCDField
      FieldName = 'EAN_VSZ4'
      Precision = 6
      Size = 2
    end
    object sdsListaEAN_F4NEV: TWideStringField
      FieldName = 'EAN_F4NEV'
      Size = 40
    end
    object sdsListaEAPAP_AZON: TWideStringField
      FieldName = 'EAPAP_AZON'
      Size = 40
    end
    object sdsListaEAPAP_NEV: TWideStringField
      FieldName = 'EAPAP_NEV'
      Size = 60
    end
    object sdsListaEAPAN_AZON: TWideStringField
      FieldName = 'EAPAN_AZON'
      Size = 10
    end
    object sdsListaEAPAN_NEV: TWideStringField
      FieldName = 'EAPAN_NEV'
      Size = 40
    end
    object sdsListaEANAP_AZON: TWideStringField
      FieldName = 'EANAP_AZON'
      Size = 40
    end
    object sdsListaEANAP_NEV: TWideStringField
      FieldName = 'EANAP_NEV'
      Size = 60
    end
    object sdsListaEANAN_AZON: TWideStringField
      FieldName = 'EANAN_AZON'
      Size = 14
    end
    object sdsListaEANAN_NEV: TWideStringField
      FieldName = 'EANAN_NEV'
      Size = 30
    end
  end
end
