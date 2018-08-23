unit QfrmTermLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, StdCtrls, uTALCheckBox, uTALGroupBox, ExtCtrls,
  uTALRadioGroup, uTALComboBox, Mask, uValidedit, uTALEdit,
  uTALRadioButton, uTALLabel, ActnList, Buttons, uTALBitBtn, DB, frxClass,
  frxDBSet, DBClient, uTALSimpleDataSet, ADODB, uTalQuery, uTALPanel;

type
  TfrmTermLista = class(TfrmNyomtatoOs)
    TalLabel1: TTalLabel;
    lblVemh: TTalLabel;
    TalLabel5: TTalLabel;
    TalLabel6: TTalLabel;
    TalLabel7: TTalLabel;
    TalLabel8: TTalLabel;
    TalLabel9: TTalLabel;
    TalLabel10: TTalLabel;
    TalLabel11: TTalLabel;
    TalLabel14: TTalLabel;
    TalLabel15: TTalLabel;
    TalLabel16: TTalLabel;
    TalLabel17: TTalLabel;
    TalLabel18: TTalLabel;
    TalLabel19: TTalLabel;
    TalLabel20: TTalLabel;
    TalLabel21: TTalLabel;
    TalLabel24: TTalLabel;
    TalLabel25: TTalLabel;
    TalLabel26: TTalLabel;
    rbTehen: TTalRadioButton;
    rbNovendek: TTalRadioButton;
    eTermDatTol: TTalEdit;
    eTermDatIg: TTalEdit;
    eVemhKodTol: TTalEdit;
    eVemhKodIg: TTalEdit;
    eTermBikaTol: TTalEdit;
    eTermBikaIg: TTalEdit;
    eTermModTol: TTalEdit;
    eTermModIg: TTalEdit;
    eInszemKodTol: TTalEdit;
    eInszemKodIg: TTalEdit;
    eSpermKodTol: TTalEdit;
    eSpermKodIg: TTalEdit;
    eSpermEredTol: TTalEdit;
    eSpermEredIg: TTalEdit;
    eSpermTipTol: TTalEdit;
    eSpermTipIg: TTalEdit;
    rbRendezettseg: TTalRadioGroup;
    gbKimenet: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    gbElo: TTalGroupBox;
    rbCsakElo: TTalRadioButton;
    rbMind: TTalRadioButton;
    rbCsakKiesett: TTalRadioButton;
    qrySeged: TTalQuery;
    sdsTermekenyitesek: TTalSimpleDataSet;
    frxDBdtsTermekenyit: TfrxDBDataset;
    edtEgyedTol: TTalEdit;
    edtEgyedIg: TTalEdit;
    sdsTermekenyitesekENAR: TWidestringField;
    sdsTermekenyitesekFULSZAM: TWidestringField;
    sdsTermekenyitesekTEHENSZAM: TWidestringField;
    sdsTermekenyitesekDATUM: TDateTimeField;
    sdsTermekenyitesekALLAPOT: TWidestringField;
    sdsTermekenyitesekMOD: TWidestringField;
    sdsTermekenyitesekINSZ: TWidestringField;
    sdsTermekenyitesekALLOMAS: TWidestringField;
    sdsTermekenyitesekEREDET: TWidestringField;
    sdsTermekenyitesekTIP: TWidestringField;
    sdsTermekenyitesekISMBIK: TWidestringField;
    sdsTermekenyitesekTSZAM: TWidestringField;
    sdsTermekenyitesekSZUPOV: TWidestringField;
    sdsTermekenyitesekVEMH_DATUM: TDateTimeField;
    TalLabel2: TTalLabel;
    edtTenyeszet: TTalEdit;
    sdsHterm: TTalSimpleDataSet;
    frxDBHterm: TfrxDBDataset;
    pnlSperma: TTalPanel;
    sdsHtermID: TBCDField;
    sdsHtermENAR: TWidestringField;
    sdsHtermFULSZAM: TWidestringField;
    sdsHtermTENYESZET: TWidestringField;
    sdsHtermEGYED_ID: TBCDField;
    sdsHtermDATUM_TOL: TDateTimeField;
    sdsHtermDATUM_IG: TDateTimeField;
    sdsHtermUTMOD_DAT: TDateTimeField;
    sdsHtermUTMOD_KOD: TWidestringField;
    sdsHtermNEV: TWidestringField;
    sdsHtermHASZN_SZAM: TWidestringField;
    sdsTermekenyitesekKPLSZ: TWideStringField;
    sdsTermekenyitesekKPLSZ_1: TWideStringField;
    sdsHtermBIKA_KLSZ: TBCDField;
    rbMindenki: TTalRadioButton;
    sdsTermekenyitesekNEV: TWideStringField;
    frxRepTermekenyitesek: TfrxReport;
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
    fajtaKod : Array of string;
    sAlapSelect : string;
    LTip : string;
  public
    { Public declarations }
  end;


