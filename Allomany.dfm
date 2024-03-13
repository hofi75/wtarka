object frmAllomany: TfrmAllomany
  Left = 853
  Top = 592
  Width = 698
  Height = 297
  Caption = #193'llom'#225'ny nyilv'#225'ntart'#243
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 3
    Width = 436
    Height = 238
    TabOrder = 0
    object TalLabel7: TTalLabel
      Left = 24
      Top = 10
      Width = 52
      Height = 13
      Caption = 'Teny'#233'szet:'
    end
    object TalLabel1: TTalLabel
      Left = 24
      Top = 44
      Width = 40
      Height = 13
      Caption = 'Id'#337'szak:'
    end
    object TalLabel9: TTalLabel
      Left = 216
      Top = 49
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object cbTenyeszet: TTalDBLookupComboBox
      Left = 25
      Top = 10
      Width = 296
      Height = 21
      DropDownRows = 15
      KeyField = 'TKOD'
      ListField = 'LISTA'
      ListSource = dtsTenyeszet
      TabOrder = 0
    end
    object edtDatum1: TTalEdit
      Left = 128
      Top = 44
      Width = 79
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = '1899.12.30'
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      ReadOnly = False
      TabOrder = 1
    end
    object edtDatum2: TTalEdit
      Left = 240
      Top = 44
      Width = 79
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etDate
      Text = '1899.12.30'
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = 10
      ReadOnly = False
      TabOrder = 2
    end
    object gbKimenet: TTalGroupBox
      Left = 112
      Top = 78
      Width = 209
      Height = 67
      Caption = 'Lista kimenete '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object rbExcel: TRadioButton
        Left = 13
        Top = 40
        Width = 71
        Height = 17
        Caption = 'Excel f'#225'jl'
        TabOrder = 0
      end
      object rbLista: TRadioButton
        Left = 13
        Top = 19
        Width = 71
        Height = 17
        Caption = 'Lista'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object btnPrint: TTalBitBtn
      Left = 230
      Top = 191
      Width = 89
      Height = 25
      Caption = 'Nyomtat'#225's'
      TabOrder = 4
      OnClick = btnPrintClick
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333333333333333FFF3333333333
        FFF33300033333333330003333888FFFFFFFFFF888FF30000000000000000003
        3888888888888888888F30F7777777777777770338F3333333333333338F30F7
        777777777777770338F3333333333333338F30F7777777777799770338F33333
        33333333338F30FFFFFFFFFFFFFFFF0338FFFFFFFFFFFFFFFF8F380088888888
        8888008338888888888888888883333000000000000003333338888888888888
        8F3333300FFFFFFFFFF0033333388F3FFFFFFFF8833333330F00000000F03333
        33338F8888888838F33333330FFFFFFFFFF0333333338F3FFFFFFFF8F3333333
        0F00000000F0333333338F8888888838F33333330FFFFFFFFFF0333333338F3F
        F3333338F33333330F00FFFFFFF0333333338F8833333338F33333330FFFFFFF
        FFF0333333338FFFFFFFFFF8F333333300000000000033333333888888888888
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
    end
    object btnClose: TTalBitBtn
      Left = 350
      Top = 191
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 5
      OnClick = btnCloseClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object frxDBLista: TfrxDBDataset
    UserName = 'frxDBLista'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'TENYESZET=TENYESZET'
      'ENAR=ENAR'
      'TEHENSZAM=TEHENSZAM'
      'FULSZAM=FULSZAM'
      'ID_ENAR=ID_ENAR'
      'ANYA_ENAR=ANYA_ENAR'
      'ANYA_ELL=ANYA_ELL'
      'ANYA_ID_ENAR=ANYA_ID_ENAR'
      'DONOR_ANYA=DONOR_ANYA'
      'APAKLSZ=APAKLSZ'
      'APA_FULSZAM=APA_FULSZAM'
      'ID_APA=ID_APA'
      'NEV=NEV'
      'SZULDAT=SZULDAT'
      'FAJTAKOD=FAJTAKOD'
      'VER1=VER1'
      'VSZ1=VSZ1'
      'VER2=VER2'
      'VSZ2=VSZ2'
      'VER3=VER3'
      'VSZ3=VSZ3'
      'VER4=VER4'
      'VSZ4=VSZ4'
      'SZORSZ=SZORSZ'
      'E_ORSZ=E_ORSZ'
      'KKOD=KKOD'
      'SZIN=SZIN'
      'SZARVALTSAG=SZARVALTSAG'
      'BIKANEVELO=BIKANEVELO'
      'TENYTOM=TENYTOM'
      'MIN=MIN'
      'TKV=TKV'
      'MLEVEL1=MLEVEL1'
      'MLEVEL2=MLEVEL2'
      'KIKOD=KIKOD'
      'KIKOK=KIKOK'
      'KIKDAT=KIKDAT'
      'STATUS=STATUS'
      'ALLAPOT=ALLAPOT'
      'ALLDAT=ALLDAT'
      'IVAR=IVAR'
      'SZUL_SULY=SZUL_SULY'
      'MOD_DAT=MOD_DAT'
      'MOD_KOD=MOD_KOD'
      'MEGJEGYZES=MEGJEGYZES'
      'VALDAT=VALDAT'
      'VALTOM=VALTOM'
      'TOM205=TOM205'
      'SV=SV'
      'CHANGED=CHANGED'
      'ROW_ID=ROW_ID'
      'KIKHELY=KIKHELY'
      'JEL=JEL'
      'SZARM_TENY=SZARM_TENY'
      'IKER=IKER'
      'ENAR_BE_DATUM=ENAR_BE_DATUM'
      'NET_PONT=NET_PONT'
      'ATKOTES_ID=ATKOTES_ID'
      'TKVSZAM=TKVSZAM'
      'ATORZSKONYVES=ATORZSKONYVES'
      'UJ=UJ'
      'DNS_DATE=DNS_DATE'
      'DNS_IKTATOSZAM=DNS_IKTATOSZAM'
      'HATALYTALAN=HATALYTALAN')
    DataSet = sdsLista
    Left = 560
    Top = 96
  end
  object qryList: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    Left = 360
    Top = 24
  end
  object sdsLista: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select * from egyedek where tenyeszet = '#39'0993449'#39' and szuldat <=' +
      ' TO_DATE('#39'2024.02.05'#39','#39'yyyy.mm.dd'#39') and (kikdat is null or kikda' +
      't >= TO_DATE('#39'1899.12.30'#39','#39'yyyy.mm.dd'#39'))'
    DataSet.Parameters = <
      item
        Name = 'ptenyeszet'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select * from egyedek where tenyeszet = '#39'0993449'#39' and szuldat <=' +
      ' TO_DATE('#39'2024.02.05'#39','#39'yyyy.mm.dd'#39') and (kikdat is null or kikda' +
      't >= TO_DATE('#39'1899.12.30'#39','#39'yyyy.mm.dd'#39'))'
    Provider.DataSet.Parameters = <
      item
        Name = 'ptenyeszet'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <
      item
        DataType = ftString
        Name = 'ptenyeszet'
        ParamType = ptInput
      end>
    ReadOnly = True
    Left = 427
    Top = 24
    object sdsListaID: TBCDField
      FieldName = 'ID'
      Precision = 15
      Size = 0
    end
    object sdsListaTENYESZET: TWideStringField
      FieldName = 'TENYESZET'
      Size = 7
    end
    object sdsListaENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsListaTEHENSZAM: TWideStringField
      FieldName = 'TEHENSZAM'
      Size = 15
    end
    object sdsListaFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      Size = 15
    end
    object sdsListaID_ENAR: TWideStringField
      FieldName = 'ID_ENAR'
      Size = 15
    end
    object sdsListaANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 14
    end
    object sdsListaANYA_ELL: TWideStringField
      FieldName = 'ANYA_ELL'
      Size = 11
    end
    object sdsListaANYA_ID_ENAR: TWideStringField
      FieldName = 'ANYA_ID_ENAR'
      Size = 15
    end
    object sdsListaDONOR_ANYA: TWideStringField
      FieldName = 'DONOR_ANYA'
      Size = 15
    end
    object sdsListaAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
      Size = 10
    end
    object sdsListaAPA_FULSZAM: TWideStringField
      FieldName = 'APA_FULSZAM'
      Size = 15
    end
    object sdsListaID_APA: TWideStringField
      FieldName = 'ID_APA'
      Size = 15
    end
    object sdsListaNEV: TWideStringField
      FieldName = 'NEV'
      Size = 30
    end
    object sdsListaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsListaFAJTAKOD: TWideStringField
      FieldName = 'FAJTAKOD'
      Size = 5
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
    object sdsListaSZORSZ: TWideStringField
      FieldName = 'SZORSZ'
      Size = 3
    end
    object sdsListaE_ORSZ: TWideStringField
      FieldName = 'E_ORSZ'
      Size = 3
    end
    object sdsListaKKOD: TWideStringField
      FieldName = 'KKOD'
      Size = 3
    end
    object sdsListaSZIN: TWideStringField
      FieldName = 'SZIN'
      Size = 2
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
    object sdsListaMIN: TBCDField
      FieldName = 'MIN'
      Precision = 6
      Size = 2
    end
    object sdsListaTKV: TWideStringField
      FieldName = 'TKV'
      Size = 1
    end
    object sdsListaMLEVEL1: TWideStringField
      FieldName = 'MLEVEL1'
      Size = 7
    end
    object sdsListaMLEVEL2: TWideStringField
      FieldName = 'MLEVEL2'
      Size = 7
    end
    object sdsListaKIKOD: TWideStringField
      FieldName = 'KIKOD'
      Size = 10
    end
    object sdsListaKIKOK: TWideStringField
      FieldName = 'KIKOK'
      Size = 10
    end
    object sdsListaKIKDAT: TDateTimeField
      FieldName = 'KIKDAT'
    end
    object sdsListaSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object sdsListaALLAPOT: TWideStringField
      FieldName = 'ALLAPOT'
      Size = 1
    end
    object sdsListaALLDAT: TDateTimeField
      FieldName = 'ALLDAT'
    end
    object sdsListaIVAR: TWideStringField
      FieldName = 'IVAR'
      Size = 1
    end
    object sdsListaSZUL_SULY: TIntegerField
      FieldName = 'SZUL_SULY'
    end
    object sdsListaMOD_DAT: TDateTimeField
      FieldName = 'MOD_DAT'
    end
    object sdsListaMOD_KOD: TWideStringField
      FieldName = 'MOD_KOD'
      Size = 3
    end
    object sdsListaMEGJEGYZES: TWideStringField
      FieldName = 'MEGJEGYZES'
      Size = 150
    end
    object sdsListaVALDAT: TDateTimeField
      FieldName = 'VALDAT'
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
    object sdsListaCHANGED: TDateTimeField
      FieldName = 'CHANGED'
    end
    object sdsListaROW_ID: TVarBytesField
      FieldName = 'ROW_ID'
    end
    object sdsListaKIKHELY: TWideStringField
      FieldName = 'KIKHELY'
      Size = 10
    end
    object sdsListaJEL: TBCDField
      FieldName = 'JEL'
      Precision = 32
      Size = 0
    end
    object sdsListaSZARM_TENY: TWideStringField
      FieldName = 'SZARM_TENY'
      Size = 7
    end
    object sdsListaIKER: TBCDField
      FieldName = 'IKER'
      Precision = 32
      Size = 0
    end
    object sdsListaENAR_BE_DATUM: TDateTimeField
      FieldName = 'ENAR_BE_DATUM'
    end
    object sdsListaNET_PONT: TIntegerField
      FieldName = 'NET_PONT'
    end
    object sdsListaATKOTES_ID: TBCDField
      FieldName = 'ATKOTES_ID'
      Precision = 15
      Size = 0
    end
    object sdsListaTKVSZAM: TWideStringField
      FieldName = 'TKVSZAM'
    end
    object sdsListaATORZSKONYVES: TWideStringField
      FieldName = 'ATORZSKONYVES'
      Size = 1
    end
    object sdsListaUJ: TWideStringField
      FieldName = 'UJ'
      Size = 1
    end
    object sdsListaDNS_DATE: TDateTimeField
      FieldName = 'DNS_DATE'
    end
    object sdsListaDNS_IKTATOSZAM: TWideStringField
      FieldName = 'DNS_IKTATOSZAM'
      Size = 30
    end
    object sdsListaHATALYTALAN: TWideStringField
      FieldName = 'HATALYTALAN'
      Size = 1
    end
  end
  object frxRepList: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 45364.804423125000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '(*'
      '  IF <PSION> = '#39'IGEN'#39' then begin'
      '    memo16.text:=<frxDBLista."PS_AZON">;'
      '  end else begin'
      '    s := <frxDBLista."ENAR">;'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(trim(s)) = 10)) Then'
      
        '      memo16.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(' +
        's,10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo16.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Co' +
        'py(s,12,1)'
      '     else'
      '       memo16.text := <frxDBLista."ENAR">;'
      '  end;'
      '  *)'
      'end;'
      '(*'
      'function elhullas_datuma( datum: string, kikod: string): string'
      'begin'
      '   if kikod = '#39'3'#39' or kikod = '#39'5'#39' then'
      '      return datum;'
      ''
      '   return '#39#39';'
      'end;'
      '*)'
      ''
      'procedure AnyaAzonFill(Sender: TfrxComponent);'
      'begin'
      '    if (trim(<frxDBLista."ANYA_ENAR">) <> '#39#39') Then'
      '      anyaazon.text := <frxDBLista."ANYA_ENAR">'
      '    Else if (trim(<frxDBLista."ANYA_ELL">) <> '#39#39') Then'
      '         anyaazon.text := <frxDBLista."ANYA_ELL">'
      '      Else'
      '         anyaazon.text := <frxDBLista."ANYA_ID_ENAR">;'
      'end;'
      ''
      'procedure ApaAzonFill(Sender: TfrxComponent);'
      'begin'
      '    if (trim(<frxDBLista."APAKLSZ">) <> '#39#39') Then'
      '      anyaazon.text := <frxDBLista."APAKLSZ">'
      '    Else if (trim(<frxDBLista."APA_FULSZAM">) <> '#39#39') Then'
      '         anyaazon.text := <frxDBLista."APA_FULSZAM">'
      '      Else'
      '         anyaazon.text := <frxDBLista."ID_APA">;'
      'end;'
      ''
      'procedure elhullasdatumaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    if ((<frxDBLista."KIKOD"> = '#39'3'#39') or (<frxDBLista."KIKOD"> = ' +
        #39'5'#39')) Then'
      '      elhullasdatuma.text := <frxDBLista."KIKDAT">'
      '    Else'
      '      elhullasdatuma.text := '#39#39';'
      'end;'
      ''
      'procedure leoles_datum_fill(Sender: TfrxComponent);'
      'begin'
      
        '    if ((<frxDBLista."KIKOD"> = '#39'2'#39') or (<frxDBLista."KIKOD"> = ' +
        #39'10'#39')) Then'
      '      leoles_datum.text := <frxDBLista."KIKDAT">'
      '    Else'
      '      leoles_datum.text := '#39#39';'
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    StoreInDFM = False
    Left = 488
    Top = 88
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
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'datum1'
        Value = '<datum1>'
      end
      item
        Name = 'datum2'
        Value = '<datum2>'
      end
      item
        Name = 'tenyeszet'
        Value = '<tenyeszet>'
      end>
    Style = <>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = True
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 488
    Top = 24
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    FixedWidth = True
    Background = False
    Left = 360
    Top = 88
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    Left = 416
    Top = 88
  end
  object sdsTenyeszet: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select tkod || '#39' - '#39' || tnev2 as lista, * from teny order by tko' +
      'd'
    DataSet.DataSource = dtsTenyeszet
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
    Provider.DataSet.DataSource = dtsTenyeszet
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
    Left = 936
    Top = 48
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
  object dtsTenyeszet: TDataSource
    DataSet = sdsTenyeszet
    Left = 1016
    Top = 48
  end
  object DataSource1: TDataSource
    Left = 1016
    Top = 48
  end
end
