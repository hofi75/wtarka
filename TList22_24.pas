unit TList22_24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, uTALGroupBox, Mask, uValidedit, uTALEdit,
  uTALLabel, DB, ADODB, uTalQuery, DBClient, uTALSimpleDataSet, ExtCtrls,
  uTALRadioGroup, frxClass, frxDBSet, uTalComboBox;

type
  TfrmMeresiAdatok = class(TForm)
    lbListanev: TLabel;
    lbTenyeszet: TLabel;
    cbTenyeszet: TComboBox;
    bbtnPrint: TBitBtn;
    BitBtn2: TBitBtn;
    TalGroupBox1: TTalGroupBox;
    TalEdit1: TTalEdit;
    TalEdit2: TTalEdit;
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    qTenyeszet: TTalQuery;
    sdsListak: TTalSimpleDataSet;
    TalRadioGroup: TTalRadioGroup;
    frxDBListak: TfrxDBDataset;
    TalGroupBox2: TTalGroupBox;
    TalLabel4: TTalLabel;
    TalLabel5: TTalLabel;
    TalEdit3: TTalEdit;
    TalEdit4: TTalEdit;
    frxRepListak: TfrxReport;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnPrintClick(Sender: TObject);
  private
    { Private declarations }
    miez : string;
    Procedure ComboTolt;
  public
    { Public declarations }
    Procedure MeresiAdatok22;
    Procedure MeresiAdatok24;
    Procedure MeresiAdatok25;
    procedure Lista22Par;
    procedure Lista24Par;
    procedure Lista25Par;
  end;

var
  frmMeresiAdatok: TfrmMeresiAdatok;
  gLista : TBitBtn;
  param1, param2, param3 : String;
  ListaStr1, ListaStr2, ListaStr3, ListaStr4, ListaStr5 : String;
  ParamStr1, ParamStr2, ParamStr3, ParamStr4, ParamStr5 : String;
  dateparamtol, dateparamig, jdateparamtol, jdateparamig : String;
  dateTol, DateIg : string;

implementation

Uses udtmTarka, ufrmMain;

{$R *.dfm}

Procedure TfrmMeresiAdatok.MeresiAdatok22;
Begin
  frmMeresiAdatok.TalGroupBox2.Visible := False;
//  ListaStr1 := 'Mérési adatok leválasztott bikákról';    // megnevezés

  TalEdit1.Text := COPY(DateToStr(Date),1,4)+'.01.01';
  TalEdit2.Text := DateToStr(Date);

  ComboTolt;

  frmMeresiAdatok.lbListanev.Caption := 'Mérési adatok bikákról';
  frmMeresiAdatok.miez := '22';
  frmMeresiAdatok.ShowModal;
End;

Procedure TfrmMeresiAdatok.MeresiAdatok24;
Begin
  frmMeresiAdatok.TalGroupBox2.Visible := True;
  frmMeresiAdatok.TalGroupBox1.Visible := false;
  ParamStr1 := 'TenyeszetKod';
  ParamStr2 := '';
  ParamStr3 := '';
  ParamStr4 := '';
  ParamStr5 := '';

  TalEdit1.Text := COPY(DateToStr(Date),1,4)+'.01.01';
  TalEdit2.Text := DateToStr(Date);
  TalEdit3.Text := '';
  TalEdit4.Text := '';

  ComboTolt;

  frmMeresiAdatok.lbListanev.Caption := 'Mérési adatok ÜSTV-re került bikákról';
  frmMeresiAdatok.miez := '24';

  frmMeresiAdatok.ShowModal;
  frmMeresiAdatok.TalGroupBox2.Visible := False;
End;


