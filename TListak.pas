unit TListak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ADODB, uTalQuery, ExtCtrls, frxDock,
  Grids, DBGrids, StdCtrls, DBCtrls, uTALDBComboBox, Buttons, DBClient,
  uTALSimpleDataSet, ActnList, uTALActionList, uTALLabel, Mask, uValidedit,
  uTALEdit, uTALGroupBox, DateUtils, uTALStoredProc, 
  uTALRadioGroup, uTALRadioButton;

type
  TfrmTListak = class(TForm)
    frxDBListak: TfrxDBDataset;
    lbListanev: TLabel;
    cbTenyeszet: TComboBox;
    lbTenyeszet: TLabel;
    sdsListak: TTalSimpleDataSet;
    qListak: TTalQuery;
    lbBika: TLabel;
    cbBika: TComboBox;
    TalStoredProc1: TTalStoredProc;
    tlbPeldany: TTalLabel;
    tlePeldany: TTalEdit;
    frxDBLists: TfrxDBDataset;
    rbRend: TTalRadioGroup;
    edtNapIg: TTalEdit;
    lblTol: TTalLabel;
    edtNapTol: TTalEdit;
    lblNap: TTalLabel;
    lblListazando: TTalLabel;
    rbTehen: TTalRadioButton;
    rbNovendek: TTalRadioButton;
    rbMindenki: TTalRadioButton;
    sdsTNaplo: TTalSimpleDataSet;
    dtsTNaplo: TDataSource;
    sdsTNaploTENYESZET: TWideStringField;
    sdsTNaploENAR: TWideStringField;
    sdsTNaploSZULDAT: TDateTimeField;
    sdsTNaploANYA_ENAR: TWideStringField;
    sdsTNaploAPAKLSZ: TWideStringField;
    sdsTNaploBN: TWideStringField;
    sdsTNaploFAJTAKOD: TWideStringField;
    sdsTNaploSZIN: TWideStringField;
    sdsTNaploKIKDAT: TDateTimeField;
    sdsTNaploKIKOD: TWideStringField;
    sdsTNaploKIKOK: TWideStringField;
    sdsTNaploELLES_DATUM: TDateTimeField;
    sdsTNaploELLES_SSZ: TIntegerField;
    sdsTNaploENAR1: TWideStringField;
    sdsTNaploIVAR1: TWideStringField;
    sdsTNaploVALDAT1: TDateTimeField;
    sdsTNaploVALTOM1: TIntegerField;
    sdsTNaploENAR2: TWideStringField;
    sdsTNaploIVAR2: TWideStringField;
    sdsTNaploVALDAT2: TDateTimeField;
    sdsTNaploVALTOM2: TIntegerField;
    sdsTNaploTDATUM1: TDateTimeField;
    sdsTNaploTDATUM2: TDateTimeField;
    sdsTNaploTERM_SSZ: TIntegerField;
    sdsTNaploTERM_KLSZ: TWideStringField;
    sdsTNaploTERM_ALLAPOT: TWideStringField;
    sdsTNaploTERM_VEMHNAP: TIntegerField;
    sdsTNaploTERM_KEK: TIntegerField;
    sdsTNaploTELL1_DAT: TDateTimeField;
    sdsTNaploTELL1_LEF: TWideStringField;
    sdsTNaploTELL1_ENAR1: TWideStringField;
    sdsTNaploTELL1_IVAR1: TWideStringField;
    sdsTNaploTELL1_SZSULY1: TBCDField;
    sdsTNaploTELL1_VALDAT1: TDateTimeField;
    sdsTNaploTELL1_VALTOM1: TIntegerField;
    sdsTNaploTELL1_KIKDAT1: TDateTimeField;
    sdsTNaploTELL1_KIKOD1: TWideStringField;
    sdsTNaploTELL1_KIKOK1: TWideStringField;
    sdsTNaploTELL1_ENAR2: TWideStringField;
    sdsTNaploTELL1_IVAR2: TWideStringField;
    sdsTNaploTELL1_SZSULY2: TBCDField;
    sdsTNaploTELL1_VALDAT2: TDateTimeField;
    sdsTNaploTELL1_VALTOM2: TIntegerField;
    sdsTNaploTELL1_KIKDAT2: TDateTimeField;
    sdsTNaploTELL1_KIKOD2: TWideStringField;
    sdsTNaploTELL1_KIKOK2: TWideStringField;
    sdsTNaploTELL2_DAT: TDateTimeField;
    sdsTNaploTELL2_LEF: TWideStringField;
    sdsTNaploTELL2_ENAR1: TWideStringField;
    sdsTNaploTELL2_IVAR1: TWideStringField;
    sdsTNaploTELL2_SZSULY1: TBCDField;
    sdsTNaploTELL2_VALDAT1: TDateTimeField;
    sdsTNaploTELL2_VALTOM1: TIntegerField;
    sdsTNaploTELL2_KIKDAT1: TDateTimeField;
    sdsTNaploTELL2_KIKOD1: TWideStringField;
    sdsTNaploTELL2_KIKOK1: TWideStringField;
    sdsTNaploTELL2_ENAR2: TWideStringField;
    sdsTNaploTELL2_IVAR2: TWideStringField;
    sdsTNaploTELL2_SZSULY2: TBCDField;
    sdsTNaploTELL2_VALDAT2: TDateTimeField;
    sdsTNaploTELL2_VALTOM2: TIntegerField;
    sdsTNaploTELL2_KIKDAT2: TDateTimeField;
    sdsTNaploTELL2_KIKOD2: TWideStringField;
    sdsTNaploTELL2_KIKOK2: TWideStringField;
    sdsTNaploTDAT1_TOL: TDateTimeField;
    sdsTNaploTDAT1_IG: TDateTimeField;
    sdsTNaploTKLSZ1: TWideStringField;
    sdsTNaploALLAP1: TWideStringField;
    sdsTNaploTDAT2_TOL: TDateTimeField;
    sdsTNaploTDAT2_IG: TDateTimeField;
    sdsTNaploTKLSZ2: TWideStringField;
    sdsTNaploALLAP2: TWideStringField;
    sdsTNaploTDAT3_TOL: TDateTimeField;
    sdsTNaploTDAT3_IG: TDateTimeField;
    sdsTNaploTKLSZ3: TWideStringField;
    sdsTNaploALLAP3: TWideStringField;
    sdsTNaploTDAT4_TOL: TDateTimeField;
    sdsTNaploTDAT4_IG: TDateTimeField;
    sdsTNaploTKLSZ4: TWideStringField;
    sdsTNaploALLAP4: TWideStringField;
    sdsTNaploTDAT5_TOL: TDateTimeField;
    sdsTNaploTDAT5_IG: TDateTimeField;
    sdsTNaploTKLSZ5: TWideStringField;
    sdsTNaploALLAP5: TWideStringField;
    frxDBTNaplo: TfrxDBDataset;
    spTNaplo: TTalStoredProc;
    frxReport_test: TfrxReport;
    frxRepListak: TfrxReport;
    frxRepLists: TfrxReport;
    frxTNaplo: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure cbBikaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure TenyeszetParam;
    Procedure TenyeszetAdatai;
    Procedure ComboTolt;
    Procedure BikaComboTolt(n : Byte);
    Procedure BikaNev;
    Procedure RadioGroup(n, m : Byte);
    Procedure Nyomogomb(n : Byte);
    Procedure TalBox(cap : String);
    Procedure TalEdit(n : Byte);
    Procedure TalLabel(n : Byte);
    Procedure AnyaLista(Sender: TObject);
    Procedure KullemLista(Sender: TObject);
    Procedure KiesettKikerultTehenekLista(Sender: TObject);
    Procedure TermekenyitesekLista(Sender: TObject);
    Procedure EgyBikaTermekenyitesekLista(Sender: TObject);
    Procedure VemhessegiVizsgalatraLista(Sender: TObject);
    Procedure LegalabbNegyszerTehenLista(Sender: TObject);
    Procedure LegalabbNegyszerUszoLista(Sender: TObject);
    Procedure UszokTermekenyiteseiLista(Sender: TObject);
    Procedure VemhesUszokLista(Sender: TObject);
    Procedure TermekenyitesAlattLevoUszokLista(Sender: TObject);
    Procedure TehenKartonLista(Sender: TObject);
    Procedure NovendekUszoNyilvantartoLista(Sender: TObject);
    Procedure Kilep(Sender: TObject);
    Procedure FormKepe(st1 : String; b1, d1, bk : Boolean);
    Procedure ListaKlikk(Sender: TObject);
    Procedure TenyesztesiNaploLista(Sender: TObject);
    Procedure TenyesztesiNaploListaNew(Sender: TObject);
  public
    { Public declarations }
    Procedure AnyaAdat;
    Procedure EloTehenKullem;
    Procedure KikerultKiesettTehenek;
    Procedure Termekenyitesek;
    Procedure EgyBikaTermekenyitesei;
    Procedure VemhessegiVizsgalatra;
    Procedure LegalabbNegyszerTehen;
    Procedure LegalabbNegyszerUszo;
    Procedure UszokTermekenyitesei;
    Procedure TermekenyitesAlattLevoUszok;
    Procedure TehenKarton;
    Procedure NovendekUszoNyilvantarto;
    Procedure VemhesUszok;
    Procedure HivatalosSzarmazasiIgazolas;
    Procedure TenyesztesiNaplo;
    // Procedure TenyesztesiNaploNew;
  end;

