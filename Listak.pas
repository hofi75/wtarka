unit Listak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  StrUtils, Dialogs, QfrmKarbOs, StdCtrls, uTALComboBox, ActnList, Buttons,
  uTALBitBtn, ExtCtrls, DB, ADODB, uTalQuery, frxClass, frxDBSet, uTALLabel,
  DBCtrls, uTALDBComboBox, uTALGroupBox, uTALCheckBox, uTALTable, uTALEdit,
  uTALDBLookupComboBox, uTALRadioButton, uTALRadioGroup, Mask, uValidedit,
  DBClient, uTALSimpleDataSet;

type
  TfrmListak = class(TfrmKarbOs)
    frxDBdtsList: TfrxDBDataset;
    TalLabel1: TTalLabel;
    TalGroupBox1: TTalGroupBox;
    TalGroupBox2: TTalGroupBox;
    TalGroupBox3: TTalGroupBox;
    TalGroupBox4: TTalGroupBox;
    TalGroupBox5: TTalGroupBox;
    TalGroupBox6: TTalGroupBox;
    TalGroupBox7: TTalGroupBox;
    TalGroupBox8: TTalGroupBox;
    TalGroupBox9: TTalGroupBox;
    TalGroupBox10: TTalGroupBox;
    TalGroupBox11: TTalGroupBox;
    TalLabel2: TTalLabel;
    TalLabel3: TTalLabel;
    TalLabel4: TTalLabel;
    TalLabel5: TTalLabel;
    cbTehenAzonTol: TTalComboBox;
    cbTehenAzonIg: TTalComboBox;
    cbTulajTol: TTalComboBox;
    cbTulajIg: TTalComboBox;
    cbAnyaTol: TTalComboBox;
    cbAnyaIg: TTalComboBox;
    cbApaTol: TTalComboBox;
    cbApaIg: TTalComboBox;
    cbSzinTol: TTalComboBox;
    cbSzinIg: TTalComboBox;
    cbKkodTol: TTalComboBox;
    cbKkodIg: TTalComboBox;
    cbKikkodTol: TTalComboBox;
    cbKikkodIg: TTalComboBox;
    cbKikokTol: TTalComboBox;
    cbKikokIg: TTalComboBox;
    TalLabel6: TTalLabel;
    TalLabel7: TTalLabel;
    TalLabel8: TTalLabel;
    TalLabel9: TTalLabel;
    TalLabel10: TTalLabel;
    TalLabel11: TTalLabel;
    TalLabel12: TTalLabel;
    TalLabel13: TTalLabel;
    TalLabel14: TTalLabel;
    TalLabel15: TTalLabel;
    TalLabel16: TTalLabel;
    TalLabel17: TTalLabel;
    TalLabel18: TTalLabel;
    TalLabel19: TTalLabel;
    TalLabel20: TTalLabel;
    TalLabel21: TTalLabel;
    TalLabel22: TTalLabel;
    TalLabel23: TTalLabel;
    TalRadioGroup1: TTalRadioGroup;
    rbTehen: TTalRadioButton;
    rbPsion: TTalRadioButton;
    rgCsakTehen: TTalRadioGroup;
    TalGroupBox12: TTalGroupBox;
    TalLabel25: TTalLabel;
    TalLabel26: TTalLabel;
    edtEloTol: TTalEdit;
    edtEloIg: TTalEdit;
    qryList: TTalQuery;
    TalGroupBox13: TTalGroupBox;
    cbKorcsTol: TTalComboBox;
    TalGroupBox14: TTalGroupBox;
    cbIvar: TTalComboBox;
    cbSelejt: TTalCheckBox;
    edtKikDatTol: TTalEdit;
    edtKikDatIg: TTalEdit;
    edtSzulDatTol: TTalEdit;
    edtSzulDatIg: TTalEdit;
    edtAlvdTol: TTalEdit;
    edtAlvdIg: TTalEdit;
    cbCsakAzonosito: TTalCheckBox;
    gbKimenet: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    sdsLista: TTalSimpleDataSet;
    TalGroupBox15: TTalGroupBox;
    cbKikHely: TTalComboBox;
    frxRepList: TfrxReport;
    procedure actMegsemExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    Procedure ComboTolt;

  private
    { Private declarations }
    korcskod : array of string;
    tkikhely : array of string;
    Procedure Lekerdezes(e_elem,u_elem,cbTol,cbIg :String; TolIndex,IgIndex :Integer);
  public
    { Public declarations }

  end;

var
  frmListak: TfrmListak;
  SQL : String;
  feltetel : String;


Procedure KodList;
Procedure InszeminatorList;
Procedure TehenTorzsList;

implementation

Uses udtmTarka, Tibor;

