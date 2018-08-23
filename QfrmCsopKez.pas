unit QfrmCsopKez;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uTALMemo, DBCtrls, uTALDBLookupComboBox, uTALPanel, DateUtils,
  Buttons, uTALSpeedButton, Mask, uTALMaskEdit, uTALComboBox, uValidedit,
  uTALEdit, frxClass, frxDBSet, DB, ADODB, uTalQuery, ActnList, uTALLabel,
  ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid, DBClient,StrUtils,
  uTALSimpleDataSet, uDBValidedit, uTALDBEdit, uTalParams;

type
  TfrmCsopKez = class(TForm)
    pnlGombok: TPanel;
    TalLabel12: TTalLabel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    btnNyomtat: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    actOK: TAction;
    actMegsem: TAction;
    actFeltolt: TAction;
    frxDBLista: TfrxDBDataset;
    btnLeker: TBitBtn;
    edtKeres: TEdit;
    TalLabel6: TTalLabel;
    TalLabel1: TTalLabel;
    TalLabel11: TTalLabel;
    TalLabel2: TTalLabel;
    TalLabel9: TTalLabel;
    TalLabel10: TTalLabel;
    TalLabel5: TTalLabel;
    lucCsop: TTalComboBox;
    lucVemh: TTalComboBox;
    edtVarhEllTol: TTalMaskEdit;
    btnCsopTorol: TTalSpeedButton;
    btnVemhTorol: TTalSpeedButton;
    TalPanel1: TTalPanel;
    Label1: TLabel;
    TalPanel2: TTalPanel;
    TalLabel13: TTalLabel;
    Label2: TTalLabel;
    Label3: TTalLabel;
    Label7: TTalLabel;
    btnKezeles: TTalSpeedButton;
    Label9: TTalLabel;
    btnGyogyszer: TTalSpeedButton;
    TalLabel14: TTalLabel;
    TalLabel15: TTalLabel;
    TalLabel16: TTalLabel;
    edtKezDatum: TTalEdit;
    edtGy1Kod: TTalEdit;
    edtGy1Nev: TTalEdit;
    edtGy2Kod: TTalEdit;
    TalSpeedButton1: TTalSpeedButton;
    edtGy2Nev: TTalEdit;
    edtGy3Kod: TTalEdit;
    TalSpeedButton2: TTalSpeedButton;
    edtGy3Nev: TTalEdit;
    TalMemo1: TTalMemo;
    edtKezKod: TTalEdit;
    edtKezNev: TTalEdit;
    sdsCsopSor: TTalSimpleDataSet;
    dtsCsopSor: TDataSource;
    lucKezelok: TTalComboBox;
    qryKezelok: TTalQuery;
    qryKezelokKOD: TWidestringField;
    qryKezelokKOD_NEV: TWidestringField;
    dtsKezelok: TDataSource;
    TalLabel17: TTalLabel;
    lucKorCsoport: TTalComboBox;
    TalSpeedButton3: TTalSpeedButton;
    lucIvar: TTalComboBox;
    edtVarhEllig: TTalMaskEdit;
    edtSzulDatTol: TTalMaskEdit;
    edtSzulDatIg: TTalMaskEdit;
    sdsCsopSorID: TBCDField;
    sdsCsopSorUT_TERM_DAT: TDateTimeField;
    sdsCsopSorVEMH_KOD: TWidestringField;
    sdsCsopSorKEZ_DATUM: TDateTimeField;
    sdsCsopSorSZARAZ_DATUM: TDateTimeField;
    sdsCsopSorVARH_ELLES_DATUM: TDateTimeField;
    grdVal: TTalDBGrid;
    BitBtn1: TBitBtn;
    edtKovKez: TTalMaskEdit;
    sdsCsKezelesek: TTalSimpleDataSet;
    sdsCsKezelesekID: TBCDField;
    sdsCsKezelesekEGYEDEK_ID: TBCDField;
    sdsCsKezelesekKEZ_DATUM: TDateTimeField;
    sdsCsKezelesekKEZ_SORSZAM: TIntegerField;
    sdsCsKezelesekKEZELES_ID: TBCDField;
    sdsCsKezelesekKEZELO_KOD: TWidestringField;
    sdsCsKezelesekKOV_KEZELES_DATUM: TDateTimeField;
    sdsCsKezelesekMEGJEGYZES: TWidestringField;
    sdsCsKezelesekGYOGYSZER_ID: TBCDField;
    sdsCsKezelesekUTMOD_DAT: TDateTimeField;
    sdsCsKezelesekUTMOD_KOD: TWidestringField;
    sdsCsKezelesekGYOGYSZER2_ID: TBCDField;
    sdsCsKezelesekGYOGYSZER3_ID: TBCDField;
    sdsCsKezelesekTIPUS: TWidestringField;
    qGetSorszam: TTalQuery;
    frxRepLista: TfrxReport;
    edtGyMenny1: TTalDBEdit;
    edtMe1: TTalDBEdit;
    edtGyMenny2: TTalDBEdit;
    edtMe2: TTalDBEdit;
    edtGyMenny3: TTalDBEdit;
    edtMe3: TTalDBEdit;
    lblGyMenny: TTalLabel;
    sdsCsKezelesekGYKLT1_ID: TBCDField;
    sdsCsKezelesekGYKLT2_ID: TBCDField;
    sdsCsKezelesekGYKLT3_ID: TBCDField;
    sdsCsKezelesekGYMENNY_1: TBCDField;
    sdsCsKezelesekGYMENNY_2: TBCDField;
    sdsCsKezelesekGYMENNY_3: TBCDField;
    sdsCsopSorENAR: TWidestringField;
    sdsCsopSorSZULDAT: TDateTimeField;
    procedure btnCancelClick(Sender: TObject);
    procedure btnKezelesClick(Sender: TObject);
    procedure edtKezKodExit(Sender: TObject);
    procedure btnGyogyszerClick(Sender: TObject);
    procedure TalSpeedButton1Click(Sender: TObject);
    procedure TalSpeedButton2Click(Sender: TObject);
    procedure edtGy1KodExit(Sender: TObject);
    procedure edtGy2KodExit(Sender: TObject);
    procedure edtGy3KodExit(Sender: TObject);
    procedure btnCsopTorolClick(Sender: TObject);
    procedure btnVemhTorolClick(Sender: TObject);
    procedure TalSpeedButton3Click(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure grdValDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    csoportok : array of string;
    VemhKod : array of string;
    Kezelok : array of string;
    Korcsoport : array of string;
    AlapSelect : string;
    sKezelesId : string;
    sGyogy1Id : string;
    sGyogy2Id : string;
    sGyogy3Id : string;
    sGyKlt1Id : string;
    sGyKlt2Id : string;
    sGyKlt3Id : string;
    SzuroFelt : string;
    csopSzuro : string;
    procedure CsopKezMentes;
    function MezokKitoltve:Boolean;
    function GetSorszam(Egyed_id, Datum: variant):integer;
  public
    { Public declarations }
  end;

var
  frmCsopKez: TfrmCsopKez;

function OpenCsopKez(KezCsoport:string):Boolean;

implementation

uses udtmTarka, QfrmKezParam, QfrmMedicine, QSysTools, QfrmGyogyKlt;

{$R *.dfm}

function OpenCsopKez(KezCsoport:string):Boolean;
var
 i : integer;
begin
  Result := false;
  frmCsopKez := TfrmCsopKez.Create(Application);
  frmCsopKez.sdsCsopSor.Connection := dtmTarka.cnTarka;
  frmCsopKez.sdsCsKezelesek.Connection := dtmTarka.cnTarka;
  frmCsopKez.qryKezelok.Connection := dtmTarka.cnTarka;
  frmCsopKez.qGetSorszam.Connection := dtmTarka.cnTarka;
  frmCsopKez.AlapSelect := frmCsopKez.sdsCsopSor.DataSet.CommandText;
(*  frmCsopKez.csopSzuro := KezCsoport;
  with dtmTarka.qryTermCsop do begin
    Open;
    SetLength(frmCsopKez.csoportok ,RecordCount);
    First;
    i := 0;
    While not eof do begin
      frmCsopKez.lucCsop.Items.Add(FieldByName('NEV').AsString);
      frmCsopKez.csoportok[i] := FieldByName('KOD').AsString;
      i := i+1;
      next;
    end;
    Close;
  end;*)
  with dtmTarka.qryVemhKod do begin
    Open;
    SetLength(frmCsopKez.VemhKod ,RecordCount);
    First;
    i := 0;
    While not eof do begin
      frmCsopKez.lucVemh.Items.Add(FieldByName('KOD_NEV').AsString);
      frmCsopKez.VemhKod[i] := FieldByName('KOD').AsString;
      i := i+1;
      next;
    end;
    Close;
  end;
  with frmCsopKez.qryKezelok do begin
    Open;
    SetLength(frmCsopKez.Kezelok ,RecordCount);
    First;
    i := 0;
    While not eof do begin
      frmCsopKez.lucKezelok.Items.Add(FieldByName('KOD_NEV').AsString);
      frmCsopKez.Kezelok[i] := FieldByName('KOD').AsString;
      i := i+1;
      next;
    end;
    Close;
  end;
  with dtmTarka.qryStatus do begin
    Open;
    SetLength(frmCsopKez.Korcsoport ,RecordCount);
    First;
    i := 0;
    While not eof do begin
      frmCsopKez.lucKorCsoport.Items.Add(FieldByName('NEV').AsString);
      frmCsopKez.Korcsoport[i] := FieldByName('KOD').AsString;
      i := i+1;
      next;
    end;
    Close;
  end;
  with frmCsopKez do begin
    edtKezDatum.Text := DateToStr(today());
    sGyogy1Id := '';
    sGyogy2Id := '';
    sGyogy3Id := '';

//    dtmTarka.sdsTermCsopVal.Open;

    if dtmTarka.iKellGyogyszerKlt = 0 then begin
      lblGyMenny.Visible := false;
      edtGyMenny1.Visible := false;
      edtGyMenny2.Visible := false;
      edtGyMenny3.Visible := false;
      edtMe1.Visible := false;
      edtMe2.Visible := false;
      edtMe3.Visible := false;
    end else begin
      lblGyMenny.Visible := true;
      edtGyMenny1.Visible := true;
      edtGyMenny2.Visible := true;
      edtGyMenny3.Visible := true;
      edtMe1.Visible := true;
      edtMe2.Visible := true;
      edtMe3.Visible := true;
    end;

    ShowModal;

    if sdsCsopSor.Active then frmCsopKez.sdsCsopSor.Close;
//    if dtmTarka.sdsTermCsopVal.Active then dtmTarka.sdsTermCsopVal.Close;
  end;

  FreeAndNil(frmCsopKez);
end;


procedure TfrmCsopKez.btnCancelClick(Sender: TObject);
begin
  if not grdVal.DataSource.DataSet.IsEmpty then begin
    if grdVal.DataSource.DataSet.Modified then
      if dtmTarka.MsgDlg('Elmenti az eddig rögzített új kezeléseket?', mtConfirmation , [mbYes, mbNo],0) = mrNo then exit;
    CsopKezMentes;
  end;
  ModalResult := mrCancel;
end;


procedure TfrmCsopKez.CsopKezMentes;
begin
//
end;


procedure TfrmCsopKez.btnKezelesClick(Sender: TObject);
begin
  if KezParam(True,csopSzuro ) then
  begin
    Self.sKezelesId := frmKezParam.Id;
    edtKezKod.Text := frmKezParam.Kod;
    edtKezNev.Text := frmKezParam.Nev;
  end;
  Self.edtKezKod.SetFocus;
end;


procedure TfrmCsopKez.edtKezKodExit(Sender: TObject);
var
  Nev : string;
  csoport, id, kod : string;
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if edtKezKod.Text <> '' then
  begin
    id := '';
    kod := edtKezKod.Text;
    nev := '';
    if csopSzuro = '' then
      csoport := ''
    else
      csoport := csopSzuro;

    if dtmTarka.KezelesAdat(id,kod,nev,csoport) then begin
      edtKezNev.Text := Nev;
      Self.sKezelesId := Id;
    end else begin
      ShowMessage('Nincs ilyen kezelés azonosító!');
      edtKezKod.SetFocus;
    end;
  end;
end;


procedure TfrmCsopKez.btnGyogyszerClick(Sender: TObject);
var
  Kapott , vissza : TTalParamList;
begin
  if edtGyMenny1.Visible = false then begin
    if GyogyszerKarb(False) then begin
      Self.sGyogy1Id := frmMedicine.Id;
      edtGy1Kod.Text := frmMedicine.Kod;
      edtGy1Nev.Text := frmMedicine.Nev;
      Self.edtGy1Kod.SetFocus;
    end;
  end else begin
    Kapott := TTalParamList.Create;
    Vissza := TTalParamList.Create;
    Kapott.Add('mode','VAL');
    try
      if GyogyszerKlt(Kapott, Vissza) then begin
        Self.sGyogy1Id := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
        Self.sGyKlt1Id := Vissza.itemsByName('ID').Values[0];
        edtGy1Kod.Text := Vissza.itemsByName('KOD').Values[0];
        edtGy1Nev.Text := Vissza.itemsByName('NEV').Values[0];
        edtMe1.Text := Vissza.itemsByName('ME').Values[0];
      end;
    finally
      Kapott.Free;
      Vissza.Free;
    end;
    if edtGyMenny1.CanFocus then edtGyMenny1.SetFocus;
  end;
end;



procedure TfrmCsopKez.TalSpeedButton1Click(Sender: TObject);
var
  Kapott , vissza : TTalParamList;
begin
  if edtGyMenny2.Visible = false then begin
    if GyogyszerKarb(False) then begin
      Self.sGyogy2Id := frmMedicine.Id;
      edtGy2Kod.Text := frmMedicine.Kod;
      edtGy2Nev.Text := frmMedicine.Nev;
      Self.edtGy2Kod.SetFocus;
    end;
  end else begin
    Kapott := TTalParamList.Create;
    Vissza := TTalParamList.Create;
    Kapott.Add('mode','VAL');
    try
      if GyogyszerKlt(Kapott, Vissza) then begin
        Self.sGyogy2Id := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
        Self.sGyKlt2Id := Vissza.itemsByName('ID').Values[0];
        edtGy2Kod.Text := Vissza.itemsByName('KOD').Values[0];
        edtGy2Nev.Text := Vissza.itemsByName('NEV').Values[0];
        edtMe2.Text := Vissza.itemsByName('ME').Values[0];
      end;
    finally
      Kapott.Free;
      Vissza.Free;
    end;
    if edtGyMenny2.CanFocus then edtGyMenny2.SetFocus;
  end;
end;



procedure TfrmCsopKez.TalSpeedButton2Click(Sender: TObject);
var
  Kapott , vissza : TTalParamList;
begin
  if edtGyMenny3.Visible = false then begin
    if GyogyszerKarb(False) then begin
      Self.sGyogy3Id := frmMedicine.Id;
      edtGy3Kod.Text := frmMedicine.Kod;
      edtGy3Nev.Text := frmMedicine.Nev;
      Self.edtGy3Kod.SetFocus;
    end;
  end else begin
    Kapott := TTalParamList.Create;
    Vissza := TTalParamList.Create;
    Kapott.Add('mode','VAL');
    try
      if GyogyszerKlt(Kapott, Vissza) then begin
        Self.sGyogy3Id := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
        Self.sGyKlt3Id := Vissza.itemsByName('ID').Values[0];
        edtGy3Kod.Text := Vissza.itemsByName('KOD').Values[0];
        edtGy3Nev.Text := Vissza.itemsByName('NEV').Values[0];
        edtMe3.Text := Vissza.itemsByName('ME').Values[0];
      end;
    finally
      Kapott.Free;
      Vissza.Free;
    end;
    if edtGyMenny3.CanFocus then edtGyMenny3.SetFocus;
  end;

end;



procedure TfrmCsopKez.edtGy1KodExit(Sender: TObject);
var
  Nev : string;
  kapott, vissza : TTalParamList;
begin
  if edtGy1Kod.Text = '' then exit;
  if edtGyMenny1.Visible = false then begin
    if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGy1Kod.Text)), 'NEV', Nev) then begin
      edtGy1Nev.Text := Nev;
      if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGy1Kod.Text)), 'ID', Nev) then
      Self.sGyogy1Id := NEV;
    end else
      ShowMessage('Nincs ilyen gyógyszer azonosító!');
  end else begin
    Kapott := TTalParamList.Create;
    Vissza := TTalParamList.Create;
    Kapott.Add('mode','VAL');
    Kapott.Add('GYOGYSZER_KOD',edtGy1Kod.Text);
    try
      if GyogyszerKlt(Kapott, Vissza) then begin
        sGyogy1Id := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
        sGyKlt1Id := Vissza.itemsByName('ID').Values[0];
        edtGy1Kod.Text := Vissza.itemsByName('KOD').Values[0];
        edtGy1Nev.Text := Vissza.itemsByName('NEV').Values[0];
        edtMe1.Text := Vissza.itemsByName('ME').Values[0];
      end;
    finally
      Kapott.Free;
      Vissza.Free;
    end;
  end;