Procedure TfrmMeresiAdatok.MeresiAdatok25;
Begin
  frmMeresiAdatok.TalGroupBox2.Visible := True;
  ParamStr1 := 'TenyeszetKod';
  ParamStr2 := '';
  ParamStr3 := '';
  ParamStr4 := '';
  ParamStr5 := '';

  TalGroupBox1.Visible := false;
  TalEdit3.Text := '';
  TalEdit4.Text := '';

  ComboTolt;

  frmMeresiAdatok.lbListanev.Caption := 'ÜSTV minõsítõ lista';
  frmMeresiAdatok.miez := '25';

  frmMeresiAdatok.ShowModal;
  frmMeresiAdatok.TalGroupBox2.Visible := False;
End;






Procedure TfrmMeresiAdatok.ComboTolt;
Begin
  Screen.Cursor := crHourGlass;
  frmMeresiAdatok.cbTenyeszet.Items.Clear;
  With frmMeresiAdatok.qTenyeszet Do
   Begin
     If Active Then
      Close;
     SQL.Text := 'select DISTINCT(tkod) from teny ORDER BY tkod';
     Open;
     While Not Eof Do
      Begin
        frmMeresiAdatok.cbTenyeszet.Items.Add(Fields[0].AsString);
        Next;
      End;
     Close;
   End;
  Screen.Cursor := crArrow;
End;

procedure TfrmMeresiAdatok.bbtnPrintClick(Sender: TObject);    // ListaKlikk
Var
  szuro, szdtol, szdig : String;

begin
  szuro := 'a ';
  // tenyésztési adatok
  With qTenyeszet Do Begin
     If Active Then
      Close;
     SQL.Text := 'select tkod, varos, tnev2 from teny Where tkod = ' +
                                    quotedstr(frmMeresiAdatok.cbTenyeszet.Text);
     Open;
     param1 := Trim(FieldByName('tkod').AsString);
     param2 := Trim(FieldByName('varos').AsString);
     param3 := Trim(FieldByName('tnev2').AsString);
     Close;
  End;

  frxDBListak.DataSet := sdsListak;
  If sdsListak.Active Then sdsListak.Close;

  // Mérés dátuma
  if miez = '22' then begin
    DateTol := 'to_date(' + quotedstr(TalEdit1.Text) + ',''yyyy.mm.dd'') - 1';
    DateIg := ' TO_DATE(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')';
    dateparamtol := ' and ((t1.datum >= to_date(' + quotedstr(TalEdit1.Text) + ',''yyyy.mm.dd''))) ';

    dateparamig  := ' and ((t1.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) ' +
                    '   and ((t2.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) or t2.datum is null) ' +
                    '   and ((t3.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) or t3.datum is null)  ' +
                    '   and ((t4.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) or t4.datum is null)  ' +
                    '   and ((t5.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) or t5.datum is null)  ' +
                    '   and ((t6.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) or t6.datum is null)  ) ';

    szuro := szuro + ' mérés dátuma (' + TalEdit1.Text + ' - ' + TalEdit2.Text + ')';
    Lista22Par;
  end;
  // ÜSTV-re jelölési dátum
  If TalGroupBox2.Visible and ((miez = '24') or (miez = '22')) Then begin  // 24-es melléklet, ÜSTV-re
     If (TalEdit3.Text <> '    .  .  ') and (TalEdit4.Text <> '    .  .  ') Then Begin
          DateTol := 'to_date(' + quotedstr(TalEdit3.Text) + ',''yyyy.mm.dd'')';
          szdtol := TalEdit3.Text;
          jdateparamtol := ' and ((t1.datum >= to_date(' + quotedstr(TalEdit3.Text) + ',''yyyy.mm.dd''))) ';
