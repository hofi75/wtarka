unit qfrmEllesLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn,
  ExtCtrls, frxClass, frxDBSet, DB, DBClient, uTALSimpleDataSet, ADODB,
  uTalQuery, uTALCheckBox, uTALGroupBox, uTALRadioGroup, uTALComboBox,
  Mask, uValidedit, uTALEdit, uTALLabel;

type
  TfrmEllesLista = class(TfrmNyomtatoOs)
    Label3: TLabel;
    TalLabel4: TTalLabel;
    TalLabel5: TTalLabel;
    Label2: TLabel;
    TalLabel8: TTalLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    rbOsszes: TRadioButton;
    rbElo: TRadioButton;
    edtEllDatTol: TTalEdit;
    edtEllDatIg: TTalEdit;
    cbEllesLefTol: TTalComboBox;
    cbEllesLefIg: TTalComboBox;
    cbKiKod: TTalComboBox;
    cbKiOk: TTalComboBox;
    cbBorjuIvar: TTalComboBox;
    rbRendezettseg: TTalRadioGroup;
    gbKimenet: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    cbElso: TTalCheckBox;
    TalLabel24: TTalLabel;
    TalLabel25: TTalLabel;
    TalLabel26: TTalLabel;
    TalLabel2: TTalLabel;
    edtEgyedTol: TTalEdit;
    edtEgyedIg: TTalEdit;
    edtTenyeszet: TTalEdit;
    qrySeged: TTalQuery;
    sdsLista: TTalSimpleDataSet;
    frxDBLista: TfrxDBDataset;
    sdsListaENAR: TWidestringField;
    sdsListaE_TERM_DAT: TDateTimeField;
    sdsListaE_TERM_ID: TBCDField;
    sdsListaELLES_DATUM: TDateTimeField;
    sdsListaELLES_LEF: TWidestringField;
    sdsListaBORJU_IVAR: TWidestringField;
    sdsListaBORJU_SZIN: TWidestringField;
    sdsListaBORJU_ENAR: TWidestringField;
    sdsListaBORJU_SSZ: TBCDField;
    sdsListaBORJU_SULY: TBCDField;
    sdsListaBORJU_KIESES_KOD: TWideStringField;
    sdsListaBORJU_KIESES_OK: TWideStringField;
    sdsListaKPLSZ: TWideStringField;
    frxRepLista: TfrxReport;
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
    sAlapSelect : string;
    procedure ComboTolt;
  public
    { Public declarations }
  end;


Procedure ListakEllesek;

implementation

uses udtmTarka;

{$R *.dfm}

Procedure ListakEllesek;
var
  frmEllesLista: TfrmEllesLista;
begin
  frmEllesLista := TfrmEllesLista.Create(Application);
  with frmEllesLista do begin
     qrySeged.Connection := dtmTarka.cnTarka;
     sdsLista.Connection := dtmTarka.cnTarka;
     sAlapSelect := sdsLista.DataSet.CommandText;
     edtEllDatTol.Text:=DateToStr(Date);
     edtEllDatIg.Text:=DateToStr(Date);
     if dtmTarka.TenyeszetWhere <> EmptyStr then begin
       edtTenyeszet.Enabled := false;
       edtTenyeszet.Text := dtmTarka.TenyeszetTKOD;
       // edtTenyeszet.Text := dtmTarka.sdsTenyeszetTKOD.AsString
     end else begin
       edtTenyeszet.Enabled := true;
     end;

     try
       ComboTolt;
       ShowModal;
     finally
       if sdsLista.Active then sdsLista.Close;
       FreeAndNil(frmEllesLista);
     end;
  end;
end;


{ TfrmEllesLista }

procedure TfrmEllesLista.ComboTolt;
var
  SQL : String;
begin
     SQL:='SELECT DISTINCT ELLESEK.ELLES_LEF ' +
          'FROM ELLESEK ' +
          'ORDER BY ELLESEK.ELLES_LEF';

     cbEllesLefTol.Items.Clear;
     cbEllesLefIg.Items.Clear;
     While Not qrySeged.Eof Do Begin
       cbEllesLefTol.Items.Add(qrySeged.Fields[0].AsString);
       cbEllesLefIg.Items.Add(qrySeged.Fields[0].AsString);
       qrySeged.Next;
     End;
     qrySeged.Close;

     // borjú kiesés kód
     SQL:='SELECT DISTINCT BORJAK.BORJU_KIESES_KOD ' +
          'FROM BORJAK ' +
          'ORDER BY BORJAK.BORJU_KIESES_KOD';

     qrySeged.SQL.Clear;
     qrySeged.SQL.Add(SQL);
     qrySeged.Open;

     cbKiKod.Items.Clear;
     While Not qrySeged.Eof Do Begin
       cbKiKod.Items.Add(qrySeged.Fields[0].AsString);
       qrySeged.Next;
     End;
     qrySeged.Close;

      // borjú kiesés ok
     SQL:='SELECT DISTINCT BORJAK.BORJU_KIESES_OK ' +
          'FROM BORJAK ' +
          'ORDER BY BORJAK.BORJU_KIESES_OK';

     qrySeged.SQL.Clear;
     qrySeged.SQL.Add(SQL);
     qrySeged.Open;

     cbKiOk.Items.Clear;
     While Not qrySeged.Eof Do Begin
        cbKiOk.Items.Add(qrySeged.Fields[0].AsString);
        qrySeged.Next;
     End;
     qrySeged.Close;

     // borjú ivar
     SQL:='SELECT DISTINCT BORJAK.BORJU_IVAR ' +
          'FROM BORJAK ' +
          'ORDER BY BORJAK.BORJU_IVAR';

     qrySeged.SQL.Clear;
     qrySeged.SQL.Add(SQL);
     qrySeged.Open;

     cbBorjuIvar.Items.Clear;
     While Not qrySeged.Eof Do Begin
        cbBorjuIvar.Items.Add(qrySeged.Fields[0].AsString);
        qrySeged.Next;
     End;
     qrySeged.Close;