var
  frmTListak: TfrmTListak;
  RRadioGroup : TRadioGroup;
  gLista : TBitBtn;
  TTGB : TTalGroupBox;
  TTE : TTalEdit;
  TTL : TTalLabel;
  sztr : Array[0..5,0..5] Of String;
  akt_sor : Integer;
  param1, param2, param3, param5,
  ListaStr1, ListaStr2, ListaStr3, ListaStr4, ListaStr5 : String;
  ParamStr1, ParamStr2, ParamStr3, ParamStr4, ParamStr5 : String;

implementation

Uses udtmTarka, ufrmMain;

{$R *.dfm}

Procedure TfrmTListak.AnyaAdat;
Begin
  sztr[1,0] := 'Csak élõ egyedek?';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := 'Igen';
  sztr[1,2] := 'Nem';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := AnyaLista;

  ComboTolt;

  frmTListak.lbListanev.Caption := 'Anya adat lista /6 sz. melléklet/';
  frmTListak.ShowModal;
End;



Procedure TfrmTListak.AnyaLista(Sender: TObject);
Var
  sz1, param4 : String;
Begin
  TenyeszetAdatai;

  If (FindComponent('RadioGroup1' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup1')).ItemIndex = 0)  Then
      Begin
        sz1 := ' and ((e.kikod = ''0'') OR (e.kikod Is Null)) and ((e.kikok = ''0'') OR (e.kikok Is Null)) ';       // élõ egyedek
        param4 := 'élõ egyedek';
      End
    Else
      Begin                                                     // összes egyed
        sz1 := '';
        param4 := 'összes egyed';
      End;

  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText :=
    'select E.enar as ENAR_szam, E.fulszam as egyeb_azonosito, ' +
           'e.szuldat as Szul_dat, e.apaklsz as Apja, e.anya_enar as Anyja, ' +
           'e.fajtakod as F, e.kkod as Kon, e.tkv as T, e.min as Min ' +
    'from egyedek E ' +
    'where E.ivar = ''2'' and exists(select 1 from ellesek where ellesek.egyed_id = e.id) and ' +
    ' E.tenyeszet = ' + quotedstr(param1) + sz1 +
    ' ORDER BY e.enar';
  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\AnyaAdat.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p1'] := param1;
          frmTListak.frxRepLists.Script.Variables['p2'] := param2;
          frmTListak.frxRepLists.Script.Variables['p3'] := param3;
          frmTListak.frxRepLists.Script.Variables['p4'] := param4;
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     Begin
       dtmTarka.ExcelExport(sdsListak, 'AnyaAdat.XLS');
     End;

  sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.EloTehenKullem;
Begin
  sztr[1,0] := '';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := KullemLista;

  ComboTolt;
  frmTListak.lbListanev.Caption := 'Élõ tehenek küllemi pontszámai';
  frmTListak.ShowModal;
End;

Procedure TfrmTListak.KullemLista(Sender: TObject);
Begin
  TenyeszetAdatai;

  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText :=
              'select k.enar, k.birdat, k.farmag, k.med, k.farszel, k.mell, ' +
                     'k.farlejt, k.hatlab, k.csank, k.csud, k.parta, k.rama, ' +
                        'k.izom, k.lab ' +
              'from egyedek e ' +
              'JOIN kullem k on e.enar = k.enar ' +
              'where e.tenyeszet = ' + quotedstr(param1) +
                 ' and ((e.kikod = ''0'') OR (e.kikod Is Null)) and ((e.kikok = ''0'') OR (e.kikok Is Null)) ' +
                 ' and Length(Trim(k.enar)) > 0 ' +
                 ' and e.ivar = ''2'' and exists (select 1 from ellesek where ellesek.egyed_id=e.id) ' +
              'order by k.enar';

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\EloTehenKullem.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p1'] := param1 + '   ' +
                                                           param2 + '   ' +
                                                           param3;
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     Begin
       dtmTarka.ExcelExport(sdsListak, 'KullemLista.XLS');
     End;
  sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.KikerultKiesettTehenek;
Begin
  sztr[1,0] := '';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := KiesettKikerultTehenekLista;
  TalBox('Kikerülés dátuma ');
  TalEdit(2);
  sztr[1,0] := '-tól';
  sztr[2,0] := '-ig';
  TalLabel(2);

  ComboTolt;
  frmTListak.lbListanev.Caption := 'Kiesett, kikerült tehenek';
  frmTListak.ShowModal;
End;

Procedure TfrmTListak.KiesettKikerultTehenekLista(Sender: TObject);
Var
  dateparamtol, dateparamig  : String;
  SQL : string;
Begin
  TenyeszetAdatai;
  // kikerülési idõ
  if TTalEdit(FindComponent('TalEdit1')).Text <> '    .  .  ' then
     dateparamtol := ' AND E.kikdat  >= ' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text)
   Else
     dateparamtol := '';
  if TTalEdit(FindComponent('TalEdit2')).Text <> '    .  .  ' then
     dateparamig := ' AND E.kikdat  <= ' + quotedstr(TTalEdit(FindComponent('TalEdit2')).Text)
   Else
     dateparamig := '';

  frmTListak.frxDBListak.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  SQL :=  'select E.ENAR as ENAR_SZAM, E.KIKDAT, E.KIKOD, D.KOD_NEV AS MEGN, E.KIKOK, K.KOD_NEV AS MEGN ' +
                 'from egyedek E ' +
                 'left join KODOK D on D.KOD = E.KIKOD and D.KODTIPUSOK_TIPUSKOD = ''KIKOD'' ' +
                 'left join KODOK K on K.KOD = E.KIKOK and K.KODTIPUSOK_TIPUSKOD = ''KIOK'' ' +
                 'where E.tenyeszet = ' + quotedstr(param1) + ' ' + dateparamtol + dateparamig +
                    ' and Length(Trim(e.enar)) > 0' +
                    ' and (e.kikod <> ''0'' or e.kikok <> ''0'' OR e.kikod is not NULL OR e.kikok is not NULL) ' +
                    ' AND E.IVAR = ''2'' AND EXISTS (SELECT 1 FROM ELLESEK WHERE ELLESEK.EGYED_ID = E.ID) ' +
                 'ORDER BY e.enar';

  sdsListak.DataSet.CommandText :=  SQL ;

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepListak.LoadFromFile(dtmTarka.fr3Path + '\KikerultKiesettTehenek.fr3') Then
        Begin
          frmTListak.frxRepListak.Variables.Clear;
          frmTListak.frxRepListak.Script.Variables['p1'] := param1 + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frmTListak.frxRepListak.Script.Variables['p2'] := '(' +
                           TTalEdit(FindComponent('TalEdit1')).Text + '  -  ' +
                           TTalEdit(FindComponent('TalEdit2')).Text + ')';
          frmTListak.frxRepListak.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'KikerultKiesettTehenek.XLS');
  sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.Termekenyitesek;
Begin
  sztr[1,0] := '';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := TermekenyitesekLista;
  TalBox('Termékenyítés dátuma ');
  TalEdit(2);
  sztr[1,0] := '-tól';
  sztr[2,0] := '-ig';
  TalLabel(2);


  ComboTolt;
  frmTListak.lbListanev.Caption := 'Termékenyítések';
  frmTListak.ShowModal;
End;

Procedure TfrmTListak.TermekenyitesekLista(Sender: TObject);
Var
  dateparamtol, dateparamig  : String;

Begin
  TenyeszetAdatai;
  // kikerülési idõ
  if TTalEdit(FindComponent('TalEdit1')).Text <> '    .  .  ' then
      dateparamtol := ' and (tt.datum >= to_date(' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''yyyy.mm.dd'')) '
    Else
      dateparamtol := '';
  if TTalEdit(FindComponent('TalEdit2')).Text <> '    .  .  ' then
      dateparamig := ' and (tt.datum <= to_date(' + quotedstr(TTalEdit(FindComponent('TalEdit2')).Text) + ',''yyyy.mm.dd'')) '
    Else
      dateparamig := '';

//  frmTListak.frxDBListak.DataSet := sdsListak;
  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText :=
'select ' +
'  case ' +
'    when LENGTH(TRIM(e.enar)) is not null then e.enar ' +
'    WHEN length(COALESCE(e.TEHENSZAM,'''')) is not null THEN E.TEHENSZAM ' +
'    WHEN length(COALESCE(E.FULSZAM,'''')) is not null THEN E.FULSZAM ' +
'    ELSE COALESCE(E.ID_ENAR,'' '') END   AS EGYED_AZON , ' +
' tt.datum, ''  '' as d_azon, /*ez majd változhat*/ ' +
' tt.kplsz as bika, e1.elles_datum, ' +
' B1.borju_enar, Case ' +
'                  when b1.borju_ivar = 1 Then ''B'' ' +
'                  when b1.borju_ivar = 2 Then ''Ü'' ' +
'                  Else '''' ' +
'                End As Ivar, ' +
' B2.borju_enar, Case ' +
'                  When b2.borju_ivar = 1 Then ''B'' ' +
'                  When b2.borju_ivar = 2 Then ''Ü'' ' +
'                  Else '''' ' +
'                End As Ivar2 ' +
' ' +
'from termekenyitesek tt ' +
'join egyedek e on e.id = tt.egyed_id ' +
'left join ellesek e1 on e1.egyed_id = tt.egyed_id and e1.e_term_dat = tt.datum ' +
'left join borjak b1 on b1.ellesek_id = e1.id and ((b1.borju_ssz = 0) or (b1.borju_ssz is null)) ' +
'left join borjak b2 on b2.ellesek_id = e1.id and b2.borju_ssz = 2 ' +
'where ' +
'  e.tenyeszet = ' + quotedstr(param1) + dateparamtol + dateparamig +
//'   and (tt.datum >= to_date(''2006.04.01'',''yyyy.mm.dd'')) ' +
//'   and (tt.datum <= to_date(''2006.04.30'',''yyyy.mm.dd'')) ' +
'order by tt.datum';

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\TTermekenyitesek.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p1'] := param1 + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frmTListak.frxRepLists.Script.Variables['p2'] := '(' +
                           TTalEdit(FindComponent('TalEdit1')).Text + '  -  ' +
                           TTalEdit(FindComponent('TalEdit2')).Text + ')';
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'Termekenyitesek.XLS');
  sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.EgyBikaTermekenyitesei;
