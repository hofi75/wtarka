unit QfrmUszoLis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn,
  ExtCtrls, uTALRadioGroup, Mask, uValidedit, uTALEdit, uTALLabel,
  uTALGroupBox, frxClass, frxDBSet, DB, DBClient, uTALSimpleDataSet;

type
  TfrmUszoLis = class(TfrmNyomtatoOs)
    rg1: TTalRadioGroup;
    TalLabel1: TTalLabel;
    edtDatumTol: TTalEdit;
    edtDatumIg: TTalEdit;
    TalLabel2: TTalLabel;
    TalLabel3: TTalLabel;
    edtAdottNap: TTalEdit;
    TalGroupBox3: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    sdsNyomtat: TTalSimpleDataSet;
    frxDbNyomtat: TfrxDBDataset;
    sdsNyomtatENAR: TWideStringField;
    sdsNyomtatFULSZAM: TWideStringField;
    sdsNyomtatANYA_ENAR: TWideStringField;
    sdsNyomtatAPAKLSZ: TWideStringField;
    sdsNyomtatSZULDAT: TDateTimeField;
    sdsNyomtatDATUM: TDateTimeField;
    sdsNyomtatKPLSZ: TWideStringField;
    sdsNyomtatDATUM_1: TDateTimeField;
    sdsNyomtatKPLSZ_1: TWideStringField;
    sdsNyomtatDATUM_2: TDateTimeField;
    sdsNyomtatKPLSZ_2: TWideStringField;
    sdsNyomtatDATUM_3: TDateTimeField;
    sdsNyomtatKPLSZ_3: TWideStringField;
    sdsNyomtatDATUM_4: TDateTimeField;
    sdsNyomtatKPLSZ_4: TWideStringField;
    frxReport1: TfrxReport;
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
  private
    { Private declarations }
    param1 : string;
    param2 : string;
    param3 : string;
  public
    { Public declarations }
  end;

var
  frmUszoLis: TfrmUszoLis;

procedure NovendekUszoNyilvantarto;

implementation

uses about, udtmTarka, ufrmMain,  TListak;

{$R *.dfm}

procedure NovendekUszoNyilvantarto;
begin
  frmUszoLis := TfrmUszoLis.Create(Application);
  frmUszoLis.sdsNyomtat.Connection := dtmTarka.cnTarka;
  frmUszoLis.edtDatumTol.Text := '';
  frmUszoLis.edtDatumIg.Text := '';
  frmUszoLis.edtAdottNap.Text := '';

  try
    frmUszoLis.ShowModal;
  finally
    if frmUszoLis.sdsNyomtat.Active then frmUszoLis.sdsNyomtat.Close;
    FreeAndNil(frmUszoLis);
  end;
end;


procedure TfrmUszoLis.actOKExecute(Sender: TObject);
Var
  dateparamtol, dateparamig , dateparama, dateparamc, sm : String;
Begin
  inherited;
  frmTListak.qListak.Connection := dtmTarka.cnTarka;
  With frmTListak.qListak Do
   Begin
     If Active Then
      Close;
     SQL.Text := 'select tkod, varos, tnev2 from teny Where tkod = ' +
                                        quotedstr(dtmTarka.TenyeszetTKOD);
     Open;
     param1 := Trim(FieldByName('tkod').AsString);
     param2 := Trim(FieldByName('varos').AsString);
     param3 := Trim(FieldByName('tnev2').AsString);

     Close;
   End;

  if edtDatumTol.Text <>  '    .  .  ' then
    dateparamtol := ' and (e.szuldat >= to_date(' + quotedstr(edtDatumTol.Text) + ',''yyyy.mm.dd'')) '
  else
    dateparamtol := '';

  if edtDatumIg.Text <>  '    .  .  ' then
    dateparamig := ' and (e.szuldat <= to_date(' + quotedstr(edtDatumIg.Text) + ',''yyyy.mm.dd'')) '
  else
    dateparamig := '';

  if edtAdottNap.Text <> '    .  .  ' then BEGIN
    dateparama := ' AND (KIKDAT IS NULL OR (KIKDAT >= to_date(' + quotedstr(edtAdottNap.Text) + ',''yyyy.mm.dd'')) ';
  END Else BEGIN
    dateparama := '';
  END;

  dateparamc := '';
  sm := 'Minden egyed';
  if rg1.ItemIndex = 0 then begin
     dateparamc := ' and ((KIKOD IS NULL) OR (KIKOD = ''0'') OR (KIKOD = ''''))';
     sm := 'Csak élõ egyedek';
  end;
  if rg1.ItemIndex = 1 then begin
     dateparamc := ' and (KIKOD > ''0'')';
     sm := 'Csak kiesett egyedek';
  end;


  If sdsNyomtat.Active Then sdsNyomtat.Close;
  sdsNyomtat.DataSet.CommandText := '';

  sdsNyomtat.DataSet.CommandText :=
    'select E.ENAR, E.FULSZAM, E.ANYA_ENAR, E.APAKLSZ, E.SZULDAT, ' +
    ' T1.DATUM, T1.KPLSZ , T2.DATUM, T2.KPLSZ , T3.DATUM, T3.KPLSZ , T4.DATUM, T4.KPLSZ , T5.DATUM, T5.KPLSZ ' +
    ' from EGYEDEK E ' +
    ' left join TERMEKENYITESEK T1 on T1.EGYED_ID = E.id and T1.DATUM = KOV_TERM_DATUM(E.id, E.SZULDAT) ' +
    ' left join termekenyitesek t2 on T2.EGYED_ID = E.ID and T2.DATUM = KOV_TERM_DATUM(e.id, t1.datum) ' +
    ' left join TERMEKENYITESEK T3 on T3.EGYED_ID = E.id and T3.DATUM = KOV_TERM_DATUM(E.id, T2.DATUM) ' +
    ' left join TERMEKENYITESEK T4 on T4.EGYED_ID = E.id and T4.DATUM = KOV_TERM_DATUM(E.id, T3.DATUM) ' +
    ' left join TERMEKENYITESEK T5 on T5.EGYED_ID = E.id and T5.DATUM = KOV_TERM_DATUM(E.id, t4.DATum) ' +
    ' where E.IVAR = ''2'' and not EXISTS (select 1 from ellesek where ELLESEK.EGYED_ID = E.ID) ' +
      'and e.tenyeszet = ' + quotedstr(param1) + dateparamtol + dateparamig + dateparamc +
    ' order by e.enar';

  Try
    Screen.Cursor := crHourGlass;
    sdsNyomtat.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If rbLista.Checked  Then Begin
       If frxReport1.LoadFromFile(dtmTarka.fr3Path + '\NovendekUszoNyilvantarto.fr3') Then Begin
          frxReport1.Variables.Clear;
          frxReport1.Script.Variables['p0'] := 'Növendék üszõ nyilvántartó';
          frxReport1.Script.Variables['p1'] := param1 + '   ' +
                                                            param2 + '   ' +
                                                            param3;
          frxReport1.Script.Variables['p2'] := '(' +
                           edtDatumTol.Text + '  -  ' +
                           edtDatumIg.Text + ')    ' +
                           edtAdottNap.Text + ' ' + sm;
          frxReport1.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(sdsNyomtat, 'NovendekUszoNyilvantarto.XLS');
  sdsNyomtat.Close;
end;

procedure TfrmUszoLis.actMegsemExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.