Procedure ListakTermekenyitesek;
Procedure ListakHTermekenyitesek;
procedure TermFeladLista;

implementation

uses Tibor, udtmTarka;

{$R *.dfm}

Procedure ListakTermekenyitesek;
var
  frmTermLista: TfrmTermLista;
  i : integer;
Begin
  frmTermLista := TfrmTermLista.Create(Application);
  screen.Cursor := crHourGlass;
  with frmTermLista do begin
    caption := 'Termékenyítések listázása' ;
    Ltip := 'TERM';
    sdsTermekenyitesek.Connection := dtmTarka.cnTarka;
    sAlapSelect := sdsTermekenyitesek.DataSet.CommandText;
    qrySeged.Connection := dtmTarka.cnTarka;
    eTermDatTol.Text := DateToStr(Date);
    eTermDatIg.Text := DateToStr(Date);
    if dtmTarka.TenyeszetWhere <> EmptyStr then begin
      edtTenyeszet.Enabled := false;
      edtTenyeszet.Text := dtmTarka.TenyeszetTKOD
    end else begin
      edtTenyeszet.Enabled := true;
    end;
  end;
  try
    frmTermLista.ShowModal;
  finally
    if frmTermLista.sdsTermekenyitesek.Active then frmTermLista.sdsTermekenyitesek.Close;
    if frmTermLista.qrySeged.Active then frmTermLista.qrySeged.Close;
    FreeAndNil(frmTermLista);
  end;

end;




Procedure ListakHTermekenyitesek;
var
  frmTermLista: TfrmTermLista;
  i : integer;
Begin
  frmTermLista := TfrmTermLista.Create(Application);
  screen.Cursor := crHourGlass;
  with frmTermLista do begin
    caption := 'Háremszerû termékenyítések listázása' ;
    Ltip := 'HTERM';
    pnlSperma.Visible := false;
    lblVemh.Visible := false;
    eVemhKodTol.Visible := false;
    eVemhKodIg.Visible := false;
    TalLabel14.Visible := false;

    sdsHterm.Connection := dtmTarka.cnTarka;
    sAlapSelect := sdsHterm.DataSet.CommandText;
    qrySeged.Connection := dtmTarka.cnTarka;
    eTermDatTol.Text := DateToStr(Date);
    eTermDatIg.Text := DateToStr(Date);
    if dtmTarka.TenyeszetWhere <> EmptyStr then begin
      edtTenyeszet.Enabled := false;
      edtTenyeszet.Text := dtmTarka.TenyeszetTKOD
    end else begin
      edtTenyeszet.Enabled := true;
    end;
  end;
  try
    frmTermLista.ShowModal;
  finally
    if frmTermLista.sdsHterm.Active then frmTermLista.sdsHterm.Close;
    if frmTermLista.qrySeged.Active then frmTermLista.qrySeged.Close;
    FreeAndNil(frmTermLista);
  end;

end;


Procedure TermFeladLista;
var
  frmTermLista: TfrmTermLista;
  i : integer;