Begin
  sztr[1,0] := '';                 
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;


  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := EgyBikaTermekenyitesekLista;
  TalBox('Termékenyítés dátuma ');
  TalEdit(2);
  sztr[1,0] := '-tól';
  sztr[2,0] := '-ig';
  TalLabel(2);

  ComboTolt;

  frmTListak.lbBika.Visible := True;
  frmTListak.cbBika.Visible := True;

  BikaComboTolt(1);     // bika

  frmTListak.lbListanev.Caption := 'Egy bika termékenyítései';
  frmTListak.ShowModal;
End;

Procedure TfrmTListak.EgyBikaTermekenyitesekLista(Sender: TObject);
Var
  dateparamtol, dateparamig  : String;

Begin
  TenyeszetAdatai;
  // kikerülési idõ
  if TTalEdit(FindComponent('TalEdit1')).Text <> '    .  .  ' then
      dateparamtol := ' and (tt.datum >= to_date(' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''yyyy.mm.dd'')) '
    Else
      dateparamtol := '';
  if TTalEdit(FindComponent('TalEdit2')).Text <> '    .  .  ' then
      dateparamig := ' and (tt.datum <= to_date(' + quotedstr(TTalEdit(FindComponent('TalEdit2')).Text) + ',''yyyy.mm.dd'')) '
    Else
      dateparamig := '';

  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText :=
'select ' +
'  case ' +
'    when LENGTH(TRIM(e.enar)) is not null then e.enar ' +
'    WHEN length(COALESCE(e.TEHENSZAM,'''')) is not null THEN E.TEHENSZAM ' +
'    WHEN length(COALESCE(E.FULSZAM,'''')) is not null THEN E.FULSZAM ' +
'    ELSE COALESCE(E.ID_ENAR,'' '') END   AS EGYED_AZON , ' +
' tt.datum, ''  '' as d_azon, /*ez majd változhat*/ ' +
' tt.kplsz as bika, e1.elles_datum, ' +
' B1.borju_enar, Case ' +
'                  when b1.borju_ivar = 1 Then ''B'' ' +
'                  when b1.borju_ivar = 2 Then ''Ü'' ' +
'                  Else '''' ' +
'                End As Ivar, ' +
' B2.borju_enar, Case ' +
'                  When b2.borju_ivar = 1 Then ''B'' ' +
'                  When b2.borju_ivar = 2 Then ''Ü'' ' +
'                  Else '''' ' +
'                End As Ivar2 ' +
' ' +
'from termekenyitesek tt ' +
'join egyedek e on e.id = tt.egyed_id ' +
'left join ellesek e1 on e1.egyed_id = tt.egyed_id and e1.e_term_dat = tt.datum ' +
'left join borjak b1 on b1.ellesek_id = e1.id and ((b1.borju_ssz = 0) or (b1.borju_ssz is null)) ' +
'left join borjak b2 on b2.ellesek_id = e1.id and b2.borju_ssz = 2 ' +
'where ' +
'  e.tenyeszet = ' + quotedstr(param1) + dateparamtol + dateparamig +
'  and tt.kplsz = ' +  quotedstr(frmTListak.cbBika.Text) +
' order by tt.datum';

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  BikaNev;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\EgyBikaTermekenyitesek.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p1'] := param1 + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frmTListak.frxRepLists.Script.Variables['p2'] := '(' +
                           TTalEdit(FindComponent('TalEdit1')).Text + '  -  ' +
                           TTalEdit(FindComponent('TalEdit2')).Text + ')    ' +
                           frmTListak.cbBika.Text + ' ' + param5;
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'EgyBikaTermekenyitesek.XLS');
  sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.VemhessegiVizsgalatra;
Begin
  sztr[1,0] := '';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;  // csak kimenet

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := VemhessegiVizsgalatraLista;

  lblListazando.Visible := true;
  rbTehen.Visible := true;
  rbNovendek.Visible := true;
  rbMindenki.Visible := true;

  lblNap.Visible := true;
  lblTol.Visible := true;
  edtNapTol.Visible := true;
  edtNapIg.Visible := true;

  ComboTolt;
  frmTListak.lbListanev.Caption := 'Vemhességi vizsgálatra válogatandó egyedek';
  frmTListak.ShowModal;

  lblNap.Visible := false;
  lblTol.Visible := false;
  edtNapTol.Visible := false;
  edtNapIg.Visible := false;

  lblListazando.Visible := false;
  rbTehen.Visible := false;
  rbNovendek.Visible := false;
  rbMindenki.Visible := false;

End;

Procedure TfrmTListak.VemhessegiVizsgalatraLista(Sender: TObject);
Var
  dateparamtol, dateparamig  : String;

Begin
  TenyeszetAdatai;
  // idõ
  if edtNapTol.Text = EmptyStr then begin
     dtmTarka.MsgDlg('A napszám megadása kötelezõ!', mtWarning, [mbOK], 0);
     exit;
  end;
  if edtNapIg.Text = EmptyStr then begin
     dtmTarka.MsgDlg('A napszám megadása kötelezõ!', mtWarning, [mbOK], 0);
     exit;
  end;

  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText :=

  'Select e.enar, m.kplsz,  m.datum,  ' +
  ' cast(TO_CHAR(current_date, ''J'') - TO_CHAR(m.datum, ''J'') as integer) as Nap ' +
  ' From TERMEKENYITESEK M, EGYEDEK E ' +
  ' Where M.EGYED_ID = e.id  ' +
  '  and E.TENYESZET = ' + quotedstr(param1) +
  '  and M.ID = UT_TERM(e.id)  ' +
  '  and ((e.kikok = ''0'') OR (e.kikok is NULL)) ' +
  '  and ((e.kikod = ''0'') OR (e.kikod is NULL)) ' +
  '  AND ((M.ALLAPOT is null) )' +                                  // or (m.allapot=''0'')
  '  AND NOT EXISTS(SELECT 1 FROM ELLESEK EL WHERE EL.EGYED_ID = E.ID AND EL.ELLES_DATUM > M.DATUM) ' +
  '  and ((CURRENT_DATE - M.DATUM) between ' + edtNapTol.Text + ' and ' + edtNapIg.Text + ')' ;
  if rbNovendek.Checked then begin
    sdsListak.DataSet.CommandText := sdsListak.DataSet.CommandText +
      ' and not exists (select 1 from ellesek where ellesek.egyed_id = E.id )'
  end;
  if rbTehen.Checked then begin
    sdsListak.DataSet.CommandText := sdsListak.DataSet.CommandText +
      ' and exists (select 1 from ellesek where ellesek.egyed_id = E.id )'
  end;

  sdsListak.DataSet.CommandText := sdsListak.DataSet.CommandText +  ' Order By e.enar';

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\VemhessegiVizsgalatra.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p1'] := param1 + '   ' +
                                                           param2 + '   ' +
                                                           param3;
          frmTListak.frxRepLists.Script.Variables['p2'] := ' Utolsó termékenyítés utáni napok száma:' +
                           edtNapTol.Text + '  -  ' + edtNapIg.Text;
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'VemhessegiVizsgalatra.XLS');
  sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.LegalabbNegyszerTehen;
Begin
  sztr[1,0] := '';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := LegalabbNegyszerTehenLista;

  ComboTolt;

  frmTListak.lbListanev.Caption := 'Legalább 4 - szer termékenyített, nem vemhes tehenek';
  frmTListak.ShowModal;
End;

Procedure TfrmTListak.LegalabbNegyszerTehenLista(Sender: TObject);
Begin
  TenyeszetAdatai;

  frmTListak.Cursor := crSQLWait;
  dtmTarka.cnTarka.BeginTrans;
  try
    frmTListak.TalStoredProc1.Prepared := True;
    frmTListak.TalStoredProc1.Parameters.ParamByName('V_TENYESZET').Value := param1;
    frmTListak.TalStoredProc1.Parameters.ParamByName('v_tehen_uszo').Value := '1';
    frmTListak.TalStoredProc1.ExecProc;

    dtmTarka.cnTarka.CommitTrans;
    frmTListak.TalStoredProc1.Prepared := False;
  except
    on E:Exception do
    begin
      dtmTarka.cnTarka.RollbackTrans;
      Exit;
    end;
  end;
  frmTListak.Cursor := crDefault;

  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText := 'Select l.enar, l.dat1, l.dat2, l.dat3, ' +
                                          'l.dat4, l.dat5 ' +
                                   'From legalabb l ' +
                                   'order by l.enar';

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\LegalabbNegyszerTermekenyitettTehen.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p1'] := param1 + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'LegalabbNegyszerTermekenyitettTehen.XLS');
  sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.LegalabbNegyszerUszo;
Begin
  sztr[1,0] := '';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := LegalabbNegyszerUszoLista;

  ComboTolt;

  frmTListak.lbListanev.Caption := 'Legalább 4 - szer termékenyített, nem vemhes üszõk';
  frmTListak.ShowModal;
End;

