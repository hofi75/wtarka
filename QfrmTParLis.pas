unit QfrmTParLis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, frxExportXLS, frxExportHTML, frxClass, frxExportPDF,
  frxDBSet, DB, DBClient, uTALSimpleDataSet, ADODB, uTalQuery,
  uTALRadioButton, StdCtrls, uTALGroupBox, uTALComboBox, Mask, uValidedit,
  uTALEdit, uTALLabel, ActnList, Buttons, uTALBitBtn, ExtCtrls, DBCtrls,
  uTALDBLookupComboBox;

type
  TfrmTParLis = class(TfrmKarbOs)
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    TalLabel3: TTalLabel;
    TalLabel4: TTalLabel;
    TalLabel5: TTalLabel;
    TalLabel6: TTalLabel;
    TalLabel7: TTalLabel;
    TalLabel8: TTalLabel;
    TalLabel13: TTalLabel;
    TalLabel14: TTalLabel;
    TalLabel16: TTalLabel;
    edtEgyedTol: TTalEdit;
    edtEgyedIg: TTalEdit;
    edtAnyaTol: TTalEdit;
    edtAnyaIg: TTalEdit;
    edtApaTol: TTalEdit;
    edtApaIg: TTalEdit;
    edtTenyeszet: TTalEdit;
    edtSzulDatTol: TTalEdit;
    edtSzulDatIg: TTalEdit;
    cbKonsTol: TTalComboBox;
    TalGroupBox3: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    TalGroupBox2: TTalGroupBox;
    rbRend2: TTalRadioButton;
    rbRend1: TTalRadioButton;
    rbRend3: TTalRadioButton;
    rgListazando2: TTalGroupBox;
    rbCsakElo: TTalRadioButton;
    rbKiesett: TTalRadioButton;
    rbEloEsKiesett: TTalRadioButton;
    edtKiDatTol: TTalEdit;
    edtKiDatIg: TTalEdit;
    rgAzon: TTalGroupBox;
    rbPsAzon: TTalRadioButton;
    rbEnar: TTalRadioButton;
    qryList: TTalQuery;
    sdsLista: TTalSimpleDataSet;
    frxDBLista: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    ActionList2: TActionList;
    Action1: TAction;
    Action2: TAction;
    TalLabel15: TTalLabel;
    TalLabel10: TTalLabel;
    cbKonsIg: TTalComboBox;
    TalLabel9: TTalLabel;
    TalLabel11: TTalLabel;
    cbFajtaTol: TTalComboBox;
    TalLabel12: TTalLabel;
    cbFajtaIg: TTalComboBox;
    TalLabel19: TTalLabel;
    edtEllDatTol: TTalEdit;
    TalLabel22: TTalLabel;
    edtEllDatIg: TTalEdit;
    TalLabel23: TTalLabel;
    edtEllDbTol: TTalEdit;
    TalLabel24: TTalLabel;
    edtEllDbIg: TTalEdit;
    sdsListaTENYESZET: TWideStringField;
    sdsListaENAR: TWideStringField;
    sdsListaPS_AZON: TWideStringField;
    sdsListaSZULDAT: TDateTimeField;
    sdsListaANYA_ENAR: TWideStringField;
    sdsListaAPAKLSZ: TWideStringField;
    sdsListaKKOD: TWideStringField;
    sdsListaFAJTAKOD: TWideStringField;
    sdsListaKIKDAT: TDateTimeField;
    sdsListaKIKOD: TWideStringField;
    sdsListaKIKOK: TWideStringField;
    sdsListaELSO_ELLES_NAP: TDateTimeField;
    sdsListaELLES_DATUM: TDateTimeField;
    sdsListaELLES_LEF: TWideStringField;
    sdsListaDATUM: TDateTimeField;
    sdsListaUT_ELLES_DATUM: TDateTimeField;
    sdsListaELLES_SSZ: TBCDField;
    sdsListaKEK: TBCDField;
    sdsListaELLES_DB: TBCDField;
    sdsListaTERM_DB: TBCDField;
    sdsListaELSO_ELLES_KOR: TBCDField;
    frxRepList: TfrxReport;
    procedure rbKiesettClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
    sAlapSelect : string;
    fajtaKod : Array of string;
    KonsKod : Array of string;
    procedure ComboTolt;
  public
    { Public declarations }
  end;


