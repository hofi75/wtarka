object frmMigration: TfrmMigration
  Left = 345
  Top = 199
  ActiveControl = btnExit
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Indul'#243' adatok bet'#246'lt'#233'se'
  ClientHeight = 355
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TalPanel1: TTalPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 315
    Align = alTop
    TabOrder = 0
    object TalLabel1: TTalLabel
      Left = 16
      Top = 132
      Width = 35
      Height = 13
      Caption = #193'llapot:'
    end
    object memState: TTalMemo
      Left = 58
      Top = 132
      Width = 327
      Height = 157
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 12
      Width = 373
      Height = 117
      Caption = 'Be'#225'll'#237't'#225'sok'
      TabOrder = 1
      object cbDeleteData: TTalCheckBox
        Left = 16
        Top = 44
        Width = 181
        Height = 17
        Caption = 'El'#337'z'#337'leg bet'#246'lt'#246'tt adatok t'#246'rl'#233'se'
        TabOrder = 0
        OnClick = cbDeleteDataClick
      end
      object cbKodImport: TTalCheckBox
        Left = 16
        Top = 20
        Width = 117
        Height = 17
        Caption = 'K'#243'dok beemel'#233'se'
        TabOrder = 1
      end
    end
  end
  object TalPanel2: TTalPanel
    Left = 0
    Top = 315
    Width = 426
    Height = 40
    Align = alClient
    TabOrder = 1
    object btnExit: TTalBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Action = actExit
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
    end
    object btnStart: TTalBitBtn
      Left = 236
      Top = 8
      Width = 75
      Height = 25
      Action = actStart
      Caption = 'Start'
      TabOrder = 1
    end
  end
  object ActionList: TActionList
    Left = 120
    Top = 80
    object actExit: TAction
      Caption = 'Kil'#233'p'#233's'
      OnExecute = actExitExecute
    end
    object actStart: TAction
      Caption = 'Start'
      OnExecute = actStartExecute
    end
  end
  object qChkState: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'select isnull(migral_jel, 0) as migral_jel from param')
    Left = 172
    Top = 16
  end
  object PROC_INIT_LOAD2: TTalStoredProc
    Connection = dtmTarka.cnTarka
    CommandTimeout = 300
    ProcedureName = 'PROC_INIT_LOAD2;1'
    Parameters = <>
    Left = 344
    Top = 32
  end
  object PROC_INIT_LOAD1: TTalStoredProc
    Connection = dtmTarka.cnTarka
    CommandTimeout = 300
    ProcedureName = 'PROC_INIT_LOAD1;1'
    Parameters = <>
    Left = 312
    Top = 32
  end
  object PROC_INIT_LOAD: TTalStoredProc
    Connection = dtmTarka.cnTarka
    CommandTimeout = 300
    ProcedureName = 'PROC_INIT_LOAD;1'
    Parameters = <>
    Left = 272
    Top = 32
  end
  object PROC_INIT_TOROL: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ExecuteOptions = [eoExecuteNoRecords]
    CommandTimeout = 255
    ProcedureName = 'PROC_INIT_TOROL;1'
    Parameters = <>
    Left = 232
    Top = 32
  end
  object PROC_INIT_LOAD3: TTalStoredProc
    Connection = dtmTarka.cnTarka
    CommandTimeout = 300
    ProcedureName = 'PROC_INIT_LOAD3;1'
    Parameters = <>
    Left = 232
    Top = 80
  end
end
