unit QfrmEgyedLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn,
  ExtCtrls, DBClient, uTALSimpleDataSet, DB, ADODB, uTalQuery, frxClass,
  frxDBSet, Mask, uValidedit, uTALEdit, uTALLabel, uTALRadioButton,
  uTALGroupBox, uTALComboBox, frxExportXLS, frxExportHTML, frxExportPDF;

type
  TfrmEgyedLista = class(TfrmNyomtatoOs)
    frxDBLista: TfrxDBDataset;
    qryList: TTalQuery;
    sdsLista: TTalSimpleDataSet;
    TalLabel1: TTalLabel;
    edtEgyedTol: TTalEdit;
    TalLabel2: TTalLabel;
    edtEgyedIg: TTalEdit;
    TalLabel3: TTalLabel;
    edtAnyaTol: TTalEdit;
    TalLabel4: TTalLabel;
    edtAnyaIg: TTalEdit;
    TalLabel5: TTalLabel;
    edtApaTol: TTalEdit;
    TalLabel6: TTalLabel;
    edtApaIg: TTalEdit;
    TalLabel7: TTalLabel;
    edtTenyeszet: TTalEdit;
    edtSzulDatTol: TTalEdit;
    TalLabel8: TTalLabel;
    TalLabel9: TTalLabel;
    edtSzulDatIg: TTalEdit;
    TalLabel10: TTalLabel;
    edtAllDatTol: TTalEdit;
    TalLabel11: TTalLabel;
    edtAllDatIg: TTalEdit;
    TalLabel12: TTalLabel;
    cbIvar: TTalComboBox;
    TalLabel13: TTalLabel;
    cbFajta: TTalComboBox;
    TalGroupBox3: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    TalGroupBox2: TTalGroupBox;
    rbRend2: TTalRadioButton;
    rbRend1: TTalRadioButton;
    TalLabel14: TTalLabel;
    rgListazando2: TTalGroupBox;
    rbCsakElo: TTalRadioButton;
    rbKiesett: TTalRadioButton;
    rbEloEsKiesett: TTalRadioButton;
    TalLabel15: TTalLabel;
    edtKiDatTol: TTalEdit;
    TalLabel16: TTalLabel;
    edtKiDatIg: TTalEdit;
    cbKikkodTol: TTalComboBox;
    cbKikkodIg: TTalComboBox;
    TalLabel17: TTalLabel;
    TalLabel18: TTalLabel;
    cbKikokTol: TTalComboBox;
    cbKikokIg: TTalComboBox;
    TalLabel20: TTalLabel;
    TalLabel21: TTalLabel;
    sdsListaENAR: TWidestringField;
    sdsListaFULSZAM: TWidestringField;
    sdsListaSZULDAT: TDateTimeField;
    sdsListaANYA_ENAR: TWidestringField;
    sdsListaKKOD: TWidestringField;
    sdsListaTKV: TWidestringField;
    sdsListaSV: TSmallintField;
    sdsListaIVAR: TWidestringField;
    sdsListaALLDAT: TDateTimeField;
    sdsListaKIKDAT: TDateTimeField;
    TalLabel22: TTalLabel;
    edtElo: TTalEdit;
    grpTehen: TTalGroupBox;
    rbCsakTehen: TTalRadioButton;
    rbCsakUszo: TTalRadioButton;
    rbUszoEsTehen: TTalRadioButton;
    sdsListaAPAKLSZ: TWideStringField;
    sdsListaKIKOD: TWideStringField;
    sdsListaKIKOK: TWideStringField;
    sdsListaFAJTAKOD: TWideStringField;
    TalLabel23: TTalLabel;
    edtKortol: TTalEdit;
    TalLabel24: TTalLabel;
    edtKorig: TTalEdit;
    TalLabel25: TTalLabel;
    edtValDatTol: TTalEdit;
    TalLabel26: TTalLabel;
    edtValDatIg: TTalEdit;
    TalLabel27: TTalLabel;
    edtKgTol: TTalEdit;
    TalLabel28: TTalLabel;
    edtkgIg: TTalEdit;
    rgAzon: TTalGroupBox;
    rbPsAzon: TTalRadioButton;
    rbEnar: TTalRadioButton;
    rbRend3: TTalRadioButton;
    rbRend4: TTalRadioButton;
    rbRend5: TTalRadioButton;
    sdsListaTENYESZET: TWideStringField;
    sdsListaPS_AZON: TWideStringField;
    sdsListaVALDAT: TDateTimeField;
    sdsListaVALTOM: TIntegerField;
    sdsListaMIN: TBCDField;
    sdsListaELETKOR_NAP: TBCDField;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxRepList: TfrxReport;
    procedure rbKiesettClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure cbIvarCloseUp(Sender: TObject);
  private
    { Private declarations }
    fajtaKod : Array of string;
    sAlapSelect : string;
    procedure ComboTolt;
  public
    { Public declarations }
  end;


