object frmHSzIMod: TfrmHSzIMod
  Left = 388
  Top = 232
  Width = 1286
  Height = 672
  Caption = 'Hivatalos Sz'#225'rmaz'#225'si Igazol'#225's m'#243'dos'#237't'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbListanev: TLabel
    Left = 148
    Top = 48
    Width = 205
    Height = 18
    Alignment = taCenter
    AutoSize = False
    Caption = 'Hivatalos sz'#225'rmaz'#225'si igazol'#225's'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object btnRogzit: TTalBitBtn
    Left = 888
    Top = 464
    Width = 120
    Height = 25
    Caption = 'R'#246'gz'#237't'
    TabOrder = 1
    Visible = False
    OnClick = btnRogzitClick
  end
  object btnExit: TTalBitBtn
    Left = 1024
    Top = 464
    Width = 120
    Height = 25
    Caption = 'Kil'#233'p /M'#233'gsem/'
    TabOrder = 2
    OnClick = btnExitClick
  end
  object PageControl1: TPageControl
    Left = 384
    Top = 16
    Width = 865
    Height = 429
    Hint = 'Egyed'
    ActivePage = TabSheet6
    ParentShowHint = False
    ShowHint = True
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Egyed'
      object GroupBox01: TGroupBox
        Left = 32
        Top = 32
        Width = 737
        Height = 353
        Enabled = False
        TabOrder = 0
        object TalLabel1: TTalLabel
          Left = 24
          Top = 106
          Width = 37
          Height = 13
          Caption = 'KPLSZ:'
        end
        object TalLabel2: TTalLabel
          Left = 155
          Top = 106
          Width = 33
          Height = 13
          Caption = 'ENAR:'
        end
        object TalLabel3: TTalLabel
          Left = 288
          Top = 106
          Width = 41
          Height = 13
          Caption = 'F'#252'lsz'#225'm:'
        end
        object TalLabel4: TTalLabel
          Left = 492
          Top = 106
          Width = 23
          Height = 13
          Caption = 'N'#233'v:'
        end
        object TalLabel5: TTalLabel
          Left = 24
          Top = 158
          Width = 40
          Height = 13
          Caption = 'Sz'#252'l. id.:'
        end
        object TalLabel6: TTalLabel
          Left = 158
          Top = 158
          Width = 22
          Height = 13
          Caption = 'Tkv:'
        end
        object TalLabel7: TTalLabel
          Left = 272
          Top = 158
          Width = 26
          Height = 13
          Caption = 'Fajta:'
        end
        object TalLabel8: TTalLabel
          Left = 540
          Top = 158
          Width = 8
          Height = 13
          Caption = '%'
        end
        object TalLabel9: TTalLabel
          Left = 562
          Top = 158
          Width = 21
          Height = 13
          Caption = 'Ivar:'
        end
        object TalLabel10: TTalLabel
          Left = 578
          Top = 203
          Width = 28
          Height = 13
          Caption = 'SV %:'
        end
        object TalLabel11: TTalLabel
          Left = 24
          Top = 203
          Width = 61
          Height = 13
          Caption = #201'letnapi tgy.:'
        end
        object TalLabel12: TTalLabel
          Left = 392
          Top = 203
          Width = 22
          Height = 13
          Caption = 'KMI:'
        end
        object TalLabel14: TTalLabel
          Left = 176
          Top = 203
          Width = 69
          Height = 13
          Caption = 'STV alatti tgy.:'
        end
        object TalLabel15: TTalLabel
          Left = 504
          Top = 203
          Width = 8
          Height = 13
          Caption = '%'
        end
        object TalLabel16: TTalLabel
          Left = 24
          Top = 280
          Width = 30
          Height = 13
          Caption = 'T'#237'pus:'
        end
        object TalLabel17: TTalLabel
          Left = 136
          Top = 280
          Width = 47
          Height = 13
          Caption = 'Izmolts'#225'g:'
        end
        object TalLabel18: TTalLabel
          Left = 272
          Top = 280
          Width = 66
          Height = 13
          Caption = 'L'#225'bszerkezet:'
        end
        object TalLabel19: TTalLabel
          Left = 532
          Top = 280
          Width = 85
          Height = 13
          Caption = #201'rt'#233'kel'#233's d'#225'tuma:'
        end
        object TalLabel163: TTalLabel
          Left = 25
          Top = 20
          Width = 202
          Height = 13
          Caption = 'A sz'#225'rmaz'#225'si igazol'#225's nyilv'#225'ntart'#225'si sz'#225'ma:'
        end
        object TalLabel164: TTalLabel
          Left = 303
          Top = 20
          Width = 5
          Height = 13
          Caption = '/'
        end
        object TalLabel165: TTalLabel
          Left = 481
          Top = 20
          Width = 60
          Height = 13
          Caption = 'Iktat'#243'sz'#225'ma:'
        end
        object TalLabel157: TTalLabel
          Left = 25
          Top = 60
          Width = 77
          Height = 13
          Caption = 'Ki'#225'll'#237't'#225's d'#225'tuma:'
        end
        object TalLabel161: TTalLabel
          Left = 449
          Top = 60
          Width = 90
          Height = 13
          Caption = 'Hiteles'#237't'#233's d'#225'tuma:'
        end
        object TalLabel162: TTalLabel
          Left = 424
          Top = 280
          Width = 27
          Height = 13
          Caption = 'T'#337'gy:'
        end
        object TalLabel168: TTalLabel
          Left = 24
          Top = 320
          Width = 25
          Height = 13
          Caption = 'NET:'
        end
        object TalLabel178: TTalLabel
          Left = 24
          Top = 251
          Width = 68
          Height = 13
          Caption = 'K'#252'llemi b'#237'r'#225'lat:'
        end
        object TalDBEdit1: TTalDBEdit
          Left = 72
          Top = 102
          Width = 60
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit1'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 0
          DataField = 'KPLSZ'
          DataSource = dsHivSzarmIg
        end
        object TalDBEdit2: TTalDBEdit
          Left = 200
          Top = 102
          Width = 75
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit2'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 1
          DataField = 'ENAR'
          DataSource = dsHivSzarmIg
        end
        object TalDBEdit3: TTalDBEdit
          Left = 344
          Top = 102
          Width = 130
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit3'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 2
          DataField = 'FULSZAM'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit4: TTalDBEdit
          Left = 532
          Top = 102
          Width = 181
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit4'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 3
          DataField = 'NEV'
          DataSource = dsHivSzarmIg
        end
        object TalDBEdit5: TTalDBEdit
          Left = 72
          Top = 154
          Width = 72
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etDate
          Text = 'TalD.  .  '
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = 10
          TabOrder = 4
          DataField = 'SZULDAT'
          DataSource = dsHivSzarmIg
        end
        object TalDBEdit6: TTalDBEdit
          Left = 200
          Top = 154
          Width = 60
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit6'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 5
          DataField = 'TKV'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit10: TTalDBEdit
          Left = 100
          Top = 199
          Width = 57
          Height = 22
          Alignment = taRightJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etInteger
          Text = 'TalDBEdit10'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 6
          DataField = 'ELETNAPI_TGY'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit11: TTalDBEdit
          Left = 272
          Top = 199
          Width = 81
          Height = 22
          Alignment = taRightJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etInteger
          Text = 'TalDBEdit11'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 7
          DataField = 'STV_TGY'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit12: TTalDBEdit
          Left = 424
          Top = 199
          Width = 73
          Height = 22
          Alignment = taRightJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etFloat
          Text = 'TalDBEdit12'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 8
          DataField = 'KMI'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit13: TTalDBEdit
          Left = 625
          Top = 199
          Width = 57
          Height = 22
          Alignment = taRightJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etInteger
          Text = 'TalDBEdit13'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 9
          DataField = 'SV'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit14: TTalDBEdit
          Left = 64
          Top = 276
          Width = 57
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit14'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 10
          DataField = 'TIPUS'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit15: TTalDBEdit
          Left = 192
          Top = 276
          Width = 65
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit15'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 11
          DataField = 'IZMOLTSAG'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit16: TTalDBEdit
          Left = 344
          Top = 276
          Width = 65
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit16'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 12
          DataField = 'LABSZERKEZET'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit17: TTalDBEdit
          Left = 624
          Top = 276
          Width = 81
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etDate
          Text = 'TalD.  .  '
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = 10
          TabOrder = 13
          DataField = 'ERTEKELES_DATUMA'
          DataSource = dsHivSzarmLap
        end
        object cbEgyedIvarNev: TTalDBLookupComboBox
          Left = 596
          Top = 154
          Width = 85
          Height = 21
          DataField = 'IVAR'
          DataSource = dsHivSzarmLap
          KeyField = 'KOD'
          ListField = 'KOD_NEV'
          ListSource = dtsIvar
          TabOrder = 14
        end
        object edtSOR: TTalDBEdit
          Left = 234
          Top = 17
          Width = 63
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = '0'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          ParentCtl3D = False
          TabOrder = 15
          DataField = 'SOR'
          DataSource = dsHivSzarmIg
        end
        object edtPER: TTalDBEdit
          Left = 322
          Top = 17
          Width = 47
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = '0'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 16
          DataField = 'PER'
          DataSource = dsHivSzarmIg
        end
        object TalDBEdit50: TTalDBEdit
          Left = 554
          Top = 17
          Width = 130
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'edtIktatoszam'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 17
          DataField = 'IKTATOSZAM'
          DataSource = dsHivSzarmLap
        end
        object HitDatum: TTalDBEdit
          Left = 554
          Top = 58
          Width = 72
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etDate
          Text = 'TalD.  .  '
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = 10
          TabOrder = 18
          DataField = 'HITDAT'
          DataSource = dsHivSzarmIg
        end
        object KiallDatum: TTalDBEdit
          Left = 120
          Top = 58
          Width = 72
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etDate
          Text = 'TalD.  .  '
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = 10
          TabOrder = 19
          DataField = 'KIDAT'
          DataSource = dsHivSzarmIg
        end
        object cbEgyedFajtaNev: TTalDBLookupComboBox
          Left = 304
          Top = 154
          Width = 169
          Height = 21
          DataField = 'FAJTAKOD'
          DataSource = dsHivSzarmLap
          KeyField = 'FKOD'
          ListField = 'FNEV'
          ListSource = dtsEfajta
          TabOrder = 20
        end
        object TalDBEdit23: TTalDBEdit
          Left = 456
          Top = 276
          Width = 65
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit16'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 21
          DataField = 'E_TOGY'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit128: TTalDBEdit
          Left = 64
          Top = 314
          Width = 57
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etDate
          Text = 'TalD.  .  '
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = 10
          TabOrder = 22
          DataField = 'NET_PONT'
          DataSource = dsHivSzarmIg
        end
        object FSZEdit: TEdit
          Left = 480
          Top = 152
          Width = 57
          Height = 21
          TabOrder = 23
          Text = 'FSZEdit'
          OnChange = FSZEditChange
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Apa'
      ImageIndex = 1
      object GroupBox02: TTalGroupBox
        Left = 32
        Top = 48
        Width = 700
        Height = 337
        Enabled = False
        TabOrder = 0
        object TalLabel13: TTalLabel
          Left = 24
          Top = 34
          Width = 37
          Height = 13
          Caption = 'KPLSZ:'
        end
        object TalLabel20: TTalLabel
          Left = 520
          Top = 34
          Width = 33
          Height = 13
          Caption = 'ENAR:'
        end
        object TalLabel21: TTalLabel
          Left = 150
          Top = 34
          Width = 23
          Height = 13
          Caption = 'N'#233'v:'
        end
        object TalLabel22: TTalLabel
          Left = 24
          Top = 70
          Width = 41
          Height = 13
          Caption = 'F'#252'lsz'#225'm:'
        end
        object TalLabel23: TTalLabel
          Left = 224
          Top = 70
          Width = 70
          Height = 13
          Caption = 'Sz'#252'let'#233'si ideje:'
        end
        object TalLabel24: TTalLabel
          Left = 400
          Top = 70
          Width = 26
          Height = 13
          Caption = 'Fajta:'
        end
        object TalLabel25: TTalLabel
          Left = 670
          Top = 70
          Width = 8
          Height = 13
          Caption = '%'
        end
        object TalLabel26: TTalLabel
          Left = 24
          Top = 107
          Width = 28
          Height = 13
          Caption = 'SV %:'
        end
        object TalLabel27: TTalLabel
          Left = 240
          Top = 107
          Width = 61
          Height = 13
          Caption = #201'letnapi tgy.:'
        end
        object TalLabel28: TTalLabel
          Left = 468
          Top = 107
          Width = 69
          Height = 13
          Caption = 'STV alatti tgy.:'
        end
        object TalLabel29: TTalLabel
          Left = 24
          Top = 256
          Width = 30
          Height = 13
          Caption = 'T'#237'pus:'
        end
        object TalLabel30: TTalLabel
          Left = 153
          Top = 256
          Width = 47
          Height = 13
          Caption = 'Izmolts'#225'g:'
        end
        object TalLabel31: TTalLabel
          Left = 312
          Top = 176
          Width = 66
          Height = 13
          Caption = 'L'#225'bszerkezet:'
        end
        object TalLabel170: TTalLabel
          Left = 24
          Top = 304
          Width = 25
          Height = 13
          Caption = 'NET:'
        end
        object TalLabel32: TTalLabel
          Left = 504
          Top = 256
          Width = 27
          Height = 13
          Caption = 'T'#337'gy:'
        end
        object TalLabel171: TTalLabel
          Left = 24
          Top = 224
          Width = 168
          Height = 13
          Caption = 'K'#252'llemi tulajdons'#225'g teny'#233'sz'#233'rt'#233'kek:'
        end
        object TalLabel172: TTalLabel
          Left = 24
          Top = 144
          Width = 68
          Height = 13
          Caption = 'K'#252'llemi b'#237'r'#225'lat:'
        end
        object TalLabel174: TTalLabel
          Left = 24
          Top = 176
          Width = 30
          Height = 13
          Caption = 'T'#237'pus:'
        end
        object TalLabel175: TTalLabel
          Left = 153
          Top = 176
          Width = 47
          Height = 13
          Caption = 'Izmolts'#225'g:'
        end
        object TalLabel176: TTalLabel
          Left = 312
          Top = 256
          Width = 66
          Height = 13
          Caption = 'L'#225'bszerkezet:'
        end
        object TalLabel177: TTalLabel
          Left = 504
          Top = 176
          Width = 85
          Height = 13
          Caption = #201'rt'#233'kel'#233's d'#225'tuma:'
        end
        object TalDBEdit18: TTalDBEdit
          Left = 72
          Top = 30
          Width = 60
          Height = 22
          Alignment = taRightJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etFloat
          Text = 'TalDBEdit18'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 0
          DataField = 'APA_KPLSZ'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit19: TTalDBEdit
          Left = 176
          Top = 30
          Width = 329
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit19'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 1
          DataField = 'APA_NEV'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit20: TTalDBEdit
          Left = 560
          Top = 30
          Width = 105
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit20'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 2
          DataField = 'APA_ENAR'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit21: TTalDBEdit
          Left = 72
          Top = 66
          Width = 130
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit21'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 3
          DataField = 'APA_FULSZAM'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit22: TTalDBEdit
          Left = 312
          Top = 66
          Width = 70
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etDate
          Text = 'TalD.  .  '
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = 10
          TabOrder = 4
          DataField = 'APA_SZULDAT'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit25: TTalDBEdit
          Left = 72
          Top = 103
          Width = 57
          Height = 22
          Alignment = taRightJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etInteger
          Text = 'TalDBEdit25'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 5
          DataField = 'APA_SV'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit26: TTalDBEdit
          Left = 320
          Top = 103
          Width = 57
          Height = 22
          Alignment = taRightJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etInteger
          Text = 'TalDBEdit26'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 6
          DataField = 'APA_ETGY'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit27: TTalDBEdit
          Left = 552
          Top = 103
          Width = 81
          Height = 22
          Alignment = taRightJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etInteger
          Text = 'TalDBEdit27'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 7
          DataField = 'APA_STV_TGY'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit28: TTalDBEdit
          Left = 72
          Top = 252
          Width = 60
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit28'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 8
          DataField = 'APA_TE_TIPUS'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit29: TTalDBEdit
          Left = 208
          Top = 252
          Width = 75
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit29'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 9
          DataField = 'APA_TE_IZMOLTSAG'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit30: TTalDBEdit
          Left = 392
          Top = 252
          Width = 89
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit30'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 10
          DataField = 'APA_TE_LABSZERKEZET'
          DataSource = dsHivSzarmLap
        end
        object cbApaFajtaNev: TTalDBLookupComboBox
          Left = 434
          Top = 67
          Width = 172
          Height = 21
          DataField = 'APA_FAJTAKOD'
          DataSource = dsHivSzarmLap
          KeyField = 'FKOD'
          ListField = 'FNEV'
          ListSource = dtsApaFajta
          TabOrder = 11
        end
        object TalDBEdit157: TTalDBEdit
          Left = 72
          Top = 300
          Width = 60
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit28'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 12
          DataField = 'APA_NET_PONT'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit31: TTalDBEdit
          Left = 552
          Top = 252
          Width = 89
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit30'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 13
          DataField = 'APA_TE_TOGY'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit158: TTalDBEdit
          Left = 72
          Top = 172
          Width = 60
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit28'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 14
          DataField = 'APA_TIPUS'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit159: TTalDBEdit
          Left = 208
          Top = 172
          Width = 75
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit29'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 15
          DataField = 'APA_IZMOLTSAG'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit160: TTalDBEdit
          Left = 392
          Top = 172
          Width = 89
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit30'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 16
          DataField = 'APA_LABSZERKEZET'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit161: TTalDBEdit
          Left = 600
          Top = 172
          Width = 89
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit30'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 17
          DataField = 'APA_ERT_DAT'
          DataSource = dsHivSzarmLap
        end
        object AFSZEdit: TEdit
          Left = 608
          Top = 67
          Width = 57
          Height = 21
          TabOrder = 18
          OnChange = FSZEditChange
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Anya'
      ImageIndex = 2
      object TalLabel173: TTalLabel
        Left = 24
        Top = 248
        Width = 30
        Height = 13
        Caption = 'T'#237'pus:'
      end
      object GroupBox03: TTalGroupBox
        Left = 16
        Top = 70
        Width = 769
        Height = 275
        Enabled = False
        TabOrder = 0
        object TalLabel33: TTalLabel
          Left = 24
          Top = 34
          Width = 33
          Height = 13
          Caption = 'ENAR:'
        end
        object TalLabel34: TTalLabel
          Left = 260
          Top = 34
          Width = 44
          Height = 13
          Caption = 'Ell. sz'#225'm:'
        end
        object TalLabel35: TTalLabel
          Left = 456
          Top = 34
          Width = 41
          Height = 13
          Caption = 'F'#252'lsz'#225'm:'
        end
        object TalLabel36: TTalLabel
          Left = 24
          Top = 70
          Width = 23
          Height = 13
          Caption = 'N'#233'v:'
        end
        object TalLabel37: TTalLabel
          Left = 296
          Top = 70
          Width = 70
          Height = 13
          Caption = 'Sz'#252'let'#233'si ideje:'
        end
        object TalLabel38: TTalLabel
          Left = 736
          Top = 70
          Width = 8
          Height = 13
          Caption = '%'
        end
        object TalLabel39: TTalLabel
          Left = 456
          Top = 70
          Width = 26
          Height = 13
          Caption = 'Fajta:'
        end
        object TalLabel40: TTalLabel
          Left = 24
          Top = 107
          Width = 28
          Height = 13
          Caption = 'SV %:'
        end
        object TalLabel41: TTalLabel
          Left = 488
          Top = 107
          Width = 83
          Height = 13
          Caption = 'Komb. min. index:'
        end
        object TalLabel42: TTalLabel
          Left = 644
          Top = 107
          Width = 8
          Height = 13
          Caption = '%'
        end
        object TalLabel43: TTalLabel
          Left = 24
          Top = 176
          Width = 30
          Height = 13
          Caption = 'T'#237'pus:'
        end
        object TalLabel44: TTalLabel
          Left = 136
          Top = 176
          Width = 47
          Height = 13
          Caption = 'Izmolts'#225'g:'
        end
        object TalLabel45: TTalLabel
          Left = 280
          Top = 176
          Width = 66
          Height = 13
          Caption = 'L'#225'bszerkezet:'
        end
        object TalLabel46: TTalLabel
          Left = 592
          Top = 176
          Width = 85
          Height = 13
          Caption = #201'rt'#233'kel'#233's d'#225'tuma:'
        end
        object TalLabel166: TTalLabel
          Left = 456
          Top = 176
          Width = 27
          Height = 13
          Caption = 'T'#337'gy:'
        end
        object TalLabel169: TTalLabel
          Left = 24
          Top = 224
          Width = 25
          Height = 13
          Caption = 'NET:'
        end
        object TalLabel179: TTalLabel
          Left = 24
          Top = 144
          Width = 68
          Height = 13
          Caption = 'K'#252'llemi b'#237'r'#225'lat:'
        end
        object TalDBEdit32: TTalDBEdit
          Left = 64
          Top = 30
          Width = 75
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit32'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 0
          DataField = 'ANYA_ENAR'
          DataSource = dsHivSzarmIg
        end
        object TalDBEdit33: TTalDBEdit
          Left = 320
          Top = 30
          Width = 89
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit33'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 1
          DataField = 'ANYA_ELLSZAM'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit34: TTalDBEdit
          Left = 504
          Top = 30
          Width = 130
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit34'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 2
          DataField = 'ANYA_FULSZAM'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit35: TTalDBEdit
          Left = 64
          Top = 66
          Width = 217
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit35'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 3
          DataField = 'ANYA_NEV'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit36: TTalDBEdit
          Left = 376
          Top = 66
          Width = 69
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etDate
          Text = 'TalD.  .  '
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = 10
          TabOrder = 4
          DataField = 'ANYA_SZULDAT'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit39: TTalDBEdit
          Left = 64
          Top = 103
          Width = 57
          Height = 22
          Alignment = taRightJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etInteger
          Text = 'TalDBEdit39'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 5
          DataField = 'ANYA_SV'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit40: TTalDBEdit
          Left = 584
          Top = 103
          Width = 50
          Height = 22
          Alignment = taRightJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etFloat
          Text = 'TalDBEdit40'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 6
          DataField = 'ANYA_KMI'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit41: TTalDBEdit
          Left = 64
          Top = 172
          Width = 60
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit41'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 7
          DataField = 'ANYA_TIPUS'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit42: TTalDBEdit
          Left = 192
          Top = 172
          Width = 75
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit42'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 8
          DataField = 'ANYA_IZMOLTSAG'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit43: TTalDBEdit
          Left = 352
          Top = 172
          Width = 89
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit43'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 9
          DataField = 'ANYA_LABSZERKEZET'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit44: TTalDBEdit
          Left = 688
          Top = 172
          Width = 73
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etDate
          Text = 'TalD.  .  '
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = 10
          TabOrder = 10
          DataField = 'ANYA_ERT_DAT'
          DataSource = dsHivSzarmLap
        end
        object cbAnyaFajtaNev: TTalDBLookupComboBox
          Left = 490
          Top = 67
          Width = 172
          Height = 21
          DataField = 'ANYA_FAJTA_KOD'
          DataSource = dsHivSzarmLap
          KeyField = 'FKOD'
          ListField = 'FNEV'
          ListSource = dtsAnyaFajta
          TabOrder = 11
        end
        object TalDBEdit37: TTalDBEdit
          Left = 488
          Top = 172
          Width = 89
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit43'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 12
          DataField = 'ANYA_TOGY'
          DataSource = dsHivSzarmLap
        end
        object TalDBEdit156: TTalDBEdit
          Left = 64
          Top = 218
          Width = 60
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'TalDBEdit35'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 13
          DataField = 'ANYA_NET_PONT'
          DataSource = dsHivSzarmLap
        end
        object AFSZAZEdit: TEdit
          Left = 672
          Top = 67
          Width = 57
          Height = 21
          TabOrder = 14
          Text = 'AFSZAZEdit'
          OnChange = FSZEditChange
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Apai nagyapa'
      ImageIndex = 3
      object GroupBox04: TTalGroupBox
        Left = 32
        Top = 16
        Width = 769
        Height = 361
        Enabled = False
        TabOrder = 0
        object TalGroupBox4: TTalGroupBox
          Left = 16
          Top = 150
          Width = 737
          Height = 81
          Caption = 'K'#252'llemi b'#237'r'#225'lat'
          TabOrder = 1
          object TalLabel57: TTalLabel
            Left = 16
            Top = 39
            Width = 30
            Height = 13
            Caption = 'T'#237'pus:'
          end
          object TalLabel58: TTalLabel
            Left = 161
            Top = 39
            Width = 47
            Height = 13
            Caption = 'Izmolts'#225'g:'
          end
          object TalLabel59: TTalLabel
            Left = 344
            Top = 39
            Width = 66
            Height = 13
            Caption = 'L'#225'bszerkezet:'
          end
          object TalLabel60: TTalLabel
            Left = 544
            Top = 39
            Width = 85
            Height = 13
            Caption = #201'rt'#233'kel'#233's d'#225'tuma:'
          end
          object TalDBEdit52: TTalDBEdit
            Left = 64
            Top = 35
            Width = 57
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit52'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'APAI_NAGYAPA_TIPUS'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit53: TTalDBEdit
            Left = 224
            Top = 35
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit53'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'APAI_NAGYAPA_IZMOLTSAG'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit54: TTalDBEdit
            Left = 424
            Top = 35
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit54'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'APAI_NAGYAPA_LABSZERKEZET'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit55: TTalDBEdit
            Left = 640
            Top = 35
            Width = 71
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etDate
            Text = 'TalD.  .  '
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = 10
            TabOrder = 3
            DataField = 'APAI_NAGYAPA_ERTDAT'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox5: TTalGroupBox
          Left = 16
          Top = 240
          Width = 345
          Height = 105
          Caption = 'Apja'
          TabOrder = 2
          object TalLabel61: TTalLabel
            Left = 16
            Top = 26
            Width = 37
            Height = 13
            Caption = 'KPLSZ:'
          end
          object TalLabel62: TTalLabel
            Left = 16
            Top = 66
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel63: TTalLabel
            Left = 144
            Top = 26
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel64: TTalLabel
            Left = 145
            Top = 66
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalDBEdit56: TTalDBEdit
            Left = 64
            Top = 22
            Width = 60
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etFloat
            Text = 'TalDBEdit56'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'APAI_NAGYAPA_APJA_KPLSZ'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit57: TTalDBEdit
            Left = 195
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit57'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'APAI_NAGYAPA_APJA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit60: TTalDBEdit
            Left = 64
            Top = 62
            Width = 81
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit60'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'APAI_NAGYAPA_APJA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit61: TTalDBEdit
            Left = 175
            Top = 62
            Width = 150
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit61'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'APAI_NAGYAPA_APJA_NEV'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox6: TTalGroupBox
          Left = 370
          Top = 240
          Width = 385
          Height = 105
          Caption = 'Anyja'
          TabOrder = 3
          object TalLabel65: TTalLabel
            Left = 32
            Top = 26
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel66: TTalLabel
            Left = 22
            Top = 66
            Width = 44
            Height = 13
            Caption = 'Ell. sz'#225'm:'
          end
          object TalLabel67: TTalLabel
            Left = 184
            Top = 26
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel68: TTalLabel
            Left = 180
            Top = 66
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalDBEdit58: TTalDBEdit
            Left = 80
            Top = 22
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit58'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'APAI_NAGYAPA_ANYJA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit59: TTalDBEdit
            Left = 232
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit59'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'APAI_NAGYAPA_ANYJA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit62: TTalDBEdit
            Left = 80
            Top = 62
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit62'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'APAI_NAGYAPA_ANYJA_ELLSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit63: TTalDBEdit
            Left = 212
            Top = 62
            Width = 150
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit63'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'APAI_NAGYAPA_ANYJA_NEV'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox7: TTalGroupBox
          Left = 16
          Top = 15
          Width = 737
          Height = 127
          TabOrder = 0
          object TalLabel47: TTalLabel
            Left = 16
            Top = 26
            Width = 37
            Height = 13
            Caption = 'KPLSZ:'
          end
          object TalLabel48: TTalLabel
            Left = 160
            Top = 26
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalLabel49: TTalLabel
            Left = 576
            Top = 26
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel50: TTalLabel
            Left = 16
            Top = 58
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel51: TTalLabel
            Left = 250
            Top = 58
            Width = 70
            Height = 13
            Caption = 'Sz'#252'let'#233'si ideje:'
          end
          object TalLabel52: TTalLabel
            Left = 430
            Top = 58
            Width = 26
            Height = 13
            Caption = 'Fajta:'
          end
          object TalLabel53: TTalLabel
            Left = 708
            Top = 58
            Width = 8
            Height = 13
            Caption = '%'
          end
          object TalLabel54: TTalLabel
            Left = 16
            Top = 98
            Width = 28
            Height = 13
            Caption = 'SV %:'
          end
          object TalLabel55: TTalLabel
            Left = 190
            Top = 98
            Width = 128
            Height = 13
            Caption = #201'letnapi t'#246'meggyarapod'#225's:'
          end
          object TalLabel56: TTalLabel
            Left = 470
            Top = 98
            Width = 136
            Height = 13
            Caption = 'STV alatti t'#246'meggyarapod'#225's:'
          end
          object TalDBEdit45: TTalDBEdit
            Left = 70
            Top = 22
            Width = 60
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etFloat
            Text = 'TalDBEdit45'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'APAI_NAGYAPA_KPLSZ'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit46: TTalDBEdit
            Left = 192
            Top = 22
            Width = 361
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit46'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'APAI_NAGYAPA_NEV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit47: TTalDBEdit
            Left = 624
            Top = 22
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit47'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'APAI_NAGYAPA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit48: TTalDBEdit
            Left = 70
            Top = 54
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit48'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'APAI_NAGYAPA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit49: TTalDBEdit
            Left = 336
            Top = 54
            Width = 71
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etDate
            Text = 'TalD.  .  '
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = 10
            TabOrder = 4
            DataField = 'APAI_NAGYAPA_SZULDAT'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit153: TTalDBEdit
            Left = 70
            Top = 94
            Width = 57
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit153'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 5
            DataField = 'APAI_NAGYAPA_SV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit154: TTalDBEdit
            Left = 335
            Top = 94
            Width = 57
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit154'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 6
            DataField = 'APAI_NAGYAPA_TGY'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit155: TTalDBEdit
            Left = 620
            Top = 94
            Width = 81
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit155'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 7
            DataField = 'APAI_NAGYAPA_STV_TGY'
            DataSource = dsHivSzarmLap
          end
          object cbApaiNagyapaFajtaNev: TTalDBLookupComboBox
            Left = 466
            Top = 55
            Width = 172
            Height = 21
            DataField = 'APAI_NAGYAPA_FAJTAKOD'
            DataSource = dsHivSzarmLap
            KeyField = 'FKOD'
            ListField = 'FNEV'
            ListSource = dtsApaapa
            TabOrder = 8
          end
          object ANAFSZEdit: TEdit
            Left = 640
            Top = 55
            Width = 57
            Height = 21
            TabOrder = 9
            OnChange = FSZEditChange
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Apai nagyanya'
      ImageIndex = 4
      object GroupBox05: TTalGroupBox
        Left = 8
        Top = 30
        Width = 809
        Height = 289
        Enabled = False
        TabOrder = 0
        object TalGroupBox9: TTalGroupBox
          Left = 25
          Top = 24
          Width = 750
          Height = 105
          TabOrder = 0
          object TalLabel69: TTalLabel
            Left = 16
            Top = 26
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel70: TTalLabel
            Left = 182
            Top = 26
            Width = 44
            Height = 13
            Caption = 'Ell. sz'#225'm:'
          end
          object TalLabel71: TTalLabel
            Left = 376
            Top = 26
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel72: TTalLabel
            Left = 16
            Top = 66
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalLabel73: TTalLabel
            Left = 394
            Top = 66
            Width = 70
            Height = 13
            Caption = 'Sz'#252'let'#233'si ideje:'
          end
          object TalLabel74: TTalLabel
            Left = 618
            Top = 26
            Width = 28
            Height = 13
            Caption = 'SV %:'
          end
          object TalLabel75: TTalLabel
            Left = 568
            Top = 66
            Width = 83
            Height = 13
            Caption = 'Komb. min. index:'
          end
          object TalLabel76: TTalLabel
            Left = 724
            Top = 66
            Width = 8
            Height = 13
            Caption = '%'
          end
          object TalDBEdit64: TTalDBEdit
            Left = 64
            Top = 22
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit64'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'APAI_NAGYANYA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit65: TTalDBEdit
            Left = 240
            Top = 22
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit65'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'APAI_NAGYANYA_ELLSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit66: TTalDBEdit
            Left = 432
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit66'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'APAI_NAGYANYA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit67: TTalDBEdit
            Left = 658
            Top = 22
            Width = 57
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit67'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'APAI_NAGYANYA_SV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit68: TTalDBEdit
            Left = 64
            Top = 62
            Width = 313
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit68'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 4
            DataField = 'APAI_NAGYANYA_NEV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit69: TTalDBEdit
            Left = 472
            Top = 62
            Width = 71
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etDate
            Text = 'TalD.  .  '
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = 10
            TabOrder = 5
            DataField = 'APAI_NAGYANYA_SZULDAT'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit70: TTalDBEdit
            Left = 665
            Top = 62
            Width = 50
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etFloat
            Text = 'TalDBEdit70'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 6
            DataField = 'APAI_NAGYANYA_KMI'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox10: TTalGroupBox
          Left = 25
          Top = 150
          Width = 350
          Height = 105
          Caption = 'Apja'
          TabOrder = 1
          object TalLabel77: TTalLabel
            Left = 16
            Top = 26
            Width = 37
            Height = 13
            Caption = 'KPLSZ:'
          end
          object TalLabel78: TTalLabel
            Left = 16
            Top = 66
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel79: TTalLabel
            Left = 155
            Top = 66
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalLabel106: TTalLabel
            Left = 155
            Top = 26
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalDBEdit71: TTalDBEdit
            Left = 64
            Top = 22
            Width = 60
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etFloat
            Text = 'TalDBEdit71'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'APAI_NAGYANYA_APJA_KPLSZ'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit72: TTalDBEdit
            Left = 208
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit72'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'APAI_NAGYANYA_APJA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit75: TTalDBEdit
            Left = 64
            Top = 62
            Width = 81
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit75'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'APAI_NAGYANYA_APJA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit76: TTalDBEdit
            Left = 188
            Top = 62
            Width = 150
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit76'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'APAI_NAGYANYA_APJA_NEV'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox11: TTalGroupBox
          Left = 390
          Top = 150
          Width = 385
          Height = 105
          Caption = 'Anyja'
          TabOrder = 2
          object TalLabel80: TTalLabel
            Left = 16
            Top = 26
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel81: TTalLabel
            Left = 184
            Top = 26
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel82: TTalLabel
            Left = 16
            Top = 66
            Width = 44
            Height = 13
            Caption = 'Ell. sz'#225'm:'
          end
          object TalLabel83: TTalLabel
            Left = 184
            Top = 66
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalDBEdit73: TTalDBEdit
            Left = 70
            Top = 22
            Width = 99
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit73'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'APAI_NAGYANYA_ANYJA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit74: TTalDBEdit
            Left = 236
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit74'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'APAI_NAGYANYA_ANYJA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit77: TTalDBEdit
            Left = 70
            Top = 62
            Width = 99
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit77'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'APAI_NAGYANYA_ANYJA_ELLSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit78: TTalDBEdit
            Left = 216
            Top = 62
            Width = 150
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit78'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'APAI_NAGYANYA_ANYJA_NEV'
            DataSource = dsHivSzarmLap
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Anyai nagyapa'
      ImageIndex = 5
      object GroupBox06: TTalGroupBox
        Left = 32
        Top = 16
        Width = 769
        Height = 361
        Enabled = False
        TabOrder = 0
        object TalGroupBox13: TTalGroupBox
          Left = 16
          Top = 150
          Width = 737
          Height = 81
          Caption = 'K'#252'llemi b'#237'r'#225'lat'
          TabOrder = 1
          object TalLabel84: TTalLabel
            Left = 16
            Top = 39
            Width = 30
            Height = 13
            Caption = 'T'#237'pus:'
          end
          object TalLabel85: TTalLabel
            Left = 161
            Top = 39
            Width = 47
            Height = 13
            Caption = 'Izmolts'#225'g:'
          end
          object TalLabel86: TTalLabel
            Left = 344
            Top = 39
            Width = 66
            Height = 13
            Caption = 'L'#225'bszerkezet:'
          end
          object TalLabel87: TTalLabel
            Left = 544
            Top = 39
            Width = 85
            Height = 13
            Caption = #201'rt'#233'kel'#233's d'#225'tuma:'
          end
          object TalDBEdit89: TTalDBEdit
            Left = 64
            Top = 35
            Width = 60
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit89'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'ANYAI_NAGYAPA_TIPUS'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit90: TTalDBEdit
            Left = 224
            Top = 35
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit90'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'ANYAI_NAGYAPA_IZMOLTS'#193'G'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit91: TTalDBEdit
            Left = 424
            Top = 35
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit91'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'ANYAI_NAGYAPA_LABSZERKEZET'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit92: TTalDBEdit
            Left = 640
            Top = 35
            Width = 71
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etDate
            Text = 'TalD.  .  '
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = 10
            TabOrder = 3
            DataField = 'ANYAI_NAGYAPA_ERT_DAT'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox14: TTalGroupBox
          Left = 16
          Top = 240
          Width = 345
          Height = 105
          Caption = 'Apja'
          TabOrder = 2
          object TalLabel88: TTalLabel
            Left = 16
            Top = 26
            Width = 37
            Height = 13
            Caption = 'KPLSZ:'
          end
          object TalLabel89: TTalLabel
            Left = 16
            Top = 66
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel90: TTalLabel
            Left = 150
            Top = 26
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel91: TTalLabel
            Left = 150
            Top = 66
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalDBEdit93: TTalDBEdit
            Left = 64
            Top = 22
            Width = 60
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etFloat
            Text = 'TalDBEdit93'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'ANYAI_NAGYAPA_APJA_KPLSZ'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit94: TTalDBEdit
            Left = 200
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit94'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'ANYAI_NAGYAPA_APJA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit97: TTalDBEdit
            Left = 64
            Top = 62
            Width = 81
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit97'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'ANYAI_NAGYAPA_APJA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit98: TTalDBEdit
            Left = 180
            Top = 62
            Width = 150
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit98'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'ANYAI_NAGYAPA_APJA_NEV'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox15: TTalGroupBox
          Left = 370
          Top = 240
          Width = 385
          Height = 105
          Caption = 'Anyja'
          TabOrder = 3
          object TalLabel92: TTalLabel
            Left = 32
            Top = 26
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel93: TTalLabel
            Left = 22
            Top = 66
            Width = 44
            Height = 13
            Caption = 'Ell. sz'#225'm:'
          end
          object TalLabel94: TTalLabel
            Left = 180
            Top = 26
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel95: TTalLabel
            Left = 180
            Top = 66
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalDBEdit95: TTalDBEdit
            Left = 80
            Top = 22
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit95'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 0
            DataField = 'ANYAI_NAGYAPA_ANYJA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit96: TTalDBEdit
            Left = 232
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit96'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'ANYAI_NAGYAPA_ANYJA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit99: TTalDBEdit
            Left = 80
            Top = 62
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit99'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'ANYAI_NAGYAPA_ANYJA_ELLSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit100: TTalDBEdit
            Left = 212
            Top = 62
            Width = 150
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit100'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'ANYAI_NAGYAPA_ANYJA_NEV'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox16: TTalGroupBox
          Left = 16
          Top = 15
          Width = 737
          Height = 127
          TabOrder = 0
          object TalLabel96: TTalLabel
            Left = 16
            Top = 26
            Width = 37
            Height = 13
            Caption = 'KPLSZ:'
          end
          object TalLabel97: TTalLabel
            Left = 168
            Top = 26
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalLabel98: TTalLabel
            Left = 576
            Top = 26
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel99: TTalLabel
            Left = 16
            Top = 58
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel100: TTalLabel
            Left = 250
            Top = 58
            Width = 70
            Height = 13
            Caption = 'Sz'#252'let'#233'si ideje:'
          end
          object TalLabel101: TTalLabel
            Left = 435
            Top = 58
            Width = 26
            Height = 13
            Caption = 'Fajta:'
          end
          object TalLabel102: TTalLabel
            Left = 708
            Top = 58
            Width = 8
            Height = 13
            Caption = '%'
          end
          object TalLabel103: TTalLabel
            Left = 16
            Top = 98
            Width = 28
            Height = 13
            Caption = 'SV %:'
          end
          object TalLabel104: TTalLabel
            Left = 190
            Top = 98
            Width = 128
            Height = 13
            Caption = #201'letnapi t'#246'meggyarapod'#225's:'
          end
          object TalLabel105: TTalLabel
            Left = 470
            Top = 98
            Width = 136
            Height = 13
            Caption = 'STV alatti t'#246'meggyarapod'#225's:'
          end
          object TalDBEdit79: TTalDBEdit
            Left = 70
            Top = 22
            Width = 60
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etFloat
            Text = 'TalDBEdit79'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'ANYAI_NAGYAPA_KPLSZ'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit80: TTalDBEdit
            Left = 200
            Top = 22
            Width = 353
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit80'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'ANYAI_NAGYAPA_NEV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit81: TTalDBEdit
            Left = 624
            Top = 22
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit81'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'ANYAI_NAGYAPA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit82: TTalDBEdit
            Left = 70
            Top = 54
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit82'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'ANYAI_NAGYAPA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit83: TTalDBEdit
            Left = 336
            Top = 54
            Width = 71
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etDate
            Text = 'TalD.  .  '
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = 10
            TabOrder = 4
            DataField = 'ANYAI_NAGYAPA_SZULDAT'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit86: TTalDBEdit
            Left = 70
            Top = 94
            Width = 57
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit86'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 5
            DataField = 'ANYAI_NAGYAPA_SV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit87: TTalDBEdit
            Left = 336
            Top = 94
            Width = 57
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit87'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 6
            DataField = 'ANYAI_NAGYAPA_ETGY'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit88: TTalDBEdit
            Left = 620
            Top = 94
            Width = 81
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit88'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 7
            DataField = 'ANYAI_NAGYAPA_STV_TGY'
            DataSource = dsHivSzarmLap
          end
          object cbAnyaiNagyapaFajtaNev: TTalDBLookupComboBox
            Left = 466
            Top = 55
            Width = 172
            Height = 21
            DataField = 'ANYAI_NAGYAPA_FAJTAKOD'
            DataSource = dsHivSzarmLap
            KeyField = 'FKOD'
            ListField = 'FNEV'
            ListSource = dtsAnyaFajta
            TabOrder = 8
          end
          object ANNAFSZEdit: TEdit
            Left = 640
            Top = 55
            Width = 57
            Height = 21
            TabOrder = 9
            OnChange = FSZEditChange
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Anyai nagyanya'
      ImageIndex = 6
      object GroupBox07: TTalGroupBox
        Left = 8
        Top = 30
        Width = 809
        Height = 289
        Enabled = False
        TabOrder = 0
        object TalGroupBox18: TTalGroupBox
          Left = 25
          Top = 24
          Width = 750
          Height = 105
          TabOrder = 0
          object TalLabel107: TTalLabel
            Left = 16
            Top = 26
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel108: TTalLabel
            Left = 182
            Top = 26
            Width = 44
            Height = 13
            Caption = 'Ell. sz'#225'm:'
          end
          object TalLabel109: TTalLabel
            Left = 376
            Top = 26
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel110: TTalLabel
            Left = 16
            Top = 66
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalLabel111: TTalLabel
            Left = 378
            Top = 66
            Width = 70
            Height = 13
            Caption = 'Sz'#252'let'#233'si ideje:'
          end
          object TalLabel112: TTalLabel
            Left = 618
            Top = 26
            Width = 28
            Height = 13
            Caption = 'SV %:'
          end
          object TalLabel113: TTalLabel
            Left = 568
            Top = 66
            Width = 83
            Height = 13
            Caption = 'Komb. min. index:'
          end
          object TalLabel114: TTalLabel
            Left = 724
            Top = 66
            Width = 8
            Height = 13
            Caption = '%'
          end
          object TalDBEdit101: TTalDBEdit
            Left = 64
            Top = 22
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit101'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'ANYAI_NAGYANYA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit102: TTalDBEdit
            Left = 240
            Top = 22
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit102'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'ANYAI_NAGYANYA_ELLSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit103: TTalDBEdit
            Left = 432
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit103'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'ANYAI_NAGYANYA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit104: TTalDBEdit
            Left = 658
            Top = 22
            Width = 57
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit104'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'ANYAI_NAGYANYA_SV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit105: TTalDBEdit
            Left = 64
            Top = 62
            Width = 305
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit105'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 4
            DataField = 'ANYAI_NAGYANYA_NEV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit106: TTalDBEdit
            Left = 464
            Top = 62
            Width = 70
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etDate
            Text = 'TalD.  .  '
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = 10
            TabOrder = 5
            DataField = 'ANYAI_NAGYANYA_SZULDAT'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit107: TTalDBEdit
            Left = 665
            Top = 62
            Width = 50
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etFloat
            Text = 'TalDBEdit107'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 6
            DataField = 'ANYAI_NAGYANYA_KMI'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox19: TTalGroupBox
          Left = 25
          Top = 150
          Width = 350
          Height = 105
          Caption = 'Apja'
          TabOrder = 1
          object TalLabel115: TTalLabel
            Left = 16
            Top = 26
            Width = 37
            Height = 13
            Caption = 'KPLSZ:'
          end
          object TalLabel116: TTalLabel
            Left = 16
            Top = 66
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel117: TTalLabel
            Left = 150
            Top = 66
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalLabel118: TTalLabel
            Left = 150
            Top = 26
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalDBEdit108: TTalDBEdit
            Left = 64
            Top = 22
            Width = 60
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etFloat
            Text = 'TalDBEdit108'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'ANYAI_NAGYANYA_APJA_KPLSZ'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit109: TTalDBEdit
            Left = 200
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit109'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'ANYAI_NAGYANYA_APJA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit112: TTalDBEdit
            Left = 64
            Top = 62
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit112'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'ANYAI_NAGYANYA_APJA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit113: TTalDBEdit
            Left = 180
            Top = 62
            Width = 150
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit113'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'ANYAI_NAGYANYA_APJA_NEV'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox20: TTalGroupBox
          Left = 390
          Top = 150
          Width = 385
          Height = 105
          Caption = 'Anyja'
          TabOrder = 2
          object TalLabel119: TTalLabel
            Left = 16
            Top = 26
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel120: TTalLabel
            Left = 184
            Top = 26
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel121: TTalLabel
            Left = 16
            Top = 66
            Width = 44
            Height = 13
            Caption = 'Ell. sz'#225'm:'
          end
          object TalLabel122: TTalLabel
            Left = 184
            Top = 66
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalDBEdit110: TTalDBEdit
            Left = 70
            Top = 22
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit110'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'ANYAI_NAGYANYA_ANYJA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit111: TTalDBEdit
            Left = 236
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit111'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'ANYAI_NAGYANYA_ANYJA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit114: TTalDBEdit
            Left = 70
            Top = 62
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit114'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'ANYAI_NAGYANYA_ANYJA_ELLSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit115: TTalDBEdit
            Left = 216
            Top = 62
            Width = 150
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit115'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'ANYAI_NAGYANYA_ANYJA_NEV'
            DataSource = dsHivSzarmLap
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Term'#233'keny'#237't'#233's'
      ImageIndex = 7
      object GroupBox08: TTalGroupBox
        Left = 16
        Top = 10
        Width = 745
        Height = 387
        Enabled = False
        TabOrder = 0
        object TalLabel123: TTalLabel
          Left = 32
          Top = 18
          Width = 26
          Height = 13
          Caption = 'Ideje:'
        end
        object TalGroupBox25: TTalGroupBox
          Left = 24
          Top = 40
          Width = 700
          Height = 140
          Caption = 'Bika'
          TabOrder = 0
          object TalLabel124: TTalLabel
            Left = 16
            Top = 18
            Width = 37
            Height = 13
            Caption = 'KPLSZ:'
          end
          object TalLabel125: TTalLabel
            Left = 136
            Top = 18
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalLabel126: TTalLabel
            Left = 370
            Top = 18
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel127: TTalLabel
            Left = 16
            Top = 42
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel128: TTalLabel
            Left = 500
            Top = 18
            Width = 70
            Height = 13
            Caption = 'Sz'#252'let'#233'si ideje:'
          end
          object TalLabel129: TTalLabel
            Left = 385
            Top = 42
            Width = 26
            Height = 13
            Caption = 'Fajta:'
          end
          object TalLabel130: TTalLabel
            Left = 668
            Top = 42
            Width = 8
            Height = 13
            Caption = '%'
          end
          object TalLabel131: TTalLabel
            Left = 16
            Top = 67
            Width = 28
            Height = 13
            Caption = 'SV %:'
          end
          object TalLabel132: TTalLabel
            Left = 232
            Top = 67
            Width = 61
            Height = 13
            Caption = #201'letnapi tgy.:'
          end
          object TalLabel133: TTalLabel
            Left = 500
            Top = 67
            Width = 69
            Height = 13
            Caption = 'STV alatti tgy.:'
          end
          object TalLabel134: TTalLabel
            Left = 16
            Top = 116
            Width = 30
            Height = 13
            Caption = 'T'#237'pus:'
          end
          object TalLabel135: TTalLabel
            Left = 153
            Top = 116
            Width = 47
            Height = 13
            Caption = 'Izmolts'#225'g:'
          end
          object TalLabel136: TTalLabel
            Left = 328
            Top = 116
            Width = 66
            Height = 13
            Caption = 'L'#225'bszerkezet:'
          end
          object TalLabel137: TTalLabel
            Left = 530
            Top = 116
            Width = 40
            Height = 13
            Caption = #201'rt. d'#225't.:'
          end
          object TalLabel180: TTalLabel
            Left = 16
            Top = 92
            Width = 68
            Height = 13
            Caption = 'K'#252'llemi b'#237'r'#225'lat:'
          end
          object TalDBEdit123: TTalDBEdit
            Left = 65
            Top = 14
            Width = 60
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etFloat
            Text = 'TalDBEdit123'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'TERM_BIKA_KPLSZ'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit124: TTalDBEdit
            Left = 160
            Top = 14
            Width = 201
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit124'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'TERM_BIKA_NEV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit125: TTalDBEdit
            Left = 416
            Top = 14
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit125'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'TERM_BIKA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit126: TTalDBEdit
            Left = 65
            Top = 38
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit126'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 3
            DataField = 'TERM_BIKA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit127: TTalDBEdit
            Left = 584
            Top = 14
            Width = 71
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etDate
            Text = 'TalD.  .  '
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = 10
            TabOrder = 4
            DataField = 'TERM_BIKA_SZULDAT'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit130: TTalDBEdit
            Left = 65
            Top = 63
            Width = 57
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit130'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 5
            DataField = 'TERM_BIKA_SV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit131: TTalDBEdit
            Left = 312
            Top = 63
            Width = 57
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit131'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 6
            DataField = 'TERM_BIKA_ETGY'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit132: TTalDBEdit
            Left = 575
            Top = 63
            Width = 81
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etInteger
            Text = 'TalDBEdit132'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 7
            DataField = 'TERM_BIKA_STV_TGY'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit133: TTalDBEdit
            Left = 65
            Top = 112
            Width = 60
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit133'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 8
            DataField = 'TERM_BIKA_TIPUS'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit134: TTalDBEdit
            Left = 208
            Top = 112
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit134'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 9
            DataField = 'TERM_BIKA_IZMOLTSAG'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit135: TTalDBEdit
            Left = 400
            Top = 112
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit135'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 10
            DataField = 'TERM_BIKA_LABSZERKEZET'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit136: TTalDBEdit
            Left = 581
            Top = 112
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit136'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 11
            DataField = 'TERM_BIKA_ERT_DAT'
            DataSource = dsHivSzarmLap
          end
          object cbTermekenyitoFajtaNev: TTalDBLookupComboBox
            Left = 416
            Top = 39
            Width = 172
            Height = 21
            DataField = 'TERM_BIKA_FAJTAKOD'
            DataSource = dsHivSzarmLap
            KeyField = 'FKOD'
            ListField = 'FNEV'
            ListSource = dtsAnyaFajta
            TabOrder = 12
          end
          object TBFSZEdit: TEdit
            Left = 608
            Top = 39
            Width = 57
            Height = 21
            TabOrder = 13
            OnChange = FSZEditChange
          end
        end
        object TalDBEdit122: TTalDBEdit
          Left = 72
          Top = 14
          Width = 71
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          ValueType = etDate
          Text = 'TalD.  .  '
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = 10
          TabOrder = 1
          DataField = 'TERM_IDEJE'
          DataSource = dsHivSzarmLap
        end
        object TalGroupBox26: TTalGroupBox
          Left = 24
          Top = 184
          Width = 700
          Height = 81
          Caption = 'Apja'
          TabOrder = 2
          object TalLabel138: TTalLabel
            Left = 16
            Top = 26
            Width = 37
            Height = 13
            Caption = 'KPLSZ:'
          end
          object TalLabel139: TTalLabel
            Left = 152
            Top = 26
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalLabel140: TTalLabel
            Left = 370
            Top = 26
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel141: TTalLabel
            Left = 500
            Top = 26
            Width = 70
            Height = 13
            Caption = 'Sz'#252'let'#233'si ideje:'
          end
          object TalLabel142: TTalLabel
            Left = 16
            Top = 50
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalDBEdit137: TTalDBEdit
            Left = 65
            Top = 22
            Width = 60
            Height = 22
            Alignment = taRightJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etFloat
            Text = 'TalDBEdit137'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'TERM_BIKA_APJA_KPLSZ'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit138: TTalDBEdit
            Left = 184
            Top = 22
            Width = 174
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit138'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'TERM_BIKA_APJA_NEVE'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit139: TTalDBEdit
            Left = 416
            Top = 22
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit139'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'TERM_BIKA_APJA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit140: TTalDBEdit
            Left = 584
            Top = 22
            Width = 71
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etDate
            Text = 'TalD.  .  '
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = 10
            TabOrder = 3
            DataField = 'TERM_BIKA_APJA_SZULDAT'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit141: TTalDBEdit
            Left = 65
            Top = 46
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit141'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 4
            DataField = 'TERM_BIKA_APJA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox27: TTalGroupBox
          Left = 24
          Top = 272
          Width = 700
          Height = 105
          Caption = 'Anyja'
          TabOrder = 3
          object TalLabel143: TTalLabel
            Left = 155
            Top = 26
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalLabel144: TTalLabel
            Left = 16
            Top = 26
            Width = 33
            Height = 13
            Caption = 'ENAR:'
          end
          object TalLabel145: TTalLabel
            Left = 16
            Top = 50
            Width = 41
            Height = 13
            Caption = 'F'#252'lsz'#225'm:'
          end
          object TalLabel146: TTalLabel
            Left = 348
            Top = 26
            Width = 44
            Height = 13
            Caption = 'Ell. sz'#225'm:'
          end
          object TalLabel147: TTalLabel
            Left = 500
            Top = 26
            Width = 70
            Height = 13
            Caption = 'Sz'#252'let'#233'si ideje:'
          end
          object TalLabel148: TTalLabel
            Left = 290
            Top = 50
            Width = 28
            Height = 13
            Caption = 'SV %:'
          end
          object TalLabel149: TTalLabel
            Left = 512
            Top = 50
            Width = 83
            Height = 13
            Caption = 'Komb. min. index:'
          end
          object TalLabel150: TTalLabel
            Left = 668
            Top = 50
            Width = 8
            Height = 13
            Caption = '%'
          end
          object TalLabel151: TTalLabel
            Left = 16
            Top = 75
            Width = 30
            Height = 13
            Caption = 'T'#237'pus:'
          end
          object TalLabel152: TTalLabel
            Left = 136
            Top = 75
            Width = 47
            Height = 13
            Caption = 'Izmolts'#225'g:'
          end
          object TalLabel153: TTalLabel
            Left = 280
            Top = 75
            Width = 66
            Height = 13
            Caption = 'L'#225'bszerkezet:'
          end
          object TalLabel154: TTalLabel
            Left = 560
            Top = 75
            Width = 40
            Height = 13
            Caption = #201'rt. d'#225't.:'
          end
          object TalLabel167: TTalLabel
            Left = 448
            Top = 75
            Width = 27
            Height = 13
            Caption = 'T'#337'gy:'
          end
          object TalDBEdit142: TTalDBEdit
            Left = 65
            Top = 22
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit142'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 0
            DataField = 'TERM_BIKA_ANYJA_ENAR'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit143: TTalDBEdit
            Left = 190
            Top = 22
            Width = 150
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit143'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'TERM_BIKA_ANYJA_NEV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit144: TTalDBEdit
            Left = 400
            Top = 22
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit144'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'TERM_BIKA_ANYJA_ELLSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit145: TTalDBEdit
            Left = 584
            Top = 22
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit145'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 3
            DataField = 'TERM_BIKA_ANYJA_SZULDAT'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit146: TTalDBEdit
            Left = 65
            Top = 46
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit146'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 4
            DataField = 'TERM_BIKA_ANYJA_FULSZAM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit147: TTalDBEdit
            Left = 336
            Top = 46
            Width = 57
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit147'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 5
            DataField = 'TERM_BIKA_ANYJA_SV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit148: TTalDBEdit
            Left = 609
            Top = 46
            Width = 50
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit148'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 6
            DataField = 'TERM_BIKA_ANYJA_KMI'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit149: TTalDBEdit
            Left = 65
            Top = 71
            Width = 60
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit149'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 7
            DataField = 'TERM_BIKA_ANYJA_TIPUS'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit150: TTalDBEdit
            Left = 190
            Top = 71
            Width = 75
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit150'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 8
            DataField = 'TERM_BIKA_ANYJA_IZMOLTSAG'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit151: TTalDBEdit
            Left = 348
            Top = 71
            Width = 89
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit151'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 9
            DataField = 'TERM_BIKA_ANYJA_LABSZERKEZET'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit152: TTalDBEdit
            Left = 608
            Top = 71
            Width = 81
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit152'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 10
            DataField = 'TERM_BIKA_ANYJA_ERT_DAT'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit84: TTalDBEdit
            Left = 480
            Top = 71
            Width = 73
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit151'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            ParentCtl3D = False
            TabOrder = 11
            DataField = 'T_ANYA_TOGY'
            DataSource = dsHivSzarmLap
          end
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Teny'#233'szt'#337' '#233's tulajdonos'
      ImageIndex = 8
      object GroupBox09: TTalGroupBox
        Left = 8
        Top = 80
        Width = 809
        Height = 215
        Enabled = False
        TabOrder = 0
        object TalGroupBox22: TTalGroupBox
          Left = 33
          Top = 30
          Width = 350
          Height = 125
          Caption = 'Teny'#233'szt'#337
          TabOrder = 0
          object TalLabel155: TTalLabel
            Left = 16
            Top = 26
            Width = 22
            Height = 13
            Caption = 'K'#243'd:'
          end
          object TalLabel156: TTalLabel
            Left = 16
            Top = 58
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object c: TTalLabel
            Left = 16
            Top = 90
            Width = 21
            Height = 13
            Caption = 'C'#237'm:'
          end
          object TalDBEdit116: TTalDBEdit
            Left = 64
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit116'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'TENYESZTO_KOD'
            DataSource = dsHivSzarmIg
          end
          object TalDBEdit117: TTalDBEdit
            Left = 64
            Top = 54
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit117'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'TENYESZTO_NEV'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit118: TTalDBEdit
            Left = 64
            Top = 86
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit118'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'TENYESZTO_CIM'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox23: TTalGroupBox
          Left = 417
          Top = 30
          Width = 350
          Height = 125
          Caption = 'Tulajdonos'
          TabOrder = 1
          object TalLabel158: TTalLabel
            Left = 16
            Top = 26
            Width = 22
            Height = 13
            Caption = 'K'#243'd:'
          end
          object TalLabel159: TTalLabel
            Left = 16
            Top = 58
            Width = 23
            Height = 13
            Caption = 'N'#233'v:'
          end
          object TalLabel160: TTalLabel
            Left = 16
            Top = 90
            Width = 21
            Height = 13
            Caption = 'C'#237'm:'
          end
          object TulajKod: TTalDBEdit
            Left = 64
            Top = 22
            Width = 130
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit119'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'TULAJ_KOD'
            DataSource = dsHivSzarmLap
          end
          object TulajNev: TTalDBEdit
            Left = 64
            Top = 54
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit120'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            ParentCtl3D = False
            TabOrder = 1
            DataField = 'TULAJ_NEV'
            DataSource = dsHivSzarmLap
          end
          object TulajCim: TTalDBEdit
            Left = 64
            Top = 86
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'TalDBEdit121'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'TULAJ_CIM'
            DataSource = dsHivSzarmLap
          end
        end
        object DBEdit1: TDBEdit
          Left = 472
          Top = 360
          Width = 134
          Height = 21
          DataField = 'SOR'
          DataSource = dsHivSzarmIg
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 528
          Top = 360
          Width = 134
          Height = 21
          DataField = 'PER'
          DataSource = dsHivSzarmIg
          TabOrder = 3
        end
      end
    end
  end
  object grdVal: TTalDBGrid
    Left = 24
    Top = 16
    Width = 337
    Height = 561
    Selected.Strings = (
      'SOR'#9'5'#9'SOR'#9#9
      'PER'#9'4'#9'PER'#9#9
      'ENAR'#9'16'#9'ENAR'#9#9
      'KPLSZ'#9'5'#9'KPLSZ'#9#9
      'KIDAT'#9'10'#9'KIDAT'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = RowChange
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
    DataSource = dtsKeres
    KeyOptions = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize, dgTabExitsOnLastCol]
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnDblClick = dbClick
    DefaultSet = True
    SortDir = sdAsc
    SortType = stGrid
    SortColumn = 0
    SortShow = True
    NotEnabledFieldColor = clMoneyGreen
    NotEnabledFieldColorize = False
    FilterColor = clGray
    FixedColor = clWindow
    ShowFooter = True
    SaveIndex = False
    ShowMaskedNumericValues = False
    SaveExportParamsFile = False
  end
  object btnNew: TTalBitBtn
    Left = 616
    Top = 464
    Width = 120
    Height = 25
    Caption = #218'j'
    TabOrder = 4
    OnClick = btnNewClick
  end
  object btnUpdate: TTalBitBtn
    Left = 752
    Top = 464
    Width = 120
    Height = 25
    Caption = 'M'#243'dos'#237't'
    TabOrder = 5
    OnClick = dbClick
  end
  object btnCancel: TTalBitBtn
    Left = 1024
    Top = 464
    Width = 120
    Height = 25
    Caption = 'M'#233'gsem'
    TabOrder = 6
    Visible = False
    OnClick = btnCancelClick
  end
  object btnDelete: TTalBitBtn
    Left = 888
    Top = 464
    Width = 120
    Height = 25
    Caption = 'T'#246'r'#246'l'
    TabOrder = 7
    OnClick = btnDeleteClick
  end
  object btnPrint: TTalBitBtn
    Left = 888
    Top = 504
    Width = 120
    Height = 25
    Caption = 'Nyomtat'#225's'
    TabOrder = 8
    OnClick = btnPrintClick
  end
  object btnExport: TTalBitBtn
    Left = 1024
    Top = 504
    Width = 120
    Height = 25
    Caption = 'Export'
    TabOrder = 9
    OnClick = btnExportClick
  end
  object dsHivSzarmIg: TDataSource
    DataSet = sdsHSzIModLap
    Left = 240
    Top = 256
  end
  object sdsHSzIModLap: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select szlapok.igdat, szlapok.tkod, szlapok.ukod, szlapok.egy, s' +
      'zlapok.sor, szlapok.per, szlapok.mas, szlapok.kidat, szlapok.hit' +
      'dat,'#13#10'       szlapok.nyelv, szlapok.kplsz, szlapok.enar, m13 as ' +
      'fulszam, m14 as nev, m15 as szuldat, m16 as tkv, m17 as fajtakod' +
      ','#13#10#9'   ef.fnev as fajtanev, m18 as fajta_szaz, m19 as ivar, m20 ' +
      'as sv, m21 as eletnapi_tgy, m22 as stv_tgy,'#13#10#9'   m23 as kmi, m24' +
      ' as tipus, m25 as izmoltsag, m26 as labszerkezet, m27 as ertekel' +
      'es_datuma,'#13#10'    m28 as apa_kplsz, m29 as apa_enar, m30 as apa_sz' +
      'uldat, m31 as apa_nev, m32 as apa_fulszam, m33 as apa_fajtakod,'#13 +
      #10'       apf.fnev as apa_fajtanev, m34 as apa_fajta_szaz, m35 as ' +
      'apa_sv, m36 as apa_etgy, m37 as apa_stv_tgy, m38 as apa_tipus,'#13#10 +
      #9'   m39 as apa_izmoltsag, m40 as apa_labszerkezet, m41 as apa_er' +
      't_dat,'#13#10'    m42 as anya_nev, m43 as anya_szuldat, m44 as anya_en' +
      'ar, m45 as anya_ellszam, m46 as anya_fulszam, m47 as anya_fajta_' +
      'kod,'#13#10'       anf.fnev as anya_fajtanev, m48 as anya_fajta_szaz, ' +
      'm49 as anya_sv, m50 as anya_kmi, m51 as anya_tipus,'#13#10#9'   m52 as ' +
      'anya_izmoltsag, m53 as anya_labszerkezet, m54 as anya_ert_dat,'#13#10 +
      '    m55 as apai_nagyapa_nev, m56 as apai_nagyapa_szuldat, m57 as' +
      ' apai_nagyapa_kplsz, m58 as apai_nagyapa_enar,'#13#10'       m59 as ap' +
      'ai_nagyapa_fulszam, m60 as apai_nagyapa_fajtakod, appf.fnev as a' +
      'pa_nagyapa_fajtanev,'#13#10'       m61 as apai_nagyapa_fajta_szaz, m62' +
      ' as apai_nagyapa_sv, m63 as apai_nagyapa_tgy, m64 as apai_nagyap' +
      'a_stv_tgy,'#13#10#9'   m65 as apai_nagyapa_tipus, m66 as apai_nagyapa_i' +
      'zmoltsag, m67 as apai_nagyapa_labszerkezet, m68 as apai_nagyapa_' +
      'ertdat,'#13#10#9'   m69 as apai_nagyapa_apja_kplsz, m70 as apai_nagyapa' +
      '_apja_enar, m71 as apai_nagyapa_apja_fulszam, m72 as apai_nagyap' +
      'a_apja_nev,'#13#10'       m73 as apai_nagyapa_anyja_enar, m74 as apai_' +
      'nagyapa_anyja_ellszam, m75 as apai_nagyapa_anyja_fulszam, m76 as' +
      ' apai_nagyapa_anyja_nev,'#13#10'    m77 as apai_nagyanya_nev, m78 as a' +
      'pai_nagyanya_szuldat, m79 as apai_nagyanya_enar, m80 as apai_nag' +
      'yanya_ellszam,'#13#10'       m81 as apai_nagyanya_fulszam, m82 as apai' +
      '_nagyanya_sv, m83 as apai_nagyanya_kmi, m84 as apai_nagyanya_apj' +
      'a_kplsz,'#13#10#9'   m85 as apai_nagyanya_apja_nev, m86 as apai_nagyany' +
      'a_apja_enar, m87 as apai_nagyanya_apja_fulszam,'#13#10'       m88 as a' +
      'pai_nagyanya_anyja_enar, m89 as apai_nagyanya_anyja_ellszam, m90' +
      ' as apai_nagyanya_anyja_fulszam, m91 as apai_nagyanya_anyja_nev,' +
      #13#10'    m92 as anyai_nagyapa_kplsz, m93 as anyai_nagyapa_enar, m94' +
      ' as anyai_nagyapa_fulszam, m95 as anyai_nagyapa_nev, m96 as anya' +
      'i_nagyapa_szuldat,'#13#10'       m97 as anyai_nagyapa_fajtakod, anpf.f' +
      'nev as anyai_nagyapa_fajtanev, m98 as anyai_nagyapa_fajta_szaz, ' +
      'm99 as anyai_nagyapa_SV,'#13#10#9'   m100 as anyai_nagyapa_etgy, m101 a' +
      's anyai_nagyapa_stv_tgy, m102 as anyai_nagyapa_tipus, m103 as an' +
      'yai_nagyapa_izmolts'#225'g,'#13#10#9'   m104 as anyai_nagyapa_labszerkezet, ' +
      'm105 as anyai_nagyapa_ert_dat, m106 as anyai_nagyapa_apja_kplsz,' +
      ' m107 as anyai_nagyapa_apja_enar,'#13#10#9'   m108 as anyai_nagyapa_apj' +
      'a_nev, m109 as anyai_nagyapa_apja_fulszam, m110 as anyai_nagyapa' +
      '_anyja_enar,'#13#10'       m111 as anyai_nagyapa_anyja_nev, m112 as an' +
      'yai_nagyapa_anyja_ellszam, m113 as anyai_nagyapa_anyja_fulszam,'#13 +
      #10'    m114 as anyai_nagyanya_nev, m115 as anyai_nagyanya_szuldat,' +
      ' m116 as anyai_nagyanya_enar, m117 as anyai_nagyanya_ellszam,'#13#10' ' +
      '      m118 as anyai_nagyanya_fulszam, m119 as anyai_nagyanya_sv,' +
      ' m120 as anyai_nagyanya_kmi, m121 as anyai_nagyanya_apja_enar,'#13#10 +
      #9'   m122 as anyai_nagyanya_apja_kplsz, m123 as anyai_nagyanya_ap' +
      'ja_fulszam, m124 as anyai_nagyanya_apja_nev,'#13#10#9'   m125 as anyai_' +
      'nagyanya_anyja_enar, m126 as anyai_nagyanya_anyja_ellszam,'#13#10#9'   ' +
      'm127 as anyai_nagyanya_anyja_fulszam, m128 as anyai_nagyanya_any' +
      'ja_nev,'#13#10'    m129 as term_ideje, m130 as term_bika_kplsz, m131 a' +
      's term_bika_enar, m132 as term_bika_nev,'#13#10'       m133 as term_bi' +
      'ka_szuldat, m134 as term_bika_fulszam, m135 as term_bika_fajtako' +
      'd,'#13#10#9'   tbf.fnev as term_bika_fajtanev, m136 as term_bika_fajta_' +
      'szaz, m137 as term_bika_sv,'#13#10#9'   m138 as term_bika_etgy, m139 as' +
      ' term_bika_stv_tgy, m140 as term_bika_tipus,'#13#10#9'   m141 as term_b' +
      'ika_izmoltsag, m142 as term_bika_labszerkezet, m143 as term_bika' +
      '_ert_dat,'#13#10#9'   m144 as term_bika_apja_kplsz, m145 as term_bika_a' +
      'pja_enar, m146 as term_bika_apja_neve,'#13#10#9'   m147 as term_bika_ap' +
      'ja_szuldat, m148 as term_bika_apja_fulszam, m149 as term_bika_an' +
      'yja_kmi,'#13#10#9'   m150 as term_bika_anyja_nev, m151 as term_bika_any' +
      'ja_enar, m152 as term_bika_anyja_fulszam,'#13#10#9'   m153 as term_bika' +
      '_anyja_sv, m154 as term_bika_anyja_ellszam, m155 as term_bika_an' +
      'yja_szuldat,'#13#10#9'   m156 as term_bika_anyja_tipus, m157 as term_bi' +
      'ka_anyja_izmoltsag,'#13#10'       m158 as term_bika_anyja_labszerkezet' +
      ', m159 as term_bika_anyja_ert_dat,'#9'   '#13#10'    m160 as tenyeszto_ne' +
      'v, m161 as tenyeszto_cim, m162 as tulaj_nev, m163 as tulaj_cim, ' +
      'm164 as tenyeszto_kod, m165 as tulaj_kod,'#13#10#9'szlapok.anya_net_pon' +
      't, szlapok.net_pont, szlapok.iktatoszam, szlapok.e_togy, szlapok' +
      '.anya_togy, szlapok.t_anya_togy, szlapok.apa_net_pont,  szlapok.' +
      'apa_te_tipus, szlapok.apa_te_izmoltsag, szlapok.apa_te_labszerke' +
      'zet, szlapok.apa_te_togy'#13#10'from szlapok'#13#10'left join fajta ef on ef' +
      '.fkod =m17'#13#10'left join fajta apf on apf.fkod=m33'#13#10'left join fajta' +
      ' anf on anf.fkod=m47'#13#10'left join fajta appf on appf.fkod=m60'#13#10'lef' +
      't join fajta anpf on anpf.fkod=m97'#13#10'left join fajta tbf on tbf.f' +
      'kod=m135'#13#10'left join KODOK EIV on EIV.KODTIPUSOK_TIPUSKOD = '#39'IVAR' +
      #39' and EIV.KOD = M19'#13#10'WHERE szlapok.enar = :PENAR and sor = :PSOR' +
      ' and per = :PPER'
    DataSet.Parameters = <
      item
        Name = 'PENAR'
        Size = -1
        Value = Null
      end
      item
        Name = 'PSOR'
        Size = -1
        Value = Null
      end
      item
        Name = 'PPER'
        Size = -1
        Value = Null
      end>
    Provider.DataSet.CommandText = 
      'Select szlapok.igdat, szlapok.tkod, szlapok.ukod, szlapok.egy, s' +
      'zlapok.sor, szlapok.per, szlapok.mas, szlapok.kidat, szlapok.hit' +
      'dat,'#13#10'       szlapok.nyelv, szlapok.kplsz, szlapok.enar, m13 as ' +
      'fulszam, m14 as nev, m15 as szuldat, m16 as tkv, m17 as fajtakod' +
      ','#13#10#9'   ef.fnev as fajtanev, m18 as fajta_szaz, m19 as ivar, m20 ' +
      'as sv, m21 as eletnapi_tgy, m22 as stv_tgy,'#13#10#9'   m23 as kmi, m24' +
      ' as tipus, m25 as izmoltsag, m26 as labszerkezet, m27 as ertekel' +
      'es_datuma,'#13#10'    m28 as apa_kplsz, m29 as apa_enar, m30 as apa_sz' +
      'uldat, m31 as apa_nev, m32 as apa_fulszam, m33 as apa_fajtakod,'#13 +
      #10'       apf.fnev as apa_fajtanev, m34 as apa_fajta_szaz, m35 as ' +
      'apa_sv, m36 as apa_etgy, m37 as apa_stv_tgy, m38 as apa_tipus,'#13#10 +
      #9'   m39 as apa_izmoltsag, m40 as apa_labszerkezet, m41 as apa_er' +
      't_dat,'#13#10'    m42 as anya_nev, m43 as anya_szuldat, m44 as anya_en' +
      'ar, m45 as anya_ellszam, m46 as anya_fulszam, m47 as anya_fajta_' +
      'kod,'#13#10'       anf.fnev as anya_fajtanev, m48 as anya_fajta_szaz, ' +
      'm49 as anya_sv, m50 as anya_kmi, m51 as anya_tipus,'#13#10#9'   m52 as ' +
      'anya_izmoltsag, m53 as anya_labszerkezet, m54 as anya_ert_dat,'#13#10 +
      '    m55 as apai_nagyapa_nev, m56 as apai_nagyapa_szuldat, m57 as' +
      ' apai_nagyapa_kplsz, m58 as apai_nagyapa_enar,'#13#10'       m59 as ap' +
      'ai_nagyapa_fulszam, m60 as apai_nagyapa_fajtakod, appf.fnev as a' +
      'pa_nagyapa_fajtanev,'#13#10'       m61 as apai_nagyapa_fajta_szaz, m62' +
      ' as apai_nagyapa_sv, m63 as apai_nagyapa_tgy, m64 as apai_nagyap' +
      'a_stv_tgy,'#13#10#9'   m65 as apai_nagyapa_tipus, m66 as apai_nagyapa_i' +
      'zmoltsag, m67 as apai_nagyapa_labszerkezet, m68 as apai_nagyapa_' +
      'ertdat,'#13#10#9'   m69 as apai_nagyapa_apja_kplsz, m70 as apai_nagyapa' +
      '_apja_enar, m71 as apai_nagyapa_apja_fulszam, m72 as apai_nagyap' +
      'a_apja_nev,'#13#10'       m73 as apai_nagyapa_anyja_enar, m74 as apai_' +
      'nagyapa_anyja_ellszam, m75 as apai_nagyapa_anyja_fulszam, m76 as' +
      ' apai_nagyapa_anyja_nev,'#13#10'    m77 as apai_nagyanya_nev, m78 as a' +
      'pai_nagyanya_szuldat, m79 as apai_nagyanya_enar, m80 as apai_nag' +
      'yanya_ellszam,'#13#10'       m81 as apai_nagyanya_fulszam, m82 as apai' +
      '_nagyanya_sv, m83 as apai_nagyanya_kmi, m84 as apai_nagyanya_apj' +
      'a_kplsz,'#13#10#9'   m85 as apai_nagyanya_apja_nev, m86 as apai_nagyany' +
      'a_apja_enar, m87 as apai_nagyanya_apja_fulszam,'#13#10'       m88 as a' +
      'pai_nagyanya_anyja_enar, m89 as apai_nagyanya_anyja_ellszam, m90' +
      ' as apai_nagyanya_anyja_fulszam, m91 as apai_nagyanya_anyja_nev,' +
      #13#10'    m92 as anyai_nagyapa_kplsz, m93 as anyai_nagyapa_enar, m94' +
      ' as anyai_nagyapa_fulszam, m95 as anyai_nagyapa_nev, m96 as anya' +
      'i_nagyapa_szuldat,'#13#10'       m97 as anyai_nagyapa_fajtakod, anpf.f' +
      'nev as anyai_nagyapa_fajtanev, m98 as anyai_nagyapa_fajta_szaz, ' +
      'm99 as anyai_nagyapa_SV,'#13#10#9'   m100 as anyai_nagyapa_etgy, m101 a' +
      's anyai_nagyapa_stv_tgy, m102 as anyai_nagyapa_tipus, m103 as an' +
      'yai_nagyapa_izmolts'#225'g,'#13#10#9'   m104 as anyai_nagyapa_labszerkezet, ' +
      'm105 as anyai_nagyapa_ert_dat, m106 as anyai_nagyapa_apja_kplsz,' +
      ' m107 as anyai_nagyapa_apja_enar,'#13#10#9'   m108 as anyai_nagyapa_apj' +
      'a_nev, m109 as anyai_nagyapa_apja_fulszam, m110 as anyai_nagyapa' +
      '_anyja_enar,'#13#10'       m111 as anyai_nagyapa_anyja_nev, m112 as an' +
      'yai_nagyapa_anyja_ellszam, m113 as anyai_nagyapa_anyja_fulszam,'#13 +
      #10'    m114 as anyai_nagyanya_nev, m115 as anyai_nagyanya_szuldat,' +
      ' m116 as anyai_nagyanya_enar, m117 as anyai_nagyanya_ellszam,'#13#10' ' +
      '      m118 as anyai_nagyanya_fulszam, m119 as anyai_nagyanya_sv,' +
      ' m120 as anyai_nagyanya_kmi, m121 as anyai_nagyanya_apja_enar,'#13#10 +
      #9'   m122 as anyai_nagyanya_apja_kplsz, m123 as anyai_nagyanya_ap' +
      'ja_fulszam, m124 as anyai_nagyanya_apja_nev,'#13#10#9'   m125 as anyai_' +
      'nagyanya_anyja_enar, m126 as anyai_nagyanya_anyja_ellszam,'#13#10#9'   ' +
      'm127 as anyai_nagyanya_anyja_fulszam, m128 as anyai_nagyanya_any' +
      'ja_nev,'#13#10'    m129 as term_ideje, m130 as term_bika_kplsz, m131 a' +
      's term_bika_enar, m132 as term_bika_nev,'#13#10'       m133 as term_bi' +
      'ka_szuldat, m134 as term_bika_fulszam, m135 as term_bika_fajtako' +
      'd,'#13#10#9'   tbf.fnev as term_bika_fajtanev, m136 as term_bika_fajta_' +
      'szaz, m137 as term_bika_sv,'#13#10#9'   m138 as term_bika_etgy, m139 as' +
      ' term_bika_stv_tgy, m140 as term_bika_tipus,'#13#10#9'   m141 as term_b' +
      'ika_izmoltsag, m142 as term_bika_labszerkezet, m143 as term_bika' +
      '_ert_dat,'#13#10#9'   m144 as term_bika_apja_kplsz, m145 as term_bika_a' +
      'pja_enar, m146 as term_bika_apja_neve,'#13#10#9'   m147 as term_bika_ap' +
      'ja_szuldat, m148 as term_bika_apja_fulszam, m149 as term_bika_an' +
      'yja_kmi,'#13#10#9'   m150 as term_bika_anyja_nev, m151 as term_bika_any' +
      'ja_enar, m152 as term_bika_anyja_fulszam,'#13#10#9'   m153 as term_bika' +
      '_anyja_sv, m154 as term_bika_anyja_ellszam, m155 as term_bika_an' +
      'yja_szuldat,'#13#10#9'   m156 as term_bika_anyja_tipus, m157 as term_bi' +
      'ka_anyja_izmoltsag,'#13#10'       m158 as term_bika_anyja_labszerkezet' +
      ', m159 as term_bika_anyja_ert_dat,'#9'   '#13#10'    m160 as tenyeszto_ne' +
      'v, m161 as tenyeszto_cim, m162 as tulaj_nev, m163 as tulaj_cim, ' +
      'm164 as tenyeszto_kod, m165 as tulaj_kod,'#13#10#9'szlapok.anya_net_pon' +
      't, szlapok.net_pont, szlapok.iktatoszam, szlapok.e_togy, szlapok' +
      '.anya_togy, szlapok.t_anya_togy, szlapok.apa_net_pont,  szlapok.' +
      'apa_te_tipus, szlapok.apa_te_izmoltsag, szlapok.apa_te_labszerke' +
      'zet, szlapok.apa_te_togy'#13#10'from szlapok'#13#10'left join fajta ef on ef' +
      '.fkod =m17'#13#10'left join fajta apf on apf.fkod=m33'#13#10'left join fajta' +
      ' anf on anf.fkod=m47'#13#10'left join fajta appf on appf.fkod=m60'#13#10'lef' +
      't join fajta anpf on anpf.fkod=m97'#13#10'left join fajta tbf on tbf.f' +
      'kod=m135'#13#10'left join KODOK EIV on EIV.KODTIPUSOK_TIPUSKOD = '#39'IVAR' +
      #39' and EIV.KOD = M19'#13#10'WHERE szlapok.enar = :PENAR and sor = :PSOR' +
      ' and per = :PPER'
    Provider.DataSet.Parameters = <
      item
        Name = 'PENAR'
        Size = -1
        Value = Null
      end
      item
        Name = 'PSOR'
        Size = -1
        Value = Null
      end
      item
        Name = 'PPER'
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Provider.UpdateMode = upWhereChanged
    FieldDefs = <
      item
        Name = 'IGDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'UKOD'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'EGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'SOR'
        DataType = ftInteger
      end
      item
        Name = 'PER'
        DataType = ftInteger
      end
      item
        Name = 'MAS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'KIDAT'
        DataType = ftDateTime
      end
      item
        Name = 'HITDAT'
        DataType = ftDateTime
      end
      item
        Name = 'NYELV'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TKV'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'IVAR'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'SV'
        DataType = ftInteger
      end
      item
        Name = 'ELETNAPI_TGY'
        DataType = ftInteger
      end
      item
        Name = 'STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ERTEKELES_DATUMA'
        DataType = ftDateTime
      end
      item
        Name = 'APA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'APA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'APA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 2
        Size = 6
      end
      item
        Name = 'APA_SV'
        DataType = ftInteger
      end
      item
        Name = 'APA_ETGY'
        DataType = ftInteger
      end
      item
        Name = 'APA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'APA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYA_FAJTA_KOD'
        DataType = ftInteger
      end
      item
        Name = 'ANYA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYA_SV'
        DataType = ftInteger
      end
      item
        Name = 'ANYA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYAPA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYAPA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYAPA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'APAI_NAGYAPA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'APA_NAGYAPA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYAPA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'APAI_NAGYAPA_SV'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYAPA_TGY'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYAPA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYAPA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APAI_NAGYAPA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APAI_NAGYAPA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APAI_NAGYAPA_ERTDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYAPA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'APAI_NAGYAPA_APJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYANYA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYANYA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYANYA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_SV'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYANYA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'APAI_NAGYANYA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'APAI_NAGYANYA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYANYA_APJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'ANYAI_NAGYAPA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYAI_NAGYAPA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYAI_NAGYAPA_SV'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_ETGY'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYAI_NAGYAPA_IZMOLTS'#193'G'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYAI_NAGYAPA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYAI_NAGYAPA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYANYA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYAI_NAGYANYA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_SV'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYANYA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_IDEJE'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'TERM_BIKA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'TERM_BIKA_SV'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_ETGY'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'TERM_BIKA_APJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_APJA_NEVE'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_APJA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_ANYJA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'TERM_BIKA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_ANYJA_SV'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_ANYJA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_ANYJA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ANYJA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ANYJA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ANYJA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'TENYESZTO_NEV'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TENYESZTO_CIM'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TULAJ_NEV'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TULAJ_CIM'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TENYESZTO_KOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'TULAJ_KOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'ANYA_NET_PONT'
        DataType = ftInteger
      end
      item
        Name = 'NET_PONT'
        DataType = ftInteger
      end
      item
        Name = 'IKTATOSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'E_TOGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_TOGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'T_ANYA_TOGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_NET_PONT'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_TIPUS'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_IZMOLTSAG'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_LABSZERKEZET'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_TOGY'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnReconcileError = sdsHSzIModLapReconcileError
    Left = 144
    Top = 256
    object sdsHSzIModLapIGDAT: TDateTimeField
      FieldName = 'IGDAT'
    end
    object sdsHSzIModLapTKOD: TWideStringField
      FieldName = 'TKOD'
      Size = 7
    end
    object sdsHSzIModLapUKOD: TWideStringField
      FieldName = 'UKOD'
      Size = 3
    end
    object sdsHSzIModLapEGY: TWideStringField
      FieldName = 'EGY'
      Size = 1
    end
    object sdsHSzIModLapSOR: TIntegerField
      FieldName = 'SOR'
    end
    object sdsHSzIModLapPER: TIntegerField
      FieldName = 'PER'
    end
    object sdsHSzIModLapMAS: TWideStringField
      FieldName = 'MAS'
      Size = 1
    end
    object sdsHSzIModLapKIDAT: TDateTimeField
      FieldName = 'KIDAT'
    end
    object sdsHSzIModLapHITDAT: TDateTimeField
      FieldName = 'HITDAT'
    end
    object sdsHSzIModLapNYELV: TWideStringField
      FieldName = 'NYELV'
      Size = 1
    end
    object sdsHSzIModLapKPLSZ: TBCDField
      FieldName = 'KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHSzIModLapENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 10
    end
    object sdsHSzIModLapFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
    end
    object sdsHSzIModLapNEV: TWideStringField
      FieldName = 'NEV'
      Size = 40
    end
    object sdsHSzIModLapSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsHSzIModLapTKV: TWideStringField
      FieldName = 'TKV'
      Size = 1
    end
    object sdsHSzIModLapFAJTAKOD: TIntegerField
      FieldName = 'FAJTAKOD'
    end
    object sdsHSzIModLapFAJTANEV: TWideStringField
      FieldName = 'FAJTANEV'
      Size = 40
    end
    object sdsHSzIModLapIVAR: TWideStringField
      FieldName = 'IVAR'
      Size = 1
    end
    object sdsHSzIModLapSV: TIntegerField
      FieldName = 'SV'
    end
    object sdsHSzIModLapELETNAPI_TGY: TIntegerField
      FieldName = 'ELETNAPI_TGY'
    end
    object sdsHSzIModLapSTV_TGY: TIntegerField
      FieldName = 'STV_TGY'
    end
    object sdsHSzIModLapKMI: TBCDField
      FieldName = 'KMI'
      Precision = 6
      Size = 2
    end
    object sdsHSzIModLapTIPUS: TWideStringField
      FieldName = 'TIPUS'
      Size = 1
    end
    object sdsHSzIModLapIZMOLTSAG: TWideStringField
      FieldName = 'IZMOLTSAG'
      Size = 1
    end
    object sdsHSzIModLapLABSZERKEZET: TWideStringField
      FieldName = 'LABSZERKEZET'
      Size = 1
    end
    object sdsHSzIModLapERTEKELES_DATUMA: TDateTimeField
      FieldName = 'ERTEKELES_DATUMA'
    end
    object sdsHSzIModLapAPA_KPLSZ: TBCDField
      FieldName = 'APA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHSzIModLapAPA_ENAR: TWideStringField
      FieldName = 'APA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapAPA_SZULDAT: TDateTimeField
      FieldName = 'APA_SZULDAT'
    end
    object sdsHSzIModLapAPA_NEV: TWideStringField
      FieldName = 'APA_NEV'
      Size = 40
    end
    object sdsHSzIModLapAPA_FULSZAM: TWideStringField
      FieldName = 'APA_FULSZAM'
    end
    object sdsHSzIModLapAPA_FAJTAKOD: TIntegerField
      FieldName = 'APA_FAJTAKOD'
    end
    object sdsHSzIModLapAPA_FAJTANEV: TWideStringField
      FieldName = 'APA_FAJTANEV'
      Size = 40
    end
    object sdsHSzIModLapAPA_SV: TIntegerField
      FieldName = 'APA_SV'
    end
    object sdsHSzIModLapAPA_ETGY: TIntegerField
      FieldName = 'APA_ETGY'
    end
    object sdsHSzIModLapAPA_STV_TGY: TIntegerField
      FieldName = 'APA_STV_TGY'
    end
    object sdsHSzIModLapAPA_TIPUS: TWideStringField
      FieldName = 'APA_TIPUS'
      Size = 1
    end
    object sdsHSzIModLapAPA_IZMOLTSAG: TWideStringField
      FieldName = 'APA_IZMOLTSAG'
      Size = 1
    end
    object sdsHSzIModLapAPA_LABSZERKEZET: TWideStringField
      FieldName = 'APA_LABSZERKEZET'
      Size = 1
    end
    object sdsHSzIModLapAPA_ERT_DAT: TDateTimeField
      FieldName = 'APA_ERT_DAT'
    end
    object sdsHSzIModLapANYA_NEV: TWideStringField
      FieldName = 'ANYA_NEV'
      Size = 40
    end
    object sdsHSzIModLapANYA_SZULDAT: TDateTimeField
      FieldName = 'ANYA_SZULDAT'
    end
    object sdsHSzIModLapANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapANYA_ELLSZAM: TWideStringField
      FieldName = 'ANYA_ELLSZAM'
      Size = 11
    end
    object sdsHSzIModLapANYA_FULSZAM: TWideStringField
      FieldName = 'ANYA_FULSZAM'
    end
    object sdsHSzIModLapANYA_FAJTA_KOD: TIntegerField
      FieldName = 'ANYA_FAJTA_KOD'
    end
    object sdsHSzIModLapANYA_FAJTANEV: TWideStringField
      FieldName = 'ANYA_FAJTANEV'
      Size = 40
    end
    object sdsHSzIModLapANYA_FAJTA_SZAZ: TBCDField
      FieldName = 'ANYA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsHSzIModLapANYA_SV: TIntegerField
      FieldName = 'ANYA_SV'
    end
    object sdsHSzIModLapANYA_KMI: TBCDField
      FieldName = 'ANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsHSzIModLapANYA_TIPUS: TWideStringField
      FieldName = 'ANYA_TIPUS'
      Size = 1
    end
    object sdsHSzIModLapANYA_IZMOLTSAG: TWideStringField
      FieldName = 'ANYA_IZMOLTSAG'
      Size = 1
    end
    object sdsHSzIModLapANYA_LABSZERKEZET: TWideStringField
      FieldName = 'ANYA_LABSZERKEZET'
      Size = 1
    end
    object sdsHSzIModLapANYA_ERT_DAT: TDateTimeField
      FieldName = 'ANYA_ERT_DAT'
    end
    object sdsHSzIModLapAPAI_NAGYAPA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_NEV'
      Size = 40
    end
    object sdsHSzIModLapAPAI_NAGYAPA_SZULDAT: TDateTimeField
      FieldName = 'APAI_NAGYAPA_SZULDAT'
    end
    object sdsHSzIModLapAPAI_NAGYAPA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYAPA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHSzIModLapAPAI_NAGYAPA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapAPAI_NAGYAPA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_FULSZAM'
    end
    object sdsHSzIModLapAPAI_NAGYAPA_FAJTAKOD: TIntegerField
      FieldName = 'APAI_NAGYAPA_FAJTAKOD'
    end
    object sdsHSzIModLapAPA_NAGYAPA_FAJTANEV: TWideStringField
      FieldName = 'APA_NAGYAPA_FAJTANEV'
      Size = 40
    end
    object sdsHSzIModLapAPAI_NAGYAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'APAI_NAGYAPA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsHSzIModLapAPAI_NAGYAPA_SV: TIntegerField
      FieldName = 'APAI_NAGYAPA_SV'
    end
    object sdsHSzIModLapAPAI_NAGYAPA_TGY: TIntegerField
      FieldName = 'APAI_NAGYAPA_TGY'
    end
    object sdsHSzIModLapAPAI_NAGYAPA_STV_TGY: TIntegerField
      FieldName = 'APAI_NAGYAPA_STV_TGY'
    end
    object sdsHSzIModLapAPAI_NAGYAPA_TIPUS: TWideStringField
      FieldName = 'APAI_NAGYAPA_TIPUS'
      Size = 1
    end
    object sdsHSzIModLapAPAI_NAGYAPA_IZMOLTSAG: TWideStringField
      FieldName = 'APAI_NAGYAPA_IZMOLTSAG'
      Size = 1
    end
    object sdsHSzIModLapAPAI_NAGYAPA_LABSZERKEZET: TWideStringField
      FieldName = 'APAI_NAGYAPA_LABSZERKEZET'
      Size = 1
    end
    object sdsHSzIModLapAPAI_NAGYAPA_ERTDAT: TDateTimeField
      FieldName = 'APAI_NAGYAPA_ERTDAT'
    end
    object sdsHSzIModLapAPAI_NAGYAPA_APJA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYAPA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHSzIModLapAPAI_NAGYAPA_APJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapAPAI_NAGYAPA_APJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_FULSZAM'
    end
    object sdsHSzIModLapAPAI_NAGYAPA_APJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_NEV'
      Size = 40
    end
    object sdsHSzIModLapAPAI_NAGYAPA_ANYJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapAPAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsHSzIModLapAPAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_FULSZAM'
    end
    object sdsHSzIModLapAPAI_NAGYAPA_ANYJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_NEV'
      Size = 40
    end
    object sdsHSzIModLapAPAI_NAGYANYA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_NEV'
      Size = 40
    end
    object sdsHSzIModLapAPAI_NAGYANYA_SZULDAT: TDateTimeField
      FieldName = 'APAI_NAGYANYA_SZULDAT'
    end
    object sdsHSzIModLapAPAI_NAGYANYA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapAPAI_NAGYANYA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ELLSZAM'
      Size = 11
    end
    object sdsHSzIModLapAPAI_NAGYANYA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_FULSZAM'
    end
    object sdsHSzIModLapAPAI_NAGYANYA_SV: TIntegerField
      FieldName = 'APAI_NAGYANYA_SV'
    end
    object sdsHSzIModLapAPAI_NAGYANYA_KMI: TBCDField
      FieldName = 'APAI_NAGYANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsHSzIModLapAPAI_NAGYANYA_APJA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYANYA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHSzIModLapAPAI_NAGYANYA_APJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_NEV'
      Size = 40
    end
    object sdsHSzIModLapAPAI_NAGYANYA_APJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapAPAI_NAGYANYA_APJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_FULSZAM'
    end
    object sdsHSzIModLapAPAI_NAGYANYA_ANYJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapAPAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsHSzIModLapAPAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_FULSZAM'
    end
    object sdsHSzIModLapAPAI_NAGYANYA_ANYJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_NEV'
      Size = 40
    end
    object sdsHSzIModLapANYAI_NAGYAPA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHSzIModLapANYAI_NAGYAPA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapANYAI_NAGYAPA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_FULSZAM'
    end
    object sdsHSzIModLapANYAI_NAGYAPA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_NEV'
      Size = 40
    end
    object sdsHSzIModLapANYAI_NAGYAPA_SZULDAT: TDateTimeField
      FieldName = 'ANYAI_NAGYAPA_SZULDAT'
    end
    object sdsHSzIModLapANYAI_NAGYAPA_FAJTAKOD: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_FAJTAKOD'
    end
    object sdsHSzIModLapANYAI_NAGYAPA_FAJTANEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_FAJTANEV'
      Size = 40
    end
    object sdsHSzIModLapANYAI_NAGYAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsHSzIModLapANYAI_NAGYAPA_SV: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_SV'
    end
    object sdsHSzIModLapANYAI_NAGYAPA_ETGY: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_ETGY'
    end
    object sdsHSzIModLapANYAI_NAGYAPA_STV_TGY: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_STV_TGY'
    end
    object sdsHSzIModLapANYAI_NAGYAPA_TIPUS: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_TIPUS'
      Size = 1
    end
    object sdsHSzIModLapANYAI_NAGYAPA_IZMOLTSG: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_IZMOLTS'#193'G'
      Size = 1
    end
    object sdsHSzIModLapANYAI_NAGYAPA_LABSZERKEZET: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_LABSZERKEZET'
      Size = 1
    end
    object sdsHSzIModLapANYAI_NAGYAPA_ERT_DAT: TDateTimeField
      FieldName = 'ANYAI_NAGYAPA_ERT_DAT'
    end
    object sdsHSzIModLapANYAI_NAGYAPA_APJA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHSzIModLapANYAI_NAGYAPA_APJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapANYAI_NAGYAPA_APJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_NEV'
      Size = 40
    end
    object sdsHSzIModLapANYAI_NAGYAPA_APJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_FULSZAM'
    end
    object sdsHSzIModLapANYAI_NAGYAPA_ANYJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapANYAI_NAGYAPA_ANYJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_NEV'
      Size = 40
    end
    object sdsHSzIModLapANYAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsHSzIModLapANYAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_FULSZAM'
    end
    object sdsHSzIModLapANYAI_NAGYANYA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_NEV'
      Size = 40
    end
    object sdsHSzIModLapANYAI_NAGYANYA_SZULDAT: TDateTimeField
      FieldName = 'ANYAI_NAGYANYA_SZULDAT'
    end
    object sdsHSzIModLapANYAI_NAGYANYA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapANYAI_NAGYANYA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ELLSZAM'
      Size = 11
    end
    object sdsHSzIModLapANYAI_NAGYANYA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_FULSZAM'
    end
    object sdsHSzIModLapANYAI_NAGYANYA_SV: TIntegerField
      FieldName = 'ANYAI_NAGYANYA_SV'
    end
    object sdsHSzIModLapANYAI_NAGYANYA_KMI: TBCDField
      FieldName = 'ANYAI_NAGYANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsHSzIModLapANYAI_NAGYANYA_APJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapANYAI_NAGYANYA_APJA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYANYA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHSzIModLapANYAI_NAGYANYA_APJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_FULSZAM'
    end
    object sdsHSzIModLapANYAI_NAGYANYA_APJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_NEV'
      Size = 40
    end
    object sdsHSzIModLapANYAI_NAGYANYA_ANYJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapANYAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsHSzIModLapANYAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_FULSZAM'
    end
    object sdsHSzIModLapANYAI_NAGYANYA_ANYJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_NEV'
      Size = 40
    end
    object sdsHSzIModLapTERM_IDEJE: TDateTimeField
      FieldName = 'TERM_IDEJE'
    end
    object sdsHSzIModLapTERM_BIKA_KPLSZ: TBCDField
      FieldName = 'TERM_BIKA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHSzIModLapTERM_BIKA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapTERM_BIKA_NEV: TWideStringField
      FieldName = 'TERM_BIKA_NEV'
      Size = 40
    end
    object sdsHSzIModLapTERM_BIKA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_SZULDAT'
    end
    object sdsHSzIModLapTERM_BIKA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_FULSZAM'
    end
    object sdsHSzIModLapTERM_BIKA_FAJTAKOD: TIntegerField
      FieldName = 'TERM_BIKA_FAJTAKOD'
    end
    object sdsHSzIModLapTERM_BIKA_FAJTANEV: TWideStringField
      FieldName = 'TERM_BIKA_FAJTANEV'
      Size = 40
    end
    object sdsHSzIModLapTERM_BIKA_FAJTA_SZAZ: TBCDField
      FieldName = 'TERM_BIKA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsHSzIModLapTERM_BIKA_SV: TIntegerField
      FieldName = 'TERM_BIKA_SV'
    end
    object sdsHSzIModLapTERM_BIKA_ETGY: TIntegerField
      FieldName = 'TERM_BIKA_ETGY'
    end
    object sdsHSzIModLapTERM_BIKA_STV_TGY: TIntegerField
      FieldName = 'TERM_BIKA_STV_TGY'
    end
    object sdsHSzIModLapTERM_BIKA_TIPUS: TWideStringField
      FieldName = 'TERM_BIKA_TIPUS'
      Size = 1
    end
    object sdsHSzIModLapTERM_BIKA_IZMOLTSAG: TWideStringField
      FieldName = 'TERM_BIKA_IZMOLTSAG'
      Size = 1
    end
    object sdsHSzIModLapTERM_BIKA_LABSZERKEZET: TWideStringField
      FieldName = 'TERM_BIKA_LABSZERKEZET'
      Size = 1
    end
    object sdsHSzIModLapTERM_BIKA_ERT_DAT: TDateTimeField
      FieldName = 'TERM_BIKA_ERT_DAT'
    end
    object sdsHSzIModLapTERM_BIKA_APJA_KPLSZ: TBCDField
      FieldName = 'TERM_BIKA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsHSzIModLapTERM_BIKA_APJA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_APJA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapTERM_BIKA_APJA_NEVE: TWideStringField
      FieldName = 'TERM_BIKA_APJA_NEVE'
      Size = 40
    end
    object sdsHSzIModLapTERM_BIKA_APJA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_APJA_SZULDAT'
    end
    object sdsHSzIModLapTERM_BIKA_APJA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_APJA_FULSZAM'
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_KMI: TBCDField
      FieldName = 'TERM_BIKA_ANYJA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_NEV: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_NEV'
      Size = 40
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_ENAR'
      Size = 10
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_FULSZAM'
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_SV: TIntegerField
      FieldName = 'TERM_BIKA_ANYJA_SV'
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_ANYJA_SZULDAT'
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_TIPUS: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_TIPUS'
      Size = 1
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_IZMOLTSAG: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_IZMOLTSAG'
      Size = 1
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_LABSZERKEZET: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_LABSZERKEZET'
      Size = 1
    end
    object sdsHSzIModLapTERM_BIKA_ANYJA_ERT_DAT: TDateTimeField
      FieldName = 'TERM_BIKA_ANYJA_ERT_DAT'
    end
    object sdsHSzIModLapTENYESZTO_NEV: TWideStringField
      FieldName = 'TENYESZTO_NEV'
      Size = 39
    end
    object sdsHSzIModLapTENYESZTO_CIM: TWideStringField
      FieldName = 'TENYESZTO_CIM'
      Size = 39
    end
    object sdsHSzIModLapTULAJ_NEV: TWideStringField
      FieldName = 'TULAJ_NEV'
      Size = 39
    end
    object sdsHSzIModLapTULAJ_CIM: TWideStringField
      FieldName = 'TULAJ_CIM'
      Size = 39
    end
    object sdsHSzIModLapTENYESZTO_KOD: TWideStringField
      FieldName = 'TENYESZTO_KOD'
      Size = 7
    end
    object sdsHSzIModLapTULAJ_KOD: TWideStringField
      FieldName = 'TULAJ_KOD'
      Size = 7
    end
    object sdsHSzIModLapANYA_NET_PONT: TIntegerField
      FieldName = 'ANYA_NET_PONT'
    end
    object sdsHSzIModLapNET_PONT: TIntegerField
      FieldName = 'NET_PONT'
    end
    object sdsHSzIModLapIKTATOSZAM: TWideStringField
      FieldName = 'IKTATOSZAM'
    end
    object sdsHSzIModLapE_TOGY: TWideStringField
      FieldName = 'E_TOGY'
      Size = 1
    end
    object sdsHSzIModLapANYA_TOGY: TWideStringField
      FieldName = 'ANYA_TOGY'
      Size = 1
    end
    object sdsHSzIModLapT_ANYA_TOGY: TWideStringField
      FieldName = 'T_ANYA_TOGY'
      Size = 1
    end
    object sdsHSzIModLapAPA_NET_PONT: TIntegerField
      FieldName = 'APA_NET_PONT'
    end
    object sdsHSzIModLapAPA_TE_TIPUS: TIntegerField
      FieldName = 'APA_TE_TIPUS'
    end
    object sdsHSzIModLapAPA_TE_IZMOLTSAG: TIntegerField
      FieldName = 'APA_TE_IZMOLTSAG'
    end
    object sdsHSzIModLapAPA_TE_LABSZERKEZET: TIntegerField
      FieldName = 'APA_TE_LABSZERKEZET'
    end
    object sdsHSzIModLapAPA_TE_TOGY: TIntegerField
      FieldName = 'APA_TE_TOGY'
    end
    object sdsHSzIModLapFAJTA_SZAZ: TBCDField
      FieldName = 'FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsHSzIModLapAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'APA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
  end
  object dsHivSzarmLap: TDataSource
    DataSet = sdsHSzIModLap
    Left = 808
    Top = 512
  end
  object qComboTolt: TADOQuery
    Parameters = <>
    Left = 376
    Top = 520
  end
  object stpSzarmigMod: TADOStoredProc
    Parameters = <>
    Left = 496
    Top = 520
  end
  object qryEfajta: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 464
    Top = 446
    object qryEfajtaFKOD: TSmallintField
      FieldName = 'FKOD'
    end
    object qryEfajtaFNEV: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsEfajta: TDataSource
    DataSet = qryEfajta
    Left = 570
    Top = 518
  end
  object qryIvar: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'select KODOK.KOD, KODOK.KOD_NEV'
      'from KODOK '
      'where KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39)
    Left = 720
    Top = 510
    object qryIvarKOD: TWideStringField
      FieldName = 'KOD'
      Size = 10
    end
    object qryIvarKOD_NEV: TWideStringField
      FieldName = 'KOD_NEV'
      Size = 30
    end
  end
  object dtsIvar: TDataSource
    DataSet = qryIvar
    Left = 842
    Top = 566
  end
  object qryApaFajta: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 384
    Top = 454
    object SmallintField1: TSmallintField
      FieldName = 'FKOD'
    end
    object WideStringField1: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsApaFajta: TDataSource
    DataSet = qryApaFajta
    Left = 434
    Top = 470
  end
  object qryAnyaFajta: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 512
    Top = 454
    object SmallintField2: TSmallintField
      FieldName = 'FKOD'
    end
    object WideStringField2: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsAnyaFajta: TDataSource
    DataSet = qryAnyaFajta
    Left = 418
    Top = 582
  end
  object qryApaapa: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 632
    Top = 526
    object SmallintField3: TSmallintField
      FieldName = 'FKOD'
    end
    object WideStringField3: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsApaapa: TDataSource
    DataSet = qryApaapa
    Left = 778
    Top = 574
  end
  object qryAnyaApa: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 624
    Top = 574
    object SmallintField4: TSmallintField
      FieldName = 'FKOD'
    end
    object WideStringField4: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsAnyaApa: TDataSource
    DataSet = qryAnyaApa
    Left = 722
    Top = 582
  end
  object qryTFajta: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 560
    Top = 454
    object SmallintField5: TSmallintField
      FieldName = 'FKOD'
    end
    object WideStringField5: TWideStringField
      FieldName = 'FNEV'
      FixedChar = True
      Size = 40
    end
  end
  object dtsTfajta: TDataSource
    DataSet = qryTFajta
    Left = 938
    Top = 558
  end
  object dtsKeres: TDataSource
    DataSet = sdsKeres
    Left = 155
    Top = 44
  end
  object sdsKeres: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'select sor, per, enar, kplsz, kidat from szlapok'#13#10'order by per, ' +
      'sor, enar'
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'select sor, per, enar, kplsz, kidat from szlapok'#13#10'order by per, ' +
      'sor, enar'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 52
    Top = 60
    object sdsKeresSOR: TIntegerField
      DisplayWidth = 5
      FieldName = 'SOR'
    end
    object sdsKeresPER: TIntegerField
      DisplayWidth = 4
      FieldName = 'PER'
    end
    object sdsKeresENAR: TWideStringField
      DisplayWidth = 16
      FieldName = 'ENAR'
      Size = 16
    end
    object sdsKeresKPLSZ: TBCDField
      DisplayWidth = 5
      FieldName = 'KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsKeresKIDAT: TDateTimeField
      DisplayWidth = 10
      FieldName = 'KIDAT'
    end
  end
  object spCreateNewSZLAPOK: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'HIV_SZARMIG_SZLAPOK'
    Parameters = <
      item
        Name = 'PEGYED_ENAR'
        Attributes = [paNullable]
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 512
    Top = 576
  end
  object frxRepListak: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 40240.498815532400000000
    ReportOptions.LastChange = 42565.837180844910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'Var'
      '       ivar : String;'
      ''
      'procedure Memo1OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  Memo1.Text := Copy(<frxDBSzLapok."ENAR">,6,4);'
      'end;'
      ''
      'procedure Memo37OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  Memo37.Text := Copy(<frxDBSzLapok."ENAR">,10,1);'
      'end;'
      ''
      'procedure Memo39OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  Memo39.Text := Copy(<frxDBSzLapok."ENAR">,1,5);'
      'end;'
      ''
      'begin'
      '       ivar := Copy(<frxDBSzLapok."IVAR">,1,1);'
      '       if ivar = '#39'1'#39' then'
      '       begin'
      '               MemoTermekenyites.visible := false;'
      '               MemoBikaIdeje.visible := false;'
      '               MemoBikaBika.visible := false;'
      '               MemoBikaKPLSZ.visible := false;'
      '               MemoBikaENAR.visible := false;'
      '               MemoBikaFajta.visible := false;'
      '               MemoBikaNev.visible := false;'
      '               MemoBikaSzulIdo.visible := false;'
      '               MemoBikaSV.visible := false;'
      '               MemoBikaFulszam.visible := false;'
      '               MemoBikaSz.visible := false;'
      '               MemoBikaEtgy.visible := false;'
      '               MemoBikaSTV.visible := false;'
      '               MemoBikaApja.visible := false;'
      '               MemoBikaApjaKPLSZ.visible := false;'
      '               MemoBikaApjaNev.visible := false;'
      '               MemoBikaApjaSzuldat.visible := false;'
      '               MemoBikaApjaENAR.visible := false;'
      '               MemoBikaApjaFulszam.visible := false;'
      '               MemoBikaAnyja.visible := false;'
      '               MemoBikaAnyjaENAR.visible := false;'
      '               MemoBikaAnyjaNev.visible := false;'
      '               MemoBikaAnyjaSzuldat.visible := false;'
      '               MemoBikaAnyjaEllszam.visible := false;'
      '               MemoBikaAnyjaFulszam.visible := false;'
      '               MemoTermIdeje.visible := false;'
      '               MemoTermBikaSzuldat.visible := false;'
      '               MemoTermBikaApjaSzuldat.visible := false;'
      '               MemoTermBikaAnyjaSzuldat.visible := false;'
      '       end;'
      'end.')
    Left = 1112
    Top = 552
    Datasets = <
      item
        DataSet = frxDBSzLapok
        DataSetName = 'frxDBSzLapok'
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
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 1080.945580000000000000
        object Memo16: TfrxMemoView
          Left = 5.669252280000000000
          Top = 34.015770000000000000
          Width = 332.598247010000000000
          Height = 22.677172680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[p0]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 582.047620000000000000
          Top = 34.015809060000000000
          Width = 396.850257010000000000
          Height = 22.677172680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'OFFICIAL PEDIGREE CERTIFICATE / OFFICIELLE ZUCHTBESCHEINIGUNG')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 642.520100000000000000
        Top = 143.622140000000000000
        Width = 1080.945580000000000000
        DataSet = frxDBSzLapok
        DataSetName = 'frxDBSzLapok'
        RowCount = 1
        object Shape1: TfrxShapeView
          Width = 309.921460000000000000
          Height = 22.677180000000000000
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'E G Y E D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Left = 309.921460000000000000
          Top = 105.826840000000000000
          Width = 347.716760000000000000
          Height = 22.677165350000000000
        end
        object Shape3: TfrxShapeView
          Left = 657.638220000000000000
          Width = 321.260050000000000000
          Height = 22.677180000000000000
        end
        object Shape4: TfrxShapeView
          Top = 22.677180000000000000
          Width = 309.921460000000000000
          Height = 151.181200000000000000
        end
        object Memo6: TfrxMemoView
          Left = 260.787570000000000000
          Top = 30.236240000000000000
          Width = 45.354323390000000000
          Height = 11.338590000000000000
          DataField = 'SZULDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."SZULDAT"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 45.354360000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 60.472480000000000000
          Top = 60.472480000000000000
          Width = 27.590551180000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Fajta:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Top = 98.267780000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ivar:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 7.559060000000000000
          Top = 113.385900000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Top = 98.267780000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DataField = 'IVAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."IVAR"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 60.472480000000000000
          Top = 113.385900000000000000
          Width = 86.929190000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            #258#8240'letnapi t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 173.858380000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'STV alatti t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Top = 173.858380000000000000
          Width = 309.921460000000000000
          Height = 22.677180000000000000
        end
        object MemoTermekenyites: TfrxMemoView
          Left = 11.338590000000000000
          Top = 177.637910000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'T E R M '#258#8240' K E N Y '#258#356' T '#258#8240' S')
          ParentFont = False
          VAlign = vaCenter
        end
        object ShapeBika: TfrxShapeView
          Top = 196.535560000000000000
          Width = 309.921259840000000000
          Height = 222.992270000000000000
        end
        object Shape7: TfrxShapeView
          Top = 419.527830000000000000
          Width = 309.921460000000000000
          Height = 64.252010000000000000
        end
        object Shape8: TfrxShapeView
          Top = 483.779840000000000000
          Width = 309.921460000000000000
          Height = 113.385900000000000000
        end
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Top = 423.307360000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'T E N Y '#258#8240' S Z T '#313#144)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 37.795300000000000000
          Top = 438.425480000000000000
          Width = 177.637910000000000000
          Height = 11.338582680000000000
          DataField = 'TENYESZTO_KOD'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TENYESZTO_KOD"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 37.795300000000000000
          Top = 453.543600000000000000
          Width = 177.637910000000000000
          Height = 11.338582680000000000
          DataField = 'TENYESZTO_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TENYESZTO_NEV"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 37.795300000000000000
          Top = 468.661720000000000000
          Width = 177.637910000000000000
          Height = 11.338582680000000000
          DataField = 'TENYESZTO_CIM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TENYESZTO_CIM"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Top = 487.559370000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'T U L A J D O N O S')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 37.795300000000000000
          Top = 532.913730000000000000
          Width = 177.637910000000000000
          Height = 11.338582680000000000
          DataField = 'TULAJ_CIM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TULAJ_CIM"]')
          ParentFont = False
        end
        object Shape9: TfrxShapeView
          Left = 657.638220000000000000
          Top = 154.960730000000000000
          Width = 321.260050000000000000
          Height = 22.677165350000000000
        end
        object Shape10: TfrxShapeView
          Left = 657.638220000000000000
          Top = 298.582870000000000000
          Width = 321.260050000000000000
          Height = 22.677165350000000000
        end
        object Shape11: TfrxShapeView
          Left = 657.638220000000000000
          Top = 453.543600000000000000
          Width = 321.260050000000000000
          Height = 22.677165350000000000
        end
        object Memo21: TfrxMemoView
          Left = 668.976810000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'A P A I   N A G Y A P A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 668.976810000000000000
          Top = 158.740260000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'A P A I   N A G Y A N Y A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 668.976810000000000000
          Top = 302.362400000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'A N Y A I   N A G Y A P A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 668.976810000000000000
          Top = 457.323130000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'A N Y A I   N A G Y A N Y A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape12: TfrxShapeView
          Left = 657.638220000000000000
          Top = 22.677180000000000000
          Width = 321.260050000000000000
          Height = 132.283550000000000000
        end
        object Shape13: TfrxShapeView
          Left = 657.638220000000000000
          Top = 177.637910000000000000
          Width = 321.260050000000000000
          Height = 120.944960000000000000
        end
        object Shape14: TfrxShapeView
          Left = 657.638220000000000000
          Top = 321.260050000000000000
          Width = 321.260050000000000000
          Height = 132.283464570000000000
        end
        object Shape15: TfrxShapeView
          Left = 657.638220000000000000
          Top = 476.220780000000000000
          Width = 321.260050000000000000
          Height = 120.944881890000000000
        end
        object Memo26: TfrxMemoView
          Left = 665.197280000000000000
          Top = 26.456710000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 665.197280000000000000
          Top = 37.795300000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 665.197280000000000000
          Top = 49.133890000000000000
          Width = 34.015733390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 865.512370000000000000
          Top = 49.133858270000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 665.197280000000000000
          Top = 60.472480000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Fajta:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 665.197280000000000000
          Top = 71.811070000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 665.197280000000000000
          Top = 83.149660000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Apja')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 763.465060000000000000
          Top = 128.504020000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 665.197280000000000000
          Top = 105.826840000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 729.448777400000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            #258#8240'letnapi t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 665.197280000000000000
          Top = 94.488250000000000000
          Width = 34.015733390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 865.512370000000000000
          Top = 94.488250000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 665.197280000000000000
          Top = 117.165430000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Anyja')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 665.197280000000000000
          Top = 141.732283460000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 865.512370000000000000
          Top = 128.504020000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 325.039580000000000000
          Top = 109.606370000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'A P A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 608.503937010000000000
          Top = 136.063080000000000000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'APA_SZULDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_SZULDAT"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 321.260050000000000000
          Top = 136.063080000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 321.260050000000000000
          Top = 154.960730000000000000
          Width = 34.015733390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 427.086890000000000000
          Top = 154.960698270000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 321.260050000000000000
          Top = 173.858380000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Fajta:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 321.260050000000000000
          Top = 192.756030000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 400.629667400000000000
          Top = 192.756030000000000000
          Width = 86.929190000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            #258#8240'letnapi t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Shape16: TfrxShapeView
          Left = 309.921259840000000000
          Top = 249.448980000000000000
          Width = 347.716760000000000000
          Height = 22.677165350000000000
        end
        object Memo56: TfrxMemoView
          Left = 325.039580000000000000
          Top = 253.228510000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'A N Y A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 608.504330000000000000
          Top = 275.905690000000000000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_SZULDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_SZULDAT"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 321.260050000000000000
          Top = 275.905690000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 321.260050000000000000
          Top = 291.023810000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 321.260050000000000000
          Top = 306.141930000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Fajta:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 321.260050000000000000
          Top = 321.260050000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 506.456507400000000000
          Top = 321.260050000000000000
          Width = 98.267780000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Kombin'#258#711'lt min'#313#8216's'#258#173't'#313#8216' index:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 415.748300000000000000
          Top = 291.023810000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 521.575140000000000000
          Top = 291.023810000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Shape17: TfrxShapeView
          Left = 309.921259840000000000
          Top = 381.732530000000000000
          Width = 347.716535430000000000
          Height = 215.433210000000000000
        end
        object Memo28: TfrxMemoView
          Left = 321.260050000000000000
          Top = 419.527830000000000000
          Width = 64.251973390000000000
          Height = 11.338582680000000000
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ki'#258#711'll'#258#173't'#258#711's d'#258#711'tuma:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 525.354670000000000000
          Top = 419.527830000000000000
          Width = 71.811033390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Hiteles'#258#173't'#258#169's d'#258#711'tuma:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 321.260050000000000000
          Top = 393.071120000000000000
          Width = 18.897613390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'No.:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 445.984540000000000000
          Top = 393.071120000000000000
          Width = 128.503983390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Sz'#258#711'rmaz'#258#711'si vizsg'#258#711'lat iktat'#258#322'sz'#258#711'ma:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 370.393940000000000000
          Top = 449.764070000000000000
          Width = 45.354323390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ki'#258#711'll'#258#173'totta:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 540.472790000000000000
          Top = 449.764070000000000000
          Width = 49.133853390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Hiteles'#258#173'tette:')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 379.842519690000000000
          Top = 495.118430000000000000
          Width = 18.897613390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'P.H.')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 551.811380000000000000
          Top = 495.118430000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'P.H.')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 317.480520000000000000
          Top = 544.252320000000000000
          Width = 158.740223390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '................................................................' +
              '....')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 343.937230000000000000
          Top = 559.370440000000000000
          Width = 98.267743390000000000
          Height = 30.236232680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Magyartarka Teny'#258#169'szt'#313#8216'k'
            'Egyes'#258#317'lete')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 491.338900000000000000
          Top = 544.252320000000000000
          Width = 162.519753390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '................................................................' +
              '....')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 502.677490000000000000
          Top = 559.370440000000000000
          Width = 143.622103390000000000
          Height = 30.236232680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nemzeti '#258#8240'lelmiszerl'#258#711'nc-biztons'#258#711'gi '
            'Hivatal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 925.984249530000000000
          Top = 181.417440000000000000
          Width = 49.133860710000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_SZULDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_SZULDAT"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 665.197280000000000000
          Top = 181.417440000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 665.197280000000000000
          Top = 192.756030000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 665.197280000000000000
          Top = 204.094620000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 755.906000000000000000
          Top = 204.094620000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 865.512370000000000000
          Top = 204.094620000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 759.685530000000000000
          Top = 215.433210000000000000
          Width = 98.267780000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Kombin'#258#711'lt min'#313#8216's'#258#173't'#313#8216' index:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 665.197280000000000000
          Top = 226.771800000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Apja')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 755.906000000000000000
          Top = 272.126160000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 665.197280000000000000
          Top = 249.448980000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 665.197280000000000000
          Top = 238.110390000000000000
          Width = 34.015733390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 865.512370000000000000
          Top = 238.110390000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 665.197280000000000000
          Top = 260.787570000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Anyja')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 665.197280000000000000
          Top = 283.464750000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 865.512370000000000000
          Top = 272.126160000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 925.984850000000000000
          Top = 325.039580000000000000
          Width = 49.133860710000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_SZULDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_SZULDAT"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 665.197280000000000000
          Top = 325.039580000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 665.197280000000000000
          Top = 336.378170000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 665.197280000000000000
          Top = 347.716760000000000000
          Width = 34.015733390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 865.512370000000000000
          Top = 347.716728270000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 665.197280000000000000
          Top = 359.055350000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Fajta:')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 665.197280000000000000
          Top = 381.732530000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Apja')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 755.906000000000000000
          Top = 427.086614170000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 665.197280000000000000
          Top = 404.409710000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 665.197280000000000000
          Top = 393.071120000000000000
          Width = 34.015733390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 865.512370000000000000
          Top = 393.071120000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 665.197280000000000000
          Top = 415.748300000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Anyja')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 865.512370000000000000
          Top = 427.086890000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 925.984249530000000000
          Top = 480.000310000000000000
          Width = 49.133860710000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_SZULDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_SZULDAT"]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 665.197280000000000000
          Top = 480.000310000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 665.197280000000000000
          Top = 491.338900000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 665.197280000000000000
          Top = 502.677490000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 755.906000000000000000
          Top = 502.677490000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 865.512370000000000000
          Top = 502.677490000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 759.685530000000000000
          Top = 514.016080000000000000
          Width = 102.047310000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Kombin'#258#711'lt min'#313#8216's'#258#173't'#313#8216' index:')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 665.197280000000000000
          Top = 525.354670000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Apja')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 755.905511810000000000
          Top = 570.709030000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 665.197280000000000000
          Top = 548.031850000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 665.197280000000000000
          Top = 536.693260000000000000
          Width = 34.015733390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 865.512370000000000000
          Top = 536.693260000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 665.197280000000000000
          Top = 559.370440000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Anyja')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 665.197280000000000000
          Top = 582.047620000000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 127.748031500000000000
          Top = 53.669291340000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo1OnAfterData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 87.307086610000000000
          Top = 52.913420000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo39OnAfterData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          Left = 170.456692910000000000
          Top = 52.913420000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo37OnAfterData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Left = 37.795229210000000000
          Top = 83.149598980000000000
          Width = 75.590570710000000000
          Height = 11.338582680000000000
          DataField = 'FAJTANEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."FAJTANEV"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 343.937230000000000000
          Top = 136.063080000000000000
          Width = 200.315060710000000000
          Height = 11.338582680000000000
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_NEV"]')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 355.275820000000000000
          Top = 154.960730000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          DataField = 'APA_KPLSZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_KPLSZ"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 457.323130000000000000
          Top = 154.960730000000000000
          Width = 68.031503390000000000
          Height = 11.338582680000000000
          DataField = 'APA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_ENAR"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 351.496290000000000000
          Top = 173.858380000000000000
          Width = 79.370054330000000000
          Height = 11.338582680000000000
          DataField = 'APA_FAJTANEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_FAJTANEV"]')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Left = 343.937230000000000000
          Top = 275.905690000000000000
          Width = 200.315060710000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_NEV"]')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          Left = 351.496290000000000000
          Top = 291.023810000000000000
          Width = 60.472438500000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_ENAR"]')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Left = 559.370440000000000000
          Top = 291.023810000000000000
          Width = 94.488184090000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_FULSZAM"]')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 351.496290000000000000
          Top = 306.141930000000000000
          Width = 79.370078740000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_FAJTANEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_FAJTANEV"]')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 351.496290000000000000
          Top = 321.260050000000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_SV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_SV"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 702.992580000000000000
          Top = 49.133890000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_KPLSZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_KPLSZ"]')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 903.307670000000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_FULSZAM"]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 691.653543310000000000
          Top = 26.456710000000000000
          Width = 170.078850000000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_NEV"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 702.992580000000000000
          Top = 94.488250000000000000
          Width = 34.015733390000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_APJA_KPLSZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_APJA_KPLSZ"]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 691.653990000000000000
          Top = 105.826840000000000000
          Width = 283.464720710000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_APJA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_APJA_NEV"]')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 903.307670000000000000
          Top = 94.488250000000000000
          Width = 71.811028500000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_APJA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_APJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 691.653543310000000000
          Top = 141.732283460000000000
          Width = 283.464708500000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_ANYJA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_ANYJA_NEV"]')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 351.496290000000000000
          Top = 192.756030000000000000
          Width = 37.795268270000000000
          Height = 11.338582680000000000
          DataField = 'APA_SV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_SV"]')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 457.323130000000000000
          Top = 291.023810000000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_ELLSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_ELLSZAM"]')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Left = 691.653990000000000000
          Top = 60.472480000000000000
          Width = 83.149630710000000000
          Height = 11.338582680000000000
          DataField = 'APA_NAGYAPA_FAJTANEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_NAGYAPA_FAJTANEV"]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 695.433520000000000000
          Top = 71.811070000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_SV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_SV"]')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 820.158010000000000000
          Top = 71.811070000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_TGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_TGY"]')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 805.039890000000000000
          Top = 128.504020000000000000
          Width = 60.472438500000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_ANYJA_ELLSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_ANYJA_ELLSZAM"]')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 903.307670000000000000
          Top = 128.504020000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_ANYJA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_ANYJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          Left = 691.653543310000000000
          Top = 181.417440000000000000
          Width = 170.078796300000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_NEV"]')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 695.433520000000000000
          Top = 204.094620000000000000
          Width = 60.472443390000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_ENAR"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 797.480830000000000000
          Top = 204.094620000000000000
          Width = 64.251980710000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_ELLSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_ELLSZAM"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 907.087200000000000000
          Top = 204.094620000000000000
          Width = 68.031498500000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_FULSZAM"]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 861.732840000000000000
          Top = 215.433210000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_KMI'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_KMI"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 702.992580000000000000
          Top = 238.110390000000000000
          Width = 30.236203390000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_APJA_KPLSZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_APJA_KPLSZ"]')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 907.087200000000000000
          Top = 238.110390000000000000
          Width = 68.031498500000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_APJA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_APJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 691.653990000000000000
          Top = 249.448980000000000000
          Width = 283.464696300000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_APJA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_APJA_NEV"]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Left = 695.433520000000000000
          Top = 272.126160000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_ANYJA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_ANYJA_ENAR"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 797.480830000000000000
          Top = 272.126160000000000000
          Width = 60.472450710000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_ANYJA_ELLSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_ANYJA_ELLSZAM"]')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 907.087200000000000000
          Top = 272.126160000000000000
          Width = 68.031498500000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_ANYJA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_ANYJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          Left = 691.653543310000000000
          Top = 283.464750000000000000
          Width = 283.464696300000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_ANYJA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_ANYJA_NEV"]')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 687.874460000000000000
          Top = 325.039580000000000000
          Width = 173.858326300000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_NEV"]')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 702.992580000000000000
          Top = 347.716760000000000000
          Width = 34.015733390000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_KPLSZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_KPLSZ"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          Left = 903.307670000000000000
          Top = 347.716760000000000000
          Width = 71.811028500000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_FULSZAM"]')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 695.433520000000000000
          Top = 359.055350000000000000
          Width = 79.370130000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_FAJTANEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_FAJTANEV"]')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          Left = 665.197280000000000000
          Top = 440.314960630000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 702.992580000000000000
          Top = 393.071120000000000000
          Width = 45.354306300000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_APJA_KPLSZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_APJA_KPLSZ"]')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 903.307670000000000000
          Top = 393.071120000000000000
          Width = 71.811028500000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_APJA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_APJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Left = 691.653543310000000000
          Top = 404.409710000000000000
          Width = 283.464696300000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_APJA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_APJA_NEV"]')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          Left = 797.480830000000000000
          Top = 427.086614170000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_ANYJA_ELLSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_ANYJA_ELLSZAM"]')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 903.307670000000000000
          Top = 427.086890000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_ANYJA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_ANYJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 691.653543310000000000
          Top = 440.314960630000000000
          Width = 283.464703620000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_ANYJA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_ANYJA_NEV"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 687.874460000000000000
          Top = 480.000310000000000000
          Width = 173.858326300000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_NEV"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 695.433520000000000000
          Top = 502.677490000000000000
          Width = 56.692913390000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_ENAR"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 797.480830000000000000
          Top = 502.677490000000000000
          Width = 64.251980710000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_ELLSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_ELLSZAM"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 903.307670000000000000
          Top = 502.677490000000000000
          Width = 71.811028500000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_FULSZAM"]')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          Left = 865.512370000000000000
          Top = 514.016080000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_KMI'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_KMI"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 702.992580000000000000
          Top = 536.693260000000000000
          Width = 30.236203390000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_APJA_KPLSZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_APJA_KPLSZ"]')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 903.307670000000000000
          Top = 536.693260000000000000
          Width = 71.811028500000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_APJA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_APJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 691.653990000000000000
          Top = 548.031850000000000000
          Width = 283.464696300000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_APJA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_APJA_NEV"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 797.480830000000000000
          Top = 570.709030000000000000
          Width = 64.251978270000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_ANYJA_ELLSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_ANYJA_ELLSZAM"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 691.653543310000000000
          Top = 582.047620000000000000
          Width = 283.464566930000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_ANYJA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_ANYJA_NEV"]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 37.795300000000000000
          Top = 113.385900000000000000
          Width = 18.897650000000000000
          Height = 11.338582680000000000
          DataField = 'SV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."SV"]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          Left = 147.401670000000000000
          Top = 113.385900000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DataField = 'ELETNAPI_TGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ELETNAPI_TGY"]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          Left = 196.535560000000000000
          Top = 30.236240000000000000
          Width = 64.251970940000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 925.984249530000000000
          Top = 26.456710000000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_SZULDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_SZULDAT"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          Left = 548.031850000000000000
          Top = 136.063080000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          Left = 548.031850000000000000
          Top = 275.905690000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          Left = 865.512370000000000000
          Top = 480.000310000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          Left = 865.512370000000000000
          Top = 325.039580000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 865.512370000000000000
          Top = 181.417440000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          Left = 865.512370000000000000
          Top = 26.456710000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          Left = 268.346630000000000000
          Top = 113.385900000000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          DataField = 'STV_TGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."STV_TGY"]')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          Left = 491.338900000000000000
          Top = 192.756030000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'APA_ETGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_ETGY"]')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          Left = 608.504330000000000000
          Top = 321.260050000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_KMI'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_KMI"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 665.197280000000000000
          Top = 272.126160000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          Left = 665.197280000000000000
          Top = 570.709030000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          Left = 695.433520000000000000
          Top = 570.709030000000000000
          Width = 56.692913390000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_ANYJA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_ANYJA_ENAR"]')
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          Left = 865.512370000000000000
          Top = 570.709030000000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          Left = 903.307670000000000000
          Top = 570.709030000000000000
          Width = 71.811033390000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_ANYJA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_ANYJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          Left = 665.197280000000000000
          Top = 427.086890000000000000
          Width = 30.236227800000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          Left = 665.197280000000000000
          Top = 128.504020000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          Left = 695.433520000000000000
          Top = 128.504020000000000000
          Width = 64.251997800000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_ANYJA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_ANYJA_ENAR"]')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          Left = 11.338590000000000000
          Top = 438.425480000000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'K'#258#322'd:')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          Left = 11.338590000000000000
          Top = 453.543600000000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          Left = 11.338590000000000000
          Top = 468.661720000000000000
          Width = 22.677167800000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'C'#258#173'm:')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          Left = 11.338590000000000000
          Top = 532.913358980000000000
          Width = 22.677167800000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'C'#258#173'm:')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          Left = 11.338590000000000000
          Top = 517.795610000000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          Left = 11.338590000000000000
          Top = 502.677138500000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'K'#258#322'd:')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          Left = 37.795300000000000000
          Top = 502.677490000000000000
          Width = 177.637848980000000000
          Height = 11.338582680000000000
          DataField = 'TULAJ_KOD'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TULAJ_KOD"]')
          ParentFont = False
        end
        object MemoBikaIdeje: TfrxMemoView
          Left = 7.559060000000000000
          Top = 204.094620000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ideje:')
          ParentFont = False
        end
        object MemoTermIdeje: TfrxMemoView
          Left = 41.574830000000000000
          Top = 204.094620000000000000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'TERM_IDEJE'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_IDEJE"]')
          ParentFont = False
        end
        object MemoBikaBika: TfrxMemoView
          Left = 7.559060000000000000
          Top = 222.992270000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Bika:')
          ParentFont = False
        end
        object MemoBikaKPLSZ: TfrxMemoView
          Left = 7.559060000000000000
          Top = 241.889920000000000000
          Width = 30.992125980000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          Left = 37.795300000000000000
          Top = 241.889920000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          DataField = 'TERM_BIKA_KPLSZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_KPLSZ"]')
          ParentFont = False
        end
        object MemoBikaNev: TfrxMemoView
          Left = 7.559060000000000000
          Top = 257.008040000000000000
          Width = 20.031496060000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          Left = 32.125945200000000000
          Top = 257.008040000000000000
          Width = 272.126118500000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_NEV"]')
          ParentFont = False
        end
        object MemoBikaENAR: TfrxMemoView
          Left = 207.874003540000000000
          Top = 241.889920000000000000
          Width = 28.346456690000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          Left = 236.976365750000000000
          Top = 241.889920000000000000
          Width = 68.031498500000000000
          Height = 11.338582680000000000
          DataField = 'TERM_BIKA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_ENAR"]')
          ParentFont = False
        end
        object MemoBikaSzulIdo: TfrxMemoView
          Left = 7.559060000000000000
          Top = 275.905690000000000000
          Width = 57.070866140000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object MemoTermBikaSzuldat: TfrxMemoView
          Left = 66.519685040000000000
          Top = 275.905690000000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_SZULDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_SZULDAT"]')
          ParentFont = False
        end
        object MemoBikaFulszam: TfrxMemoView
          Left = 113.385900000000000000
          Top = 275.905690000000000000
          Width = 35.527559060000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object MemoBikaFajta: TfrxMemoView
          Left = 222.992270000000000000
          Top = 275.905690000000000000
          Width = 23.811023620000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Fajta:')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          Left = 247.559052680000000000
          Top = 275.905690000000000000
          Width = 15.118120000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_FAJTAKOD'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_FAJTAKOD"]')
          ParentFont = False
        end
        object MemoBikaApja: TfrxMemoView
          Left = 7.559060000000000000
          Top = 321.260050000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Apja:')
          ParentFont = False
        end
        object MemoBikaApjaKPLSZ: TfrxMemoView
          Left = 7.559060000000000000
          Top = 336.378170000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object MemoBikaApjaNev: TfrxMemoView
          Left = 102.047310000000000000
          Top = 336.378170000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object MemoBikaApjaENAR: TfrxMemoView
          Left = 102.047310000000000000
          Top = 351.496290000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          Left = 45.354360000000000000
          Top = 336.378170000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_APJA_KPLSZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_APJA_KPLSZ"]')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          Left = 128.504020000000000000
          Top = 336.378170000000000000
          Width = 173.858326300000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_APJA_NEVE'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_APJA_NEVE"]')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          Left = 132.283550000000000000
          Top = 351.496290000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_APJA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_APJA_ENAR"]')
          ParentFont = False
        end
        object MemoBikaApjaSzuldat: TfrxMemoView
          Left = 7.559060000000000000
          Top = 351.496290000000000000
          Width = 41.952746140000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Sz'#258#317'l. ideje:')
          ParentFont = False
        end
        object MemoBikaApjaFulszam: TfrxMemoView
          Left = 196.535560000000000000
          Top = 351.496290000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object MemoTermBikaApjaSzuldat: TfrxMemoView
          Left = 49.133890000000000000
          Top = 351.496290000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_APJA_SZULDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_APJA_SZULDAT"]')
          ParentFont = False
        end
        object Memo225: TfrxMemoView
          Left = 238.110390000000000000
          Top = 351.496290000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_APJA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_APJA_FULSZAM"]')
          ParentFont = False
        end
        object MemoBikaAnyja: TfrxMemoView
          Left = 7.559060000000000000
          Top = 374.173470000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Anyja:')
          ParentFont = False
        end
        object MemoBikaAnyjaNev: TfrxMemoView
          Left = 94.488250000000000000
          Top = 389.291590000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object MemoBikaAnyjaENAR: TfrxMemoView
          Left = 7.559060000000000000
          Top = 389.291590000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object MemoBikaAnyjaSzuldat: TfrxMemoView
          Left = 7.559060000000000000
          Top = 404.409710000000000000
          Width = 41.952746140000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Sz'#258#317'l. ideje:')
          ParentFont = False
        end
        object MemoBikaAnyjaFulszam: TfrxMemoView
          Left = 200.315090000000000000
          Top = 404.409710000000000000
          Width = 35.905511810000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo232: TfrxMemoView
          Left = 117.165430000000000000
          Top = 389.291590000000000000
          Width = 185.196916300000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_ANYJA_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_ANYJA_NEV"]')
          ParentFont = False
        end
        object MemoBikaSV: TfrxMemoView
          Left = 7.559060000000000000
          Top = 291.023810000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo234: TfrxMemoView
          Left = 41.574830000000000000
          Top = 291.023810000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_SV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_SV"]')
          ParentFont = False
        end
        object MemoBikaEtgy: TfrxMemoView
          Left = 79.370130000000000000
          Top = 291.023810000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            #258#8240'letnapi tgy.:')
          ParentFont = False
        end
        object MemoBikaSTV: TfrxMemoView
          Left = 188.976500000000000000
          Top = 291.023810000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'STV alatti tgy.:')
          ParentFont = False
        end
        object Memo237: TfrxMemoView
          Left = 136.063080000000000000
          Top = 291.023810000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_ETGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_ETGY"]')
          ParentFont = False
        end
        object Memo238: TfrxMemoView
          Left = 249.448980000000000000
          Top = 291.023810000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_STV_TGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_STV_TGY"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 597.165740000000000000
          Top = 419.527830000000000000
          Width = 52.913390710000000000
          Height = 11.338590000000000000
          DataField = 'HITDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."HITDAT"]')
          ParentFont = False
        end
        object Memo242: TfrxMemoView
          Left = 340.157700000000000000
          Top = 393.071120000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."SOR"] / [frxDBSzLapok."PER"]')
          ParentFont = False
        end
        object Memo243: TfrxMemoView
          Left = 236.220467560000000000
          Top = 404.409710000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_ANYJA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_ANYJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo239: TfrxMemoView
          Left = 578.268090000000000000
          Top = 393.071120000000000000
          Width = 71.811040710000000000
          Height = 11.338590000000000000
          DataField = 'IKTATOSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."IKTATOSZAM"]')
          ParentFont = False
        end
        object Memo240: TfrxMemoView
          Left = 37.795300000000000000
          Top = 517.795610000000000000
          Width = 177.637848980000000000
          Height = 11.338582680000000000
          DataField = 'TULAJ_NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TULAJ_NEV"]')
          ParentFont = False
        end
        object Memo241: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 20.787401570000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo244: TfrxMemoView
          Left = 30.236240000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 11.338582680000000000
          DataField = 'NEV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."NEV"]')
          ParentFont = False
        end
        object Memo246: TfrxMemoView
          Left = 98.267780000000000000
          Top = 44.220472440000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          DataField = 'KPLSZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."KPLSZ"]')
          ParentFont = False
        end
        object Memo245: TfrxMemoView
          Left = 60.472480000000000000
          Top = 45.354360000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo247: TfrxMemoView
          Left = 117.165430000000000000
          Top = 83.149660000000000000
          Width = 26.456673390000000000
          Height = 11.338590000000000000
          DataField = 'FAJTA_SZAZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."FAJTA_SZAZ"]')
          ParentFont = False
        end
        object Memo248: TfrxMemoView
          Left = 143.622140000000000000
          Top = 83.149660000000000000
          Width = 26.456670940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '%')
          ParentFont = False
        end
        object Memo249: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo250: TfrxMemoView
          Left = 238.110390000000000000
          Top = 45.354360000000000000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          DataField = 'FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."FULSZAM"]')
          ParentFont = False
        end
        object Memo251: TfrxMemoView
          Left = 188.976500000000000000
          Top = 98.267780000000000000
          Width = 75.590600000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'T'#258#182'rzsk'#258#182'nyvi oszt'#258#711'ly:')
          ParentFont = False
        end
        object Memo252: TfrxMemoView
          Left = 268.346630000000000000
          Top = 98.267780000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DataField = 'TKV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."TKV"]')
          ParentFont = False
        end
        object Memo253: TfrxMemoView
          Left = 529.134200000000000000
          Top = 154.960730000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo254: TfrxMemoView
          Left = 566.929500000000000000
          Top = 154.960730000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          DataField = 'APA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_FULSZAM"]')
          ParentFont = False
        end
        object Memo255: TfrxMemoView
          Left = 529.134200000000000000
          Top = 192.756030000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HideZeros = True
          Memo.UTF8 = (
            'STV alatti t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Memo256: TfrxMemoView
          Left = 627.401980000000000000
          Top = 192.756030000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DataField = 'APA_STV_TGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_STV_TGY"]')
          ParentFont = False
        end
        object Memo257: TfrxMemoView
          Left = 430.866420000000000000
          Top = 173.858380000000000000
          Width = 26.456673390000000000
          Height = 11.338590000000000000
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_FAJTA_SZAZ"]')
          ParentFont = False
        end
        object Memo258: TfrxMemoView
          Left = 457.323130000000000000
          Top = 173.858380000000000000
          Width = 15.118095590000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '%')
          ParentFont = False
        end
        object Memo259: TfrxMemoView
          Left = 430.866420000000000000
          Top = 306.141930000000000000
          Width = 26.456673390000000000
          Height = 11.338590000000000000
          DataField = 'ANYA_FAJTA_SZAZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_FAJTA_SZAZ"]')
          ParentFont = False
        end
        object Memo260: TfrxMemoView
          Left = 457.323130000000000000
          Top = 306.141930000000000000
          Width = 11.338553390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '%')
          ParentFont = False
        end
        object Memo261: TfrxMemoView
          Left = 748.346940000000000000
          Top = 49.133890000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo262: TfrxMemoView
          Left = 778.583180000000000000
          Top = 49.133890000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_ENAR"]')
          ParentFont = False
        end
        object Memo263: TfrxMemoView
          Left = 778.583180000000000000
          Top = 60.472480000000000000
          Width = 26.456673390000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_FAJTA_SZAZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_FAJTA_SZAZ"]')
          ParentFont = False
        end
        object Memo264: TfrxMemoView
          Left = 808.819420000000000000
          Top = 60.472480000000000000
          Width = 15.118083390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '%')
          ParentFont = False
        end
        object Memo265: TfrxMemoView
          Left = 850.394250000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'STV alatti t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Memo266: TfrxMemoView
          Left = 948.662030000000000000
          Top = 71.811070000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_STV_TGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_STV_TGY"]')
          ParentFont = False
        end
        object Memo267: TfrxMemoView
          Left = 748.346940000000000000
          Top = 94.488250000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo268: TfrxMemoView
          Left = 778.583180000000000000
          Top = 94.488250000000000000
          Width = 83.149623390000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_APJA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYAPA_APJA_ENAR"]')
          ParentFont = False
        end
        object Memo269: TfrxMemoView
          Left = 752.126470000000000000
          Top = 238.110390000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo270: TfrxMemoView
          Left = 782.362710000000000000
          Top = 238.110390000000000000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_APJA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_APJA_ENAR"]')
          ParentFont = False
        end
        object Memo271: TfrxMemoView
          Left = 752.126470000000000000
          Top = 347.716760000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo272: TfrxMemoView
          Left = 782.362710000000000000
          Top = 347.716760000000000000
          Width = 79.370093390000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_ENAR"]')
          ParentFont = False
        end
        object Memo273: TfrxMemoView
          Left = 778.583180000000000000
          Top = 359.055350000000000000
          Width = 26.456673390000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_FAJTA_SZAZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_FAJTA_SZAZ"]')
          ParentFont = False
        end
        object Memo274: TfrxMemoView
          Left = 808.819420000000000000
          Top = 359.055350000000000000
          Width = 15.118083390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '%')
          ParentFont = False
        end
        object Memo275: TfrxMemoView
          Left = 665.197280000000000000
          Top = 370.393940000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo276: TfrxMemoView
          Left = 695.433520000000000000
          Top = 370.393940000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_SV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_SV"]')
          ParentFont = False
        end
        object Memo277: TfrxMemoView
          Left = 729.449290000000000000
          Top = 370.393940000000000000
          Width = 86.929190000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            #258#8240'letnapi t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Memo278: TfrxMemoView
          Left = 820.158010000000000000
          Top = 370.393940000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_ETGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_ETGY"]')
          ParentFont = False
        end
        object Memo279: TfrxMemoView
          Left = 850.394250000000000000
          Top = 370.393940000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'STV alatti t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Memo280: TfrxMemoView
          Left = 948.662030000000000000
          Top = 370.393940000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_STV_TGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_STV_TGY"]')
          ParentFont = False
        end
        object Memo281: TfrxMemoView
          Left = 752.126470000000000000
          Top = 393.071120000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo282: TfrxMemoView
          Left = 782.362710000000000000
          Top = 393.071120000000000000
          Width = 79.370093390000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_APJA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_APJA_ENAR"]')
          ParentFont = False
        end
        object Memo283: TfrxMemoView
          Left = 695.433520000000000000
          Top = 427.086890000000000000
          Width = 56.692937800000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_ANYJA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYAPA_ANYJA_ENAR"]')
          ParentFont = False
        end
        object Memo284: TfrxMemoView
          Left = 752.126470000000000000
          Top = 536.693260000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo285: TfrxMemoView
          Left = 782.362710000000000000
          Top = 536.693260000000000000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_APJA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_APJA_ENAR"]')
          ParentFont = False
        end
        object Memo286: TfrxMemoView
          Left = 385.512060000000000000
          Top = 419.527830000000000000
          Width = 71.811040710000000000
          Height = 11.338590000000000000
          DataField = 'KIDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."KIDAT"]')
          ParentFont = False
        end
        object Memo287: TfrxMemoView
          Left = 98.267780000000000000
          Top = 98.267780000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'KMI:')
          ParentFont = False
        end
        object Memo288: TfrxMemoView
          Left = 124.724490000000000000
          Top = 98.267780000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DataField = 'KMI'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."KMI"]')
          ParentFont = False
        end
        object Memo289: TfrxMemoView
          Left = 7.559060000000000000
          Top = 128.504020000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'K'#258#317'llemi pontsz'#258#711'mok:')
          ParentFont = False
        end
        object Memo290: TfrxMemoView
          Left = 185.196970000000000000
          Top = 128.504020000000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            #258#8240'rt'#258#169'kel'#258#169's d'#258#711'tuma:')
          ParentFont = False
        end
        object Memo291: TfrxMemoView
          Left = 260.787570000000000000
          Top = 128.504020000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          DataField = 'ERTEKELES_DATUMA'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ERTEKELES_DATUMA"]')
          ParentFont = False
        end
        object Memo292: TfrxMemoView
          Left = 7.559060000000000000
          Top = 143.622140000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'T'#258#173'pus:')
          ParentFont = False
        end
        object Memo293: TfrxMemoView
          Left = 41.574830000000000000
          Top = 143.622140000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'TIPUS'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TIPUS"]')
          ParentFont = False
        end
        object Memo294: TfrxMemoView
          Left = 75.590600000000000000
          Top = 143.622140000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Izmolts'#258#711'g:')
          ParentFont = False
        end
        object Memo295: TfrxMemoView
          Left = 124.724490000000000000
          Top = 143.622140000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'IZMOLTSAG'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."IZMOLTSAG"]')
          ParentFont = False
        end
        object Memo296: TfrxMemoView
          Left = 158.740260000000000000
          Top = 143.622140000000000000
          Width = 56.692950000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'L'#258#711'bszerkezet:')
          ParentFont = False
        end
        object Memo297: TfrxMemoView
          Left = 219.212740000000000000
          Top = 143.622140000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'LABSZERKEZET'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."LABSZERKEZET"]')
          ParentFont = False
        end
        object Memo298: TfrxMemoView
          Left = 253.228510000000000000
          Top = 143.622140000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'T'#313#8216'gy:')
          ParentFont = False
        end
        object Memo299: TfrxMemoView
          Left = 283.464750000000000000
          Top = 143.622140000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'E_TOGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."E_TOGY"]')
          ParentFont = False
        end
        object Memo306: TfrxMemoView
          Left = 151.181099920000000000
          Top = 275.905690000000000000
          Width = 68.031510710000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_FULSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_FULSZAM"]')
          ParentFont = False
        end
        object Memo316: TfrxMemoView
          Left = 264.567100000000000000
          Top = 275.905690000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_FAJTA_SZAZ'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_FAJTA_SZAZ"]')
          ParentFont = False
        end
        object MemoBikaSz: TfrxMemoView
          Left = 294.803340000000000000
          Top = 275.905690000000000000
          Width = 11.338590000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '%')
          ParentFont = False
        end
        object Memo227: TfrxMemoView
          Left = 37.795300000000000000
          Top = 389.291590000000000000
          Width = 56.692896300000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_ANYJA_ENAR'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_ANYJA_ENAR"]')
          ParentFont = False
        end
        object MemoTermBikaAnyjaSzuldat: TfrxMemoView
          Left = 49.133848500000000000
          Top = 404.409710000000000000
          Width = 45.354328270000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_ANYJA_SZULDAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_ANYJA_SZULDAT"]')
          ParentFont = False
        end
        object MemoBikaAnyjaEllszam: TfrxMemoView
          Left = 102.047310000000000000
          Top = 404.409710000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo320: TfrxMemoView
          Left = 139.842610000000000000
          Top = 404.409710000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_ANYJA_ELLSZAM'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."TERM_BIKA_ANYJA_ELLSZAM"]')
          ParentFont = False
        end
        object Memo321: TfrxMemoView
          Left = 7.559060000000000000
          Top = 158.740260000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'NET:')
          ParentFont = False
        end
        object Memo322: TfrxMemoView
          Left = 37.795300000000000000
          Top = 158.740260000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DataField = 'NET_PONT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."NET_PONT"]')
          ParentFont = False
        end
        object Memo323: TfrxMemoView
          Left = 321.260050000000000000
          Top = 366.614410000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'NET:')
          ParentFont = False
        end
        object Memo324: TfrxMemoView
          Left = 355.275820000000000000
          Top = 366.614410000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_NET_PONT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_NET_PONT"]')
          ParentFont = False
        end
        object Memo300: TfrxMemoView
          Left = 321.260050000000000000
          Top = 336.378170000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'K'#258#317'llemi pontsz'#258#711'mok:')
          ParentFont = False
        end
        object Memo301: TfrxMemoView
          Left = 529.134200000000000000
          Top = 336.378170000000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            #258#8240'rt'#258#169'kel'#258#169's d'#258#711'tuma:')
          ParentFont = False
        end
        object Memo302: TfrxMemoView
          Left = 604.724800000000000000
          Top = 336.378170000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_ERT_DAT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_ERT_DAT"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 321.260050000000000000
          Top = 207.874150000000000000
          Width = 139.842610000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'K'#258#317'llemi tulajdons'#258#711'g teny'#258#169'sz'#258#169'rt'#258#169'kek:')
          ParentFont = False
        end
        object Memo303: TfrxMemoView
          Left = 321.260050000000000000
          Top = 222.992270000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'T'#258#173'pus:')
          ParentFont = False
        end
        object Memo304: TfrxMemoView
          Left = 355.275820000000000000
          Top = 222.992270000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'APA_TE_TIPUS'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_TE_TIPUS"]')
          ParentFont = False
        end
        object Memo305: TfrxMemoView
          Left = 404.409710000000000000
          Top = 222.992270000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Izmolts'#258#711'g:')
          ParentFont = False
        end
        object Memo325: TfrxMemoView
          Left = 449.764070000000000000
          Top = 222.992270000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'APA_TE_IZMOLTSAG'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_TE_IZMOLTSAG"]')
          ParentFont = False
        end
        object Memo326: TfrxMemoView
          Left = 491.338900000000000000
          Top = 222.992270000000000000
          Width = 56.692950000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'L'#258#711'bszerkezet:')
          ParentFont = False
        end
        object Memo327: TfrxMemoView
          Left = 551.811380000000000000
          Top = 222.992270000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'APA_TE_LABSZERKEZET'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_TE_LABSZERKEZET"]')
          ParentFont = False
        end
        object Memo328: TfrxMemoView
          Left = 597.165740000000000000
          Top = 222.992270000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'T'#313#8216'gy:')
          ParentFont = False
        end
        object Memo329: TfrxMemoView
          Left = 627.401980000000000000
          Top = 222.992270000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'APA_TE_TOGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_TE_TOGY"]')
          ParentFont = False
        end
        object Memo330: TfrxMemoView
          Left = 321.260050000000000000
          Top = 351.496290000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'T'#258#173'pus:')
          ParentFont = False
        end
        object Memo331: TfrxMemoView
          Left = 355.275820000000000000
          Top = 351.496290000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_TIPUS'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_TIPUS"]')
          ParentFont = False
        end
        object Memo332: TfrxMemoView
          Left = 400.630180000000000000
          Top = 351.496290000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Izmolts'#258#711'g:')
          ParentFont = False
        end
        object Memo333: TfrxMemoView
          Left = 445.984540000000000000
          Top = 351.496290000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_IZMOLTSAG'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_IZMOLTSAG"]')
          ParentFont = False
        end
        object Memo334: TfrxMemoView
          Left = 487.559370000000000000
          Top = 351.496290000000000000
          Width = 56.692950000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'L'#258#711'bszerkezet:')
          ParentFont = False
        end
        object Memo335: TfrxMemoView
          Left = 548.031850000000000000
          Top = 351.496290000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_LABSZERKEZET'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_LABSZERKEZET"]')
          ParentFont = False
        end
        object Memo336: TfrxMemoView
          Left = 593.386210000000000000
          Top = 351.496290000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'T'#313#8216'gy:')
          ParentFont = False
        end
        object Memo337: TfrxMemoView
          Left = 623.622450000000000000
          Top = 351.496290000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_TOGY'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYA_TOGY"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 321.260050000000000000
          Top = 236.598425200000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'NET:')
          ParentFont = False
        end
        object Memo338: TfrxMemoView
          Left = 355.275820000000000000
          Top = 236.598425200000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          DataField = 'APA_NET_PONT'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APA_NET_PONT"]')
          ParentFont = False
        end
        object Memo348: TfrxMemoView
          Left = 665.197280000000000000
          Top = 215.433210000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo349: TfrxMemoView
          Left = 695.433520000000000000
          Top = 215.433210000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_SV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."APAI_NAGYANYA_SV"]')
          ParentFont = False
        end
        object Memo350: TfrxMemoView
          Left = 665.197280000000000000
          Top = 514.016080000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo351: TfrxMemoView
          Left = 695.433520000000000000
          Top = 514.016080000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_SV'
          DataSet = frxDBSzLapok
          DataSetName = 'frxDBSzLapok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBSzLapok."ANYAI_NAGYANYA_SV"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 11.338590000000000000
          Top = 563.149606299212600000
          Width = 291.023797800000000000
          Height = 22.677172680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8 = (
            'Pedigree certificate issued in accordance with'
            'Commission Decision 2005/379/EC for intra -Community trade.')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Top = 551.811380000000000000
          Width = 309.921460000000000000
        end
      end
    end
  end
  object frxDBSzLapok: TfrxDBDataset
    UserName = 'frxDBSzLapok'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IGDAT=IGDAT'
      'TKOD=TKOD'
      'UKOD=UKOD'
      'EGY=EGY'
      'SOR=SOR'
      'PER=PER'
      'MAS=MAS'
      'KIDAT=KIDAT'
      'HITDAT=HITDAT'
      'NYELV=NYELV'
      'KPLSZ=KPLSZ'
      'ENAR=ENAR'
      'FULSZAM=FULSZAM'
      'NEV=NEV'
      'SZULDAT=SZULDAT'
      'TKV=TKV'
      'FAJTAKOD=FAJTAKOD'
      'FAJTANEV=FAJTANEV'
      'FAJTA_SZAZ=FAJTA_SZAZ'
      'IVAR=IVAR'
      'SV=SV'
      'ELETNAPI_TGY=ELETNAPI_TGY'
      'STV_TGY=STV_TGY'
      'KMI=KMI'
      'TIPUS=TIPUS'
      'IZMOLTSAG=IZMOLTSAG'
      'LABSZERKEZET=LABSZERKEZET'
      'ERTEKELES_DATUMA=ERTEKELES_DATUMA'
      'APA_KPLSZ=APA_KPLSZ'
      'APA_ENAR=APA_ENAR'
      'APA_SZULDAT=APA_SZULDAT'
      'APA_NEV=APA_NEV'
      'APA_FULSZAM=APA_FULSZAM'
      'APA_FAJTAKOD=APA_FAJTAKOD'
      'APA_FAJTANEV=APA_FAJTANEV'
      'APA_FAJTA_SZAZ=APA_FAJTA_SZAZ'
      'APA_SV=APA_SV'
      'APA_ETGY=APA_ETGY'
      'APA_STV_TGY=APA_STV_TGY'
      'APA_TIPUS=APA_TIPUS'
      'APA_IZMOLTSAG=APA_IZMOLTSAG'
      'APA_LABSZERKEZET=APA_LABSZERKEZET'
      'APA_ERT_DAT=APA_ERT_DAT'
      'ANYA_NEV=ANYA_NEV'
      'ANYA_SZULDAT=ANYA_SZULDAT'
      'ANYA_ENAR=ANYA_ENAR'
      'ANYA_ELLSZAM=ANYA_ELLSZAM'
      'ANYA_FULSZAM=ANYA_FULSZAM'
      'ANYA_FAJTA_KOD=ANYA_FAJTA_KOD'
      'ANYA_FAJTANEV=ANYA_FAJTANEV'
      'ANYA_FAJTA_SZAZ=ANYA_FAJTA_SZAZ'
      'ANYA_SV=ANYA_SV'
      'ANYA_KMI=ANYA_KMI'
      'ANYA_TIPUS=ANYA_TIPUS'
      'ANYA_IZMOLTSAG=ANYA_IZMOLTSAG'
      'ANYA_LABSZERKEZET=ANYA_LABSZERKEZET'
      'ANYA_ERT_DAT=ANYA_ERT_DAT'
      'APAI_NAGYAPA_NEV=APAI_NAGYAPA_NEV'
      'APAI_NAGYAPA_SZULDAT=APAI_NAGYAPA_SZULDAT'
      'APAI_NAGYAPA_KPLSZ=APAI_NAGYAPA_KPLSZ'
      'APAI_NAGYAPA_ENAR=APAI_NAGYAPA_ENAR'
      'APAI_NAGYAPA_FULSZAM=APAI_NAGYAPA_FULSZAM'
      'APAI_NAGYAPA_FAJTAKOD=APAI_NAGYAPA_FAJTAKOD'
      'APA_NAGYAPA_FAJTANEV=APA_NAGYAPA_FAJTANEV'
      'APAI_NAGYAPA_FAJTA_SZAZ=APAI_NAGYAPA_FAJTA_SZAZ'
      'APAI_NAGYAPA_SV=APAI_NAGYAPA_SV'
      'APAI_NAGYAPA_TGY=APAI_NAGYAPA_TGY'
      'APAI_NAGYAPA_STV_TGY=APAI_NAGYAPA_STV_TGY'
      'APAI_NAGYAPA_TIPUS=APAI_NAGYAPA_TIPUS'
      'APAI_NAGYAPA_IZMOLTSAG=APAI_NAGYAPA_IZMOLTSAG'
      'APAI_NAGYAPA_LABSZERKEZET=APAI_NAGYAPA_LABSZERKEZET'
      'APAI_NAGYAPA_ERTDAT=APAI_NAGYAPA_ERTDAT'
      'APAI_NAGYAPA_APJA_KPLSZ=APAI_NAGYAPA_APJA_KPLSZ'
      'APAI_NAGYAPA_APJA_ENAR=APAI_NAGYAPA_APJA_ENAR'
      'APAI_NAGYAPA_APJA_FULSZAM=APAI_NAGYAPA_APJA_FULSZAM'
      'APAI_NAGYAPA_APJA_NEV=APAI_NAGYAPA_APJA_NEV'
      'APAI_NAGYAPA_ANYJA_ENAR=APAI_NAGYAPA_ANYJA_ENAR'
      'APAI_NAGYAPA_ANYJA_ELLSZAM=APAI_NAGYAPA_ANYJA_ELLSZAM'
      'APAI_NAGYAPA_ANYJA_FULSZAM=APAI_NAGYAPA_ANYJA_FULSZAM'
      'APAI_NAGYAPA_ANYJA_NEV=APAI_NAGYAPA_ANYJA_NEV'
      'APAI_NAGYANYA_NEV=APAI_NAGYANYA_NEV'
      'APAI_NAGYANYA_SZULDAT=APAI_NAGYANYA_SZULDAT'
      'APAI_NAGYANYA_ENAR=APAI_NAGYANYA_ENAR'
      'APAI_NAGYANYA_ELLSZAM=APAI_NAGYANYA_ELLSZAM'
      'APAI_NAGYANYA_FULSZAM=APAI_NAGYANYA_FULSZAM'
      'APAI_NAGYANYA_SV=APAI_NAGYANYA_SV'
      'APAI_NAGYANYA_KMI=APAI_NAGYANYA_KMI'
      'APAI_NAGYANYA_APJA_KPLSZ=APAI_NAGYANYA_APJA_KPLSZ'
      'APAI_NAGYANYA_APJA_NEV=APAI_NAGYANYA_APJA_NEV'
      'APAI_NAGYANYA_APJA_ENAR=APAI_NAGYANYA_APJA_ENAR'
      'APAI_NAGYANYA_APJA_FULSZAM=APAI_NAGYANYA_APJA_FULSZAM'
      'APAI_NAGYANYA_ANYJA_ENAR=APAI_NAGYANYA_ANYJA_ENAR'
      'APAI_NAGYANYA_ANYJA_ELLSZAM=APAI_NAGYANYA_ANYJA_ELLSZAM'
      'APAI_NAGYANYA_ANYJA_FULSZAM=APAI_NAGYANYA_ANYJA_FULSZAM'
      'APAI_NAGYANYA_ANYJA_NEV=APAI_NAGYANYA_ANYJA_NEV'
      'ANYAI_NAGYAPA_KPLSZ=ANYAI_NAGYAPA_KPLSZ'
      'ANYAI_NAGYAPA_ENAR=ANYAI_NAGYAPA_ENAR'
      'ANYAI_NAGYAPA_FULSZAM=ANYAI_NAGYAPA_FULSZAM'
      'ANYAI_NAGYAPA_NEV=ANYAI_NAGYAPA_NEV'
      'ANYAI_NAGYAPA_SZULDAT=ANYAI_NAGYAPA_SZULDAT'
      'ANYAI_NAGYAPA_FAJTAKOD=ANYAI_NAGYAPA_FAJTAKOD'
      'ANYAI_NAGYAPA_FAJTANEV=ANYAI_NAGYAPA_FAJTANEV'
      'ANYAI_NAGYAPA_FAJTA_SZAZ=ANYAI_NAGYAPA_FAJTA_SZAZ'
      'ANYAI_NAGYAPA_SV=ANYAI_NAGYAPA_SV'
      'ANYAI_NAGYAPA_ETGY=ANYAI_NAGYAPA_ETGY'
      'ANYAI_NAGYAPA_STV_TGY=ANYAI_NAGYAPA_STV_TGY'
      'ANYAI_NAGYAPA_TIPUS=ANYAI_NAGYAPA_TIPUS'
      'ANYAI_NAGYAPA_IZMOLTS'#193'G=ANYAI_NAGYAPA_IZMOLTS'#193'G'
      'ANYAI_NAGYAPA_LABSZERKEZET=ANYAI_NAGYAPA_LABSZERKEZET'
      'ANYAI_NAGYAPA_ERT_DAT=ANYAI_NAGYAPA_ERT_DAT'
      'ANYAI_NAGYAPA_APJA_KPLSZ=ANYAI_NAGYAPA_APJA_KPLSZ'
      'ANYAI_NAGYAPA_APJA_ENAR=ANYAI_NAGYAPA_APJA_ENAR'
      'ANYAI_NAGYAPA_APJA_NEV=ANYAI_NAGYAPA_APJA_NEV'
      'ANYAI_NAGYAPA_APJA_FULSZAM=ANYAI_NAGYAPA_APJA_FULSZAM'
      'ANYAI_NAGYAPA_ANYJA_ENAR=ANYAI_NAGYAPA_ANYJA_ENAR'
      'ANYAI_NAGYAPA_ANYJA_NEV=ANYAI_NAGYAPA_ANYJA_NEV'
      'ANYAI_NAGYAPA_ANYJA_ELLSZAM=ANYAI_NAGYAPA_ANYJA_ELLSZAM'
      'ANYAI_NAGYAPA_ANYJA_FULSZAM=ANYAI_NAGYAPA_ANYJA_FULSZAM'
      'ANYAI_NAGYANYA_NEV=ANYAI_NAGYANYA_NEV'
      'ANYAI_NAGYANYA_SZULDAT=ANYAI_NAGYANYA_SZULDAT'
      'ANYAI_NAGYANYA_ENAR=ANYAI_NAGYANYA_ENAR'
      'ANYAI_NAGYANYA_ELLSZAM=ANYAI_NAGYANYA_ELLSZAM'
      'ANYAI_NAGYANYA_FULSZAM=ANYAI_NAGYANYA_FULSZAM'
      'ANYAI_NAGYANYA_SV=ANYAI_NAGYANYA_SV'
      'ANYAI_NAGYANYA_KMI=ANYAI_NAGYANYA_KMI'
      'ANYAI_NAGYANYA_APJA_ENAR=ANYAI_NAGYANYA_APJA_ENAR'
      'ANYAI_NAGYANYA_APJA_KPLSZ=ANYAI_NAGYANYA_APJA_KPLSZ'
      'ANYAI_NAGYANYA_APJA_FULSZAM=ANYAI_NAGYANYA_APJA_FULSZAM'
      'ANYAI_NAGYANYA_APJA_NEV=ANYAI_NAGYANYA_APJA_NEV'
      'ANYAI_NAGYANYA_ANYJA_ENAR=ANYAI_NAGYANYA_ANYJA_ENAR'
      'ANYAI_NAGYANYA_ANYJA_ELLSZAM=ANYAI_NAGYANYA_ANYJA_ELLSZAM'
      'ANYAI_NAGYANYA_ANYJA_FULSZAM=ANYAI_NAGYANYA_ANYJA_FULSZAM'
      'ANYAI_NAGYANYA_ANYJA_NEV=ANYAI_NAGYANYA_ANYJA_NEV'
      'TERM_IDEJE=TERM_IDEJE'
      'TERM_BIKA_KPLSZ=TERM_BIKA_KPLSZ'
      'TERM_BIKA_ENAR=TERM_BIKA_ENAR'
      'TERM_BIKA_NEV=TERM_BIKA_NEV'
      'TERM_BIKA_SZULDAT=TERM_BIKA_SZULDAT'
      'TERM_BIKA_FULSZAM=TERM_BIKA_FULSZAM'
      'TERM_BIKA_FAJTAKOD=TERM_BIKA_FAJTAKOD'
      'TERM_BIKA_FAJTANEV=TERM_BIKA_FAJTANEV'
      'TERM_BIKA_FAJTA_SZAZ=TERM_BIKA_FAJTA_SZAZ'
      'TERM_BIKA_SV=TERM_BIKA_SV'
      'TERM_BIKA_ETGY=TERM_BIKA_ETGY'
      'TERM_BIKA_STV_TGY=TERM_BIKA_STV_TGY'
      'TERM_BIKA_TIPUS=TERM_BIKA_TIPUS'
      'TERM_BIKA_IZMOLTSAG=TERM_BIKA_IZMOLTSAG'
      'TERM_BIKA_LABSZERKEZET=TERM_BIKA_LABSZERKEZET'
      'TERM_BIKA_ERT_DAT=TERM_BIKA_ERT_DAT'
      'TERM_BIKA_APJA_KPLSZ=TERM_BIKA_APJA_KPLSZ'
      'TERM_BIKA_APJA_ENAR=TERM_BIKA_APJA_ENAR'
      'TERM_BIKA_APJA_NEVE=TERM_BIKA_APJA_NEVE'
      'TERM_BIKA_APJA_SZULDAT=TERM_BIKA_APJA_SZULDAT'
      'TERM_BIKA_APJA_FULSZAM=TERM_BIKA_APJA_FULSZAM'
      'TERM_BIKA_ANYJA_KMI=TERM_BIKA_ANYJA_KMI'
      'TERM_BIKA_ANYJA_NEV=TERM_BIKA_ANYJA_NEV'
      'TERM_BIKA_ANYJA_ENAR=TERM_BIKA_ANYJA_ENAR'
      'TERM_BIKA_ANYJA_FULSZAM=TERM_BIKA_ANYJA_FULSZAM'
      'TERM_BIKA_ANYJA_SV=TERM_BIKA_ANYJA_SV'
      'TERM_BIKA_ANYJA_ELLSZAM=TERM_BIKA_ANYJA_ELLSZAM'
      'TERM_BIKA_ANYJA_SZULDAT=TERM_BIKA_ANYJA_SZULDAT'
      'TERM_BIKA_ANYJA_TIPUS=TERM_BIKA_ANYJA_TIPUS'
      'TERM_BIKA_ANYJA_IZMOLTSAG=TERM_BIKA_ANYJA_IZMOLTSAG'
      'TERM_BIKA_ANYJA_LABSZERKEZET=TERM_BIKA_ANYJA_LABSZERKEZET'
      'TERM_BIKA_ANYJA_ERT_DAT=TERM_BIKA_ANYJA_ERT_DAT'
      'TENYESZTO_NEV=TENYESZTO_NEV'
      'TENYESZTO_CIM=TENYESZTO_CIM'
      'TULAJ_NEV=TULAJ_NEV'
      'TULAJ_CIM=TULAJ_CIM'
      'TENYESZTO_KOD=TENYESZTO_KOD'
      'TULAJ_KOD=TULAJ_KOD'
      'ANYA_NET_PONT=ANYA_NET_PONT'
      'NET_PONT=NET_PONT'
      'IKTATOSZAM=IKTATOSZAM'
      'E_TOGY=E_TOGY'
      'ANYA_TOGY=ANYA_TOGY'
      'T_ANYA_TOGY=T_ANYA_TOGY'
      'APA_NET_PONT=APA_NET_PONT'
      'APA_TE_TIPUS=APA_TE_TIPUS'
      'APA_TE_IZMOLTSAG=APA_TE_IZMOLTSAG'
      'APA_TE_LABSZERKEZET=APA_TE_LABSZERKEZET'
      'APA_TE_TOGY=APA_TE_TOGY')
    OpenDataSource = False
    DataSet = sdsListSzLapok
    Left = 1040
    Top = 552
  end
  object sdsListSzLapok: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select szlapok.igdat, szlapok.tkod, szlapok.ukod, szlapok.egy, s' +
      'zlapok.sor, szlapok.per, szlapok.mas, szlapok.kidat, szlapok.hit' +
      'dat,'#13#10'       szlapok.nyelv, szlapok.kplsz, szlapok.enar, m13 as ' +
      'fulszam, m14 as nev, m15 as szuldat, m16 as tkv, m17 as fajtakod' +
      ','#13#10#9'   ef.fnev as fajtanev, m18 as fajta_szaz, m19 as ivar, m20 ' +
      'as sv, m21 as eletnapi_tgy, m22 as stv_tgy,'#13#10#9'   m23 as kmi, m24' +
      ' as tipus, m25 as izmoltsag, m26 as labszerkezet, m27 as ertekel' +
      'es_datuma,'#13#10'    m28 as apa_kplsz, m29 as apa_enar, m30 as apa_sz' +
      'uldat, m31 as apa_nev, m32 as apa_fulszam, m33 as apa_fajtakod,'#13 +
      #10'       apf.fnev as apa_fajtanev, m34 as apa_fajta_szaz, m35 as ' +
      'apa_sv, m36 as apa_etgy, m37 as apa_stv_tgy, m38 as apa_tipus,'#13#10 +
      #9'   m39 as apa_izmoltsag, m40 as apa_labszerkezet, m41 as apa_er' +
      't_dat,'#13#10'    m42 as anya_nev, m43 as anya_szuldat, m44 as anya_en' +
      'ar, m45 as anya_ellszam, m46 as anya_fulszam, m47 as anya_fajta_' +
      'kod,'#13#10'       anf.fnev as anya_fajtanev, m48 as anya_fajta_szaz, ' +
      'm49 as anya_sv, m50 as anya_kmi, m51 as anya_tipus,'#13#10#9'   m52 as ' +
      'anya_izmoltsag, m53 as anya_labszerkezet, m54 as anya_ert_dat,'#13#10 +
      '    m55 as apai_nagyapa_nev, m56 as apai_nagyapa_szuldat, m57 as' +
      ' apai_nagyapa_kplsz, m58 as apai_nagyapa_enar,'#13#10'       m59 as ap' +
      'ai_nagyapa_fulszam, m60 as apai_nagyapa_fajtakod, appf.fnev as a' +
      'pa_nagyapa_fajtanev,'#13#10'       m61 as apai_nagyapa_fajta_szaz, m62' +
      ' as apai_nagyapa_sv, m63 as apai_nagyapa_tgy, m64 as apai_nagyap' +
      'a_stv_tgy,'#13#10#9'   m65 as apai_nagyapa_tipus, m66 as apai_nagyapa_i' +
      'zmoltsag, m67 as apai_nagyapa_labszerkezet, m68 as apai_nagyapa_' +
      'ertdat,'#13#10#9'   m69 as apai_nagyapa_apja_kplsz, m70 as apai_nagyapa' +
      '_apja_enar, m71 as apai_nagyapa_apja_fulszam, m72 as apai_nagyap' +
      'a_apja_nev,'#13#10'       m73 as apai_nagyapa_anyja_enar, m74 as apai_' +
      'nagyapa_anyja_ellszam, m75 as apai_nagyapa_anyja_fulszam, m76 as' +
      ' apai_nagyapa_anyja_nev,'#13#10'    m77 as apai_nagyanya_nev, m78 as a' +
      'pai_nagyanya_szuldat, m79 as apai_nagyanya_enar, m80 as apai_nag' +
      'yanya_ellszam,'#13#10'       m81 as apai_nagyanya_fulszam, m82 as apai' +
      '_nagyanya_sv, m83 as apai_nagyanya_kmi, m84 as apai_nagyanya_apj' +
      'a_kplsz,'#13#10#9'   m85 as apai_nagyanya_apja_nev, m86 as apai_nagyany' +
      'a_apja_enar, m87 as apai_nagyanya_apja_fulszam,'#13#10'       m88 as a' +
      'pai_nagyanya_anyja_enar, m89 as apai_nagyanya_anyja_ellszam, m90' +
      ' as apai_nagyanya_anyja_fulszam, m91 as apai_nagyanya_anyja_nev,' +
      #13#10'    m92 as anyai_nagyapa_kplsz, m93 as anyai_nagyapa_enar, m94' +
      ' as anyai_nagyapa_fulszam, m95 as anyai_nagyapa_nev, m96 as anya' +
      'i_nagyapa_szuldat,'#13#10'       m97 as anyai_nagyapa_fajtakod, anpf.f' +
      'nev as anyai_nagyapa_fajtanev, m98 as anyai_nagyapa_fajta_szaz, ' +
      'm99 as anyai_nagyapa_SV,'#13#10#9'   m100 as anyai_nagyapa_etgy, m101 a' +
      's anyai_nagyapa_stv_tgy, m102 as anyai_nagyapa_tipus, m103 as an' +
      'yai_nagyapa_izmolts'#225'g,'#13#10#9'   m104 as anyai_nagyapa_labszerkezet, ' +
      'm105 as anyai_nagyapa_ert_dat, m106 as anyai_nagyapa_apja_kplsz,' +
      ' m107 as anyai_nagyapa_apja_enar,'#13#10#9'   m108 as anyai_nagyapa_apj' +
      'a_nev, m109 as anyai_nagyapa_apja_fulszam, m110 as anyai_nagyapa' +
      '_anyja_enar,'#13#10'       m111 as anyai_nagyapa_anyja_nev, m112 as an' +
      'yai_nagyapa_anyja_ellszam, m113 as anyai_nagyapa_anyja_fulszam,'#13 +
      #10'    m114 as anyai_nagyanya_nev, m115 as anyai_nagyanya_szuldat,' +
      ' m116 as anyai_nagyanya_enar, m117 as anyai_nagyanya_ellszam,'#13#10' ' +
      '      m118 as anyai_nagyanya_fulszam, m119 as anyai_nagyanya_sv,' +
      ' m120 as anyai_nagyanya_kmi, m121 as anyai_nagyanya_apja_enar,'#13#10 +
      #9'   m122 as anyai_nagyanya_apja_kplsz, m123 as anyai_nagyanya_ap' +
      'ja_fulszam, m124 as anyai_nagyanya_apja_nev,'#13#10#9'   m125 as anyai_' +
      'nagyanya_anyja_enar, m126 as anyai_nagyanya_anyja_ellszam,'#13#10#9'   ' +
      'm127 as anyai_nagyanya_anyja_fulszam, m128 as anyai_nagyanya_any' +
      'ja_nev,'#13#10'    m129 as term_ideje, m130 as term_bika_kplsz, m131 a' +
      's term_bika_enar, m132 as term_bika_nev,'#13#10'       m133 as term_bi' +
      'ka_szuldat, m134 as term_bika_fulszam, m135 as term_bika_fajtako' +
      'd,'#13#10#9'   tbf.fnev as term_bika_fajtanev, m136 as term_bika_fajta_' +
      'szaz, m137 as term_bika_sv,'#13#10#9'   m138 as term_bika_etgy, m139 as' +
      ' term_bika_stv_tgy, m140 as term_bika_tipus,'#13#10#9'   m141 as term_b' +
      'ika_izmoltsag, m142 as term_bika_labszerkezet, m143 as term_bika' +
      '_ert_dat,'#13#10#9'   m144 as term_bika_apja_kplsz, m145 as term_bika_a' +
      'pja_enar, m146 as term_bika_apja_neve,'#13#10#9'   m147 as term_bika_ap' +
      'ja_szuldat, m148 as term_bika_apja_fulszam, m149 as term_bika_an' +
      'yja_kmi,'#13#10#9'   m150 as term_bika_anyja_nev, m151 as term_bika_any' +
      'ja_enar, m152 as term_bika_anyja_fulszam,'#13#10#9'   m153 as term_bika' +
      '_anyja_sv, m154 as term_bika_anyja_ellszam, m155 as term_bika_an' +
      'yja_szuldat,'#13#10#9'   m156 as term_bika_anyja_tipus, m157 as term_bi' +
      'ka_anyja_izmoltsag,'#13#10'       m158 as term_bika_anyja_labszerkezet' +
      ', m159 as term_bika_anyja_ert_dat,'#9'   '#13#10'    m160 as tenyeszto_ne' +
      'v, m161 as tenyeszto_cim, m162 as tulaj_nev, m163 as tulaj_cim, ' +
      'm164 as tenyeszto_kod, m165 as tulaj_kod,'#13#10#9'szlapok.anya_net_pon' +
      't, szlapok.net_pont, szlapok.iktatoszam, szlapok.e_togy, szlapok' +
      '.anya_togy, szlapok.t_anya_togy, szlapok.apa_net_pont,  szlapok.' +
      'apa_te_tipus, szlapok.apa_te_izmoltsag, szlapok.apa_te_labszerke' +
      'zet, szlapok.apa_te_togy'#13#10'from szlapok'#13#10'left join fajta ef on ef' +
      '.fkod =m17'#13#10'left join fajta apf on apf.fkod=m33'#13#10'left join fajta' +
      ' anf on anf.fkod=m47'#13#10'left join fajta appf on appf.fkod=m60'#13#10'lef' +
      't join fajta anpf on anpf.fkod=m97'#13#10'left join fajta tbf on tbf.f' +
      'kod=m135'#13#10'left join KODOK EIV on EIV.KODTIPUSOK_TIPUSKOD = '#39'IVAR' +
      #39' and EIV.KOD = M19'#13#10'WHERE szlapok.enar = :PENAR and sor = :PSOR' +
      ' and per = :PPER'
    DataSet.Parameters = <
      item
        Name = 'PENAR'
        Size = -1
        Value = Null
      end
      item
        Name = 'PSOR'
        Size = -1
        Value = Null
      end
      item
        Name = 'PPER'
        Size = -1
        Value = Null
      end>
    Provider.DataSet.CommandText = 
      'Select szlapok.igdat, szlapok.tkod, szlapok.ukod, szlapok.egy, s' +
      'zlapok.sor, szlapok.per, szlapok.mas, szlapok.kidat, szlapok.hit' +
      'dat,'#13#10'       szlapok.nyelv, szlapok.kplsz, szlapok.enar, m13 as ' +
      'fulszam, m14 as nev, m15 as szuldat, m16 as tkv, m17 as fajtakod' +
      ','#13#10#9'   ef.fnev as fajtanev, m18 as fajta_szaz, m19 as ivar, m20 ' +
      'as sv, m21 as eletnapi_tgy, m22 as stv_tgy,'#13#10#9'   m23 as kmi, m24' +
      ' as tipus, m25 as izmoltsag, m26 as labszerkezet, m27 as ertekel' +
      'es_datuma,'#13#10'    m28 as apa_kplsz, m29 as apa_enar, m30 as apa_sz' +
      'uldat, m31 as apa_nev, m32 as apa_fulszam, m33 as apa_fajtakod,'#13 +
      #10'       apf.fnev as apa_fajtanev, m34 as apa_fajta_szaz, m35 as ' +
      'apa_sv, m36 as apa_etgy, m37 as apa_stv_tgy, m38 as apa_tipus,'#13#10 +
      #9'   m39 as apa_izmoltsag, m40 as apa_labszerkezet, m41 as apa_er' +
      't_dat,'#13#10'    m42 as anya_nev, m43 as anya_szuldat, m44 as anya_en' +
      'ar, m45 as anya_ellszam, m46 as anya_fulszam, m47 as anya_fajta_' +
      'kod,'#13#10'       anf.fnev as anya_fajtanev, m48 as anya_fajta_szaz, ' +
      'm49 as anya_sv, m50 as anya_kmi, m51 as anya_tipus,'#13#10#9'   m52 as ' +
      'anya_izmoltsag, m53 as anya_labszerkezet, m54 as anya_ert_dat,'#13#10 +
      '    m55 as apai_nagyapa_nev, m56 as apai_nagyapa_szuldat, m57 as' +
      ' apai_nagyapa_kplsz, m58 as apai_nagyapa_enar,'#13#10'       m59 as ap' +
      'ai_nagyapa_fulszam, m60 as apai_nagyapa_fajtakod, appf.fnev as a' +
      'pa_nagyapa_fajtanev,'#13#10'       m61 as apai_nagyapa_fajta_szaz, m62' +
      ' as apai_nagyapa_sv, m63 as apai_nagyapa_tgy, m64 as apai_nagyap' +
      'a_stv_tgy,'#13#10#9'   m65 as apai_nagyapa_tipus, m66 as apai_nagyapa_i' +
      'zmoltsag, m67 as apai_nagyapa_labszerkezet, m68 as apai_nagyapa_' +
      'ertdat,'#13#10#9'   m69 as apai_nagyapa_apja_kplsz, m70 as apai_nagyapa' +
      '_apja_enar, m71 as apai_nagyapa_apja_fulszam, m72 as apai_nagyap' +
      'a_apja_nev,'#13#10'       m73 as apai_nagyapa_anyja_enar, m74 as apai_' +
      'nagyapa_anyja_ellszam, m75 as apai_nagyapa_anyja_fulszam, m76 as' +
      ' apai_nagyapa_anyja_nev,'#13#10'    m77 as apai_nagyanya_nev, m78 as a' +
      'pai_nagyanya_szuldat, m79 as apai_nagyanya_enar, m80 as apai_nag' +
      'yanya_ellszam,'#13#10'       m81 as apai_nagyanya_fulszam, m82 as apai' +
      '_nagyanya_sv, m83 as apai_nagyanya_kmi, m84 as apai_nagyanya_apj' +
      'a_kplsz,'#13#10#9'   m85 as apai_nagyanya_apja_nev, m86 as apai_nagyany' +
      'a_apja_enar, m87 as apai_nagyanya_apja_fulszam,'#13#10'       m88 as a' +
      'pai_nagyanya_anyja_enar, m89 as apai_nagyanya_anyja_ellszam, m90' +
      ' as apai_nagyanya_anyja_fulszam, m91 as apai_nagyanya_anyja_nev,' +
      #13#10'    m92 as anyai_nagyapa_kplsz, m93 as anyai_nagyapa_enar, m94' +
      ' as anyai_nagyapa_fulszam, m95 as anyai_nagyapa_nev, m96 as anya' +
      'i_nagyapa_szuldat,'#13#10'       m97 as anyai_nagyapa_fajtakod, anpf.f' +
      'nev as anyai_nagyapa_fajtanev, m98 as anyai_nagyapa_fajta_szaz, ' +
      'm99 as anyai_nagyapa_SV,'#13#10#9'   m100 as anyai_nagyapa_etgy, m101 a' +
      's anyai_nagyapa_stv_tgy, m102 as anyai_nagyapa_tipus, m103 as an' +
      'yai_nagyapa_izmolts'#225'g,'#13#10#9'   m104 as anyai_nagyapa_labszerkezet, ' +
      'm105 as anyai_nagyapa_ert_dat, m106 as anyai_nagyapa_apja_kplsz,' +
      ' m107 as anyai_nagyapa_apja_enar,'#13#10#9'   m108 as anyai_nagyapa_apj' +
      'a_nev, m109 as anyai_nagyapa_apja_fulszam, m110 as anyai_nagyapa' +
      '_anyja_enar,'#13#10'       m111 as anyai_nagyapa_anyja_nev, m112 as an' +
      'yai_nagyapa_anyja_ellszam, m113 as anyai_nagyapa_anyja_fulszam,'#13 +
      #10'    m114 as anyai_nagyanya_nev, m115 as anyai_nagyanya_szuldat,' +
      ' m116 as anyai_nagyanya_enar, m117 as anyai_nagyanya_ellszam,'#13#10' ' +
      '      m118 as anyai_nagyanya_fulszam, m119 as anyai_nagyanya_sv,' +
      ' m120 as anyai_nagyanya_kmi, m121 as anyai_nagyanya_apja_enar,'#13#10 +
      #9'   m122 as anyai_nagyanya_apja_kplsz, m123 as anyai_nagyanya_ap' +
      'ja_fulszam, m124 as anyai_nagyanya_apja_nev,'#13#10#9'   m125 as anyai_' +
      'nagyanya_anyja_enar, m126 as anyai_nagyanya_anyja_ellszam,'#13#10#9'   ' +
      'm127 as anyai_nagyanya_anyja_fulszam, m128 as anyai_nagyanya_any' +
      'ja_nev,'#13#10'    m129 as term_ideje, m130 as term_bika_kplsz, m131 a' +
      's term_bika_enar, m132 as term_bika_nev,'#13#10'       m133 as term_bi' +
      'ka_szuldat, m134 as term_bika_fulszam, m135 as term_bika_fajtako' +
      'd,'#13#10#9'   tbf.fnev as term_bika_fajtanev, m136 as term_bika_fajta_' +
      'szaz, m137 as term_bika_sv,'#13#10#9'   m138 as term_bika_etgy, m139 as' +
      ' term_bika_stv_tgy, m140 as term_bika_tipus,'#13#10#9'   m141 as term_b' +
      'ika_izmoltsag, m142 as term_bika_labszerkezet, m143 as term_bika' +
      '_ert_dat,'#13#10#9'   m144 as term_bika_apja_kplsz, m145 as term_bika_a' +
      'pja_enar, m146 as term_bika_apja_neve,'#13#10#9'   m147 as term_bika_ap' +
      'ja_szuldat, m148 as term_bika_apja_fulszam, m149 as term_bika_an' +
      'yja_kmi,'#13#10#9'   m150 as term_bika_anyja_nev, m151 as term_bika_any' +
      'ja_enar, m152 as term_bika_anyja_fulszam,'#13#10#9'   m153 as term_bika' +
      '_anyja_sv, m154 as term_bika_anyja_ellszam, m155 as term_bika_an' +
      'yja_szuldat,'#13#10#9'   m156 as term_bika_anyja_tipus, m157 as term_bi' +
      'ka_anyja_izmoltsag,'#13#10'       m158 as term_bika_anyja_labszerkezet' +
      ', m159 as term_bika_anyja_ert_dat,'#9'   '#13#10'    m160 as tenyeszto_ne' +
      'v, m161 as tenyeszto_cim, m162 as tulaj_nev, m163 as tulaj_cim, ' +
      'm164 as tenyeszto_kod, m165 as tulaj_kod,'#13#10#9'szlapok.anya_net_pon' +
      't, szlapok.net_pont, szlapok.iktatoszam, szlapok.e_togy, szlapok' +
      '.anya_togy, szlapok.t_anya_togy, szlapok.apa_net_pont,  szlapok.' +
      'apa_te_tipus, szlapok.apa_te_izmoltsag, szlapok.apa_te_labszerke' +
      'zet, szlapok.apa_te_togy'#13#10'from szlapok'#13#10'left join fajta ef on ef' +
      '.fkod =m17'#13#10'left join fajta apf on apf.fkod=m33'#13#10'left join fajta' +
      ' anf on anf.fkod=m47'#13#10'left join fajta appf on appf.fkod=m60'#13#10'lef' +
      't join fajta anpf on anpf.fkod=m97'#13#10'left join fajta tbf on tbf.f' +
      'kod=m135'#13#10'left join KODOK EIV on EIV.KODTIPUSOK_TIPUSKOD = '#39'IVAR' +
      #39' and EIV.KOD = M19'#13#10'WHERE szlapok.enar = :PENAR and sor = :PSOR' +
      ' and per = :PPER'
    Provider.DataSet.Parameters = <
      item
        Name = 'PENAR'
        Size = -1
        Value = Null
      end
      item
        Name = 'PSOR'
        Size = -1
        Value = Null
      end
      item
        Name = 'PPER'
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    FieldDefs = <
      item
        Name = 'IGDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TKOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'UKOD'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'EGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'SOR'
        DataType = ftInteger
      end
      item
        Name = 'PER'
        DataType = ftInteger
      end
      item
        Name = 'MAS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'KIDAT'
        DataType = ftDateTime
      end
      item
        Name = 'HITDAT'
        DataType = ftDateTime
      end
      item
        Name = 'NYELV'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TKV'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'IVAR'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'SV'
        DataType = ftInteger
      end
      item
        Name = 'ELETNAPI_TGY'
        DataType = ftInteger
      end
      item
        Name = 'STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ERTEKELES_DATUMA'
        DataType = ftDateTime
      end
      item
        Name = 'APA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'APA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'APA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'APA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'APA_SV'
        DataType = ftInteger
      end
      item
        Name = 'APA_ETGY'
        DataType = ftInteger
      end
      item
        Name = 'APA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'APA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ANYA_ELLSZAM'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'ANYA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYA_FAJTA_KOD'
        DataType = ftInteger
      end
      item
        Name = 'ANYA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYA_SV'
        DataType = ftInteger
      end
      item
        Name = 'ANYA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYAPA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYAPA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYAPA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'APAI_NAGYAPA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'APAI_NAGYAPA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'APA_NAGYAPA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYAPA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'APAI_NAGYAPA_SV'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYAPA_TGY'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYAPA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYAPA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APAI_NAGYAPA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APAI_NAGYAPA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APAI_NAGYAPA_ERTDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYAPA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'APAI_NAGYAPA_APJA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'APAI_NAGYAPA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYAPA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYANYA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYANYA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'APAI_NAGYANYA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'APAI_NAGYANYA_ELLSZAM'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'APAI_NAGYANYA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_SV'
        DataType = ftInteger
      end
      item
        Name = 'APAI_NAGYANYA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'APAI_NAGYANYA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'APAI_NAGYANYA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'APAI_NAGYANYA_APJA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'APAI_NAGYANYA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAI_NAGYANYA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'ANYAI_NAGYAPA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ANYAI_NAGYAPA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYAI_NAGYAPA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYAI_NAGYAPA_SV'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_ETGY'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYAPA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYAI_NAGYAPA_IZMOLTS'#193'G'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYAI_NAGYAPA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYAI_NAGYAPA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'ANYAI_NAGYAPA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYANYA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'ANYAI_NAGYANYA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ANYAI_NAGYANYA_ELLSZAM'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'ANYAI_NAGYANYA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_SV'
        DataType = ftInteger
      end
      item
        Name = 'ANYAI_NAGYANYA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_APJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANYAI_NAGYANYA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_IDEJE'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'TERM_BIKA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TERM_BIKA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_FAJTAKOD'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_FAJTANEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_FAJTA_SZAZ'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'TERM_BIKA_SV'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_ETGY'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_STV_TGY'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_APJA_KPLSZ'
        DataType = ftBCD
        Precision = 10
        Size = 4
      end
      item
        Name = 'TERM_BIKA_APJA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TERM_BIKA_APJA_NEVE'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_APJA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_APJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_ANYJA_KMI'
        DataType = ftBCD
        Precision = 6
        Size = 2
      end
      item
        Name = 'TERM_BIKA_ANYJA_NEV'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'TERM_BIKA_ANYJA_ENAR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'TERM_BIKA_ANYJA_FULSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TERM_BIKA_ANYJA_SV'
        DataType = ftInteger
      end
      item
        Name = 'TERM_BIKA_ANYJA_ELLSZAM'
        DataType = ftWideString
        Size = 11
      end
      item
        Name = 'TERM_BIKA_ANYJA_SZULDAT'
        DataType = ftDateTime
      end
      item
        Name = 'TERM_BIKA_ANYJA_TIPUS'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ANYJA_IZMOLTSAG'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ANYJA_LABSZERKEZET'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TERM_BIKA_ANYJA_ERT_DAT'
        DataType = ftDateTime
      end
      item
        Name = 'TENYESZTO_NEV'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TENYESZTO_CIM'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TULAJ_NEV'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TULAJ_CIM'
        DataType = ftWideString
        Size = 39
      end
      item
        Name = 'TENYESZTO_KOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'TULAJ_KOD'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'ANYA_NET_PONT'
        DataType = ftInteger
      end
      item
        Name = 'NET_PONT'
        DataType = ftInteger
      end
      item
        Name = 'IKTATOSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'E_TOGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'ANYA_TOGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'T_ANYA_TOGY'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'APA_NET_PONT'
        DataType = ftInteger
      end
      item
        Name = 'APA_TOGY'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_TIPUS'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_IZMOLTSAG'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_LABSZERKEZET'
        DataType = ftInteger
      end
      item
        Name = 'APA_TE_TOGY'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1168
    Top = 472
    object sdsListSzLapokIGDAT: TDateTimeField
      FieldName = 'IGDAT'
    end
    object sdsListSzLapokTKOD: TWideStringField
      FieldName = 'TKOD'
      Size = 7
    end
    object sdsListSzLapokUKOD: TWideStringField
      FieldName = 'UKOD'
      Size = 3
    end
    object sdsListSzLapokEGY: TWideStringField
      FieldName = 'EGY'
      Size = 1
    end
    object sdsListSzLapokSOR: TIntegerField
      FieldName = 'SOR'
    end
    object sdsListSzLapokPER: TIntegerField
      FieldName = 'PER'
    end
    object sdsListSzLapokMAS: TWideStringField
      FieldName = 'MAS'
      Size = 1
    end
    object sdsListSzLapokKIDAT: TDateTimeField
      FieldName = 'KIDAT'
    end
    object sdsListSzLapokHITDAT: TDateTimeField
      FieldName = 'HITDAT'
    end
    object sdsListSzLapokNYELV: TWideStringField
      FieldName = 'NYELV'
      Size = 1
    end
    object sdsListSzLapokKPLSZ: TBCDField
      FieldName = 'KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 10
    end
    object sdsListSzLapokFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
    end
    object sdsListSzLapokNEV: TWideStringField
      FieldName = 'NEV'
      Size = 40
    end
    object sdsListSzLapokSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsListSzLapokTKV: TWideStringField
      FieldName = 'TKV'
      Size = 1
    end
    object sdsListSzLapokFAJTAKOD: TIntegerField
      FieldName = 'FAJTAKOD'
    end
    object sdsListSzLapokFAJTANEV: TWideStringField
      FieldName = 'FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokFAJTA_SZAZ: TBCDField
      FieldName = 'FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokIVAR: TWideStringField
      FieldName = 'IVAR'
      Size = 1
    end
    object sdsListSzLapokSV: TIntegerField
      FieldName = 'SV'
    end
    object sdsListSzLapokELETNAPI_TGY: TIntegerField
      FieldName = 'ELETNAPI_TGY'
    end
    object sdsListSzLapokSTV_TGY: TIntegerField
      FieldName = 'STV_TGY'
    end
    object sdsListSzLapokKMI: TBCDField
      FieldName = 'KMI'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokTIPUS: TWideStringField
      FieldName = 'TIPUS'
      Size = 1
    end
    object sdsListSzLapokIZMOLTSAG: TWideStringField
      FieldName = 'IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokLABSZERKEZET: TWideStringField
      FieldName = 'LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokERTEKELES_DATUMA: TDateTimeField
      FieldName = 'ERTEKELES_DATUMA'
    end
    object sdsListSzLapokAPA_KPLSZ: TBCDField
      FieldName = 'APA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokAPA_ENAR: TWideStringField
      FieldName = 'APA_ENAR'
      Size = 10
    end
    object sdsListSzLapokAPA_SZULDAT: TDateTimeField
      FieldName = 'APA_SZULDAT'
    end
    object sdsListSzLapokAPA_NEV: TWideStringField
      FieldName = 'APA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPA_FULSZAM: TWideStringField
      FieldName = 'APA_FULSZAM'
    end
    object sdsListSzLapokAPA_FAJTAKOD: TIntegerField
      FieldName = 'APA_FAJTAKOD'
    end
    object sdsListSzLapokAPA_FAJTANEV: TWideStringField
      FieldName = 'APA_FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'APA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokAPA_SV: TIntegerField
      FieldName = 'APA_SV'
    end
    object sdsListSzLapokAPA_ETGY: TIntegerField
      FieldName = 'APA_ETGY'
    end
    object sdsListSzLapokAPA_STV_TGY: TIntegerField
      FieldName = 'APA_STV_TGY'
    end
    object sdsListSzLapokAPA_TIPUS: TWideStringField
      FieldName = 'APA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokAPA_IZMOLTSAG: TWideStringField
      FieldName = 'APA_IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokAPA_LABSZERKEZET: TWideStringField
      FieldName = 'APA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokAPA_ERT_DAT: TDateTimeField
      FieldName = 'APA_ERT_DAT'
    end
    object sdsListSzLapokANYA_NEV: TWideStringField
      FieldName = 'ANYA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYA_SZULDAT: TDateTimeField
      FieldName = 'ANYA_SZULDAT'
    end
    object sdsListSzLapokANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 10
    end
    object sdsListSzLapokANYA_ELLSZAM: TWideStringField
      FieldName = 'ANYA_ELLSZAM'
      Size = 11
    end
    object sdsListSzLapokANYA_FULSZAM: TWideStringField
      FieldName = 'ANYA_FULSZAM'
    end
    object sdsListSzLapokANYA_FAJTA_KOD: TIntegerField
      FieldName = 'ANYA_FAJTA_KOD'
    end
    object sdsListSzLapokANYA_FAJTANEV: TWideStringField
      FieldName = 'ANYA_FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokANYA_FAJTA_SZAZ: TBCDField
      FieldName = 'ANYA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokANYA_SV: TIntegerField
      FieldName = 'ANYA_SV'
    end
    object sdsListSzLapokANYA_KMI: TBCDField
      FieldName = 'ANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokANYA_TIPUS: TWideStringField
      FieldName = 'ANYA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokANYA_IZMOLTSAG: TWideStringField
      FieldName = 'ANYA_IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokANYA_LABSZERKEZET: TWideStringField
      FieldName = 'ANYA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokANYA_ERT_DAT: TDateTimeField
      FieldName = 'ANYA_ERT_DAT'
    end
    object sdsListSzLapokAPAI_NAGYAPA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYAPA_SZULDAT: TDateTimeField
      FieldName = 'APAI_NAGYAPA_SZULDAT'
    end
    object sdsListSzLapokAPAI_NAGYAPA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYAPA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokAPAI_NAGYAPA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_ENAR'
      Size = 10
    end
    object sdsListSzLapokAPAI_NAGYAPA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYAPA_FAJTAKOD: TIntegerField
      FieldName = 'APAI_NAGYAPA_FAJTAKOD'
    end
    object sdsListSzLapokAPA_NAGYAPA_FAJTANEV: TWideStringField
      FieldName = 'APA_NAGYAPA_FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'APAI_NAGYAPA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokAPAI_NAGYAPA_SV: TIntegerField
      FieldName = 'APAI_NAGYAPA_SV'
    end
    object sdsListSzLapokAPAI_NAGYAPA_TGY: TIntegerField
      FieldName = 'APAI_NAGYAPA_TGY'
    end
    object sdsListSzLapokAPAI_NAGYAPA_STV_TGY: TIntegerField
      FieldName = 'APAI_NAGYAPA_STV_TGY'
    end
    object sdsListSzLapokAPAI_NAGYAPA_TIPUS: TWideStringField
      FieldName = 'APAI_NAGYAPA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokAPAI_NAGYAPA_IZMOLTSAG: TWideStringField
      FieldName = 'APAI_NAGYAPA_IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokAPAI_NAGYAPA_LABSZERKEZET: TWideStringField
      FieldName = 'APAI_NAGYAPA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokAPAI_NAGYAPA_ERTDAT: TDateTimeField
      FieldName = 'APAI_NAGYAPA_ERTDAT'
    end
    object sdsListSzLapokAPAI_NAGYAPA_APJA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYAPA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokAPAI_NAGYAPA_APJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_ENAR'
      Size = 10
    end
    object sdsListSzLapokAPAI_NAGYAPA_APJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYAPA_APJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYAPA_ANYJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_ENAR'
      Size = 10
    end
    object sdsListSzLapokAPAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsListSzLapokAPAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYAPA_ANYJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYANYA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYANYA_SZULDAT: TDateTimeField
      FieldName = 'APAI_NAGYANYA_SZULDAT'
    end
    object sdsListSzLapokAPAI_NAGYANYA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_ENAR'
      Size = 10
    end
    object sdsListSzLapokAPAI_NAGYANYA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ELLSZAM'
      Size = 11
    end
    object sdsListSzLapokAPAI_NAGYANYA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYANYA_SV: TIntegerField
      FieldName = 'APAI_NAGYANYA_SV'
    end
    object sdsListSzLapokAPAI_NAGYANYA_KMI: TBCDField
      FieldName = 'APAI_NAGYANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokAPAI_NAGYANYA_APJA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYANYA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokAPAI_NAGYANYA_APJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_NEV'
      Size = 40
    end
    object sdsListSzLapokAPAI_NAGYANYA_APJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_ENAR'
      Size = 10
    end
    object sdsListSzLapokAPAI_NAGYANYA_APJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYANYA_ANYJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_ENAR'
      Size = 10
    end
    object sdsListSzLapokAPAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsListSzLapokAPAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_FULSZAM'
    end
    object sdsListSzLapokAPAI_NAGYANYA_ANYJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYAPA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokANYAI_NAGYAPA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ENAR'
      Size = 10
    end
    object sdsListSzLapokANYAI_NAGYAPA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYAPA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYAPA_SZULDAT: TDateTimeField
      FieldName = 'ANYAI_NAGYAPA_SZULDAT'
    end
    object sdsListSzLapokANYAI_NAGYAPA_FAJTAKOD: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_FAJTAKOD'
    end
    object sdsListSzLapokANYAI_NAGYAPA_FAJTANEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokANYAI_NAGYAPA_SV: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_SV'
    end
    object sdsListSzLapokANYAI_NAGYAPA_ETGY: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_ETGY'
    end
    object sdsListSzLapokANYAI_NAGYAPA_STV_TGY: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_STV_TGY'
    end
    object sdsListSzLapokANYAI_NAGYAPA_TIPUS: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokANYAI_NAGYAPA_IZMOLTSG: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_IZMOLTS'#193'G'
      Size = 1
    end
    object sdsListSzLapokANYAI_NAGYAPA_LABSZERKEZET: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokANYAI_NAGYAPA_ERT_DAT: TDateTimeField
      FieldName = 'ANYAI_NAGYAPA_ERT_DAT'
    end
    object sdsListSzLapokANYAI_NAGYAPA_APJA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokANYAI_NAGYAPA_APJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_ENAR'
      Size = 10
    end
    object sdsListSzLapokANYAI_NAGYAPA_APJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYAPA_APJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYAPA_ANYJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_ENAR'
      Size = 10
    end
    object sdsListSzLapokANYAI_NAGYAPA_ANYJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsListSzLapokANYAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYANYA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYANYA_SZULDAT: TDateTimeField
      FieldName = 'ANYAI_NAGYANYA_SZULDAT'
    end
    object sdsListSzLapokANYAI_NAGYANYA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ENAR'
      Size = 10
    end
    object sdsListSzLapokANYAI_NAGYANYA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ELLSZAM'
      Size = 11
    end
    object sdsListSzLapokANYAI_NAGYANYA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYANYA_SV: TIntegerField
      FieldName = 'ANYAI_NAGYANYA_SV'
    end
    object sdsListSzLapokANYAI_NAGYANYA_KMI: TBCDField
      FieldName = 'ANYAI_NAGYANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokANYAI_NAGYANYA_APJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_ENAR'
      Size = 10
    end
    object sdsListSzLapokANYAI_NAGYANYA_APJA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYANYA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokANYAI_NAGYANYA_APJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYANYA_APJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_NEV'
      Size = 40
    end
    object sdsListSzLapokANYAI_NAGYANYA_ANYJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_ENAR'
      Size = 10
    end
    object sdsListSzLapokANYAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsListSzLapokANYAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_FULSZAM'
    end
    object sdsListSzLapokANYAI_NAGYANYA_ANYJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_NEV'
      Size = 40
    end
    object sdsListSzLapokTERM_IDEJE: TDateTimeField
      FieldName = 'TERM_IDEJE'
    end
    object sdsListSzLapokTERM_BIKA_KPLSZ: TBCDField
      FieldName = 'TERM_BIKA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokTERM_BIKA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_ENAR'
      Size = 10
    end
    object sdsListSzLapokTERM_BIKA_NEV: TWideStringField
      FieldName = 'TERM_BIKA_NEV'
      Size = 40
    end
    object sdsListSzLapokTERM_BIKA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_SZULDAT'
    end
    object sdsListSzLapokTERM_BIKA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_FULSZAM'
    end
    object sdsListSzLapokTERM_BIKA_FAJTAKOD: TIntegerField
      FieldName = 'TERM_BIKA_FAJTAKOD'
    end
    object sdsListSzLapokTERM_BIKA_FAJTANEV: TWideStringField
      FieldName = 'TERM_BIKA_FAJTANEV'
      Size = 40
    end
    object sdsListSzLapokTERM_BIKA_FAJTA_SZAZ: TBCDField
      FieldName = 'TERM_BIKA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokTERM_BIKA_SV: TIntegerField
      FieldName = 'TERM_BIKA_SV'
    end
    object sdsListSzLapokTERM_BIKA_ETGY: TIntegerField
      FieldName = 'TERM_BIKA_ETGY'
    end
    object sdsListSzLapokTERM_BIKA_STV_TGY: TIntegerField
      FieldName = 'TERM_BIKA_STV_TGY'
    end
    object sdsListSzLapokTERM_BIKA_TIPUS: TWideStringField
      FieldName = 'TERM_BIKA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_IZMOLTSAG: TWideStringField
      FieldName = 'TERM_BIKA_IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_LABSZERKEZET: TWideStringField
      FieldName = 'TERM_BIKA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_ERT_DAT: TDateTimeField
      FieldName = 'TERM_BIKA_ERT_DAT'
    end
    object sdsListSzLapokTERM_BIKA_APJA_KPLSZ: TBCDField
      FieldName = 'TERM_BIKA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListSzLapokTERM_BIKA_APJA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_APJA_ENAR'
      Size = 10
    end
    object sdsListSzLapokTERM_BIKA_APJA_NEVE: TWideStringField
      FieldName = 'TERM_BIKA_APJA_NEVE'
      Size = 40
    end
    object sdsListSzLapokTERM_BIKA_APJA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_APJA_SZULDAT'
    end
    object sdsListSzLapokTERM_BIKA_APJA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_APJA_FULSZAM'
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_KMI: TBCDField
      FieldName = 'TERM_BIKA_ANYJA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_NEV: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_NEV'
      Size = 40
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_ENAR'
      Size = 10
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_FULSZAM'
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_SV: TIntegerField
      FieldName = 'TERM_BIKA_ANYJA_SV'
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_ANYJA_SZULDAT'
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_TIPUS: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_TIPUS'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_IZMOLTSAG: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_IZMOLTSAG'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_LABSZERKEZET: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_LABSZERKEZET'
      Size = 1
    end
    object sdsListSzLapokTERM_BIKA_ANYJA_ERT_DAT: TDateTimeField
      FieldName = 'TERM_BIKA_ANYJA_ERT_DAT'
    end
    object sdsListSzLapokTENYESZTO_NEV: TWideStringField
      FieldName = 'TENYESZTO_NEV'
      Size = 39
    end
    object sdsListSzLapokTENYESZTO_CIM: TWideStringField
      FieldName = 'TENYESZTO_CIM'
      Size = 39
    end
    object sdsListSzLapokTULAJ_NEV: TWideStringField
      FieldName = 'TULAJ_NEV'
      Size = 39
    end
    object sdsListSzLapokTULAJ_CIM: TWideStringField
      FieldName = 'TULAJ_CIM'
      Size = 39
    end
    object sdsListSzLapokTENYESZTO_KOD: TWideStringField
      FieldName = 'TENYESZTO_KOD'
      Size = 7
    end
    object sdsListSzLapokTULAJ_KOD: TWideStringField
      FieldName = 'TULAJ_KOD'
      Size = 7
    end
    object sdsListSzLapokANYA_NET_PONT: TIntegerField
      FieldName = 'ANYA_NET_PONT'
    end
    object sdsListSzLapokNET_PONT: TIntegerField
      FieldName = 'NET_PONT'
    end
    object sdsListSzLapokIKTATOSZAM: TWideStringField
      FieldName = 'IKTATOSZAM'
    end
    object sdsListSzLapokE_TOGY: TWideStringField
      FieldName = 'E_TOGY'
      Size = 1
    end
    object sdsListSzLapokANYA_TOGY: TWideStringField
      FieldName = 'ANYA_TOGY'
      Size = 1
    end
    object sdsListSzLapokT_ANYA_TOGY: TWideStringField
      FieldName = 'T_ANYA_TOGY'
      Size = 1
    end
    object sdsListSzLapokAPA_NET_PONT: TIntegerField
      FieldName = 'APA_NET_PONT'
    end
    object sdsListSzLapokAPA_TE_TIPUS: TIntegerField
      FieldName = 'APA_TE_TIPUS'
    end
    object sdsListSzLapokAPA_TE_IZMOLTSAG: TIntegerField
      FieldName = 'APA_TE_IZMOLTSAG'
    end
    object sdsListSzLapokAPA_TE_LABSZERKEZET: TIntegerField
      FieldName = 'APA_TE_LABSZERKEZET'
    end
    object sdsListSzLapokAPA_TE_TOGY: TIntegerField
      FieldName = 'APA_TE_TOGY'
    end
  end
end