end;


procedure TfrmCsopKez.edtGy2KodExit(Sender: TObject);
var
  Nev : string;
  kapott, vissza : TTalParamList;
begin
  inherited;
  if edtGy2Kod.Text = '' then exit;
  if edtGyMenny1.Visible = false then begin
    if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGy2Kod.Text)), 'NEV', Nev) then begin
      edtGy2Nev.Text := Nev;
      if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGy2Kod.Text)), 'ID', Nev) then
      Self.sGyogy2Id := NEV;
    end else
      ShowMessage('Nincs ilyen gyógyszer azonosító!');
  end else begin
    Kapott := TTalParamList.Create;
    Vissza := TTalParamList.Create;
    Kapott.Add('mode','VAL');
    Kapott.Add('GYOGYSZER_KOD',edtGy2Kod.Text);
    try
      if GyogyszerKlt(Kapott, Vissza) then begin
        sGyogy2Id := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
        sGyKlt2Id := Vissza.itemsByName('ID').Values[0];
        edtGy2Kod.Text := Vissza.itemsByName('KOD').Values[0];
        edtGy2Nev.Text := Vissza.itemsByName('NEV').Values[0];
        edtMe2.Text := Vissza.itemsByName('ME').Values[0];
      end;
    finally
      Kapott.Free;
      Vissza.Free;
    end;
  end;
