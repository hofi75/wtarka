inherited frmUszoLis: TfrmUszoLis
  Caption = 'N'#246'vend'#233'k '#252'sz'#337' nyilv'#225'ntart'#243' nyomtat'#225'sa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    object TalLabel1: TTalLabel
      Left = 64
      Top = 104
      Width = 77
      Height = 13
      Caption = 'Sz'#252'let'#233'si d'#225'tum:'
    end
    object TalLabel2: TTalLabel
      Left = 248
      Top = 104
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object TalLabel3: TTalLabel
      Left = 64
      Top = 144
      Width = 109
      Height = 13
      Caption = 'Adott napon '#233'l'#337' '#252'sz'#337'k:'
    end
    object rg1: TTalRadioGroup
      Left = 56
      Top = 48
      Width = 345
      Height = 41
      Caption = 'List'#225'zand'#243'k  '
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Csak '#233'l'#337
        'Kiesett egyedek'
        'Minden egyed')
      TabOrder = 0
    end
    object edtDatumTol: TTalEdit
      Left = 152
      Top = 99
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
    object edtDatumIg: TTalEdit
      Left = 264
      Top = 99
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
    object edtAdottNap: TTalEdit
      Left = 184
      Top = 139
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
      TabOrder = 3
    end
    object TalGroupBox3: TTalGroupBox
      Left = 60
      Top = 186
      Width = 245
      Height = 46
      Caption = 'Lista kimenete '
      TabOrder = 4
      object rbExcel: TRadioButton
        Left = 90
        Top = 19
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
  end
  inherited ActionList1: TActionList
    Left = 412
    Top = 20
  end
  object sdsNyomtat: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select E.ENAR, E.FULSZAM, E.ANYA_ENAR, E.APAKLSZ, E.SZULDAT,'#13#10'T1' +
      '.DATUM, T1.KPLSZ , T2.DATUM, T2.KPLSZ , T3.DATUM, T3.KPLSZ , T4.' +
      'DATUM, T4.KPLSZ , T5.DATUM, T5.KPLSZ '#13#10'from EGYEDEK E '#13#10'left joi' +
      'n TERMEKENYITESEK T1 on T1.EGYED_ID = E.id and T1.DATUM = KOV_TE' +
      'RM_DATUM(E.id, E.SZULDAT)'#13#10'left join termekenyitesek t2 on T2.EG' +
      'YED_ID = E.ID and T2.DATUM = KOV_TERM_DATUM(e.id, t1.datum)'#13#10'lef' +
      't join TERMEKENYITESEK T3 on T3.EGYED_ID = E.id and T3.DATUM = K' +
      'OV_TERM_DATUM(E.id, T2.DATUM)'#13#10'left join TERMEKENYITESEK T4 on T' +
      '4.EGYED_ID = E.id and T4.DATUM = KOV_TERM_DATUM(E.id, T3.DATUM)'#13 +
      #10'left join TERMEKENYITESEK T5 on T5.EGYED_ID = E.id and T5.DATUM' +
      ' = KOV_TERM_DATUM(E.id, t4.DATum)'#13#10'where E.IVAR = '#39'2'#39' and not EX' +
      'ISTS (select 1 from ellesek where ELLESEK.EGYED_ID = E.ID)'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select E.ENAR, E.FULSZAM, E.ANYA_ENAR, E.APAKLSZ, E.SZULDAT,'#13#10'T1' +
      '.DATUM, T1.KPLSZ , T2.DATUM, T2.KPLSZ , T3.DATUM, T3.KPLSZ , T4.' +
      'DATUM, T4.KPLSZ , T5.DATUM, T5.KPLSZ '#13#10'from EGYEDEK E '#13#10'left joi' +
      'n TERMEKENYITESEK T1 on T1.EGYED_ID = E.id and T1.DATUM = KOV_TE' +
      'RM_DATUM(E.id, E.SZULDAT)'#13#10'left join termekenyitesek t2 on T2.EG' +
      'YED_ID = E.ID and T2.DATUM = KOV_TERM_DATUM(e.id, t1.datum)'#13#10'lef' +
      't join TERMEKENYITESEK T3 on T3.EGYED_ID = E.id and T3.DATUM = K' +
      'OV_TERM_DATUM(E.id, T2.DATUM)'#13#10'left join TERMEKENYITESEK T4 on T' +
      '4.EGYED_ID = E.id and T4.DATUM = KOV_TERM_DATUM(E.id, T3.DATUM)'#13 +
      #10'left join TERMEKENYITESEK T5 on T5.EGYED_ID = E.id and T5.DATUM' +
      ' = KOV_TERM_DATUM(E.id, t4.DATum)'#13#10'where E.IVAR = '#39'2'#39' and not EX' +
      'ISTS (select 1 from ellesek where ELLESEK.EGYED_ID = E.ID)'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 24
    Top = 8
    object sdsNyomtatENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsNyomtatFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      Size = 15
    end
    object sdsNyomtatANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 10
    end
    object sdsNyomtatAPAKLSZ: TWideStringField
      FieldName = 'APAKLSZ'
      Size = 10
    end
    object sdsNyomtatSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsNyomtatDATUM: TDateTimeField
      FieldName = 'DATUM'
    end
    object sdsNyomtatKPLSZ: TWideStringField
      FieldName = 'KPLSZ'
      Size = 5
    end
    object sdsNyomtatDATUM_1: TDateTimeField
      FieldName = 'DATUM_1'
    end
    object sdsNyomtatKPLSZ_1: TWideStringField
      FieldName = 'KPLSZ_1'
      Size = 5
    end
    object sdsNyomtatDATUM_2: TDateTimeField
      FieldName = 'DATUM_2'
    end
    object sdsNyomtatKPLSZ_2: TWideStringField
      FieldName = 'KPLSZ_2'
      Size = 5
    end
    object sdsNyomtatDATUM_3: TDateTimeField
      FieldName = 'DATUM_3'
    end
    object sdsNyomtatKPLSZ_3: TWideStringField
      FieldName = 'KPLSZ_3'
      Size = 5
    end
    object sdsNyomtatDATUM_4: TDateTimeField
      FieldName = 'DATUM_4'
    end
    object sdsNyomtatKPLSZ_4: TWideStringField
      FieldName = 'KPLSZ_4'
      Size = 5
    end
  end
  object frxDbNyomtat: TfrxDBDataset
    UserName = 'frxDbUNyomtat'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'ANYA_ENAR=ANYA_ENAR'
      'APAKLSZ=APAKLSZ'
      'SZULDAT=SZULDAT'
      'DATUM=DATUM'
      'KPLSZ=KPLSZ'
      'DATUM_1=DATUM_1'
      'KPLSZ_1=KPLSZ_1'
      'DATUM_2=DATUM_2'
      'KPLSZ_2=KPLSZ_2'
      'DATUM_3=DATUM_3'
      'KPLSZ_3=KPLSZ_3'
      'DATUM_4=DATUM_4'
      'KPLSZ_4=KPLSZ_4')
    DataSet = sdsNyomtat
    Left = 88
    Top = 8
  end
  object frxReport1: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 40240.498815532400000000
    ReportOptions.LastChange = 40665.943736250000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure Memo3OnAfterData(Sender: TfrxComponent);'
      'var'
      '  s : string;'
      'begin'
      '    s := <frxDbUNyomtat."ENAR">;'
      '    if ((Copy(s,1,1) = '#39'3'#39') And (Length(trim(s)) = 10)) Then'
      
        '      memo3.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(s' +
        ',10,1)'
      '    Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '       memo3.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Cop' +
        'y(s,12,1)'
      '     else'
      '       memo3.text := <frxDbUNyomtat."ENAR">;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    StoreInDFM = False
    Left = 152
    Top = 8
    Datasets = <
      item
        DataSet = frmTibor.frxDBdtsTiborTenyeszet
        DataSetName = 'frxDBdtsTiborTenyeszet'
      end
      item
        DataSet = frxDbNyomtat
        DataSetName = 'frxDbUNyomtat'
      end>
    Variables = <
      item
        Name = ' Parameters'
        Value = Null
      end
      item
        Name = 'p1'
        Value = Null
      end
      item
        Name = 'p2'
        Value = Null
      end
      item
        Name = 'p3'
        Value = Null
      end
      item
        Name = 'p4'
        Value = Null
      end
      item
        Name = 'p0'
        Value = Null
      end>
    Style = <>
  end
end
