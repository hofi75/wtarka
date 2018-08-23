inherited frmEgyediLapLista: TfrmEgyediLapLista
  Left = 562
  Top = 226
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
        DataSetName = 'frxDBLista'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          AutoWidth = True
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm: [frxDBLista."FULSZAM"]')
        end
        object Memo12: TfrxMemoView
          Left = 340.157700000000000000
          Top = 26.456710000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'K'#258#317'lf.ENAR : [frxDBLista."ID_ENAR"]')
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Sz'#258#173'n : [frxDBLista."SZIN"]  [frxDBLista."SZINNEV"]')
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Fajta : [frxDBLista."FAJTAKOD"]  [frxDBLista."FNEV"]')
        end
        object Memo20: TfrxMemoView
          Left = 79.370130000000000000
          Top = 105.826840000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KKOD"]')
        end
        object Memo31: TfrxMemoView
          Left = 453.543600000000000000
          Top = 105.826840000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Bikanevel'#313#8216' : [frxDBLista."BIKANEVELO"]')
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 185.196970000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_V1NEV"]')
        end
        object Memo73: TfrxMemoView
          Left = 306.141930000000000000
          Top = 332.598640000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_V2NEV"]')
        end
        object Memo75: TfrxMemoView
          Left = 306.141930000000000000
          Top = 355.275820000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_V3NEV"]')
        end
        object Memo77: TfrxMemoView
          Left = 306.141930000000000000
          Top = 377.953000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_V1NEV"]')
        end
        object Memo96: TfrxMemoView
          Left = 306.141930000000000000
          Top = 449.764233540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_V2NEV"]')
        end
        object Memo98: TfrxMemoView
          Left = 306.141930000000000000
          Top = 472.441413540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_V3NEV"]')
        end
        object Memo100: TfrxMemoView
          Left = 306.141930000000000000
          Top = 495.118593540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
    Left = 284
    Top = 160
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
    Left = 288
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
    Left = 379
    Top = 160
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
    Left = 376
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
    ReportOptions.LastChange = 43314.378340856490000000
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
          Left = 199.428014350000000000
          Top = 12.246753330000000000
          Width = 309.921337950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '   EGYEDI   LAP   ')
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
        DataSetName = 'frxDBLista'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 712.162956670000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            
              'Teny'#258#169'szet :  [frxDBLista."TENYESZET"]   [frxDBLista."TNEV2"]  [' +
              'frxDBLista."TNEV2"]')
        end
        object Memo7: TfrxMemoView
          Left = 52.913420000000000000
          Top = 26.456710000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo7OnAfterData'
          OnBeforePrint = 'Memo7OnBeforePrint'
          DataField = 'ENAR'
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm: [frxDBLista."FULSZAM"]')
        end
        object Memo12: TfrxMemoView
          Left = 340.157700000000000000
          Top = 26.456710000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Teh'#258#169'nsz'#258#711'm. [frxDBLista."TEHENSZAM"]')
        end
        object Memo14: TfrxMemoView
          Left = 525.354670000000000000
          Top = 26.456710000000000000
          Width = 188.944960000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'K'#258#317'lf.ENAR : [frxDBLista."ID_ENAR"]')
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Sz'#258#173'n : [frxDBLista."SZIN"]  [frxDBLista."SZINNEV"]')
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Fajta : [frxDBLista."FAJTAKOD"]  [frxDBLista."FNEV"]')
        end
        object Memo20: TfrxMemoView
          Left = 79.370130000000000000
          Top = 105.826840000000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."KKOD"]')
        end
        object Memo31: TfrxMemoView
          Left = 453.543600000000000000
          Top = 105.826840000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            'Bikanevel'#313#8216' : [frxDBLista."BIKANEVELO"]')
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 185.196970000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_V1NEV"]')
        end
        object Memo73: TfrxMemoView
          Left = 306.141930000000000000
          Top = 332.598640000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_V2NEV"]')
        end
        object Memo75: TfrxMemoView
          Left = 306.141930000000000000
          Top = 355.275820000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."APA_V3NEV"]')
        end
        object Memo77: TfrxMemoView
          Left = 306.141930000000000000
          Top = 377.953000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_V1NEV"]')
        end
        object Memo96: TfrxMemoView
          Left = 306.141930000000000000
          Top = 449.764233540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_V2NEV"]')
        end
        object Memo98: TfrxMemoView
          Left = 306.141930000000000000
          Top = 472.441413540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
          DataSetName = 'frxDBLista'
          Memo.UTF8 = (
            '[frxDBLista."ANYA_V3NEV"]')
        end
        object Memo100: TfrxMemoView
          Left = 306.141930000000000000
          Top = 495.118593540000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
        object Memo1: TfrxMemoView
          Left = 7.333333330000000000
          Top = 2.981136670000000000
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
        object SysMemo4: TfrxSysMemoView
          Left = 60.000000000000000000
          Top = 2.981136670000000000
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
        object SysMemo5: TfrxSysMemoView
          Left = 126.000000000000000000
          Top = 2.981136670000000000
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
      end
      object Memo42: TfrxMemoView
        Left = -3.779530000000000000
        Top = -3.779530000000000000
        DataField = 'SZARVALTSAG'
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
  object dtsLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = True
    OpenDataSource = False
    Left = 136
    Top = 176
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'SZULDAT=SZULDAT'
      'MLEVEL1=MLEVEL1'
      'MLEVEL2=MLEVEL2'
      'TKV=TKV'
      'SZIN=SZIN'
      'FAJTAKOD=FAJTAKOD'
      'SZINNEV=SZINNEV'
      'FNEV=FNEV'
      'VSZ1=VSZ1'
      'VSZ2=VSZ2'
      'VSZ3=VSZ3'
      'VSZ4=VSZ4'
      'KKOD=KKOD'
      'VALDAT=VALDAT'
      'VALTOM=VALTOM'
      'TOM205=TOM205'
      'SV=SV'
      'SZORSZ=SZORSZ'
      'ORSZAGNEV=ORSZAGNEV'
      'SZARVALTSAG=SZARVALTSAG'
      'BIKANEVELO=BIKANEVELO'
      'TENYTOM=TENYTOM'
      'IVAR=IVAR'
      'APANEV=APANEV'
      'APA_FSZ=APA_FSZ'
      'APA_FAJTANEV=APA_FAJTANEV'
      'APA_SZULDAT=APA_SZULDAT'
      'APA_APAENAR=APA_APAENAR'
      'APA_APAFSZ=APA_APAFSZ'
      'APA_VSZ1=APA_VSZ1'
      'APA_V1NEV=APA_V1NEV'
      'APA_VSZ2=APA_VSZ2'
      'APA_V2NEV=APA_V2NEV'
      'APA_VSZ3=APA_VSZ3'
      'APA_V3NEV=APA_V3NEV'
      'APA_VSZ4=APA_VSZ4'
      'APA_V4NEV=APA_V4NEV'
      'APA_ANYA=APA_ANYA'
      'ANYA_ENAR=ANYA_ENAR'
      'ANYA_NEV=ANYA_NEV'
      'ANYA_FAJTANEV=ANYA_FAJTANEV'
      'ANYA_SZULDAT=ANYA_SZULDAT'
      'ANYA_VSZ1=ANYA_VSZ1'
      'ANYA_V1NEV=ANYA_V1NEV'
      'ANYA_VSZ2=ANYA_VSZ2'
      'ANYA_V2NEV=ANYA_V2NEV'
      'ANYA_VSZ3=ANYA_VSZ3'
      'ANYA_V3NEV=ANYA_V3NEV'
      'ANYA_VSZ4=ANYA_VSZ4'
      'ALLDAT=ALLDAT'
      'KIKDAT=KIKDAT'
      'TENYESZET=TENYESZET'
      'TNEV2=TNEV2'
      'ID_ENAR=ID_ENAR'
      'TEHENSZAM=TEHENSZAM'
      'ANYA_V4NEV=ANYA_V4NEV'
      'ANA_APAFSZ=ANA_APAFSZ'
      'ANA_ANYA_FULSZAM=ANA_ANYA_FULSZAM'
      'VER1=VER1'
      'VER2=VER2'
      'VER3=VER3'
      'VER4=VER4'
      'APA_FAJTAKOD=APA_FAJTAKOD'
      'APA_V1=APA_V1'
      'APA_V2=APA_V2'
      'APA_V3=APA_V3'
      'APA_V4=APA_V4'
      'ANYA_FAJTAKOD=ANYA_FAJTAKOD'
      'ANYA_APAKLSZ=ANYA_APAKLSZ'
      'ANYA_V1=ANYA_V1'
      'ANYA_V2=ANYA_V2'
      'ANYA_V3=ANYA_V3'
      'ANYA_V4=ANYA_V4'
      'KIKOD=KIKOD'
      'KIKOK=KIKOK'
      'APAKLSZ=APAKLSZ'
      'APA_APAKLSZ=APA_APAKLSZ'
      'KMI=KMI'
      'VALKOR=VALKOR'
      'TGYVAL=TGYVAL'
      'ANA_ANYA_ENAR=ANA_ANYA_ENAR'
      'ANYA_ELL=ANYA_ELL'
      'ANYA_MIN=ANYA_MIN'
      'BNI=BNI'
      'SZAPIND=SZAPIND'
      'KULLEM_IND=KULLEM_IND')
    OpenDataSource = False
    Left = 64
    Top = 256
  end
  object sdsLista: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select E.ENAR, E.TENYESZET, TENY.TNEV2,'#13#10'       E.FULSZAM, E.ID_' +
      'ENAR,E.TEHENSZAM,'#13#10'       E.SZULDAT,'#13#10'       E.MLEVEL1, E.MLEVEL' +
      '2,'#13#10'       E.TKV,'#13#10'       E.SZIN, SZIN.NEV AS SZINNEV,'#13#10'       E' +
      '.FAJTAKOD,EF.FNEV,'#13#10'       E.VER1,E.VSZ1,E.VER2,E.VSZ2,E.VER3,E.' +
      'VSZ3,E.VER4,E.VSZ4,'#13#10'       E.KKOD,'#13#10'       E.VALDAT, CAST(TRUNC' +
      '( E.VALDAT - E.SZULDAT) AS NUMBER (5,0)) AS VALKOR, E.VALTOM, E.' +
      'TOM205, E.SV,'#13#10'       Cast(tomgyar(e.szul_suly, e.valtom, e.szul' +
      'dat,e.valdat) as Integer) as tgyval,'#13#10'       E.SZORSZ,ORSZAG.NEV' +
      ' AS ORSZAGNEV,'#13#10'       E.SZARVALTSAG,'#13#10'       E.BIKANEVELO,'#13#10'   ' +
      '    E.TENYTOM,'#13#10'       E.MIN as KMI,'#13#10'       E.IVAR,'#13#10'       E.A' +
      'PAKLSZ,'#13#10'       EAPA.NEV AS APANEV,'#13#10'       EAPA.FSZ AS APA_FSZ,' +
      ' EAPA.APAKPLSZ AS APA_APAKLSZ,'#13#10'       EAPA.FKOD AS APA_FAJTAKOD' +
      ', AF.FNEV AS APA_FAJTANEV,'#13#10'       EAPA.SZULDAT AS APA_SZULDAT,'#13 +
      #10'       EAPA.APAENAR AS APA_APAENAR, EAPA.APAFSZ AS APA_APAFSZ,'#13 +
      #10'       EAPA.VER1 AS APA_V1, EAPA.VSZ1 AS APA_VSZ1 ,AF1.FNEV AS ' +
      'APA_V1NEV,'#13#10'       EAPA.VER2 AS APA_V2, EAPA.VSZ2 AS APA_VSZ2 ,A' +
      'F2.FNEV AS APA_V2NEV,'#13#10'       EAPA.VER3 AS APA_V3, EAPA.VSZ3 AS ' +
      'APA_VSZ3 ,AF3.FNEV AS APA_V3NEV,'#13#10'       EAPA.VER4 AS APA_V4, EA' +
      'PA.VSZ4 AS APA_VSZ4 ,AF4.FNEV AS APA_V4NEV,'#13#10'       EAPA.ANAN as' +
      ' APA_ANYA,'#13#10'       E.ANYA_ENAR, E.ANYA_ELL, ANA.NEV AS ANYA_NEV,' +
      #13#10'       ANA.FAJTAKOD AS ANYA_FAJTAKOD, ANF.FNEV AS ANYA_FAJTANE' +
      'V,'#13#10'       ANA.SZULDAT AS ANYA_SZULDAT,'#13#10'       ANA.APAKLSZ AS A' +
      'NYA_APAKLSZ,'#13#10'       ANA.VER1 AS ANYA_V1, ANA.VSZ1 AS ANYA_VSZ1 ' +
      ',ANF1.FNEV AS ANYA_V1NEV,'#13#10'       ANA.VER2 AS ANYA_V2, ANA.VSZ2 ' +
      'AS ANYA_VSZ2 ,ANF2.FNEV AS ANYA_V2NEV,'#13#10'       ANA.VER3 AS ANYA_' +
      'V3, ANA.VSZ3 AS ANYA_VSZ3 ,ANF3.FNEV AS ANYA_V3NEV,'#13#10'       ANA.' +
      'VER4 AS ANYA_V4, ANA.VSZ4 AS ANYA_VSZ4 ,ANF4.FNEV AS ANYA_V4NEV,' +
      #13#10'       E.ALLDAT,'#13#10'       E.KIKDAT,'#13#10'       E.KIKOD,'#13#10'       E.' +
      'KIKOK,'#13#10'       AAPA.FSZ AS ANA_APAFSZ,'#13#10'       ANA.ANYA_ENAR AS ' +
      'ANA_ANYA_ENAR,'#13#10'       ANA.ANYA_ELL as ANA_ANYA_FULSZAM, ANA.min' +
      ' as ANYA_MIN,'#13#10'       cast(BNI(E.id) as numeric(10,3)) as BNI,'#13#10 +
      '       cast(SZAPIND(E.id) as numeric(10,3)) as SZAPIND,'#13#10'       ' +
      'cast(KULLEM_IND(E.ENAR) as numeric(10,3)) as KULLEM_IND'#13#10'       ' +
      'FROM EGYEDEK E'#13#10'       LEFT JOIN TENY ON TENY.TKOD = E.TENYESZET' +
      #13#10'       LEFT JOIN SZIN ON SZIN.KOD = E.SZIN'#13#10'       LEFT JOIN F' +
      'AJTA EF ON EF.FKOD = E.FAJTAKOD'#13#10'       LEFT JOIN ORSZAG ON ORSZ' +
      'AG.KOD1 = E.SZORSZ'#13#10'       left join KODOK IVARF on IVARF.KOD = ' +
      'E.IVAR and IVARF.KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39#13#10'       left join ' +
      'APA EAPA on EAPA.KPLSZ = E.APAKLSZ and E.APAKLSZ is not null '#13#10' ' +
      '      LEFT JOIN FAJTA AF ON AF.FKOD = EAPA.FKOD'#13#10'       LEFT JOI' +
      'N FAJTA AF1 ON AF1.FKOD = EAPA.VER1'#13#10'       LEFT JOIN FAJTA AF2 ' +
      'ON AF2.FKOD = EAPA.VER2'#13#10'       LEFT JOIN FAJTA AF3 ON AF3.FKOD ' +
      '= EAPA.VER3'#13#10'       left join FAJTA AF4 on AF4.FKOD = EAPA.VER4'#13 +
      #10'       left join EGYEDEK ANA on (((ANA.ENAR = trim(E.ANYA_ENAR)' +
      ') and (E.ANYA_ENAR > '#39#39')) or ((ANA.TEHENSZAM=trim(E.ANYA_ELL)) a' +
      'nd (E.ANYA_ELL > '#39#39') ))'#13#10'       LEFT JOIN FAJTA ANF ON ANF.FKOD ' +
      '= ANA.FAJTAKOD'#13#10'       LEFT JOIN FAJTA ANF1 ON ANF1.FKOD = ANA.V' +
      'ER1'#13#10'       LEFT JOIN FAJTA ANF2 ON ANF2.FKOD = ANA.VER2'#13#10'      ' +
      ' LEFT JOIN FAJTA ANF3 ON ANF3.FKOD = ANA.VER3'#13#10'       left join ' +
      'FAJTA ANF4 on ANF4.FKOD = ANA.VER4'#13#10'       LEFT JOIN APA AAPA ON' +
      ' AAPA.KPLSZ = ANA.APAKLSZ AND ANA.APAKLSZ IS NOT NULL'#13#10'       wh' +
      'ere E.ENAR  = :ENAR_ID;'
    DataSet.Parameters = <
      item
        Name = 'ENAR_ID'
        Size = -1
        Value = Null
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select E.ENAR, E.TENYESZET, TENY.TNEV2,'#13#10'       E.FULSZAM, E.ID_' +
      'ENAR,E.TEHENSZAM,'#13#10'       E.SZULDAT,'#13#10'       E.MLEVEL1, E.MLEVEL' +
      '2,'#13#10'       E.TKV,'#13#10'       E.SZIN, SZIN.NEV AS SZINNEV,'#13#10'       E' +
      '.FAJTAKOD,EF.FNEV,'#13#10'       E.VER1,E.VSZ1,E.VER2,E.VSZ2,E.VER3,E.' +
      'VSZ3,E.VER4,E.VSZ4,'#13#10'       E.KKOD,'#13#10'       E.VALDAT, CAST(TRUNC' +
      '( E.VALDAT - E.SZULDAT) AS NUMBER (5,0)) AS VALKOR, E.VALTOM, E.' +
      'TOM205, E.SV,'#13#10'       Cast(tomgyar(e.szul_suly, e.valtom, e.szul' +
      'dat,e.valdat) as Integer) as tgyval,'#13#10'       E.SZORSZ,ORSZAG.NEV' +
      ' AS ORSZAGNEV,'#13#10'       E.SZARVALTSAG,'#13#10'       E.BIKANEVELO,'#13#10'   ' +
      '    E.TENYTOM,'#13#10'       E.MIN as KMI,'#13#10'       E.IVAR,'#13#10'       E.A' +
      'PAKLSZ,'#13#10'       EAPA.NEV AS APANEV,'#13#10'       EAPA.FSZ AS APA_FSZ,' +
      ' EAPA.APAKPLSZ AS APA_APAKLSZ,'#13#10'       EAPA.FKOD AS APA_FAJTAKOD' +
      ', AF.FNEV AS APA_FAJTANEV,'#13#10'       EAPA.SZULDAT AS APA_SZULDAT,'#13 +
      #10'       EAPA.APAENAR AS APA_APAENAR, EAPA.APAFSZ AS APA_APAFSZ,'#13 +
      #10'       EAPA.VER1 AS APA_V1, EAPA.VSZ1 AS APA_VSZ1 ,AF1.FNEV AS ' +
      'APA_V1NEV,'#13#10'       EAPA.VER2 AS APA_V2, EAPA.VSZ2 AS APA_VSZ2 ,A' +
      'F2.FNEV AS APA_V2NEV,'#13#10'       EAPA.VER3 AS APA_V3, EAPA.VSZ3 AS ' +
      'APA_VSZ3 ,AF3.FNEV AS APA_V3NEV,'#13#10'       EAPA.VER4 AS APA_V4, EA' +
      'PA.VSZ4 AS APA_VSZ4 ,AF4.FNEV AS APA_V4NEV,'#13#10'       EAPA.ANAN as' +
      ' APA_ANYA,'#13#10'       E.ANYA_ENAR, E.ANYA_ELL, ANA.NEV AS ANYA_NEV,' +
      #13#10'       ANA.FAJTAKOD AS ANYA_FAJTAKOD, ANF.FNEV AS ANYA_FAJTANE' +
      'V,'#13#10'       ANA.SZULDAT AS ANYA_SZULDAT,'#13#10'       ANA.APAKLSZ AS A' +
      'NYA_APAKLSZ,'#13#10'       ANA.VER1 AS ANYA_V1, ANA.VSZ1 AS ANYA_VSZ1 ' +
      ',ANF1.FNEV AS ANYA_V1NEV,'#13#10'       ANA.VER2 AS ANYA_V2, ANA.VSZ2 ' +
      'AS ANYA_VSZ2 ,ANF2.FNEV AS ANYA_V2NEV,'#13#10'       ANA.VER3 AS ANYA_' +
      'V3, ANA.VSZ3 AS ANYA_VSZ3 ,ANF3.FNEV AS ANYA_V3NEV,'#13#10'       ANA.' +
      'VER4 AS ANYA_V4, ANA.VSZ4 AS ANYA_VSZ4 ,ANF4.FNEV AS ANYA_V4NEV,' +
      #13#10'       E.ALLDAT,'#13#10'       E.KIKDAT,'#13#10'       E.KIKOD,'#13#10'       E.' +
      'KIKOK,'#13#10'       AAPA.FSZ AS ANA_APAFSZ,'#13#10'       ANA.ANYA_ENAR AS ' +
      'ANA_ANYA_ENAR,'#13#10'       ANA.ANYA_ELL as ANA_ANYA_FULSZAM, ANA.min' +
      ' as ANYA_MIN,'#13#10'       cast(BNI(E.id) as numeric(10,3)) as BNI,'#13#10 +
      '       cast(SZAPIND(E.id) as numeric(10,3)) as SZAPIND,'#13#10'       ' +
      'cast(KULLEM_IND(E.ENAR) as numeric(10,3)) as KULLEM_IND'#13#10'       ' +
      'FROM EGYEDEK E'#13#10'       LEFT JOIN TENY ON TENY.TKOD = E.TENYESZET' +
      #13#10'       LEFT JOIN SZIN ON SZIN.KOD = E.SZIN'#13#10'       LEFT JOIN F' +
      'AJTA EF ON EF.FKOD = E.FAJTAKOD'#13#10'       LEFT JOIN ORSZAG ON ORSZ' +
      'AG.KOD1 = E.SZORSZ'#13#10'       left join KODOK IVARF on IVARF.KOD = ' +
      'E.IVAR and IVARF.KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39#13#10'       left join ' +
      'APA EAPA on EAPA.KPLSZ = E.APAKLSZ and E.APAKLSZ is not null '#13#10' ' +
      '      LEFT JOIN FAJTA AF ON AF.FKOD = EAPA.FKOD'#13#10'       LEFT JOI' +
      'N FAJTA AF1 ON AF1.FKOD = EAPA.VER1'#13#10'       LEFT JOIN FAJTA AF2 ' +
      'ON AF2.FKOD = EAPA.VER2'#13#10'       LEFT JOIN FAJTA AF3 ON AF3.FKOD ' +
      '= EAPA.VER3'#13#10'       left join FAJTA AF4 on AF4.FKOD = EAPA.VER4'#13 +
      #10'       left join EGYEDEK ANA on (((ANA.ENAR = trim(E.ANYA_ENAR)' +
      ') and (E.ANYA_ENAR > '#39#39')) or ((ANA.TEHENSZAM=trim(E.ANYA_ELL)) a' +
      'nd (E.ANYA_ELL > '#39#39') ))'#13#10'       LEFT JOIN FAJTA ANF ON ANF.FKOD ' +
      '= ANA.FAJTAKOD'#13#10'       LEFT JOIN FAJTA ANF1 ON ANF1.FKOD = ANA.V' +
      'ER1'#13#10'       LEFT JOIN FAJTA ANF2 ON ANF2.FKOD = ANA.VER2'#13#10'      ' +
      ' LEFT JOIN FAJTA ANF3 ON ANF3.FKOD = ANA.VER3'#13#10'       left join ' +
      'FAJTA ANF4 on ANF4.FKOD = ANA.VER4'#13#10'       LEFT JOIN APA AAPA ON' +
      ' AAPA.KPLSZ = ANA.APAKLSZ AND ANA.APAKLSZ IS NOT NULL'#13#10'       wh' +
      'ere E.ENAR  = :ENAR_ID;'
    Provider.DataSet.Parameters = <
      item
        Name = 'ENAR_ID'
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 59
    Top = 184
    object sdsListaENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsListaFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      FixedChar = True
      Size = 15
    end
    object sdsListaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsListaMLEVEL1: TWideStringField
      FieldName = 'MLEVEL1'
      FixedChar = True
      Size = 7
    end
    object sdsListaMLEVEL2: TWideStringField
      FieldName = 'MLEVEL2'
      FixedChar = True
      Size = 7
    end
    object sdsListaTKV: TWideStringField
      FieldName = 'TKV'
      FixedChar = True
      Size = 1
    end
    object sdsListaSZIN: TWideStringField
      FieldName = 'SZIN'
      FixedChar = True
      Size = 1
    end
    object sdsListaFAJTAKOD: TWideStringField
      FieldName = 'FAJTAKOD'
      Size = 5
    end
    object sdsListaSZINNEV: TWideStringField
      FieldName = 'SZINNEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaFNEV: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaVSZ1: TBCDField
      FieldName = 'VSZ1'
      Precision = 6
      Size = 2
    end
    object sdsListaVSZ2: TBCDField
      FieldName = 'VSZ2'
      Precision = 6
      Size = 2
    end
    object sdsListaVSZ3: TBCDField
      FieldName = 'VSZ3'
      Precision = 6
      Size = 2
    end
    object sdsListaVSZ4: TBCDField
      FieldName = 'VSZ4'
      Precision = 6
      Size = 2
    end
    object sdsListaKKOD: TWideStringField
      FieldName = 'KKOD'
      FixedChar = True
      Size = 3
    end
    object sdsListaVALDAT: TDateTimeField
      FieldName = 'VALDAT'
    end
    object sdsListaVALTOM: TSmallintField
      FieldName = 'VALTOM'
    end
    object sdsListaTOM205: TSmallintField
      FieldName = 'TOM205'
    end
    object sdsListaSV: TSmallintField
      FieldName = 'SV'
    end
    object sdsListaSZORSZ: TWideStringField
      FieldName = 'SZORSZ'
      FixedChar = True
      Size = 3
    end
    object sdsListaORSZAGNEV: TWideStringField
      FieldName = 'ORSZAGNEV'
      FixedChar = True
      Size = 30
    end
    object sdsListaSZARVALTSAG: TWideStringField
      FieldName = 'SZARVALTSAG'
      FixedChar = True
      Size = 1
    end
    object sdsListaBIKANEVELO: TWideStringField
      FieldName = 'BIKANEVELO'
      FixedChar = True
      Size = 1
    end
    object sdsListaTENYTOM: TSmallintField
      FieldName = 'TENYTOM'
    end
    object sdsListaIVAR: TWideStringField
      FieldName = 'IVAR'
      FixedChar = True
      Size = 1
    end
    object sdsListaAPANEV: TWideStringField
      FieldName = 'APANEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaAPA_FSZ: TWideStringField
      FieldName = 'APA_FSZ'
      FixedChar = True
      Size = 15
    end
    object sdsListaAPA_FAJTANEV: TWideStringField
      FieldName = 'APA_FAJTANEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaAPA_SZULDAT: TDateTimeField
      FieldName = 'APA_SZULDAT'
    end
    object sdsListaAPA_APAENAR: TWideStringField
      FieldName = 'APA_APAENAR'
      FixedChar = True
      Size = 10
    end
    object sdsListaAPA_APAFSZ: TWideStringField
      FieldName = 'APA_APAFSZ'
      FixedChar = True
      Size = 15
    end
    object sdsListaAPA_VSZ1: TBCDField
      FieldName = 'APA_VSZ1'
      Precision = 6
      Size = 2
    end
    object sdsListaAPA_V1NEV: TWideStringField
      FieldName = 'APA_V1NEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaAPA_VSZ2: TBCDField
      FieldName = 'APA_VSZ2'
      Precision = 6
      Size = 2
    end
    object sdsListaAPA_V2NEV: TWideStringField
      FieldName = 'APA_V2NEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaAPA_VSZ3: TBCDField
      FieldName = 'APA_VSZ3'
      Precision = 6
      Size = 2
    end
    object sdsListaAPA_V3NEV: TWideStringField
      FieldName = 'APA_V3NEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaAPA_VSZ4: TBCDField
      FieldName = 'APA_VSZ4'
      Precision = 6
      Size = 2
    end
    object sdsListaAPA_V4NEV: TWideStringField
      FieldName = 'APA_V4NEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaAPA_ANYA: TWideStringField
      FieldName = 'APA_ANYA'
      FixedChar = True
      Size = 15
    end
    object sdsListaANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      FixedChar = True
      Size = 10
    end
    object sdsListaANYA_NEV: TWideStringField
      FieldName = 'ANYA_NEV'
      FixedChar = True
      Size = 30
    end
    object sdsListaANYA_FAJTANEV: TWideStringField
      FieldName = 'ANYA_FAJTANEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaANYA_SZULDAT: TDateTimeField
      FieldName = 'ANYA_SZULDAT'
    end
    object sdsListaANYA_VSZ1: TBCDField
      FieldName = 'ANYA_VSZ1'
      Precision = 6
      Size = 2
    end
    object sdsListaANYA_V1NEV: TWideStringField
      FieldName = 'ANYA_V1NEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaANYA_VSZ2: TBCDField
      FieldName = 'ANYA_VSZ2'
      Precision = 6
      Size = 2
    end
    object sdsListaANYA_V2NEV: TWideStringField
      FieldName = 'ANYA_V2NEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaANYA_VSZ3: TBCDField
      FieldName = 'ANYA_VSZ3'
      Precision = 6
      Size = 2
    end
    object sdsListaANYA_V3NEV: TWideStringField
      FieldName = 'ANYA_V3NEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaANYA_VSZ4: TBCDField
      FieldName = 'ANYA_VSZ4'
      Precision = 6
      Size = 2
    end
    object sdsListaALLDAT: TDateTimeField
      FieldName = 'ALLDAT'
    end
    object sdsListaKIKDAT: TDateTimeField
      FieldName = 'KIKDAT'
    end
    object sdsListaTENYESZET: TWideStringField
      FieldName = 'TENYESZET'
      FixedChar = True
      Size = 7
    end
    object sdsListaTNEV2: TWideStringField
      FieldName = 'TNEV2'
      FixedChar = True
      Size = 78
    end
    object sdsListaID_ENAR: TWideStringField
      FieldName = 'ID_ENAR'
      FixedChar = True
      Size = 15
    end
    object sdsListaTEHENSZAM: TWideStringField
      FieldName = 'TEHENSZAM'
      FixedChar = True
      Size = 15
    end
    object sdsListaANYA_V4NEV: TWideStringField
      FieldName = 'ANYA_V4NEV'
      FixedChar = True
      Size = 40
    end
    object sdsListaANA_APAFSZ: TWideStringField
      FieldName = 'ANA_APAFSZ'
      FixedChar = True
      Size = 15
    end
    object sdsListaANA_ANYA_FULSZAM: TWideStringField
      FieldName = 'ANA_ANYA_FULSZAM'
      FixedChar = True
      Size = 15
    end
    object sdsListaVER1: TWideStringField
      FieldName = 'VER1'
      Size = 10
    end
    object sdsListaVER2: TWideStringField
      FieldName = 'VER2'
      Size = 10
    end
    object sdsListaVER3: TWideStringField
      FieldName = 'VER3'
      Size = 10
    end
    object sdsListaVER4: TWideStringField
      FieldName = 'VER4'
      Size = 10
    end
    object sdsListaAPA_FAJTAKOD: TWideStringField
      FieldName = 'APA_FAJTAKOD'
      Size = 10
    end
    object sdsListaAPA_V1: TWideStringField
      FieldName = 'APA_V1'
      Size = 10
    end
    object sdsListaAPA_V2: TWideStringField
      FieldName = 'APA_V2'
      Size = 10
    end
    object sdsListaAPA_V3: TWideStringField
      FieldName = 'APA_V3'
      Size = 10
    end
    object sdsListaAPA_V4: TWideStringField
      FieldName = 'APA_V4'
      Size = 10
    end
    object sdsListaANYA_FAJTAKOD: TWideStringField
      FieldName = 'ANYA_FAJTAKOD'
      Size = 5
    end
    object sdsListaANYA_APAKLSZ: TWideStringField
      FieldName = 'ANYA_APAKLSZ'
      Size = 10
    end
    object sdsListaANYA_V1: TWideStringField
      FieldName = 'ANYA_V1'
      Size = 10
    end
    object sdsListaANYA_V2: TWideStringField
      FieldName = 'ANYA_V2'
      Size = 10
    end
    object sdsListaANYA_V3: TWideStringField
      FieldName = 'ANYA_V3'
      Size = 10
    end
    object sdsListaANYA_V4: TWideStringField
      FieldName = 'ANYA_V4'
      Size = 10
    end
    object sdsListaKIKOD: TWideStringField
      FieldName = 'KIKOD'
      Size = 10
    end
    object sdsListaKIKOK: TWideStringField
      FieldName = 'KIKOK'
      Size = 10
    end
    object sdsListaAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
      Size = 10
    end
    object sdsListaAPA_APAKLSZ: TWideStringField
      FieldName = 'APA_APAKLSZ'
      Size = 5
    end
    object sdsListaKMI: TBCDField
      FieldName = 'KMI'
      Precision = 6
      Size = 2
    end
    object sdsListaVALKOR: TIntegerField
      FieldName = 'VALKOR'
      ReadOnly = True
    end
    object sdsListaTGYVAL: TBCDField
      FieldName = 'TGYVAL'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object sdsListaANA_ANYA_ENAR: TWideStringField
      FieldName = 'ANA_ANYA_ENAR'
      Size = 14
    end
    object sdsListaANYA_ELL: TWideStringField
      FieldName = 'ANYA_ELL'
      Size = 11
    end
    object sdsListaANYA_MIN: TBCDField
      FieldName = 'ANYA_MIN'
      Precision = 6
      Size = 2
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
  end
end