procedure EgyedLista;

implementation

uses udtmTarka, Tibor;

{$R *.dfm}

procedure EgyedLista;
var
  frmEgyedLista: TfrmEgyedLista;
begin
  frmEgyedLista := TfrmEgyedLista.Create(Application);
  try
  with frmEgyedLista do begin
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
    if frmEgyedLista.qryList.Active then frmEgyedLista.qryList.Close;
    if frmEgyedLista.sdsLista.Active then frmEgyedLista.sdsLista.Close;
    FreeAndNil(frmEgyedLista);
  end;
end;



procedure TfrmEgyedLista.ComboTolt;
var
  SQL : string;
  i : integer;
begin
  // kikerülés kódja
  SQL:='SELECT DISTINCT EGYEDEK.KIKOD ' +
       'FROM EGYEDEK ' +
       'WHERE EGYEDEK.KIKOD IS NOT NULL ' +
       'ORDER BY EGYEDEK.KIKOD';
  qryList.SQL.Clear;
  qryList.SQL.Add(SQL);
  qryList.Open;

  cbKikkodTol.Items.Clear;
  cbKikkodIg.Items.Clear;

  While Not qryList.Eof Do
   Begin
     cbKikkodTol.Items.Add(qryList.FieldByName('KIKOD').AsString);
     cbKikkodIg.Items.Add(qryList.FieldByName('KIKOD').AsString);
     qryList.Next;
   End;
  qryList.Close;
// kikerülés oka
  SQL:='SELECT DISTINCT EGYEDEK.KIKOK ' +
       'FROM EGYEDEK ' +
       'WHERE EGYEDEK.KIKOK IS NOT NULL ' +
       'ORDER BY EGYEDEK.KIKOK';
  qryList.SQL.Clear;
  qryList.SQL.Add(SQL);
  qryList.Open;

  cbKikokTol.Items.Clear;
  cbKikokIg.Items.Clear;

  While Not qryList.Eof Do
   Begin
     cbKikokTol.Items.Add(qryList.FieldByName('KIKOK').AsString);
     cbKikokIg.Items.Add(qryList.FieldByName('KIKOK').AsString);
     qryList.Next;
   End;
  qryList.Close;

// fajta
  SQL:='select distinct egyedek.FAJTAKOD, CAST(egyedek.FAJTAKOD as varchar(3)) || '' - '' || fajta.FNEV as FNEV ' +
       ' from egyedek ' +
       ' join FAJTA on fajta.FKOD = egyedek.FAJTAKOD ' +
       ' where egyedek.FAJTAKOD is not null ' +
       ' order by 1';
  qryList.SQL.Clear;
  qryList.SQL.Add(SQL);
  qryList.Open;

  cbFajta.Items.Clear;
  SetLength(fajtaKod,0);

  i := 0;
  While Not qryList.Eof Do
   Begin
     cbFajta.Items.Add(qryList.FieldByName('FNEV').AsString);
     SetLength(fajtaKod,i+1);
     fajtaKod[i] := qryList.FieldByName('FAJTAKOD').AsString;
     i := i + 1;
     qryList.Next;
   End;
  qryList.Close;

  edtAllDatTol.Text := '';
  edtAllDatIg.Text := '';
  edtKiDatTol.Text := '';
  edtKiDatIg.Text := '';
  edtValDatTol.Text := '';
  edtValDatIg.Text := '';
  edtSzulDatTol.Text := '';
  edtSzulDatIg.Text := '';
  rbKiesettClick(NIL);
  cbIvarCloseUp(NIL);
  edtElo.Text := '';
end;

procedure TfrmEgyedLista.rbKiesettClick(Sender: TObject);
begin
  inherited;
  if rbKiesett.Checked then begin
    edtKiDatTol.Enabled := true;
    edtKiDatIg.Enabled := true;
    cbKikkodTol.Enabled := true;
    cbKikkodIg.Enabled := true;
    cbKikokTol.Enabled := true;
    cbKikokIg.Enabled := true;
    edtElo.Enabled := false;
  end else begin
    edtKiDatTol.Enabled := False;
    edtKiDatIg.Enabled := False;
    cbKikkodTol.Enabled := False;
    cbKikkodIg.Enabled := False;
    cbKikokTol.Enabled := False;
    cbKikokIg.Enabled := False;
    edtElo.Enabled := true;
  end;
