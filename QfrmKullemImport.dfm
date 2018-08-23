inherited frmKullemImport: TfrmKullemImport
  Left = 362
  Top = 190
  Width = 540
  Height = 380
  Caption = 'K'#252'llem adatok beolvas'#225'sa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 301
    Width = 524
    inherited BitBtn1: TTalBitBtn
      Left = 365
    end
    inherited BitBtn2: TTalBitBtn
      Left = 445
    end
  end
  inherited Panel2: TPanel
    Width = 524
    Height = 301
    object TalLabel1: TTalLabel
      Left = 16
      Top = 69
      Width = 166
      Height = 13
      Caption = 'K'#252'llemb'#237'r'#225'latot tartalmaz'#243' f'#225'jl neve:'
    end
    object lblDb: TTalLabel
      Left = 16
      Top = 139
      Width = 24
      Height = 13
      Caption = 'lblDb'
      Visible = False
    end
    object TalLabel2: TTalLabel
      Left = 16
      Top = 93
      Width = 187
      Height = 13
      Caption = 'El'#337'z'#337' azonos'#237't'#243'kat tartalmaz'#243' f'#225'jl neve:'
      Visible = False
    end
    object TalLabel3: TTalLabel
      Left = 16
      Top = 117
      Width = 165
      Height = 13
      Caption = 'Fajta adatokat tartalmaz'#243' f'#225'jl neve:'
      Visible = False
    end
    object edtFileName: TTalEdit
      Left = 208
      Top = 64
      Width = 241
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
    object TalBitBtn1: TTalBitBtn
      Left = 453
      Top = 64
      Width = 28
      Height = 22
      TabOrder = 1
      OnClick = TalBitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
      NumGlyphs = 2
    end
    object edtEFileName: TTalEdit
      Left = 208
      Top = 88
      Width = 241
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
      Visible = False
    end
    object TalBitBtn2: TTalBitBtn
      Left = 453
      Top = 88
      Width = 28
      Height = 22
      TabOrder = 3
      Visible = False
      OnClick = TalBitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
      NumGlyphs = 2
    end
    object edtFFileName: TTalEdit
      Left = 208
      Top = 112
      Width = 241
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 4
      Visible = False
    end
    object TalBitBtn3: TTalBitBtn
      Left = 453
      Top = 112
      Width = 28
      Height = 22
      TabOrder = 5
      Visible = False
      OnClick = TalBitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
        333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
        300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
        333337F373F773333333303330033333333337F3377333333333303333333333
        333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
        333337777F337F33333330330BB00333333337F373F773333333303330033333
        333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
        333377777F77377733330BBB0333333333337F337F33333333330BB003333333
        333373F773333333333330033333333333333773333333333333}
      NumGlyphs = 2
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'CSV file|*.csv'
    InitialDir = '\wtarka\komm\inbox'
    Options = [ofHideReadOnly, ofNoChangeDir, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 36
    Top = 4
  end
  object sdsKullem: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT '#13#10'  dbo.KULLEM.ID,'#13#10'  dbo.KULLEM.EGYED_ID,'#13#10'  dbo.KULLEM.' +
      'DATUM,'#13#10'  dbo.KULLEM.SSZ,'#13#10'  dbo.KULLEM.TENY_KOD,'#13#10'  dbo.KULLEM.' +
      'FARMAGASSAG,'#13#10'  dbo.KULLEM.EROSSEG,'#13#10'  dbo.KULLEM.TORZSMELYSEG,'#13 +
      #10'  dbo.KULLEM.ELESSEG,'#13#10'  dbo.KULLEM.FARLEJTES,'#13#10'  dbo.KULLEM.FA' +
      'RSZELESSEG,'#13#10'  dbo.KULLEM.H_LAB_OLDAL,'#13#10'  dbo.KULLEM.H_LAB_HATUL' +
      ','#13#10'  dbo.KULLEM.LOCOMOTION,'#13#10'  dbo.KULLEM.KOROMSZOG,'#13#10'  dbo.KULL' +
      'EM.ELSO_TOGY_ILLE,'#13#10'  dbo.KULLEM.HATSO_TOGY_ILLE,'#13#10'  dbo.KULLEM.' +
      'HATSO_TOGY_SZEL,'#13#10'  dbo.KULLEM.TOGYFUGGESZTES,'#13#10'  dbo.KULLEM.TOG' +
      'YMELYSEG,'#13#10'  dbo.KULLEM.BIMBOHELYEZODES,'#13#10'  dbo.KULLEM.BIMBO_HOS' +
      'SZ,'#13#10'  dbo.KULLEM.HATSO_BIMBO_HELY,'#13#10'  dbo.KULLEM.TESTPONT,'#13#10'  d' +
      'bo.KULLEM.LAB_LABVEG,'#13#10'  dbo.KULLEM.ALT_MEGJELENES,'#13#10'  dbo.KULLE' +
      'M.TEJELO_JELLEG,'#13#10'  dbo.KULLEM.TEST_KAPACITAS,'#13#10'  dbo.KULLEM.TOG' +
      'Y_PONTSZAM,'#13#10'  dbo.KULLEM.VEGSO_PONTSZAM,'#13#10'  dbo.KULLEM.AKAKO,'#13#10 +
      '  dbo.KULLEM.MODOSITAS_DATUM'#13#10'FROM'#13#10'  dbo.KULLEM'#13#10'where id=0'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 
      'SELECT '#13#10'  dbo.KULLEM.ID,'#13#10'  dbo.KULLEM.EGYED_ID,'#13#10'  dbo.KULLEM.' +
      'DATUM,'#13#10'  dbo.KULLEM.SSZ,'#13#10'  dbo.KULLEM.TENY_KOD,'#13#10'  dbo.KULLEM.' +
      'FARMAGASSAG,'#13#10'  dbo.KULLEM.EROSSEG,'#13#10'  dbo.KULLEM.TORZSMELYSEG,'#13 +
      #10'  dbo.KULLEM.ELESSEG,'#13#10'  dbo.KULLEM.FARLEJTES,'#13#10'  dbo.KULLEM.FA' +
      'RSZELESSEG,'#13#10'  dbo.KULLEM.H_LAB_OLDAL,'#13#10'  dbo.KULLEM.H_LAB_HATUL' +
      ','#13#10'  dbo.KULLEM.LOCOMOTION,'#13#10'  dbo.KULLEM.KOROMSZOG,'#13#10'  dbo.KULL' +
      'EM.ELSO_TOGY_ILLE,'#13#10'  dbo.KULLEM.HATSO_TOGY_ILLE,'#13#10'  dbo.KULLEM.' +
      'HATSO_TOGY_SZEL,'#13#10'  dbo.KULLEM.TOGYFUGGESZTES,'#13#10'  dbo.KULLEM.TOG' +
      'YMELYSEG,'#13#10'  dbo.KULLEM.BIMBOHELYEZODES,'#13#10'  dbo.KULLEM.BIMBO_HOS' +
      'SZ,'#13#10'  dbo.KULLEM.HATSO_BIMBO_HELY,'#13#10'  dbo.KULLEM.TESTPONT,'#13#10'  d' +
      'bo.KULLEM.LAB_LABVEG,'#13#10'  dbo.KULLEM.ALT_MEGJELENES,'#13#10'  dbo.KULLE' +
      'M.TEJELO_JELLEG,'#13#10'  dbo.KULLEM.TEST_KAPACITAS,'#13#10'  dbo.KULLEM.TOG' +
      'Y_PONTSZAM,'#13#10'  dbo.KULLEM.VEGSO_PONTSZAM,'#13#10'  dbo.KULLEM.AKAKO,'#13#10 +
      '  dbo.KULLEM.MODOSITAS_DATUM'#13#10'FROM'#13#10'  dbo.KULLEM'#13#10'where id=0'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 40
    Top = 232
    object sdsKullemID: TBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
    object sdsKullemEGYED_ID: TBCDField
      FieldName = 'EGYED_ID'
      Precision = 15
      Size = 0
    end
    object sdsKullemDATUM: TDateTimeField
      FieldName = 'DATUM'
    end
    object sdsKullemSSZ: TIntegerField
      FieldName = 'SSZ'
    end
    object sdsKullemTENY_KOD: TStringField
      FieldName = 'TENY_KOD'
      Size = 7
    end
    object sdsKullemFARMAGASSAG: TStringField
      FieldName = 'FARMAGASSAG'
      FixedChar = True
      Size = 2
    end
    object sdsKullemEROSSEG: TStringField
      FieldName = 'EROSSEG'
      FixedChar = True
      Size = 2
    end
    object sdsKullemTORZSMELYSEG: TStringField
      FieldName = 'TORZSMELYSEG'
      FixedChar = True
      Size = 2
    end
    object sdsKullemELESSEG: TStringField
      FieldName = 'ELESSEG'
      FixedChar = True
      Size = 2
    end
    object sdsKullemFARLEJTES: TStringField
      FieldName = 'FARLEJTES'
      FixedChar = True
      Size = 2
    end
    object sdsKullemFARSZELESSEG: TStringField
      FieldName = 'FARSZELESSEG'
      FixedChar = True
      Size = 2
    end
    object sdsKullemH_LAB_OLDAL: TStringField
      FieldName = 'H_LAB_OLDAL'
      FixedChar = True
      Size = 2
    end
    object sdsKullemH_LAB_HATUL: TStringField
      FieldName = 'H_LAB_HATUL'
      FixedChar = True
      Size = 2
    end
    object sdsKullemLOCOMOTION: TStringField
      FieldName = 'LOCOMOTION'
      FixedChar = True
      Size = 2
    end
    object sdsKullemKOROMSZOG: TStringField
      FieldName = 'KOROMSZOG'
      FixedChar = True
      Size = 2
    end
    object sdsKullemELSO_TOGY_ILLE: TStringField
      FieldName = 'ELSO_TOGY_ILLE'
      FixedChar = True
      Size = 2
    end
    object sdsKullemHATSO_TOGY_ILLE: TStringField
      FieldName = 'HATSO_TOGY_ILLE'
      FixedChar = True
      Size = 2
    end
    object sdsKullemHATSO_TOGY_SZEL: TStringField
      FieldName = 'HATSO_TOGY_SZEL'
      FixedChar = True
      Size = 2
    end
    object sdsKullemTOGYFUGGESZTES: TStringField
      FieldName = 'TOGYFUGGESZTES'
      FixedChar = True
      Size = 2
    end
    object sdsKullemTOGYMELYSEG: TStringField
      FieldName = 'TOGYMELYSEG'
      FixedChar = True
      Size = 2
    end
    object sdsKullemBIMBOHELYEZODES: TStringField
      FieldName = 'BIMBOHELYEZODES'
      FixedChar = True
      Size = 2
    end
    object sdsKullemBIMBO_HOSSZ: TStringField
      FieldName = 'BIMBO_HOSSZ'
      FixedChar = True
      Size = 2
    end
    object sdsKullemHATSO_BIMBO_HELY: TStringField
      FieldName = 'HATSO_BIMBO_HELY'
      FixedChar = True
      Size = 2
    end
    object sdsKullemTESTPONT: TStringField
      FieldName = 'TESTPONT'
      FixedChar = True
      Size = 2
    end
    object sdsKullemLAB_LABVEG: TStringField
      FieldName = 'LAB_LABVEG'
      FixedChar = True
      Size = 2
    end
    object sdsKullemALT_MEGJELENES: TStringField
      FieldName = 'ALT_MEGJELENES'
      FixedChar = True
      Size = 2
    end
    object sdsKullemTEJELO_JELLEG: TStringField
      FieldName = 'TEJELO_JELLEG'
      FixedChar = True
      Size = 2
    end
    object sdsKullemTEST_KAPACITAS: TStringField
      FieldName = 'TEST_KAPACITAS'
      FixedChar = True
      Size = 2
    end
    object sdsKullemTOGY_PONTSZAM: TStringField
      FieldName = 'TOGY_PONTSZAM'
      FixedChar = True
      Size = 2
    end
    object sdsKullemVEGSO_PONTSZAM: TStringField
      FieldName = 'VEGSO_PONTSZAM'
      FixedChar = True
      Size = 2
    end
    object sdsKullemAKAKO: TStringField
      FieldName = 'AKAKO'
      FixedChar = True
      Size = 2
    end
    object sdsKullemMODOSITAS_DATUM: TDateTimeField
      FieldName = 'MODOSITAS_DATUM'
    end
  end
  object TalDbfCon: TTalConnection
    LoginPrompt = False
    Left = 112
    Top = 232
  end
  object TblBika: TADOTable
    Connection = TalDbfCon
    LockType = ltReadOnly
    Left = 184
    Top = 232
  end
  object sdsBika: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from biktor'
    DataSet.Parameters = <>
    Provider.DataSet.CommandText = 'select * from biktor'
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 256
    Top = 224
    object sdsBikaKLSZ: TWideStringField
      FieldName = 'KLSZ'
      Size = 5
    end
    object sdsBikaFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
      Size = 14
    end
    object sdsBikaNEV: TWideStringField
      FieldName = 'NEV'
      Size = 40
    end
    object sdsBikaSZDAT: TDateTimeField
      FieldName = 'SZDAT'
    end
    object sdsBikaHASZNOSIT: TWideStringField
      FieldName = 'HASZNOSIT'
      Size = 1
    end
    object sdsBikaERKEZES: TWideStringField
      FieldName = 'ERKEZES'
      Size = 1
    end
    object sdsBikaSZARM_ORSZ: TWideStringField
      FieldName = 'SZARM_ORSZ'
      Size = 3
    end
    object sdsBikaEXP_ORSZ: TWideStringField
      FieldName = 'EXP_ORSZ'
      Size = 3
    end
    object sdsBikaFAJTA1: TWideStringField
      FieldName = 'FAJTA1'
      Size = 2
    end
    object sdsBikaFAJTA2: TWideStringField
      FieldName = 'FAJTA2'
      Size = 2
    end
    object sdsBikaFAJTA3: TWideStringField
      FieldName = 'FAJTA3'
      Size = 2
    end
    object sdsBikaFAJTA4: TWideStringField
      FieldName = 'FAJTA4'
      Size = 2
    end
    object sdsBikaFAJTA5: TWideStringField
      FieldName = 'FAJTA5'
      Size = 2
    end
    object sdsBikaFAJTA_OSZ: TWideStringField
      FieldName = 'FAJTA_OSZ'
      Size = 3
    end
    object sdsBikaVERH1: TBCDField
      FieldName = 'VERH1'
      Precision = 10
      Size = 2
    end
    object sdsBikaVERH2: TBCDField
      FieldName = 'VERH2'
      Precision = 10
      Size = 2
    end
    object sdsBikaVERH3: TBCDField
      FieldName = 'VERH3'
      Precision = 10
      Size = 2
    end
    object sdsBikaVERH4: TBCDField
      FieldName = 'VERH4'
      Precision = 10
      Size = 2
    end
    object sdsBikaVERH5: TBCDField
      FieldName = 'VERH5'
      Precision = 10
      Size = 2
    end
    object sdsBikaAP_KLSZ: TWideStringField
      FieldName = 'AP_KLSZ'
      Size = 5
    end
    object sdsBikaAN_FULSZAM: TWideStringField
      FieldName = 'AN_FULSZAM'
      Size = 14
    end
    object sdsBikaANAPA_KLSZ: TWideStringField
      FieldName = 'ANAPA_KLSZ'
      Size = 5
    end
    object sdsBikaSZINKOD: TWideStringField
      FieldName = 'SZINKOD'
      Size = 1
    end
    object sdsBikaREDFAKTOR: TWideStringField
      FieldName = 'REDFAKTOR'
      Size = 1
    end
    object sdsBikaTENYESZTO: TWideStringField
      FieldName = 'TENYESZTO'
      Size = 6
    end
    object sdsBikaTULAJ: TWideStringField
      FieldName = 'TULAJ'
      Size = 6
    end
    object sdsBikaHELYE: TWideStringField
      FieldName = 'HELYE'
      Size = 6
    end
    object sdsBikaEL_E: TWideStringField
      FieldName = 'EL_E'
      Size = 1
    end
    object sdsBikaSP_VAN: TWideStringField
      FieldName = 'SP_VAN'
      Size = 1
    end
    object sdsBikaMOD_DATUM: TDateTimeField
      FieldName = 'MOD_DATUM'
    end
    object sdsBikaITVSTATUS: TWideStringField
      FieldName = 'ITVSTATUS'
      Size = 1
    end
  end
  object procMerge: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'PROC_BIKA_MERGE'
    Parameters = <>
    Left = 360
    Top = 136
  end
  object proc_biktor: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'BIKTOR_FRISSIT'
    Parameters = <>
    Left = 440
    Top = 152
  end
end
