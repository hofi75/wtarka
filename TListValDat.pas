unit TListValDat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uTALLabel, ExtCtrls, uTALRadioGroup, Mask, uValidedit,
  uTALEdit, uTALGroupBox, Buttons, frxClass, frxDBSet, DB, DBClient,
  uTALSimpleDataSet, ADODB, uTalQuery;

type
  TfrmValDat = class(TForm)
    TalLabel1: TTalLabel;
    lbTenyeszet: TLabel;
    cbTenyeszet: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TalGroupBox1: TTalGroupBox;
    TalLabel2: TTalLabel;
    TalLabel3: TTalLabel;
    TalEdit1: TTalEdit;
    TalEdit2: TTalEdit;
    TalRadioGroup2: TTalRadioGroup;
    TalRadioGroup1: TTalRadioGroup;
    TalGroupBox2: TTalGroupBox;
    TalEdit3: TTalEdit;
    TalLabel4: TTalLabel;
    TalEdit4: TTalEdit;
    TalLabel5: TTalLabel;
    sdsValDat: TTalSimpleDataSet;
    frxDBListak: TfrxDBDataset;
    qListak: TTalQuery;
    frxRepListak: TfrxReport;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Procedure ComboTolt;
  public
    { Public declarations }
    Procedure ValasztasiAdatok2;
  end;

var
  frmValDat: TfrmValDat;
  param1, param2, param3 : String;

implementation

Uses udtmTarka, ufrmMain;

{$R *.dfm}

Procedure TfrmValDat.ValasztasiAdatok2;    // 23 sz. melléklet
Begin
  ComboTolt;
  frmValDat.ShowModal;
End;

Procedure TfrmValDat.ComboTolt;
Begin
  Screen.Cursor := crHourGlass;
  frmValDat.cbTenyeszet.Items.Clear;
  With frmValDat.qListak Do
   Begin
     If Active Then
      Close;
     SQL.Text := 'select DISTINCT(tkod) from teny ORDER BY tkod';
     Open;
     While Not Eof Do
      Begin
        frmValDat.cbTenyeszet.Items.Add(Fields[0].AsString);
        Next;
      End;
     Close;
   End;
  Screen.Cursor := crArrow;
End;

procedure TfrmValDat.FormActivate(Sender: TObject);
begin
  frmValDat.sdsValDat.Connection := dtmTarka.cnTarka;
  TalEdit1.Text := DateToStr(Date);
  TalEdit2.Text := DateToStr(Date);
  TalEdit3.Text := '';
  TalEdit4.Text := '';
  If dtmTarka.TenyeszetWhere <> EmptyStr then
     begin
       frmValDat.cbTenyeszet.Enabled := false;
       frmValDat.cbTenyeszet.Text := dtmTarka.TenyeszetTKOD
     end
   else
     begin
       frmValDat.cbTenyeszet.Enabled := True;
       frmValDat.cbTenyeszet.SetFocus;
     end;
end;

procedure TfrmValDat.BitBtn1Click(Sender: TObject);
Var
  dateparamtol, dateparamig, pSzulDat, pIvar, szuro, szdtol, szdig, tenyeszet_where : String;
  szdvan : Boolean;


