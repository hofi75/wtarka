object frmSzarmazasiIgazolas: TfrmSzarmazasiIgazolas
  Left = 652
  Top = 223
  Width = 1252
  Height = 725
  Caption = 'frmSzarmazasiIgazolas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbListanev: TLabel
    Left = 148
    Top = 64
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
    Left = 920
    Top = 568
    Width = 89
    Height = 25
    Caption = 'R'#246'gz'#237't'
    TabOrder = 0
    Visible = False
    OnClick = btnRogzitClic
  end
  object PageControl1: TPageControl
    Left = 376
    Top = 16
    Width = 849
    Height = 537
    Hint = 'Egyed'
    ActivePage = TabEU
    ParentShowHint = False
    ShowHint = True
    Style = tsFlatButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Egyed'
      object GroupBox01: TGroupBox
        Left = 8
        Top = 8
        Width = 825
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
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Apa'
      ImageIndex = 1
      object GroupBox02: TTalGroupBox
        Left = 8
        Top = 8
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
        Left = 8
        Top = 8
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
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Apai nagyapa'
      ImageIndex = 3
      object GroupBox04: TTalGroupBox
        Left = 8
        Top = 8
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
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Apai nagyanya'
      ImageIndex = 4
      object GroupBox05: TTalGroupBox
        Left = 8
        Top = 8
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
        Left = 8
        Top = 8
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
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Anyai nagyanya'
      ImageIndex = 6
      object GroupBox07: TTalGroupBox
        Left = 8
        Top = 8
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
        Left = 8
        Top = 8
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
        Top = 8
        Width = 809
        Height = 215
        Enabled = False
        TabOrder = 0
        object TalGroupBox22: TTalGroupBox
          Left = 33
          Top = 30
          Width = 350
          Height = 155
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
            Top = 86
            Width = 21
            Height = 13
            Caption = 'C'#237'm:'
          end
          object TalLabel186: TTalLabel
            Left = 16
            Top = 118
            Width = 31
            Height = 13
            Caption = 'E-mail:'
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
          object edtTENYCIM: TTalDBEdit
            Left = 64
            Top = 86
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'edtTENYCIM'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'TENYESZTO_CIM'
            DataSource = dsHivSzarmLap
          end
          object TalDBEdit7: TTalDBEdit
            Left = 64
            Top = 118
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'edtTENYEMAIL'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'TENYEMAIL'
            DataSource = dsHivSzarmLap
          end
        end
        object TalGroupBox23: TTalGroupBox
          Left = 417
          Top = 30
          Width = 350
          Height = 155
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
            Top = 86
            Width = 21
            Height = 13
            Caption = 'C'#237'm:'
          end
          object TalLabel188: TTalLabel
            Left = 16
            Top = 118
            Width = 31
            Height = 13
            Caption = 'E-mail:'
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
          object edtTULEMAIL: TTalDBEdit
            Left = 64
            Top = 118
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'edtTULEMAIL'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 3
            DataField = 'TULEMAIL'
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
    object TabEU: TTabSheet
      Caption = 'EU'
      ImageIndex = 9
      object gbEU: TTalGroupBox
        Left = 8
        Top = 8
        Width = 824
        Height = 499
        Caption = 'EU lap '
        Enabled = False
        TabOrder = 0
        object TalLabel181: TTalLabel
          Left = 16
          Top = 26
          Width = 99
          Height = 16
          Caption = 'Kibocs'#225't'#243' email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object TalLabel182: TTalLabel
          Left = 16
          Top = 50
          Width = 111
          Height = 16
          Caption = 'T'#246'rzsk'#246'nyvi sz'#225'm:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object TalLabel187: TTalLabel
          Left = 16
          Top = 74
          Width = 136
          Height = 16
          Caption = #193'llat sz'#252'let'#233'si orsz'#225'ga:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edtKIBEMAIL: TTalDBEdit
          Left = 192
          Top = 22
          Width = 201
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'edtKIBEMAIL'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 0
          DataField = 'KIBEMAIL'
          DataSource = dsHivSzarmIg
        end
        object edtTKVSZ: TTalDBEdit
          Left = 192
          Top = 46
          Width = 200
          Height = 22
          Alignment = taLeftJustify
          Required = False
          RequiredColor = clInfoBk
          ReadOnlyColor = clActiveBorder
          Text = 'edtTKVSZ'
          Enabled = True
          SpinVisible = False
          ButtonVisible = False
          MaxLength = -1
          TabOrder = 1
          DataField = 'TKVSZAM'
          DataSource = dsHivSzarmLap
        end
        object TalGroupBox2: TTalGroupBox
          Left = 416
          Top = 16
          Width = 385
          Height = 97
          Caption = 'Azonoss'#225'g ellen'#337'rz'#233's '
          TabOrder = 2
          object TalLabel183: TTalLabel
            Left = 8
            Top = 16
            Width = 63
            Height = 16
            Caption = 'M'#243'dszere:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel184: TTalLabel
            Left = 8
            Top = 40
            Width = 65
            Height = 16
            Caption = 'Eredm'#233'ny:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel185: TTalLabel
            Left = 8
            Top = 64
            Width = 136
            Height = 16
            Caption = 'Vizsg'#225'lat iktat'#243' sz'#225'ma:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtAZONMOD: TTalDBComboBox
            Left = 176
            Top = 12
            Width = 201
            Height = 21
            DataField = 'AZONMOD'
            DataSource = dsHivSzarmLap
            ItemHeight = 13
            Items.Strings = (
              ''
              'DNS'
              'V'#233'r'
              #220'res')
            TabOrder = 0
          end
          object edtAZONEREDM: TTalDBComboBox
            Left = 176
            Top = 40
            Width = 201
            Height = 21
            DataField = 'AZONEREDM'
            DataSource = dsHivSzarmLap
            ItemHeight = 13
            Items.Strings = (
              ''
              'meger'#337's'#237'tett'
              'nem kiz'#225'rt'
              #252'res')
            TabOrder = 1
          end
          object edtAZONIKT: TTalDBEdit
            Left = 176
            Top = 64
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'edtAZONIKT'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 2
            DataField = 'AZONIKT'
            DataSource = dsHivSzarmLap
          end
        end
        object dblSZORSZ: TTalDBLookupComboBox
          Left = 192
          Top = 75
          Width = 201
          Height = 21
          DataField = 'SZORSZ'
          DataSource = dsHivSzarmLap
          KeyField = 'NEV'
          ListField = 'NEV'
          TabOrder = 3
        end
        object TalGroupBox1: TTalGroupBox
          Left = 16
          Top = 120
          Width = 385
          Height = 73
          Caption = 'Apa sz'#225'rmaz'#225'sa '
          TabOrder = 4
          object TalLabel189: TTalLabel
            Left = 8
            Top = 16
            Width = 111
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi sz'#225'm:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel190: TTalLabel
            Left = 8
            Top = 44
            Width = 104
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi r'#233'sz:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtAPKTVSZ: TTalDBEdit
            Left = 176
            Top = 16
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'edtAPKTVSZ'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'APTKVSZ'
            DataSource = dsHivSzarmLap
          end
          object cbAPTKVR: TTalDBComboBox
            Left = 176
            Top = 44
            Width = 201
            Height = 21
            DataField = 'APTKVR'
            DataSource = dsHivSzarmLap
            ItemHeight = 13
            Items.Strings = (
              ''
              'F'#337)
            TabOrder = 1
          end
        end
        object TalGroupBox3: TTalGroupBox
          Left = 16
          Top = 200
          Width = 385
          Height = 73
          Caption = 'Apai nagyapa sz'#225'rmaz'#225'sa '
          TabOrder = 5
          object TalLabel191: TTalLabel
            Left = 8
            Top = 16
            Width = 111
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi sz'#225'm:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel192: TTalLabel
            Left = 8
            Top = 44
            Width = 104
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi r'#233'sz:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtAPAPTKVSZ: TTalDBEdit
            Left = 176
            Top = 16
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'edtAPAPTKVSZ'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'APAPTKVSZ'
            DataSource = dsHivSzarmLap
          end
          object cbAPAPTKVR: TTalDBComboBox
            Left = 176
            Top = 44
            Width = 201
            Height = 21
            DataField = 'APAPTKVR'
            DataSource = dsHivSzarmLap
            ItemHeight = 13
            Items.Strings = (
              ''
              'F'#337)
            TabOrder = 1
          end
        end
        object TalGroupBox8: TTalGroupBox
          Left = 16
          Top = 280
          Width = 385
          Height = 73
          Caption = 'Apai nagyanya sz'#225'rmaz'#225'sa '
          TabOrder = 6
          object TalLabel193: TTalLabel
            Left = 8
            Top = 16
            Width = 111
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi sz'#225'm:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel194: TTalLabel
            Left = 8
            Top = 44
            Width = 104
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi r'#233'sz:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtAPANTKVSZ: TTalDBEdit
            Left = 176
            Top = 16
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'edtAPANTKVSZ'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'APANTKVSZ'
            DataSource = dsHivSzarmLap
          end
          object cbAPANTKVR: TTalDBComboBox
            Left = 176
            Top = 44
            Width = 201
            Height = 21
            DataField = 'APANTKVR'
            DataSource = dsHivSzarmLap
            ItemHeight = 13
            Items.Strings = (
              ''
              'F'#337
              'Mell'#233'k')
            TabOrder = 1
          end
        end
        object TalGroupBox12: TTalGroupBox
          Left = 416
          Top = 120
          Width = 385
          Height = 73
          Caption = 'Anya sz'#225'rmaz'#225'sa '
          TabOrder = 7
          object TalLabel195: TTalLabel
            Left = 8
            Top = 16
            Width = 111
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi sz'#225'm:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel196: TTalLabel
            Left = 8
            Top = 44
            Width = 104
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi r'#233'sz:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtANTKVSZ: TTalDBEdit
            Left = 176
            Top = 16
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'edtANTKVSZ'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'ANTKVSZ'
            DataSource = dsHivSzarmLap
          end
          object cbANTKVR: TTalDBComboBox
            Left = 176
            Top = 44
            Width = 201
            Height = 21
            DataField = 'ANTKVR'
            DataSource = dsHivSzarmLap
            ItemHeight = 13
            Items.Strings = (
              ''
              'F'#337
              'Mell'#233'k')
            TabOrder = 1
          end
        end
        object TalGroupBox17: TTalGroupBox
          Left = 416
          Top = 200
          Width = 385
          Height = 73
          Caption = 'Anyai nagyapa sz'#225'rmaz'#225'sa '
          TabOrder = 8
          object TalLabel197: TTalLabel
            Left = 8
            Top = 16
            Width = 111
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi sz'#225'm:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel198: TTalLabel
            Left = 8
            Top = 44
            Width = 104
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi r'#233'sz:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtANAPTKVSZ: TTalDBEdit
            Left = 176
            Top = 16
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'edtANAPTKVSZ'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'ANAPTKVSZ'
            DataSource = dsHivSzarmLap
          end
          object cbANAPTKVR: TTalDBComboBox
            Left = 176
            Top = 44
            Width = 201
            Height = 21
            DataField = 'ANAPTKVR'
            DataSource = dsHivSzarmLap
            ItemHeight = 13
            Items.Strings = (
              ''
              'F'#337)
            TabOrder = 1
          end
        end
        object TalGroupBox21: TTalGroupBox
          Left = 416
          Top = 280
          Width = 385
          Height = 73
          Caption = 'Anyai nagyanya sz'#225'rmaz'#225'sa '
          TabOrder = 9
          object TalLabel199: TTalLabel
            Left = 8
            Top = 16
            Width = 111
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi sz'#225'm:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel200: TTalLabel
            Left = 8
            Top = 44
            Width = 104
            Height = 16
            Caption = 'T'#246'rzsk'#246'nyvi r'#233'sz:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtANANTKVSZ: TTalDBEdit
            Left = 176
            Top = 16
            Width = 200
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'edtANANTKVSZ'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'ANANTKVSZ'
            DataSource = dsHivSzarmLap
          end
          object cbANANTKVR: TTalDBComboBox
            Left = 176
            Top = 44
            Width = 201
            Height = 21
            DataField = 'ANANTKVR'
            DataSource = dsHivSzarmLap
            ItemHeight = 13
            Items.Strings = (
              ''
              'F'#337
              'Mell'#233'k')
            TabOrder = 1
          end
        end
        object TalGroupBox24: TTalGroupBox
          Left = 16
          Top = 360
          Width = 385
          Height = 73
          Caption = 'Kieg'#233'sz'#237't'#337' inform'#225'ci'#243'k '
          TabOrder = 10
          object TalLabel201: TTalLabel
            Left = 8
            Top = 16
            Width = 173
            Height = 16
            Caption = 'Teny'#233'sz'#233'rt'#233'kbecsl'#233's d'#225'tum:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel202: TTalLabel
            Left = 8
            Top = 44
            Width = 119
            Height = 16
            Caption = #193'llat genetikai hib'#225'i:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalDBEdit8: TTalDBEdit
            Left = 192
            Top = 16
            Width = 185
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            ValueType = etDate
            Text = '1899.12.30'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = 10
            TabOrder = 0
            DataField = 'TENYBECSDAT'
            DataSource = dsHivSzarmLap
          end
          object edtGENHIBA: TTalDBEdit
            Left = 192
            Top = 44
            Width = 185
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'GENHIBA'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'GENHIBA'
            DataSource = dsHivSzarmIg
          end
        end
        object TalGroupBox28: TTalGroupBox
          Left = 416
          Top = 360
          Width = 385
          Height = 129
          Caption = 'Term'#233'keny'#237't'#233's '
          TabOrder = 11
          object TalLabel203: TTalLabel
            Left = 8
            Top = 16
            Width = 134
            Height = 16
            Caption = 'Donor anya azonos'#237't'#243':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel204: TTalLabel
            Left = 8
            Top = 44
            Width = 98
            Height = 16
            Caption = 'Donor anya n'#233'v:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel205: TTalLabel
            Left = 8
            Top = 72
            Width = 156
            Height = 16
            Caption = 'Azon. ellen'#337'rz'#233's m'#243'dszer:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object TalLabel206: TTalLabel
            Left = 8
            Top = 100
            Width = 165
            Height = 16
            Caption = 'Azon. ellen'#337'rz'#233's eredm'#233'ny:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtDANAZON: TTalDBEdit
            Left = 176
            Top = 16
            Width = 201
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'DANAZON'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 0
            DataField = 'DANAZON'
            DataSource = dsHivSzarmLap
          end
          object edtDANNEV: TTalDBEdit
            Left = 176
            Top = 44
            Width = 201
            Height = 22
            Alignment = taLeftJustify
            Required = False
            RequiredColor = clInfoBk
            ReadOnlyColor = clActiveBorder
            Text = 'DANNEV'
            Enabled = True
            SpinVisible = False
            ButtonVisible = False
            MaxLength = -1
            TabOrder = 1
            DataField = 'DANNEV'
            DataSource = dsHivSzarmIg
          end
          object cbTAZONMOD: TTalDBComboBox
            Left = 176
            Top = 72
            Width = 201
            Height = 21
            DataField = 'TAZONMOD'
            DataSource = dsHivSzarmLap
            ItemHeight = 13
            Items.Strings = (
              ''
              'DNS'
              'V'#233'r'
              #220'res')
            TabOrder = 2
          end
          object cbTAZONEREDM: TTalDBComboBox
            Left = 176
            Top = 100
            Width = 201
            Height = 21
            DataField = 'TAZONEREDM'
            DataSource = dsHivSzarmLap
            ItemHeight = 13
            Items.Strings = (
              ''
              'Meger'#337's'#237'tett'
              'Nem kiz'#225'rt'
              #220'res')
            TabOrder = 3
          end
        end
      end
    end
  end
  object grdVal: TTalDBGrid
    Left = 8
    Top = 8
    Width = 361
    Height = 617
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
    TabOrder = 2
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
    Left = 392
    Top = 568
    Width = 89
    Height = 25
    Caption = #218'j'
    TabOrder = 3
    OnClick = btnNewClick
  end
  object btnUpdate: TTalBitBtn
    Left = 488
    Top = 568
    Width = 89
    Height = 25
    Caption = 'M'#243'dos'#237't'
    TabOrder = 4
    OnClick = dbClick
  end
  object btnCancel: TTalBitBtn
    Left = 1016
    Top = 568
    Width = 96
    Height = 25
    Caption = 'M'#233'gsem'
    TabOrder = 5
    Visible = False
    OnClick = btnCancelClick
  end
  object btnDelete: TTalBitBtn
    Left = 584
    Top = 568
    Width = 105
    Height = 25
    Caption = 'T'#246'r'#246'l'
    TabOrder = 6
    OnClick = btnDeleteClick
  end
  object btnPrint: TTalBitBtn
    Left = 800
    Top = 568
    Width = 97
    Height = 25
    Caption = 'Nyomtat'#225's'
    TabOrder = 7
    OnClick = btnPrintClic
  end
  object btnExport: TTalBitBtn
    Left = 696
    Top = 568
    Width = 97
    Height = 25
    Caption = 'Export'
    TabOrder = 8
  end
  object btnExit: TTalBitBtn
    Left = 1120
    Top = 568
    Width = 97
    Height = 25
    Caption = 'Kil'#233'p'#233's'
    TabOrder = 9
    OnClick = btnExitClick
  end
  object dsHivSzarmIg: TDataSource
    DataSet = sdsHSzIModLap
    Left = 240
    Top = 272
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
      'zet, szlapok.apa_te_togy,'#13#10'SZLAPOK.KIBEMAIL, SZLAPOK.TKVSZAM, SZ' +
      'LAPOK.AZONMOD, SZLAPOK.AZONEREDM, SZLAPOK.AZONIKT, SZLAPOK.SZORS' +
      'Z, SZLAPOK.TENYEMAIL, SZLAPOK.TULEMAIL, '#13#10'SZLAPOK.APTKVSZ, SZLAP' +
      'OK.APTKVR, SZLAPOK.APAPTKVSZ, SZLAPOK.APAPTKVR, SZLAPOK.APANTKVS' +
      'Z, SZLAPOK.APANTKVR,'#13#10'SZLAPOK.ANTKVSZ, SZLAPOK.ANTKVR, SZLAPOK.A' +
      'NAPTKVSZ, SZLAPOK.ANAPTKVR, SZLAPOK.ANANTKVSZ, SZLAPOK.ANANTKVR,' +
      #13#10'SZLAPOK.TENYBECSDAT, SZLAPOK.GENHIBA, SZLAPOK.TAZONMOD, SZLAPO' +
      'K.TAZONEREDM, SZLAPOK.DANAZON, SZLAPOK.DANNEV'#13#10'from szlapok'#13#10'lef' +
      't join fajta ef on ef.fkod =m17'#13#10'left join fajta apf on apf.fkod' +
      '=m33'#13#10'left join fajta anf on anf.fkod=m47'#13#10'left join fajta appf ' +
      'on appf.fkod=m60'#13#10'left join fajta anpf on anpf.fkod=m97'#13#10'left jo' +
      'in fajta tbf on tbf.fkod=m135'#13#10'left join KODOK EIV on EIV.KODTIP' +
      'USOK_TIPUSKOD = '#39'IVAR'#39' and EIV.KOD = M19'#13#10'WHERE szlapok.enar = :' +
      'PENAR and sor = :PSOR and per = :PPER'
    DataSet.Parameters = <
      item
        Name = 'PENAR'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'PSOR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PPER'
        DataType = ftInteger
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
      'zet, szlapok.apa_te_togy,'#13#10'SZLAPOK.KIBEMAIL, SZLAPOK.TKVSZAM, SZ' +
      'LAPOK.AZONMOD, SZLAPOK.AZONEREDM, SZLAPOK.AZONIKT, SZLAPOK.SZORS' +
      'Z, SZLAPOK.TENYEMAIL, SZLAPOK.TULEMAIL, '#13#10'SZLAPOK.APTKVSZ, SZLAP' +
      'OK.APTKVR, SZLAPOK.APAPTKVSZ, SZLAPOK.APAPTKVR, SZLAPOK.APANTKVS' +
      'Z, SZLAPOK.APANTKVR,'#13#10'SZLAPOK.ANTKVSZ, SZLAPOK.ANTKVR, SZLAPOK.A' +
      'NAPTKVSZ, SZLAPOK.ANAPTKVR, SZLAPOK.ANANTKVSZ, SZLAPOK.ANANTKVR,' +
      #13#10'SZLAPOK.TENYBECSDAT, SZLAPOK.GENHIBA, SZLAPOK.TAZONMOD, SZLAPO' +
      'K.TAZONEREDM, SZLAPOK.DANAZON, SZLAPOK.DANNEV'#13#10'from szlapok'#13#10'lef' +
      't join fajta ef on ef.fkod =m17'#13#10'left join fajta apf on apf.fkod' +
      '=m33'#13#10'left join fajta anf on anf.fkod=m47'#13#10'left join fajta appf ' +
      'on appf.fkod=m60'#13#10'left join fajta anpf on anpf.fkod=m97'#13#10'left jo' +
      'in fajta tbf on tbf.fkod=m135'#13#10'left join KODOK EIV on EIV.KODTIP' +
      'USOK_TIPUSKOD = '#39'IVAR'#39' and EIV.KOD = M19'#13#10'WHERE szlapok.enar = :' +
      'PENAR and sor = :PSOR and per = :PPER'
    Provider.DataSet.Parameters = <
      item
        Name = 'PENAR'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'PSOR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PPER'
        DataType = ftInteger
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
      end
      item
        Name = 'KIBEMAIL'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'TKVSZAM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AZONMOD'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AZONEREDM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AZONIKT'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SZORSZ'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'TENYEMAIL'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'TULEMAIL'
        DataType = ftWideString
        Size = 64
      end
      item
        Name = 'APTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAPTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APAPTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APANTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APANTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANAPTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANAPTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANANTKVSZ'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ANANTKVR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TENYBECSDAT'
        DataType = ftDateTime
      end
      item
        Name = 'GENHIBA'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TAZONMOD'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TAZONEREDM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DANAZON'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DANNEV'
        DataType = ftWideString
        Size = 64
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 144
    Top = 272
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
    object sdsHSzIModLapKIBEMAIL: TWideStringField
      FieldName = 'KIBEMAIL'
      Size = 64
    end
    object sdsHSzIModLapTKVSZAM: TWideStringField
      FieldName = 'TKVSZAM'
    end
    object sdsHSzIModLapAZONMOD: TWideStringField
      FieldName = 'AZONMOD'
    end
    object sdsHSzIModLapAZONEREDM: TWideStringField
      FieldName = 'AZONEREDM'
    end
    object sdsHSzIModLapAZONIKT: TWideStringField
      FieldName = 'AZONIKT'
    end
    object sdsHSzIModLapSZORSZ: TWideStringField
      FieldName = 'SZORSZ'
    end
    object sdsHSzIModLapTENYEMAIL: TWideStringField
      FieldName = 'TENYEMAIL'
      Size = 64
    end
    object sdsHSzIModLapTULEMAIL: TWideStringField
      FieldName = 'TULEMAIL'
      Size = 64
    end
    object sdsHSzIModLapAPTKVSZ: TWideStringField
      FieldName = 'APTKVSZ'
    end
    object sdsHSzIModLapAPTKVR: TWideStringField
      FieldName = 'APTKVR'
    end
    object sdsHSzIModLapAPAPTKVSZ: TWideStringField
      FieldName = 'APAPTKVSZ'
    end
    object sdsHSzIModLapAPAPTKVR: TWideStringField
      FieldName = 'APAPTKVR'
    end
    object sdsHSzIModLapAPANTKVSZ: TWideStringField
      FieldName = 'APANTKVSZ'
    end
    object sdsHSzIModLapAPANTKVR: TWideStringField
      FieldName = 'APANTKVR'
    end
    object sdsHSzIModLapANTKVSZ: TWideStringField
      FieldName = 'ANTKVSZ'
    end
    object sdsHSzIModLapANTKVR: TWideStringField
      FieldName = 'ANTKVR'
    end
    object sdsHSzIModLapANAPTKVSZ: TWideStringField
      FieldName = 'ANAPTKVSZ'
    end
    object sdsHSzIModLapANAPTKVR: TWideStringField
      FieldName = 'ANAPTKVR'
    end
    object sdsHSzIModLapANANTKVSZ: TWideStringField
      FieldName = 'ANANTKVSZ'
    end
    object sdsHSzIModLapANANTKVR: TWideStringField
      FieldName = 'ANANTKVR'
    end
    object sdsHSzIModLapTENYBECSDAT: TDateTimeField
      FieldName = 'TENYBECSDAT'
    end
    object sdsHSzIModLapGENHIBA: TWideStringField
      FieldName = 'GENHIBA'
    end
    object sdsHSzIModLapTAZONMOD: TWideStringField
      FieldName = 'TAZONMOD'
    end
    object sdsHSzIModLapTAZONEREDM: TWideStringField
      FieldName = 'TAZONEREDM'
    end
    object sdsHSzIModLapDANAZON: TWideStringField
      FieldName = 'DANAZON'
    end
    object sdsHSzIModLapDANNEV: TWideStringField
      FieldName = 'DANNEV'
      Size = 64
    end
  end
  object dsHivSzarmLap: TDataSource
    DataSet = sdsHSzIModLap
    Left = 336
    Top = 632
  end
  object qComboTolt: TADOQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    Left = 808
    Top = 632
  end
  object stpSzarmigMod: TADOStoredProc
    Connection = dtmTarka.cnTarka
    Parameters = <>
    Left = 96
    Top = 632
  end
  object qryEfajta: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 624
    Top = 630
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
    Left = 162
    Top = 630
  end
  object qryIvar: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'select KODOK.KOD, KODOK.KOD_NEV'
      'from KODOK '
      'where KODTIPUSOK_TIPUSKOD = '#39'IVAR'#39)
    Left = 288
    Top = 630
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
    Left = 58
    Top = 542
  end
  object qryApaFajta: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 464
    Top = 630
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
    Left = 530
    Top = 630
  end
  object qryAnyaFajta: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 680
    Top = 630
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
    Left = 34
    Top = 630
  end
  object qryApaapa: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 224
    Top = 630
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
    Left = 306
    Top = 478
  end
  object qryAnyaApa: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 168
    Top = 478
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
    Left = 242
    Top = 478
  end
  object qryTFajta: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      '  SELECT '
      '  FAJTA.FKOD,'
      '  TO_CHAR(FAJTA.FKOD,'#39'09'#39') || '#39' - '#39' || FAJTA.FNEV AS FNEV'
      '  FROM FAJTA')
    Left = 744
    Top = 630
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
    Left = 130
    Top = 542
  end
  object dtsKeres: TDataSource
    DataSet = sdsKeres
    Left = 107
    Top = 76
  end
  object sdsKeres: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select sor, per, enar, kplsz, kidat from szlapok'#13#10'order by per, ' +
      'sor, enar'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'select sor, per, enar, kplsz, kidat from szlapok'#13#10'order by per, ' +
      'sor, enar'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 52
    Top = 76
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
    Left = 72
    Top = 480
  end
end