Procedure TfrmTListak.LegalabbNegyszerUszoLista(Sender: TObject);
Begin
  TenyeszetAdatai;

  frmTListak.Cursor := crSQLWait;
  dtmTarka.cnTarka.BeginTrans;
  try
    frmTListak.TalStoredProc1.Prepared := True;
    frmTListak.TalStoredProc1.Parameters.ParamByName('V_TENYESZET').Value := param1;
    frmTListak.TalStoredProc1.Parameters.ParamByName('v_tehen_uszo').Value := '2';
    frmTListak.TalStoredProc1.ExecProc;

    dtmTarka.cnTarka.CommitTrans;
    frmTListak.TalStoredProc1.Prepared := False;
  except
    on E:Exception do
    begin
      dtmTarka.cnTarka.RollbackTrans;
      Exit;
    end;
  end;
  frmTListak.Cursor := crDefault;

  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText := 'Select l.enar, l.dat1, l.dat2, l.dat3, ' +
                                          'l.dat4, l.dat5 ' +
                                   'From legalabb l ' +
                                   'order by l.enar';

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\LegalabbNegyszerTermekenyitettUszo.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p1'] := param1 + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'LegalabbNegyszerTermekenyitettUszo.XLS');
  sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.UszokTermekenyitesei;
Begin
  sztr[1,0] := '';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral

  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;  // csak kimenet

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);

  rbRend.Visible := true;
  rbRend.Left := 320;
  rbRend.Items.Clear;
  rbRend.Items.Add('ENAR');
  rbRend.Items.Add('Dátum');
  rbRend.Items.Add('Bika');
  rbRend.ItemIndex := 0;;

  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := UszokTermekenyiteseiLista;

  TalBox('Termékenyítés dátuma ');
  TalEdit(2);
  sztr[1,0] := '-tól';
  sztr[2,0] := '-ig';
  TalLabel(2);

  ComboTolt;
  frmTListak.lbListanev.Caption := 'Lista üszõk termékenyítései';
  frmTListak.ShowModal;
  rbRend.Visible := false;

End;

Procedure TfrmTListak.UszokTermekenyiteseiLista(Sender: TObject);
Var
  dateparamtol, dateparamig  : String;
  SQL : string;
Begin
  TenyeszetAdatai;
  // idõ
  if TTalEdit(FindComponent('TalEdit1')).Text <> '    .  .  ' then
      dateparamtol := ' and (tt.datum >= to_date(' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''yyyy.mm.dd'')) '
    Else
      dateparamtol := '';
  if TTalEdit(FindComponent('TalEdit2')).Text <> '    .  .  ' then
      dateparamig := ' and (tt.datum <= to_date(' + quotedstr(TTalEdit(FindComponent('TalEdit2')).Text) + ',''yyyy.mm.dd'')) '
    Else
      dateparamig := '';

  frmTListak.frxDBListak.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  SQL := 'select e.enar, tt.datum, ' +
      'cast((select count(1) from termekenyitesek t1 ' +
      '        where t1.egyed_id = e.id ) as integer) as elles_sorszam, ' +
      'tt.kplsz ' +
      'from egyedek e ' +
      'join termekenyitesek tt on e.id = tt.egyed_id and tt.datum = (select max(t.datum) from termekenyitesek t ' +
      '                                                               where t.egyed_id = e.id) ' +
      'where ((e.kikok = ''0'') OR (e.kikok is NULL)) ' +
      '  and ((e.kikod = ''0'') OR (e.kikod is NULL)) ' +
      '  and e.tenyeszet = ' + quotedstr(param1) + dateparamtol + dateparamig +
      '  and not exists (select 1 from ellesek where ellesek.egyed_id = e.id )';

  if rbRend.ItemIndex = 0 then begin
    SQL := SQL + ' order by e.enar';
  end else if rbRend.ItemIndex = 1 then begin
    SQL := SQL + ' order by tt.datum, e.enar';
  end else if rbRend.ItemIndex = 2 then begin
    SQL := SQL + ' order by tt.kplsz, e.enar';
  end;

  sdsListak.DataSet.CommandText := SQL;

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepListak.LoadFromFile(dtmTarka.fr3Path + '\UszokTermekenyitesei.fr3') Then
        Begin
          frmTListak.frxRepListak.Variables.Clear;
          frmTListak.frxRepListak.Script.Variables['p1'] := param1 + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frmTListak.frxRepListak.Script.Variables['p2'] := '(' +
                           TTalEdit(FindComponent('TalEdit1')).Text + '  -  ' +
                           TTalEdit(FindComponent('TalEdit2')).Text + ')    ' +
                           frmTListak.cbBika.Text + ' ' + param5;
          frmTListak.frxRepListak.Script.Variables['p3'] := rbRend.Items[rbRend.ItemIndex];
          frmTListak.frxRepListak.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'UszokTermekenyitesei.XLS');
  sdsListak.Close;
End;

//----------------------------------------------------------------------

Procedure TfrmTListak.VemhesUszok;
Begin
  sztr[1,0] := '';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;  // csak kimenet
  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);

  rbRend.Visible := true;
  rbRend.Left := 320;
  rbRend.Height := 80 ;
  rbRend.Items.Clear;
  rbRend.Items.Add('ENAR');
  rbRend.Items.Add('Várható ellés dátuma');
  rbRend.ItemIndex := 0;;

  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := VemhesUszokLista;

  ComboTolt;
  frmTListak.lbListanev.Caption := 'Lista vemhes üszõk';
  frmTListak.ShowModal;

  rbRend.Visible := false;

End;

Procedure TfrmTListak.VemhesUszokLista(Sender: TObject);
Begin
  TenyeszetAdatai;

  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText := 'select e.enar, e.szuldat, tt.datum, ' +
     'tt.kplsz , (tt.datum + param.atl_vemh_nap) as varh_elles_datum ' +
     'from egyedek e ' +
     'join termekenyitesek tt on e.id = tt.egyed_id and tt.datum = (select max(t.datum) from termekenyitesek t ' +
     '                                                              where t.egyed_id = e.id) ' +
     'join param on 1 = 1 ' +
     'where   tt.allapot = ''1'' ' +  //  -- vemhes
      ' and ((e.kikok = ''0'') OR (e.kikok is NULL)) ' +
      ' and ((e.kikod = ''0'') OR (e.kikod is NULL)) ' +
     '  and e.tenyeszet = ' + quotedstr(param1) +
     '  and not exists (select 1 from ellesek where ellesek.egyed_id = e.id )' ;
  if rbRend.ItemIndex = 0 then
    sdsListak.DataSet.CommandText := sdsListak.DataSet.CommandText +
       ' order by e.enar ';

  if rbRend.ItemIndex = 1 then
    sdsListak.DataSet.CommandText := sdsListak.DataSet.CommandText +
       ' order by (tt.datum + param.atl_vemh_nap), e.enar ';

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\VemhesUszok.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p1'] := param1 + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'VemhesUszok.XLS');
  sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.TermekenyitesAlattLevoUszok;
Begin
  sztr[1,0] := '';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;  // csak kimenet

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := TermekenyitesAlattLevoUszokLista;

  ComboTolt;
  frmTListak.lbListanev.Caption := 'Lista termékenyítés alatt lévõ üszõk';
  frmTListak.ShowModal;
End;

Procedure TfrmTListak.TermekenyitesAlattLevoUszokLista(Sender: TObject);
Begin
  TenyeszetAdatai;

  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText := 'select e.enar, e.szuldat, e.fajtakod, ' +
    'cast( (current_date - e.szuldat) as integer) as eletkor, ' +
    'tt.datum, ' +
    'cast((select count(1) from termekenyitesek t1 where t1.egyed_id = e.id ) as integer) as elles_sorszam, ' +
    'cast( (current_date - tt.datum) as integer) as eltelt_nap, ' +
    'tt.kplsz ' +
    'from egyedek e ' +
    'join termekenyitesek tt on e.id = tt.egyed_id and tt.datum = (select max(t.datum) from termekenyitesek t ' +
    '                                                              where t.egyed_id = e.id) ' +
    'join param on 1 = 1 ' +
    'where  (( tt.allapot <> ''1'') or (tt.allapot is null)) ' +   // -- nem vemhes     1
      ' and ((e.kikok = ''0'') OR (e.kikok is NULL)) ' +
      ' and ((e.kikod = ''0'') OR (e.kikod is NULL)) ' +  // -- élõ egyedek
    '  and e.tenyeszet = ' + quotedstr(param1) +
    '  and not exists (select 1 from ellesek where ellesek.egyed_id = e.id )';

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\TermekenyitesAlattLevoUszok.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p1'] := param1 + '   ' +
                                                           param2 + '   ' +
                                                           param3;
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'TermekenyitesAlattLevoUszok.XLS');
  sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.TehenKarton;
Begin
  sztr[1,0] := '';
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;  // csak kimenet

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);

  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := TehenKartonLista;

  frmTListak.lbTenyeszet.Visible := False;
  frmTListak.cbTenyeszet.Visible := False;

  frmTListak.lbBika.Visible := True;
  frmTListak.lbBika.Caption := 'ENAR:';
  frmTListak.cbBika.Visible := True;
  BikaComboTolt(2);       // tehén ENAR
  frmTListak.sdsListak.Connection := dtmTarka.cnTarka;

  frmTListak.lbListanev.Caption := 'Tehén karton';
  frmTListak.ShowModal;
  frmTListak.lbBika.Caption := 'bika:';
End;


Procedure TfrmTListak.TehenKartonLista(Sender: TObject);
var
  SQL : string;