{$R *.dfm}

Procedure KodList;   // K�d t�pusok
Var
  Siker : Boolean;
  SQL : String;

Begin
  Siker:=False;
  SQL:='Select TIPUSKOD, TIPUSNEV, KODHOSSZ From KodTipusok';
  frmListak.frxDBdtsList.DataSet := frmListak.qryList;
  if frmListak.qryList.Active then frmListak.qryList.Close;
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;
  Siker:=frmListak.frxRepList.LoadFromFile(dtmTarka.fr3Path +  '\KodTipusok.fr3',Siker);
  If Siker Then
   Begin
     // param�ter �tad�s a lista fejhez
     frmListak.frxRepList.Variables.Clear;
     frmListak.frxRepList.Script.Variables['SzuroFeltetelek']:='';
     frmListak.frxRepList.Script.Variables['Rendezettseg'] := 'k�d t�pusra';
     frmListak.frxRepList.ShowReport(Siker);
   End;
  frmListak.qryList.Close;
End;

Procedure InszeminatorList;
Var
  Siker : Boolean;
  SQL : String;

Begin
  Siker:=False;
  SQL:='SELECT insz.KOD, insz.NEV, insz.IRSZ, insz.UTCA, insz.TELEFONSZAM' +
       ' FROM INSZEMINATOROK insz' +
       ' ORDER BY insz.KOD';

  frmListak.sdsLista.Connection := dtmTarka.cnTarka;
  frmListak.frxDBdtsList.DataSet := frmListak.sdsLista;
  if frmListak.sdsLista.Active then frmListak.sdsLista.Close;
  frmListak.sdsLista.DataSet.CommandText := SQL;
  frmListak.sdsLista.Open;

  Siker := frmListak.frxRepList.LoadFromFile(dtmTarka.fr3Path + '\Inszeminatorok.fr3',Siker);

  If Siker Then
   Begin
     // param�ter �tad�s a lista fejhez
     frmListak.frxRepList.Variables.Clear;
     frmListak.frxRepList.Script.Variables['SzuroFeltetelek']:='nincs';
     frmListak.frxRepList.Script.Variables['Rendezettseg']:='Inszemin�tor k�d';
     frmListak.frxRepList.ShowReport(Siker);
   End;
  frmListak.sdsLista.Close;
End;




Procedure TehenTorzsList;
Begin
  frmListak.ComboTolt;
  frmListak.rgCsakTehen.ItemIndex:=2; // csak teh�n nemre �ll�t�sa
  frmListak.ShowModal;
End;

Procedure TfrmListak.ComboTolt;    // combobox-ok felt�lt�se
var
  i : integer;
Begin
// teh�n azonos�t�; t�l-ig
  frmListak.qryList.Connection := dtmTarka.cnTarka;
  SQL:='SELECT DISTINCT EGYD.AZONOSITO FROM EGYEDEK egyd ' +
       'WHERE EGYD.AZONOSITO IS NOT NULL ' +
       'ORDER BY EGYD.AZONOSITO';
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;

  frmListak.cbTehenAzonTol.Items.Clear;
  frmListak.cbTehenAzonIg.Items.Clear;
  While Not frmListak.qryList.Eof Do
   Begin
     frmListak.cbTehenAzonTol.Items.Add(frmListak.qryList.Fields[0].AsString);
     frmListak.cbTehenAzonIg.Items.Add(frmListak.qryList.Fields[0].AsString);
     frmListak.qryList.Next;
   End;
  frmListak.qryList.Close;
// tulaj; t�l-ig
  SQL:='SELECT DISTINCT TULAJDONOS.NEV ' +
       'FROM EGYEDEK ' +
       ' LEFT JOIN TULAJDONOS ON TULAJDONOS.ID=EGYEDEK.TULAJDONOS_TENYESZET_ID ' +
       'WHERE EGYEDEK.TULAJDONOS_TENYESZET_ID IS NOT NULL '+
       'ORDER BY 1';
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;

  frmListak.cbTulajTol.Items.Clear;
  frmListak.cbTulajIg.Items.Clear;
  frmListak.qryList.First;
  While Not frmListak.qryList.Eof Do
   Begin
     frmListak.cbTulajTol.Items.Add(frmListak.qryList.Fields[0].AsString);
     frmListak.cbTulajIg.Items.Add(frmListak.qryList.Fields[0].AsString);
     frmListak.qryList.Next;
   End;
  frmListak.qryList.Close;