//          jdateparamtol := ' and ((t1.datum = to_date(' + quotedstr(TalEdit3.Text) + ',''yyyy.mm.dd''))) ';

          DateIg := ' TO_DATE(' + quotedstr(TalEdit4.Text) + ',''yyyy.mm.dd'')';
          szdig := TalEdit4.Text;
          jdateparamig  := ' and ((t1.datum <= to_date(' + quotedstr(TalEdit4.Text) + ',''yyyy.mm.dd'')) ' +
                    '   and ((t2.datum <= to_date(' + quotedstr(TalEdit4.Text) + ',''yyyy.mm.dd'')) or t2.datum is null) ' +
                    '   and ((t3.datum <= to_date(' + quotedstr(TalEdit4.Text) + ',''yyyy.mm.dd'')) or t3.datum is null)  ' +
                    '   and ((t4.datum <= to_date(' + quotedstr(TalEdit4.Text) + ',''yyyy.mm.dd'')) or t4.datum is null)  ' +
                    '   and ((t5.datum <= to_date(' + quotedstr(TalEdit4.Text) + ',''yyyy.mm.dd'')) or t5.datum is null)  ' +
                    '   and ((t6.datum <= to_date(' + quotedstr(TalEdit4.Text) + ',''yyyy.mm.dd'')) or t6.datum is null)  ) ';

         Lista24Par;
         szuro := szuro + ', ÜSTV-re jelölés dátuma (' + szdtol + ' - ' + szdig + ')';

     End else begin
       if TalEdit1.TEXT <> '    .  .  ' then begin
           DateTol := 'to_date(' + quotedstr(TalEdit1.Text) + ',''yyyy.mm.dd'') - 1';
           DateIg := ' TO_DATE(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')';
           dateparamtol := ' and ((t1.datum >= to_date(' + quotedstr(TalEdit1.Text) + ',''yyyy.mm.dd''))) ';

           dateparamig  := ' and ((t1.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) ' +
                         '   and ((t2.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) or t2.datum is null) ' +
                         '   and ((t3.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) or t3.datum is null)  ' +
                         '   and ((t4.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) or t4.datum is null)  ' +
                         '   and ((t5.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) or t5.datum is null)  ' +
                         '   and ((t6.datum <= to_date(' + quotedstr(TalEdit2.Text) + ',''yyyy.mm.dd'')) or t6.datum is null)  ) ';
           szuro := szuro + ' mérés dátuma (' + TalEdit1.Text + ' - ' + TalEdit2.Text + ')';
       end else begin
         szdtol := '    .  .  ';
         szdig := '    .  .  ';
       end;

       Lista22Par;
       szuro := szuro + ', ÜSTV-re jelölés dátuma (' + szdtol + ' - ' + szdig + ')';

     End;
  end;

  // ÜSTV minõsítõ lista
  If TalGroupBox2.Visible and (miez = '25') Then begin  // 25-es melléklet, ÜSTV-re
     If (TalEdit3.Text <> '    .  .  ') and (TalEdit4.Text <> '    .  .  ') Then Begin
          DateTol := 'to_date(' + quotedstr(TalEdit3.Text) + ',''yyyy.mm.dd'')';
          szdtol := TalEdit3.Text;
          jdateparamtol := ' and (t1.datum >= to_date(' + quotedstr(TalEdit3.Text) + ',''yyyy.mm.dd'')) ';
//          jdateparamtol := ' and (t1.datum = to_date(' + quotedstr(TalEdit3.Text) + ',''yyyy.mm.dd'')) ';

          DateIg := ' TO_DATE(' + quotedstr(TalEdit4.Text) + ',''yyyy.mm.dd'')';
          szdig := TalEdit4.Text;
          jdateparamig  := ' and (t1.datum <= to_date(' + quotedstr(TalEdit4.Text) + ',''yyyy.mm.dd'')) ' +
                    '   and (t2.datum <= to_date(' + quotedstr(TalEdit4.Text) + ',''yyyy.mm.dd'')) ';

         Lista25Par;
     End
  end;


  sdsListak.DataSet.CommandText := '';
  sdsListak.DataSet.CommandText := ListaStr5;

  sdsListak.DataSet.Parameters.ParamByName(ParamStr1).Value := cbTenyeszet.Text;


  Try
    Screen.Cursor := crHourGlass;
    sdsListak.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If (FindComponent('TalRadioGroup' )<> nil) And
       (TRadioGroup(FindComponent('TalRadioGroup')).ItemIndex = 0)  Then
     Begin
       If frxRepListak.LoadFromFile(dtmTarka.fr3Path + '\' + ListaStr2 +'.fr3') Then
        Begin
          frxRepListak.Variables.Clear;
          frxRepListak.Script.Variables['p0'] := ListaStr1;
          frxRepListak.Script.Variables['p1'] := param1 + '   ' +  // tenyészet
                                                                 param3 + ',   ' +
                                                                 param2;
          frxRepListak.Script.Variables['p2'] := '';
          frxRepListak.Script.Variables['p3'] := 'ENAR';    // rendezettség
          frxRepListak.Script.Variables['p4'] := szuro;     // szûrõ

          frxRepListak.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsListak, ListaStr2 + '.XLS');
  sdsListak.Close;