end;

procedure TfrmCsopKez.edtGy3KodExit(Sender: TObject);
var
  Nev : string;
  kapott, vissza : TTalParamList;
begin
  inherited;
  if edtGy3Kod.Text = '' then exit;
  if edtGyMenny1.Visible = false then begin
    if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGy3Kod.Text)), 'NEV', Nev) then begin
      edtGy3Nev.Text := Nev;
      if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGy3Kod.Text)), 'ID', Nev) then
      Self.sGyogy3Id := NEV;
    end else
      ShowMessage('Nincs ilyen gyógyszer azonosító!');
  end else begin
    Kapott := TTalParamList.Create;
    Vissza := TTalParamList.Create;
    Kapott.Add('mode','VAL');
    Kapott.Add('GYOGYSZER_KOD',edtGy3kod.Text);
    try
      if GyogyszerKlt(Kapott, Vissza) then begin
        sGyogy3Id := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
        sGyKlt3Id := Vissza.itemsByName('ID').Values[0];
        edtGy3Kod.Text := Vissza.itemsByName('KOD').Values[0];
        edtGy3Nev.Text := Vissza.itemsByName('NEV').Values[0];
        edtMe3.Text := Vissza.itemsByName('ME').Values[0];
      end;
    finally
      Kapott.Free;
      Vissza.Free;
    end;
  end;