// anya azonos�t�
  SQL:='SELECT DISTINCT EGYEDEK.ANYA_AZONOSITO FROM EGYEDEK ' +
       'WHERE EGYEDEK.ANYA_AZONOSITO IS NOT NULL ' +
       'ORDER BY EGYEDEK.ANYA_AZONOSITO';
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;

  frmListak.cbAnyaTol.Items.Clear;
  frmListak.cbAnyaIg.Items.Clear;

  While Not frmListak.qryList.Eof Do
   Begin
     frmListak.cbAnyaTol.Items.Add(frmListak.qryList.FieldByName('ANYA_AZONOSITO').AsString);
     frmListak.cbAnyaIg.Items.Add(frmListak.qryList.FieldByName('ANYA_AZONOSITO').AsString);
     frmListak.qryList.Next;
   End;
  frmListak.qryList.Close;
// apa azonos�t�
  SQL:='SELECT DISTINCT EGYEDEK.APA_AZONOSITO FROM EGYEDEK ' +
       'WHERE EGYEDEK.APA_AZONOSITO IS NOT NULL ' +
       'ORDER BY EGYEDEK.APA_AZONOSITO';
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;

  frmListak.cbApaTol.Items.Clear;
  frmListak.cbApaIg.Items.Clear;

  While Not frmListak.qryList.Eof Do
   Begin
     frmListak.cbApaTol.Items.Add(frmListak.qryList.FieldByName('APA_AZONOSITO').AsString);
     frmListak.cbApaIg.Items.Add(frmListak.qryList.FieldByName('APA_AZONOSITO').AsString);
     frmListak.qryList.Next;
   End;
  frmListak.qryList.Close;
// teh�n sz�ne
  SQL:='SELECT DISTINCT EGYEDEK.SZIN_KOD ' +
       'FROM EGYEDEK ' +
       'WHERE EGYEDEK.SZIN_KOD IS NOT NULL ' +
       'ORDER BY EGYEDEK.SZIN_KOD';
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;

  frmListak.cbSzinTol.Items.Clear;
  frmListak.cbSzinIg.Items.Clear;

  While Not frmListak.qryList.Eof Do
   Begin
     frmListak.cbSzinTol.Items.Add(frmListak.qryList.FieldByName('SZIN_KOD').AsString);
     frmListak.cbSzinIg.Items.Add(frmListak.qryList.FieldByName('SZIN_KOD').AsString);
     frmListak.qryList.Next;
   End;
  frmListak.qryList.Close;
// konstrukci�s k�d
  SQL:='SELECT DISTINCT EGYEDEK.KONSTR_KOD ' +
       'FROM EGYEDEK ' +
       'WHERE EGYEDEK.KONSTR_KOD IS NOT NULL ' +
       'ORDER BY EGYEDEK.KONSTR_KOD';
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;

  frmListak.cbKkodTol.Items.Clear;
  frmListak.cbKkodIg.Items.Clear;

  While Not frmListak.qryList.Eof Do
   Begin
     frmListak.cbKkodTol.Items.Add(frmListak.qryList.FieldByName('KONSTR_KOD').AsString);
     frmListak.cbKkodIg.Items.Add(frmListak.qryList.FieldByName('KONSTR_KOD').AsString);
     frmListak.qryList.Next;
   End;
  frmListak.qryList.Close;
// kiker�l�s k�dja
  SQL:='SELECT DISTINCT EGYEDEK.KIKERULES_KOD ' +
       'FROM EGYEDEK ' +
       'WHERE EGYEDEK.KIKERULES_KOD IS NOT NULL ' +
       'ORDER BY EGYEDEK.KIKERULES_KOD';
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;

  frmListak.cbKikkodTol.Items.Clear;
  frmListak.cbKikkodIg.Items.Clear;

  While Not frmListak.qryList.Eof Do
   Begin
     frmListak.cbKikkodTol.Items.Add(frmListak.qryList.FieldByName('KIKERULES_KOD').AsString);
     frmListak.cbKikkodIg.Items.Add(frmListak.qryList.FieldByName('KIKERULES_KOD').AsString);
     frmListak.qryList.Next;
   End;
  frmListak.qryList.Close;
// kiker�l�s oka
  SQL:='SELECT DISTINCT EGYEDEK.KIKERULES_OK ' +
       'FROM EGYEDEK ' +
       'WHERE EGYEDEK.KIKERULES_OK IS NOT NULL ' +
       'ORDER BY EGYEDEK.KIKERULES_OK';
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;

  frmListak.cbKikokTol.Items.Clear;
  frmListak.cbKikokIg.Items.Clear;

  While Not frmListak.qryList.Eof Do
   Begin
     frmListak.cbKikokTol.Items.Add(frmListak.qryList.FieldByName('KIKERULES_OK').AsString);
     frmListak.cbKikokIg.Items.Add(frmListak.qryList.FieldByName('KIKERULES_OK').AsString);
     frmListak.qryList.Next;
   End;
  frmListak.qryList.Close;