end;

procedure TfrmMeresiAdatok.BitBtn2Click(Sender: TObject);
begin
  frmMeresiAdatok.Close;
end;

procedure TfrmMeresiAdatok.FormActivate(Sender: TObject);
begin
  frmMeresiAdatok.sdsListak.Connection := dtmTarka.cnTarka;
  dateparamtol  := '';
  dateparamig   := '';
  jdateparamtol := '';
  jdateparamig  := '';

  If dtmTarka.TenyeszetWhere <> EmptyStr then begin
    frmMeresiAdatok.cbTenyeszet.Enabled := false;
    frmMeresiAdatok.cbTenyeszet.Text := dtmTarka.TenyeszetTKOD
  end else begin
    frmMeresiAdatok.cbTenyeszet.Enabled := True;
    frmMeresiAdatok.cbTenyeszet.SetFocus;
  end;
end;

procedure TfrmMeresiAdatok.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmMeresiAdatok.cbTenyeszet.Visible := True;
  frmMeresiAdatok.cbTenyeszet.Text := '';
end;

procedure TfrmMeresiAdatok.Lista24Par;
begin
  ListaStr1 := 'Mérési adatok ÜSTV-re került bikákról';    // megnevezés
  ListaStr2 := 'MeresiAdatokUSTVreKerultBikakrol';     // *.fr3; *.xls név
  ListaStr3 := '';
  ListaStr4 := '';
  ListaStr5 :=
  'select e.enar, e.anya_enar, e.apaklsz, e.szuldat, e.szul_suly, e.valdat, e.valtom, ' +
       'Cast((e.valdat - e.szuldat) As Integer) as enapval, e.tom205, ' +
       'Cast(tomgyar(0, e.valtom, e.szuldat,e.valdat) as Integer) as tgyval, ' +
       't1.datum as t1datum, t1.tomeg as t1tomeg,( t1.datum - e.szuldat) as t1_eletnap, ' +
       '(t1.datum - e.valdat) as t1_hiznap, Cast(tomgyar(0, t1.tomeg, e.szuldat,t1.datum) as Integer) as t1Elet, ' +
       'Cast(tomgyar(e.valtom, t1.tomeg, e.valdat, t1.datum) As Integer) as t1hiz, ' +
       't2.datum as t2datum, t2.tomeg as t2tomeg,(t2.datum - e.szuldat) as t2_eletnap, ' +
       '(t2.datum - t1.datum) as t2_hiznap, Cast(tomgyar(0, t2.tomeg, e.szuldat,t2.datum) as Integer) as t2Elet, ' +
       'Cast(tomgyar(t1.tomeg, t2.tomeg, t1.datum, t2.datum) as Integer)as t2hiz, ' +
       't3.datum as t3datum, t3.tomeg as t3tomeg,(t3.datum - e.szuldat) as t3_eletnap, ' +
       '(t3.datum - t2.datum) as t3_hiznap, Cast(tomgyar(0, t3.tomeg, e.szuldat,t3.datum) as Integer) as t3Elet, ' +
       'Cast(tomgyar(t2.tomeg, t3.tomeg, t2.datum, t3.datum) as Integer)as t3hiz, ' +
       't4.datum as t4datum, t4.tomeg as t4tomeg,(t4.datum - e.szuldat) as t4_eletnap, ' +
       '(t4.datum - t3.datum) as t4_hiznap, Cast(tomgyar(0, t4.tomeg, e.szuldat,t4.datum) as Integer) as t4Elet, ' +
       'Cast(tomgyar(t3.tomeg, t4.tomeg, t3.datum, t4.datum) as Integer) as t4hiz, ' +
       't5.datum as t5datum, t5.tomeg as t5tomeg,(t5.datum - e.szuldat) as t5_eletnap, ' +
       '(t5.datum - t4.datum) as t5_hiznap, Cast(tomgyar(0, t5.tomeg, e.szuldat,t5.datum) as Integer) as t5Elet, ' +
       'Cast(tomgyar(t4.tomeg, t5.tomeg, t4.datum, t5.datum) as Integer) as t5hiz, ' +
       't6.datum as t6datum, t6.tomeg as t6tomeg,(t6.datum - e.szuldat) as t6_eletnap, ' +
       '(t6.datum - t5.datum) as t6_hiznap, Cast(tomgyar(0, t6.tomeg, e.szuldat,t6.datum) as Integer) as t6Elet, ' +
       'Cast(tomgyar(t5.tomeg, t6.tomeg, t5.datum, t6.datum) as Integer) as t6hiz ' +
      'from egyedek e ' +
