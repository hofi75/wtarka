inherited frmEgyedValaszto: TfrmEgyedValaszto
  Left = 327
  Top = 169
  Width = 795
  Height = 493
  Caption = 'Egyed v'#225'laszt'#243
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 787
    Height = 459
    inherited grdVal: TTalDBGrid
      Top = 67
      Width = 785
      Height = 352
      Selected.Strings = (
        'Azonosito_mutat'#9'14'#9'Azonosit'#243#9#9
        'PSION_AZONOSITO'#9'10'#9'Haszn.sz'#225'm'#9#9
        'SZUL_DATUM'#9'10'#9'Sz'#252'l.d'#225'tum'#9#9
        'SPEC_AZONOSITO'#9'10'#9'Spec.azon.'#9#9
        'NEV'#9'40'#9'N'#233'v'#9#9)
      IniAttributes.SectionName = 'frmEgyedValaszto'
      DataSource = dtsKeres
      OnDblClick = grdValDblClick
    end
    inherited pnlGombok: TPanel
      Top = 419
      Width = 785
      inherited btnTorol: TBitBtn
        Left = 539
        Visible = False
      end
      inherited btnOK: TBitBtn
        Left = 619
      end
      inherited btnCancel: TBitBtn
        Left = 699
      end
      inherited btnModosit: TBitBtn
        Left = 459
        Visible = False
      end
      inherited btnUj: TBitBtn
        Left = 379
        Visible = False
      end
      inherited btnNyomtat: TBitBtn
        Visible = False
      end
    end
    inherited pnlKereses: TPanel
      Width = 785
      Height = 66
      inherited Label1: TLabel
        Left = 10
        Top = 40
      end
      object TalLabel1: TTalLabel [1]
        Left = 517
        Top = 11
        Width = 54
        Height = 13
        Caption = 'Korcsoport:'
      end
      object TalSpeedButton1: TTalSpeedButton [2]
        Left = 756
        Top = 6
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
      inherited Edit1: TEdit
        Left = 56
        Top = 36
        Width = 163
      end
      object rgKiesett: TTalRadioGroup
        Left = 220
        Top = -2
        Width = 296
        Height = 32
        Columns = 3
        Items.Strings = (
          #201'l'#337' egyedek'
          'Kiesett egyedek'
          'Minden egyed')
        TabOrder = 1
        OnClick = rgKiesettClick
      end
      object rgIvar: TTalRadioGroup
        Left = 220
        Top = 29
        Width = 296
        Height = 32
        Columns = 3
        Items.Strings = (
          'H'#237'mivar'#250
          'N'#337'ivar'#250
          'Minden egyed')
        TabOrder = 2
        OnClick = rgIvarClick
      end
      object lucKorCsop: TTalComboBox
        Left = 605
        Top = 7
        Width = 150
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        OnChange = lucKorCsopChange
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 236
    Top = 76
  end
  object sdsKeres: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT '#13#10'  CAST(case '#13#10'   when (tarka_utils.left(e.ENAR, 1) = '#39'3' +
      #39') and length(e.ENAR) = 10 then '#13#10'     tarka_utils.left(e.ENAR, ' +
      '5) || '#39'-'#39' || SUBSTR(e.ENAR, 6, 4) || '#39'-'#39' || tarka_utils.right(e.' +
      'ENAR, 1) '#13#10'   when (tarka_utils.left(e.ENAR, 3) = '#39'HU3'#39') and len' +
      'gth(e.ENAR) = 12 then '#13#10'     tarka_utils.left(e.ENAR, 7) || '#39'-'#39' ' +
      '|| substr(e.ENAR, 8, 4) || '#39'-'#39' || tarka_utils.right(e.ENAR, 1) '#13 +
      #10'   else e.ENAR '#13#10'  end as VARCHAR2(20)) as ENAR, '#13#10'  e.FULSZAM,' +
      ' '#13#10'  e.ID_ENAR, '#13#10'  e.TEHENSZAM, '#13#10'  e.NEV, '#13#10'  e.SZULDAT, '#13#10'  e' +
      '.ID '#13#10'from egyedek e '#13#10'where 1 = 1'#13#10#13#10
    DataSet.Parameters = <>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT '#13#10'  CAST(case '#13#10'   when (tarka_utils.left(e.ENAR, 1) = '#39'3' +
      #39') and length(e.ENAR) = 10 then '#13#10'     tarka_utils.left(e.ENAR, ' +
      '5) || '#39'-'#39' || SUBSTR(e.ENAR, 6, 4) || '#39'-'#39' || tarka_utils.right(e.' +
      'ENAR, 1) '#13#10'   when (tarka_utils.left(e.ENAR, 3) = '#39'HU3'#39') and len' +
      'gth(e.ENAR) = 12 then '#13#10'     tarka_utils.left(e.ENAR, 7) || '#39'-'#39' ' +
      '|| substr(e.ENAR, 8, 4) || '#39'-'#39' || tarka_utils.right(e.ENAR, 1) '#13 +
      #10'   else e.ENAR '#13#10'  end as VARCHAR2(20)) as ENAR, '#13#10'  e.FULSZAM,' +
      ' '#13#10'  e.ID_ENAR, '#13#10'  e.TEHENSZAM, '#13#10'  e.NEV, '#13#10'  e.SZULDAT, '#13#10'  e' +
      '.ID '#13#10'from egyedek e '#13#10'where 1 = 1'#13#10#13#10
    Provider.DataSet.Parameters = <>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 52
    Top = 92
    object sdsKeresENAR: TWideStringField
      FieldName = 'ENAR'
      ReadOnly = True
    end
    object sdsKeresFULSZAM: TWideStringField
      DisplayLabel = 'F'#252'lsz'#225'm'
      FieldName = 'FULSZAM'
      Size = 15
    end
    object sdsKeresID_ENAR: TWideStringField
      DisplayLabel = 'Idegen ENAR'
      FieldName = 'ID_ENAR'
      Size = 15
    end
    object sdsKeresTEHENSZAM: TWideStringField
      DisplayLabel = 'Teh'#233'nsz'#225'm'
      FieldName = 'TEHENSZAM'
      Size = 15
    end
    object sdsKeresNEV: TWideStringField
      DisplayLabel = 'N'#233'v'
      DisplayWidth = 40
      FieldName = 'NEV'
      Size = 30
    end
    object sdsKeresSZULDAT: TDateTimeField
      DisplayLabel = 'Sz'#252'l. d'#225'tum'
      FieldName = 'SZULDAT'
    end
    object sdsKeresID: TBCDField
      FieldName = 'ID'
      Visible = False
      Precision = 15
      Size = 0
    end
  end
  object dtsKeres: TDataSource
    DataSet = sdsKeres
    Left = 83
    Top = 92
  end
  object qryStatus: TTalQuery
    Connection = dtmTarka.cnTarka
    Parameters = <>
    SQL.Strings = (
      'select kp.KOD,'
      'kp.NEV'
      'from korcsop_par kp')
    Left = 56
    Top = 184
    object qryStatusKOD: TWideStringField
      FieldName = 'KOD'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qryStatusNEV: TWideStringField
      FieldName = 'NEV'
      ProviderFlags = []
      Size = 80
    end
  end
  object dtsStatus: TDataSource
    DataSet = qryStatus
    Left = 88
    Top = 184
  end
end