end;

procedure TfrmEgyedLista.actOKExecute(Sender: TObject);
Var
  PlusWhere, Order, sOrder : String;
  feltetelek : String;
begin
  feltetelek := '';
  PlusWhere := '';
  if edtTenyeszet.Text <> EmptyStr then begin
    feltetelek := 'Tenyészet: ' + edtTenyeszet.Text + ' ' + dtmTarka.Vaneenyeszet(edtTenyeszet.Text) + #10;
    PlusWhere := PlusWhere + dtmTarka.TenyeszetWhereE;
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
  // életkor nap
  if edtKortol.Value > 0 then Begin
    feltetelek := feltetelek + 'Életkor nap  >=  ' + edtKortol.Text + #10;
    PlusWhere := PlusWhere + ' and ((CASE WHEN E.KIKDAT IS NULL THEN  round((sysdate -  E.SZULDAT)) ' +
                             ' ELSE round((E.KIKDAT - E.SZULDAT)) end ) >= ' + edtKortol.Text + ')';
  end;
  if edtKorig.Value > 0 then Begin
    feltetelek := feltetelek + 'Életkor nap  <=  ' + edtKorig.Text + #10;
    PlusWhere := PlusWhere + ' and ((CASE WHEN E.KIKDAT IS NULL THEN  round((sysdate -  E.SZULDAT)) ' +
                             ' ELSE round((E.KIKDAT - E.SZULDAT)) end ) <= ' + quotedstr(edtKorig.Text) + ')';
  end;
  // Állományba kerülés dátuma
  if edtAllDatTol.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Állományba kerülés dátuma >=  ' + edtAllDatTol.Text + #10;
    PlusWhere := PlusWhere + ' AND E.ALLDAT >= to_date(' + quotedstr(edtAllDatTol.Text) + ',''yyyy.mm.dd'')';
  end;
  if edtAllDatIg.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Állományba kerülés dátuma <=  ' + edtAllDatIg.Text + #10;
    PlusWhere := PlusWhere + ' AND E.ALLDAT <= to_date(' + quotedstr(edtAllDatIg.Text) + ',''yyyy.mm.dd'')';
  end;
  // Választás dátuma
  if edtValDatTol.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Választás dátuma >=  ' + edtValDatTol.Text + #10;
    PlusWhere := PlusWhere + ' AND E.VALDAT >= to_date(' + quotedstr(edtValDatTol.Text) + ',''yyyy.mm.dd'')';
  end;
  if edtValDatIg.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Választás dátuma <=  ' + edtValDatIg.Text + #10;
    PlusWhere := PlusWhere + ' AND E.VALDAT <= to_date(' + quotedstr(edtValDatIg.Text) + ',''yyyy.mm.dd'')';
  end;

  // Választáskori tömeg
  if edtKgTol.Value <> 0 then Begin
    feltetelek := feltetelek + 'Választáskori tömeg >=  ' + edtKgTol.Text + #10;
    PlusWhere := PlusWhere + ' AND E.VALTOM >= ' + edtKgTol.Text ;
  end;
  if edtkgIg.Value <> 0 then Begin
    feltetelek := feltetelek + 'Választáskori tömeg <=  ' + edtkgIg.Text + #10;
    PlusWhere := PlusWhere + ' AND E.VALTOM <= ' + edtkgIg.Text;
  end;
  // Ivar
  if cbIvar.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Ivar =  ' + cbIvar.Text + #10;
    if cbIvar.ItemIndex = 0 then
      PlusWhere := PlusWhere + ' AND E.IVAR = ''1''';
    if cbIvar.ItemIndex = 1 then
      PlusWhere := PlusWhere + ' AND E.IVAR = ''2''';
  end;
  // Fajta
  if cbFajta.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Fajta =  ' + cbFajta.Text + #10;