Begin
  frmTermLista := TfrmTermLista.Create(Application);
  screen.Cursor := crHourGlass;
  with frmTermLista do begin
    caption := 'Termékenyítések bejelentése' ;
    rbMindenki.Checked := true;
    Ltip := 'BEJELENT';
    sdsTermekenyitesek.Connection := dtmTarka.cnTarka;
    sAlapSelect := sdsTermekenyitesek.DataSet.CommandText;
    qrySeged.Connection := dtmTarka.cnTarka;
    eTermDatTol.Text := DateToStr(Date);
    eTermDatIg.Text := DateToStr(Date);
    if dtmTarka.TenyeszetWhere <> EmptyStr then begin
      edtTenyeszet.Enabled := false;
      edtTenyeszet.Text := dtmTarka.sdsTenyeszetTKOD.AsString
    end else begin
      edtTenyeszet.Enabled := true;
    end;
    TalLabel24.Visible := false;
    TalLabel25.Visible := false;
    TalLabel26.Visible := false;
    TalLabel21.Visible := false;
    lblVemh.Visible := false;
    TalLabel14.Visible := false;
    TalLabel5.Visible := false;
    TalLabel15.Visible := false;
    TalLabel6.Visible := false;
    TalLabel16.Visible := false;
    TalLabel7.Visible := false;
    TalLabel18.Visible := false;
    TalLabel9.Visible := false;
    TalLabel19.Visible := false;
    TalLabel8.Visible := false;
    TalLabel17.Visible := false;
    TalLabel10.Visible := false;
    TalLabel20.Visible := false;
    gbElo.Visible := false;
    rbRendezettseg.Visible := false;
    gbKimenet.Visible := false;
    edtEgyedTol.Visible := false;
    edtEgyedIg.Visible := false;
    rbTehen.Visible := false;
    rbNovendek.Visible := false;
    rbMindenki.Visible := false;
    edtEgyedTol.Visible := false;
    eVemhKodTol.Visible := false;
    eVemhKodIg.Visible := false;
    eTermBikaTol.Visible := false;
    eTermBikaIg.Visible := false;
    eTermModTol.Visible := false;
    eTermModIg.Visible := false;
    eInszemKodTol.Visible := false;
    eInszemKodIg.Visible := false;
    eSpermKodTol.Visible := false;
    eSpermKodIg.Visible := false;
    eSpermEredTol.Visible := false;
    eSpermEredIg.Visible := false;
    eSpermTipTol.Visible := false;
    eSpermTipIg.Visible := false;
  end;
  try
    frmTermLista.ShowModal;
  finally
    if frmTermLista.sdsTermekenyitesek.Active then frmTermLista.sdsTermekenyitesek.Close;
    if frmTermLista.qrySeged.Active then frmTermLista.qrySeged.Close;
    FreeAndNil(frmTermLista);
  end;

end;


{ TfrmTermLista }


procedure TfrmTermLista.actOKExecute(Sender: TObject);
Var
  PlusWhere, Order, sOrder : String;
  feltetelek : String;