end;

procedure TfrmCsopKez.btnCsopTorolClick(Sender: TObject);
begin
  lucCsop.Text := '';
  lucCsop.ItemIndex := -1;
end;

procedure TfrmCsopKez.btnVemhTorolClick(Sender: TObject);
begin
  lucVemh.Text := '';
  lucVemh.ItemIndex := -1;
end;

procedure TfrmCsopKez.TalSpeedButton3Click(Sender: TObject);
begin
  lucKorCsoport.Text := '';
  lucKorCsoport.ItemIndex := -1;
end;


procedure TfrmCsopKez.btnLekerClick(Sender: TObject);
var
  add_where : string;
begin
  if not dtmTarka.LicenceDatEll then
    Exit;

  Add_where := '';
  SzuroFelt := '';

  if trim(edtSzulDatTol.Text) <> '.  .' then
  begin
    add_where := Add_where +
     'and (EE.SZULDAT >= to_date(' + quotedstr(edtSzulDatTol.Text) + ',''yyyy.mm.dd''))';
    SzuroFelt := SzuroFelt + 'Születési dátum:'+edtSzulDatTol.Text + '-tól'+ #13#10;
  end;

  if trim(edtSzulDatIg.Text) <> '.  .' then
  begin
    add_where := Add_where +
     'and (EE.SZULDAT <= to_date(' + quotedstr(edtSzulDatIg.Text) + ',''yyyy.mm.dd''))';
    SzuroFelt := SzuroFelt + 'Születési dátum:'+edtSzulDatIg.Text + '-ig'+ #13#10;
  end;

  if lucIvar.ItemIndex = 1 then
  begin
    add_where := Add_where + 'AND (EE.IVAR=''1'')';
  end;

  if lucIvar.ItemIndex = 2 then
  begin
    add_where := Add_where + 'AND (EE.IVAR=''2'')';
  end;
  SzuroFelt := SzuroFelt + 'Ivar: '+ lucIvar.Text + #13#10;

  if trim(lucCsop.Text) <> EmptyStr then
  begin
    add_where := Add_where + ' and (EE.TERMELESI_CSOPORT_KOD='+
       Quotedstr(Csoportok[lucCsop.itemindex])+')';
    SzuroFelt := SzuroFelt + 'Termelési csoport: '+ lucCsop.Text + #13#10;
  end;

  if trim(lucKorCsoport.Text) <> EmptyStr then
  begin
    add_where := Add_where + ' and (EE.STATUSZ='+
       Quotedstr(Korcsoport[lucKorCsoport.itemindex])+')';
    SzuroFelt := SzuroFelt + 'Korcsoport: '+ lucKorCsoport.Text + #13#10;
  end;

  if trim(lucVemh.Text) <> EmptyStr then
  begin
    add_where := Add_where +
      '  and (termekenyitesek.allapot = ' +
         Quotedstr(VemhKod[lucVemh.itemindex])+')';
    SzuroFelt := SzuroFelt + 'Vemhességi kód: '+ lucVemh.Text + #13#10;
  end;

  if trim(edtVarhEllTol.Text) <> '.  .' then
  begin
    add_where := Add_where +
      '  AND ((termekenyitesek.datum + 285) >= to_date(' + quotedstr(edtVarhEllTol.Text) + ',''yyyy.mm.dd'')) ' ;
    SzuroFelt := SzuroFelt + 'Várható ellés dátum:'+edtVarhEllTol.Text + '-tól'+ #13#10;
  end;

  if trim(edtVarhEllig.Text) <> '.  .' then
  begin
    add_where := Add_where +
      '  AND ((termekenyitesek.datum + 285) <= to_date(' + quotedstr(edtVarhEllig.Text) + ',''yyyy.mm.dd'')) ' ;
     SzuroFelt := SzuroFelt + 'Várható ellés dátum:' + edtVarhEllig.Text + '-ig'+ #13#10;
  end;

  if sdsCsopSor.Active then
  begin
    sdsCsopSor.Close;
  end;

  sdsCsopSor.DataSet.CommandText := AlapSelect + add_where;
  sdsCsopSor.Open;
  edtKeres.SetFocus;

  if sdsCsopSor.RecordCount > 0 then
    btnOK.Enabled := true
  else
    btnOK.Enabled := false;
