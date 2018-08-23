object frmHivSzarmIg: TfrmHivSzarmIg
  Left = 765
  Top = 304
  Width = 719
  Height = 407
  Caption = 'List'#225'k'
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
    Width = 406
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
  object lbBika: TLabel
    Left = 78
    Top = 170
    Width = 40
    Height = 16
    Caption = 'ENAR:'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object cbEgyed: TComboBox
    Left = 280
    Top = 168
    Width = 113
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Visible = False
  end
  object RadioGroup1: TTalRadioGroup
    Left = 370
    Top = 216
    Width = 250
    Height = 50
    Caption = 'Lista kimenete'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Lista'
      'Excel f'#225'jl')
    TabOrder = 1
  end
  object bbtnPrint: TBitBtn
    Left = 396
    Top = 305
    Width = 120
    Height = 25
    Caption = 'Nyomtat'#225's'
    Enabled = False
    TabOrder = 2
    OnClick = bbtnPrintClick
  end
  object bbtnKilepes: TBitBtn
    Left = 550
    Top = 305
    Width = 120
    Height = 25
    Caption = 'Kil'#233'p'#233's'
    TabOrder = 3
    OnClick = bbtnKilepesClick
  end
  object btnMegTekMod: TBitBtn
    Left = 242
    Top = 305
    Width = 120
    Height = 25
    Caption = 'Megtekint / M'#243'dos'#237't'
    Enabled = False
    TabOrder = 4
    OnClick = btnMegTekModClick
  end
  object btnUjra: TTalBitBtn
    Left = 88
    Top = 305
    Width = 120
    Height = 25
    Caption = #218'jra'
    Enabled = False
    TabOrder = 5
    OnClick = btnUjraClick
  end
  object eENAR: TTalEdit
    Left = 136
    Top = 168
    Width = 121
    Height = 22
    Alignment = taLeftJustify
    Required = False
    RequiredColor = clInfoBk
    ReadOnlyColor = clActiveBorder
    Enabled = True
    SpinVisible = False
    ButtonVisible = False
    MaxLength = -1
    ReadOnly = False
    TabOrder = 6
    OnExit = eENARExit
    OnKeyPress = eENARKeyPress
  end
  object edtSeqNR: TTalEdit
    Left = 136
    Top = 128
    Width = 121
    Height = 22
    Hint = 'Sz'#225'rmaz'#225'si igazol'#225's sorsz'#225'ma'
    Alignment = taLeftJustify
    Required = False
    RequiredColor = clInfoBk
    ReadOnlyColor = clActiveBorder
    Enabled = True
    SpinVisible = False
    ButtonVisible = False
    MaxLength = -1
    ReadOnly = False
    TabOrder = 7
    OnExit = eENARExit
    OnKeyPress = eENARKeyPress
  end
  object qListak: TTalQuery
    Connection = dtmTarka.cnTarka
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select e.enar, e.szuldat, e.nev, e.anya_enar, e.apaklsz,e.fajtak' +
        'od, e.szin,'
      
        'cast((select count(*) from ellesek e1 where e1.egyed_id = ell.eg' +
        'yed_id and e1.elles_datum <= ell.elles_datum ) as integer) as el' +
        'les_ssz,'
      'ell.elles_datum,'
      
        'Case (SELECT BORJAK.BORJU_IVAR FROM BORJAK WHERE BORJAK.ELLESEK_' +
        'ID = ELL.ID AND ROWNUM=1)'
      '                  when '#39'1'#39' Then '#39'B'#39
      '                  when '#39'2'#39' Then '#39#220#39
      '                  Else '#39#39
      '                End As BURJU_IVAR,'
      '--tt.datum, '
      'tt.kplsz, tt.allapot,'
      
        '(select count(1) from termekenyitesek t1 where t1.egyed_id = e.i' +
        'd and t1.datum > ell.elles_datum ) as term_ssz'
      'from egyedek e'
      
        'left join ellesek ell on ell.id = ut_elles_id(e.id) and ell.elle' +
        's_datum > to_date('#39'2007.01.01'#39','#39'yyyy.mm.dd'#39')'
      
        'left join TERMEKENYITESEK tt on tt.id = ut_term(e.id) and tt.dat' +
        'um > to_date('#39'2007.01.01'#39','#39'yyyy.mm.dd'#39')'
      'where (e.kikdat is null)-- AND ELL.ELLES_DATUM IS NOT NULL'
      '  and e.tenyeszet = '#39'0467346'#39
      'Order By e.enar')
    Left = 664
    Top = 8
  end
  object sdsListHSzIg: TTalSimpleDataSet
    Aggregates = <>
    Connection = dtmTarka.cnTarka
    DataSet.Connection = dtmTarka.cnTarka
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
      '.anya_togy, szlapok.t_anya_togy'#13#10'from szlapok'#13#10'left join fajta e' +
      'f on ef.fkod =m17'#13#10'left join fajta apf on apf.fkod=m33'#13#10'left joi' +
      'n fajta anf on anf.fkod=m47'#13#10'left join fajta appf on appf.fkod=m' +
      '60'#13#10'left join fajta anpf on anpf.fkod=m97'#13#10'left join fajta tbf o' +
      'n tbf.fkod=m135'#13#10'left join KODOK EIV on EIV.KODTIPUSOK_TIPUSKOD ' +
      '= '#39'IVAR'#39' and EIV.KOD = M19'#13#10'WHERE szlapok.enar = :PENAR and sor ' +
      '= :PSOR and per = :PPER'
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
    Provider.DataSet.Connection = dtmTarka.cnTarka
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
      '.anya_togy, szlapok.t_anya_togy'#13#10'from szlapok'#13#10'left join fajta e' +
      'f on ef.fkod =m17'#13#10'left join fajta apf on apf.fkod=m33'#13#10'left joi' +
      'n fajta anf on anf.fkod=m47'#13#10'left join fajta appf on appf.fkod=m' +
      '60'#13#10'left join fajta anpf on anpf.fkod=m97'#13#10'left join fajta tbf o' +
      'n tbf.fkod=m135'#13#10'left join KODOK EIV on EIV.KODTIPUSOK_TIPUSKOD ' +
      '= '#39'IVAR'#39' and EIV.KOD = M19'#13#10'WHERE szlapok.enar = :PENAR and sor ' +
      '= :PSOR and per = :PPER'
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
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 568
    Top = 16
    object sdsListHSzIgIGDAT: TDateTimeField
      FieldName = 'IGDAT'
    end
    object sdsListHSzIgTKOD: TWideStringField
      FieldName = 'TKOD'
      Size = 7
    end
    object sdsListHSzIgUKOD: TWideStringField
      FieldName = 'UKOD'
      Size = 3
    end
    object sdsListHSzIgEGY: TWideStringField
      FieldName = 'EGY'
      Size = 1
    end
    object sdsListHSzIgSOR: TIntegerField
      FieldName = 'SOR'
    end
    object sdsListHSzIgPER: TIntegerField
      FieldName = 'PER'
    end
    object sdsListHSzIgMAS: TWideStringField
      FieldName = 'MAS'
      Size = 1
    end
    object sdsListHSzIgKIDAT: TDateTimeField
      FieldName = 'KIDAT'
    end
    object sdsListHSzIgHITDAT: TDateTimeField
      FieldName = 'HITDAT'
    end
    object sdsListHSzIgNYELV: TWideStringField
      FieldName = 'NYELV'
      Size = 1
    end
    object sdsListHSzIgKPLSZ: TBCDField
      FieldName = 'KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListHSzIgENAR: TWideStringField
      FieldName = 'ENAR'
      Size = 10
    end
    object sdsListHSzIgFULSZAM: TWideStringField
      FieldName = 'FULSZAM'
    end
    object sdsListHSzIgNEV: TWideStringField
      FieldName = 'NEV'
      Size = 40
    end
    object sdsListHSzIgSZULDAT: TDateTimeField
      FieldName = 'SZULDAT'
    end
    object sdsListHSzIgTKV: TWideStringField
      FieldName = 'TKV'
      Size = 1
    end
    object sdsListHSzIgFAJTAKOD: TIntegerField
      FieldName = 'FAJTAKOD'
    end
    object sdsListHSzIgFAJTANEV: TWideStringField
      FieldName = 'FAJTANEV'
      Size = 40
    end
    object sdsListHSzIgFAJTA_SZAZ: TBCDField
      FieldName = 'FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgIVAR: TWideStringField
      FieldName = 'IVAR'
      Size = 1
    end
    object sdsListHSzIgSV: TIntegerField
      FieldName = 'SV'
    end
    object sdsListHSzIgELETNAPI_TGY: TIntegerField
      FieldName = 'ELETNAPI_TGY'
    end
    object sdsListHSzIgSTV_TGY: TIntegerField
      FieldName = 'STV_TGY'
    end
    object sdsListHSzIgKMI: TBCDField
      FieldName = 'KMI'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgTIPUS: TWideStringField
      FieldName = 'TIPUS'
      Size = 1
    end
    object sdsListHSzIgIZMOLTSAG: TWideStringField
      FieldName = 'IZMOLTSAG'
      Size = 1
    end
    object sdsListHSzIgLABSZERKEZET: TWideStringField
      FieldName = 'LABSZERKEZET'
      Size = 1
    end
    object sdsListHSzIgERTEKELES_DATUMA: TDateTimeField
      FieldName = 'ERTEKELES_DATUMA'
    end
    object sdsListHSzIgAPA_KPLSZ: TBCDField
      FieldName = 'APA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListHSzIgAPA_ENAR: TWideStringField
      FieldName = 'APA_ENAR'
      Size = 10
    end
    object sdsListHSzIgAPA_SZULDAT: TDateTimeField
      FieldName = 'APA_SZULDAT'
    end
    object sdsListHSzIgAPA_NEV: TWideStringField
      FieldName = 'APA_NEV'
      Size = 40
    end
    object sdsListHSzIgAPA_FULSZAM: TWideStringField
      FieldName = 'APA_FULSZAM'
    end
    object sdsListHSzIgAPA_FAJTAKOD: TIntegerField
      FieldName = 'APA_FAJTAKOD'
    end
    object sdsListHSzIgAPA_FAJTANEV: TWideStringField
      FieldName = 'APA_FAJTANEV'
      Size = 40
    end
    object sdsListHSzIgAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'APA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgAPA_SV: TIntegerField
      FieldName = 'APA_SV'
    end
    object sdsListHSzIgAPA_ETGY: TIntegerField
      FieldName = 'APA_ETGY'
    end
    object sdsListHSzIgAPA_STV_TGY: TIntegerField
      FieldName = 'APA_STV_TGY'
    end
    object sdsListHSzIgAPA_TIPUS: TWideStringField
      FieldName = 'APA_TIPUS'
      Size = 1
    end
    object sdsListHSzIgAPA_IZMOLTSAG: TWideStringField
      FieldName = 'APA_IZMOLTSAG'
      Size = 1
    end
    object sdsListHSzIgAPA_LABSZERKEZET: TWideStringField
      FieldName = 'APA_LABSZERKEZET'
      Size = 1
    end
    object sdsListHSzIgAPA_ERT_DAT: TDateTimeField
      FieldName = 'APA_ERT_DAT'
    end
    object sdsListHSzIgANYA_NEV: TWideStringField
      FieldName = 'ANYA_NEV'
      Size = 40
    end
    object sdsListHSzIgANYA_SZULDAT: TDateTimeField
      FieldName = 'ANYA_SZULDAT'
    end
    object sdsListHSzIgANYA_ENAR: TWideStringField
      FieldName = 'ANYA_ENAR'
      Size = 10
    end
    object sdsListHSzIgANYA_ELLSZAM: TWideStringField
      FieldName = 'ANYA_ELLSZAM'
      Size = 11
    end
    object sdsListHSzIgANYA_FULSZAM: TWideStringField
      FieldName = 'ANYA_FULSZAM'
    end
    object sdsListHSzIgANYA_FAJTA_KOD: TIntegerField
      FieldName = 'ANYA_FAJTA_KOD'
    end
    object sdsListHSzIgANYA_FAJTANEV: TWideStringField
      FieldName = 'ANYA_FAJTANEV'
      Size = 40
    end
    object sdsListHSzIgANYA_FAJTA_SZAZ: TBCDField
      FieldName = 'ANYA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgANYA_SV: TIntegerField
      FieldName = 'ANYA_SV'
    end
    object sdsListHSzIgANYA_KMI: TBCDField
      FieldName = 'ANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgANYA_TIPUS: TWideStringField
      FieldName = 'ANYA_TIPUS'
      Size = 1
    end
    object sdsListHSzIgANYA_IZMOLTSAG: TWideStringField
      FieldName = 'ANYA_IZMOLTSAG'
      Size = 1
    end
    object sdsListHSzIgANYA_LABSZERKEZET: TWideStringField
      FieldName = 'ANYA_LABSZERKEZET'
      Size = 1
    end
    object sdsListHSzIgANYA_ERT_DAT: TDateTimeField
      FieldName = 'ANYA_ERT_DAT'
    end
    object sdsListHSzIgAPAI_NAGYAPA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_NEV'
      Size = 40
    end
    object sdsListHSzIgAPAI_NAGYAPA_SZULDAT: TDateTimeField
      FieldName = 'APAI_NAGYAPA_SZULDAT'
    end
    object sdsListHSzIgAPAI_NAGYAPA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYAPA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListHSzIgAPAI_NAGYAPA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_ENAR'
      Size = 10
    end
    object sdsListHSzIgAPAI_NAGYAPA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_FULSZAM'
    end
    object sdsListHSzIgAPAI_NAGYAPA_FAJTAKOD: TIntegerField
      FieldName = 'APAI_NAGYAPA_FAJTAKOD'
    end
    object sdsListHSzIgAPA_NAGYAPA_FAJTANEV: TWideStringField
      FieldName = 'APA_NAGYAPA_FAJTANEV'
      Size = 40
    end
    object sdsListHSzIgAPAI_NAGYAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'APAI_NAGYAPA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgAPAI_NAGYAPA_SV: TIntegerField
      FieldName = 'APAI_NAGYAPA_SV'
    end
    object sdsListHSzIgAPAI_NAGYAPA_TGY: TIntegerField
      FieldName = 'APAI_NAGYAPA_TGY'
    end
    object sdsListHSzIgAPAI_NAGYAPA_STV_TGY: TIntegerField
      FieldName = 'APAI_NAGYAPA_STV_TGY'
    end
    object sdsListHSzIgAPAI_NAGYAPA_TIPUS: TWideStringField
      FieldName = 'APAI_NAGYAPA_TIPUS'
      Size = 1
    end
    object sdsListHSzIgAPAI_NAGYAPA_IZMOLTSAG: TWideStringField
      FieldName = 'APAI_NAGYAPA_IZMOLTSAG'
      Size = 1
    end
    object sdsListHSzIgAPAI_NAGYAPA_LABSZERKEZET: TWideStringField
      FieldName = 'APAI_NAGYAPA_LABSZERKEZET'
      Size = 1
    end
    object sdsListHSzIgAPAI_NAGYAPA_ERTDAT: TDateTimeField
      FieldName = 'APAI_NAGYAPA_ERTDAT'
    end
    object sdsListHSzIgAPAI_NAGYAPA_APJA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYAPA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListHSzIgAPAI_NAGYAPA_APJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_ENAR'
      Size = 10
    end
    object sdsListHSzIgAPAI_NAGYAPA_APJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_FULSZAM'
    end
    object sdsListHSzIgAPAI_NAGYAPA_APJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_APJA_NEV'
      Size = 40
    end
    object sdsListHSzIgAPAI_NAGYAPA_ANYJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_ENAR'
      Size = 10
    end
    object sdsListHSzIgAPAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsListHSzIgAPAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_FULSZAM'
    end
    object sdsListHSzIgAPAI_NAGYAPA_ANYJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYAPA_ANYJA_NEV'
      Size = 40
    end
    object sdsListHSzIgAPAI_NAGYANYA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_NEV'
      Size = 40
    end
    object sdsListHSzIgAPAI_NAGYANYA_SZULDAT: TDateTimeField
      FieldName = 'APAI_NAGYANYA_SZULDAT'
    end
    object sdsListHSzIgAPAI_NAGYANYA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_ENAR'
      Size = 10
    end
    object sdsListHSzIgAPAI_NAGYANYA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ELLSZAM'
      Size = 11
    end
    object sdsListHSzIgAPAI_NAGYANYA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_FULSZAM'
    end
    object sdsListHSzIgAPAI_NAGYANYA_SV: TIntegerField
      FieldName = 'APAI_NAGYANYA_SV'
    end
    object sdsListHSzIgAPAI_NAGYANYA_KMI: TBCDField
      FieldName = 'APAI_NAGYANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgAPAI_NAGYANYA_APJA_KPLSZ: TBCDField
      FieldName = 'APAI_NAGYANYA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListHSzIgAPAI_NAGYANYA_APJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_NEV'
      Size = 40
    end
    object sdsListHSzIgAPAI_NAGYANYA_APJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_ENAR'
      Size = 10
    end
    object sdsListHSzIgAPAI_NAGYANYA_APJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_APJA_FULSZAM'
    end
    object sdsListHSzIgAPAI_NAGYANYA_ANYJA_ENAR: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_ENAR'
      Size = 10
    end
    object sdsListHSzIgAPAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsListHSzIgAPAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_FULSZAM'
    end
    object sdsListHSzIgAPAI_NAGYANYA_ANYJA_NEV: TWideStringField
      FieldName = 'APAI_NAGYANYA_ANYJA_NEV'
      Size = 40
    end
    object sdsListHSzIgANYAI_NAGYAPA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListHSzIgANYAI_NAGYAPA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ENAR'
      Size = 10
    end
    object sdsListHSzIgANYAI_NAGYAPA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_FULSZAM'
    end
    object sdsListHSzIgANYAI_NAGYAPA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_NEV'
      Size = 40
    end
    object sdsListHSzIgANYAI_NAGYAPA_SZULDAT: TDateTimeField
      FieldName = 'ANYAI_NAGYAPA_SZULDAT'
    end
    object sdsListHSzIgANYAI_NAGYAPA_FAJTAKOD: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_FAJTAKOD'
    end
    object sdsListHSzIgANYAI_NAGYAPA_FAJTANEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_FAJTANEV'
      Size = 40
    end
    object sdsListHSzIgANYAI_NAGYAPA_FAJTA_SZAZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgANYAI_NAGYAPA_SV: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_SV'
    end
    object sdsListHSzIgANYAI_NAGYAPA_ETGY: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_ETGY'
    end
    object sdsListHSzIgANYAI_NAGYAPA_STV_TGY: TIntegerField
      FieldName = 'ANYAI_NAGYAPA_STV_TGY'
    end
    object sdsListHSzIgANYAI_NAGYAPA_TIPUS: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_TIPUS'
      Size = 1
    end
    object sdsListHSzIgANYAI_NAGYAPA_IZMOLTSG: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_IZMOLTS'#193'G'
      Size = 1
    end
    object sdsListHSzIgANYAI_NAGYAPA_LABSZERKEZET: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_LABSZERKEZET'
      Size = 1
    end
    object sdsListHSzIgANYAI_NAGYAPA_ERT_DAT: TDateTimeField
      FieldName = 'ANYAI_NAGYAPA_ERT_DAT'
    end
    object sdsListHSzIgANYAI_NAGYAPA_APJA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYAPA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListHSzIgANYAI_NAGYAPA_APJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_ENAR'
      Size = 10
    end
    object sdsListHSzIgANYAI_NAGYAPA_APJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_NEV'
      Size = 40
    end
    object sdsListHSzIgANYAI_NAGYAPA_APJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_APJA_FULSZAM'
    end
    object sdsListHSzIgANYAI_NAGYAPA_ANYJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_ENAR'
      Size = 10
    end
    object sdsListHSzIgANYAI_NAGYAPA_ANYJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_NEV'
      Size = 40
    end
    object sdsListHSzIgANYAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsListHSzIgANYAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYAPA_ANYJA_FULSZAM'
    end
    object sdsListHSzIgANYAI_NAGYANYA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_NEV'
      Size = 40
    end
    object sdsListHSzIgANYAI_NAGYANYA_SZULDAT: TDateTimeField
      FieldName = 'ANYAI_NAGYANYA_SZULDAT'
    end
    object sdsListHSzIgANYAI_NAGYANYA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ENAR'
      Size = 10
    end
    object sdsListHSzIgANYAI_NAGYANYA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ELLSZAM'
      Size = 11
    end
    object sdsListHSzIgANYAI_NAGYANYA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_FULSZAM'
    end
    object sdsListHSzIgANYAI_NAGYANYA_SV: TIntegerField
      FieldName = 'ANYAI_NAGYANYA_SV'
    end
    object sdsListHSzIgANYAI_NAGYANYA_KMI: TBCDField
      FieldName = 'ANYAI_NAGYANYA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgANYAI_NAGYANYA_APJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_ENAR'
      Size = 10
    end
    object sdsListHSzIgANYAI_NAGYANYA_APJA_KPLSZ: TBCDField
      FieldName = 'ANYAI_NAGYANYA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListHSzIgANYAI_NAGYANYA_APJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_FULSZAM'
    end
    object sdsListHSzIgANYAI_NAGYANYA_APJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_APJA_NEV'
      Size = 40
    end
    object sdsListHSzIgANYAI_NAGYANYA_ANYJA_ENAR: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_ENAR'
      Size = 10
    end
    object sdsListHSzIgANYAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsListHSzIgANYAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_FULSZAM'
    end
    object sdsListHSzIgANYAI_NAGYANYA_ANYJA_NEV: TWideStringField
      FieldName = 'ANYAI_NAGYANYA_ANYJA_NEV'
      Size = 40
    end
    object sdsListHSzIgTERM_IDEJE: TDateTimeField
      FieldName = 'TERM_IDEJE'
    end
    object sdsListHSzIgTERM_BIKA_KPLSZ: TBCDField
      FieldName = 'TERM_BIKA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListHSzIgTERM_BIKA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_ENAR'
      Size = 10
    end
    object sdsListHSzIgTERM_BIKA_NEV: TWideStringField
      FieldName = 'TERM_BIKA_NEV'
      Size = 40
    end
    object sdsListHSzIgTERM_BIKA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_SZULDAT'
    end
    object sdsListHSzIgTERM_BIKA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_FULSZAM'
    end
    object sdsListHSzIgTERM_BIKA_FAJTAKOD: TIntegerField
      FieldName = 'TERM_BIKA_FAJTAKOD'
    end
    object sdsListHSzIgTERM_BIKA_FAJTANEV: TWideStringField
      FieldName = 'TERM_BIKA_FAJTANEV'
      Size = 40
    end
    object sdsListHSzIgTERM_BIKA_FAJTA_SZAZ: TBCDField
      FieldName = 'TERM_BIKA_FAJTA_SZAZ'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgTERM_BIKA_SV: TIntegerField
      FieldName = 'TERM_BIKA_SV'
    end
    object sdsListHSzIgTERM_BIKA_ETGY: TIntegerField
      FieldName = 'TERM_BIKA_ETGY'
    end
    object sdsListHSzIgTERM_BIKA_STV_TGY: TIntegerField
      FieldName = 'TERM_BIKA_STV_TGY'
    end
    object sdsListHSzIgTERM_BIKA_TIPUS: TWideStringField
      FieldName = 'TERM_BIKA_TIPUS'
      Size = 1
    end
    object sdsListHSzIgTERM_BIKA_IZMOLTSAG: TWideStringField
      FieldName = 'TERM_BIKA_IZMOLTSAG'
      Size = 1
    end
    object sdsListHSzIgTERM_BIKA_LABSZERKEZET: TWideStringField
      FieldName = 'TERM_BIKA_LABSZERKEZET'
      Size = 1
    end
    object sdsListHSzIgTERM_BIKA_ERT_DAT: TDateTimeField
      FieldName = 'TERM_BIKA_ERT_DAT'
    end
    object sdsListHSzIgTERM_BIKA_APJA_KPLSZ: TBCDField
      FieldName = 'TERM_BIKA_APJA_KPLSZ'
      Precision = 10
      Size = 0
    end
    object sdsListHSzIgTERM_BIKA_APJA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_APJA_ENAR'
      Size = 10
    end
    object sdsListHSzIgTERM_BIKA_APJA_NEVE: TWideStringField
      FieldName = 'TERM_BIKA_APJA_NEVE'
      Size = 40
    end
    object sdsListHSzIgTERM_BIKA_APJA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_APJA_SZULDAT'
    end
    object sdsListHSzIgTERM_BIKA_APJA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_APJA_FULSZAM'
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_KMI: TBCDField
      FieldName = 'TERM_BIKA_ANYJA_KMI'
      Precision = 6
      Size = 2
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_NEV: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_NEV'
      Size = 40
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_ENAR: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_ENAR'
      Size = 10
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_FULSZAM: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_FULSZAM'
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_SV: TIntegerField
      FieldName = 'TERM_BIKA_ANYJA_SV'
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_ELLSZAM: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_ELLSZAM'
      Size = 11
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_SZULDAT: TDateTimeField
      FieldName = 'TERM_BIKA_ANYJA_SZULDAT'
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_TIPUS: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_TIPUS'
      Size = 1
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_IZMOLTSAG: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_IZMOLTSAG'
      Size = 1
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_LABSZERKEZET: TWideStringField
      FieldName = 'TERM_BIKA_ANYJA_LABSZERKEZET'
      Size = 1
    end
    object sdsListHSzIgTERM_BIKA_ANYJA_ERT_DAT: TDateTimeField
      FieldName = 'TERM_BIKA_ANYJA_ERT_DAT'
    end
    object sdsListHSzIgTENYESZTO_NEV: TWideStringField
      FieldName = 'TENYESZTO_NEV'
      Size = 39
    end
    object sdsListHSzIgTENYESZTO_CIM: TWideStringField
      FieldName = 'TENYESZTO_CIM'
      Size = 39
    end
    object sdsListHSzIgTULAJ_NEV: TWideStringField
      FieldName = 'TULAJ_NEV'
      Size = 39
    end
    object sdsListHSzIgTULAJ_CIM: TWideStringField
      FieldName = 'TULAJ_CIM'
      Size = 39
    end
    object sdsListHSzIgTENYESZTO_KOD: TWideStringField
      FieldName = 'TENYESZTO_KOD'
      Size = 7
    end
    object sdsListHSzIgTULAJ_KOD: TWideStringField
      FieldName = 'TULAJ_KOD'
      Size = 7
    end
    object sdsListHSzIgANYA_NET_PONT: TIntegerField
      FieldName = 'ANYA_NET_PONT'
    end
    object sdsListHSzIgNET_PONT: TIntegerField
      FieldName = 'NET_PONT'
    end
    object sdsListHSzIgIKTATOSZAM: TWideStringField
      FieldName = 'IKTATOSZAM'
    end
    object sdsListHSzIgE_TOGY: TWideStringField
      FieldName = 'E_TOGY'
      Size = 1
    end
    object sdsListHSzIgANYA_TOGY: TWideStringField
      FieldName = 'ANYA_TOGY'
      Size = 1
    end
    object sdsListHSzIgT_ANYA_TOGY: TWideStringField
      FieldName = 'T_ANYA_TOGY'
      Size = 1
    end
  end
  object frxRepListak: TfrxReport
    Version = '3.19'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Alap'#233'rtelmezett'
    ReportOptions.CreateDate = 40240.498815532400000000
    ReportOptions.LastChange = 42268.862557800920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo1OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  Memo1.Text := Copy(<frxDBDstHivSzarmIgList."ENAR">,6,4);'
      'end;'
      ''
      'procedure Memo37OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  Memo37.Text := Copy(<frxDBDstHivSzarmIgList."ENAR">,10,1);'
      'end;'
      ''
      'procedure Memo39OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  Memo39.Text := Copy(<frxDBDstHivSzarmIgList."ENAR">,1,5);'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 144
    Top = 24
    Datasets = <
      item
        DataSet = frxDBDstHivSzarmIgList
        DataSetName = 'frxDBDstHivSzarmIgList'
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1080.945580000000000000
        object Memo16: TfrxMemoView
          Left = 5.669252280000000000
          Top = 45.354360000000000000
          Width = 332.598247010000000000
          Height = 11.338582680000000000
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
          Top = 45.354399060000000000
          Width = 396.850257010000000000
          Height = 11.338582680000000000
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
        Top = 136.063080000000000000
        Width = 1080.945580000000000000
        DataSet = frxDBDstHivSzarmIgList
        DataSetName = 'frxDBDstHivSzarmIgList'
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
          Font.Style = []
          Memo.UTF8 = (
            'E G Y E D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Left = 309.921460000000000000
          Top = 139.842610000000000000
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
          Top = 37.795300000000000000
          Width = 45.354323390000000000
          Height = 11.338590000000000000
          DataField = 'SZULDAT'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."SZULDAT"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Azonos'#258#173't'#258#322':')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 60.472480000000000000
          Top = 75.590600000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 94.488250000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fajta :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Top = 109.606370000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ivar :')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 7.559060000000000000
          Top = 124.724490000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 41.574830000000000000
          Top = 109.606370000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DataField = 'IVAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."IVAR"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 60.472480000000000000
          Top = 124.724490000000000000
          Width = 86.929190000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #258#8240'letnapi t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 177.637910000000000000
          Top = 124.724490000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'STV alatti t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Top = 173.858380000000000000
          Width = 309.921460000000000000
          Height = 22.677180000000000000
        end
        object Memo12: TfrxMemoView
          Left = 11.338590000000000000
          Top = 177.637910000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T E R M '#258#8240' K  E N Y '#258#356' T '#258#8240' S')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape6: TfrxShapeView
          Top = 196.535560000000000000
          Width = 309.921460000000000000
          Height = 222.992270000000000000
        end
        object Shape7: TfrxShapeView
          Top = 419.527830000000000000
          Width = 309.921460000000000000
          Height = 83.149660000000000000
        end
        object Shape8: TfrxShapeView
          Top = 502.677490000000000000
          Width = 309.921460000000000000
          Height = 94.488250000000000000
        end
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Top = 430.866420000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T E N Y '#258#8240' S Z T '#313#144)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 37.795300000000000000
          Top = 457.323130000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DataField = 'TENYESZTO_KOD'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TENYESZTO_KOD"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 37.795300000000000000
          Top = 472.441250000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DataField = 'TENYESZTO_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TENYESZTO_NEV"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 37.795300000000000000
          Top = 487.559370000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DataField = 'TENYESZTO_CIM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TENYESZTO_CIM"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Top = 517.795610000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T U L A J D O N O S')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 37.795300000000000000
          Top = 574.488560000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          DataField = 'TULAJ_CIM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TULAJ_CIM"]')
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
          Top = 3.779529999999990000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 869.291900000000000000
          Top = 49.133858270000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 665.197280000000000000
          Top = 86.929190000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Apja')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 763.465060000000000000
          Top = 132.283550000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 665.197280000000000000
          Top = 109.606370000000000000
          Width = 22.677143390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            #258#8240'letnapi t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 665.197280000000000000
          Top = 98.267780000000000000
          Width = 34.015733390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 869.291900000000000000
          Top = 98.267780000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 665.197280000000000000
          Top = 120.944960000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 869.291900000000000000
          Top = 132.283550000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 325.039580000000000000
          Top = 143.622140000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #226#8482#8218'  A P A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 608.503937010000000000
          Top = 170.078850000000000000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'APA_SZUL_IDO'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_SZUL_IDO"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 321.260050000000000000
          Top = 170.078850000000000000
          Width = 22.677143390000000000
          Height = 11.338582677165400000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 321.260050000000000000
          Top = 181.417440000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 321.260050000000000000
          Top = 192.756030000000000000
          Width = 34.015733390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 427.086890000000000000
          Top = 192.755998270000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 321.260050000000000000
          Top = 204.094620000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fajta:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 321.260050000000000000
          Top = 215.433210000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 404.409197400000000000
          Top = 215.433210000000000000
          Width = 86.929190000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #258#8240'letnapi t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Shape16: TfrxShapeView
          Left = 309.921460000000000000
          Top = 234.330860000000000000
          Width = 347.716760000000000000
          Height = 22.677165350000000000
        end
        object Memo56: TfrxMemoView
          Left = 325.039580000000000000
          Top = 238.110390000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #226#8482#8364'  A N Y A')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 608.504330000000000000
          Top = 264.567100000000000000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_SZULDAT'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYA_SZULDAT"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 321.260050000000000000
          Top = 264.567100000000000000
          Width = 22.677143390000000000
          Height = 11.338582677165400000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 321.260050000000000000
          Top = 275.905690000000000000
          Width = 41.574793390000000000
          Height = 11.338582677165400000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Azonos'#258#173't'#258#322)
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 321.260050000000000000
          Top = 287.244280000000000000
          Width = 41.574793390000000000
          Height = 11.338582677165400000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 321.260050000000000000
          Top = 298.582870000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fajta:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 321.260050000000000000
          Top = 309.921460000000000000
          Width = 26.456673390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 321.259537400000000000
          Top = 321.260050000000000000
          Width = 98.267780000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kombin'#258#711'lt min'#313#8216's'#258#173't'#313#8216' index:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 430.866420000000000000
          Top = 287.244280000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 525.354670000000000000
          Top = 287.244280000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Shape17: TfrxShapeView
          Left = 309.921460000000000000
          Top = 340.157700000000000000
          Width = 347.716760000000000000
          Height = 257.008040000000000000
        end
        object Memo28: TfrxMemoView
          Left = 325.039580000000000000
          Top = 381.732530000000000000
          Width = 64.251973390000000000
          Height = 11.338582680000000000
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ki'#258#711'll'#258#173't'#258#711's d'#258#711'tuma:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 525.354670000000000000
          Top = 381.732530000000000000
          Width = 71.811033390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Hiteles'#258#173't'#258#169's d'#258#711'tuma:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 321.260050000000000000
          Top = 347.716760000000000000
          Width = 18.897613390000000000
          Height = 11.338582677165400000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No.:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 445.984540000000000000
          Top = 347.716760000000000000
          Width = 128.503983390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#711'rmaz'#258#711'si vizsg'#258#711'lat iktat'#258#322'sz'#258#711'ma:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 370.393940000000000000
          Top = 419.527830000000000000
          Width = 45.354323390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ki'#258#711'll'#258#173'totta:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 540.472790000000000000
          Top = 419.527830000000000000
          Width = 49.133853390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Hiteles'#258#173'tette:')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 379.842519685039000000
          Top = 476.220780000000000000
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
          Top = 476.220780000000000000
          Width = 18.897613390000000000
          Height = 11.338582677165400000
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
          Font.Style = []
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
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Nemzeti '#258#8240'lelmiszerl'#258#711'nc-biztons'#258#711'gi '
            'Hivatal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 929.763779530000000000
          Top = 181.417440000000000000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_SZUL_DAT'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_SZUL_DAT"]')
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
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 759.685530000000000000
          Top = 204.094620000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 869.291900000000000000
          Top = 204.094620000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'Apja')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 759.685530000000000000
          Top = 272.126160000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 869.291900000000000000
          Top = 238.110390000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 869.291900000000000000
          Top = 272.126160000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 929.764380000000000000
          Top = 325.039580000000000000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_SZULDAT'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_SZULDAT"]')
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
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 869.291900000000000000
          Top = 347.716728270000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'Apja')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 763.465060000000000000
          Top = 427.086614170000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 665.197280000000000000
          Top = 404.409710000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 665.197280000000000000
          Top = 393.071120000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 869.291900000000000000
          Top = 393.071120000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'Anyja')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 869.291900000000000000
          Top = 427.086890000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 929.763779530000000000
          Top = 480.000310000000000000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_SZUL_DAT'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_SZUL_DAT"]')
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
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 759.685530000000000000
          Top = 502.677490000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ell. sz'#258#711'm:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 869.291900000000000000
          Top = 502.677490000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'Apja')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 759.685530000000000000
          Top = 570.709030000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 869.291900000000000000
          Top = 536.693260000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'Anyja')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 665.197280000000000000
          Top = 582.047620000000000000
          Width = 41.574793390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 139.842610000000000000
          Top = 68.031540000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          OnAfterData = 'Memo1OnAfterData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo39: TfrxMemoView
          Left = 98.267780000000000000
          Top = 68.031540000000000000
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
          Left = 181.417440000000000000
          Top = 68.031540000000000000
          Width = 30.236240000000000000
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
          Left = 41.574759210000000000
          Top = 94.488188980000000000
          Width = 117.165400710000000000
          Height = 11.338582680000000000
          DataField = 'FAJTANEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."FAJTANEV"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 359.055350000000000000
          Top = 170.078850000000000000
          Width = 132.283520710000000000
          Height = 11.338582680000000000
          DataField = 'APA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_NEV"]')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 359.055350000000000000
          Top = 192.756030000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          DataField = 'APA_KPLSZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_KPLSZ"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 461.102660000000000000
          Top = 192.756030000000000000
          Width = 49.133853390000000000
          Height = 11.338582680000000000
          DataField = 'APA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_ENAR"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 351.496290000000000000
          Top = 204.094620000000000000
          Width = 109.606294330000000000
          Height = 11.338582680000000000
          DataField = 'APA_FAJTANEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_FAJTANEV"]')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Left = 343.937230000000000000
          Top = 264.567100000000000000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'ANYANEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYANEV"]')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          Left = 362.834880000000000000
          Top = 287.244280000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'ANYAENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAENAR"]')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Left = 566.929500000000000000
          Top = 287.244280000000000000
          Width = 86.929124090000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYA_FULSZAM"]')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 351.496290000000000000
          Top = 298.582870000000000000
          Width = 109.606370000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_FAJTANEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYA_FAJTANEV"]')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 351.496290000000000000
          Top = 309.921460000000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_SV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYA_SV"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 702.992580000000000000
          Top = 49.133890000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_KPLSZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_KPLSZ"]')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 910.866730000000000000
          Top = 49.133890000000000000
          Width = 64.252010000000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_FULSZAM"]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 687.874460000000000000
          Top = 26.456710000000000000
          Width = 151.181200000000000000
          Height = 11.338582680000000000
          DataField = 'APA_NAGYAPA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_NAGYAPA_NEV"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 702.992580000000000000
          Top = 98.267780000000000000
          Width = 45.354323390000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_APJA_KPLSZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_APJA_KPLSZ"]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 691.653990000000000000
          Top = 109.606370000000000000
          Width = 83.149630710000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_APJA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_APJA_NEV"]')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 910.866730000000000000
          Top = 98.267780000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_APJA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_APJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 699.213050000000000000
          Top = 141.732283460000000000
          Width = 71.811028500000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_ANYJA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_ANYJA_NEV"]')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 351.496290000000000000
          Top = 215.433210000000000000
          Width = 37.795268270000000000
          Height = 11.338582680000000000
          DataField = 'APA_SV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_SV"]')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 472.441250000000000000
          Top = 287.244280000000000000
          Width = 49.133890000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_ELL_SZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYA_ELL_SZAM"]')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Left = 691.653990000000000000
          Top = 60.472480000000000000
          Width = 83.149630710000000000
          Height = 11.338582680000000000
          DataField = 'APA_NAGYAPA_FAJTANEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_NAGYAPA_FAJTANEV"]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 695.433520000000000000
          Top = 71.811070000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_SV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_SV"]')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 820.158010000000000000
          Top = 71.811070000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_TGY'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_TGY"]')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 805.039890000000000000
          Top = 132.283550000000000000
          Width = 60.472438500000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_ANYJA_ELLSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_ANYJA_ELLSZAM"]')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 910.866730000000000000
          Top = 132.283550000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_ANYJA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_ANYJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          Left = 687.874460000000000000
          Top = 181.417440000000000000
          Width = 83.149606300000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_NEV"]')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 699.213050000000000000
          Top = 204.094620000000000000
          Width = 49.133853390000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_ENAR"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 805.039890000000000000
          Top = 204.094620000000000000
          Width = 56.692920710000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_ELL_SZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_ELL_SZAM"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 910.866730000000000000
          Top = 204.094620000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANY_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANY_FULSZAM"]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 861.732840000000000000
          Top = 215.433210000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_KMI'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_KMI"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 702.992580000000000000
          Top = 238.110390000000000000
          Width = 30.236203390000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_APJA_KPLSZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_APJA_KPLSZ"]')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 910.866730000000000000
          Top = 238.110390000000000000
          Width = 64.251968500000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_APJA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_APJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 691.653990000000000000
          Top = 249.448980000000000000
          Width = 98.267726300000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYANYA_APJA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_APJA_NEV"]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Left = 699.213050000000000000
          Top = 272.126160000000000000
          Width = 45.354323390000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_ANYJA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_ANYJA_ENAR"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 805.039890000000000000
          Top = 272.126160000000000000
          Width = 56.692920710000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_ANYJA_ELL_SZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_ANYJA_ELL_SZAM"]')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 910.866730000000000000
          Top = 272.126160000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_ANYJA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_ANYJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          Left = 699.213050000000000000
          Top = 283.464750000000000000
          Width = 90.708666300000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_ANYJA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_ANYJA_NEV"]')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 687.874460000000000000
          Top = 325.039580000000000000
          Width = 83.149606300000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_NEV"]')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 702.992580000000000000
          Top = 347.716760000000000000
          Width = 34.015733390000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_KPLSZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_KPLSZ"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          Left = 910.866730000000000000
          Top = 347.716760000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_FULSZAM"]')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 695.433520000000000000
          Top = 359.055350000000000000
          Width = 79.370130000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_FAJTANEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_FAJTANEV"]')
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
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 706.772110000000000000
          Top = 393.071120000000000000
          Width = 41.574776300000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_APJA_KPLSZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_APJA_KPLSZ"]')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 910.866730000000000000
          Top = 393.071120000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_APJA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_APJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Left = 706.772110000000000000
          Top = 404.409710000000000000
          Width = 83.149606300000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_APJA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_APJA_NEV"]')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          Left = 808.819420000000000000
          Top = 427.086614170000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_ANYJA_ELL_SZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_ANYJA_ELL_SZAM"]')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 910.866730000000000000
          Top = 427.086890000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_ANYJA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_ANYJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 699.213050000000000000
          Top = 440.314960630000000000
          Width = 79.370083620000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_ANYJA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_ANYJA_NEV"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 687.874460000000000000
          Top = 480.000310000000000000
          Width = 83.149606300000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_NEV"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 699.213050000000000000
          Top = 502.677490000000000000
          Width = 49.133853390000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_ENAR"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 805.039890000000000000
          Top = 502.677490000000000000
          Width = 56.692920710000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_ELL_SZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_ELL_SZAM"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 910.866730000000000000
          Top = 502.677490000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_FULSZAM"]')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          Left = 865.512370000000000000
          Top = 514.016080000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_KMI'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_KMI"]')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 706.772110000000000000
          Top = 536.693260000000000000
          Width = 26.456673390000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_APJA_KPLSZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_APJA_KPLSZ"]')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 910.866730000000000000
          Top = 536.693260000000000000
          Width = 64.251968500000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_APJA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_APJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 691.653990000000000000
          Top = 548.031850000000000000
          Width = 98.267726300000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_APJA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_APJA_NEV"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 805.039890000000000000
          Top = 570.709030000000000000
          Width = 56.692918270000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYANYA_ANYJA_ELL_SZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_ANYJA_ELL_SZAM"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 706.772110000000000000
          Top = 582.047620000000000000
          Width = 83.149606300000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_ANYJA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_ANYJA_NEV"]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 37.795300000000000000
          Top = 124.724490000000000000
          Width = 18.897650000000000000
          Height = 11.338582680000000000
          DataField = 'SV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."SV"]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          Left = 151.181200000000000000
          Top = 124.724490000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'ELETNAPI_TGY'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ELETNAPI_TGY"]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          Left = 200.315090000000000000
          Top = 37.795300000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 929.763779530000000000
          Top = 26.456710000000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          DataField = 'APA_NAGYAPA_SZULDAT'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_NAGYAPA_SZULDAT"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          Left = 548.031850000000000000
          Top = 170.078850000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          Left = 548.031850000000000000
          Top = 264.567100000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          Left = 869.291900000000000000
          Top = 480.000310000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          Left = 869.291900000000000000
          Top = 325.039580000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 869.291900000000000000
          Top = 181.417440000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          Left = 869.291900000000000000
          Top = 26.456710000000000000
          Width = 60.472440940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          Left = 272.126160000000000000
          Top = 124.724490000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          DataField = 'STV_TGY'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."STV_TGY"]')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          Left = 495.118430000000000000
          Top = 215.433210000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'APA_ETGY'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_ETGY"]')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          Left = 423.307360000000000000
          Top = 321.260050000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          DataField = 'ANYA_KMI'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYA_KMI"]')
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
          Font.Style = []
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
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          Left = 699.213050000000000000
          Top = 570.709030000000000000
          Width = 45.354323390000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_ANYJA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_ANYJA_ENAR"]')
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          Left = 869.291900000000000000
          Top = 570.709030000000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          Left = 910.866730000000000000
          Top = 570.709030000000000000
          Width = 64.251973390000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_ANYJA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_ANYJA_FULSZAM"]')
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
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          Left = 665.197280000000000000
          Top = 132.283550000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          Left = 699.213050000000000000
          Top = 132.283550000000000000
          Width = 60.472467800000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_ANYJA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_ANYJA_ENAR"]')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          Left = 11.338590000000000000
          Top = 457.323130000000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'K'#258#322'd:')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          Left = 11.338590000000000000
          Top = 472.441250000000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          Left = 11.338590000000000000
          Top = 487.559370000000000000
          Width = 22.677167800000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C'#258#173'm:')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          Left = 11.338590000000000000
          Top = 574.488188976378000000
          Width = 22.677167800000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C'#258#173'm:')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          Left = 11.338590000000000000
          Top = 559.370440000000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          Left = 11.338590000000000000
          Top = 544.251968500000000000
          Width = 22.677165350000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'K'#258#322'd:')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          Left = 37.795300000000000000
          Top = 544.252320000000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          DataField = 'TULAJ_KOD'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TULAJ_KOD"]')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          Left = 7.559060000000000000
          Top = 204.094620000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ideje:')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          Left = 41.574830000000000000
          Top = 204.094620000000000000
          Width = 45.354330710000000000
          Height = 11.338582680000000000
          DataField = 'TERMEKENYITES_IDEJE'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITES_IDEJE"]')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          Left = 7.559060000000000000
          Top = 222.992270000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bika:')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          Left = 7.559060000000000000
          Top = 241.889920000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          Left = 45.354360000000000000
          Top = 241.889920000000000000
          Width = 49.133890000000000000
          Height = 11.338582680000000000
          DataField = 'TERMEKENYITO_BIKA_KPLSZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_KPLSZ"]')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          Left = 102.047310000000000000
          Top = 241.889920000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          Left = 128.504020000000000000
          Top = 241.889920000000000000
          Width = 64.251968500000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_NEV"]')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          Left = 196.535560000000000000
          Top = 241.889920000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          Left = 230.551330000000000000
          Top = 241.889920000000000000
          Width = 64.251968500000000000
          Height = 11.338582680000000000
          DataField = 'TERMEKENYITO_BIKA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_ENAR"]')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          Left = 7.559060000000000000
          Top = 257.008040000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          Left = 71.811070000000000000
          Top = 257.008040000000000000
          Width = 45.354330710000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_SZUL_DAT'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_SZUL_DAT"]')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          Left = 120.944960000000000000
          Top = 257.008040000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo213: TfrxMemoView
          Left = 241.889920000000000000
          Top = 257.008040000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fajta:')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          Left = 272.126160000000000000
          Top = 257.008040000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_FAJTAKOD'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_FAJTAKOD"]')
          ParentFont = False
        end
        object Memo215: TfrxMemoView
          Left = 7.559060000000000000
          Top = 302.362400000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Apja:')
          ParentFont = False
        end
        object Memo216: TfrxMemoView
          Left = 7.559060000000000000
          Top = 317.480520000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo217: TfrxMemoView
          Left = 102.047310000000000000
          Top = 317.480520000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo218: TfrxMemoView
          Left = 196.535560000000000000
          Top = 317.480520000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          Left = 45.354360000000000000
          Top = 317.480520000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_APJA_KPLSZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_APJA_KPLSZ"]')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          Left = 128.504020000000000000
          Top = 317.480520000000000000
          Width = 64.251956300000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_ANYJA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_ANYJA_NEV"]')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          Left = 230.551330000000000000
          Top = 317.480520000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_APJA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_APJA_ENAR"]')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          Left = 7.559060000000000000
          Top = 332.598640000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          Left = 120.944960000000000000
          Top = 332.598640000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          Left = 71.811070000000000000
          Top = 332.598640000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_APJA_SZUL_DAT'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERM_BIKA_APJA_SZUL_DAT"]')
          ParentFont = False
        end
        object Memo225: TfrxMemoView
          Left = 162.519790000000000000
          Top = 332.598640000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_APJA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_APJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo226: TfrxMemoView
          Left = 7.559060000000000000
          Top = 359.055350000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Anyja:')
          ParentFont = False
        end
        object Memo227: TfrxMemoView
          Left = 7.559060000000000000
          Top = 374.173470000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo228: TfrxMemoView
          Left = 102.047310000000000000
          Top = 374.173470000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo229: TfrxMemoView
          Left = 196.535560000000000000
          Top = 374.173470000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo230: TfrxMemoView
          Left = 7.559060000000000000
          Top = 389.291590000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Sz'#258#317'let'#258#169'si ideje:')
          ParentFont = False
        end
        object Memo231: TfrxMemoView
          Left = 120.944960000000000000
          Top = 389.291590000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo232: TfrxMemoView
          Left = 124.724490000000000000
          Top = 374.173470000000000000
          Width = 64.251956300000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_ANYJA_NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_ANYJA_NEV"]')
          ParentFont = False
        end
        object Memo233: TfrxMemoView
          Left = 7.559060000000000000
          Top = 272.126160000000000000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SV %:')
          ParentFont = False
        end
        object Memo234: TfrxMemoView
          Left = 41.574830000000000000
          Top = 272.126160000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_SV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_SV"]')
          ParentFont = False
        end
        object Memo235: TfrxMemoView
          Left = 79.370130000000000000
          Top = 272.126160000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #258#8240'letnapi tgy.:')
          ParentFont = False
        end
        object Memo236: TfrxMemoView
          Left = 188.976500000000000000
          Top = 272.126160000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'STV alatti tgy.:')
          ParentFont = False
        end
        object Memo237: TfrxMemoView
          Left = 136.063080000000000000
          Top = 272.126160000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_ELETNAPI_TGY'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_ELETNAPI_TGY"]')
          ParentFont = False
        end
        object Memo238: TfrxMemoView
          Left = 249.448980000000000000
          Top = 272.126160000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DataField = 'TERMEKENYITO_BIKA_STV_TGY'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERMEKENYITO_BIKA_STV_TGY"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 597.165740000000000000
          Top = 381.732530000000000000
          Width = 52.913390710000000000
          Height = 11.338590000000000000
          DataField = 'HITDAT'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."HITDAT"]')
          ParentFont = False
        end
        object Memo242: TfrxMemoView
          Left = 340.157700000000000000
          Top = 347.716760000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."SOR"] / [frxDBDstHivSzarmIgList."PER"]')
          ParentFont = False
        end
        object Memo243: TfrxMemoView
          Left = 162.519790000000000000
          Top = 389.291590000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          DataField = 'TERM_BIKA_ANYJA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TERM_BIKA_ANYJA_FULSZAM"]')
          ParentFont = False
        end
        object Memo239: TfrxMemoView
          Left = 578.268090000000000000
          Top = 347.716760000000000000
          Width = 71.811040710000000000
          Height = 11.338590000000000000
          DataField = 'IKTATOSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."IKTATOSZAM"]')
          ParentFont = False
        end
        object Memo240: TfrxMemoView
          Left = 37.795300000000000000
          Top = 559.370440000000000000
          Width = 94.488188980000000000
          Height = 11.338582680000000000
          DataField = 'TULAJ_KOD'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TULAJ_KOD"]')
          ParentFont = False
        end
        object Memo241: TfrxMemoView
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 26.456670940000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#258#169'v:')
          ParentFont = False
        end
        object Memo244: TfrxMemoView
          Left = 37.795300000000000000
          Top = 37.795300000000000000
          Width = 124.724490000000000000
          Height = 11.338582680000000000
          DataField = 'NEV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."NEV"]')
          ParentFont = False
        end
        object Memo246: TfrxMemoView
          Left = 98.267780000000000000
          Top = 52.913420000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          DataField = 'KPLSZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."KPLSZ"]')
          ParentFont = False
        end
        object Memo245: TfrxMemoView
          Left = 60.472480000000000000
          Top = 52.913420000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KPLSZ:')
          ParentFont = False
        end
        object Memo247: TfrxMemoView
          Left = 162.519790000000000000
          Top = 94.488250000000000000
          Width = 30.236203390000000000
          Height = 11.338590000000000000
          DataField = 'FAJTA_SZAZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."FAJTA_SZAZ"]')
          ParentFont = False
        end
        object Memo248: TfrxMemoView
          Left = 192.756030000000000000
          Top = 94.488250000000000000
          Width = 11.338550940000000000
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
          Left = 200.315090000000000000
          Top = 52.913420000000000000
          Width = 34.015770000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo250: TfrxMemoView
          Left = 238.110390000000000000
          Top = 52.913420000000000000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          DataField = 'FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."FULSZAM"]')
          ParentFont = False
        end
        object Memo251: TfrxMemoView
          Left = 177.637910000000000000
          Top = 109.606370000000000000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T'#258#182'rzsk'#258#182'nyvi oszt'#258#711'ly:')
          ParentFont = False
        end
        object Memo252: TfrxMemoView
          Left = 272.126160000000000000
          Top = 109.606370000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DataField = 'TKV'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TKV"]')
          ParentFont = False
        end
        object Memo253: TfrxMemoView
          Left = 529.134200000000000000
          Top = 192.756030000000000000
          Width = 37.795263390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'F'#258#317'lsz'#258#711'm:')
          ParentFont = False
        end
        object Memo254: TfrxMemoView
          Left = 570.709030000000000000
          Top = 192.756030000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          DataField = 'APA_FULSZAM'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_FULSZAM"]')
          ParentFont = False
        end
        object Memo255: TfrxMemoView
          Left = 529.134200000000000000
          Top = 215.433210000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'STV alatti t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Memo256: TfrxMemoView
          Left = 627.401980000000000000
          Top = 215.433210000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DataField = 'APA_STV_TGY'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_STV_TGY"]')
          ParentFont = False
        end
        object Memo257: TfrxMemoView
          Left = 464.882190000000000000
          Top = 204.094620000000000000
          Width = 26.456673390000000000
          Height = 11.338590000000000000
          DataField = 'APA_FAJTA_SZAZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
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
            '[frxDBDstHivSzarmIgList."APA_FAJTA_SZAZ"]')
          ParentFont = False
        end
        object Memo258: TfrxMemoView
          Left = 495.118430000000000000
          Top = 204.094620000000000000
          Width = 11.338565590000000000
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
          Left = 464.882190000000000000
          Top = 298.582870000000000000
          Width = 26.456673390000000000
          Height = 11.338590000000000000
          DataField = 'ANYA_FAJTA_SZAZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
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
            '[frxDBDstHivSzarmIgList."ANYA_FAJTA_SZAZ"]')
          ParentFont = False
        end
        object Memo260: TfrxMemoView
          Left = 495.118430000000000000
          Top = 298.582870000000000000
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
          Left = 755.906000000000000000
          Top = 49.133890000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo262: TfrxMemoView
          Left = 789.921770000000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_ENAR"]')
          ParentFont = False
        end
        object Memo263: TfrxMemoView
          Left = 778.583180000000000000
          Top = 60.472480000000000000
          Width = 26.456673390000000000
          Height = 11.338590000000000000
          DataField = 'APAI_NAGYAPA_FAJTA_SZAZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
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
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_FAJTA_SZAZ"]')
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
          Font.Style = []
          Memo.UTF8 = (
            'STV alatti t'#258#182'meggyarap.:')
          ParentFont = False
        end
        object Memo266: TfrxMemoView
          Left = 948.662030000000000000
          Top = 71.811070000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'APA_NAGYAPA_STV_TGY'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APA_NAGYAPA_STV_TGY"]')
          ParentFont = False
        end
        object Memo267: TfrxMemoView
          Left = 767.244590000000000000
          Top = 98.267780000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo268: TfrxMemoView
          Left = 801.260360000000000000
          Top = 98.267780000000000000
          Width = 49.133853390000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYAPA_APJA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYAPA_APJA_ENAR"]')
          ParentFont = False
        end
        object Memo269: TfrxMemoView
          Left = 755.906000000000000000
          Top = 238.110390000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo270: TfrxMemoView
          Left = 789.921770000000000000
          Top = 238.110390000000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          DataField = 'APAI_NAGYANYA_APJA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."APAI_NAGYANYA_APJA_ENAR"]')
          ParentFont = False
        end
        object Memo271: TfrxMemoView
          Left = 755.906000000000000000
          Top = 347.716760000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo272: TfrxMemoView
          Left = 789.921770000000000000
          Top = 347.716760000000000000
          Width = 71.811033390000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_ENAR"]')
          ParentFont = False
        end
        object Memo273: TfrxMemoView
          Left = 778.583180000000000000
          Top = 359.055350000000000000
          Width = 26.456673390000000000
          Height = 11.338590000000000000
          DataField = 'ANYAI_NAGYAPA_FAJTA_SZAZ'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
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
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_FAJTA_SZAZ"]')
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
          Font.Style = []
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
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_SV"]')
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
          Font.Style = []
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
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_ETGY"]')
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
          Font.Style = []
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
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_STV_TGY"]')
          ParentFont = False
        end
        object Memo281: TfrxMemoView
          Left = 767.244590000000000000
          Top = 393.071120000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo282: TfrxMemoView
          Left = 801.260360000000000000
          Top = 393.071120000000000000
          Width = 49.133853390000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYANYA_APJA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYANYA_APJA_ENAR"]')
          ParentFont = False
        end
        object Memo283: TfrxMemoView
          Left = 699.213050000000000000
          Top = 427.086890000000000000
          Width = 60.472467800000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_ANYJA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_ANYJA_ENAR"]')
          ParentFont = False
        end
        object Memo284: TfrxMemoView
          Left = 755.906000000000000000
          Top = 536.693260000000000000
          Width = 30.236203390000000000
          Height = 11.338582680000000000
          DataSetName = 'frxDBListHSzIg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENAR:')
          ParentFont = False
        end
        object Memo285: TfrxMemoView
          Left = 789.921770000000000000
          Top = 536.693260000000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          DataField = 'ANYAI_NAGYAPA_APJA_ENAR'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ANYAI_NAGYAPA_APJA_ENAR"]')
          ParentFont = False
        end
        object Memo286: TfrxMemoView
          Left = 389.291590000000000000
          Top = 381.732530000000000000
          Width = 71.811040710000000000
          Height = 11.338590000000000000
          DataField = 'KIDAT'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."KIDAT"]')
          ParentFont = False
        end
        object Memo287: TfrxMemoView
          Left = 86.929190000000000000
          Top = 109.606370000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'KMI:')
          ParentFont = False
        end
        object Memo288: TfrxMemoView
          Left = 113.385900000000000000
          Top = 109.606370000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."KMI"]')
          ParentFont = False
        end
        object Memo289: TfrxMemoView
          Left = 7.559060000000000000
          Top = 139.842610000000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'K'#258#317'llemi b'#258#173'r'#258#711'lat.:')
          ParentFont = False
        end
        object Memo290: TfrxMemoView
          Left = 238.110390000000000000
          Top = 139.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          DataField = 'ERTEKELES_DATUMA'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."ERTEKELES_DATUMA"]')
          ParentFont = False
        end
        object Memo291: TfrxMemoView
          Left = 158.740260000000000000
          Top = 139.842610000000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #258#8240'rt'#258#169'kel'#258#169's d'#258#711'tuma.:')
          ParentFont = False
        end
        object Memo292: TfrxMemoView
          Left = 7.559060000000000000
          Top = 154.960730000000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T'#258#173'pus.:')
          ParentFont = False
        end
        object Memo293: TfrxMemoView
          Left = 75.590600000000000000
          Top = 154.960730000000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Izmolts'#258#711'g.:')
          ParentFont = False
        end
        object Memo294: TfrxMemoView
          Left = 41.574830000000000000
          Top = 154.960730000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'TIPUS'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."TIPUS"]')
          ParentFont = False
        end
        object Memo295: TfrxMemoView
          Left = 124.724490000000000000
          Top = 154.960730000000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          DataField = 'IZMOLTSAG'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."IZMOLTSAG"]')
          ParentFont = False
        end
        object Memo296: TfrxMemoView
          Left = 154.960730000000000000
          Top = 154.960730000000000000
          Width = 56.692950000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'L'#258#711'bszerkezet.:')
          ParentFont = False
        end
        object Memo297: TfrxMemoView
          Left = 215.433210000000000000
          Top = 154.960730000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DataField = 'LABSZERKEZET'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."LABSZERKEZET"]')
          ParentFont = False
        end
        object Memo298: TfrxMemoView
          Left = 249.448980000000000000
          Top = 154.960730000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'T'#313#8216'gy.:')
          ParentFont = False
        end
        object Memo299: TfrxMemoView
          Left = 279.685220000000000000
          Top = 154.960730000000000000
          Width = 26.456710000000000000
          Height = 11.338582680000000000
          DataField = 'E_TOGY'
          DataSet = frxDBDstHivSzarmIgList
          DataSetName = 'frxDBDstHivSzarmIgList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDstHivSzarmIgList."E_TOGY"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDstHivSzarmIgList: TfrxDBDataset
    UserName = 'frxDBDstHivSzarmIgList'
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
      'T_ANYA_TOGY=T_ANYA_TOGY')
    OpenDataSource = False
    DataSet = sdsListHSzIg
    Left = 16
    Top = 16
  end
  object TalStoredProc2: TTalStoredProc
    Connection = dtmTarka.cnTarka
    ProcedureName = 'HIV_SZARMIG_SZLAPOK'
    Parameters = <
      item
        Name = 'PEGYED_ENAR'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4000
        Value = Null
      end>
    Left = 608
    Top = 88
  end
end
