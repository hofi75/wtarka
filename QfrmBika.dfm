inherited frmBika: TfrmBika
  Left = 306
  Top = 99
  Width = 1012
  Height = 775
  ActiveControl = edtKeres
  Caption = 'K'#246'zponti bikat'#246'rzs'
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlGombok: TPanel
    Top = 698
    Width = 996
    inherited btnTorol: TBitBtn
      Left = 758
      TabOrder = 3
      Visible = False
      OnClick = btnTorolClick
    end
    inherited btnOK: TBitBtn
      Left = 838
      TabOrder = 0
    end
    inherited btnCancel: TBitBtn
      Left = 918
    end
    inherited btnModosit: TBitBtn
      Left = 678
      TabOrder = 2
      Visible = False
    end
    inherited btnUj: TBitBtn
      Left = 598
      TabOrder = 1
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 328
      Top = 8
      Width = 89
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'K'#252'llemi adatok'
      TabOrder = 6
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
  end
  inherited pnlMod: TTalPanel
    Left = 486
    Top = 33
    Width = 510
    Height = 665
    object TalLabel1: TTalLabel
      Left = 9
      Top = 10
      Width = 61
      Height = 13
      Caption = 'Bika KPLSZ:'
    end
    object TalLabel2: TTalLabel
      Left = 9
      Top = 57
      Width = 23
      Height = 13
      Caption = 'N'#233'v:'
    end
    object TalLabel3: TTalLabel
      Left = 5
      Top = 424
      Width = 24
      Height = 13
      Caption = 'Sz'#237'n:'
    end
    object TalLabel10: TTalLabel
      Left = 5
      Top = 398
      Width = 62
      Height = 13
      Caption = 'Sz'#252'let'#233'si id'#337':'
    end
    object TalLabel13: TTalLabel
      Left = 290
      Top = 10
      Width = 41
      Height = 13
      Caption = 'F'#252'lsz'#225'm:'
    end
    object TalLabel14: TTalLabel
      Left = 9
      Top = 33
      Width = 33
      Height = 13
      Caption = 'ENAR:'
    end
    object TalLabel15: TTalLabel
      Left = 290
      Top = 33
      Width = 45
      Height = 13
      Caption = 'Id.ENAR:'
    end
    object TalLabel5: TTalLabel
      Left = 5
      Top = 298
      Width = 81
      Height = 13
      Caption = 'Anyai nagyanya: '
    end
    object TalLabel22: TTalLabel
      Left = 198
      Top = 298
      Width = 29
      Height = 13
      Caption = 'Neve:'
    end
    object TalLabel23: TTalLabel
      Left = 5
      Top = 322
      Width = 76
      Height = 13
      Caption = 'Anyai nagyapa: '
    end
    object TalLabel24: TTalLabel
      Left = 198
      Top = 322
      Width = 29
      Height = 13
      Caption = 'Neve:'
    end
    object TalLabel7: TTalLabel
      Left = 5
      Top = 346
      Width = 76
      Height = 13
      Caption = 'Apai nagyanya: '
    end
    object TalLabel8: TTalLabel
      Left = 198
      Top = 346
      Width = 29
      Height = 13
      Caption = 'Neve:'
    end
    object TalLabel25: TTalLabel
      Left = 5
      Top = 370
      Width = 71
      Height = 13
      Caption = 'Apai nagyapa: '
    end
    object TalLabel26: TTalLabel
      Left = 198
      Top = 370
      Width = 29
      Height = 13
      Caption = 'Neve:'
    end
    object TalLabel27: TTalLabel
      Left = 224
      Top = 398
      Width = 90
      Height = 13
      Caption = 'Sz'#225'rmaz'#225'si orsz'#225'g:'
    end
    object TalLabel28: TTalLabel
      Left = 5
      Top = 448
      Width = 44
      Height = 13
      Caption = 'Fajtak'#243'd:'
    end
    object TalLabel29: TTalLabel
      Left = 5
      Top = 472
      Width = 63
      Height = 13
      Caption = 'V'#233'rh'#225'nyad 1:'
    end
    object TalLabel30: TTalLabel
      Left = 272
      Top = 472
      Width = 14
      Height = 13
      Caption = ' % '
    end
    object TalLabel31: TTalLabel
      Left = 495
      Top = 472
      Width = 14
      Height = 13
      Caption = ' % '
    end
    object TalLabel32: TTalLabel
      Left = 294
      Top = 472
      Width = 19
      Height = 13
      Caption = 'V.4:'
    end
    object TalLabel33: TTalLabel
      Left = 5
      Top = 518
      Width = 63
      Height = 13
      Caption = 'V'#233'rh'#225'nyad 3:'
    end
    object TalLabel34: TTalLabel
      Left = 263
      Top = 496
      Width = 14
      Height = 13
      Caption = ' % '
    end
    object TalLabel35: TTalLabel
      Left = 495
      Top = 496
      Width = 14
      Height = 13
      Caption = ' % '
    end
    object TalLabel36: TTalLabel
      Left = 294
      Top = 496
      Width = 19
      Height = 13
      Caption = 'V.5:'
    end
    object TalLabel37: TTalLabel
      Left = 255
      Top = 424
      Width = 59
      Height = 13
      Caption = 'Konstrukci'#243':'
    end
    object TalLabel38: TTalLabel
      Left = 5
      Top = 544
      Width = 72
      Height = 13
      Caption = 'T'#246'rzsk'#246'nyvi o.:'
    end
    object TalLabel39: TTalLabel
      Left = 159
      Top = 544
      Width = 58
      Height = 13
      Caption = 'Szarvalts'#225'g:'
    end
    object TalLabel40: TTalLabel
      Left = 5
      Top = 568
      Width = 91
      Height = 13
      Caption = 'T'#246'meggyarapod'#225's:'
    end
    object TalLabel41: TTalLabel
      Left = 159
      Top = 568
      Width = 70
      Height = 13
      Caption = '205 n. t'#246'mggy.'
    end
    object TalLabel42: TTalLabel
      Left = 355
      Top = 544
      Width = 28
      Height = 13
      Caption = 'SV %:'
    end
    object TalLabel43: TTalLabel
      Left = 322
      Top = 568
      Width = 61
      Height = 13
      Caption = 'STV. al. tgy.:'
    end
    object TalLabel44: TTalLabel
      Left = 5
      Top = 495
      Width = 63
      Height = 13
      Caption = 'V'#233'rh'#225'nyad 2:'
    end
    object TalLabel45: TTalLabel
      Left = 271
      Top = 495
      Width = 14
      Height = 13
      Caption = ' % '
    end
    object TalLabel46: TTalLabel
      Left = 271
      Top = 519
      Width = 14
      Height = 13
      Caption = ' % '
    end
    object edtKLSZ: TTalDBEdit
      Left = 94
      Top = 5
      Width = 65
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 0
      OnExit = edtKLSZExit
      DataField = 'KPLSZ'
      DataSource = sdBika
    end
    object edtNev: TTalDBEdit
      Left = 94
      Top = 52
      Width = 225
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 4
      DataField = 'NEV'
      DataSource = sdBika
    end
    object edtSzulDat: TTalDBEdit
      Left = 92
      Top = 393
      Width = 95
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      TabOrder = 16
      DataField = 'SZULDAT'
      DataSource = sdBika
    end
    object lucSzin: TTalDBLookupComboBox
      Left = 92
      Top = 420
      Width = 141
      Height = 21
      DataField = 'SZKOD'
      DataSource = sdBika
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtsInfSzin
      TabOrder = 17
    end
    object edtFsz: TTalDBEdit
      Left = 341
      Top = 5
      Width = 127
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 1
      OnExit = edtKLSZExit
      DataField = 'FSZ'
      DataSource = sdBika
    end
    object edtIdEnar: TTalDBEdit
      Left = 341
      Top = 28
      Width = 127
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 3
      OnExit = edtKLSZExit
      DataField = 'IENAR'
      DataSource = sdBika
    end
    object edtEnar: TTalDBEdit
      Left = 94
      Top = 28
      Width = 127
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 2
      OnExit = edtKLSZExit
      DataField = 'ENAR'
      DataSource = sdBika
    end
    object TalGroupBox1: TTalGroupBox
      Left = 8
      Top = 74
      Width = 473
      Height = 117
      Caption = ' Anya adatai  '
      TabOrder = 5
      object TalLabel16: TTalLabel
        Left = 5
        Top = 22
        Width = 33
        Height = 13
        Caption = 'ENAR:'
      end
      object TalLabel17: TTalLabel
        Left = 5
        Top = 70
        Width = 134
        Height = 13
        Caption = 'Recipiend anya azonos'#237't'#243'ja:'
      end
      object TalLabel18: TTalLabel
        Left = 283
        Top = 22
        Width = 45
        Height = 13
        Caption = 'Id.ENAR:'
      end
      object TalLabel19: TTalLabel
        Left = 5
        Top = 46
        Width = 41
        Height = 13
        Caption = 'Ell.sz'#225'm:'
      end
      object TalLabel20: TTalLabel
        Left = 283
        Top = 46
        Width = 41
        Height = 13
        Caption = 'F'#252'lsz'#225'm:'
      end
      object TalLabel21: TTalLabel
        Left = 5
        Top = 95
        Width = 23
        Height = 13
        Caption = 'N'#233'v:'
      end
      object edtAnEnar: TTalDBEdit
        Left = 85
        Top = 17
        Width = 127
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 0
        OnExit = edtKLSZExit
        DataField = 'AENAR'
        DataSource = sdBika
      end
      object edtRec: TTalDBEdit
        Left = 142
        Top = 65
        Width = 168
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 4
        DataField = 'RANYA'
        DataSource = sdBika
      end
      object edtAnIenar: TTalDBEdit
        Left = 332
        Top = 17
        Width = 127
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 1
        OnExit = edtKLSZExit
        DataField = 'IAENAR'
        DataSource = sdBika
      end
      object edtFulszam: TTalDBEdit
        Left = 332
        Top = 41
        Width = 127
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 3
        OnExit = edtKLSZExit
        DataField = 'AFSZ'
        DataSource = sdBika
      end
      object edtAnEll: TTalDBEdit
        Left = 85
        Top = 41
        Width = 127
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 2
        OnExit = edtKLSZExit
        DataField = 'AELL'
        DataSource = sdBika
      end
      object edtAnyNev: TTalDBEdit
        Left = 85
        Top = 90
        Width = 225
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 5
        DataField = 'ANYANEV'
        DataSource = sdBika
      end
    end
    object TalGroupBox2: TTalGroupBox
      Left = 8
      Top = 192
      Width = 473
      Height = 93
      Caption = ' Apa adatai  '
      TabOrder = 6
      object TalLabel4: TTalLabel
        Left = 5
        Top = 22
        Width = 37
        Height = 13
        Caption = 'KPLSZ:'
      end
      object TalLabel6: TTalLabel
        Left = 285
        Top = 22
        Width = 41
        Height = 13
        Caption = 'F'#252'lsz'#225'm:'
      end
      object TalLabel9: TTalLabel
        Left = 5
        Top = 46
        Width = 33
        Height = 13
        Caption = 'ENAR:'
      end
      object TalLabel11: TTalLabel
        Left = 285
        Top = 46
        Width = 42
        Height = 13
        Caption = 'Id.ENAR'
      end
      object TalLabel12: TTalLabel
        Left = 5
        Top = 71
        Width = 23
        Height = 13
        Caption = 'N'#233'v:'
      end
      object edtApaKplsz: TTalDBEdit
        Left = 85
        Top = 17
        Width = 65
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 0
        OnExit = edtKLSZExit
        DataField = 'APAKPLSZ'
        DataSource = sdBika
      end
      object edtApaFsz: TTalDBEdit
        Left = 334
        Top = 17
        Width = 127
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 1
        OnExit = edtKLSZExit
        DataField = 'APAFSZ'
        DataSource = sdBika
      end
      object edtApaIEnar: TTalDBEdit
        Left = 334
        Top = 41
        Width = 127
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 3
        OnExit = edtKLSZExit
        DataField = 'APAIENAR'
        DataSource = sdBika
      end
      object edtApaEnar: TTalDBEdit
        Left = 85
        Top = 41
        Width = 127
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 2
        OnExit = edtKLSZExit
        DataField = 'APAENAR'
        DataSource = sdBika
      end
      object edtApaNev: TTalDBEdit
        Left = 85
        Top = 66
        Width = 225
        Height = 22
        Alignment = taLeftJustify
        Required = False
        RequiredColor = clInfoBk
        ReadOnlyColor = clActiveBorder
        Enabled = True
        SpinVisible = False
        ButtonVisible = False
        TabOrder = 4
        DataField = 'APANEV'
        DataSource = sdBika
      end
    end
    object edtAnaAna: TTalDBEdit
      Left = 92
      Top = 293
      Width = 95
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 7
      OnExit = edtKLSZExit
      DataField = 'ANAN'
      DataSource = sdBika
    end
    object edtAnaAnaNev: TTalDBEdit
      Left = 231
      Top = 293
      Width = 237
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 8
      OnExit = edtKLSZExit
      DataField = 'ANANNEV'
      DataSource = sdBika
    end
    object edtAnyApa: TTalDBEdit
      Left = 92
      Top = 317
      Width = 95
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 9
      OnExit = edtKLSZExit
      DataField = 'ANAP'
      DataSource = sdBika
    end
    object edtAnyApaNev: TTalDBEdit
      Left = 231
      Top = 317
      Width = 237
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 10
      OnExit = edtKLSZExit
      DataField = 'ANAPNEV'
      DataSource = sdBika
    end
    object edtApaAny: TTalDBEdit
      Left = 92
      Top = 341
      Width = 96
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 11
      OnExit = edtKLSZExit
      DataField = 'APAN'
      DataSource = sdBika
    end
    object edtApaAnyNev: TTalDBEdit
      Left = 231
      Top = 341
      Width = 237
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 12
      OnExit = edtKLSZExit
      DataField = 'APANNEV'
      DataSource = sdBika
    end
    object edtApaApa: TTalDBEdit
      Left = 92
      Top = 365
      Width = 95
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 13
      OnExit = edtKLSZExit
      DataField = 'APAP'
      DataSource = sdBika
    end
    object edtApaApaNev: TTalDBEdit
      Left = 231
      Top = 365
      Width = 237
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 14
      OnExit = edtKLSZExit
      DataField = 'APAPNEV'
      DataSource = sdBika
    end
    object LucOrsz: TTalDBLookupComboBox
      Left = 319
      Top = 394
      Width = 151
      Height = 21
      DataField = 'SZORSZ'
      DataSource = sdBika
      KeyField = 'KOD1'
      ListField = 'NEV'
      ListSource = dtsOrsz
      TabOrder = 15
    end
    object lucFajta: TTalDBLookupComboBox
      Left = 92
      Top = 444
      Width = 141
      Height = 21
      DataField = 'FKOD'
      DataSource = sdBika
      KeyField = 'FKOD'
      ListField = 'FNEV'
      ListSource = dtsInfFajta
      TabOrder = 19
    end
    object LucVer1: TTalDBLookupComboBox
      Left = 92
      Top = 468
      Width = 141
      Height = 21
      DataField = 'VER1'
      DataSource = sdBika
      KeyField = 'FKOD'
      ListField = 'FNEV'
      ListSource = dtsVer1
      TabOrder = 20
    end
    object edtVsz1: TTalDBEdit
      Left = 232
      Top = 467
      Width = 39
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueMin = '0,00'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 21
      OnExit = edtKLSZExit
      DataField = 'VSZ1'
      DataSource = sdBika
    end
    object lucVer4: TTalDBLookupComboBox
      Left = 317
      Top = 468
      Width = 141
      Height = 21
      DataField = 'VER4'
      DataSource = sdBika
      KeyField = 'FKOD'
      ListField = 'FNEV'
      ListSource = dtsVer4
      TabOrder = 26
    end
    object edtVsz4: TTalDBEdit
      Left = 457
      Top = 467
      Width = 39
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueMin = '0,00'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 27
      OnExit = edtKLSZExit
      DataField = 'VSZ4'
      DataSource = sdBika
    end
    object lucVer3: TTalDBLookupComboBox
      Left = 92
      Top = 514
      Width = 141
      Height = 21
      DataField = 'VER3'
      DataSource = sdBika
      KeyField = 'FKOD'
      ListField = 'FNEV'
      ListSource = dtsVer3
      TabOrder = 24
    end
    object edtVsz3: TTalDBEdit
      Left = 232
      Top = 513
      Width = 39
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueMin = '0,00'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 25
      OnExit = edtKLSZExit
      DataField = 'VSZ3'
      DataSource = sdBika
    end
    object lucVer5: TTalDBLookupComboBox
      Left = 317
      Top = 492
      Width = 141
      Height = 21
      DataField = 'VER5'
      DataSource = sdBika
      KeyField = 'FKOD'
      ListField = 'FNEV'
      ListSource = dtsVer5
      TabOrder = 28
    end
    object edtVsz5: TTalDBEdit
      Left = 457
      Top = 491
      Width = 39
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueMin = '0,00'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 29
      OnExit = edtKLSZExit
      DataField = 'VSZ5'
      DataSource = sdBika
    end
    object lucKonstr: TTalDBLookupComboBox
      Left = 319
      Top = 420
      Width = 151
      Height = 21
      DataField = 'KKOD'
      DataSource = sdBika
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtsKonstr
      TabOrder = 18
    end
    object edtTkv: TTalDBEdit
      Left = 103
      Top = 539
      Width = 29
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 30
      OnExit = edtKLSZExit
      DataField = 'TKV'
      DataSource = sdBika
    end
    object edtSzarv: TTalDBEdit
      Left = 232
      Top = 539
      Width = 29
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 31
      OnExit = edtKLSZExit
      DataField = 'SZARV'
      DataSource = sdBika
    end
    object edtTgy: TTalDBEdit
      Left = 103
      Top = 563
      Width = 50
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 33
      OnExit = edtKLSZExit
      DataField = 'TGY'
      DataSource = sdBika
    end
    object edt205: TTalDBEdit
      Left = 232
      Top = 563
      Width = 50
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 34
      OnExit = edtKLSZExit
      DataField = 'TOM205'
      DataSource = sdBika
    end
    object edtSv: TTalDBEdit
      Left = 388
      Top = 539
      Width = 53
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 32
      OnExit = edtKLSZExit
      DataField = 'SV'
      DataSource = sdBika
    end
    object edtSTV: TTalDBEdit
      Left = 388
      Top = 563
      Width = 53
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 35
      OnExit = edtKLSZExit
      DataField = 'TGYSTV'
      DataSource = sdBika
    end
    object lucVer2: TTalDBLookupComboBox
      Left = 91
      Top = 491
      Width = 141
      Height = 21
      DataField = 'VER2'
      DataSource = sdBika
      KeyField = 'FKOD'
      ListField = 'FNEV'
      ListSource = dtsVer2
      TabOrder = 22
    end
    object edtVsz2: TTalDBEdit
      Left = 231
      Top = 490
      Width = 39
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueMin = '0,00'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 23
      OnExit = edtKLSZExit
      DataField = 'VSZ2'
      DataSource = sdBika
    end
  end
  inherited grdVal: TTalDBGrid
    Top = 33
    Width = 486
    Height = 665
    Selected.Strings = (
      'KLSZ'#9'10'#9'Bika KLSZ'#9'T'
      'NEV'#9'40'#9'N'#233'v'#9'F'#9
      'KONS_KOD'#9'6'#9'Konstr'#9'F'#9
      'APA_AZON'#9'16'#9'Apa azonos'#237't'#243#9'F'#9
      'APANEV'#9'40'#9'Apa n'#233'v'#9'F'#9
      'APA_KONS'#9'10'#9'APA_KONS'#9'F'#9
      'APAINAGYAPA'#9'16'#9'Apai nagyapa'#9'F'#9
      'APAINAGYANYA'#9'16'#9'Apai nagyanya'#9'F'#9
      'ANYA_AZON'#9'16'#9'Anya azonos'#237't'#243#9'F'#9
      'ID'#9'16'#9'ID'#9'F'#9)
    OnRowChanged = grdValRowChanged
    DataSource = dtsval
    OnKeyDown = grdValKeyDown
    SearchEdit = edtKeres
  end
  object TalPanel1: TTalPanel [3]
    Left = 0
    Top = 0
    Width = 996
    Height = 33
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 18
      Top = 10
      Width = 41
      Height = 13
      Caption = 'Keres'#233's:'
    end
    object edtKeres: TTalSearch
      Left = 72
      Top = 6
      Width = 177
      Height = 21
      TabStop = False
      DataSource = dtsval
      CaseSensitivity = wwcsCaseInsensitive
      TabOrder = 0
    end
  end
  inherited ActionList1: TActionList
    inherited actOK: TAction
      OnExecute = actOKExecute
    end
    inherited actMegsem: TAction
      OnExecute = actMegsemExecute
    end
  end
  object sdsBika: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT '#13#10'B.KPLSZ,'#13#10'B.ENAR,'#13#10'B.FSZ,'#13#10'B.IENAR,'#13#10'B.NEV,'#13#10'B.AENAR,'#13#10 +
      'B.AELL,'#13#10'B.IAENAR,'#13#10'B.AFSZ,'#13#10'B.RANYA,'#13#10'B.ANYANEV,'#13#10'B.APAKPLSZ,'#13#10 +
      'B.APAENAR,'#13#10'B.APAFSZ,'#13#10'B.APAIENAR,'#13#10'B.APANEV,'#13#10'B.ANAN,'#13#10'B.ANANNE' +
      'V,'#13#10'B.ANAP,'#13#10'B.ANAPNEV,'#13#10'B.APAN,'#13#10'B.APANNEV,'#13#10'B.APAP,'#13#10'B.APAPNEV' +
      ','#13#10'B.SZULDAT,'#13#10'B.FKOD,'#13#10'B.VER1,'#13#10'B.VSZ1,'#13#10'B.VER2,'#13#10'B.VSZ2,'#13#10'B.VE' +
      'R3,'#13#10'B.VSZ3,'#13#10'B.VER4,'#13#10'B.VSZ4,'#13#10'B.VER5,'#13#10'B.VSZ5,'#13#10'B.KKOD,'#13#10'B.SZK' +
      'OD,'#13#10'B.SZARV,'#13#10'B.SZORSZ,'#13#10'B.TKV,'#13#10'B.TGY,'#13#10'B.TOM205,'#13#10'B.SV,'#13#10'B.TG' +
      'YSTV,'#13#10'B.UTMOD_DAT,'#13#10'B.UTMOD_KOD'#13#10'FROM APA B '#13#10'where b.KPLSZ = :' +
      'KPLSZ'#13#10'ORDER BY B.KPLSZ'#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10
    DataSet.Parameters = <
      item
        Name = 'KPLSZ'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT '#13#10'B.KPLSZ,'#13#10'B.ENAR,'#13#10'B.FSZ,'#13#10'B.IENAR,'#13#10'B.NEV,'#13#10'B.AENAR,'#13#10 +
      'B.AELL,'#13#10'B.IAENAR,'#13#10'B.AFSZ,'#13#10'B.RANYA,'#13#10'B.ANYANEV,'#13#10'B.APAKPLSZ,'#13#10 +
      'B.APAENAR,'#13#10'B.APAFSZ,'#13#10'B.APAIENAR,'#13#10'B.APANEV,'#13#10'B.ANAN,'#13#10'B.ANANNE' +
      'V,'#13#10'B.ANAP,'#13#10'B.ANAPNEV,'#13#10'B.APAN,'#13#10'B.APANNEV,'#13#10'B.APAP,'#13#10'B.APAPNEV' +
      ','#13#10'B.SZULDAT,'#13#10'B.FKOD,'#13#10'B.VER1,'#13#10'B.VSZ1,'#13#10'B.VER2,'#13#10'B.VSZ2,'#13#10'B.VE' +
      'R3,'#13#10'B.VSZ3,'#13#10'B.VER4,'#13#10'B.VSZ4,'#13#10'B.VER5,'#13#10'B.VSZ5,'#13#10'B.KKOD,'#13#10'B.SZK' +
      'OD,'#13#10'B.SZARV,'#13#10'B.SZORSZ,'#13#10'B.TKV,'#13#10'B.TGY,'#13#10'B.TOM205,'#13#10'B.SV,'#13#10'B.TG' +
      'YSTV,'#13#10'B.UTMOD_DAT,'#13#10'B.UTMOD_KOD'#13#10'FROM APA B '#13#10'where b.KPLSZ = :' +
      'KPLSZ'#13#10'ORDER BY B.KPLSZ'#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10
    Provider.DataSet.Parameters = <
      item
        Name = 'KPLSZ'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    PacketRecords = 500
    Params = <>
    Left = 216
    Top = 60
    object sdsBikaKPLSZ: TWideStringField
      FieldName = 'KPLSZ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 5
    end
    object sdsBikaENAR: TWideStringField
      FieldName = 'ENAR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBikaFSZ: TWideStringField
      FieldName = 'FSZ'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaIENAR: TWideStringField
      FieldName = 'IENAR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaNEV: TWideStringField
      FieldName = 'NEV'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsBikaAENAR: TWideStringField
      FieldName = 'AENAR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBikaAELL: TWideStringField
      FieldName = 'AELL'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object sdsBikaIAENAR: TWideStringField
      FieldName = 'IAENAR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaAFSZ: TWideStringField
      FieldName = 'AFSZ'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaRANYA: TWideStringField
      FieldName = 'RANYA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaANYANEV: TWideStringField
      FieldName = 'ANYANEV'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsBikaAPAKPLSZ: TWideStringField
      FieldName = 'APAKPLSZ'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sdsBikaAPAENAR: TWideStringField
      FieldName = 'APAENAR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBikaAPAFSZ: TWideStringField
      FieldName = 'APAFSZ'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaAPAIENAR: TWideStringField
      FieldName = 'APAIENAR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaAPANEV: TWideStringField
      FieldName = 'APANEV'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsBikaANAN: TWideStringField
      FieldName = 'ANAN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaANANNEV: TWideStringField
      FieldName = 'ANANNEV'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsBikaANAP: TWideStringField
      FieldName = 'ANAP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaANAPNEV: TWideStringField
      FieldName = 'ANAPNEV'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsBikaAPAN: TWideStringField
      FieldName = 'APAN'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaAPANNEV: TWideStringField
      FieldName = 'APANNEV'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsBikaAPAP: TWideStringField
      FieldName = 'APAP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sdsBikaAPAPNEV: TWideStringField
      FieldName = 'APAPNEV'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsBikaSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBikaFKOD: TWideStringField
      DisplayLabel = 'Fajtak'#243'd'
      FieldName = 'FKOD'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBikaVER1: TWideStringField
      FieldName = 'VER1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBikaVER2: TWideStringField
      FieldName = 'VER2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBikaVER3: TWideStringField
      FieldName = 'VER3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBikaVER4: TWideStringField
      FieldName = 'VER4'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBikaVER5: TWideStringField
      FieldName = 'VER5'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sdsBikaKKOD: TWideStringField
      FieldName = 'KKOD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsBikaSZKOD: TWideStringField
      FieldName = 'SZKOD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBikaSZARV: TWideStringField
      FieldName = 'SZARV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBikaSZORSZ: TWideStringField
      FieldName = 'SZORSZ'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsBikaTKV: TWideStringField
      FieldName = 'TKV'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sdsBikaTGY: TIntegerField
      FieldName = 'TGY'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBikaTOM205: TIntegerField
      FieldName = 'TOM205'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBikaSV: TIntegerField
      FieldName = 'SV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBikaTGYSTV: TIntegerField
      FieldName = 'TGYSTV'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBikaUTMOD_DAT: TDateTimeField
      FieldName = 'UTMOD_DAT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsBikaUTMOD_KOD: TWideStringField
      FieldName = 'UTMOD_KOD'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sdsBikaVSZ1: TBCDField
      FieldName = 'VSZ1'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object sdsBikaVSZ2: TBCDField
      FieldName = 'VSZ2'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object sdsBikaVSZ3: TBCDField
      FieldName = 'VSZ3'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object sdsBikaVSZ4: TBCDField
      FieldName = 'VSZ4'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
    object sdsBikaVSZ5: TBCDField
      FieldName = 'VSZ5'
      ProviderFlags = [pfInUpdate]
      Precision = 6
      Size = 2
    end
  end
  object sdBika: TDataSource
    DataSet = sdsBika
    Left = 256
    Top = 60
  end
  object qryInfSzin: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  kk.KOD, '
      'kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD = '#39'SZIN'#39
      '')
    Left = 64
    Top = 235
    object StringField19: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField20: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsInfSzin: TDataSource
    DataSet = qryInfSzin
    Left = 136
    Top = 235
  end
  object qryInfFajta: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FNEV'
      '  FROM FAJTA')
    Left = 64
    Top = 283
    object qryInfFajtaFKOD: TSmallintField
      FieldName = 'FKOD'
    end
    object qryInfFajtaFNEV: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsInfFajta: TDataSource
    DataSet = qryInfFajta
    Left = 136
    Top = 283
  end
  object qryKonstr: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'select  kk.KOD, '
      'kk.KOD || '#39' - '#39' || kk.KOD_NEV as KOD_NEV'
      'from kodok kk'
      'where kk.KODTIPUSOK_TIPUSKOD = '#39'KONSTR'#39
      '')
    Left = 64
    Top = 187
    object StringField3: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object StringField4: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsKonstr: TDataSource
    DataSet = qryKonstr
    Left = 136
    Top = 187
  end
  object qryVer1: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FNEV'
      '  FROM FAJTA')
    Left = 64
    Top = 345
    object qryVer1FKOD: TSmallintField
      FieldName = 'FKOD'
    end
    object qryVer1FNEV: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object qryVer2: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FNEV'
      '  FROM FAJTA')
    Left = 64
    Top = 391
    object SmallintField1: TSmallintField
      FieldName = 'FKOD'
    end
    object StringField5: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object qryVer3: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FNEV'
      '  FROM FAJTA')
    Left = 64
    Top = 437
    object SmallintField2: TSmallintField
      FieldName = 'FKOD'
    end
    object StringField6: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object qryVer4: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FNEV'
      '  FROM FAJTA')
    Left = 64
    Top = 485
    object SmallintField3: TSmallintField
      FieldName = 'FKOD'
    end
    object StringField7: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsVer4: TDataSource
    DataSet = qryVer4
    Left = 138
    Top = 485
  end
  object dtsVer3: TDataSource
    DataSet = qryVer3
    Left = 138
    Top = 437
  end
  object dtsVer2: TDataSource
    DataSet = qryVer2
    Left = 138
    Top = 391
  end
  object dtsVer1: TDataSource
    DataSet = qryVer1
    Left = 138
    Top = 345
  end
  object qryOrsz: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      ' SELECT '
      '  ORSZAG.KOD1,'
      '  ORSZAG.KOD2,'
      '  ORSZAG.NEV  '
      '  FROM ORSZAG')
    Left = 64
    Top = 573
    object qryOrszKOD1: TWideStringField
      FieldName = 'KOD1'
      FixedChar = True
      Size = 3
    end
    object qryOrszKOD2: TWideStringField
      FieldName = 'KOD2'
      FixedChar = True
      Size = 3
    end
    object qryOrszNEV: TWideStringField
      FieldName = 'NEV'
      FixedChar = True
      Size = 30
    end
  end
  object dtsOrsz: TDataSource
    DataSet = qryOrsz
    Left = 138
    Top = 573
  end
  object sdsVal: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT '#13#10'B.KPLSZ,'#13#10'B.ENAR,'#13#10'B.FSZ,'#13#10'B.NEV '#13#10'FROM APA B'#13#10'ORDER BY' +
      ' B.KPLSZ'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT '#13#10'B.KPLSZ,'#13#10'B.ENAR,'#13#10'B.FSZ,'#13#10'B.NEV '#13#10'FROM APA B'#13#10'ORDER BY' +
      ' B.KPLSZ'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Provider.UpdateMode = upWhereKeyOnly
    PacketRecords = 500
    Params = <>
    Left = 96
    Top = 60
    object sdsValKPLSZ: TWideStringField
      FieldName = 'KPLSZ'
      ProviderFlags = []
      Size = 5
    end
    object sdsValENAR: TWideStringField
      FieldName = 'ENAR'
      ProviderFlags = []
      Size = 10
    end
    object sdsValFSZ: TWideStringField
      FieldName = 'FSZ'
      ProviderFlags = []
      Size = 15
    end
    object sdsValNEV: TWideStringField
      FieldName = 'NEV'
      ProviderFlags = []
      Size = 40
    end
  end
  object dtsval: TDataSource
    DataSet = sdsVal
    Left = 136
    Top = 60
  end
  object qryVer5: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  FAJTA.FNEV'
      '  FROM FAJTA')
    Left = 64
    Top = 529
    object SmallintField4: TSmallintField
      FieldName = 'FKOD'
    end
    object WideStringField1: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsVer5: TDataSource
    DataSet = qryVer5
    Left = 138
    Top = 529
  end
end