procedure TParLista;

implementation

uses udtmTarka;

{$R *.dfm}

procedure TParLista;
var
  frmTParLis: TfrmTParLis;
begin
  frmTParLis := TfrmTParLis.Create(Application);
  try
  with frmTParLis do begin
    sdsLista.Connection := dtmTarka.cnTarka;
    qryList.Connection := dtmTarka.cnTarka;
    sAlapSelect := sdsLista.DataSet.CommandText;
    comboTolt;
    if dtmTarka.TenyeszetWhere <> EmptyStr then begin
      edtTenyeszet.Enabled := false;
      edtTenyeszet.Text := dtmTarka.TenyeszetTKOD
    end else begin
      edtTenyeszet.Enabled := true;
    end;
    ShowModal;
  end;
  finally
    if frmTParLis.qryList.Active then frmTParLis.qryList.Close;
    if frmTParLis.sdsLista.Active then frmTParLis.sdsLista.Close;
    FreeAndNil(frmTParLis);
  end;
end;



procedure TfrmTParLis.ComboTolt;
var
  SQL : string;
  i : integer;
begin
// fajta
  SQL:='select distinct egyedek.FAJTAKOD, CAST(egyedek.FAJTAKOD as varchar(3)) || '' - '' || fajta.FNEV as FNEV ' +
       ' from egyedek ' +
       ' join FAJTA on fajta.FKOD = egyedek.FAJTAKOD ' +
       ' where egyedek.FAJTAKOD is not null ' +
       ' order by 1';
  qryList.SQL.Clear;
  qryList.SQL.Add(SQL);
  qryList.Open;

  cbFajtaTol.Items.Clear;
  cbFajtaIg.Items.Clear;
  SetLength(fajtaKod,0);

  i := 0;
  While Not qryList.Eof Do
   Begin
     cbFajtaTol.Items.Add(qryList.FieldByName('FNEV').AsString);
     cbFajtaIg.Items.Add(qryList.FieldByName('FNEV').AsString);
     SetLength(fajtaKod,i+1);
     fajtaKod[i] := qryList.FieldByName('FAJTAKOD').AsString;
     i := i + 1;
     qryList.Next;
   End;
  qryList.Close;

  // Konstrukciós kód
  SQL:='select distinct EGYEDEK.KKOD, CAST(egyedek.KKOD as varchar(3)) || '' - '' || KODOK.KOD_NEV as KNEV ' +
       ' FROM EGYEDEK ' +
       ' join KODOK on KODOK.KOD = egyedek.KKOD AND KODOK.KODTIPUSOK_TIPUSKOD = ''KONSTR'' ' +
       ' where egyedek.KKOD is not null ' +
       ' order by 1';
  qryList.SQL.Clear;
  qryList.SQL.Add(SQL);
  qryList.Open;

  cbKonsTol.Items.Clear;
  cbKonsIg.Items.Clear;
  SetLength(KonsKod,0);

  i := 0;
  While Not qryList.Eof Do
   Begin
     cbKonsTol.Items.Add(qryList.FieldByName('KNEV').AsString);
     cbKonsIg.Items.Add(qryList.FieldByName('KNEV').AsString);
     SetLength(KonsKod,i+1);
     KonsKod[i] := qryList.FieldByName('KKOD').AsString;
     i := i + 1;
     qryList.Next;
   End;
  qryList.Close;
  edtEllDatTol.Text := '';
  edtEllDatIg.Text := '';
  edtKiDatTol.Text := '';
  edtKiDatIg.Text := '';
  edtSzulDatTol.Text := '';
  edtSzulDatIg.Text := '';
  rbKiesettClick(NIL);
end;



procedure TfrmTParLis.rbKiesettClick(Sender: TObject);
begin
  inherited;
  if rbKiesett.Checked then begin
    edtKiDatTol.Enabled := true;
    edtKiDatIg.Enabled := true;
  end else begin
    edtKiDatTol.Enabled := False;
    edtKiDatIg.Enabled := False;
  end;
end;



procedure TfrmTParLis.actOKExecute(Sender: TObject);
Var
  PlusWhere, Order, sOrder : String;
  feltetelek : String;