Begin
  TenyeszetAdatai;

  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  SQL :=   'select e.enar, e.szuldat, tt.datum as TermDat, tt.kplsz as Bika, ' +
        'cast( (ell.elles_datum - tt.datum) as integer) as eltelt_nap, ' +
        'ell.elles_datum, ' +
        'borjak.borju_enar, ' +
        '                Case ' +
        '                  when borjak.borju_ivar = 1 Then ''B'' ' +
        '                  when borjak.borju_ivar = 2 Then ''Ü'' ' +
        '                  Else '' '' ' +
        '                End  BorjuIvar, ' +
        'borjak.borju_kieses_kod, ' +
        ' cast(CASE WHEN ELL.ELLES_DATUM IS NOT NULL THEN 1 ELSE 0 END * ' +
        ' case when (select 1 from ELLESEK where ELLESEK.EGYED_ID = E.id and ELLESEK.ELLES_DATUM = ELL.ELLES_DATUM ' +
        '  ) = 1 THEN 1 ELSE 0 END AS INTEGER) AS DB ' +
     'from egyedek e ' +
     'join termekenyitesek tt on tt.egyed_id = e.id ' +
     'left join ellesek ell on ell.e_term_id = tt.id ' +
     'left join borjak on borjak.ellesek_id = ell.id ' +
     'where ' +
     'e.enar = ' + quotedstr(frmTListak.cbBika.Text) +
     ' and e.tenyeszet = ' + quotedstr(dtmTarka.TenyeszetTKOD) +
     ' order by 3 ';

  sdsListak.DataSet.CommandText :=  SQL;

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\TehenKarton.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p0'] := 'Tehén karton' + #10 + 'Egyed :' + dtmTarka.AzonIr(frmTListak.cbBika.Text);
          frmTListak.frxRepLists.Script.Variables['p1'] := dtmTarka.TenyeszetRKOD;
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'TehenKarton.XLS');
   sdsListak.Close;
End;

// ---------------------------------------------------------------------

Procedure TfrmTListak.NovendekUszoNyilvantarto;
Begin
  sztr[2,0] := 'Lista kimenete';
  sztr[1,1] := '';
  sztr[1,2] := '';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  RadioGroup(2, 2);   // két group két sorral
  If FindComponent('RadioGroup' + IntToStr(1)) <> Nil Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;  // csak kimenet

  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';
  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := NovendekUszoNyilvantartoLista;

  TalBox('Szûkítés dátuma ');
  TalEdit(2);
  sztr[1,0] := '-tól';
  sztr[2,0] := '-ig';
  TalLabel(2);

  ComboTolt;
  frmTListak.lbListanev.Caption := 'Növendék üszõ nyilvántartó';
  frmTListak.ShowModal;
End;

Procedure TfrmTListak.NovendekUszoNyilvantartoLista(Sender: TObject);
Var
  dateparamtol, dateparamig  : String;

Begin
  TenyeszetAdatai;
  // idõ
  if TTalEdit(FindComponent('TalEdit1')).Text <> '    .  .  ' then
      dateparamtol := ' and (e.szuldat >= to_date(' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''yyyy.mm.dd'')) '
    Else
      dateparamtol := '';
  if TTalEdit(FindComponent('TalEdit2')).Text <> '    .  .  ' then
      dateparamig := ' and (e.szuldat <= to_date(' + quotedstr(TTalEdit(FindComponent('TalEdit2')).Text) + ',''yyyy.mm.dd'')) '
    Else
      dateparamig := '';

  if TTalEdit(FindComponent('TalEdit3')).Text <> '    .  .  ' then
      dateparamtol := ' AND (KIKDAT IS NULL OR (KIKDAT >= to_date(' + quotedstr(quotedstr(TTalEdit(FindComponent('TalEdit3')).Text)) + ',''yyyy.mm.dd'')) '
    Else
      dateparamtol := '';


  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText :=
    'select e.enar, e.fulszam, e.anya_enar, e.apaklsz, e.szuldat ' +
    'from egyedek e ' +
    'where e.ivar = ''2'' ' +
      'and e.tenyeszet = ' + quotedstr(param1) + dateparamtol + dateparamig +
    ' order by e.enar';

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\NovendekUszoNyilvantarto.fr3') Then
        Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p0'] := 'Növendék üszõ nyilvántartó /32 sz. melléklet/';
          frmTListak.frxRepLists.Script.Variables['p1'] := param1 + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frmTListak.frxRepLists.Script.Variables['p2'] := '(' +
                           TTalEdit(FindComponent('TalEdit1')).Text + '  -  ' +
                           TTalEdit(FindComponent('TalEdit2')).Text + ')    ' +
                           frmTListak.cbBika.Text + ' ' + param5;
          frmTListak.frxRepLists.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, 'NovendekUszoNyilvantarto.XLS');
  sdsListak.Close;
End;

// ---------------------------------------------------------------------
Procedure TfrmTListak.HivatalosSzarmazasiIgazolas;
Begin
  ListaStr1 := 'HIVATALOS SZÁRMAZÁSI IGAZOLÁS';   // megnevezés
  ListaStr2 := 'HivatalosSzarmazasiIgazolas';     // *.fr3; *.xls név
  ListaStr3 := 'False';                           // nincs dátum
  ListaStr4 := '';                                // dátumszûrés esetén a mezõneve
  ListaStr5 :=                                    // SQL string
   'Select ' +
       's.szido,s.enar,F.FNEV  as fajta,s.ivar,e.sv,' +
       'cast((e.valtom - e.szul_suly) as integer) as eletnapitgyar,' +
       's.tkod,s.ignev,s.igcim,s.tnev,s.tcim,' +
       'ap.nev as apanev,ap.szuldat as apaszuldat,ap.kplsz as apakplsz,' +
       'ap.enar as apaenar,apf.fnev as apafajta,e2.sv as apasv,' +
       'cast((e2.valtom - e2.szul_suly) as integer) as apaeletnapitgyar,' +
       's.anyanev,an.szuldat as anyaszuldat,s.anyaazon as anyaENAR,''0'' as anyaEllSzam,' +
       'an.fulszam as anyafulszam,anf.fnev as anyafajta,an.sv as anyaSV,' +
       'ap.apanev as apainagyapanev,ap2.szuldat as apainagyapaSzuldat,' +
       'ap.apakplsz as apainagyapaKPLSZ,ap.apafsz as apainagyapafulszam,' +
       '(Select fnev from fajta where fajta.fkod = ' +
       '(Select fkod from apa where apa.kplsz = ap.apakplsz)) as apai_nagyapa_Fajta,' +
       '''0'' as apainagyapaSV,''0'' as apainagyapaEletnapiTomeg,' +
       'ap2.apakplsz as apainagyapaapjaKPLSZ,ap2.apafsz as apainagyapaapjaFulSzam,' +
       'ap2.apanev as apainagyapaapjanev,' +
       '''0'' as apai_nagyapa_anyja_EllSzam,''0'' as apai_nagyapa_anyja_FulSzam,' +
       'ap2.anyanev as apai_nagyapa_anyja_Nev,' +
       'ap.anyanev as apai_nagyanya_nev,apna.szuldat as apai_nagyanya_SzulDat,' +
       'ap.aenar as apai_nagyanya_enar,ap.aell as apai_nagyanya_EllSzam,' +
       'ap.afsz as apai_nagyanya_FulSzam,''0'' as apai_nagyanya_KombinaltMinInd,' +
       'apna.apaklsz as apai_nagyanya_apja_KPLSZ,apna.apa_fulszam as apai_nagyanya_apja_FulSzam,' +
       '(SELECT nev from apa where apa.kplsz = apna.apaklsz) as apai_nagyanya_apja_Nev,' +
       'apna.anya_enar as apai_nagyanya_anyja_ENAR,apna.anya_ell as apai_nagyanya_anyja_EllSzam,' +
       'e3.fulszam as apai_nagyanya_anyja_FulSzam,e3.nev as apai_nagyanya_anyja_Nev,' +
       'an.nev as anyai_nagyapa_Nev,an.szuldat as anyai_nagyapa_SzulDat,' +
       'an.apaklsz as anyai_nagyapa_KPLSZ,an.apa_fulszam as anyai_nagyapa_FulSzam,' +
       '(Select fnev from fajta where fajta.fkod = an.fajtakod )as anyai_nagyapa_Fajta,' +
       'ap3.apakplsz as anyai_nagyapa_apja_KPLSZ,ap3.apafsz as anyai_nagyapa_apja_FulSzam,' +
       'ap3.apanev as anyai_nagyapa_apja_Nev,' +
       '''0'' as anyai_nagyapa_anyja_EllSzam,''0'' as anyai_nagyapa_anyja_FulSzam,' +
       'ap3.anyanev as anyai_nagyapa_anyja_Nev,' +
       'ana.nev as anyai_nagyanya_Nev,ana.szuldat as anyai_nagyanya_SzulDat,' +
       'an.anya_enar as anyainagyanyaENAR,an.anya_ell as anyainagyanyaEllSzam,' +
       'ana.fulszam as anyai_nagyanya_FullSzam,''0'' as anyai_nagyanya_KombMinInd,' +
       'ana.apaklsz as anyai_nagyanya_apja_KPLSZ,ana.apa_fulszam as anyai_nagyanya_apja_FulSzam,' +
       '(Select nev from apa where apa.kplsz = ana.apaklsz) as anyai_nagyanya_apja_Nev,' +
       'ana.anya_ell as anyai_nagyanya_anyja_EllSzam,' +
       '(Select nev from egyedek Where egyedek.enar = ana.anya_enar) as anyai_nagyanya_anyja_Nev ' +
   'from szarmig s ' +
   'left join egyedek e on e.enar = s.enar ' +
   'left join apa ap on ap.kplsz = s.apakplsz ' +
   'left join egyedek an on an.enar = s.anyaazon ' +
   'left join fajta f on f.fkod = e.fajtakod ' +
   'left join fajta apf on apf.fkod = ap.fkod ' +
   'left join fajta anf on anf.fkod = an.fajtakod ' +
   'left join apa ap2 on ap2.kplsz = ap.apakplsz ' +
   'left join egyedek ana on ana.enar = an.anya_enar ' +
   'left join egyedek apna on apna.enar = ap.aenar ' +
   'left join apa ap3 on ap3.kplsz = an.apaklsz ' +
   'left join egyedek e2 on e2.enar = ap.enar ' +
   'left join egyedek e3 on e3.enar = apna.anya_enar ' +
   'WHERE s.enar = :BikaENAR';

  ParamStr1 := 'BikaENAR';
  ParamStr2 := '';
  ParamStr3 := '';
  ParamStr4 := '';
  ParamStr5 := '';


  FormKepe(ListaStr1, False, False, True);  // Group1 nincs; dátumszûrés nincs; egyed ENAR van

  frmTListak.ShowModal;
  frmTListak.lbBika.Caption := 'bika:';
End;
// ---------------------------------------------------------------------
Procedure TfrmTListak.TenyesztesiNaplo;
Var
  i : Byte;

Begin
  ListaStr1 := 'TENYÉSZTÉSI NAPLÓ';    // megnevezés
  ListaStr2 := 'TenyesztesiNaploNew';     // *.fr3; *.xls név
  ListaStr3 := 'True';                           // nincs dátum
  ListaStr4 := '';                                // dátumszûrés esetén a mezõneve
  ListaStr5 :=                                    // SQL string
     'select E.ENAR, E.SZULDAT, E.NEV, E.ANYA_ENAR, E.APAKLSZ,E.FAJTAKOD, E.SZIN, ' +
     ' cast((select COUNT(*) from ELLESEK E1 where E1.EGYED_ID = ELL.EGYED_ID and E1.ELLES_DATUM <= ELL.ELLES_DATUM ) as integer) as ELLES_SSZ, ' +
     ' ELL.ELLES_DATUM, ' +
     ' case (select BORJAK.BORJU_IVAR from BORJAK where BORJAK.ELLESEK_ID = ELL.id and rownum=1) ' +
     '   when ''1'' then ''B''    when ''2'' then ''Ü''    else ''''  end as BURJU_IVAR, ' +
     ' TT.DATUM, TT.KPLSZ, TT.ALLAPOT, ' +
     ' cast((select COUNT(1) from TERMEKENYITESEK T1 where T1.EGYED_ID = E.id and T1.DATUM > ELL.ELLES_DATUM ) as integer) as TERM_SSZ ' +
     ' from EGYEDEK E ' +
     ' join ELLESEK ELL on ELL.id = ELOZO_ELLES_ID(E.id, TO_DATE(:DATUMTOL1 ,''YYYY.MM.DD'') ) ' +
     ' left join TERMEKENYITESEK TT on TT.id = UT_TERM_DATUM_ELOTTE (E.ID, TO_DATE( ELL.ELLES_DATUM ,''YYYY.MM.DD''), TO_DATE( :DATUMTOL2,''YYYY.MM.DD'') ) ' +
     ' where (E.KIKDAT is null) and E.TENYESZET = :TenyeszetKod ' +
     ' and exists (select 1 from ellesek where ELLESEK.EGYED_ID = E.id and ELLESEK.ELLES_DATUM < TO_DATE(:DATUMTOL3,''YYYY.MM.DD'')) ' +
     ' Order By e.enar';

