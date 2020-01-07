object frmInfoPult: TfrmInfoPult
  Left = 304
  Top = 0
  Width = 944
  Height = 722
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Egyedek adatai'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TalPanel2: TTalPanel
    Left = 0
    Top = 636
    Width = 928
    Height = 48
    Align = alBottom
    TabOrder = 1
    object btnUj: TTalBitBtn
      Left = 225
      Top = 6
      Width = 89
      Height = 33
      Hint = #218'j egyed felvitele'
      Caption = #218'j egyed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnUjClick
    end
    object btnModosit: TTalBitBtn
      Left = 350
      Top = 6
      Width = 89
      Height = 35
      Caption = 'M'#243'dos'#237't'#225's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnModositClick
    end
    object btnKilepes: TTalBitBtn
      Left = 593
      Top = 6
      Width = 89
      Height = 33
      Caption = 'Kil'#233'p'#233's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnKilepesClick
    end
    object btnTorol: TTalBitBtn
      Left = 475
      Top = 6
      Width = 89
      Height = 33
      Caption = 'T'#246'rl'#233's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = btnTorolClick
    end
  end
  object TalPanel3: TTalPanel
    Left = 0
    Top = 0
    Width = 928
    Height = 594
    Align = alClient
    ParentColor = True
    TabOrder = 2
    object TalLabel5: TTalLabel
      Left = 16
      Top = 198
      Width = 109
      Height = 13
      Caption = 'Anya ENAR azonos'#237't'#243':'
    end
    object TalLabel6: TTalLabel
      Left = 16
      Top = 224
      Width = 52
      Height = 13
      Caption = 'Apa KLSZ:'
    end
    object TalLabel7: TTalLabel
      Left = 16
      Top = 253
      Width = 85
      Height = 13
      Caption = 'Konstrukci'#243's k'#243'd:'
    end
    object TalLabel8: TTalLabel
      Left = 310
      Top = 109
      Width = 21
      Height = 13
      Caption = 'Ivar:'
    end
    object TalLabel10: TTalLabel
      Left = 16
      Top = 522
      Width = 72
      Height = 13
      Caption = 'Kies'#233's d'#225'tuma:'
    end
    object TalLabel11: TTalLabel
      Left = 16
      Top = 568
      Width = 55
      Height = 13
      Caption = 'Kies'#233's oka:'
    end
    object TalLabel12: TTalLabel
      Left = 16
      Top = 544
      Width = 65
      Height = 13
      Caption = 'Kies'#233's m'#243'dja:'
    end
    object TalLabel14: TTalLabel
      Left = 16
      Top = 50
      Width = 82
      Height = 13
      Caption = 'ENAR azonos'#237't'#243':'
    end
    object TalLabel1: TTalLabel
      Left = 16
      Top = 12
      Width = 86
      Height = 13
      Caption = 'Keresend'#337' egyed:'
    end
    object btnKereses: TTalSpeedButton
      Left = 275
      Top = 8
      Width = 21
      Height = 22
      Hint = 'Keres'#233's'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
        33333333333F8888883F33330000324334222222443333388F3833333388F333
        000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
        F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
        223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
        3338888300003AAAAAAA33333333333888888833333333330000333333333333
        333333333333333333FFFFFF000033333333333344444433FFFF333333888888
        00003A444333333A22222438888F333338F3333800003A2243333333A2222438
        F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
        22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
        33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      OnClick = btnKeresesClick
    end
    object TalLabel2: TTalLabel
      Left = 310
      Top = 44
      Width = 41
      Height = 13
      Caption = 'F'#252'lsz'#225'm:'
    end
    object TalLabel3: TTalLabel
      Left = 654
      Top = 44
      Width = 23
      Height = 13
      Caption = 'N'#233'v:'
    end
    object TalBevel1: TTalBevel
      Left = 16
      Top = 34
      Width = 881
      Height = 1
      Shape = bsFrame
    end
    object TalLabel15: TTalLabel
      Left = 16
      Top = 276
      Width = 24
      Height = 13
      Caption = 'Sz'#237'n:'
    end
    object TalLabel16: TTalLabel
      Left = 336
      Top = 253
      Width = 26
      Height = 13
      Caption = 'Fajta:'
    end
    object TalLabel17: TTalLabel
      Left = 467
      Top = 44
      Width = 58
      Height = 13
      Caption = 'Teh'#233'nsz'#225'm:'
    end
    object TalLabel19: TTalLabel
      Left = 16
      Top = 467
      Width = 59
      Height = 13
      Caption = 'Megjegyz'#233's:'
    end
    object TalLabel20: TTalLabel
      Left = 16
      Top = 440
      Width = 96
      Height = 13
      Caption = 'Marhalev'#233'lsz'#225'm 1/2'
    end
    object TalLabel22: TTalLabel
      Left = 16
      Top = 416
      Width = 56
      Height = 13
      Caption = 'Bikanevel'#337':'
    end
    object TalSpeedButton3: TTalSpeedButton
      Left = 301
      Top = 563
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = TalSpeedButton3Click
    end
    object TalSpeedButton1: TTalSpeedButton
      Left = 301
      Top = 539
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = TalSpeedButton1Click
    end
    object TalLabel23: TTalLabel
      Left = 340
      Top = 544
      Width = 70
      Height = 13
      Caption = 'Kiker'#252'l'#233'si hely:'
    end
    object TalSpeedButton2: TTalSpeedButton
      Left = 618
      Top = 539
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = TalSpeedButton2Click
    end
    object btnEgyed: TTalSpeedButton
      Left = 249
      Top = 8
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = btnEgyedClick
    end
    object TalLabel26: TTalLabel
      Left = 16
      Top = 170
      Width = 91
      Height = 13
      Caption = #193'llom'#225'nybaker'#252'l'#233's:'
    end
    object TalLabel29: TTalLabel
      Left = 340
      Top = 566
      Width = 80
      Height = 13
      Caption = 'Kiker'#252'l'#233'si t'#246'meg:'
      Visible = False
    end
    object TalLabel4: TTalLabel
      Left = 16
      Top = 109
      Width = 62
      Height = 13
      Caption = 'Sz'#252'let'#233'si id'#337':'
    end
    object TalLabel31: TTalLabel
      Left = 216
      Top = 109
      Width = 21
      Height = 13
      Caption = 's'#250'ly:'
    end
    object TalLabel32: TTalLabel
      Left = 288
      Top = 109
      Width = 12
      Height = 13
      Caption = 'kg'
    end
    object TalLabel33: TTalLabel
      Left = 262
      Top = 198
      Width = 40
      Height = 13
      Caption = 'Anya ell:'
    end
    object TalLabel34: TTalLabel
      Left = 382
      Top = 198
      Width = 40
      Height = 13
      Caption = 'Anya ell:'
    end
    object TalLabel35: TTalLabel
      Left = 438
      Top = 198
      Width = 49
      Height = 13
      Caption = 'Donor.az.:'
    end
    object TalLabel36: TTalLabel
      Left = 262
      Top = 224
      Width = 38
      Height = 13
      Caption = 'f'#252'lsz'#225'm:'
    end
    object TalLabel37: TTalLabel
      Left = 438
      Top = 224
      Width = 42
      Height = 13
      Caption = 'apa n'#233'v:'
    end
    object TalLabel38: TTalLabel
      Left = 16
      Top = 300
      Width = 54
      Height = 13
      Caption = 'V'#233'rh'#225'nyad:'
    end
    object TalLabel39: TTalLabel
      Left = 118
      Top = 300
      Width = 9
      Height = 13
      Caption = '1:'
    end
    object TalLabel40: TTalLabel
      Left = 340
      Top = 300
      Width = 8
      Height = 13
      Caption = '%'
    end
    object TalLabel41: TTalLabel
      Left = 358
      Top = 300
      Width = 9
      Height = 13
      Caption = '2:'
    end
    object TalLabel42: TTalLabel
      Left = 580
      Top = 300
      Width = 8
      Height = 13
      Caption = '%'
    end
    object TalLabel47: TTalLabel
      Left = 118
      Top = 322
      Width = 9
      Height = 13
      Caption = '3:'
    end
    object TalLabel48: TTalLabel
      Left = 358
      Top = 324
      Width = 9
      Height = 13
      Caption = '4:'
    end
    object TalLabel49: TTalLabel
      Left = 340
      Top = 324
      Width = 8
      Height = 13
      Caption = '%'
    end
    object TalLabel50: TTalLabel
      Left = 580
      Top = 324
      Width = 8
      Height = 13
      Caption = '%'
    end
    object TalLabel9: TTalLabel
      Left = 16
      Top = 344
      Width = 111
      Height = 13
      Caption = 'T'#246'rzsk'#246'nyvi oszt/sz'#225'm:'
    end
    object TalLabel13: TTalLabel
      Left = 16
      Top = 368
      Width = 77
      Height = 13
      Caption = 'Min'#337's'#237't'#337' indexe:'
    end
    object TalLabel25: TTalLabel
      Left = 16
      Top = 392
      Width = 58
      Height = 13
      Caption = 'Szarvalts'#225'g:'
    end
    object lblKezeles: TTalLabel
      Left = 400
      Top = 8
      Width = 47
      Height = 13
      Caption = 'lblKezeles'
    end
    object TalLabel18: TTalLabel
      Left = 16
      Top = 82
      Width = 52
      Height = 13
      Caption = 'Teny'#233'szet:'
    end
    object TalLabel21: TTalLabel
      Left = 16
      Top = 140
      Width = 89
      Height = 13
      Caption = 'V'#225'laszt'#225's d'#225'tuma::'
    end
    object TalLabel24: TTalLabel
      Left = 216
      Top = 140
      Width = 21
      Height = 13
      Caption = 's'#250'ly:'
    end
    object TalLabel27: TTalLabel
      Left = 288
      Top = 140
      Width = 12
      Height = 13
      Caption = 'kg'
    end
    object TalLabel28: TTalLabel
      Left = 310
      Top = 140
      Width = 123
      Height = 13
      Caption = '205 napra korrig'#225'lt t'#246'meg:'
    end
    object TalLabel30: TTalLabel
      Left = 496
      Top = 140
      Width = 12
      Height = 13
      Caption = 'kg'
    end
    object TalLabel43: TTalLabel
      Left = 546
      Top = 140
      Width = 17
      Height = 13
      Caption = 'SV:'
    end
    object TalLabel44: TTalLabel
      Left = 613
      Top = 140
      Width = 8
      Height = 13
      Caption = '%'
    end
    object TalLabel45: TTalLabel
      Left = 240
      Top = 170
      Width = 125
      Height = 13
      Caption = 'Sz'#225'rmaz'#225'si teny'#233'szet k'#243'd:'
    end
    object edtSzulDat: TTalDBEdit
      Left = 135
      Top = 104
      Width = 79
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = ' '
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = -1
      TabOrder = 7
      OnExit = edtSzulDatExit
      DataField = 'SZULDAT'
      DataSource = dtmTarka.dtsInfo
    end
    object edtAnyaEnar: TTalDBEdit
      Left = 135
      Top = 193
      Width = 121
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 16
      DataField = 'ANYA_ENAR'
      DataSource = dtmTarka.dtsInfo
    end
    object edtApaKlsz: TTalDBEdit
      Left = 135
      Top = 219
      Width = 122
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 19
      DataField = 'APAKLSZ'
      DataSource = dtmTarka.dtsInfo
    end
    object edtKiesesDatum: TTalDBEdit
      Left = 109
      Top = 517
      Width = 79
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = ' '
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = -1
      TabOrder = 40
      OnExit = edtKiesesDatumExit
      DataField = 'KIKDAT'
      DataSource = dtmTarka.dtsInfo
    end
    object lucIvar: TTalDBLookupComboBox
      Left = 354
      Top = 105
      Width = 177
      Height = 21
      DataField = 'IVAR'
      DataSource = dtmTarka.dtsInfo
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      TabOrder = 9
    end
    object lucKIOK: TTalDBLookupComboBox
      Left = 109
      Top = 564
      Width = 191
      Height = 21
      DataField = 'KIKOK'
      DataSource = dtmTarka.dtsInfo
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      TabOrder = 42
    end
    object lucKiMod: TTalDBLookupComboBox
      Left = 109
      Top = 540
      Width = 191
      Height = 21
      DataField = 'KIKOD'
      DataSource = dtmTarka.dtsInfo
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      TabOrder = 41
    end
    object TalDBGrid1: TTalDBGrid
      Left = 336
      Top = 367
      Width = 274
      Height = 137
      TabStop = False
      DisableThemes = True
      Selected.Strings = (
        'ELLES_SSZ'#9'3'#9'Ssz'#9#9
        'ELLES_DATUM'#9'10'#9'Ell'#233's d'#225'tum'#9#9
        'KOD_NEV'#9'24'#9'Ell'#233's lefoly'#225'sa'#9'F'#9)
      IniAttributes.SectionName = 'frmInfoPult'
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = TalDBGrid1RowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      DataSource = dtsInfElles
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize, dgTabExitsOnLastCol]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 43
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = True
      PaintOptions.ActiveRecordColor = clGradientActiveCaption
      DefaultSet = True
      SortDir = sdAsc
      SortType = stGrid
      SortColumn = 0
      SortShow = True
      NotEnabledFieldColor = clMoneyGreen
      NotEnabledFieldColorize = False
      FilterColor = clGray
      FixedColor = clWindow
      ShowFooter = False
      SaveIndex = False
      ShowMaskedNumericValues = False
      SaveExportParamsFile = False
      object TalDBGrid1IButton: TwwIButton
        Left = 0
        Top = 0
        Width = 13
        Height = 22
        AllowAllUp = True
      end
    end
    object TalPanel5: TTalPanel
      Left = 336
      Top = 343
      Width = 274
      Height = 25
      BevelInner = bvLowered
      Caption = 'Ell'#233'si adatok'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object lblEllDat: TTalLabel
        Left = 216
        Top = 6
        Width = 38
        Height = 13
        Hint = 'Ez az '#233'rt'#233'k az utols'#243' ell'#233's '#243'ta eltelet napok sz'#225'ma'
        Caption = 'lblEllDat'
        ParentShowHint = False
        ShowAccelChar = False
        ShowHint = True
      end
    end
    object btnElles: TTalButton
      Left = 381
      Top = 508
      Width = 185
      Height = 25
      Caption = 'R'#233'szletes ell'#233's adatok'
      TabOrder = 47
      OnClick = btnEllesClick
    end
    object btnTermekenyites: TTalButton
      Left = 692
      Top = 508
      Width = 185
      Height = 25
      Caption = 'R'#233'szletes term'#233'keny'#237't'#233'si adatok'
      TabOrder = 48
      OnClick = btnTermekenyitesClick
    end
    object TalDBGrid3: TTalDBGrid
      Tag = -1
      Left = 632
      Top = 86
      Width = 273
      Height = 195
      TabStop = False
      Selected.Strings = (
        'KOD_NEV'#9'15'#9'Tipus'#9'F'#9
        'DATUM'#9'10'#9'D'#225'tum'#9'F'#9
        'TOMEG'#9'10'#9'T'#246'meg[kg]'#9'F'#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      DataSource = dtsInfMeres
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize, dgTabExitsOnLastCol]
      TabOrder = 49
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = True
      PaintOptions.ActiveRecordColor = clGradientActiveCaption
      DefaultSet = True
      SortDir = sdAsc
      SortType = stGrid
      SortColumn = 0
      SortShow = True
      NotEnabledFieldColor = clMoneyGreen
      NotEnabledFieldColorize = False
      FilterColor = clGray
      FixedColor = clWindow
      ShowFooter = False
      SaveIndex = False
      ShowMaskedNumericValues = False
      SaveExportParamsFile = False
    end
    object TalPanel7: TTalPanel
      Left = 632
      Top = 62
      Width = 273
      Height = 25
      BevelInner = bvLowered
      Caption = 'T'#246'megm'#233'r'#233'si adatok'
      Enabled = False
      TabOrder = 1
    end
    object btnMeres: TTalButton
      Left = 684
      Top = 289
      Width = 185
      Height = 25
      Caption = 'R'#233'szletes t'#246'megm'#233'r'#233'si adatok'
      TabOrder = 46
      OnClick = btnMeresClick
    end
    object edtAzonosito: TTalDBEdit
      Left = 135
      Top = 39
      Width = 162
      Height = 34
      Alignment = taLeftJustify
      CaseMode = cmUpperCase
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clInfoText
      AutoSize = False
      DragMode = dmAutomatic
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      ParentFont = False
      TabOrder = 2
      OnExit = edtAzonositoExit
      DataField = 'ENAR'
      DataSource = dtmTarka.dtsInfo
    end
    object TalDBGrid2: TTalDBGrid
      Tag = -1
      Left = 632
      Top = 367
      Width = 273
      Height = 137
      TabStop = False
      Selected.Strings = (
        'DATUM'#9'12'#9'D'#225'tum'#9'F'#9
        'KPLSZ'#9'8'#9'Apa KPLSZ'#9'F'#9
        'KOD_NEV'#9'15'#9#193'llapot'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = TalDBGrid2RowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      DataSource = dtsInfTerm
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize, dgTabExitsOnLastCol]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 50
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = True
      OnDrawDataCell = TalDBGrid2DrawDataCell
      PaintOptions.ActiveRecordColor = clGradientActiveCaption
      DefaultSet = True
      SortDir = sdAsc
      SortType = stGrid
      SortColumn = 0
      SortShow = True
      NotEnabledFieldColor = clMoneyGreen
      NotEnabledFieldColorize = False
      FilterColor = clGray
      FixedColor = clWindow
      ShowFooter = False
      SaveIndex = False
      ShowMaskedNumericValues = False
      SaveExportParamsFile = False
    end
    object lucKonstr: TTalDBLookupComboBox
      Left = 135
      Top = 249
      Width = 200
      Height = 21
      DataField = 'KKOD'
      DataSource = dtmTarka.dtsInfo
      DropDownAlign = daRight
      DropDownWidth = 220
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      TabOrder = 22
    end
    object edtFulszam: TTalDBEdit
      Left = 355
      Top = 39
      Width = 105
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 3
      DataField = 'FULSZAM'
      DataSource = dtmTarka.dtsInfo
    end
    object edtNev: TTalDBEdit
      Left = 683
      Top = 39
      Width = 206
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 5
      DataField = 'NEV'
      DataSource = dtmTarka.dtsInfo
    end
    object lucSzin: TTalDBLookupComboBox
      Left = 135
      Top = 272
      Width = 200
      Height = 21
      DataField = 'SZIN'
      DataSource = dtmTarka.dtsInfo
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      ListSource = dtmTarka.dtsBszin
      TabOrder = 24
    end
    object lucFajta: TTalDBLookupComboBox
      Left = 375
      Top = 249
      Width = 200
      Height = 21
      DataField = 'FAJTAKOD'
      DataSource = dtmTarka.dtsInfo
      KeyField = 'FKOD'
      ListField = 'FNEV'
      TabOrder = 23
    end
    object edtTehenszam: TTalDBEdit
      Left = 531
      Top = 39
      Width = 104
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 4
      DataField = 'TEHENSZAM'
      DataSource = dtmTarka.dtsInfo
    end
    object cbBikanevelo: TTalDBCheckBox
      Left = 134
      Top = 414
      Width = 30
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = '1'
      ValueUnchecked = '0'
      DisplayValueChecked = '1'
      DisplayValueUnchecked = '0'
      NullAndBlankState = cbUnchecked
      DataField = 'BIKANEVELO'
      DataSource = dtmTarka.dtsInfo
      TabOrder = 36
    end
    object edtMegjegyzes: TTalDBMemo
      Left = 109
      Top = 461
      Width = 226
      Height = 52
      DataField = 'MEGJEGYZES'
      DataSource = dtmTarka.dtsInfo
      TabOrder = 39
    end
    object edtMarhalevelszam: TTalDBEdit
      Left = 134
      Top = 435
      Width = 83
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = ' '
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 37
      DataField = 'MLEVEL1'
      DataSource = dtmTarka.dtsInfo
    end
    object lucKikhely: TTalDBLookupComboBox
      Left = 425
      Top = 540
      Width = 191
      Height = 21
      DataField = 'KIKHELY'
      DataSource = dtmTarka.dtsInfo
      KeyField = 'KOD'
      ListField = 'KOD_NEV'
      TabOrder = 44
    end
    object edtKeres: TTalEdit
      Left = 136
      Top = 8
      Width = 113
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      ReadOnly = False
      TabOrder = 51
      OnExit = edtKeresExit
    end
    object edtBekerDat: TTalDBEdit
      Left = 135
      Top = 165
      Width = 79
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = -1
      TabOrder = 14
      DataField = 'ALLDAT'
      DataSource = dtmTarka.dtsInfo
    end
    object edtkiesesTomeg: TTalDBEdit
      Left = 425
      Top = 561
      Width = 64
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = ' '
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 45
      Visible = False
      DataSource = dtmTarka.dtsInfo
    end
    object edtSzulSuly: TTalDBEdit
      Left = 239
      Top = 104
      Width = 42
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 8
      DataField = 'SZUL_SULY'
      DataSource = dtmTarka.dtsInfo
    end
    object edtAnyaEll: TTalDBEdit
      Left = 312
      Top = 193
      Width = 113
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 17
      DataField = 'ANYA_ELL'
      DataSource = dtmTarka.dtsInfo
    end
    object edtAnyaDonor: TTalDBEdit
      Left = 488
      Top = 193
      Width = 123
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 18
      DataField = 'DONOR_ANYA'
      DataSource = dtmTarka.dtsInfo
    end
    object edtApaFuszam: TTalDBEdit
      Left = 312
      Top = 219
      Width = 113
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 20
      DataField = 'APA_FULSZAM'
      DataSource = dtmTarka.dtsInfo
    end
    object edtApaNev: TTalDBEdit
      Left = 488
      Top = 219
      Width = 123
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = False
      SpinVisible = False
      ButtonVisible = False
      ParentCtl3D = False
      TabOrder = 21
    end
    object lucVer1: TTalDBLookupComboBox
      Left = 135
      Top = 296
      Width = 163
      Height = 21
      DataField = 'VER1'
      DataSource = dtmTarka.dtsInfo
      KeyField = 'FKOD'
      ListField = 'FNEV'
      TabOrder = 25
    end
    object edtVer1: TDBEdit
      Left = 299
      Top = 295
      Width = 37
      Height = 21
      DataField = 'VSZ1'
      DataSource = dtmTarka.dtsInfo
      MaxLength = 8
      TabOrder = 26
    end
    object lucVer2: TTalDBLookupComboBox
      Left = 375
      Top = 296
      Width = 163
      Height = 21
      DataField = 'VER2'
      DataSource = dtmTarka.dtsInfo
      KeyField = 'FKOD'
      ListField = 'FNEV'
      TabOrder = 27
    end
    object edtVer2: TDBEdit
      Left = 539
      Top = 295
      Width = 37
      Height = 21
      DataField = 'VSZ2'
      DataSource = dtmTarka.dtsInfo
      TabOrder = 28
    end
    object edtTko: TTalDBEdit
      Left = 135
      Top = 339
      Width = 26
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 33
      DataField = 'TKV'
      DataSource = dtmTarka.dtsInfo
    end
    object edtSzarv: TTalDBEdit
      Left = 134
      Top = 387
      Width = 26
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 35
      DataField = 'SZARVALTSAG'
      DataSource = dtmTarka.dtsInfo
    end
    object edtMarhalev2: TTalDBEdit
      Left = 238
      Top = 435
      Width = 83
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = ' '
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 38
      DataField = 'MLEVEL2'
      DataSource = dtmTarka.dtsInfo
    end
    object edtVer3: TDBEdit
      Left = 299
      Top = 317
      Width = 37
      Height = 21
      DataField = 'VSZ3'
      DataSource = dtmTarka.dtsInfo
      TabOrder = 30
    end
    object edtVer4: TDBEdit
      Left = 539
      Top = 317
      Width = 37
      Height = 21
      DataField = 'VSZ4'
      DataSource = dtmTarka.dtsInfo
      TabOrder = 32
    end
    object lucVer3: TTalDBLookupComboBox
      Left = 135
      Top = 318
      Width = 163
      Height = 21
      DataField = 'VER3'
      DataSource = dtmTarka.dtsInfo
      KeyField = 'FKOD'
      ListField = 'FNEV'
      TabOrder = 29
    end
    object lucVer4: TTalDBLookupComboBox
      Left = 375
      Top = 318
      Width = 163
      Height = 21
      DataField = 'VER4'
      DataSource = dtmTarka.dtsInfo
      KeyField = 'FKOD'
      ListField = 'FNEV'
      TabOrder = 31
    end
    object edtTenyeszetKod: TTalDBEdit
      Left = 135
      Top = 77
      Width = 74
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 6
      DataField = 'TENYESZET'
      DataSource = dtmTarka.dtsInfo
    end
    object edtValNap: TTalDBEdit
      Left = 135
      Top = 135
      Width = 79
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = True
      MaxLength = -1
      TabOrder = 10
      DataField = 'VALDAT'
      DataSource = dtmTarka.dtsInfo
    end
    object edtValsuly: TTalDBEdit
      Left = 239
      Top = 135
      Width = 42
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 11
      DataField = 'VALTOM'
      DataSource = dtmTarka.dtsInfo
    end
    object edt205suly: TTalDBEdit
      Left = 447
      Top = 135
      Width = 42
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 12
      DataField = 'TOM205'
      DataSource = dtmTarka.dtsInfo
    end
    object edtSv: TTalDBEdit
      Left = 569
      Top = 135
      Width = 42
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etInteger
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 13
      DataField = 'SV'
      DataSource = dtmTarka.dtsInfo
    end
    object edtMin: TTalDBEdit
      Left = 135
      Top = 363
      Width = 50
      Height = 22
      Alignment = taRightJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      ValueType = etFloat
      ValueMin = '0.00'
      Text = '0'
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 34
      DataField = 'MIN'
      DataSource = dtmTarka.dtsInfo
    end
    object edtSzarmTeny: TTalDBEdit
      Left = 374
      Top = 164
      Width = 58
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Text = ' '
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      MaxLength = -1
      TabOrder = 15
      DataField = 'SZARM_TENY'
      DataSource = dtmTarka.dtsInfo
    end
    object edtTKVSZAM: TTalDBEdit
      Left = 168
      Top = 339
      Width = 153
      Height = 22
      Alignment = taLeftJustify
      Required = False
      RequiredColor = clInfoBk
      ReadOnlyColor = clActiveBorder
      Enabled = True
      SpinVisible = False
      ButtonVisible = False
      TabOrder = 52
      DataField = 'TKVSZAM'
      DataSource = dtmTarka.dtsInfo
    end
  end
  object TalPanel4: TTalPanel
    Left = 0
    Top = 594
    Width = 928
    Height = 42
    Align = alBottom
    TabOrder = 3
    object btnElap: TTalBitBtn
      Left = 649
      Top = 5
      Width = 100
      Height = 32
      Caption = 'Egyedi lap'
      TabOrder = 4
      OnClick = btnElapClick
    end
    object btnTenyErt: TTalBitBtn
      Left = 535
      Top = 5
      Width = 100
      Height = 32
      Caption = 'Teny'#233'sz'#233'rt'#233'kek'
      TabOrder = 3
      OnClick = btnTenyErtClick
    end
    object btnEuAdatok: TTalBitBtn
      Left = 420
      Top = 5
      Width = 100
      Height = 32
      Caption = #193'llate'#252'. adatok'
      TabOrder = 2
      OnClick = btnEuAdatokClick
    end
    object btnKiBehajt: TTalBitBtn
      Left = 306
      Top = 5
      Width = 100
      Height = 32
      Caption = 'Kihajt'#225's, behajt'#225's'
      TabOrder = 1
      OnClick = btnKiBehajtClick
    end
    object btnIvadekok: TTalBitBtn
      Left = 192
      Top = 5
      Width = 100
      Height = 32
      Caption = 'Ivad'#233'kok adatai'
      TabOrder = 0
      OnClick = btnIvadekokClick
    end
    object btnKullem: TTalBitBtn
      Left = 763
      Top = 5
      Width = 100
      Height = 32
      Caption = 'K'#252'llemi b'#237'r'#225'lat'
      TabOrder = 5
      OnClick = btnKullemClick
    end
    object btnHterm: TTalButton
      Left = 88
      Top = 5
      Width = 89
      Height = 32
      Caption = 'H'#225'remszer'#369' term'#233'keny'#237't'#233'sek'
      TabOrder = 6
      WordWrap = True
      OnClick = btnHtermClick
    end
  end
  object TalPanel6: TTalPanel
    Left = 632
    Top = 343
    Width = 273
    Height = 25
    BevelInner = bvLowered
    Caption = 'Term'#233'keny'#237't'#233'sek'
    TabOrder = 0
    object lblTermDat: TTalLabel
      Left = 216
      Top = 6
      Width = 51
      Height = 13
      Hint = 
        'Ez az '#233'rt'#233'k az utols'#243' term'#233'keny'#237't'#233's '#243'ta eltelet napok/vagy a k'#246'v' +
        'etkez'#337' term'#233'keny'#237't'#233'sig eltelt napok sz'#225'ma'
      Caption = 'lblTermDat'
      ParentShowHint = False
      ShowHint = True
    end
  end
  object qryInfElles: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'  e.ELLES_DATUM,'#13#10'  kodok.kod || '#39' - '#39' || kodok.KOD_NEV ' +
      'as KOD_NEV,'#13#10'  case'#13#10'    when ke.ID  is null then'#13#10'      CURRENT' +
      '_TIMESTAMP'#13#10'    else'#13#10'     ke.ELLES_DATUM'#13#10'  end  AS VegDatum'#13#10'f' +
      'rom ELLESEK e'#13#10'left join KODOK on kodok.KODTIPUSOK_TIPUSKOD='#39'ELL' +
      '_LEF'#39' and kodok.KOD=e.ELLES_LEF'#13#10'left join ellesek ke on ke.ID =' +
      ' KOV_ELLES_ID(e.EGYED_ID, e.ELLES_DATUM)'#13#10'where e.EGYED_ID = :ID' +
      #13#10' ORDER BY 1'
    DataSet.Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = '0'
      end>
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  e.ELLES_DATUM,'#13#10'  kodok.kod || '#39' - '#39' || kodok.KOD_NEV ' +
      'as KOD_NEV,'#13#10'  case'#13#10'    when ke.ID  is null then'#13#10'      CURRENT' +
      '_TIMESTAMP'#13#10'    else'#13#10'     ke.ELLES_DATUM'#13#10'  end  AS VegDatum'#13#10'f' +
      'rom ELLESEK e'#13#10'left join KODOK on kodok.KODTIPUSOK_TIPUSKOD='#39'ELL' +
      '_LEF'#39' and kodok.KOD=e.ELLES_LEF'#13#10'left join ellesek ke on ke.ID =' +
      ' KOV_ELLES_ID(e.EGYED_ID, e.ELLES_DATUM)'#13#10'where e.EGYED_ID = :ID' +
      #13#10' ORDER BY 1'
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = '0'
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 664
    Top = 544
    object qryInfEllesELLES_DATUM: TDateTimeField
      Tag = -1
      DisplayLabel = 'Ell'#233's d'#225'tum'
      DisplayWidth = 10
      FieldName = 'ELLES_DATUM'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryInfEllesKOD_NEV: TWideStringField
      Tag = -1
      DisplayLabel = 'Ell'#233's lefoly'#225'sa'
      DisplayWidth = 24
      FieldName = 'KOD_NEV'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qryInfEllesVegDatum: TDateTimeField
      Tag = -1
      FieldName = 'VegDatum'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object dtsInfElles: TDataSource
    DataSet = qryInfElles
    Left = 722
    Top = 544
  end
  object qryInfTerm: TTalSimpleDataSet
    Tag = -1
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'  t.DATUM,'#13#10'  APA.KPLSZ,'#13#10'  kodok.KOD || '#39' - '#39' || kodok.' +
      'KOD_NEV as KOD_NEV'#13#10'from TERMEKENYITESEK t'#13#10'left join KODOK on k' +
      'odok.KODTIPUSOK_TIPUSKOD='#39'VEMHKOD'#39' and kodok.KOD=t.ALLAPOT'#13#10'left' +
      ' join APA on APA.KPLSZ=t.KPLSZ'#13#10'where t.EGYED_ID = :ID AND'#13#10'   T' +
      '.DATUM BETWEEN to_date(:DATUMTOL,'#39'yyyy.mm.dd'#39') AND (SELECT KOV_E' +
      'LLES_DATUM(:ID, to_date(:DATUMTOL1,'#39'yyyy.mm.dd'#39')) from dual)'#13#10#13#10 +
      '/*Programban v'#225'ltozik!!*/'#13#10
    DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DATUMTOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DATUMTOL1'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  t.DATUM,'#13#10'  APA.KPLSZ,'#13#10'  kodok.KOD || '#39' - '#39' || kodok.' +
      'KOD_NEV as KOD_NEV'#13#10'from TERMEKENYITESEK t'#13#10'left join KODOK on k' +
      'odok.KODTIPUSOK_TIPUSKOD='#39'VEMHKOD'#39' and kodok.KOD=t.ALLAPOT'#13#10'left' +
      ' join APA on APA.KPLSZ=t.KPLSZ'#13#10'where t.EGYED_ID = :ID AND'#13#10'   T' +
      '.DATUM BETWEEN to_date(:DATUMTOL,'#39'yyyy.mm.dd'#39') AND (SELECT KOV_E' +
      'LLES_DATUM(:ID, to_date(:DATUMTOL1,'#39'yyyy.mm.dd'#39')) from dual)'#13#10#13#10 +
      '/*Programban v'#225'ltozik!!*/'#13#10
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DATUMTOL'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'DATUMTOL1'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 776
    Top = 544
    object qryInfTermDATUM: TDateTimeField
      DisplayLabel = 'D'#225'tum'
      DisplayWidth = 12
      FieldName = 'DATUM'
    end
    object qryInfTermKPLSZ: TWideStringField
      DisplayLabel = 'Apa KPLSZ'
      DisplayWidth = 8
      FieldName = 'KPLSZ'
      Size = 5
    end
    object qryInfTermKOD_NEV: TWideStringField
      Tag = -1
      DisplayLabel = #193'llapot'
      DisplayWidth = 15
      FieldName = 'KOD_NEV'
      ProviderFlags = []
      Size = 30
    end
  end
  object dtsInfTerm: TDataSource
    DataSet = qryInfTerm
    Left = 826
    Top = 544
  end
  object qryInfMeres: TTalSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT kodok.kod_nev, TOMEGEK.DATUM, TOMEGEK.TOMEG '#13#10'FROM TOMEGE' +
      'K '#13#10'left join kodok on kodok.kod = tomegek.meres_tipus and kodok' +
      '.kodtipusok_tipuskod = '#39'MERESTPS'#39#13#10'WHERE '#13#10'EGYED_ID = :ID'
    DataSet.Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = '0'
      end>
    Provider.DataSet.CommandText = 
      'SELECT kodok.kod_nev, TOMEGEK.DATUM, TOMEGEK.TOMEG '#13#10'FROM TOMEGE' +
      'K '#13#10'left join kodok on kodok.kod = tomegek.meres_tipus and kodok' +
      '.kodtipusok_tipuskod = '#39'MERESTPS'#39#13#10'WHERE '#13#10'EGYED_ID = :ID'
    Provider.DataSet.Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = '0'
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    Left = 16
    Top = 640
    object qryInfMeresKOD_NEV: TWideStringField
      DisplayLabel = 'Tipus'
      DisplayWidth = 15
      FieldName = 'KOD_NEV'
      Size = 30
    end
    object qryInfMeresDATUM: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'D'#225'tum'
      DisplayWidth = 10
      FieldName = 'DATUM'
    end
    object qryInfMeresTOMEG: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'T'#246'meg[kg]'
      DisplayWidth = 10
      FieldName = 'TOMEG'
    end
  end
  object dtsInfMeres: TDataSource
    DataSet = qryInfMeres
    Left = 74
    Top = 640
  end
end