begin
  feltetelek := '';
  PlusWhere := '';
  if edtTenyeszet.Text <> EmptyStr then begin
    feltetelek := 'Tenyészet: ' + edtTenyeszet.Text + ' ' + dtmTarka.Vaneenyeszet(edtTenyeszet.Text) + #10;
    PlusWhere := PlusWhere + ' AND E.TENYESZET = ' + quotedstr(dtmTarka.TenyeszetTKOD);
  end;
  if edtEgyedTol.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Egyed ENAR >=  ' + edtEgyedTol.Text + #10;
    PlusWhere := PlusWhere + ' AND E.ENAR >= ' + quotedstr(edtEgyedTol.Text);
  end;
  if edtEgyedIg.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Egyed ENAR <=  ' + edtEgyedIg.Text + #10;
    PlusWhere := PlusWhere + ' AND E.ENAR <= ' + quotedstr(edtEgyedIg.Text);
  end;
  if edtAnyaTol.Text > EmptyStr then begin
    feltetelek := feltetelek + 'ANYA-ENAR >=  ' + edtAnyaTol.Text + #10;
    PlusWhere := PlusWhere + ' AND E.ANYA_ENAR >= ' + quotedstr(edtAnyaTol.Text);
  end;
  if edtAnyaIg.Text > EmptyStr then begin
    feltetelek := feltetelek + 'ANYA-ENAR <=  ' + edtAnyaIg.Text + #10;
    PlusWhere := PlusWhere + ' AND E.ANYA_ENAR <> ' + quotedstr(edtAnyaIg.Text);
  end;
  if edtApaTol.Text > EmptyStr then begin
    feltetelek := feltetelek + 'APA-KLSZ >=  ' + edtApaTol.Text + #10;
    PlusWhere := PlusWhere + ' AND E.APAKLSZ >= ' + quotedstr(edtApaTol.Text);
  end;
  if edtApaIg.Text > EmptyStr then begin
    feltetelek := feltetelek + 'APA-KLSZ <=  ' + edtApaIg.Text + #10;
    PlusWhere := PlusWhere + ' AND E.APAKLSZ <= ' + quotedstr(edtApaIg.Text);
  end;
  // születési idõ
  if edtSzulDatTol.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Születés dátuma >=  ' + edtSzulDatTol.Text + #10;
    PlusWhere := PlusWhere + ' AND E.SZULDAT >= to_date(' + quotedstr(edtSzulDatTol.Text) + ',''yyyy.mm.dd'')';
  end;
  if edtSzulDatIg.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Születés dátuma <=  ' + edtSzulDatIg.Text + #10;
    PlusWhere := PlusWhere + ' AND E.SZULDAT <= to_date(' + quotedstr(edtSzulDatIg.Text) + ',''yyyy.mm.dd'')';
  end;
  // Fajta
  if cbFajtaTol.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Fajta >=  ' + cbFajtaTol.Text + #10;
    PlusWhere := PlusWhere + ' AND E.FAJTAKOD >= ' + quotedstr(fajtaKod[cbFajtaTol.ItemIndex]);
  end;
  if cbFajtaIg.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Fajta <=  ' + cbFajtaIg.Text + #10;
    PlusWhere := PlusWhere + ' AND E.FAJTAKOD <= ' + quotedstr(fajtaKod[cbFajtaIg.ItemIndex]);
  end;
  // Konstrukciós kód
  if cbKonsTol.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Konstrukciós kód >=  ' + cbKonsTol.Text + #10;
    PlusWhere := PlusWhere + ' AND E.KKOD >= ' + quotedstr(KonsKod[cbKonsTol.ItemIndex]);
  end;
  if cbKonsIg.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Konstrukciós kód <=  ' + cbKonsIg.Text + #10;
    PlusWhere := PlusWhere + ' AND E.KKOD <= ' + quotedstr(KonsKod[cbKonsIg.ItemIndex]);
  end;

  if rbCsakElo.Checked then begin
    feltetelek := feltetelek + 'Csak élõ egyedek' + #10;
    PlusWhere := PlusWhere + ' AND (e.kikdat IS NULL) ' ;
  end;
  if rbKiesett.Checked then begin
    feltetelek := feltetelek + 'Csak kiesett egyedek' + #10;
    PlusWhere := PlusWhere + ' AND E.KIKDAT IS NOT NULL ';
  end;
  // Utolsó ellés dátuma
  if edtEllDatTol.Text <>  '    .  .  ' then begin
    feltetelek := feltetelek + 'Utolsó ellés dátuma >= ' + edtEllDatTol.Text + #10;
    PlusWhere := PlusWhere + ' AND UT_ELLES_DATUM(E0.EGYED_ID) >= to_date(' + quotedstr(edtEllDatTol.Text) +',''YYYY.MM.DD'')';
  end;
  if edtEllDatIg.Text <>  '    .  .  ' then begin
    feltetelek := feltetelek + 'Utolsó ellés dátuma <= ' + edtEllDatIg.Text + #10;
    PlusWhere := PlusWhere + ' AND UT_ELLES_DATUM(E0.EGYED_ID) <= to_date(' + quotedstr(edtEllDatIg.Text) +',''YYYY.MM.DD'')';
  end;
  // Ellések darabszáma
  if edtEllDbTol.Value > 0 then begin
    feltetelek := feltetelek + 'Ellések száma >= ' + edtEllDbTol.Text + #10;
    PlusWhere := PlusWhere + ' and (SELECT COUNT(*) FROM ELLESEK WHERE ELLESEK.EGYED_ID = E0.EGYED_ID) >= ' + edtEllDbTol.Text;
  end;
  if edtEllDbIg.Value > 0 then begin
    feltetelek := feltetelek + 'Ellések száma <= ' + edtEllDbIg.Text + #10;
    PlusWhere := PlusWhere + ' and (SELECT COUNT(*) FROM ELLESEK WHERE ELLESEK.EGYED_ID = E0.EGYED_ID) <= ' + edtEllDbIg.Text;
  end;

  // Kiesés dátuma
  if edtKiDatTol.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Kiesés dátuma >= ' + edtKiDatTol.Text + #10;
    PlusWhere := PlusWhere + ' AND KIKDAT >= to_date(' + quotedstr(edtKiDatTol.Text)+ ',''YYYY.MM.DD'')';
  End;
  if edtKiDatIg.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Kiesés dátuma <= ' + edtKiDatIg.Text + #10;
    PlusWhere := PlusWhere + ' AND KIKDAT <= to_date(' + quotedstr(edtKiDatIg.Text) + ',''YYYY.MM.DD'')';
  End;
  if rbRend1.Checked then begin
    if rbEnar.Checked then
      order := ' ORDER BY E.ENAR, E0.ELLES_DATUM '
    else
      order := ' order by SUBSTR(e.ENAR,6,4), E0.ELLES_DATUM ';
    sOrder := rbRend1.Caption;
  end;
  if rbRend2.Checked then begin
    if rbEnar.Checked then
      order := ' ORDER BY E.SZULDAT, E.ENAR, E0.ELLES_DATUM '
    else
      order := ' ORDER BY E.SZULDAT, SUBSTR(e.ENAR,6,4), E0.ELLES_DATUM ';
    sOrder := rbRend2.Caption;
  end;
  if rbRend3.Checked then begin
    if rbEnar.Checked then
      order := ' ORDER BY E.APAKLSZ, E.ENAR, E0.ELLES_DATUM '
    else
      order := ' ORDER BY E.APAKLSZ, SUBSTR(e.ENAR,6,4), E0.ELLES_DATUM ';
    sOrder := rbRend3.Caption;
  end;
  frxDBLista.DataSet := sdsLista;
  sdsLista.DataSet.CommandText := sAlapSelect + PlusWhere + Order;
  try
    Screen.Cursor := crHourGlass;
    sdsLista.Open;
  finally
    Screen.Cursor := crArrow;
  end;

  if rbLista.Checked then begin
    If frxRepList.LoadFromFile(dtmTarka.fr3Path + '\TParLis.fr3') Then Begin
       // paraméter átadás a lista fejhez
       frxRepList.Variables.Clear;
       frxRepList.Script.Variables['SzuroFeltetelek'] := feltetelek;
       frxRepList.Script.Variables['Rendezettseg'] := sOrder;
       if rbEnar.Checked then
         frxRepList.Script.Variables['PSION']:= 'NEM'
       else
         frxRepList.Script.Variables['PSION']:= 'IGEN';
       frxRepList.ShowReport;
     End;
  end else begin
    dtmTarka.ExcelExport(sdsLista, 'tparlis.xls');
  end;
  sdsLista.Close;

end;

end.