end;



procedure TfrmEllesLista.actOKExecute(Sender: TObject);
Var
  PlusWhere, Order, sOrder : String;
  feltetelek : String;
begin
  feltetelek := '';
  PlusWhere := '';
  if edtTenyeszet.Text <> EmptyStr then begin
    feltetelek := 'Tenyészetkód: ' + edtTenyeszet.Text + #10;
    PlusWhere := PlusWhere + dtmTarka.TenyeszetWhereS;
  end;
  if edtEgyedTol.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Egyed ENAR >=  ' + edtEgyedTol.Text + #10;
    PlusWhere := PlusWhere + ' AND EGYEDEK.ENAR >= ' + quotedstr(edtEgyedTol.Text);
  end;
  if edtEgyedIg.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Egyed ENAR <=  ' + edtEgyedIg.Text + #10;
    PlusWhere := PlusWhere + ' AND EGYEDEK.ENAR <= ' + quotedstr(edtEgyedIg.Text);
  end;
  if rbElo.Checked then begin
    feltetelek := feltetelek + 'Csak élõ tehén' + #10;
    PlusWhere := PlusWhere + ' AND ((EGYEDEK.KIKOD IS NULL) OR (EGYEDEK.KIKOK='''') OR (EGYEDEK.KIKOK=''0''     ))    ';
  end;
  if cbElso.Checked  then begin
    feltetelek := feltetelek + 'Csak az elsõborjas egyedek ' + #10;
    PlusWhere := PlusWhere + ' AND ((SELECT count(1) FROM ELLESEK WHERE ELLESEK.EGYED_ID = EGYEDEK.ID)=1) ';
  end;
  // Ellés dátuma
  if edtEllDatTol.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Ellés dátuma >=  ' + edtEllDatTol.Text + #10;
    PlusWhere := PlusWhere + ' AND ELLESEK.ELLES_DATUM >= TO_date(' + quotedstr(edtEllDatTol.Text) + ',''yyyy.mm.dd'')';
  end;
  if edtEllDatIg.Text <> '    .  .  ' then Begin
    feltetelek := feltetelek + 'Ellés dátuma <=  ' + edtEllDatIg.Text + #10;
    PlusWhere := PlusWhere + ' AND ELLESEK.ELLES_DATUM <= TO_date(' + quotedstr(edtEllDatIg.Text) + ',''yyyy.mm.dd'')';
  end;
  // Ellés lefolyása kód
  if cbEllesLefTol.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Ellés lefolyása kód >= ' + cbEllesLefTol.Text + #10;
    PlusWhere := PlusWhere + ' AND ELLESEK.ELLES_LEF >= ' + quotedstr(cbEllesLefTol.Text);
  end;
  if cbEllesLefIg.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Ellés lefolyása kód <= ' + cbEllesLefIg.Text + #10;
    PlusWhere := PlusWhere + ' AND ELLESEK.ELLES_LEF <= ' + quotedstr(cbEllesLefIg.Text);
  end;
  // Borjú kiesés kódja
  if cbKiKod.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Borjú kiesés kódja kód = ' + cbKiKod.Text + #10;
    PlusWhere := PlusWhere + ' AND BORJAK.BORJU_KIESES_KOD = ' + quotedstr(cbKiKod.Text);
  end;
  // Borjú kiesés ok kódja
  if cbKiOk.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Borjú kiesés ok kód = ' + cbKiKod.Text + #10;
    PlusWhere := PlusWhere + ' AND BORJAK.BORJU_KIESES_OK = ' + quotedstr(cbKiKod.Text);
  end;
  // Borjú ivar
  if cbBorjuIvar.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Borjú ivar =  ' + cbBorjuIvar.Text + #10;
    PlusWhere := PlusWhere + ' AND BORJAK.BORJU_IVAR = ' + quotedstr(cbBorjuIvar.Text);
  end;

  if rbRendezettseg.ItemIndex = 0 then begin
    order := ' ORDER BY EGYEDEK.ENAR ';
    sOrder := rbRendezettseg.Items[0];
  end;
  if rbRendezettseg.ItemIndex = 1 then begin
    order := ' ORDER BY ELLESEK.ELLES_DATUM, EGYEDEK.ENAR ';
    sOrder := rbRendezettseg.Items[1];
  end;
  frxDBLista.DataSet := sdsLista;
  if sdsLista.Active then sdsLista.Close;
  sdsLista.DataSet.CommandText := sAlapSelect + PlusWhere + Order;
  try
    Screen.Cursor := crHourGlass;
    sdsLista.Open;
  finally
    Screen.Cursor := crArrow;
  end;

  if rbLista.Checked then begin
    If frxRepLista.LoadFromFile(dtmTarka.fr3Path + '\Ellesek.fr3') Then Begin
       // paraméter átadás a lista fejhez
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['SzuroFeltetelek'] := feltetelek;
       frxRepLista.Script.Variables['Rendezettseg'] := sOrder;
       frxRepLista.ShowReport;
     End;
  end else begin
    dtmTarka.ExcelExport(sdsLista, 'termekenyitesek.xls');
  end;
  sdsLista.Close;
end;

end.