begin
  feltetelek := '';
  PlusWhere := '';
  if edtTenyeszet.Text <> EmptyStr then begin
    feltetelek := 'Tenyészet: ' + edtTenyeszet.Text + ' ' + dtmTarka.Vaneenyeszet(edtTenyeszet.Text) + #10;
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

  if rbTehen.Checked then begin
    feltetelek := feltetelek + 'Csak tehén' + #10;
    PlusWhere := PlusWhere + ' AND EXISTS (SELECT 1 FROM ELLESEK WHERE ELLESEK.EGYED_ID = EGYEDEK.ID) ';
  end;
  if rbNovendek.Checked  then begin
    feltetelek := feltetelek + 'Csak növendék' + #10;
    PlusWhere := PlusWhere + ' AND NOT EXISTS (SELECT 1 FROM ELLESEK WHERE ELLESEK.EGYED_ID = EGYEDEK.ID) ';
  end;
  // Termékenyítés dátuma
  if lTip <> 'HTERM' then begin
    if eTermDatTol.Text <> '    .  .  ' then Begin
      feltetelek := feltetelek + 'Termékenyítés dátuma >= ' + eTermDatTol.Text + #10;
      PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.DATUM >= to_date(' + quotedstr(eTermDatTol.Text) + ',''yyyy.mm.dd'')' ;
    end;
    if eTermDatIg.Text <> '    .  .  ' then Begin
      feltetelek := feltetelek + 'Termékenyítés dátuma <=  ' + eTermDatIg.Text + #10;
      PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.DATUM <= to_date(' + quotedstr(eTermDatIg.Text) + ',''yyyy.mm.dd'')' ;
    end;
  end else begin
    if eTermDatTol.Text <> '    .  .  ' then Begin
      feltetelek := feltetelek + 'Termékenyítés dátuma >=  ' + eTermDatTol.Text + #10;
      feltetelek := feltetelek + 'Termékenyítés dátuma <=  ' + eTermDatIg.Text + #10;
      PlusWhere := PlusWhere + ' and ((TERMEKENYITESEK.DATUM_TOL >= to_date(' + quotedstr(eTermDatTol.Text) + ',''yyyy.mm.dd'')' +
                                  ' AND TERMEKENYITESEK.DATUM_TOL <= to_date(' + quotedstr(eTermDatIg.Text) + ',''yyyy.mm.dd'')) or ' +
                                  ' (TERMEKENYITESEK.DATUM_IG >= to_date(' + quotedstr(eTermDatTol.Text) + ',''yyyy.mm.dd'')'  +
                                  ' AND TERMEKENYITESEK.DATUM_IG <= to_date(' + quotedstr(eTermDatIg.Text) + ',''yyyy.mm.dd'')))';
    end;
  end;
  // Vemhességi kód
  if eVemhKodTol.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Vemhességi kód >= ' + eVemhKodTol.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.ALLAPOT >= ' + quotedstr(eVemhKodTol.Text);
  end;
  if eVemhKodIg.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Vemhességi kód <= ' + eVemhKodIg.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.ALLAPOT <= ' + quotedstr(eVemhKodIg.Text);
  end;
  // Termékenyítés módja
  if eTermModTol.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Termékenyítés módja kód >= ' + eTermModTol.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.MOD >= ' + quotedstr(eTermModTol.Text);
  end;
  if eTermModIg.Text <> EmptyStr then begin
    feltetelek := feltetelek + 'Termékenyítés módja kód <= ' + eTermModIg.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.MOD <= ' + quotedstr(eTermModIg.Text);
  end;
  // Termékenyítõ bika
  if lTip <> 'THTERM' then begin
    if eTermBikaTol.Text > EmptyStr then begin
      feltetelek := feltetelek + 'Bika KPLSZ >=  ' + eTermBikaTol.Text + #10;
      PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.KPLSZ >= ' + quotedstr(eTermBikaTol.Text);
    end;
    if eTermBikaIg.Text > EmptyStr then begin
      feltetelek := feltetelek + 'Bika KPLSZ <=  ' + eTermBikaIg.Text + #10;
      PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.KPLSZ <= ' + quotedstr(eTermBikaIg.Text);
    end;
  end else begin
    if eTermBikaTol.Text > EmptyStr then begin
      feltetelek := feltetelek + 'Bika KPLSZ >=  ' + eTermBikaTol.Text + #10;
      PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.BIKA_KLSZ >= ' + quotedstr(eTermBikaTol.Text);
    end;
    if eTermBikaIg.Text > EmptyStr then begin
      feltetelek := feltetelek + 'Bika KPLSZ <=  ' + eTermBikaIg.Text + #10;
      PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.BIKA_KLSZ <= ' + quotedstr(eTermBikaIg.Text);
    end;
  end;
  // Inszeminátor
  if eInszemKodTol.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Inszeminátor kód >=  ' + eInszemKodTol.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.INSZ >= ' + quotedstr(eInszemKodTol.Text);
  end;
  if eInszemKodIg.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Bika KPLSZ <=  ' + eInszemKodIg.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.INSZ <= ' + quotedstr(eInszemKodIg.Text);
  end;
  // Sperma eredet
  if eSpermEredTol.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Sperma eredet kód >=  ' + eSpermEredTol.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.EREDET >= ' + quotedstr(eSpermEredTol.Text);
  end;
  if eSpermEredIg.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Sperma eredet kód <=  ' + eSpermEredIg.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.EREDET >= ' + quotedstr(eSpermEredIg.Text);
  end;
  // Sperma elõállító
  if eSpermKodTol.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Sperma elõállító kód >=  ' + eSpermEredTol.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.ALLOMAS >= ' + quotedstr(eSpermKodTol.Text);
  end;
  if eSpermKodIg.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Sperma elõállító kód <=  ' + eSpermKodIg.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.ALLOMAS <= ' + quotedstr(eSpermKodIg.Text);
  end;
  // Sperma Típusa
  if eSpermTipTol.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Sperma típus kód >=  ' + eSpermTipTol.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.TIP >= ' + quotedstr(eSpermTipTol.Text);
  end;
  if eSpermTipIg.Text > EmptyStr then begin
    feltetelek := feltetelek + 'Sperma típus kód <=  ' + eSpermTipIg.Text + #10;
    PlusWhere := PlusWhere + ' AND TERMEKENYITESEK.TIP <= ' + quotedstr(eSpermTipIg.Text);
  end;
  if rbCsakElo.Checked then begin
    feltetelek := feltetelek + 'Csak élõ egyedek' + #10;
    PlusWhere := PlusWhere + ' AND EGYEDEK.KIKDAT IS NULL ';
  end;
  if rbCsakKiesett.Checked then begin
    feltetelek := feltetelek + 'Csak kiesett egyedek' + #10;
    PlusWhere := PlusWhere + ' AND EGYEDEK.KIKDAT IS NOT NULL ';
  end;

  if rbRendezettseg.ItemIndex = 0 then begin
    if lTip <> 'HTERM' then begin
      order := ' ORDER BY EGYEDEK.ENAR,TERMEKENYITESEK.DATUM ';
      sOrder := rbRendezettseg.Items[0];
    end else begin
      order := ' ORDER BY EGYEDEK.ENAR,TERMEKENYITESEK.DATUM_TOL ';
      sOrder := rbRendezettseg.Items[0];
    end;
  end;
  if rbRendezettseg.ItemIndex = 1 then begin
    if lTip = 'TERM' then begin
      order := ' ORDER BY TERMEKENYITESEK.DATUM, EGYEDEK.ENAR ';
      sOrder := rbRendezettseg.Items[1];
    end else begin
      order := ' ORDER BY TERMEKENYITESEK.DATUM_TOL, EGYEDEK.ENAR ';
      sOrder := rbRendezettseg.Items[1];
    end;
  end;

  if lTip = 'TERM' then begin
    frxDBdtsTermekenyit.DataSet := sdsTermekenyitesek;
    if sdsTermekenyitesek.Active then sdsTermekenyitesek.Close;
    sdsTermekenyitesek.DataSet.CommandText := sAlapSelect + PlusWhere + Order;
    try
      Screen.Cursor := crHourGlass;
      sdsTermekenyitesek.Open;
    finally
      Screen.Cursor := crArrow;
    end;

    if rbLista.Checked then begin
      If frxRepTermekenyitesek.LoadFromFile(dtmTarka.fr3Path + '\Termekenyitesek.fr3') Then Begin
         // paraméter átadás a lista fejhez
         frxRepTermekenyitesek.Variables.Clear;
         frxRepTermekenyitesek.Script.Variables['SzuroFeltetelek'] := feltetelek;
         frxRepTermekenyitesek.Script.Variables['Rendezettseg'] := sOrder;
         frxRepTermekenyitesek.ShowReport;
       End;
    end else begin
      dtmTarka.ExcelExport(sdsTermekenyitesek, 'termekenyitesek.xls');
    end;
    sdsTermekenyitesek.Close;
  end;

  if lTip = 'HTERM' then begin
    frxDBHterm.DataSet := sdsHterm;
    if sdsHterm.Active then sdsHterm.Close;
    sdsHterm.DataSet.CommandText := sAlapSelect + PlusWhere + Order;
    try
      Screen.Cursor := crHourGlass;
      sdsHterm.Open;
    finally
      Screen.Cursor := crArrow;
    end;

    if rbLista.Checked then begin
      If frxRepTermekenyitesek.LoadFromFile(dtmTarka.fr3Path + '\HTermekLista.fr3') Then Begin
         // paraméter átadás a lista fejhez
         frxRepTermekenyitesek.Variables.Clear;
         frxRepTermekenyitesek.Script.Variables['SzuroFeltetelek'] := feltetelek;
         frxRepTermekenyitesek.Script.Variables['Rendezettseg'] := sOrder;
         frxRepTermekenyitesek.ShowReport;
       End;
    end else begin
      dtmTarka.ExcelExport(sdsHterm, 'HaremTermekenyitesek.xls');
    end;
    sdsHterm.Close;

  end;


  if lTip = 'BEJELENT' then begin
    frxDBdtsTermekenyit.DataSet := sdsTermekenyitesek;
    if sdsTermekenyitesek.Active then sdsTermekenyitesek.Close;
    sdsTermekenyitesek.DataSet.CommandText := sAlapSelect + PlusWhere + Order;
    try
      Screen.Cursor := crHourGlass;
      sdsTermekenyitesek.Open;
    finally
      Screen.Cursor := crArrow;
    end;

    if rbLista.Checked then begin
      If frxRepTermekenyitesek.LoadFromFile(dtmTarka.fr3Path + '\TermBejelentes.fr3') Then Begin
         // paraméter átadás a lista fejhez
         frxRepTermekenyitesek.Variables.Clear;
         frxRepTermekenyitesek.Script.Variables['Cim'] := 'Bejelentett termékenyítések   ( ' + eTermDatTol.Text + ' - ' + eTermDatIg.Text + ' )' ;
         frxRepTermekenyitesek.Script.Variables['SzuroFeltetelek'] := 'Tenyészet : ' + edtTenyeszet.Text ;
         frxRepTermekenyitesek.Script.Variables['Rendezettseg'] := sOrder;
         frxRepTermekenyitesek.ShowReport;
       End;
    end else begin
      dtmTarka.ExcelExport(sdsTermekenyitesek, 'termBejelentes.xls');
    end;
    sdsTermekenyitesek.Close;
  end;


end;

end.