end;


procedure TfrmCsopKez.BitBtn2Click(Sender: TObject);
begin
  if Self.grdVal.DataSource.DataSet.Active = false then exit;
  if Self.grdVal.SelectedList.Count > 0 then begin
    Self.grdVal.SelectedList.Clear;
    Self.grdVal.Repaint;
  end;
end;

procedure TfrmCsopKez.grdValDblClick(Sender: TObject);
begin
  Self.grdVal.SelectRecord;
end;



procedure TfrmCsopKez.BitBtn1Click(Sender: TObject);
begin
  if Self.grdVal.DataSource.DataSet.Active = false then exit;
  Self.grdVal.SelectAll;
end;



function TfrmCsopKez.MezokKitoltve: Boolean;
begin
  result := false;
  if edtKezDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A kezelés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtKezDatum.SetFocus;
    exit;
  end;
  if edtKezKod.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A kezelés kódjának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtKezKod.SetFocus;
    exit;
  end;
  if lucKezelok.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A kezelõ megadása kötelezõ!', mtWarning, [mbOK], 0);
    lucKezelok.SetFocus;
    exit;
  end;
  if (edtGy1Kod.Text <> EmptyStr) and edtGyMenny1.Visible and (edtGyMenny1.Value = 0)  then begin
    dtmTarka.MsgDlg('A gyógyszer mennyiségének megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtGyMenny1.SetFocus;
    exit;
  end;
  if (edtGy2Kod.Text <> EmptyStr) and edtGyMenny2.Visible and (edtGyMenny2.Value = 0)  then begin
    dtmTarka.MsgDlg('A gyógyszer mennyiségének megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtGyMenny2.SetFocus;
    exit;
  end;
  if (edtGy3Kod.Text <> EmptyStr) and edtGyMenny3.Visible and (edtGyMenny3.Value = 0)  then begin
    dtmTarka.MsgDlg('A gyógyszer mennyiségének megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtGyMenny3.SetFocus;
    exit;
  end;
  Result := true;
end;



function TfrmCsopKez.GetSorszam(Egyed_id, Datum: variant): integer;
begin
  if qGetSorszam.Active then
    qGetSorszam.Close;

  qGetSorszam.Parameters.ParamByName('EGYED_ID').Value := EGYED_ID;
//  qGetSorszam.Parameters.ParamByName('P_DATUM').Value := Datum;
  qGetSorszam.Open;
  result := qGetSorszam.FieldByName('SORSZAM').AsInteger;

  qGetSorszam.Close;
end;


procedure TfrmCsopKez.btnNyomtatClick(Sender: TObject);
var
  sazon : string;
  aa : string;
begin
  if sdsCsopSor.Active = false then exit;
  if sdsCsopSor.RecordCount = 0 then exit;
  aa := dtmTarka.sATKFT_KOD;
  if frxRepLista.LoadFromFile('CsopKezLista.fr3') then begin
     // paraméter átadás a lista fejhez
//     sazon := sdsCsopSorAZONOSITO.AsString;
     sdsCsopSor.DisableControls;
     try
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['ENAR_KOD']:=dtmTarka.sTenyeszetKod;
       frxRepLista.Script.Variables['TENYESZET_NEV']:=dtmTarka.sTenyeszetNev;
       frxRepLista.Script.Variables['SzuroFeltetelek']:=szurofelt;
       aa := dtmTarka.sATKFT_KOD;
       frxRepLista.Script.Variables['AT_KFTKOD']:= LeftStr(aa,2) + '-'+ midstr(aa ,3, 3) + '-' + RightStr(aa,2);
       frxRepLista.ShowReport();
     finally
       sdsCsopSor.Locate('AZONOSITO',sazon,[]);
       sdsCsopSor.EnableControls;
     end;
  End;
end;

procedure TfrmCsopKez.actOKExecute(Sender: TObject);
var
  i : integer;
  Klt : double;
begin
  if not sdsCsopsor.Active then exit;
  if sdsCsopSor.RecordCount = 0 then exit;
  if Self.grdVal.SelectedList.Count = 0 then begin
    dtmTarka.MsgDlg('Nem jelölt ki egyetlen egyedet sem!', mtWarning, [mbOK], 0);
    exit;
  end;
  if not MezokKitoltve then exit;

  // Ellenõrzés : Van-e elég gyógyszer készleten
  if (edtGy1Kod.Text <> EmptyStr) and edtGyMenny1.Visible and (edtGyMenny1.Value > 0)  then begin
    Klt := 0;
    if not dtmTarka.VaneElegKeszletDb(Self.grdVal.SelectedList.Count * edtGyMenny1.Value, sGyKlt1Id, Klt) then begin
      dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ edtGy1Nev.Text + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + edtMe1.Text + '    Kellene: '+
          FloatToStr(Self.grdVal.SelectedList.Count * edtGyMenny1.Value) ,mterror,[mbOK],0 );
      edtGyMenny1.SetFocus;
      exit;
    end;
  end;
  if (edtGy2Kod.Text <> EmptyStr) and edtGyMenny2.Visible and (edtGyMenny2.Value > 0)  then begin
    Klt := 0;
    if not dtmTarka.VaneElegKeszletDb(Self.grdVal.SelectedList.Count * edtGyMenny2.Value, sGyKlt2Id, Klt) then begin
      dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ edtGy2Nev.Text + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + edtMe2.Text + '    Kellene: '+
          FloatToStr(Self.grdVal.SelectedList.Count * edtGyMenny2.Value) ,mterror,[mbOK],0 );
      edtGyMenny2.SetFocus;
      exit;
    end;
  end;
  if (edtGy3Kod.Text <> EmptyStr) and edtGyMenny3.Visible and (edtGyMenny3.Value > 0)  then begin
    Klt := 0;
    if not dtmTarka.VaneElegKeszletDb(Self.grdVal.SelectedList.Count * edtGyMenny3.Value, sGyKlt3Id, Klt) then begin
      dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ edtGy3Nev.Text + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + edtMe3.Text + '    Kellene: '+
          FloatToStr(Self.grdVal.SelectedList.Count * edtGyMenny3.Value) ,mterror,[mbOK],0 );
      edtGyMenny3.SetFocus;
      exit;
    end;
  end;

  for i := 0 to Self.grdVal.SelectedList.Count-1 do begin
  with sdsCsopSor do begin
    GotoBookmark(grdVal.SelectedList.Items[i]);
    sdsCsKezelesek.Open;
    sdsCsKezelesek.Append;
    sdsCsKezelesekEGYEDEK_ID.AsString := FieldByName('ID').AsString;
    sdsCsKezelesekKEZ_DATUM.AsString := FormatDateTime('yyyy.mm.dd',strtoDateTime(edtKezDatum.text));
    sdsCsKezelesekKEZ_SORSZAM.Value := GetSorszam(sdsCsKezelesek.FieldByName('EGYEDEK_ID').Value, sdsCsKezelesek.FieldByName('KEZ_DATUM').Value);
    if sdsCsKezelesek.FieldByName('KEZ_SORSZAM').Value = 0 then
      sdsCsKezelesek.FieldByName('KEZ_SORSZAM').Value := 1;
    sdsCsKezelesekKEZELES_ID.AsString := Self.sKezelesId;
    sdsCsKezelesekKEZELO_KOD.AsString := Self.kezelok[lucKezelok.ItemIndex];
    if edtKovKez.Text <> '    .  .  ' then
      sdsCsKezelesekKOV_KEZELES_DATUM.AsString := FormatDateTime('yyyy.mm.dd',strtoDateTime(edtKovKez.Text));
    sdsCsKezelesekMEGJEGYZES.AsString := TalMemo1.Text;

    if self.sGyogy1Id <> EmptyStr then
      sdsCsKezelesekGYOGYSZER_ID.AsString := self.sGyogy1Id;
    if self.sGyogy2Id <> EmptyStr then
      sdsCsKezelesekGYOGYSZER2_ID.AsString := self.sGyogy2Id;
    if self.sGyogy3Id <> EmptyStr then
      sdsCsKezelesekGYOGYSZER3_ID.AsString := self.sGyogy3Id;

    if (edtGy1Kod.Text <> EmptyStr) and edtGyMenny1.Visible and (edtGyMenny1.Value > 0)  then begin
      sdsCsKezelesekGYKLT1_ID.AsString := self.sGyKlt1Id;
      sdsCsKezelesekGYMENNY_1.AsFloat := edtGyMenny1.Value;
    end;
    if (edtGy2Kod.Text <> EmptyStr) and edtGyMenny2.Visible and (edtGyMenny2.Value > 0)  then begin
      sdsCsKezelesekGYKLT2_ID.AsString := self.sGyKlt2Id;
      sdsCsKezelesekGYMENNY_2.AsFloat := edtGyMenny2.Value;
    end;
    if (edtGy3Kod.Text <> EmptyStr) and edtGyMenny3.Visible and (edtGyMenny3.Value > 0)  then begin
      sdsCsKezelesekGYKLT3_ID.AsString := self.sGyKlt3Id;
      sdsCsKezelesekGYMENNY_3.AsFloat := edtGyMenny3.Value;
    end;

    sdsCsKezelesekTIPUS.AsString := '1';
    sdsCsKezelesek.FieldByName('UTMOD_DAT').AsDateTime := Now();
    sdsCsKezelesek.FieldByName('UTMOD_KOD').AsString := dtmTarka.UserKod;

    edtMe1.DataField := '' ;
    edtMe2.DataField := '' ;
    edtMe3.DataField := '' ;

    sdsCsKezelesek.post;
  end;
  end;

  edtMe1.DataField := 'ME' ;
  edtMe2.DataField := 'ME2' ;
  edtMe3.DataField := 'ME3' ;

  grdVal.SelectedList.Clear;
  dtmTarka.cnTarka.BeginTrans;
  try
    sdsCsKezelesek.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    on E:Exception do begin
      dtmTarka.cnTarka.RollbackTrans;
      Log('Csoportos kezelések :Rollback');
      Log(E.Message);
    end
  end;
  ModalResult := mrOK;
end;

procedure TfrmCsopKez.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;

end.