// korcsoportok
  SQL:= 'select kp.KOD, kp.NEV from korcsop_par kp' ;
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;
  SetLength(frmListak.korcskod,0);
  frmListak.cbKorcsTol.Items.Clear;
  i := 0;
  While Not frmListak.qryList.Eof Do
   Begin
     SetLength(frmListak.korcskod,i+1);
     frmListak.korcskod[i] := frmListak.qryList.FieldByName('kod').AsString;
     frmListak.cbKorcsTol.Items.Add(frmListak.qryList.FieldByName('nev').AsString);
     i := i+1;
     frmListak.qryList.Next;
   End;
  frmListak.qryList.Close;

  // Kiker�l�s helye
  SQL:='select distinct e.KIKHELY, ' +
       ' kodok.KOD_NEV ' +
       ' from egyedek e ' +
       ' left join kodok on kodok.KODTIPUSOK_TIPUSKOD = ''KIKHELY'' and kodok.KOD = e.KIKHELY';
  frmListak.qryList.SQL.Clear;
  frmListak.qryList.SQL.Add(SQL);
  frmListak.qryList.Open;
  SetLength(frmListak.tkikhely,0);
  frmListak.cbKikHely.Items.Clear;
  i := 0;
  While Not frmListak.qryList.Eof Do
   Begin
     SetLength(frmListak.tkikhely,i+1);
     frmListak.tkikhely[i] := frmListak.qryList.FieldByName('KIKHELY').AsString;
     frmListak.cbKikHely.Items.Add(frmListak.qryList.FieldByName('KIKHELY').AsString + ' - ' + frmListak.qryList.FieldByName('KOD_NEV').AsString);
     i := i+1;
     frmListak.qryList.Next;
   End;

  frmListak.qryList.Close;


  frmListak.edtEloTol.Text:='';
  frmListak.edtEloIg.Text:='';
  frmListak.edtKikDatTol.Text:='';
  frmListak.edtKikDatIg.Text:='';
  frmListak.edtSzulDatTol.Text := '';
  frmListak.edtSzulDatIg.Text := '';
  frmListak.edtAlvdTol.Text := '';
  frmListak.edtAlvdIg.Text := '';

End;

procedure TfrmListak.actMegsemExecute(Sender: TObject); // kil�p�s gomb
begin
//  inherited;

  If frmListak.qryList.Active Then //query bez�r�s, ha nyitva van!
    frmListak.qryList.Close;
  frmListak.Close;

end;

Procedure TfrmListak.actOKExecute(Sender: TObject);
Var
  sikeresnyitas : Boolean;
  szurofelt, ListazasiSorrend, Rendezve : String;
  feltetelek : String;