//    PlusWhere := PlusWhere + ' AND E.FAJTAKOD = ' + quotedstr(cbFajta.Text);
    PlusWhere := PlusWhere + ' AND E.FAJTAKOD = ' + fajtaKod[cbFajta.ItemIndex];
  end;
  if rbCsakElo.Checked then begin
    feltetelek := feltetelek + 'Csak élõ egyedek' + #10;
    PlusWhere := PlusWhere + ' AND (e.kikdat IS NULL) ' ;
  end;
  if rbKiesett.Checked then begin
    feltetelek := feltetelek + 'Csak kiesett egyedek' + #10;
    PlusWhere := PlusWhere + ' AND E.KIKDAT IS NOT NULL ';
  end;
  // Adott napon élõ
  if edtElo.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Adott napon élõ  : ' + edtElo.Text + #10;
    PlusWhere := PlusWhere + ' AND (KIKDAT IS NULL OR (KIKDAT >= to_date(' + quotedstr(edtElo.Text) + ',''yyyy.mm.dd'')))';
    PlusWhere := PlusWhere + ' AND E.SZULDAT <= to_date(' + quotedstr(edtElo.Text) + ',''yyyy.mm.dd'')';
  End;
  // Kiesés dátuma
  if edtKiDatTol.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Kiesés dátuma >= ' + edtKiDatTol.Text + #10;
    PlusWhere := PlusWhere + ' AND (KIKDAT >= ' + quotedstr(edtKiDatTol.Text) +')';
  End;
  if edtKiDatIg.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Kiesés dátuma <= ' + edtKiDatIg.Text + #10;
    PlusWhere := PlusWhere + ' AND (KIKDAT <= ' + quotedstr(edtKiDatIg.Text) +')';
  End;
  // Kikerülés kódja
  if cbKikkodTol.Text <> EmptyStr then Begin
    feltetelek := feltetelek + 'Kikerülés kódja >= ' + cbKikkodTol.Text + #10;
    PlusWhere := PlusWhere + ' AND (KIKOD >= ' + quotedstr(cbKikkodTol.Text) +')';
  End;
  if cbKikkodIg.Text <> EmptyStr then Begin
    feltetelek := feltetelek + 'Kikerülés kódja <= ' + cbKikkodIg.Text + #10;
    PlusWhere := PlusWhere + ' AND (KIKOD <= ' + quotedstr(cbKikkodIg.Text) +')';
  End;
  // Kikerülés oka
  if cbKikokTol.Text <> EmptyStr then Begin
    feltetelek := feltetelek + 'Kikerülés oka >= ' + cbKikokTol.Text + #10;
    PlusWhere := PlusWhere + ' AND (KIKOK >= ' + quotedstr(cbKikokTol.Text) +')';
  End;
  if cbKikokIg.Text <> EmptyStr then Begin
    feltetelek := feltetelek + 'Kikerülés oka <= ' + cbKikokIg.Text + #10;
    PlusWhere := PlusWhere + ' AND (KIKOK <= ' + quotedstr(cbKikokIg.Text) +')';
  End;
  if rbCsakTehen.Checked and grpTehen.Enabled then begin
    feltetelek := feltetelek + 'Csak tehén' + #10;
    PlusWhere := PlusWhere + '  AND E.IVAR = ''2'' AND EXISTS (SELECT 1 FROM ELLESEK WHERE ELLESEK.EGYED_ID = E.ID) ';
  end;
  if rbCsakUszo.Checked and grpTehen.Enabled then begin
    feltetelek := feltetelek + 'Csak üszõ' + #10;
    PlusWhere := PlusWhere + ' AND E.IVAR = ''2'' AND NOT EXISTS (SELECT 1 FROM ELLESEK WHERE ELLESEK.EGYED_ID = E.ID) ';
  end;
  if rbRend1.Checked then begin
    if rbEnar.Checked then
      order := ' ORDER BY E.ENAR '
    else
      order := ' order by SUBSTR(e.ENAR,6,4) ';
    sOrder := rbRend1.Caption;
  end;
  if rbRend2.Checked then begin
    if rbEnar.Checked then
      order := ' ORDER BY E.SZULDAT, E.ENAR '
    else
      order := ' ORDER BY E.SZULDAT, SUBSTR(e.ENAR,6,4) ';
    sOrder := rbRend2.Caption;
  end;
  if rbRend3.Checked then begin
    if rbEnar.Checked then
      order := ' ORDER BY E.APAKLSZ, E.ENAR '
    else
      order := ' ORDER BY E.APAKLSZ, SUBSTR(e.ENAR,6,4) ';
    sOrder := rbRend3.Caption;
  end;
  if rbRend4.Checked then begin
    order := ' ORDER BY E.SZULDAT, E.ENAR ';
    sOrder := rbRend4.Caption;
  end;
  if rbRend5.Checked then begin
    order := ' ORDER BY E.VALTOM DESC ';
    sOrder := rbRend5.Caption;
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
    If frxRepList.LoadFromFile(dtmTarka.fr3Path + '\EgyedListaF.fr3') Then Begin
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
    dtmTarka.ExcelExport(sdsLista, 'egyedek.xls');
  end;
  sdsLista.Close;

end;


procedure TfrmEgyedLista.cbIvarCloseUp(Sender: TObject);
begin
  if cbIvar.ItemIndex = 0 then begin
    grpTehen.Enabled := false;
  end else begin
    grpTehen.Enabled := true;  
  end;
end;

end.
