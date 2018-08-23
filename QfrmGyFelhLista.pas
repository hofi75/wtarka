unit QfrmGyFelhLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, StdCtrls, Mask, uValidedit, uTALEdit, uTALLabel,
  ActnList, Buttons, uTALBitBtn, ExtCtrls, uTALRadioButton, uTALGroupBox,
  uTALComboBox, uTALSpeedButton, uDBValidedit, uTALDBEdit, ADODB, DateUtils,
  uTalQuery, frxClass, frxDBSet, DB, DBClient, uTALSimpleDataSet;

type
  TfrmGyFelhLista = class(TfrmNyomtatoOs)
    TalLabel1: TTalLabel;
    edtDatTol: TTalEdit;
    TalLabel3: TTalLabel;
    edtDatIg: TTalEdit;
    Label9: TTalLabel;
    edtGyogyszerKod: TTalDBEdit;
    btnGyogyszer: TTalSpeedButton;
    edtGyogyszerNev: TTalDBEdit;
    TalLabel6: TTalLabel;
    cbBetTipSzuro: TTalComboBox;
    TalGroupBox5: TTalGroupBox;
    rbR2: TTalRadioButton;
    rbR1: TTalRadioButton;
    TalGroupBox3: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    sdsKeszlet: TTalSimpleDataSet;
    dtsKeszlet: TDataSource;
    frxDBKeszlet: TfrxDBDataset;
    sdsBetTip: TTalQuery;
    StringField33: TWidestringField;
    StringField34: TWidestringField;
    dtsBetTip: TDataSource;
    sdsKez: TTalSimpleDataSet;
    dtsKez: TDataSource;
    sdsKezEGYEDEK_ID: TBCDField;
    sdsKezKEZ_DATUM: TDateTimeField;
    sdsKezMENNY1: TBCDField;
    sdsKezMENNY2: TBCDField;
    sdsKezMENNY3: TBCDField;
    sdsKezKELL: TIntegerField;
    sdsKeszletID: TBCDField;
    sdsKeszletGYOGYSZER_KOD: TWidestringField;
    sdsKeszletME: TWidestringField;
    sdsKeszletBEV_MENNY: TBCDField;
    sdsKeszletBEVET_DATUM: TDateTimeField;
    sdsKeszletAKT_KESZLET: TBCDField;
    frxDBKez: TfrxDBDataset;
    sdsKeszletNEV: TWidestringField;
    sdsEgyeb: TTalSimpleDataSet;
    dtsEgyeb: TDataSource;
    sdsEgyebID: TBCDField;
    sdsEgyebDATUM: TDateTimeField;
    sdsEgyebGYOGYSZERKLT_ID: TBCDField;
    sdsEgyebMENNYISEG: TBCDField;
    sdsEgyebMEGJEGYZES: TWidestringField;
    frxDBEgyeb: TfrxDBDataset;
    frxRepLista: TfrxReport;
    procedure btnGyogyszerClick(Sender: TObject);
    procedure edtGyogyszerKodExit(Sender: TObject);
    procedure sdsKeszletAfterScroll(DataSet: TDataSet);
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
    sAlapSql : string;
    bt_kod : array of string;
    GyogyszerId : string;
    GyogyszerKod : string;
    GyogyszerNev : string;
  public
    { Public declarations }
  end;


procedure GyFelhLista;

implementation

uses udtmTarka, QfrmMedicine;

{$R *.dfm}

procedure GyFelhLista;
var
  frmGyFelhLista: TfrmGyFelhLista;
  i : integer;
begin
  frmGyFelhLista := TfrmGyFelhLista.Create(Application);
  try
    with frmGyFelhLista do
    begin
      sdsKeszlet.Connection := dtmTarka.cnTarka;
      sdsKez.Connection := dtmTarka.cnTarka;
      sdsBetTip.Connection := dtmTarka.cnTarka;

      sAlapSql := sdsKeszlet.DataSet.CommandText;
      sdsBetTip.Open;

      cbBetTipSzuro.Items.Clear;
      i := 0;
      cbBetTipSzuro.Items.Add('Mind');
      i := i+1;
      SetLength(bt_kod ,i);
      bt_kod[i-1] := '*';

      cbBetTipSzuro.Items.Add('Nincs megadva');
      i := i+1;
      SetLength(bt_kod ,i);
      bt_kod[i-1] := '';

      cbBetTipSzuro.ItemIndex := 0;

      while not sdsBetTip.Eof do
      begin
        cbBetTipSzuro.Items.Add(sdsBetTip.Fields[1].AsString);
        i := i+1;
        SetLength(bt_kod ,i);
        bt_kod[i-1] := sdsBetTip.Fields[0].AsString;
        sdsBetTip.Next;
      end;

      sdsBetTip.Close;

      edtDatTol.Value := today();
      edtDatIg.Value := today();

      edtGyogyszerKod.Text := '';
      edtGyogyszerNev.Text := '';

      ShowModal;
    end;
  finally
    if frmGyFelhLista.sdsKeszlet.Active then
      frmGyFelhLista.sdsKeszlet.Close;

    if frmGyFelhLista.sdsKez.Active then
      frmGyFelhLista.sdsKez.Close;

    FreeAndNil(frmGyFelhLista);
  end;
end;



procedure TfrmGyFelhLista.btnGyogyszerClick(Sender: TObject);
var
  sss : integer;
begin
  if cbBetTipSzuro.ItemIndex < 2 then begin
    sss := 0;
  end else begin
    sss := cbBetTipSzuro.ItemIndex;
  end;
  if GyogyszerKarb(True,sss) then begin
    GyogyszerKod := frmMedicine.Kod;
    GyogyszerNev := frmMedicine.Nev;
    GyogyszerId  := frmMedicine.Id;
    edtGyogyszerKod.Text := frmMedicine.Kod;
    edtGyogyszerNev.Text := frmMedicine.Nev;
    Self.edtGyogyszerKod.SetFocus;
  end;