Begin
//  inherited;
  szurofelt:='';

  // teh�n azonos�t�
  Lekerdezes(frmListak.cbTehenAzonTol.Items[0],
             frmListak.cbTehenAzonTol.Items[frmListak.cbTehenAzonTol.Items.count-1],
             frmListak.cbTehenAzonTol.Text, frmListak.cbTehenAzonIg.Text,
             frmListak.cbTehenAzonTol.ItemIndex, frmListak.cbTehenAzonIg.ItemIndex);
  If Length(feltetel) > 0 Then
   Begin
     feltetelek:=' EGYEDEK.AZONOSITO ' + feltetel;
     szurofelt:='egyed azonos�t�:'+ cbTehenAzonTol.Text + ' - ' + cbTehenAzonIg.Text + #10;
   End;

  // tulaj
  Lekerdezes(frmListak.cbTulajTol.Items[0],
             frmListak.cbTulajTol.Items[frmListak.cbTulajTol.Items.Count-1],
             frmListak.cbTulajTol.Text, frmListak.cbTulajIg.Text,
             frmListak.cbTulajTol.ItemIndex, frmListak.cbTulajIg.ItemIndex);
  If Length(feltetel) > 0 Then
   Begin
     szurofelt:= szurofelt + 'tulaj: ' + cbTulajTol.Text + ' - ' + cbTulajIg.Text + #10#13;

     If Length(feltetelek) > 0 Then
        feltetelek:=feltetelek + ' AND TULAJDONOS.NEV ' + feltetel
      Else
        feltetelek:=feltetelek + ' TULAJDONOS.NEV ' + feltetel;
   End;

  // sz�let�si id�
  if edtSzulDatTol.Text <> '    .  .  ' then Begin
        szurofelt:= szurofelt + 'Sz�let�s d�tuma: '+edtSzulDatTol.Text + ' -t�l ';
        if length(feltetelek) = 0 then
          feltetelek:=feltetelek + ' EGYEDEK.SZUL_DATUM  >= ' + quotedstr(edtSzulDatTol.Text)
        else
          feltetelek:=feltetelek + ' AND EGYEDEK.SZUL_DATUM  >= ' + quotedstr(edtSzulDatTol.Text);
  End;
  if edtSzulDatIg.Text <> '    .  .  ' then Begin
        szurofelt:= szurofelt + 'Sz�let�s d�tuma: '+edtSzulDatIg.Text + ' -ig ';
        if length(feltetelek) = 0 then
          feltetelek:=feltetelek + ' EGYEDEK.SZUL_DATUM  <= ' + quotedstr(edtSzulDatIg.Text)
        else
          feltetelek:=feltetelek + ' AND EGYEDEK.SZUL_DATUM  <= ' + quotedstr(edtSzulDatIg.Text);
  End;


  // anya azon
  Lekerdezes(frmListak.cbAnyaTol.Items[0],
             frmListak.cbAnyaTol.Items[frmListak.cbAnyaTol.Items.Count-1],
             frmListak.cbAnyaTol.Text, frmListak.cbAnyaIg.Text,
             frmListak.cbAnyaTol.ItemIndex, frmListak.cbAnyaIg.ItemIndex);
  If Length(feltetel) > 0 Then
   Begin
     szurofelt:= szurofelt + 'anya azon: ' + cbAnyaTol.Text + ' - ' + cbAnyaIg.Text + #10;
     If Length(feltetelek) > 0 Then
        feltetelek:=feltetelek + ' AND EGYEDEK.ANYA_AZONOSITO  ' + feltetel
      Else
        feltetelek:=feltetelek + ' EGYEDEK.ANYA_AZONOSITO  ' + feltetel;
   End;

  // apa azon
  Lekerdezes(frmListak.cbApaTol.Items[0],
             frmListak.cbApaTol.Items[frmListak.cbApaTol.Items.Count-1],
             frmListak.cbApaTol.Text, frmListak.cbApaIg.Text,
             frmListak.cbApaTol.ItemIndex, frmListak.cbApaIg.ItemIndex);
  If Length(feltetel) > 0 Then
   Begin
     szurofelt:= szurofelt + 'apa azon: ' + cbApaTol.Text + ' - ' + cbApaIg.Text + #10;
     If Length(feltetelek) > 0 Then
        feltetelek:=feltetelek + ' AND EGYEDEK.APA_AZONOSITO  ' + feltetel
      Else
        feltetelek:=feltetelek + ' EGYEDEK.APA_AZONOSITO  ' + feltetel;
   End;

  // sz�n
  Lekerdezes(frmListak.cbSzinTol.Items[0],
             frmListak.cbSzinTol.Items[frmListak.cbSzinTol.Items.Count-1],
             frmListak.cbSzinTol.Text, frmListak.cbSzinIg.Text,
             frmListak.cbSzinTol.ItemIndex, frmListak.cbSzinIg.ItemIndex);
  If Length(feltetel) > 0 Then
   Begin
     szurofelt:= szurofelt + 'sz�n: ' + cbSzinTol.Text + ' - ' + cbSzinIg.Text + #10;
     If Length(feltetelek) > 0 Then
        feltetelek:=feltetelek + ' AND EGYEDEK.SZIN_KOD  ' + feltetel
      Else
        feltetelek:=feltetelek + ' EGYEDEK.SZIN_KOD  ' + feltetel;
   End;

  // konstrukci�s k�d
  Lekerdezes(frmListak.cbKkodTol.Items[0],
             frmListak.cbKkodTol.Items[frmListak.cbKkodTol.Items.Count-1],
             frmListak.cbKkodTol.Text, frmListak.cbKkodIg.Text,
             frmListak.cbKkodTol.ItemIndex, frmListak.cbKkodIg.ItemIndex);
  If Length(feltetel) > 0 Then
   Begin
     szurofelt:= szurofelt + 'konstr.k�d: ' + cbKkodTol.Text + ' - ' + cbKkodIg.Text + #10 ;
     If Length(feltetelek) > 0 Then
        feltetelek:=feltetelek + ' AND EGYEDEK.KONSTR_KOD  ' + feltetel
      Else
        feltetelek:=feltetelek + ' EGYEDEK.KONSTR_KOD  ' + feltetel;
   End;

  // �llom�nyba v�tel d�tuma
  if edtAlvdTol.Text <> '    .  .  ' then Begin
        szurofelt:= szurofelt + '�llom�nybav�tel d�tuma: '+edtAlvdTol.Text + ' -t�l ';
        if length(feltetelek) = 0 then
          feltetelek:=feltetelek + ' EGYEDEK.BEKERULES_DATUM  >= ' + quotedstr(edtAlvdTol.Text)
        else
          feltetelek:=feltetelek + ' AND EGYEDEK.BEKERULES_DATUM  >= ' + quotedstr(edtAlvdTol.Text);
  End;
  if edtAlvdIg.Text <> '    .  .  ' then Begin
        szurofelt:= szurofelt + '�llom�nybav�tel d�tuma: '+edtAlvdIg.Text + ' -ig ';
        if length(feltetelek) = 0 then
          feltetelek:=feltetelek + ' EGYEDEK.BEKERULES_DATUM  <= ' + quotedstr(edtAlvdIg.Text)
        else
          feltetelek:=feltetelek + ' AND EGYEDEK.BEKERULES_DATUM  <= ' + quotedstr(edtAlvdIg.Text);
  End;

  // kiker�l�s k�dja
  Lekerdezes(frmListak.cbKikkodTol.Items[0],
             frmListak.cbKikkodTol.Items[frmListak.cbKikkodTol.Items.Count-1],
             frmListak.cbKikkodTol.Text, frmListak.cbKikkodIg.Text,
             frmListak.cbKikkodTol.ItemIndex, frmListak.cbKikkodIg.ItemIndex);
  If Length(feltetel) > 0 Then
   Begin
     szurofelt:= szurofelt + 'kiker�l�s k�d:' + cbKkodTol.Text + ' - ' + cbKkodIg.Text + #10;
     If Length(feltetelek) > 0 Then
        feltetelek:=feltetelek + ' AND EGYEDEK.KIKERULES_KOD ' + feltetel
      Else
        feltetelek:=feltetelek + ' EGYEDEK.KIKERULES_KOD ' + feltetel;
   End;

  // kiker�l�s oka
  Lekerdezes(frmListak.cbKikokTol.Items[0],
             frmListak.cbKikokTol.Items[frmListak.cbKikokTol.Items.Count-1],
             frmListak.cbKikokTol.Text, frmListak.cbKikokIg.Text,
             frmListak.cbKikokTol.ItemIndex, frmListak.cbKikokIg.ItemIndex);
  If Length(feltetel) > 0 Then
   Begin
     If Length(szurofelt) > 0 Then
        szurofelt:= szurofelt + ', ';
     szurofelt:= szurofelt + 'kiker�l�s ok: ' + cbKikokTol.Text + ' - ' + cbKikokIg.Text + #10;
     If Length(feltetelek) > 0 Then
        feltetelek:=feltetelek + ' AND EGYEDEK.KIKERULES_OK ' + feltetel
      Else
        feltetelek:=feltetelek + ' EGYEDEK.KIKERULES_OK ' + feltetel;
   End;
  // Kiker�l�s d�tum
  if edtKikdatTol.Text <> '    .  .  ' then Begin
        szurofelt:= szurofelt + 'Kiker�l�s d�tuma  : '+ edtKikdatTol.Text + ' -t�l ';
        if length(feltetelek) = 0 then
          feltetelek:=feltetelek + ' (KIKERULES_DATUM >= ' + quotedstr(edtKikdatTol.Text) +')'
        else
          feltetelek:=feltetelek + ' AND (KIKERULES_DATUM >= ' + quotedstr(edtKikdatTol.Text) +')';
  End;
  if edtKikdatIg.Text <> '    .  .  ' then Begin
        szurofelt:= szurofelt + 'Kiker�l�s d�tuma  : '+ edtKikdatIg.Text + ' -ig '  + #10;
        if length(feltetelek)  = 0 then
          feltetelek:=feltetelek + ' (KIKERULES_DATUM <= ' + quotedstr(edtKikdatIg.Text) +')'
        else
          feltetelek:=feltetelek + ' AND (KIKERULES_DATUM <= ' + quotedstr(edtKikdatIg.Text) +')';
  End;
  if cbKikHely.Text <> '' then Begin
        szurofelt:= szurofelt + 'Kiker�l�s hely : '+ cbKikHely.Text  + #10;
        if length(feltetelek)  = 0 then
          feltetelek:=feltetelek + ' EGYEDEK.KIKHELY = '+ quotedstr(frmListak.tkikhely[cbKikHely.ItemIndex])
        else
          feltetelek:=feltetelek + ' AND EGYEDEK.KIKHELY = '+ quotedstr(frmListak.tkikhely[cbKikHely.ItemIndex]);
  End;

  // Adott napon �l�
  if edtEloTol.Text <> '    .  .  ' then Begin
      szurofelt:= szurofelt + 'Adott napon �l�  : '+edtEloTol.Text + ' -t�l ';
      if length(feltetelek) = 0 then begin
        feltetelek:=feltetelek + ' (KIKERULES_DATUM IS NULL OR (KIKERULES_DATUM >= ' + quotedstr(edtEloTol.Text) +'))' ;
      end else begin
        feltetelek:=feltetelek + ' AND (KIKERULES_DATUM IS NULL OR (KIKERULES_DATUM >= ' + quotedstr(edtEloTol.Text) +'))';
      end;
  End;
  if edtEloIg.Text <> '    .  .  ' then Begin
      szurofelt:= szurofelt + 'Adott napon �l�  : '+edtEloIg.Text + ' -ig '  + #10;
      if length(feltetelek)  = 0 then begin
        feltetelek:=feltetelek + ' ((KIKERULES_DATUM IS NULL OR (KIKERULES_DATUM >= ' + quotedstr(edtEloIg.Text) +'))' +
                                 ' and (SZUL_DATUM<=' + quotedstr(edtEloIg.Text) + '))';
      end else begin
        feltetelek:=feltetelek + ' AND ((KIKERULES_DATUM IS NULL OR (KIKERULES_DATUM >= ' + quotedstr(edtEloIg.Text) +'))'+
                                 ' and (SZUL_DATUM<=' + quotedstr(edtEloIg.Text) + '))';
      end;
  End;
  if cbKorcsTol.Text <> EmptyStr then Begin
        szurofelt:= szurofelt + 'Korcsoport : '+ cbKorcsTol.Text  + #10;
        if length(feltetelek)  = 0 then
          feltetelek:=feltetelek + ' STATUSZ='+ quotedstr(frmListak.korcskod[cbKorcsTol.ItemIndex])
        else
          feltetelek:=feltetelek + ' AND STATUSZ='+ quotedstr(frmListak.korcskod[cbKorcsTol.ItemIndex]);
  End;

  if cbIvar.Text <> EmptyStr then Begin
        szurofelt:= szurofelt + ' Ivar : '+ cbIvar.Text;
        if (length(feltetelek) > 0) and (cbIvar.ItemIndex <> 2) then
          feltetelek := feltetelek + ' AND ';

        if cbIvar.ItemIndex = 0 then
          feltetelek := feltetelek + ' Ivar=''1'' '
        else if cbIvar.ItemIndex = 1 then
          feltetelek:=feltetelek + ' Ivar=''2'' ';
  End;


  If frmListak.qryList.Active Then //query bez�r�s, ha nyitva van!
    frmListak.qryList.Close;

  // Csak teh�n igen v. minden egyed
  If frmListak.rgCsakTehen.ItemIndex=0 Then begin // Csak a tehenek
     szurofelt:= szurofelt + ' Csak tehenek '  + #10;;
     if (edtEloTol.Text <> '    .  .  ') or (edtEloIg.Text <> '    .  .  ') then Begin
       If Length(feltetelek) > 0 Then
          feltetelek:=feltetelek +
              ' AND exists (select 1 from ellesek where ellesek.egyedek_id=egyedek.id and ellesek.elles_datum<='+ quotedstr(edtEloTol.Text)+ ') '
       else
          feltetelek:=feltetelek +
              ' exists (select 1 from ellesek where ellesek.egyedek_id=egyedek.id and ellesek.elles_datum<='+ quotedstr(edtEloTol.Text)+ ') ' ;
     end else begin
       If Length(feltetelek) > 0 Then
          feltetelek:=feltetelek +
              ' AND exists (select 1 from ellesek where ellesek.egyedek_id=egyedek.id) '
       else
          feltetelek:=feltetelek +
              ' exists (select 1 from ellesek where ellesek.egyedek_id=egyedek.id) ' ;
     end;
  end;
  If frmListak.rgCsakTehen.ItemIndex=1 Then begin // Csak �sz�k
     szurofelt:= szurofelt + ' Csak �sz�k '  + #10;;
     if (edtEloTol.Text <> '    .  .  ') or (edtEloIg.Text <> '    .  .  ') then Begin
       If Length(feltetelek) > 0 Then
          feltetelek:=feltetelek +
              ' AND not exists (select 1 from ellesek where ellesek.egyedek_id=egyedek.id and ellesek.elles_datum<='+ quotedstr(edtEloTol.Text)+ ')  and (ivar = ''2'')'
       else
          feltetelek:=feltetelek +
              ' not exists (select 1 from ellesek where ellesek.egyedek_id=egyedek.id and ellesek.elles_datum<='+ quotedstr(edtEloTol.Text)+ ')  and (ivar = ''2'')' ;
     end else begin
       If Length(feltetelek) > 0 Then
          feltetelek:=feltetelek +
              ' AND not exists (select 1 from ellesek where ellesek.egyedek_id=egyedek.id) and (ivar = ''2'') '
       else
          feltetelek:=feltetelek +
              ' not exists (select 1 from ellesek where ellesek.egyedek_id=egyedek.id) and (ivar = ''2'') ' ;
     end;
  end;


  // Csak a selejtez�sre jel�lt kell
  If frmListak.cbSelejt.Checked then begin // Csak a tehenek
     szurofelt:= szurofelt + ' Csak selejtre jel�lt egyedek '  + #10;;
     If Length(feltetelek) > 0 Then
        feltetelek:=feltetelek +
            ' AND EGYEDEK.SELEJT_JEL=1 '
     else
        feltetelek:=feltetelek +
            ' EGYEDEK.SELEJT_JEL=1 ' ;
  end;

