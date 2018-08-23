object frmNyomtat: TfrmNyomtat
  Left = 395
  Top = 297
  Width = 492
  Height = 349
  Caption = 'Nyomtat'#225's'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 270
    Width = 476
    Height = 41
    Align = alBottom
    Anchors = [akRight, akBottom]
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 0
    DesignSize = (
      472
      37)
    object BitBtn1: TTalBitBtn
      Left = 317
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TTalBitBtn
      Left = 397
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Kil'#233'p'#233's'
      ModalResult = 2
      TabOrder = 1
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
    object pnlBeallit: TTalPanel
      Left = 93
      Top = -1
      Width = 190
      Height = 37
      TabOrder = 2
      Visible = False
      object Mentes: TTalButton
        Left = 149
        Top = 8
        Width = 33
        Height = 25
        Caption = 'OK'
        TabOrder = 0
        OnClick = MentesClick
      end
      object cbAutFutas: TTalCheckBox
        Left = 7
        Top = 12
        Width = 135
        Height = 17
        Caption = 'Aut.ind'#237't'#225's bel'#233'p'#233'skor'
        TabOrder = 1
      end
    end
    object btnBeallit: TTalBitBtn
      Left = 9
      Top = 5
      Width = 75
      Height = 25
      Hint = 
        'Ezzel a funkci'#243'val '#225'll'#237'thatja be az els'#337' fut'#225'skor indul'#243' list'#225'k ' +
        'param'#233'tereit'
      Caption = 'Be'#225'll'#237't'#225'sok'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      OnClick = btnBeallitClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 270
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 1
    object TalLabel2: TTalLabel
      Left = 141
      Top = 100
      Width = 65
      Height = 13
      Caption = 'Kezd'#337' d'#225'tum:'
    end
    object lblTcsop: TTalLabel
      Left = 6
      Top = 127
      Width = 209
      Height = 13
      Caption = 'Sz'#225'razra '#225'll'#237'tott egyedek termel'#233'si csoportja:'
      Visible = False
    end
    object TalLabel1: TTalLabel
      Left = 85
      Top = 28
      Width = 52
      Height = 13
      Caption = 'Teny'#233'szet:'
    end
    object edtDatum: TTalEdit
      Left = 221
      Top = 96
      Width = 81
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
    object rg1: TTalRadioGroup
      Left = 64
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
      TabOrder = 2
      Visible = False
      OnClick = rg1Click
    end
    object rgAzon: TTalGroupBox
      Left = 64
      Top = 152
      Width = 177
      Height = 75
      Caption = ' List'#225'n szerepl'#337' azonos'#237't'#243'  '
      TabOrder = 3
      Visible = False
      object rbPsAzon: TTalRadioButton
        Left = 11
        Top = 21
        Width = 135
        Height = 17
        Caption = 'Haszn'#225'lati sz'#225'm'
        TabOrder = 0
      end
      object rbEnar: TTalRadioButton
        Left = 11
        Top = 45
        Width = 135
        Height = 17
        Caption = 'Teljes azonos'#237't'#243
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object rgNapok: TTalGroupBox
      Left = 256
      Top = 152
      Width = 177
      Height = 90
      Caption = 'Utols'#243' ell'#233's '#243'ta eltelt napok sz'#225'ma'
      TabOrder = 4
      Visible = False
      object rb1: TTalRadioButton
        Left = 11
        Top = 15
        Width = 135
        Height = 17
        Caption = '37 - 44 nap'
        TabOrder = 0
      end
      object rb2: TTalRadioButton
        Left = 11
        Top = 37
        Width = 135
        Height = 17
        Caption = '57 - 64 nap'
        TabOrder = 1
      end
      object rb3: TTalRadioButton
        Left = 11
        Top = 59
        Width = 135
        Height = 17
        Caption = '37 - 44 '#233's 57 - 64 nap'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object lucTCsop: TTalComboBox
      Left = 221
      Top = 123
      Width = 188
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      Visible = False
    end
    object cbSelejtNemKell: TTalCheckBox
      Left = 63
      Top = 245
      Width = 304
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Selejtre jel'#246'lt egyedek ne legyenek a list'#225'n '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object edtTenyeszet: TTalEdit
      Left = 152
      Top = 24
      Width = 65
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
      OnExit = edtTenyeszetExit
    end
    object edtTenyNev: TTalEdit
      Left = 224
      Top = 24
      Width = 161
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      ReadOnly = False
      TabOrder = 7
      OnExit = edtTenyeszetExit
    end
  end
  object sdsEllu: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT EGYEDEK.ENAR,'#13#10'  TERMEKENYITESEK.DATUM,'#13#10' (TERMEKENYITESE' +
      'K.DATUM + 111) AS SzarazDatuma,'#13#10' (TERMEKENYITESEK.DATUM + 333) ' +
      'AS VarhEllDatuma'#13#10' FROM TERMEKENYITESEK'#13#10' LEFT JOIN EGYEDEK ON E' +
      'GYEDEK.ID=TERMEKENYITESEK.EGYED_ID'#13#10' WHERE'#13#10'   ((EGYEDEK.KIKOD='#39 +
      '0'#39') or  (EGYEDEK.KIKOD='#39#39') OR (EGYEDEK.KIKOD IS NULL)) '#13#10'   /*1*' +
      '/'#13#10'   AND not exists (select 1 from ELLESEK where ellesek.EGYED_' +
      'ID=TERMEKENYITESEK.EGYED_ID)     /*  nem teh'#233'n*/'#13#10'   and TERMEKE' +
      'NYITESEK.ALLAPOT='#39'1'#39#13#10' ORDER BY 4'#13#10
    DataSet.CommandType = cmdUnknown
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT EGYEDEK.ENAR,'#13#10'  TERMEKENYITESEK.DATUM,'#13#10' (TERMEKENYITESE' +
      'K.DATUM + 111) AS SzarazDatuma,'#13#10' (TERMEKENYITESEK.DATUM + 333) ' +
      'AS VarhEllDatuma'#13#10' FROM TERMEKENYITESEK'#13#10' LEFT JOIN EGYEDEK ON E' +
      'GYEDEK.ID=TERMEKENYITESEK.EGYED_ID'#13#10' WHERE'#13#10'   ((EGYEDEK.KIKOD='#39 +
      '0'#39') or  (EGYEDEK.KIKOD='#39#39') OR (EGYEDEK.KIKOD IS NULL)) '#13#10'   /*1*' +
      '/'#13#10'   AND not exists (select 1 from ELLESEK where ellesek.EGYED_' +
      'ID=TERMEKENYITESEK.EGYED_ID)     /*  nem teh'#233'n*/'#13#10'   and TERMEKE' +
      'NYITESEK.ALLAPOT='#39'1'#39#13#10' ORDER BY 4'#13#10
    Provider.DataSet.CommandType = cmdUnknown
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 80
    Top = 8
    object sdsElluENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsElluDATUM: TDateTimeField
      FieldName = 'DATUM'
    end
    object sdsElluSzarazDatuma: TDateTimeField
      FieldName = 'SzarazDatuma'
      ReadOnly = True
    end
    object sdsElluVarhEllDatuma: TDateTimeField
      FieldName = 'VarhEllDatuma'
      ReadOnly = True
    end
  end
  object frxDBElluszo: TfrxDBDataset
    UserName = 'frxDBElluszo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'DATUM=DATUM'
      'SzarazDatuma=SzarazDatuma'
      'VarhEllDatuma=VarhEllDatuma')
    DataSet = sdsEllu
    Left = 256
    Top = 8
  end
  object sdsEllt: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT EGYEDEK.ENAR,'#13#10'  TERMEKENYITESEK.DATUM,'#13#10' (TERMEKENYITESE' +
      'K.DATUM + 111) AS SzarazDatuma,'#13#10' (TERMEKENYITESEK.DATUM + 333) ' +
      'AS VarhEllDatuma'#13#10' FROM TERMEKENYITESEK'#13#10' LEFT JOIN EGYEDEK ON E' +
      'GYEDEK.ID=TERMEKENYITESEK.EGYED_ID'#13#10' WHERE'#13#10'   ((EGYEDEK.KIKOD='#39 +
      '0'#39') or (EGYEDEK.KIKOD='#39#39') OR (EGYEDEK.KIKOD IS NULL)) '#13#10'   /*1*/' +
      #13#10'   AND exists (select 1 from ELLESEK where ellesek.EGYED_ID=TE' +
      'RMEKENYITESEK.EGYED_ID)     /*  teh'#233'n*/'#13#10'   and TERMEKENYITESEK.' +
      'ALLAPOT='#39'1'#39#13#10'   and TERMEKENYITESEK.DATUM>(select max(elles_datu' +
      'm) from ELLESEK'#13#10'                                  where ellesek' +
      '.EGYED_ID=TERMEKENYITESEK.EGYED_ID)'#13#10' ORDER BY 4'#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT EGYEDEK.ENAR,'#13#10'  TERMEKENYITESEK.DATUM,'#13#10' (TERMEKENYITESE' +
      'K.DATUM + 111) AS SzarazDatuma,'#13#10' (TERMEKENYITESEK.DATUM + 333) ' +
      'AS VarhEllDatuma'#13#10' FROM TERMEKENYITESEK'#13#10' LEFT JOIN EGYEDEK ON E' +
      'GYEDEK.ID=TERMEKENYITESEK.EGYED_ID'#13#10' WHERE'#13#10'   ((EGYEDEK.KIKOD='#39 +
      '0'#39') or (EGYEDEK.KIKOD='#39#39') OR (EGYEDEK.KIKOD IS NULL)) '#13#10'   /*1*/' +
      #13#10'   AND exists (select 1 from ELLESEK where ellesek.EGYED_ID=TE' +
      'RMEKENYITESEK.EGYED_ID)     /*  teh'#233'n*/'#13#10'   and TERMEKENYITESEK.' +
      'ALLAPOT='#39'1'#39#13#10'   and TERMEKENYITESEK.DATUM>(select max(elles_datu' +
      'm) from ELLESEK'#13#10'                                  where ellesek' +
      '.EGYED_ID=TERMEKENYITESEK.EGYED_ID)'#13#10' ORDER BY 4'#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 24
    Top = 8
    object sdsElltENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 14
    end
    object sdsElltDATUM: TDateTimeField
      FieldName = 'DATUM'
    end
    object sdsElltSzarazDatuma: TDateTimeField
      FieldName = 'SzarazDatuma'
      ReadOnly = True
    end
    object sdsElltVarhEllDatuma: TDateTimeField
      FieldName = 'VarhEllDatuma'
      ReadOnly = True
    end
  end
  object frxDbEllteh: TfrxDBDataset
    UserName = 'frxDbEllteh'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENAR=ENAR'
      'DATUM=DATUM'
      'SzarazDatuma=SzarazDatuma'
      'VarhEllDatuma=VarhEllDatuma')
    DataSet = sdsEllt
    Left = 192
    Top = 56
  end
  object sdsEllO: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'  cast(extract (YEAR from (TERMEKENYITESEK.DATUM + 333))' +
      ' as varchar2(4)) AS VARHELLEV,'#13#10'  extract (MONTH from (TERMEKENY' +
      'ITESEK.DATUM + 333)) AS VARHELL,'#13#10'  0 AS USZO_ELLES,'#13#10'  COUNT(1)' +
      ' AS TEHEN_ELLES'#13#10' FROM TERMEKENYITESEK'#13#10' LEFT JOIN EGYEDEK ON EG' +
      'YEDEK.ID=TERMEKENYITESEK.EGYED_ID'#13#10' WHERE'#13#10'   ((EGYEDEK.KIKOD='#39'0' +
      #39') or (EGYEDEK.KIKOD='#39#39') OR (EGYEDEK.KIKOD IS NULL)) '#13#10'   /*1*/ ' +
      #13#10'   AND TERMEKENYITESEK.ALLAPOT='#39'1'#39#13#10' AND TERMEKENYITESEK.DATUM' +
      '>(SELECT MAX(ELLES_DATUM) FROM ELLESEK'#13#10'                        ' +
      '          WHERE ELLESEK.EGYED_ID=TERMEKENYITESEK.EGYED_ID)'#13#10' GRO' +
      'UP BY extract(YEAR from(TERMEKENYITESEK.DATUM + 333)),extract (M' +
      'ONTH from (TERMEKENYITESEK.DATUM + 333))'#13#10'UNION'#13#10'SELECT'#13#10'  cast(' +
      'extract (YEAR from (TERMEKENYITESEK.DATUM + 333)) as varchar2(4)' +
      ') AS VARHELLEV,'#13#10'  extract (MONTH from (TERMEKENYITESEK.DATUM + ' +
      '333)) AS VARHELL,'#13#10'  COUNT(1) AS USZO_ELLES,'#13#10'  0 AS TEHEN_ELLES' +
      #13#10' FROM TERMEKENYITESEK'#13#10' LEFT JOIN EGYEDEK ON EGYEDEK.ID=TERMEK' +
      'ENYITESEK.EGYED_ID'#13#10' WHERE'#13#10'   ((EGYEDEK.KIKOD='#39'0'#39') or (EGYEDEK.' +
      'KIKOD='#39#39') OR (EGYEDEK.KIKOD IS NULL))'#13#10'   /*1*/'#13#10'   AND TERMEKEN' +
      'YITESEK.ALLAPOT='#39'1'#39#13#10'   AND NOT EXISTS (SELECT 1 FROM ELLESEK WH' +
      'ERE ELLESEK.EGYED_ID=TERMEKENYITESEK.EGYED_ID)'#13#10' GROUP BY extrac' +
      't( YEAR from (TERMEKENYITESEK.DATUM + 333)),extract ( MONTH from' +
      ' (TERMEKENYITESEK.DATUM + 333))'#13#10'ORDER BY 1,2'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  cast(extract (YEAR from (TERMEKENYITESEK.DATUM + 333))' +
      ' as varchar2(4)) AS VARHELLEV,'#13#10'  extract (MONTH from (TERMEKENY' +
      'ITESEK.DATUM + 333)) AS VARHELL,'#13#10'  0 AS USZO_ELLES,'#13#10'  COUNT(1)' +
      ' AS TEHEN_ELLES'#13#10' FROM TERMEKENYITESEK'#13#10' LEFT JOIN EGYEDEK ON EG' +
      'YEDEK.ID=TERMEKENYITESEK.EGYED_ID'#13#10' WHERE'#13#10'   ((EGYEDEK.KIKOD='#39'0' +
      #39') or (EGYEDEK.KIKOD='#39#39') OR (EGYEDEK.KIKOD IS NULL)) '#13#10'   /*1*/ ' +
      #13#10'   AND TERMEKENYITESEK.ALLAPOT='#39'1'#39#13#10' AND TERMEKENYITESEK.DATUM' +
      '>(SELECT MAX(ELLES_DATUM) FROM ELLESEK'#13#10'                        ' +
      '          WHERE ELLESEK.EGYED_ID=TERMEKENYITESEK.EGYED_ID)'#13#10' GRO' +
      'UP BY extract(YEAR from(TERMEKENYITESEK.DATUM + 333)),extract (M' +
      'ONTH from (TERMEKENYITESEK.DATUM + 333))'#13#10'UNION'#13#10'SELECT'#13#10'  cast(' +
      'extract (YEAR from (TERMEKENYITESEK.DATUM + 333)) as varchar2(4)' +
      ') AS VARHELLEV,'#13#10'  extract (MONTH from (TERMEKENYITESEK.DATUM + ' +
      '333)) AS VARHELL,'#13#10'  COUNT(1) AS USZO_ELLES,'#13#10'  0 AS TEHEN_ELLES' +
      #13#10' FROM TERMEKENYITESEK'#13#10' LEFT JOIN EGYEDEK ON EGYEDEK.ID=TERMEK' +
      'ENYITESEK.EGYED_ID'#13#10' WHERE'#13#10'   ((EGYEDEK.KIKOD='#39'0'#39') or (EGYEDEK.' +
      'KIKOD='#39#39') OR (EGYEDEK.KIKOD IS NULL))'#13#10'   /*1*/'#13#10'   AND TERMEKEN' +
      'YITESEK.ALLAPOT='#39'1'#39#13#10'   AND NOT EXISTS (SELECT 1 FROM ELLESEK WH' +
      'ERE ELLESEK.EGYED_ID=TERMEKENYITESEK.EGYED_ID)'#13#10' GROUP BY extrac' +
      't( YEAR from (TERMEKENYITESEK.DATUM + 333)),extract ( MONTH from' +
      ' (TERMEKENYITESEK.DATUM + 333))'#13#10'ORDER BY 1,2'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 136
    Top = 8
    object sdsEllOVARHELLEV: TWideStringField
      FieldName = 'VARHELLEV'
      ReadOnly = True
      Size = 4
    end
    object sdsEllOVARHELL: TBCDField
      FieldName = 'VARHELL'
      ReadOnly = True
      Precision = 32
    end
    object sdsEllOUSZO_ELLES: TBCDField
      FieldName = 'USZO_ELLES'
      ReadOnly = True
      Precision = 32
    end
    object sdsEllOTEHEN_ELLES: TBCDField
      FieldName = 'TEHEN_ELLES'
      ReadOnly = True
      Precision = 32
    end
  end
  object frxDBEllmind: TfrxDBDataset
    UserName = 'frxDBEllu'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VARHELLEV=VARHELLEV'
      'VARHELL=VARHELL'
      'USZO_ELLES=USZO_ELLES'
      'TEHEN_ELLES=TEHEN_ELLES')
    DataSet = sdsEllO
    Left = 320
    Top = 8
  end
  object rptEllNemKell: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 40527.842941076380000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      'begin'
      '  IF <PSION> = '#39'IGEN'#39' then begin'
      '    memo3.text:=<frxDbEllteh."PSION_AZONOSITO">;'
      '  end else begin'
      '  s:=<frxDBdstVarhEll."AZONOSITO">;'
      '  if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo3.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(s' +
        ',10,1)'
      '   Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '      memo3.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy(s' +
        ',12,1) ;'
      '  end;'
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      'begin'
      '  IF <PSION> = '#39'IGEN'#39' then begin'
      '    memo14.text:=<frxDbEllteh."PSION_AZONOSITO">;'
      '  end else begin'
      '  s:=<frxDBdstVarhEll."AZONOSITO">;'
      '  if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo14.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(' +
        's,10,1)'
      '   Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '      memo14.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy(' +
        's,12,1) ;'
      '  end;'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    StoreInDFM = False
    Left = 376
    Top = 8
    Datasets = <
      item
      end
      item
        DataSet = frxDbEllteh
        DataSetName = 'frxDbEllteh'
      end
      item
        DataSet = frxDBEllmind
        DataSetName = 'frxDBEllu'
      end
      item
        DataSet = frxDBElluszo
        DataSetName = 'frxDBElluszo'
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
        Name = 'PSION'
        Value = Null
      end>
    Style = <>
  end
  object sdsEnarLeltar: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT E.ENAR as AZONOSITO, '#13#10'E.MLEVEL1 AS MARHALEVELSZAM, '#13#10'E.A' +
      'NYA_ENAR AS ANYA_AZONOSITO,'#13#10'E.SZULDAT AS SZUL_DATUM, '#13#10'E.IVAR, ' +
      'KI.KOD_NEV as IVARNEV, '#13#10'E.FAJTAKOD || '#39'/'#39' || E.SZIN AS FAJTA, '#13 +
      #10'CASE WHEN (E.KIKOD IN ('#39'3'#39','#39'5'#39')) THEN   E.KIKDAT ELSE    NULL E' +
      'ND AS KIKERULES_DATUM, '#13#10'CASE WHEN (E.KIKOD IN ('#39'14'#39','#39'14'#39')) THEN' +
      '   E.KIKDAT ELSE    NULL END AS KIKERULES_DATUM_1, '#13#10'E.SZARM_TEN' +
      'Y, E.ALLDAT as TENYBEERK_DATUM, E.MEGJEGYZES, '#13#10'CASE WHEN (E.KIK' +
      'OD IN ('#39'1'#39','#39'2'#39','#39'4'#39','#39'6'#39','#39'9'#39')) THEN   E.KIKHELY ELSE     '#39#39' END AS' +
      ' KIKHELY, '#13#10'case when (E.KIKOD in ('#39'1'#39','#39'2'#39','#39'4'#39','#39'6'#39','#39'9'#39')) then   ' +
      'E.KIKHELY || '#39' - '#39' || KH.KOD_NEV else     '#39#39' end as KIKHELYNEV, ' +
      #13#10'CASE WHEN (E.KIKOD IN ('#39'1'#39','#39'2'#39','#39'4'#39','#39'6'#39','#39'9'#39')) THEN   E.KIKDAT E' +
      'LSE     NULL END AS ELHAGYTA_DATUM,'#13#10'TENY.TNEV1 AS NEV, TENY.EKO' +
      'D AS ENAR_kod,'#13#10'               (TARKA_UTILS.LEFT(TENY.TKOD,2) ||' +
      ' '#39'-'#39' || SUBSTR(TENY.TKOD, 3, 3) || '#39'-'#39' || TARKA_UTILS.RIGHT(TENY' +
      '.TKOD, 2)) AS ATKOD,'#13#10'               TENY.TNEV2 AS TELEP_NEV, TE' +
      'NY.TKOD,'#13#10'               TENY.TIRSZ || '#39' '#39' || TRIM(TENY.TVAROS) ' +
      ' || '#39' '#39' || TRIM(TENY.TKTNEV) || '#39' '#39' || TRIM(TENY.TKTJELL) || '#39' '#39 +
      ' || TRIM(TENY.THSZ) AS KOZTERULET'#13#10'FROM EGYEDEK E '#13#10'JOIN KODOK K' +
      'I ON KI.KOD = E.IVAR  AND KI.KODTIPUSOK_TIPUSKOD='#39'IVAR'#39' '#13#10'LEFT J' +
      'OIN KODOK KH ON KH.KOD = E.KIKHELY AND KH.KODTIPUSOK_TIPUSKOD='#39'K' +
      'IKHELY'#39' '#13#10'LEFT JOIN TENY ON TENY.TKOD = E.TENYESZET'#13#10'where TRIM(' +
      'E.ENAR) is not null'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT E.ENAR as AZONOSITO, '#13#10'E.MLEVEL1 AS MARHALEVELSZAM, '#13#10'E.A' +
      'NYA_ENAR AS ANYA_AZONOSITO,'#13#10'E.SZULDAT AS SZUL_DATUM, '#13#10'E.IVAR, ' +
      'KI.KOD_NEV as IVARNEV, '#13#10'E.FAJTAKOD || '#39'/'#39' || E.SZIN AS FAJTA, '#13 +
      #10'CASE WHEN (E.KIKOD IN ('#39'3'#39','#39'5'#39')) THEN   E.KIKDAT ELSE    NULL E' +
      'ND AS KIKERULES_DATUM, '#13#10'CASE WHEN (E.KIKOD IN ('#39'14'#39','#39'14'#39')) THEN' +
      '   E.KIKDAT ELSE    NULL END AS KIKERULES_DATUM_1, '#13#10'E.SZARM_TEN' +
      'Y, E.ALLDAT as TENYBEERK_DATUM, E.MEGJEGYZES, '#13#10'CASE WHEN (E.KIK' +
      'OD IN ('#39'1'#39','#39'2'#39','#39'4'#39','#39'6'#39','#39'9'#39')) THEN   E.KIKHELY ELSE     '#39#39' END AS' +
      ' KIKHELY, '#13#10'case when (E.KIKOD in ('#39'1'#39','#39'2'#39','#39'4'#39','#39'6'#39','#39'9'#39')) then   ' +
      'E.KIKHELY || '#39' - '#39' || KH.KOD_NEV else     '#39#39' end as KIKHELYNEV, ' +
      #13#10'CASE WHEN (E.KIKOD IN ('#39'1'#39','#39'2'#39','#39'4'#39','#39'6'#39','#39'9'#39')) THEN   E.KIKDAT E' +
      'LSE     NULL END AS ELHAGYTA_DATUM,'#13#10'TENY.TNEV1 AS NEV, TENY.EKO' +
      'D AS ENAR_kod,'#13#10'               (TARKA_UTILS.LEFT(TENY.TKOD,2) ||' +
      ' '#39'-'#39' || SUBSTR(TENY.TKOD, 3, 3) || '#39'-'#39' || TARKA_UTILS.RIGHT(TENY' +
      '.TKOD, 2)) AS ATKOD,'#13#10'               TENY.TNEV2 AS TELEP_NEV, TE' +
      'NY.TKOD,'#13#10'               TENY.TIRSZ || '#39' '#39' || TRIM(TENY.TVAROS) ' +
      ' || '#39' '#39' || TRIM(TENY.TKTNEV) || '#39' '#39' || TRIM(TENY.TKTJELL) || '#39' '#39 +
      ' || TRIM(TENY.THSZ) AS KOZTERULET'#13#10'FROM EGYEDEK E '#13#10'JOIN KODOK K' +
      'I ON KI.KOD = E.IVAR  AND KI.KODTIPUSOK_TIPUSKOD='#39'IVAR'#39' '#13#10'LEFT J' +
      'OIN KODOK KH ON KH.KOD = E.KIKHELY AND KH.KODTIPUSOK_TIPUSKOD='#39'K' +
      'IKHELY'#39' '#13#10'LEFT JOIN TENY ON TENY.TKOD = E.TENYESZET'#13#10'where TRIM(' +
      'E.ENAR) is not null'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 296
    Top = 56
    object sdsEnarLeltarAZONOSITO: TWideStringField
      FieldName = 'AZONOSITO'
      OnGetText = sdsEnarLeltarAZONOSITOGetText
      Size = 14
    end
    object sdsEnarLeltarMARHALEVELSZAM: TWideStringField
      FieldName = 'MARHALEVELSZAM'
      Size = 7
    end
    object sdsEnarLeltarANYA_AZONOSITO: TWideStringField
      FieldName = 'ANYA_AZONOSITO'
      Size = 10
    end
    object sdsEnarLeltarSZUL_DATUM: TDateTimeField
      FieldName = 'SZUL_DATUM'
    end
    object sdsEnarLeltarIVAR: TWideStringField
      FieldName = 'IVAR'
      Size = 1
    end
    object sdsEnarLeltarIVARNEV: TWideStringField
      FieldName = 'IVARNEV'
      Size = 30
    end
    object sdsEnarLeltarFAJTA: TWideStringField
      FieldName = 'FAJTA'
      ReadOnly = True
      Size = 5
    end
    object sdsEnarLeltarKIKERULES_DATUM: TDateTimeField
      FieldName = 'KIKERULES_DATUM'
      ReadOnly = True
    end
    object sdsEnarLeltarKIKERULES_DATUM_1: TDateTimeField
      FieldName = 'KIKERULES_DATUM_1'
      ReadOnly = True
    end
    object sdsEnarLeltarSZARM_TENY: TWideStringField
      FieldName = 'SZARM_TENY'
      Size = 7
    end
    object sdsEnarLeltarTENYBEERK_DATUM: TDateTimeField
      FieldName = 'TENYBEERK_DATUM'
    end
    object sdsEnarLeltarMEGJEGYZES: TWideStringField
      FieldName = 'MEGJEGYZES'
      Size = 150
    end
    object sdsEnarLeltarKIKHELY: TWideStringField
      FieldName = 'KIKHELY'
      ReadOnly = True
      Size = 10
    end
    object sdsEnarLeltarKIKHELYNEV: TWideStringField
      FieldName = 'KIKHELYNEV'
      ReadOnly = True
      Size = 43
    end
    object sdsEnarLeltarELHAGYTA_DATUM: TDateTimeField
      FieldName = 'ELHAGYTA_DATUM'
      ReadOnly = True
    end
    object sdsEnarLeltarNEV: TWideStringField
      FieldName = 'NEV'
      Size = 15
    end
    object sdsEnarLeltarENAR_KOD: TWideStringField
      FieldName = 'ENAR_KOD'
      Size = 5
    end
    object sdsEnarLeltarATKOD: TWideStringField
      FieldName = 'ATKOD'
      ReadOnly = True
      Size = 4000
    end
    object sdsEnarLeltarTELEP_NEV: TWideStringField
      FieldName = 'TELEP_NEV'
      Size = 78
    end
    object sdsEnarLeltarTKOD: TWideStringField
      FieldName = 'TKOD'
      Size = 7
    end
    object sdsEnarLeltarKOZTERULET: TWideStringField
      FieldName = 'KOZTERULET'
      ReadOnly = True
      Size = 84
    end
  end
  object frxDBEnarLeltar: TfrxDBDataset
    UserName = 'frxDEnarLeltar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AZONOSITO=AZONOSITO'
      'MARHALEVELSZAM=MARHALEVELSZAM'
      'ANYA_AZONOSITO=ANYA_AZONOSITO'
      'SZUL_DATUM=SZUL_DATUM'
      'IVAR=IVAR'
      'IVARNEV=IVARNEV'
      'FAJTA=FAJTA'
      'KIKERULES_DATUM=KIKERULES_DATUM'
      'KIKERULES_DATUM_1=KIKERULES_DATUM_1'
      'SZARM_TENY=SZARM_TENY'
      'TENYBEERK_DATUM=TENYBEERK_DATUM'
      'MEGJEGYZES=MEGJEGYZES'
      'KIKHELY=KIKHELY'
      'KIKHELYNEV=KIKHELYNEV'
      'ELHAGYTA_DATUM=ELHAGYTA_DATUM'
      'NEV=NEV'
      'ENAR_KOD=ENAR_KOD'
      'ATKOD=ATKOD'
      'TELEP_NEV=TELEP_NEV'
      'TKOD=TKOD'
      'KOZTERULET=KOZTERULET')
    DataSet = sdsEnarLeltar
    Left = 360
    Top = 56
  end
  object rptEnarLeltar: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 38838.519462187500000000
    ReportOptions.LastChange = 40525.777682106500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo3OnAfterData(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      ''
      'begin'
      '  s:=<frxDEnarLeltar."AZONOSITO">;'
      '  if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo3.text:=Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Copy(s' +
        ',10,1)'
      '   Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '      memo3.text:=Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Copy(s' +
        ',10,1) ;'
      
        '  if <frxDEnarLeltar."TENYBEERK_DATUM"> = <frxDEnarLeltar."SZUL_' +
        'DATUM"> then'
      '    Memo32.text := '#39#39';'
      'end;'
      ''
      'procedure Memo36OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <frxDEnarLeltar."TENYBEERK_DATUM"> = <frxDEnarLeltar."SZUL_' +
        'DATUM"> then'
      '    Memo32.text := '#39#39';'
      'end;'
      ''
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo11OnAfterData(Sender: TfrxComponent);'
      'Var'
      '  s : String;'
      ''
      'begin'
      '  s := <frxDEnarLeltar."ANYA_AZONOSITO">;'
      '  if ((Copy(s,1,1) = '#39'3'#39') And (Length(s) = 10)) Then'
      
        '      memo11.text := Copy(s,1,5) + '#39'-'#39' + Copy(s,6,4) + '#39'-'#39' + Cop' +
        'y(s,10,1)'
      '   Else'
      '     If ((Copy(s,1,3) = '#39'HU3'#39') And (Length(s) = 12)) Then'
      
        '      memo11.text := Copy(s,1,7) + '#39'-'#39' + Copy(s,8,4) + '#39'-'#39' + Cop' +
        'y(s,10,1) ;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 408
    Top = 64
    Datasets = <
      item
        DataSet = frxDBEnarLeltar
        DataSetName = 'frxDEnarLeltar'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo4: TfrxMemoView
          Left = 398.740476020000000000
          Top = 15.118120000000000000
          Width = 249.448857950000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8 = (
            #258#129'llom'#258#711'ny nyilv'#258#711'ntart'#258#711's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baCenter
          Left = 349.606566495000100000
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
            'Wtarka adatfeldolgoz'#258#322' rendszer '#194#169' 2010')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 876.850642680000000000
          Top = -0.000002440000006487
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
          Left = 925.984850000000000000
          Top = -0.000000000000010658
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
          Left = 994.015994570000000000
          Top = -0.000000000000010658
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
          Top = 94.488201180000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 7.559060000000000000
          Top = 71.811070000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tart'#258#322' neve:[frxDEnarLeltar."TELEP_NEV"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Left = 895.748610000000000000
          Top = 71.811070000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Teny'#258#169'szetk'#258#322'd: [frxDEnarLeltar."TKOD"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 330.708875000000000000
          Top = 41.574830000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'A 4/2009 (I.16) FVM rendelet mell'#258#169'klete alapj'#258#711'n')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 325.039580000000000000
          Top = 71.811070000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          DataSet = frmTibor.frxDBdtsTiborTenyeszet
          DataSetName = 'frxDBdtsTiborTenyeszet'
          Memo.UTF8 = (
            'Tart'#258#711'si hely: [frxDEnarLeltar."KOZTERULET"]')
        end
        object Memo31: TfrxMemoView
          Left = 7.559060000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8 = (
            '[SzuroFeltetelek]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 483.779840000000000000
        Width = 1046.929810000000000000
        object Memo38: TfrxMemoView
          Left = 1024.252630000000000000
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
          Left = 967.559680000000000000
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
          Left = 1012.914040000000000000
          Width = 11.338590000000000000
          Height = 15.118110240000000000
          Memo.UTF8 = (
            '/')
        end
        object Memo9: TfrxMemoView
          Left = 997.795920000000000000
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
            'List'#258#711'k - Enar lelt'#258#711'r lista')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 79.370130000000000000
        Top = 139.842610000000000000
        Width = 1046.929810000000000000
        object Line1: TfrxLineView
          Align = baWidth
          Top = 79.370129999999990000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR sz'#258#711'm')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 115.275665000000000000
          Width = 105.826840000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Anyja ENAR sz'#258#711'ma'
            'vagy k'#258#317'lf'#258#182'ldi azonos'#258#173't'#258#322'ja')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 234.330860000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si id'#313#8216)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 313.700990000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Neme')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 374.173470000000000000
          Width = 52.913420000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Fajt'#258#711'ja/'
            'sz'#313#8216'rzet '
            'sz'#258#173'ne')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 514.016080000000000000
          Width = 83.149660000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'A tart'#258#711'si helyen l'#258#169'v'#313#8216' '#258#711'llat le'#258#182'l'#258#169's'#258#169'-'
            'nek '#258#169's a h'#258#711'zi v'#258#711'g'#258#711's'#258#711'nak id'#313#8216'pontja')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 430.866420000000000000
          Width = 79.370130000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'A tart'#258#711'si helyen l'#258#169'v'#313#8216
            #258#711'llat elpusztu-'
            'l'#258#711's'#258#711'nak, elvesz'#258#169'-'
            's'#258#169'nek d'#258#711'tuma')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 899.528140000000000000
          Top = 30.236240000000010000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Megjegyz'#258#169's')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 737.008350000000000000
          Top = 30.236240000000010000
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'C'#258#169'l teny'#258#169'szet'
            'k'#258#322'dja')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 600.945270000000000000
          Top = 30.236240000000010000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Sz'#258#711'rmaz'#258#711'si teny'#258#169'szet k'#258#322'dja')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 665.197280000000000000
          Top = 30.236240000000010000
          Width = 64.252010000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'D'#258#711'tum')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 600.945270000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ' A teny'#258#169'szetbe '#258#169'rkezett')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 737.008350000000000000
          Width = 309.921460000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'E l h a g y t a   a   t e n y '#258#169' s z e t e t ')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 818.268245000000000000
          Top = 30.236240000000010000
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'D'#258#711'tum')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 98.267780000000000000
        Top = 362.834880000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          Left = 15.118100470000000000
          Top = 3.779517800000008000
          Width = 56.692913390000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T'#258#169'telsz'#258#711'm:')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 79.370130000000000000
          Top = 3.779529999999965000
          Width = 120.944960000000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = -0.000004880000005869
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Align = baWidth
          Top = 49.133890000000010000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Align = baWidth
          Top = 71.811069999999970000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Align = baWidth
          Top = 94.488250000000000000
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
        end
        object Memo41: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000010000
          Width = 56.692913390000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ellen'#313#8216'rz'#258#169'sek:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Top = 49.133890000000010000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 113.385900000000000000
          Top = 49.133890000000010000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 415.748300000000000000
          Top = 49.133890000000010000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 718.110700000000000000
          Top = 49.133890000000010000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 1046.929810000000000000
          Top = 49.133890000000010000
          Height = 45.354360000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo42: TfrxMemoView
          Left = 11.338590000000000000
          Top = 52.913419999999970000
          Width = 56.692913390000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'D'#258#711'tum:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 11.338590000000000000
          Top = 75.590600000000000000
          Width = 56.692913390000000000
          Height = 12.094488190000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Al'#258#711#258#173'r'#258#711's:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBEnarLeltar
        DataSetName = 'frxDEnarLeltar'
        RowCount = 0
        object Memo3: TfrxMemoView
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo3OnAfterData'
          OnBeforePrint = 'Memo3OnBeforePrint'
          DataField = 'AZONOSITO'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          Memo.UTF8 = (
            '[frxDEnarLeltar."AZONOSITO"]')
        end
        object Memo11: TfrxMemoView
          Left = 109.606370000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo11OnAfterData'
          DataField = 'ANYA_AZONOSITO'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          Memo.UTF8 = (
            '[frxDEnarLeltar."ANYA_AZONOSITO"]')
        end
        object Memo12: TfrxMemoView
          Left = 234.330860000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'SZUL_DATUM'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          Memo.UTF8 = (
            '[frxDEnarLeltar."SZUL_DATUM"]')
        end
        object Memo14: TfrxMemoView
          Left = 313.700990000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'IVARNEV'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          Memo.UTF8 = (
            '[frxDEnarLeltar."IVARNEV"]')
        end
        object Memo16: TfrxMemoView
          Left = 377.953000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'FAJTA'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          Memo.UTF8 = (
            '[frxDEnarLeltar."FAJTA"]')
        end
        object Memo22: TfrxMemoView
          Left = 517.795610000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'KIKERULES_DATUM_1'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDEnarLeltar."KIKERULES_DATUM_1"]')
        end
        object Memo23: TfrxMemoView
          Left = 434.645950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'KIKERULES_DATUM'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDEnarLeltar."KIKERULES_DATUM"]')
        end
        object Memo25: TfrxMemoView
          Left = 899.528140000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'MEGJEGYZES'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          Memo.UTF8 = (
            '[frxDEnarLeltar."MEGJEGYZES"]')
        end
        object Memo28: TfrxMemoView
          Left = 738.898115000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'KIKHELY'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDEnarLeltar."KIKHELY"]')
        end
        object Memo18: TfrxMemoView
          Left = 602.835035000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'SZARM_TENY'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDEnarLeltar."SZARM_TENY"]')
        end
        object Memo32: TfrxMemoView
          Left = 661.417750000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'TENYBEERK_DATUM'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDEnarLeltar."TENYBEERK_DATUM"]')
        end
        object Memo36: TfrxMemoView
          Left = 808.819420000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo36OnBeforePrint'
          DataField = 'ELHAGYTA_DATUM'
          DataSet = frxDBEnarLeltar
          DataSetName = 'frxDEnarLeltar'
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDEnarLeltar."ELHAGYTA_DATUM"]')
        end
      end
    end
  end
  object sdsFolyLak: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT E.AZONOSITO,'#13#10' E.PSION_AZONOSITO,'#13#10' UE.ELLES_SSZ,'#13#10' UE.EL' +
      'LES_DATUM,'#13#10' T.FEJES_DATUM,'#13#10' T.ALLAPOT_KOD,'#13#10' FEJALL.KOD_NEV AS' +
      ' FEJESI_ALLAPOT_NEV,'#13#10' T.R_TEJ_KG + T.D_TEJ_KG + T.E_TEJ_KG AS N' +
      'API_TEJ,'#13#10' case when (T.R_TEJ_KG + T.D_TEJ_KG + T.E_TEJ_KG) > 0 ' +
      'then'#13#10' round(dbo.ZS_KG(T.R_TEJ_KG , T.D_TEJ_KG, T.E_TEJ_KG, T.R_' +
      'ZSIRSZ, T.D_ZSIRSZ, T.E_ZSIRSZ)/(T.R_TEJ_KG + T.D_TEJ_KG + T.E_T' +
      'EJ_KG)*100,2)'#13#10' when (T.R_TEJ_KG + T.D_TEJ_KG + T.E_TEJ_KG) = 0 ' +
      'then 0 end AS NAPIZSIRSZ,'#13#10' case when (T.R_TEJ_KG + T.D_TEJ_KG +' +
      ' T.E_TEJ_KG) > 0 then'#13#10' round(dbo.ZS_KG(T.R_TEJ_KG , T.D_TEJ_KG,' +
      ' T.E_TEJ_KG, T.R_FEHSZ, T.D_FEHSZ, T.E_FEHSZ)/(T.R_TEJ_KG + T.D_' +
      'TEJ_KG + T.E_TEJ_KG)*100,2)'#13#10' when (T.R_TEJ_KG + T.D_TEJ_KG + T.' +
      'E_TEJ_KG) = 0 then 0 end AS NAPIFEHSZ,'#13#10' dbo.ZS_KG(T.R_TEJ_KG , ' +
      'T.D_TEJ_KG, T.E_TEJ_KG, T.R_ZSIRSZ, T.D_ZSIRSZ, T.E_ZSIRSZ) AS N' +
      'APIZSIRKG,'#13#10' dbo.ZS_KG(T.R_TEJ_KG , T.D_TEJ_KG, T.E_TEJ_KG, T.R_' +
      'FEHSZ, T.D_FEHSZ, T.E_FEHSZ) AS NAPIFEHKG,'#13#10' T.SZOMAT,'#13#10' DATEDIF' +
      'F(DAY,COALESCE(UE.ELLES_DATUM, T.FEJES_DATUM), T.FEJES_DATUM) AS' +
      ' LAKT_NAP'#13#10'FROM EGYEDEK E'#13#10'JOIN ELLESEK UE ON UE.EGYEDEK_ID = E.' +
      'ID AND UE.ELLES_DATUM=(SELECT MAX(ELLESEK.ELLES_DATUM) FROM ELLE' +
      'SEK WHERE ELLESEK.EGYEDEK_ID=E.ID)'#13#10'JOIN HAVI_TERM T ON E.ID = T' +
      '.EGYEDEK_ID and T.FEJES_DATUM = (SELECT MIN(HT.FEJES_DATUM) FROM' +
      #13#10'        HAVI_TERM HT WHERE HT.EGYEDEK_ID=E.ID AND'#13#10'        HT.' +
      'FEJES_DATUM>UE.ELLES_DATUM AND HT.ALLAPOT_KOD IN (1,2))'#13#10'LEFT JO' +
      'IN KODOK FEJALL ON FEJALL.KOD = T.ALLAPOT_KOD AND FEJALL.KODTIPU' +
      'SOK_TIPUSKOD = '#39'FEJ_ALL'#39#13#10'WHERE  E.IVAR = '#39'2'#39' AND E.KIKERULES_KO' +
      'D IS NULL'#13#10'order by ELLES_SSZ,AZONOSITO'#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT E.AZONOSITO,'#13#10' E.PSION_AZONOSITO,'#13#10' UE.ELLES_SSZ,'#13#10' UE.EL' +
      'LES_DATUM,'#13#10' T.FEJES_DATUM,'#13#10' T.ALLAPOT_KOD,'#13#10' FEJALL.KOD_NEV AS' +
      ' FEJESI_ALLAPOT_NEV,'#13#10' T.R_TEJ_KG + T.D_TEJ_KG + T.E_TEJ_KG AS N' +
      'API_TEJ,'#13#10' case when (T.R_TEJ_KG + T.D_TEJ_KG + T.E_TEJ_KG) > 0 ' +
      'then'#13#10' round(dbo.ZS_KG(T.R_TEJ_KG , T.D_TEJ_KG, T.E_TEJ_KG, T.R_' +
      'ZSIRSZ, T.D_ZSIRSZ, T.E_ZSIRSZ)/(T.R_TEJ_KG + T.D_TEJ_KG + T.E_T' +
      'EJ_KG)*100,2)'#13#10' when (T.R_TEJ_KG + T.D_TEJ_KG + T.E_TEJ_KG) = 0 ' +
      'then 0 end AS NAPIZSIRSZ,'#13#10' case when (T.R_TEJ_KG + T.D_TEJ_KG +' +
      ' T.E_TEJ_KG) > 0 then'#13#10' round(dbo.ZS_KG(T.R_TEJ_KG , T.D_TEJ_KG,' +
      ' T.E_TEJ_KG, T.R_FEHSZ, T.D_FEHSZ, T.E_FEHSZ)/(T.R_TEJ_KG + T.D_' +
      'TEJ_KG + T.E_TEJ_KG)*100,2)'#13#10' when (T.R_TEJ_KG + T.D_TEJ_KG + T.' +
      'E_TEJ_KG) = 0 then 0 end AS NAPIFEHSZ,'#13#10' dbo.ZS_KG(T.R_TEJ_KG , ' +
      'T.D_TEJ_KG, T.E_TEJ_KG, T.R_ZSIRSZ, T.D_ZSIRSZ, T.E_ZSIRSZ) AS N' +
      'APIZSIRKG,'#13#10' dbo.ZS_KG(T.R_TEJ_KG , T.D_TEJ_KG, T.E_TEJ_KG, T.R_' +
      'FEHSZ, T.D_FEHSZ, T.E_FEHSZ) AS NAPIFEHKG,'#13#10' T.SZOMAT,'#13#10' DATEDIF' +
      'F(DAY,COALESCE(UE.ELLES_DATUM, T.FEJES_DATUM), T.FEJES_DATUM) AS' +
      ' LAKT_NAP'#13#10'FROM EGYEDEK E'#13#10'JOIN ELLESEK UE ON UE.EGYEDEK_ID = E.' +
      'ID AND UE.ELLES_DATUM=(SELECT MAX(ELLESEK.ELLES_DATUM) FROM ELLE' +
      'SEK WHERE ELLESEK.EGYEDEK_ID=E.ID)'#13#10'JOIN HAVI_TERM T ON E.ID = T' +
      '.EGYEDEK_ID and T.FEJES_DATUM = (SELECT MIN(HT.FEJES_DATUM) FROM' +
      #13#10'        HAVI_TERM HT WHERE HT.EGYEDEK_ID=E.ID AND'#13#10'        HT.' +
      'FEJES_DATUM>UE.ELLES_DATUM AND HT.ALLAPOT_KOD IN (1,2))'#13#10'LEFT JO' +
      'IN KODOK FEJALL ON FEJALL.KOD = T.ALLAPOT_KOD AND FEJALL.KODTIPU' +
      'SOK_TIPUSKOD = '#39'FEJ_ALL'#39#13#10'WHERE  E.IVAR = '#39'2'#39' AND E.KIKERULES_KO' +
      'D IS NULL'#13#10'order by ELLES_SSZ,AZONOSITO'#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 32
    Top = 64
    object sdsFolyLakAZONOSITO: TStringField
      FieldName = 'AZONOSITO'
      Size = 14
    end
    object sdsFolyLakPSION_AZONOSITO: TStringField
      FieldName = 'PSION_AZONOSITO'
      Size = 5
    end
    object sdsFolyLakELLES_SSZ: TIntegerField
      FieldName = 'ELLES_SSZ'
    end
    object sdsFolyLakELLES_DATUM: TDateTimeField
      FieldName = 'ELLES_DATUM'
    end
    object sdsFolyLakFEJES_DATUM: TDateTimeField
      FieldName = 'FEJES_DATUM'
    end
    object sdsFolyLakALLAPOT_KOD: TStringField
      FieldName = 'ALLAPOT_KOD'
      Size = 10
    end
    object sdsFolyLakFEJESI_ALLAPOT_NEV: TStringField
      FieldName = 'FEJESI_ALLAPOT_NEV'
      Size = 30
    end
    object sdsFolyLakNAPIZSIRSZ: TFloatField
      FieldName = 'NAPIZSIRSZ'
      ReadOnly = True
    end
    object sdsFolyLakNAPIFEHSZ: TFloatField
      FieldName = 'NAPIFEHSZ'
      ReadOnly = True
    end
    object sdsFolyLakNAPIZSIRKG: TFloatField
      FieldName = 'NAPIZSIRKG'
      ReadOnly = True
    end
    object sdsFolyLakNAPIFEHKG: TFloatField
      FieldName = 'NAPIFEHKG'
      ReadOnly = True
    end
    object sdsFolyLakNAPI_TEJ: TBCDField
      FieldName = 'NAPI_TEJ'
      ReadOnly = True
      Precision = 7
      Size = 1
    end
    object sdsFolyLakSZOMAT: TIntegerField
      FieldName = 'SZOMAT'
    end
    object sdsFolyLakLAKT_NAP: TIntegerField
      FieldName = 'LAKT_NAP'
      ReadOnly = True
    end
  end
  object frxDBFolyLak: TfrxDBDataset
    UserName = 'frxDBFolyLak'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AZONOSITO=AZONOSITO'
      'PSION_AZONOSITO=PSION_AZONOSITO'
      'ELLES_SSZ=ELLES_SSZ'
      'ELLES_DATUM=ELLES_DATUM'
      'FEJES_DATUM=FEJES_DATUM'
      'ALLAPOT_KOD=ALLAPOT_KOD'
      'FEJESI_ALLAPOT_NEV=FEJESI_ALLAPOT_NEV'
      'NAPI_TEJ=NAPI_TEJ'
      'NAPIZSIRSZ=NAPIZSIRSZ'
      'NAPIFEHSZ=NAPIFEHSZ'
      'NAPIZSIRKG=NAPIZSIRKG'
      'NAPIFEHKG=NAPIFEHKG'
      'SZOMAT=SZOMAT'
      'LAKT_NAP=LAKT_NAP')
    DataSet = sdsFolyLak
    Left = 96
    Top = 64
  end
  object sdsSzaraz: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT E.AZONOSITO, E.PSION_AZONOSITO,'#13#10'T.TERM_DATUM + PARAM.ATL' +
      '_VEMH_NAP AS VARHATO_ELLES,'#13#10'T.TERM_DATUM, T.TERM_SSZ,'#13#10'HT.R_TEJ' +
      '_KG + HT.D_TEJ_KG + HT.E_TEJ_KG AS NAPI_TEJ,'#13#10'HT.SZOMAT,'#13#10'TCS.KO' +
      'D, TCS.NEV'#13#10'FROM EGYEDEK E'#13#10'JOIN TERMEKENYITESEK T ON T.ID = dbo' +
      '.UT_VEMHESSEG(E.ID)'#13#10'JOIN PARAM ON 1=1'#13#10'LEFT JOIN TERMELESI_CSOP' +
      'ORT TCS ON TCS.KOD = E.TERMELESI_CSOPORT_KOD'#13#10'LEFT JOIN HAVI_TER' +
      'M HT ON HT.EGYEDEK_ID = E.ID AND HT.FEJES_DATUM = (SELECT MAX(FE' +
      'JES_DATUM) FROM HAVI_TERM WHERE HAVI_TERM.EGYEDEK_ID = E.ID)'#13#10'WH' +
      'ERE ((E.KIKERULES_KOD IS NULL) OR (E.KIKERULES_KOD='#39#39'))'#13#10'AND'#13#10'DA' +
      'TEDIFF(DAY,(T.TERM_DATUM + PARAM.ATL_VEMH_NAP - PARAM.ATL_SZARAZ' +
      '_NAP) , :DATUM)  BETWEEN 0 and 61'#13#10'AND E.TERMELESI_CSOPORT_KOD <' +
      '> PARAM.SZARAZ_TCS'
    DataSet.Parameters = <
      item
        Name = 'DATUM'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 39688
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT E.AZONOSITO, E.PSION_AZONOSITO,'#13#10'T.TERM_DATUM + PARAM.ATL' +
      '_VEMH_NAP AS VARHATO_ELLES,'#13#10'T.TERM_DATUM, T.TERM_SSZ,'#13#10'HT.R_TEJ' +
      '_KG + HT.D_TEJ_KG + HT.E_TEJ_KG AS NAPI_TEJ,'#13#10'HT.SZOMAT,'#13#10'TCS.KO' +
      'D, TCS.NEV'#13#10'FROM EGYEDEK E'#13#10'JOIN TERMEKENYITESEK T ON T.ID = dbo' +
      '.UT_VEMHESSEG(E.ID)'#13#10'JOIN PARAM ON 1=1'#13#10'LEFT JOIN TERMELESI_CSOP' +
      'ORT TCS ON TCS.KOD = E.TERMELESI_CSOPORT_KOD'#13#10'LEFT JOIN HAVI_TER' +
      'M HT ON HT.EGYEDEK_ID = E.ID AND HT.FEJES_DATUM = (SELECT MAX(FE' +
      'JES_DATUM) FROM HAVI_TERM WHERE HAVI_TERM.EGYEDEK_ID = E.ID)'#13#10'WH' +
      'ERE ((E.KIKERULES_KOD IS NULL) OR (E.KIKERULES_KOD='#39#39'))'#13#10'AND'#13#10'DA' +
      'TEDIFF(DAY,(T.TERM_DATUM + PARAM.ATL_VEMH_NAP - PARAM.ATL_SZARAZ' +
      '_NAP) , :DATUM)  BETWEEN 0 and 61'#13#10'AND E.TERMELESI_CSOPORT_KOD <' +
      '> PARAM.SZARAZ_TCS'
    Provider.DataSet.Parameters = <
      item
        Name = 'DATUM'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 39688
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 24
    Top = 112
    object sdsSzarazAZONOSITO: TStringField
      FieldName = 'AZONOSITO'
      Size = 14
    end
    object sdsSzarazPSION_AZONOSITO: TStringField
      FieldName = 'PSION_AZONOSITO'
      Size = 5
    end
    object sdsSzarazVARHATO_ELLES: TDateTimeField
      FieldName = 'VARHATO_ELLES'
      ReadOnly = True
    end
    object sdsSzarazTERM_DATUM: TDateTimeField
      FieldName = 'TERM_DATUM'
    end
    object sdsSzarazTERM_SSZ: TIntegerField
      FieldName = 'TERM_SSZ'
    end
    object sdsSzarazNAPI_TEJ: TBCDField
      FieldName = 'NAPI_TEJ'
      ReadOnly = True
      Precision = 7
      Size = 1
    end
    object sdsSzarazSZOMAT: TIntegerField
      FieldName = 'SZOMAT'
    end
    object sdsSzarazKOD: TStringField
      FieldName = 'KOD'
      Size = 10
    end
    object sdsSzarazNEV: TStringField
      FieldName = 'NEV'
      Size = 80
    end
  end
  object frxDBSzaraz: TfrxDBDataset
    UserName = 'frxDBSzaraz'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AZONOSITO=AZONOSITO'
      'PSION_AZONOSITO=PSION_AZONOSITO'
      'VARHATO_ELLES=VARHATO_ELLES'
      'TERM_DATUM=TERM_DATUM'
      'TERM_SSZ=TERM_SSZ'
      'NAPI_TEJ=NAPI_TEJ'
      'SZOMAT=SZOMAT'
      'KOD=KOD'
      'NEV=NEV')
    DataSet = sdsSzaraz
    Left = 88
    Top = 112
  end
  object sdsInvol: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT E.AZONOSITO, E.PSION_AZONOSITO,'#13#10'ELL.ELLES_DATUM,'#13#10'DATEDI' +
      'FF(DAY,ELL.ELLES_DATUM, GETDATE()) AS ELLES_OTA_NAP,'#13#10'HT.R_TEJ_K' +
      'G + HT.D_TEJ_KG + HT.E_TEJ_KG AS NAPI_TEJ,'#13#10'HT.SZOMAT,'#13#10'TCS.KOD,' +
      ' TCS.NEV'#13#10'FROM EGYEDEK E'#13#10'JOIN ELLESEK ELL ON (ELL.EGYEDEK_ID = ' +
      'E.ID AND  ELL.ELLES_SSZ = (SELECT MAX(ELL1.ELLES_SSZ) FROM ELLES' +
      'EK ELL1'#13#10'  WHERE ELL1.EGYEDEK_ID = E.ID))'#13#10'JOIN PARAM ON 1=1'#13#10'LE' +
      'FT JOIN TERMELESI_CSOPORT TCS ON TCS.KOD = E.TERMELESI_CSOPORT_K' +
      'OD'#13#10'LEFT JOIN HAVI_TERM HT ON HT.EGYEDEK_ID = E.ID AND HT.FEJES_' +
      'DATUM = (SELECT MAX(FEJES_DATUM)'#13#10'        FROM HAVI_TERM WHERE H' +
      'AVI_TERM.EGYEDEK_ID = E.ID AND HAVI_TERM.FEJES_DATUM > ELL.ELLES' +
      '_DATUM)'#13#10'WHERE ((E.KIKERULES_KOD IS NULL) OR (E.KIKERULES_KOD='#39#39 +
      '))'#13#10'AND'#13#10'NOT EXISTS (SELECT 1 FROM TERMEKENYITESEK T WHERE T.EGY' +
      'EDEK_ID = E.ID AND T.ELLES_SSZ = ELL.ELLES_SSZ + 1)'#13#10'AND ((DATED' +
      'IFF(DAY,ELL.ELLES_DATUM, :DATUM) BETWEEN :NAP1 AND :NAP2) OR'#13#10' (' +
      'DATEDIFF(DAY,ELL.ELLES_DATUM, :DATUM1)  BETWEEN :NAP3 AND :NAP4)' +
      ')'#13#10
    DataSet.Parameters = <
      item
        Name = 'DATUM'
        DataType = ftDateTime
        Size = -1
        Value = 39448d
      end
      item
        Name = 'NAP1'
        DataType = ftInteger
        Size = 2
        Value = 23
      end
      item
        Name = 'NAP2'
        DataType = ftInteger
        Size = 2
        Value = 40
      end
      item
        Name = 'DATUM1'
        DataType = ftDateTime
        Size = -1
        Value = 39448d
      end
      item
        Name = 'NAP3'
        DataType = ftInteger
        Size = 2
        Value = 57
      end
      item
        Name = 'NAP4'
        DataType = ftInteger
        Size = 2
        Value = 64
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT E.AZONOSITO, E.PSION_AZONOSITO,'#13#10'ELL.ELLES_DATUM,'#13#10'DATEDI' +
      'FF(DAY,ELL.ELLES_DATUM, GETDATE()) AS ELLES_OTA_NAP,'#13#10'HT.R_TEJ_K' +
      'G + HT.D_TEJ_KG + HT.E_TEJ_KG AS NAPI_TEJ,'#13#10'HT.SZOMAT,'#13#10'TCS.KOD,' +
      ' TCS.NEV'#13#10'FROM EGYEDEK E'#13#10'JOIN ELLESEK ELL ON (ELL.EGYEDEK_ID = ' +
      'E.ID AND  ELL.ELLES_SSZ = (SELECT MAX(ELL1.ELLES_SSZ) FROM ELLES' +
      'EK ELL1'#13#10'  WHERE ELL1.EGYEDEK_ID = E.ID))'#13#10'JOIN PARAM ON 1=1'#13#10'LE' +
      'FT JOIN TERMELESI_CSOPORT TCS ON TCS.KOD = E.TERMELESI_CSOPORT_K' +
      'OD'#13#10'LEFT JOIN HAVI_TERM HT ON HT.EGYEDEK_ID = E.ID AND HT.FEJES_' +
      'DATUM = (SELECT MAX(FEJES_DATUM)'#13#10'        FROM HAVI_TERM WHERE H' +
      'AVI_TERM.EGYEDEK_ID = E.ID AND HAVI_TERM.FEJES_DATUM > ELL.ELLES' +
      '_DATUM)'#13#10'WHERE ((E.KIKERULES_KOD IS NULL) OR (E.KIKERULES_KOD='#39#39 +
      '))'#13#10'AND'#13#10'NOT EXISTS (SELECT 1 FROM TERMEKENYITESEK T WHERE T.EGY' +
      'EDEK_ID = E.ID AND T.ELLES_SSZ = ELL.ELLES_SSZ + 1)'#13#10'AND ((DATED' +
      'IFF(DAY,ELL.ELLES_DATUM, :DATUM) BETWEEN :NAP1 AND :NAP2) OR'#13#10' (' +
      'DATEDIFF(DAY,ELL.ELLES_DATUM, :DATUM1)  BETWEEN :NAP3 AND :NAP4)' +
      ')'#13#10
    Provider.DataSet.Parameters = <
      item
        Name = 'DATUM'
        DataType = ftDateTime
        Size = -1
        Value = 39448d
      end
      item
        Name = 'NAP1'
        DataType = ftInteger
        Size = 2
        Value = 23
      end
      item
        Name = 'NAP2'
        DataType = ftInteger
        Size = 2
        Value = 40
      end
      item
        Name = 'DATUM1'
        DataType = ftDateTime
        Size = -1
        Value = 39448d
      end
      item
        Name = 'NAP3'
        DataType = ftInteger
        Size = 2
        Value = 57
      end
      item
        Name = 'NAP4'
        DataType = ftInteger
        Size = 2
        Value = 64
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 32
    Top = 160
    object sdsInvolAZONOSITO: TStringField
      FieldName = 'AZONOSITO'
      Size = 14
    end
    object sdsInvolPSION_AZONOSITO: TStringField
      FieldName = 'PSION_AZONOSITO'
      Size = 5
    end
    object sdsInvolELLES_DATUM: TDateTimeField
      FieldName = 'ELLES_DATUM'
    end
    object sdsInvolELLES_OTA_NAP: TIntegerField
      FieldName = 'ELLES_OTA_NAP'
      ReadOnly = True
    end
    object sdsInvolNAPI_TEJ: TBCDField
      FieldName = 'NAPI_TEJ'
      ReadOnly = True
      Precision = 7
      Size = 1
    end
    object sdsInvolSZOMAT: TIntegerField
      FieldName = 'SZOMAT'
    end
    object sdsInvolKOD: TStringField
      FieldName = 'KOD'
      Size = 10
    end
    object sdsInvolNEV: TStringField
      FieldName = 'NEV'
      Size = 80
    end
  end
  object frxDBInvol: TfrxDBDataset
    UserName = 'frxDBInvol'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AZONOSITO=AZONOSITO'
      'PSION_AZONOSITO=PSION_AZONOSITO'
      'ELLES_DATUM=ELLES_DATUM'
      'ELLES_OTA_NAP=ELLES_OTA_NAP'
      'NAPI_TEJ=NAPI_TEJ'
      'SZOMAT=SZOMAT'
      'KOD=KOD'
      'NEV=NEV')
    DataSet = sdsInvol
    Left = 96
    Top = 160
  end
  object sdsKez: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT E.AZONOSITO, E.PSION_AZONOSITO,'#13#10'ELL.ELLES_DATUM,'#13#10'T.TERM' +
      '_DATUM,'#13#10'K.KEZ_DATUM,'#13#10'KP.KOD + '#39'-'#39' + KP.NEV AS KEZNEV,'#13#10'TCS.KOD' +
      ', TCS.NEV'#13#10'FROM EGYEDEK E'#13#10'JOIN KEZELESEK K ON K.EGYEDEK_ID = E.' +
      'ID AND K.KOV_KEZELES_DATUM BETWEEN :DATUM1 AND :DATUM2'#13#10'JOIN KEZ' +
      '_PARAM KP ON KP.ID = K.KEZELES_ID'#13#10'LEFT JOIN ELLESEK ELL ON (ELL' +
      '.EGYEDEK_ID = E.ID AND  ELL.ELLES_SSZ = (SELECT MAX(ELL1.ELLES_S' +
      'SZ) FROM ELLESEK ELL1'#13#10'  WHERE ELL1.EGYEDEK_ID = E.ID))'#13#10'LEFT JO' +
      'IN TERMEKENYITESEK T ON T.ID = DBO.UT_ELLES(E.ID)'#13#10'JOIN PARAM ON' +
      ' 1=1'#13#10'LEFT JOIN TERMELESI_CSOPORT TCS ON TCS.KOD = E.TERMELESI_C' +
      'SOPORT_KOD'#13#10'LEFT JOIN HAVI_TERM HT ON HT.EGYEDEK_ID = E.ID AND H' +
      'T.FEJES_DATUM = (SELECT MAX(FEJES_DATUM)'#13#10'        FROM HAVI_TERM' +
      ' WHERE HAVI_TERM.EGYEDEK_ID = E.ID AND HAVI_TERM.FEJES_DATUM > E' +
      'LL.ELLES_DATUM)'#13#10'WHERE ((E.KIKERULES_KOD IS NULL) OR (E.KIKERULE' +
      'S_KOD='#39#39'))'#13#10
    DataSet.Parameters = <
      item
        Name = 'DATUM1'
        DataType = ftDateTime
        Size = -1
        Value = 39448d
      end
      item
        Name = 'DATUM2'
        DataType = ftDateTime
        Size = -1
        Value = 39448d
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT E.AZONOSITO, E.PSION_AZONOSITO,'#13#10'ELL.ELLES_DATUM,'#13#10'T.TERM' +
      '_DATUM,'#13#10'K.KEZ_DATUM,'#13#10'KP.KOD + '#39'-'#39' + KP.NEV AS KEZNEV,'#13#10'TCS.KOD' +
      ', TCS.NEV'#13#10'FROM EGYEDEK E'#13#10'JOIN KEZELESEK K ON K.EGYEDEK_ID = E.' +
      'ID AND K.KOV_KEZELES_DATUM BETWEEN :DATUM1 AND :DATUM2'#13#10'JOIN KEZ' +
      '_PARAM KP ON KP.ID = K.KEZELES_ID'#13#10'LEFT JOIN ELLESEK ELL ON (ELL' +
      '.EGYEDEK_ID = E.ID AND  ELL.ELLES_SSZ = (SELECT MAX(ELL1.ELLES_S' +
      'SZ) FROM ELLESEK ELL1'#13#10'  WHERE ELL1.EGYEDEK_ID = E.ID))'#13#10'LEFT JO' +
      'IN TERMEKENYITESEK T ON T.ID = DBO.UT_ELLES(E.ID)'#13#10'JOIN PARAM ON' +
      ' 1=1'#13#10'LEFT JOIN TERMELESI_CSOPORT TCS ON TCS.KOD = E.TERMELESI_C' +
      'SOPORT_KOD'#13#10'LEFT JOIN HAVI_TERM HT ON HT.EGYEDEK_ID = E.ID AND H' +
      'T.FEJES_DATUM = (SELECT MAX(FEJES_DATUM)'#13#10'        FROM HAVI_TERM' +
      ' WHERE HAVI_TERM.EGYEDEK_ID = E.ID AND HAVI_TERM.FEJES_DATUM > E' +
      'LL.ELLES_DATUM)'#13#10'WHERE ((E.KIKERULES_KOD IS NULL) OR (E.KIKERULE' +
      'S_KOD='#39#39'))'#13#10
    Provider.DataSet.Parameters = <
      item
        Name = 'DATUM1'
        DataType = ftDateTime
        Size = -1
        Value = 39448d
      end
      item
        Name = 'DATUM2'
        DataType = ftDateTime
        Size = -1
        Value = 39448d
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 32
    Top = 200
    object sdsKezAZONOSITO: TStringField
      FieldName = 'AZONOSITO'
      Size = 14
    end
    object sdsKezPSION_AZONOSITO: TStringField
      FieldName = 'PSION_AZONOSITO'
      Size = 5
    end
    object sdsKezELLES_DATUM: TDateTimeField
      FieldName = 'ELLES_DATUM'
    end
    object sdsKezTERM_DATUM: TDateTimeField
      FieldName = 'TERM_DATUM'
    end
    object sdsKezKEZ_DATUM: TDateTimeField
      FieldName = 'KEZ_DATUM'
    end
    object sdsKezKEZNEV: TStringField
      FieldName = 'KEZNEV'
      ReadOnly = True
      Size = 41
    end
    object sdsKezKOD: TStringField
      FieldName = 'KOD'
      Size = 10
    end
    object sdsKezNEV: TStringField
      FieldName = 'NEV'
      Size = 80
    end
  end
  object frxDBKez: TfrxDBDataset
    UserName = 'frxDBKez'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AZONOSITO=AZONOSITO'
      'PSION_AZONOSITO=PSION_AZONOSITO'
      'ELLES_DATUM=ELLES_DATUM'
      'TERM_DATUM=TERM_DATUM'
      'KEZ_DATUM=KEZ_DATUM'
      'KEZNEV=KEZNEV'
      'KOD=KOD'
      'NEV=NEV')
    DataSet = sdsKez
    Left = 96
    Top = 200
  end
end