end;



procedure TfrmGyFelhLista.edtGyogyszerKodExit(Sender: TObject);
var
  Nev : string;
  tej, hus :integer;
  Hatoanyag,Forgalmazo : string;
begin
  if edtGyogyszerKod.Text <> '' then  begin
    if dtmTarka.GyogyszerAdat(edtGyogyszerKod.Text, Tej, Hus,
         Nev, Hatoanyag, Forgalmazo) then begin
      GyogyszerNev := Nev;
    end else begin
      ShowMessage('Nincs ilyen gyógyszer azonosító!');
      edtGyogyszerKod.SetFocus;
    end;
  end;

end;



procedure TfrmGyFelhLista.sdsKeszletAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if sdsKez.Active then sdsKez.Close;
  sdsKez.DataSet.Parameters[0].Value := sdsKeszletID.AsInteger;
  sdsKez.DataSet.Parameters[1].Value := sdsKeszletID.AsInteger;
  sdsKez.DataSet.Parameters[2].Value := sdsKeszletID.AsInteger;
  sdsKez.DataSet.Parameters[3].Value := edtDatTol.Value;
  sdsKez.DataSet.Parameters[4].Value := edtDatTol.Value;
  sdsKez.DataSet.Parameters[5].Value := edtDatIg.Value;
  sdsKez.DataSet.Parameters[6].Value := edtDatIg.Value;
  sdsKez.DataSet.Parameters[7].Value := edtDatIg.Value;
  sdsKez.DataSet.Parameters[8].Value := sdsKeszletID.AsInteger;
  sdsKez.DataSet.Parameters[9].Value := sdsKeszletID.AsInteger;
  sdsKez.DataSet.Parameters[10].Value := sdsKeszletID.AsInteger;
  sdsKez.Open;

  if sdsEgyeb.Active then sdsEgyeb.Close;
  sdsEgyeb.DataSet.Parameters[0].Value := edtDatIg.Value;
  sdsEgyeb.DataSet.Parameters[1].Value := sdsKeszletID.AsInteger;
  sdsEgyeb.Open;
end;




procedure TfrmGyFelhLista.actOKExecute(Sender: TObject);
var
  SzuroFelt : string;
  SQL : string;
  sOrder : string;
begin
  SzuroFelt := '';
  SQL := ' SELECT GK.ID, GK.GYOGYSZER_KOD, GK.AKT_KESZLET, GK.BEVET_DATUM, GK.BEV_MENNY, ' +
         ' GK.ME, G.NEV ' +
         ' FROM GYOGYSZER_KLT GK ' +
         ' JOIN GYOGYSZEREK G ON G.KOD = GK.GYOGYSZER_KOD ' +
         ' WHERE GK.ID IN ' +
         ' (SELECT K.GYKLT1_ID FROM KEZELESEK K ' +
         ' WHERE  (K.GYKLT1_ID IS NOT NULL AND K.KEZ_DATUM BETWEEN ' + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(edtDatTol.Text))) +
                  ' AND ' + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(edtDatIg.Text))) + ')' +
         ' OR GK.ID IN (SELECT K.GYKLT2_ID FROM KEZELESEK K ' +
         ' WHERE  K.GYKLT2_ID IS NOT NULL AND K.KEZ_DATUM BETWEEN ' + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(edtDatTol.Text))) +
                  ' AND ' + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(edtDatIg.Text))) + ')' +
         ' OR GK.ID IN (SELECT K.GYKLT3_ID FROM KEZELESEK K ' +
         ' WHERE  K.GYKLT3_ID IS NOT NULL AND K.KEZ_DATUM BETWEEN ' + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(edtDatTol.Text))) +
                  ' AND ' + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(edtDatIg.Text))) + '))' +
         ' OR (GK.AKT_KESZLET > 0 AND GK.BEVET_DATUM BETWEEN ' + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(edtDatTol.Text))) +
                  ' AND ' + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(edtDatIg.Text))) + ')' ;
  sOrder := ' order by nev ';

  if sdsKeszlet.Active then sdsKeszlet.Close;

  if cbBetTipSzuro.itemindex > 1 then begin
    SQL := SQL + ' AND G.BETEGSEGTIPUS = ' + quotedstr(bt_kod[cbBetTipSzuro.itemIndex]);
    SzuroFelt := ' Betegség típus: ' + cbBetTipSzuro.Text;
  end;

  if edtGyogyszerKod.Text <> EmptyWideStr then begin
    SQL := SQL + ' AND G.KOD = ' + quotedstr(edtGyogyszerKod.Text);
    SzuroFelt := SzuroFelt + ' Gyógyszer: ' + edtGyogyszerNev.Text;
  end;

  sdsKeszlet.DataSet.CommandText := SQL + sOrder;

  sdsKeszlet.Open;

  if rbLista.Checked then begin
    if frxRepLista.LoadFromFile(dtmTarka.fr3Path + '\GyogyszerFelhLista.fr3') then begin;
       // paraméter átadás a lista fejhez
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['SzuroFeltetelek'] := szurofelt;
       frxRepLista.Script.Variables['datumtol'] := edtDatTol.Text;
       frxRepLista.Script.Variables['datumig'] := edtDatIg.Text;
       if rbR1.Checked then
         frxRepLista.Script.Variables['teteles'] := '1'
       else
         frxRepLista.Script.Variables['teteles'] := '0';
       frxRepLista.ShowReport;
    End;
  end else begin
    dtmTarka.ExcelExport(sdsKeszlet, 'GyogyszerFelh.XLS');
  end;

  sdsKeszlet.Close;
end;

end.