// lek�rdez�s indul
  If Length(feltetelek) > 0 Then
   feltetelek:='Where ' + feltetelek;
  If frmListak.rbTehen.Checked Then
     Begin
       Rendezve:='egyed azonos�t�ra n�vekv�';
       ListazasiSorrend:=' ORDER BY EGYEDEK.AZONOSITO'
     End
   Else
     Begin
       Rendezve:='Psion azonos�t�ra n�vekv�';
       ListazasiSorrend:=' ORDER BY EGYEDEK.PSION_AZONOSITO';
     End;
  SQL:= 'SELECT EGYEDEK.AZONOSITO, COALESCE(TULAJDONOS.NEV,'''') AS TULAJDONOS_KOD, ' +
          ' EGYEDEK.APA_AZONOSITO, ' +
          'EGYEDEK.ANYA_AZONOSITO, EGYEDEK.SZUL_DATUM, EGYEDEK.BEKERULES_DATUM, ' +
          'coalesce(EGYEDEK.SZIN_KOD,'''') as SZIN_KOD, COALESCE(EGYEDEK.KONSTR_KOD,'''') AS KONSTR_KOD,' +
          ' EGYEDEK.NEV, COALESCE(EGYEDEK.KIKERULES_KOD,'''') AS KIKERULES_KOD , ' +
          ' COALESCE(EGYEDEK.KIKERULES_OK,'''') AS KIKERULES_OK, EGYEDEK.KIKERULES_DATUM, EGYEDEK.IVAR ' +
          'FROM EGYEDEK ' +
          ' LEFT JOIN TULAJDONOS ON TULAJDONOS.ID=EGYEDEK.TULAJDONOS_TENYESZET_ID ' +
           feltetelek  + ListazasiSorrend;
//          ' ORDER BY EGYEDEK.AZONOSITO';

  sikeresnyitas:=False;
  frmListak.frxDBdtsList.DataSet := frmListak.sdsLista;
  frmListak.sdsLista.DataSet.CommandText := SQL;
  frmListak.sdsLista.Open;
  if frmListak.rbLista.Checked then begin
    if cbCsakAzonosito.Checked then
      sikeresnyitas:= frmListak.frxRepList.LoadFromFile(dtmTarka.fr3Path + '\ListaTehenTorzsCa.fr3',sikeresnyitas)
    else
      sikeresnyitas:= frmListak.frxRepList.LoadFromFile(dtmTarka.fr3Path + '\ListaTehenTorzs.fr3',sikeresnyitas);
    If sikeresnyitas Then
     Begin
       // param�ter �tad�s a lista fejhez
       frmListak.frxRepList.Variables.Clear;
       frmListak.frxRepList.Script.Variables['SzuroFeltetelek']:=szurofelt;
       frmListak.frxRepList.Script.Variables['Rendezettseg']:=Rendezve;
       frmListak.frxRepList.ShowReport(sikeresnyitas);
     End;
  end else begin
    dtmTarka.ExcelExport(frmListak.sdsLista, 'egyedek.xls');
  end;
  frmListak.sdsLista.Close;
end;



Procedure TfrmListak.Lekerdezes(e_elem,u_elem,cbTol,cbIg:String;TolIndex,IgIndex:Integer);
Begin
  feltetel:='';
  // legal�bb az egyik nem �res
  If Length(cbTol + cbIg) > 0 Then
   Begin
     // csak t�l-ban van adat
     If ((Length(cbTol)>0) And (Length(cbIg)=0)) Then
          feltetel:=' > ' + quotedStr(cbTol);
     // csak ig-ben van adat
     If ((Length(cbTol)=0) And (Length(cbIg)>0)) Then
          feltetel:=' < ' + quotedStr(cbIg);
     // mindkett�ben van adat �s t�l < ig
     If ( (Length(cbTol)>0) And (Length(cbIg)>0) {And (TolIndex < IgIndex)} ) Then
        feltetel:=' BETWEEN ' + quotedStr(cbTol) + ' AND ' + quotedStr(cbIg)
      {Else
        ShowMessage('A "-t�l" �rt�k nagyobb mint az "-ig" �rt�k!')};
   End;
End;


end.