(*      'join tomegek t1 on t1.egyed_id = e.id and t1.id = elso_meres(e.id,' + datetol + ') and t1.datum<= ' + dateIg +
      'left join tomegek t2 on t2.egyed_id = e.id and t2.id = kov_meres(e.id, t1.datum) and t2.datum<= ' + dateIg +
      'left join tomegek t3 on t3.egyed_id = e.id and t3.id = kov_meres(e.id, t2.datum) and t3.datum<= ' + dateIg +
      'left join tomegek t4 on t4.egyed_id = e.id and t4.id = kov_meres(e.id, t3.datum) and t4.datum<= ' + dateIg +
      'left join tomegek t5 on t5.egyed_id = e.id and t5.id = kov_meres(e.id, t4.datum) and t5.datum<= ' + dateIg +
      'left join tomegek t6 on t6.egyed_id = e.id and t6.id = kov_meres(e.id, t5.datum) and t6.datum<= ' + dateIg +
*)
      'join tomegek t1 on t1.egyed_id = e.id and t1.id = elso_meres(e.id,' + datetol + ') and t1.datum<= ' + dateIg +
      'left join tomegek t2 on t2.egyed_id = e.id and t2.id = kov_meres(e.id, t1.datum) ' +
      'left join tomegek t3 on t3.egyed_id = e.id and t3.id = kov_meres(e.id, t2.datum) ' +
      'left join tomegek t4 on t4.egyed_id = e.id and t4.id = kov_meres(e.id, t3.datum) ' +
      'left join tomegek t5 on t5.egyed_id = e.id and t5.id = kov_meres(e.id, t4.datum) ' +
      'left join tomegek t6 on t6.egyed_id = e.id and t6.id = kov_meres(e.id, t5.datum) ' +
      'where e.ivar = ''1'' and e.tenyeszet = :TenyeszetKod /*1*/ '  +  dateparamtol + dateparamig + //and t1.meres_tipus in (1,2)' +
      'Order By e.enar';

  ParamStr1 := 'TenyeszetKod';
  ParamStr2 := '';
  ParamStr3 := '';
  ParamStr4 := '';
  ParamStr5 := '';

end;



