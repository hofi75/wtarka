inherited frmAzonositoValaszto: TfrmAzonositoValaszto
  Left = 468
  Top = 195
  Width = 988
  Caption = 'frmAzonositoValaszto'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 972
    inherited grdVal: TTalDBGrid
      Width = 970
      Selected.Strings = (
        'ENAR'#9'14'#9'EN'#193'R'#9'F'#9
        'tenyeszet'#9'10'#9'Teny'#233'szet'#9'F'#9
        'Azonosito_mutat'#9'14'#9'Azonosit'#243#9#9
        'FULSZAM'#9'15'#9'F'#252'lsz'#225'm'#9'F'#9
        'TEHENSZAM'#9'15'#9'Teh'#233'nsz'#225'm'#9'F'#9
        'ID_ENAR'#9'15'#9'Id.ENAR'#9'F'#9
        'NEV'#9'40'#9'N'#233'v'#9#9
        'KIKDAT'#9'10'#9'Kik.d'#225'tum'#9'F'#9
        'ki_ok'#9'15'#9'Kiker'#252'l'#233's ok'#9'F'#9
        'ki_kod'#9'15'#9'Kiker'#252'l'#233's k'#243'd'#9'F'#9
        'IVAR'#9'1'#9'Ivar'#9'F'#9)
      IniAttributes.SectionName = 'frmAzonositoValaszto'
      DataSource = dtsKeres
      OnDblClick = grdValDblClick
      ShowFooter = False
      inherited grdValIButton: TwwIButton
        Enabled = False
      end
    end
    inherited pnlGombok: TPanel
      Width = 970
      inherited btnTorol: TBitBtn
        Left = 732
        Enabled = False
        Visible = False
      end
      inherited btnOK: TBitBtn
        Left = 812
      end
      inherited btnCancel: TBitBtn
        Left = 892
        Visible = False
      end
      inherited btnModosit: TBitBtn
        Left = 652
        Enabled = False
        Visible = False
      end
      inherited btnUj: TBitBtn
        Left = 572
        Enabled = False
        Visible = False
      end
      inherited btnNyomtat: TBitBtn
        Visible = False
      end
    end
    inherited pnlKereses: TPanel
      Width = 970
    end
  end
  object sdsKeres: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
    DataSet.CommandText = 
      'SELECT'#13#10'  e.tenyeszet,'#13#10'  e.ENAR,'#13#10'  CAST(case'#13#10'    when (tarka_' +
      'utils.left(e.ENAR,1) = '#39'3'#39') and length(e.ENAR)=10 then'#13#10'      ta' +
      'rka_utils.left(e.ENAR,5) || '#39'-'#39'|| SUBSTR(e.ENAR ,6, 4) || '#39'-'#39'  |' +
      '| tarka_utils.right(e.ENAR,1)'#13#10'    when (tarka_utils.left(e.ENAR' +
      ',3) = '#39'HU3'#39') and length(e.ENAR)=12 then'#13#10'      tarka_utils.left(' +
      'e.ENAR,7) || '#39'-'#39'|| SUBSTR(e.ENAR ,8, 4) || '#39'-'#39' || tarka_utils.ri' +
      'ght(e.ENAR,1)'#13#10'    else e.ENAR'#13#10'  end as VARCHAR2(20)) as Azonos' +
      'ito_mutat,'#13#10'  e.FULSZAM,'#13#10'  E.TEHENSZAM,'#13#10'  E.ID_ENAR,'#13#10'  e.NEV,' +
      #13#10'  e.KIKDAT,'#13#10'  CAST(e.KIKOK AS VARCHAR(1)) || '#39','#39' ||kikod.KOD_' +
      'NEV as ki_ok,'#13#10'  CAST(e.KIKOD AS VARCHAR(1)) || '#39','#39' ||kiok.KOD_N' +
      'EV as ki_kod,'#13#10'  e.ID, e.IVAR'#13#10'from egyedek e'#13#10'left join KODOK k' +
      'ikod  on kikod.KODTIPUSOK_TIPUSKOD='#39'KIKOD'#39' and kikod.KOD=e.KIKOD' +
      #13#10'left join KODOK kiok on kiok.KODTIPUSOK_TIPUSKOD='#39'KIOK'#39' and ki' +
      'ok.KOD=e.KIKOK'#13#10'where ((SUBSTR(e.ENAR,6,4) = :p_azon)    or (e.e' +
      'nar = :p_azon1))'
    DataSet.Parameters = <
      item
        Name = 'p_azon'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'p_azon1'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    Provider.DataSet.Connection = dtmTarka.cnTarka
    Provider.DataSet.CommandText = 
      'SELECT'#13#10'  e.tenyeszet,'#13#10'  e.ENAR,'#13#10'  CAST(case'#13#10'    when (tarka_' +
      'utils.left(e.ENAR,1) = '#39'3'#39') and length(e.ENAR)=10 then'#13#10'      ta' +
      'rka_utils.left(e.ENAR,5) || '#39'-'#39'|| SUBSTR(e.ENAR ,6, 4) || '#39'-'#39'  |' +
      '| tarka_utils.right(e.ENAR,1)'#13#10'    when (tarka_utils.left(e.ENAR' +
      ',3) = '#39'HU3'#39') and length(e.ENAR)=12 then'#13#10'      tarka_utils.left(' +
      'e.ENAR,7) || '#39'-'#39'|| SUBSTR(e.ENAR ,8, 4) || '#39'-'#39' || tarka_utils.ri' +
      'ght(e.ENAR,1)'#13#10'    else e.ENAR'#13#10'  end as VARCHAR2(20)) as Azonos' +
      'ito_mutat,'#13#10'  e.FULSZAM,'#13#10'  E.TEHENSZAM,'#13#10'  E.ID_ENAR,'#13#10'  e.NEV,' +
      #13#10'  e.KIKDAT,'#13#10'  CAST(e.KIKOK AS VARCHAR(1)) || '#39','#39' ||kikod.KOD_' +
      'NEV as ki_ok,'#13#10'  CAST(e.KIKOD AS VARCHAR(1)) || '#39','#39' ||kiok.KOD_N' +
      'EV as ki_kod,'#13#10'  e.ID, e.IVAR'#13#10'from egyedek e'#13#10'left join KODOK k' +
      'ikod  on kikod.KODTIPUSOK_TIPUSKOD='#39'KIKOD'#39' and kikod.KOD=e.KIKOD' +
      #13#10'left join KODOK kiok on kiok.KODTIPUSOK_TIPUSKOD='#39'KIOK'#39' and ki' +
      'ok.KOD=e.KIKOK'#13#10'where ((SUBSTR(e.ENAR,6,4) = :p_azon)    or (e.e' +
      'nar = :p_azon1))'
    Provider.DataSet.Parameters = <
      item
        Name = 'p_azon'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'p_azon1'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    Provider.ResolveToDataSet = True
    Provider.Options = [poPropogateChanges]
    Params = <>
    ReadOnly = True
    Left = 160
    Top = 80
    object sdsKeresENAR: TWideStringField
      DisplayLabel = 'EN'#193'R'
      DisplayWidth = 14
      FieldName = 'ENAR'
      ProviderFlags = []
      Size = 14
    end
    object sdsKerestenyeszet: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Teny'#233'szet'
      DisplayWidth = 10
      FieldName = 'tenyeszet'
      FixedChar = True
      Size = 7
    end
    object sdsKeresAzonosito_mutat: TWideStringField
      DisplayLabel = 'Azonosit'#243
      DisplayWidth = 14
      FieldName = 'Azonosito_mutat'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
    object sdsKeresFULSZAM: TWideStringField
      DisplayLabel = 'F'#252'lsz'#225'm'
      DisplayWidth = 15
      FieldName = 'FULSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsKeresTEHENSZAM: TWideStringField
      DisplayLabel = 'Teh'#233'nsz'#225'm'
      DisplayWidth = 15
      FieldName = 'TEHENSZAM'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsKeresID_ENAR: TWideStringField
      DisplayLabel = 'Id.ENAR'
      DisplayWidth = 15
      FieldName = 'ID_ENAR'
      ProviderFlags = []
      FixedChar = True
      Size = 15
    end
    object sdsKeresNEV: TWideStringField
      DisplayLabel = 'N'#233'v'
      DisplayWidth = 40
      FieldName = 'NEV'
      ProviderFlags = []
      FixedChar = True
      Size = 30
    end
    object sdsKeresKIKDAT: TDateTimeField
      DisplayLabel = 'Kik.d'#225'tum'
      DisplayWidth = 10
      FieldName = 'KIKDAT'
      ProviderFlags = []
    end
    object sdsKereski_ok: TWideStringField
      DisplayLabel = 'Kiker'#252'l'#233's ok'
      DisplayWidth = 15
      FieldName = 'ki_ok'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object sdsKereski_kod: TWideStringField
      DisplayLabel = 'Kiker'#252'l'#233's k'#243'd'
      DisplayWidth = 15
      FieldName = 'ki_kod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object sdsKeresIVAR: TWideStringField
      DisplayLabel = 'Ivar'
      DisplayWidth = 1
      FieldName = 'IVAR'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsKeresID: TBCDField
      FieldName = 'ID'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Precision = 15
      Size = 0
    end
  end
  object dtsKeres: TDataSource
    DataSet = sdsKeres
    Left = 264
    Top = 80
  end
end