(*
     ' case (select BORJAK.BORJU_IVAR from BORJAK where BORJAK.ELLESEK_ID = ELL.id and rownum=1) ' +
     '   when ''1'' then ''B''    when ''2'' then ''Ü''    else ''''  end as BURJU_IVAR, ' +
     ' TT.DATUM, TT.KPLSZ, TT.ALLAPOT, ' +
     ' cast((select COUNT(1) from TERMEKENYITESEK T1 where T1.EGYED_ID = E.id and T1.DATUM > ELL.ELLES_DATUM ) as integer) as TERM_SSZ ' +
     ' from EGYEDEK E ' +
     ' join ELLESEK ELL on ELL.id = ELOZO_ELLES_ID(E.id, TO_DATE(:DATUMTOL1 ,''YYYY.MM.DD'') ) ' +
     ' left join TERMEKENYITESEK TT on TT.id = UT_TERM_DATUM_ELOTTE (E.ID, TO_DATE( ELL.ELLES_DATUM ,''YYYY.MM.DD''), TO_DATE( :DATUMTOL2,''YYYY.MM.DD'') ) ' +
     ' where (E.KIKDAT is null) and E.TENYESZET = :TenyeszetKod ' +
     ' and exists (select 1 from ellesek where ELLESEK.EGYED_ID = E.id and ELLESEK.ELLES_DATUM < TO_DATE(:DATUMTOL3,''YYYY.MM.DD'')) ' +
     ' Order By e.enar';
*)

  ParamStr1 := 'TenyeszetKod';
  ParamStr2 := 'DATUMTOL1';
  ParamStr3 := '';
  ParamStr4 := '';
  ParamStr5 := '';

  FormKepe(ListaStr1, False, True, False);  // Group1 nincs; dátumszûrés van; egyed ENAR nincs

  frmTListak.tlbPeldany.Visible := True;
  frmTListak.tlePeldany.Visible := True;

  i := 2;
  If FindComponent('TalEdit' + IntToStr(i)) <> Nil Then
   TTalEdit(FindComponent('TalEdit' + IntToStr(i))).Visible := False;

  For i := 1 To 2 Do
     If FindComponent('TalLabel' + IntToStr(i)) <> Nil Then
      With TTalLabel(FindComponent('TalLabel' + IntToStr(i))) Do
        Visible := False;
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
     TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := TenyesztesiNaploListaNew;

  frmTListak.ShowModal;

  frmTListak.tlbPeldany.Visible := False;
  frmTListak.tlePeldany.Visible := False;

//        **** egy ürlap x példányban történõ nyomtatása  ************    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  If frmTListak.tlePeldany.Value > 0 Then
   Begin
     frmTListak.frxRepListak.PrintOptions.Clear;
     If frmTListak.frxRepListak.LoadFromFile(dtmTarka.fr3Path + '\' + 'TenyesztesiNaploEllenorzes.fr3') Then
      Begin
        frmTListak.frxRepListak.PrintOptions.Copies := StrToInt(frmTListak.tlePeldany.Text);  // példányszám!
        frmTListak.frxRepListak.ShowReport();
        frmTListak.frxRepListak.Print;
      End;
   End;
//        ************************************************************

End;

Procedure TfrmTListak.TenyesztesiNaploLista(Sender: TObject);
Begin
  TenyeszetAdatai;
  frmTListak.frxDBLists.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';
  ListaStr5 :=                                    // SQL string
     'select E.ENAR, E.SZULDAT, E.NEV, E.ANYA_ENAR, E.APAKLSZ,E.FAJTAKOD, E.SZIN, ' +
     ' cast((select COUNT(*) from ELLESEK E1 where E1.EGYED_ID = ELL.EGYED_ID and E1.ELLES_DATUM <= ELL.ELLES_DATUM ) as integer) as ELLES_SSZ, ' +
     ' ELL.ELLES_DATUM, ' +
     ' case (select BORJAK.BORJU_IVAR from BORJAK where BORJAK.ELLESEK_ID = ELL.id and rownum=1) ' +
     '   when ''1'' then ''B''    when ''2'' then ''Ü''    else ''''  end as BURJU_IVAR, ' +
     ' case (select BORJAK.BORJU_IVAR from BORJAK where BORJAK.ID = (select case when max(borjak.id) > min(borjak.id) then max(borjak.id) else null end ' +
     '   from BORJAK where BORJAK.ELLESEK_ID = Ell.id))  ' +
     ' when ''1'' then ''B''    when ''2'' then ''Ü''    else ''''  end as BURJU_IVAR2, ' +
     ' TT.DATUM, TT.KPLSZ, TT.ALLAPOT, ' +
     ' cast((select COUNT(1) from TERMEKENYITESEK T1 where T1.EGYED_ID = E.id and T1.DATUM > ELL.ELLES_DATUM ) as integer) as TERM_SSZ ' +
     ' from EGYEDEK E ' +
     ' join ELLESEK ELL on ELL.id = ELOZO_ELLES_ID(E.id, TO_DATE(' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''YYYY.MM.DD'') ) ' +
     ' left join TERMEKENYITESEK TT on TT.id = UT_TERM_DATUM_ELOTTE (E.ID, TO_DATE(''1980.01.01'',''YYYY.MM.DD''), TO_DATE( ' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''YYYY.MM.DD'') ) ' +
     ' where ((E.KIKDAT is null) or (e.KIKDAT > TO_DATE(' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''YYYY.MM.DD''))) ' +
     ' and E.TENYESZET = ' + quotedstr(dtmTarka.TenyeszetTKOD) +
     ' and exists (select 1 from ellesek where ELLESEK.EGYED_ID = E.id and ELLESEK.ELLES_DATUM < TO_DATE(' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''YYYY.MM.DD'')) ' +
     ' Order By e.enar';

  sdsListak.DataSet.CommandText := ListaStr5;

(*
       ' join ELLESEK ELL on ELL.id = ELOZO_ELLES_ID(E.id, TO_DATE(' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''YYYY.MM.DD'') ) ' +
     ' left join TERMEKENYITESEK TT on TT.id = UT_TERM_DATUM_ELOTTE (E.ID, TO_DATE( ELL.ELLES_DATUM ,''YYYY.MM.DD''), TO_DATE( ' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''YYYY.MM.DD'') ) ' +
     ' where ((E.KIKDAT is null) or (e.KIKDAT > TO_DATE(' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''YYYY.MM.DD''))) ' +
     ' and E.TENYESZET = ' + quotedstr(dtmTarka.TenyeszetTKOD) +
     ' and exists (select 1 from ellesek where ELLESEK.EGYED_ID = E.id and ELLESEK.ELLES_DATUM < TO_DATE(' + quotedstr(TTalEdit(FindComponent('TalEdit1')).Text) + ',''YYYY.MM.DD'')) ' +
*)
//  sdsListak.DataSet.Parameters.ParamByName(ParamStr1).Value := dtmTarka.TenyeszetTKOD ;
//  sdsListak.DataSet.Parameters.ParamByName('DATUMTOL1').Value := quotedstr(TTalEdit(FindComponent('TalEdit1')).Text);
//  sdsListak.DataSet.Parameters.ParamByName('DATUMTOL2').Value := quotedstr(TTalEdit(FindComponent('TalEdit1')).Text);
//  sdsListak.DataSet.Parameters.ParamByName('DATUMTOL3').Value := quotedstr(TTalEdit(FindComponent('TalEdit1')).Text);
//  sdsListak.DataSet.Parameters.ParamByName(ParamStr3).Value := TTalEdit(FindComponent('TalEdit1')).Text;

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepLists.LoadFromFile(dtmTarka.fr3Path + '\' + ListaStr2 +'.fr3') Then Begin
          frmTListak.frxRepLists.Variables.Clear;
          frmTListak.frxRepLists.Script.Variables['p0'] := ListaStr1;
          frmTListak.frxRepLists.Script.Variables['p1'] := dtmTarka.TenyeszetRKOD + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frmTListak.frxRepLists.Script.Variables['p3'] := dtmTarka.TenyeszetTKOD ;
          frmTListak.frxRepLists.Script.Variables['p4'] := param2;
          frmTListak.frxRepLists.Script.Variables['p5'] := param3;
          frmTListak.frxRepLists.Script.Variables['p6'] := dtmTarka.TenyeszetRKOD ;

          frmTListak.frxRepLists.ShowReport();
       End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, ListaStr2 + '.XLS');
  sdsListak.Close;
End;

Procedure TfrmTListak.TenyesztesiNaploListaNew(Sender: TObject);
Var
   Datum: String;
Begin

  Try
    Screen.Cursor := crHourGlass;

    frmTListak.frxDBLists.DataSet := sdsListak;
    If frmTListak.sdsTNaplo.Active Then frmTListak.sdsTNaplo.Close;

//     frmTListak.spTNaplo.ProcedureName := 'TNAPLO_CREATE';
    frmTListak.spTNaplo.Connection := dtmTarka.cnTarka;
    frmTListak.spTNaplo.Parameters.ParamByName('PTENYESZET').Value := frmTListak.cbTenyeszet.Text;
    Datum := TTalEdit(FindComponent('TalEdit1')).Text;
    frmTListak.spTNaplo.Parameters.ParamByName('PTARGYEV').Value := Datum;
    frmTListak.spTNaplo.ExecProc;

    frmTListak.sdsTNaplo.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  Screen.Cursor := crArrow;
  frmTListak.sdsTNaplo.Close;

  if frmTListak.frxTNaplo.LoadFromFile(dtmTarka.fr3Path + '\TenyesztesiNaploNew.fr3') Then
  Begin
     frmTListak.frxTNaplo.Script.Variables['p0'] := ListaStr1;
     frmTListak.frxTNaplo.Script.Variables['p1'] := dtmTarka.TenyeszetRKOD + '   ' +
                                                            param2 + '   ' +
                                                            param3;
     frmTListak.frxTNaplo.Script.Variables['p3'] := dtmTarka.TenyeszetTKOD ;
     frmTListak.frxTNaplo.Script.Variables['p4'] := param2;
     frmTListak.frxTNaplo.Script.Variables['p5'] := param3;
     frmTListak.frxTNaplo.Script.Variables['p6'] := dtmTarka.TenyeszetRKOD ;

     frmTListak.frxTNaplo.ShowReport();
  End;

  frmTListak.sdsTNaplo.Close;
End;

//**********************************************************************

Procedure TfrmTListak.FormKepe(st1 : String; b1, d1, bk : Boolean); // ********
Begin
  // radiogroup1
  sztr[1,0] := '';
  sztr[1,1] := '';
  sztr[1,2] := '';
  // radiogroup2
  sztr[2,0] := 'Lista kimenete';
  sztr[2,1] := 'Lista';
  sztr[2,2] := 'Excel fájl';
  // nyomógombok
  sztr[0,1] := 'Nyomtatás';
  sztr[0,2] := 'Kilépés';

  RadioGroup(2, 2);   // két group két sorral
  If ((FindComponent('RadioGroup' + IntToStr(1)) <> Nil) And Not(b1)) Then
    TRadioGroup(FindComponent('RadioGroup1')).Visible := False;  // csak kimenet

  Nyomogomb(2);
  If FindComponent('btnBitBtn' + IntToStr(1)) <> Nil Then
   TBitBtn(FindComponent('btnBitBtn' + IntToStr(1))).OnClick := ListaKlikk;

  If d1 Then
   Begin
     TalBox('Szûkítés dátuma ');
     TalEdit(2);
     sztr[1,0] := '-tól';
     sztr[2,0] := '-ig';
     TalLabel(2);
   End;

  If bk Then // ****** Bika helyett tehenet /üszõt/ tölt ****
     Begin
       frmTListak.lbTenyeszet.Visible := False;
       frmTListak.cbTenyeszet.Visible := False;

       frmTListak.lbBika.Visible := True;
       frmTListak.lbBika.Caption := 'ENAR:';
       frmTListak.cbBika.Visible := True;
       BikaComboTolt(2);       // tehén ENAR
     End
   Else
     ComboTolt;

  frmTListak.lbListanev.Caption := st1;
End;

Procedure TfrmTListak.ListaKlikk(Sender: TObject);
Begin
  TenyeszetAdatai;

  frmTListak.frxDBListak.DataSet := sdsListak;

//  frmTListak.frxDBLists.DataSet := sdsListak;

  If sdsListak.Active Then sdsListak.Close;
  sdsListak.DataSet.CommandText := '';

  sdsListak.DataSet.CommandText := ListaStr5;

  If frmTListak.cbBika.Visible Then
    sdsListak.DataSet.Parameters.ParamByName(ParamStr1).Value := frmTListak.cbBika.Text;
  If FindComponent('cbTenyeszet') <> Nil Then
    If TComboBox(FindComponent('cbTenyeszet')).Visible Then
      sdsListak.DataSet.Parameters.ParamByName(ParamStr1).Value := TComboBox(FindComponent('cbTenyeszet')).Text;
  If FindComponent('TalEdit1') <> Nil Then
   Begin
     sdsListak.DataSet.Parameters.ParamByName(ParamStr2).Value := TTalEdit(FindComponent('TalEdit1')).Text;
   End;
  If FindComponent('TalEdit2') <> Nil Then
   If TTalEdit(FindComponent('TalEdit2')).Visible Then
     sdsListak.DataSet.Parameters.ParamByName(ParamStr3).Value := TTalEdit(FindComponent('TalEdit2')).Text
     Else
       sdsListak.DataSet.Parameters.ParamByName(ParamStr3).Value := TTalEdit(FindComponent('TalEdit1')).Text;

  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('RadioGroup2' )<> nil) And
       (TRadioGroup(FindComponent('RadioGroup2')).ItemIndex = 0)  Then
     Begin
       If frmTListak.frxRepListak.LoadFromFile(dtmTarka.fr3Path + '\' + ListaStr2 +'.fr3') Then
        Begin
          frmTListak.frxRepListak.Variables.Clear;
          frmTListak.frxRepListak.Script.Variables['p0'] := ListaStr1;
          frmTListak.frxRepListak.Script.Variables['p1'] := param1 + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frmTListak.frxRepListak.Script.Variables['p3'] := param1;
          frmTListak.frxRepListak.Script.Variables['p4'] := param2;
          frmTListak.frxRepListak.Script.Variables['p5'] := param3;
          If ListaStr3 = 'True' Then
            frmTListak.frxRepListak.Script.Variables['p2'] := '(' +
                           TTalEdit(FindComponent('TalEdit1')).Text + '  -  ' +
                           TTalEdit(FindComponent('TalEdit2')).Text + ')    ' +
                           frmTListak.cbBika.Text + ' ' + param5;

          frmTListak.frxRepListak.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, ListaStr2 + '.XLS');
  sdsListak.Close;
End;

procedure TfrmTListak.FormActivate(Sender: TObject);
begin
  sdsListak.Connection := dtmTarka.cnTarka;
  TenyeszetParam;
  If ((frmTListak.cbTenyeszet.Visible) And (frmTListak.cbTenyeszet.Enabled)) Then
     frmTListak.cbTenyeszet.SetFocus
   Else
     If frmTListak.cbBika.Visible Then
      frmTListak.cbBika.SetFocus;
end;

Procedure TfrmTListak.TenyeszetParam;
Begin
  If dtmTarka.TenyeszetWhere <> EmptyStr then
     begin
       frmTListak.cbTenyeszet.Enabled := false;
       // frmTListak.cbTenyeszet.Text := dtmTarka.sdsTenyeszetTKOD.AsString
       frmTListak.cbTenyeszet.Text := dtmTarka.TenyeszetTKOD
     end
   else
     begin
       frmTListak.cbTenyeszet.Enabled := true;
     end;
End;

Procedure TfrmTListak.TenyeszetAdatai;
Begin
  With frmTListak.qListak Do
   Begin
     If Active Then
      Close;
     SQL.Text := 'select tkod, varos, tnev2 from teny Where tkod = ' +
                                        quotedstr(frmTListak.cbTenyeszet.Text);
     Open;
     param1 := Trim(FieldByName('tkod').AsString);
     param2 := Trim(FieldByName('varos').AsString);
     param3 := Trim(FieldByName('tnev2').AsString);

     Close;
   End;
End;

Procedure TfrmTListak.BikaNev;
Begin
  With frmTListak.qListak Do
   Begin
     If Active Then
      Close;
     SQL.Text := 'select nev from apa where kplsz = ' +
                                             quotedstr(frmTListak.cbBika.Text);
     Open;
     param5 := Trim(FieldByName('nev').AsString);

     Close;
   End;
End;

Procedure TfrmTListak.BikaComboTolt(n : Byte);
Begin
  Screen.Cursor := crHourGlass;

  frmTListak.cbBika.Items.Clear;
  With frmTListak.qListak Do
   Begin
     If Active Then
      Close;
     Case n Of
       1 : SQL.Text := 'select DISTINCT(kplsz) from apa Where Length(Trim(kplsz)) = 5 ORDER BY kplsz';
       2 : begin
           if dtmTarka.TenyeszetWhereE <> EmptyStr then begin
              SQL.Text := 'select distinct(e.enar) ' +
                       ' from egyedek e ' +
                       ' where e.ivar = ''2'' and Length(Trim(e.enar)) > 6 ' +
                       dtmTarka.TenyeszetWhereE +
                       ' order by e.enar';
           end else begin
              SQL.Text := 'select distinct(e.enar) ' +
                       'from egyedek e ' +
                       'where e.ivar = ''2'' and Length(Trim(e.enar)) > 6 ' +
                       'order by e.enar';
           end;
         end;
     End;
     Open;
     While Not Eof Do
      Begin
        frmTListak.cbBika.Items.Add(Fields[0].AsString);
        Next;
      End;
     Close;
   End;
  Screen.Cursor := crArrow;
End;

Procedure TfrmTListak.ComboTolt;
Begin
  Screen.Cursor := crHourGlass;
  frmTListak.cbTenyeszet.Items.Clear;
  With frmTListak.qListak Do
   Begin
     If Active Then
      Close;
     SQL.Text := 'select DISTINCT(tkod) from teny ORDER BY tkod';
     Open;
     While Not Eof Do
      Begin
//        frmTListak.cbTenyeszet.Items.Add(FieldByName('tkod').AsString);
        frmTListak.cbTenyeszet.Items.Add(Fields[0].AsString);
        Next;
      End;
     Close;
   End;
  Screen.Cursor := crArrow;
End;

Procedure TfrmTListak.Nyomogomb(n : Byte);
Var                                               // n: számú gomb
  i : Byte;

Begin
  For i := 1 To n Do
   Begin
     gLista := TBitBtn.Create(Self);
     gLista.Name := 'btnBitBtn' + IntToStr(i);
     If FindComponent('btnBitBtn' + IntToStr(i)) <> Nil Then
      With TBitBtn(FindComponent('btnBitBtn' + IntToStr(i))) Do
        Begin
          Caption := sztr[0,i];
          Top := akt_sor + 100;
          Left := 350 + i * 100;
          Parent := Self;
          If i = 2 Then
            OnClick := Kilep;
        End;
   End;
End;

Procedure TfrmTListak.RadioGroup(n, m : Byte);    // n: group db szám
Var                                               // m: gomb szám
  i, j : Byte;

Begin
  For i := 1 To n Do
   Begin
     RRadioGroup := TRadioGroup.Create(Self);
     RRadioGroup.Name := 'RadioGroup' + IntToStr(i);

     If FindComponent('RadioGroup' + IntToStr(i)) <> Nil Then
      With TRadioGroup(FindComponent('RadioGroup' + IntToStr(i))) Do
        Begin
          Caption := sztr[i,0];
          Top := akt_sor + 2 * 60;
          Left := 20 + (i-1) * 300;
          Height := 50;
          Width := 250;
          Parent := Self;

          Items.Clear;
          For j := 1 To m Do
            Items.Add(sztr[i,j]);

          RRadioGroup.Columns := m;
          RRadioGroup.ItemIndex := 0;    // az elsõ elem a jelölt
        End;
   End;
  akt_sor := akt_sor + n *60;
End;

Procedure TfrmTListak.TalBox(cap : String);
Begin
  TTGB := TTalGroupBox.Create(Self);
  TTGB.Name := 'TalGroup1';

  If FindComponent('TalGroup1') <> Nil Then
   With TTalGroupBox(FindComponent('TalGroup1')) Do
     Begin
       Caption := cap;
       Height := 105;
       Left := 40;
       Top := 155;
       Width := 195;
       Parent := Self;
     End;
End;

Procedure TfrmTListak.TalEdit(n : Byte);
Var
  i : Byte;

Begin
  For i := 1 To n Do
   Begin
     TTE := TTalEdit.Create(Self);
     TTE.Name := 'TalEdit' + IntToStr(i);

     If FindComponent('TalEdit' + IntToStr(i)) <> Nil Then
      With TTalEdit(FindComponent('TalEdit' + IntToStr(i))) Do
        Begin
          Text := DateToStr(today);
          Top := 155 + 33 + (i-1) * 32;
          Left := 40 + 48;
          Height := 22;
          Width := 80;
          ButtonVisible := True;
          ReadOnly := False;
          ValueType := etDate;
          Parent := Self;
          If n = 2 Then
           Case i Of
             1 : Text := COPY(DateToStr(Date),1,4)+'.01.01';
             2 : Text := DateToStr(Date);
           End;
        End;
   End;
End;

Procedure TfrmTListak.TalLabel(n : Byte);
Var
  i : Byte;

Begin
  For i := 1 To n Do
   Begin
     TTL := TTalLabel.Create(Self);
     TTL.Name := 'TalLabel' + IntToStr(i);

     If FindComponent('TalLabel' + IntToStr(i)) <> Nil Then
      With TTalLabel(FindComponent('TalLabel' + IntToStr(i))) Do
        Begin
          Caption := sztr[i,0];
          Top := 155 + 36 + (i-1) * 32;
          Left := 40 + 135;
          Height := 16;
          Width := 18;
          Parent := Self;
        End;
   End;
End;

procedure TfrmTListak.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  i : Byte;

begin
  akt_sor := 90;
  frmTListak.lbBika.Visible := False;
  frmTListak.cbBika.Visible := False;
  frmTListak.cbBika.Text := '';

  frmTListak.lbTenyeszet.Visible := True;
  frmTListak.cbTenyeszet.Visible := True;
  frmTListak.cbTenyeszet.Text := '';

  For i := 1 To 3 Do
   Begin
     if FindComponent('Label' + IntToStr(i))<> nil Then
       TLabel(FindComponent('Label' + IntToStr(i))).Free;
     if FindComponent('Edit' + IntToStr(i))<> nil Then
       TEdit(FindComponent('Edit' + IntToStr(i))).Free;
     if FindComponent('RadioGroup' + IntToStr(i))<> nil Then
       TRadioGroup(FindComponent('RadioGroup' + IntToStr(i))).Free;
     If FindComponent('btnBitBtn' + IntToStr(i))<> nil Then
       TBitBtn(FindComponent('btnBitBtn' + IntToStr(i))).Free;
     If FindComponent('TalLabel' + IntToStr(i)) <> Nil Then
       TTalLabel(FindComponent('TalLabel' + IntToStr(i))).Free;
     If FindComponent('TalEdit' + IntToStr(i)) <> Nil Then
       TTalEdit(FindComponent('TalEdit' + IntToStr(i))).Free;
     If FindComponent('TalGroup1') <> Nil Then
       TTalGroupBox(FindComponent('TalGroup1')).Free;
   End;
end;

Procedure TfrmTListak.Kilep(Sender: TObject);
Begin
  frmTListak.Close;
End;




procedure TfrmTListak.cbBikaExit(Sender: TObject);
var
  hh, hid : string;
begin
(*  if Length(cbBika.text) = 4 then begin
    hh := cbBika.text;
    for i := 0 to cbBika.Items.Count -1 do begin
      if Copy(cbBika.Items[i], 6,4) = hh  then begin
        cbBika.Text := cbBika.Items[i];
        exit;
      end;
    end;
  end;
*)
 if dtmTarka.MegsemNyomas(ActiveControl) then exit;

 if lbBika.Caption = 'ENAR:' then begin

   if cbBika.text > EmptyStr then begin
      hh := cbBika.text;
      if not dtmTarka.VaneIlyenEgyed(cbBika.text, hh,hId,false, false) then begin
        hh := '';
        hId := '';
        dtmTarka.MsgDlg('Nincs ilyen egyed!',mterror,[mbOK],0 );
        if cbBika.CanFocus then cbBika.SetFocus;
      end else begin
        cbBika.text := hh;
      end;
   end;
 end;

 if lbBika.Caption = 'bika:' then begin

   if cbBika.text > EmptyStr then begin
      hh := cbBika.text;
      if not dtmTarka.VaneBika(cbBika.text, hid) then begin
        dtmTarka.MsgDlg('Nincs ilyen bika!',mterror,[mbOK],0 );
        if cbBika.CanFocus then cbBika.SetFocus;
      end else begin
        cbBika.text := hh;
      end;
   end;
 end;


end;

procedure TfrmTListak.FormCreate(Sender: TObject);
begin
  akt_sor := 90;

end;

procedure TfrmTListak.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;

end.