procedure TfrmMeresiAdatok.Lista22Par;
begin
  ListaStr1 := 'Mérési adatok listája';    // megnevezés
  ListaStr2 := 'MeresiAdatokLevalasztottBikakrol';     // *.fr3; *.xls név
  ListaStr3 := '';                           //
  ListaStr4 := '';                                //

  ListaStr5 :=                                   // SQL string
      'select e.enar, e.anya_enar, e.apaklsz, e.szuldat, e.szul_suly, ' +
             'e.valdat, e.valtom,Cast((e.valdat - e.szuldat) As Integer) as enapval, e.tom205, ' +
             'Cast(tomgyar(0, e.valtom, e.szuldat,e.valdat) as Integer) as tgyval, ' +
             't1.datum as t1datum, t1.tomeg as t1tomeg,( ' +
             't1.datum - e.szuldat) as t1_eletnap, ' +
             '(t1.datum - e.valdat) as t1_hiznap, ' +
             'Cast(tomgyar(0, t1.tomeg, e.szuldat,t1.datum) as Integer) as t1Elet, ' +
             'Cast(tomgyar(e.valtom, t1.tomeg, e.valdat, t1.datum) As Integer) as t1hiz, ' +
             't2.datum as t2datum, t2.tomeg as t2tomeg,(t2.datum - e.szuldat) as t2_eletnap, ' +
             '(t2.datum - t1.datum) as t2_hiznap, ' +
             'Cast(tomgyar(0, t2.tomeg, e.szuldat,t2.datum) as Integer) as t2Elet, ' +
             'Cast(tomgyar(t1.tomeg, t2.tomeg, t1.datum, t2.datum) as Integer)as t2hiz, ' +
             't3.datum as t3datum, t3.tomeg as t3tomeg,(t3.datum - e.szuldat) as t3_eletnap, ' +
             '(t3.datum - t2.datum) as t3_hiznap, ' +
             'Cast(tomgyar(0, t3.tomeg, e.szuldat,t3.datum) as Integer) as t3Elet, ' +
             'Cast(tomgyar(t2.tomeg, t3.tomeg, t2.datum, t3.datum) as Integer)as t3hiz, ' +
             't4.datum as t4datum, t4.tomeg as t4tomeg,(t4.datum - e.szuldat) as t4_eletnap, ' +
             '(t4.datum - t3.datum) as t4_hiznap, ' +
             'Cast(tomgyar(0, t4.tomeg, e.szuldat,t4.datum) as Integer) as t4Elet, ' +
             'Cast(tomgyar(t3.tomeg, t4.tomeg, t3.datum, t4.datum) as Integer) as t4hiz, ' +
             't5.datum as t5datum, t5.tomeg as t5tomeg,(t5.datum - e.szuldat) as t5_eletnap, ' +
             '(t5.datum - t4.datum) as t5_hiznap, ' +
             'Cast(tomgyar(0, t5.tomeg, e.szuldat,t5.datum) as Integer) as t5Elet, ' +
             'Cast(tomgyar(t4.tomeg, t5.tomeg, t4.datum, t5.datum) as Integer) as t5hiz, ' +
             't6.datum as t6datum, t6.tomeg as t6tomeg,(t6.datum - e.szuldat) as t6_eletnap, ' +
             '(t6.datum - t5.datum) as t6_hiznap, ' +
             'Cast(tomgyar(0, t6.tomeg, e.szuldat,t6.datum) as Integer) as t6Elet, ' +
             'Cast(tomgyar(t5.tomeg, t6.tomeg, t5.datum, t6.datum) as Integer) as t6hiz ' +
      'from egyedek e ' +
      'join tomegek t1 on t1.egyed_id = e.id and t1.id = elso_meres(e.id,' + datetol + ') and t1.datum<= ' + dateIg +
      'left join tomegek t2 on t2.egyed_id = e.id and t2.id = kov_meres(e.id, t1.datum) and t2.datum<= ' + dateIg +
      'left join tomegek t3 on t3.egyed_id = e.id and t3.id = kov_meres(e.id, t2.datum) and t3.datum<= ' + dateIg +
      'left join tomegek t4 on t4.egyed_id = e.id and t4.id = kov_meres(e.id, t3.datum) and t4.datum<= ' + dateIg +
      'left join tomegek t5 on t5.egyed_id = e.id and t5.id = kov_meres(e.id, t4.datum) and t5.datum<= ' + dateIg +
      'left join tomegek t6 on t6.egyed_id = e.id and t6.id = kov_meres(e.id, t5.datum) and t6.datum<= ' + dateIg +
      'where e.ivar = ''1'' ' +
        'and e.tenyeszet = :TenyeszetKod ' +  dateparamtol + dateparamig +
      'Order By e.enar';


  ParamStr1 := 'TenyeszetKod';
  ParamStr2 := '';
  ParamStr3 := '';
  ParamStr4 := '';
  ParamStr5 := '';