Begin
  szuro  := '';
  szdtol := '';
  szdig  := '';
  szdvan := False;
  // tenyészet adatai
  With frmValDat.qListak Do
   Begin
     If Active Then
      Close;
     SQL.Clear;
     SQL.Text := 'select tkod, varos, tnev2 from teny Where tkod = ' +
                                    quotedstr(cbTenyeszet.Text);
     Open;
     param1 := Trim(FieldByName('tkod').AsString);
     param2 := Trim(FieldByName('varos').AsString);
     param3 := Trim(FieldByName('tnev2').AsString);
   End;

   if param1 = '0000000' then
      tenyeszet_where := '1 = 1'
   else
      tenyeszet_where := 'e.tenyeszet = ' + quotedstr(param1);

  // ivar
  Case frmValDat.TalRadioGroup1.ItemIndex Of
    0 : Begin
          pIvar := ' and e.ivar = ''1'' '; // '1' bika;
          szuro := 'Ivar : bika, ';
        End;
    1 : Begin
          pIvar := ' and e.ivar = ''2'' '; // '2' üszõ
          szuro := 'Ivar : üszõ, ';
        End;
    2 : Begin
          pIvar := ''; // mind
          szuro := 'Ivar : bika és üszõ, ';
        End;
  End;

  // idõ
  IF frmValDat.TalEdit1.Text <> '    .  .  ' Then begin
    dateparamtol := ' and (e.valdat >= to_date(' + quotedstr(frmValDat.TalEdit1.Text) + ',''yyyy.mm.dd'')) ';
  end;
  IF frmValDat.TalEdit2.Text <> '    .  .  ' Then begin
    dateparamig := ' and (e.valdat <= to_date(' + quotedstr(frmValDat.TalEdit2.Text) + ',''yyyy.mm.dd'')) ';
  end;
  if (frmValDat.TalEdit1.Text <> '    .  .  ') and (frmValDat.TalEdit2.Text <> '    .  .  ') then
    szuro := szuro + ' választási dátum (' + frmValDat.TalEdit1.Text + ' - ' + frmValDat.TalEdit2.Text + ')';

  // szûrés születési dátumra
  If frmValDat.TalEdit3.Text <> '    .  .  ' Then
     Begin
       pSzulDat := ' and (e.SZULDAT >= to_date(' + quotedstr(frmValDat.TalEdit3.Text) + ',''yyyy.mm.dd'')) ';
       szdtol := frmValDat.TalEdit3.Text;
       szdvan := True;
     End
   Else
     szdtol := '    .  .  ';

  If frmValDat.TalEdit4.Text <> '    .  .  ' Then
     Begin
       pSzulDat := pSzulDat + ' and (e.SZULDAT <= to_date(' + quotedstr(frmValDat.TalEdit4.Text) + ',''yyyy.mm.dd'')) ';
       szdig := frmValDat.TalEdit4.Text;
       szdvan := True;
     End
   Else
     szdig := '    .  .  ';

  If szdvan Then
   szuro := szuro + ', születési dátum (' + szdtol + ' - ' + szdig + ')';

  frmValDat.frxDBListak.DataSet := frmValDat.sdsValDat;
  If frmValDat.sdsValDat.Active Then frmValDat.sdsValDat.Close;
  frmValDat.sdsValDat.DataSet.CommandText := '';

  frmValDat.sdsValDat.DataSet.CommandText :=
       'select e.enar, e.fulszam, e.anya_enar, ' +
              'e.apaklsz, e.szuldat, e.szul_suly, ' +
              '(select ellesek.elles_lef ' +
              'from ellesek ' +
              'where ellesek.egyed_id = an.id and ' +
              'ellesek.elles_datum = e.szuldat and rownum = 1 ) as ell_lef , ' +
              'e.szarvaltsag, e.valdat, e.valtom , ' +
              'cast(TO_CHAR(e.valdat, ''J'') - TO_CHAR(e.szuldat, ''J'') as integer) as eletnap, ' +
              'Cast(TOMGYAR(0, e.valtom,e.szuldat, e.VALDAT ) as float) as tgyar, ' +
//              'Cast(TOMGYAR(e.szul_suly, e.valtom,e.szuldat, e.VALDAT ) as float) as tgyar, ' +
              'e.tom205, an.min, e.sv ' +
       'from egyedek e ' +
       'left join egyedek an on an.enar = e.anya_enar and e.tenyeszet = an.tenyeszet ' +
       'where ' + tenyeszet_where +
              pIvar + dateparamtol + dateparamig + pSzulDat +
       'Order By e.enar';

  Try
    Screen.Cursor := crHourGlass;
    frmValDat.sdsValDat.Open;

    if sdsValDat.RecordCount = 0 then begin
      dtmTarka.MsgDlg('Nincs a feltételeknek megfelelõ adat.',mtWarning, [mbOK],0);
      frmValDat.sdsValDat.Close;
      exit;
    end;
  Finally
    Screen.Cursor := crArrow;
  End;

  If TalRadioGroup2.ItemIndex = 0 Then
     Begin
       If frmValDat.frxRepListak.LoadFromFile(dtmTarka.fr3Path + '\ValasztasiAdatok.fr3') Then
        Begin
          frmValDat.frxRepListak.Variables.Clear;
          frmValDat.frxRepListak.Script.Variables['p0'] := 'Választási adatok';
          frmValDat.frxRepListak.Script.Variables['p1'] := param1 + '   ' +
                                                           param2 + '   ' +
                                                           param3;
          frmValDat.frxRepListak.Script.Variables['p2'] := '(' +
                           TTalEdit(FindComponent('TalEdit1')).Text + '  -  ' +
                           TTalEdit(FindComponent('TalEdit2')).Text + ')    ';
          frmValDat.frxRepListak.Script.Variables['p3'] := 'ENAR';    // rendezettség
          frmValDat.frxRepListak.Script.Variables['p4'] := szuro;     // szûrõ
          frmValDat.frxRepListak.ShowReport();
        End;
     End
   Else
     Begin
       dtmTarka.ExcelExport(sdsValDat, 'ValasztasiAdatok.XLS');
     End;

  frmValDat.sdsValDat.Close;
end;

procedure TfrmValDat.BitBtn2Click(Sender: TObject);
begin
  frmValDat.Close;
end;

end.