end;



procedure TfrmMeresiAdatok.Lista25Par;
begin
  ListaStr1 := 'ÜSTV minõsítõ lista';    // megnevezés
  ListaStr2 := 'USTVMinLista';     // *.fr3; *.xls név
  ListaStr3 := '';                           //
  ListaStr4 := '';                                //
  ListaStr5 :=                                   // SQL string
      ' select E.ENAR, E.ANYA_ENAR, E.APAKLSZ, E.SZULDAT, E.SZUL_SULY, E.VALDAT, E.VALTOM, cast((E.VALDAT - E.SZULDAT) as INTEGER) as ENAPVAL, ' +
      ' E.TOM205, E.SV, cast(TOMGYAR(0, E.VALTOM, E.SZULDAT,E.VALDAT) as INTEGER) as TGYVAL, ' +
      ' T1.DATUM as T1DATUM, T1.TOMEG as T1TOMEG,( T1.DATUM - E.SZULDAT) as T1_ELETNAP, (T1.DATUM - E.VALDAT) as T1_HIZNAP, ' +
      ' cast(TOMGYAR(0, T1.TOMEG, E.SZULDAT,T1.DATUM) as INTEGER) as T1ELET, ' +
      ' cast(TOMGYAR(E.VALTOM, T1.TOMEG, E.VALDAT, T1.DATUM) as INTEGER) as T1HIZ, ' +
      ' T2.DATUM as T2DATUM, T2.TOMEG as T2TOMEG,(T2.DATUM - E.SZULDAT) as T2_ELETNAP, (T2.DATUM - T1.DATUM) as T2_HIZNAP, ' +
      ' cast(TOMGYAR(0, T2.TOMEG, E.SZULDAT,T2.DATUM) as INTEGER) as T2ELET, ' +
      ' cast(TOMGYAR(T1.TOMEG, T2.TOMEG, T1.DATUM, T2.DATUM) as INTEGER) as T2HIZ, ' +
      ' cast(COALESCE(kk.tipus,0) as integer) AS TIPUS , cast( COALESCE(kk.izom,0)  as integer) AS IZOM , cast( COALESCE(kk.lab,0) as integer) AS LAB ' +
      ' from EGYEDEK E ' +
      ' join TOMEGEK T1 on T1.EGYED_ID = E.id and T1.id = ELSO_MERES(E.id,' + datetol + ') and t1.datum<=' + dateIG +
      ' left join TOMEGEK T2 on T2.EGYED_ID = E.id and T2.MERES_TIPUS = ''3''' +  //  and T2.id = ELSO_MERES(E.id, ' + dateIG + ') and T2.DATUM<= ' + dateIG +
      ' LEFT join kullem kk on kk.ID = KULLEM_ID(E.ENAR) ' +
      ' where e.ivar = ''1'' ' +
        'and e.tenyeszet = :TenyeszetKod ' +
      'Order By e.enar';

  ParamStr1 := 'TenyeszetKod';
  ParamStr2 := '';
  ParamStr3 := '';
  ParamStr4 := '';
  ParamStr5 := '';
end;

end.
