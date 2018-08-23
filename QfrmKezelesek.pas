unit QfrmKezelesek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB, DBClient,
  uTALSimpleDataSet, uTALSpeedButton, uValidedit, uDBValidedit, uTALDBEdit,
  uTALLabel, uTalDataset, DateUtils, ADODB, uTalQuery, uTALDBMemo,StrUtils,
  uTALDBLookupComboBox, uTalParams, uTALMaskEdit, uTALEdit, uTALComboBox,
  uTALBitBtn, uTALCheckBox;

type
  TfrmKezelesek = class(TfrmModOs)
    sdsKezelesek: TTalSimpleDataSet;
    dsKezelesek: TDataSource;
    Label1: TTalLabel;
    DBEdit1: TTalDBEdit;
    Label2: TTalLabel;
    Label3: TTalLabel;
    DBEdit3: TTalDBEdit;
    Label4: TTalLabel;
    Label5: TTalLabel;
    DBEdit5: TTalDBEdit;
    Label6: TTalLabel;
    DBEdit6: TTalDBEdit;
    Label7: TTalLabel;
    DBEdit7: TTalDBEdit;
    DBEdit8: TTalDBEdit;
    Label9: TTalLabel;
    edtGyogy1: TTalDBEdit;
    DBEdit10: TTalDBEdit;
    btnEgyed: TTalSpeedButton;
    actEgyedKer: TAction;
    btnKezeles: TTalSpeedButton;
    btnGyogyszer: TTalSpeedButton;
    actKezelesKodKer: TAction;
    actGyogyszerKer: TAction;
    qGetSorszam: TTalQuery;
    sdsKezelesekID: TBCDField;
    sdsKezelesekEGYEDEK_ID: TBCDField;
    sdsKezelesekEGYED_NEV: TWidestringField;
    sdsKezelesekKEZ_DATUM: TDateTimeField;
    sdsKezelesekKEZELES_ID: TBCDField;
    sdsKezelesekKEZ_KOD: TWidestringField;
    sdsKezelesekKEZ_NEV: TWidestringField;
    sdsKezelesekGYOGY_KOD: TWidestringField;
    sdsKezelesekGYOGY_NEV: TWidestringField;
    sdsKezelesekKOV_KEZELES_DATUM: TDateTimeField;
    sdsKezelesekMEGJEGYZES: TWidestringField;
    sdsKezelesekGYOGYSZER_ID: TBCDField;
    sdsKezelesekUTMOD_DAT: TDateTimeField;
    sdsKezelesekUTMOD_KOD: TWidestringField;
    TalDBMemo1: TTalDBMemo;
    lucEllLef: TTalDBLookupComboBox;
    qryKezelok: TTalQuery;
    dtsKezelok: TDataSource;
    qryKezelokKOD: TWidestringField;
    qryKezelokKOD_NEV: TWidestringField;
    sdsKezelesekKEZELO_KOD: TWidestringField;
    sdsKezelesekTIPUS: TWidestringField;
    TalLabel1: TTalLabel;
    edtGyogy2: TTalDBEdit;
    btnGyogyszer2: TTalSpeedButton;
    TalDBEdit2: TTalDBEdit;
    TalLabel2: TTalLabel;
    edtGyogy3: TTalDBEdit;
    btnGyogyszer3: TTalSpeedButton;
    TalDBEdit4: TTalDBEdit;
    sdsKezelesekGYOGY2_KOD: TWidestringField;
    sdsKezelesekGYOGY2_NEV: TWidestringField;
    sdsKezelesekGYOGY3_KOD: TWidestringField;
    sdsKezelesekGYOGY3_NEV: TWidestringField;
    sdsKezelesekGYOGYSZER2_ID: TBCDField;
    sdsKezelesekGYOGYSZER3_ID: TBCDField;
    btnCsopKez: TBitBtn;
    pnlSzures: TTalPanel;
    TalLabel3: TTalLabel;
    TalLabel4: TTalLabel;
    edtAzonosito: TTalEdit;
    TalLabel5: TTalLabel;
    edtKezDatSzTol: TTalMaskEdit;
    TalLabel6: TTalLabel;
    edtKovKezDatSzTol: TTalMaskEdit;
    btnLeker: TBitBtn;
    edtKezDatSzIg: TTalMaskEdit;
    TalLabel7: TTalLabel;
    TalLabel8: TTalLabel;
    edtKovDezDatSzIg: TTalMaskEdit;
    BitBtn1: TBitBtn;
    cbCsoport: TTalComboBox;
    TalLabel9: TTalLabel;
    qryCsoport: TTalQuery;
    StringField1: TWidestringField;
    StringField2: TWidestringField;
    actCsopFelv: TAction;
    lblGyMenny: TTalLabel;
    edtGyMenny1: TTalDBEdit;
    edtMe1: TTalDBEdit;
    edtGyMenny2: TTalDBEdit;
    edtMe2: TTalDBEdit;
    edtGyMenny3: TTalDBEdit;
    edtMe3: TTalDBEdit;
    sdsKezelesekGYMENNY_1: TBCDField;
    sdsKezelesekGYMENNY_2: TBCDField;
    sdsKezelesekGYMENNY_3: TBCDField;
    sdsKezelesekME: TWidestringField;
    sdsKezelesekME2: TWidestringField;
    sdsKezelesekME3: TWidestringField;
    sdsKezelesekGYKLT1_ID: TBCDField;
    sdsKezelesekGYKLT2_ID: TBCDField;
    sdsKezelesekGYKLT3_ID: TBCDField;
    qryTermCsop: TTalQuery;
    qryTermCsopKOD: TWidestringField;
    qryTermCsopNEV: TWidestringField;
    lucTcs: TTalComboBox;
    TalCheckBox1: TTalCheckBox;
    TalLabel12: TTalLabel;
    edtUtTermDatum: TTalDBEdit;
    edtUtTermBika: TTalDBEdit;
    edtUtTermVk: TTalDBEdit;
    TalLabel13: TTalLabel;
    TalLabel14: TTalLabel;
    lucVemhKod: TTalComboBox;
    btnVkTorl: TTalSpeedButton;
    btnTermekenyitesek: TTalBitBtn;
    qryVemhKod: TTalQuery;
    StringField3: TWidestringField;
    StringField4: TWidestringField;
    sdsKezelesekTERM_ID: TBCDField;
    sdsKezelesekENAR: TWidestringField;
    sdsKezelesekDATUM: TDateTimeField;
    sdsKezelesekALLAPOT: TWidestringField;
    sdsKezelesekIVAR: TWidestringField;
    sdsKezelesekKEZ_SORSZAM: TBCDField;
    sdsKezelesekKEZELO_NEV: TWideStringField;
    sdsKezelesekKPLSZ: TWideStringField;
    procedure actEgyedKerExecute(Sender: TObject);
    procedure btnUjClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure actKezelesKodKerExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actGyogyszerKerExecute(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure edtGyogy1Exit(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
    procedure sdsKezelesekAZONOSITOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnGyogyszer2Click(Sender: TObject);
    procedure edtGyogy2Exit(Sender: TObject);
    procedure edtGyogy3Exit(Sender: TObject);
    procedure btnGyogyszer3Click(Sender: TObject);
    procedure btnCsopKezClick(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbCsoportCloseUp(Sender: TObject);
    procedure actCsopFelvExecute(Sender: TObject);
    procedure edtGyMenny1Exit(Sender: TObject);
    procedure edtGyMenny2Exit(Sender: TObject);
    procedure edtGyMenny3Exit(Sender: TObject);
    procedure btnCsopTorolClick(Sender: TObject);
    procedure lucTcsKeyPress(Sender: TObject; var Key: Char);
    procedure TalCheckBox1Click(Sender: TObject);
    procedure grdValRowChanged(Sender: TObject);
    procedure btnVkTorlClick(Sender: TObject);
    procedure btnTermekenyitesekClick(Sender: TObject);private
    { Private declarations }
    sAlapSelect : string;
    sAzonosito : string;
    sEgyedId : string;
    sCsoport : array of string;
    sTCsoport : array of string;
    sVemhKod : array of string;

    sKezKod : string;
    sBk : string;
    dKezDat : Tdatetime;

    KeszlMenny : double;
    function Mezok_kitoltve:Boolean;
  public
    { Public declarations }
    procedure SetEditors(pEnable : boolean);
    function GetSorszam(Egyed_id, Datum: variant):integer;
  end;

var
  frmKezelesek: TfrmKezelesek;

procedure Kezelesek;
procedure OpenKezelesek(EgyedId,Azonosito:string);

implementation

uses QfrmEgyedValaszto, udtmTarka, QfrmKezParam, QfrmMedicine, QfrmCsopKez,
  QSysTools, QfrmGyogyKlt, QfrmTermKarbm;

{$R *.dfm}

// Kezelések ablak megnyitása
procedure Kezelesek;
var
  i : integer;
begin
  with frmKezelesek do
  begin
    sEgyedId := '';
    sAzonosito := '';
    sKezKod := '';
    sBk := '';
    dKezDat := today();

    qryCsoport.Open;
    cbCsoport.Items.Clear;
    SetLength(frmKezelesek.sCsoport ,1);
    i := 0;
    frmKezelesek.sCsoport[0] := '';
    cbCsoport.Items.Add('Mind');

    while not qryCsoport.Eof do
    begin
      i := i+1;
      SetLength(frmKezelesek.sCsoport ,i);
      frmKezelesek.sCsoport[i-1] := qryCsoport.FieldByName('KOD').AsString;
      cbCsoport.Items.Add(qryCsoport.FieldByName('KOD_NEV').AsString);
      qryCsoport.Next;
    end;
    qryCsoport.Close;
    frmKezelesek.cbCsoport.ItemIndex := 0;

(*    qryTermCsop.Open;
    luctcs.Items.Clear;
    SetLength(frmKezelesek.sTCsoport ,1);
    i := 1;
    while not qryTermCsop.Eof do begin
      SetLength(frmKezelesek.sTCsoport ,i);
      frmKezelesek.sTCsoport[i-1] := qryTermCsop.FieldByName('KOD').AsString;
      lucTcs.Items.Add(qryTermCsop.FieldByName('NEV').AsString);
      i := i + 1;
      qryTermCsop.Next;
    end;
    qryTermCsop.Close;
    frmKezelesek.lucTcs.ItemIndex := -1;*)

    dtmTarka.qryVemhKod.Open;
    lucVemhKod.Items.Clear;
    SetLength(frmKezelesek.sVemhKod ,1);
    i := 1;
    while not dtmTarka.qryVemhKod.Eof do begin
      SetLength(frmKezelesek.sVemhKod ,i);
      frmKezelesek.sVemhKod[i-1] := dtmTarka.qryVemhKod.FieldByName('KOD').AsString;
      lucVemhKod.Items.Add(dtmTarka.qryVemhKod.FieldByName('KOD_NEV').AsString);
      i := i + 1;
      dtmTarka.qryVemhKod.Next;
    end;
    dtmTarka.qryVemhKod.Close;
    frmKezelesek.lucVemhKod.ItemIndex := -1;

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

    sdsKezelesek.Connection := dtmTarka.cnTarka;
    sAlapSelect := sdsKezelesek.DataSet.CommandText;
    sdsKezelesek.Open;

    qryKezelok.Open;
    Caption := 'Kezelések';
    btnCancel.Caption := 'Kilépés';
    ShowModal;
    sdsKezelesek.Close;
    sdsKezelesek.DataSet.CommandText := sAlapSelect;
    qryKezelok.Close;
  end;
end;


procedure OpenKezelesek(EgyedId,Azonosito:string);
var
  i : integer;
begin
  with frmKezelesek do
  begin
    sAzonosito := Azonosito;
    sEgyedId := EgyedId;
    sdsKezelesek.Connection := dtmTarka.cnTarka;
    qryCsoport.Open;
    cbCsoport.Items.Clear;
    i := 0;
    while not qryCsoport.Eof do begin
      i := i+1;
      SetLength(frmKezelesek.sCsoport ,i);
      frmKezelesek.sCsoport[i] := qryCsoport.FieldByName('KOD').AsString;
      cbCsoport.Items.Add(qryCsoport.FieldByName('KOD_NEV').AsString);
      qryCsoport.Next;
    end;
    qryCsoport.Close;
    dtmTarka.qryVemhKod.Open;
    lucVemhKod.Items.Clear;
    SetLength(frmKezelesek.sVemhKod ,1);
    i := 1;
    while not dtmTarka.qryVemhKod.Eof do begin
      SetLength(frmKezelesek.sVemhKod ,i);
      frmKezelesek.sVemhKod[i-1] := dtmTarka.qryVemhKod.FieldByName('KOD').AsString;
      lucVemhKod.Items.Add(dtmTarka.qryVemhKod.FieldByName('KOD_NEV').AsString);
      i := i + 1;
      dtmTarka.qryVemhKod.Next;
    end;
    dtmTarka.qryVemhKod.Close;
    frmKezelesek.lucVemhKod.ItemIndex := -1;

    sAlapSelect := sdsKezelesek.DataSet.CommandText;
    sdsKezelesek.DataSet.CommandText := sAlapSelect + ' Where e.ID= '+EgyedId ;
    Caption := dtmTarka.AzonIr(azonosito) +' egyed kezelései';
    sdsKezelesek.Open;
    qryKezelok.Open;
    ShowModal;
    sdsKezelesek.Close;
    qryKezelok.Close;
    sdsKezelesek.DataSet.CommandText := sAlapSelect;
  end;
end;



// Editor mezõk és gombok engedélyezése
procedure TfrmKezelesek.SetEditors(pEnable : boolean);
begin
  pnlMod.Enabled := pEnable;
  pnlSzures.Enabled  := not pEnable;
  btnUj.Enabled := not pEnable;
  btnModosit.Enabled := not pEnable;
  btnTorol.Enabled := not pEnable;
  btnNyomtat.Enabled := not pEnable;
  grdVal.Enabled := not pEnable;

  if sdsKezelesek.State = dsEdit then begin
    DBEdit5.Enabled := not pEnable;
    btnEgyed.Enabled := not pEnable;
  end else begin
    DBEdit5.Enabled := pEnable;
    btnEgyed.Enabled := pEnable;
  end;
  if btnUj.Enabled then begin
    btnCancel.Caption := 'Kilépés';
    if Self.btnUj.CanFocus then Self.btnUj.SetFocus;
  end else begin
    btnCancel.Caption := 'Mégsem';
  end;

end;


// Ablak megnyitása
procedure TfrmKezelesek.FormActivate(Sender: TObject);
begin
  inherited;
  SetEditors(False);
end;


// Egyed keresése
procedure TfrmKezelesek.actEgyedKerExecute(Sender: TObject);
//var
//  id, kod, nev : string;
//  Szuro : TTalParamList;
begin
  inherited;
(*  Szuro := TTalParamList.Create;
  Szuro.Add('KIESETT','ELO');
  try
    if EgyedValaszto(id, kod, nev, Szuro) then
    begin
      sdsKezelesek.FieldByName('EGYEDEK_ID').Value := id;
      sdsKezelesek.FieldByName('AZONOSITO').Value := kod;
      sdsKezelesek.FieldByName('EGYED_NEV').Value := nev;
      DBEdit5.SetFocus;
    end;
  finally
    szuro.Free;
  end; *)
end;


// Új felvitel
procedure TfrmKezelesek.btnUjClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
  sdsKezelesek.Append;

  if Self.sAzonosito <> EmptyStr then begin
    sdsKezelesek.FieldByName('AZONOSITO').AsString := sAzonosito;
    sdsKezelesek.FieldByName('EGYEDEK_ID').AsString := sEgyedId;
  end;
  if Self.sKezKod <> EmptyStr then begin
    sdsKezelesekKEZELO_KOD.AsString := sKezKod;
  end;
  if Self.sBk <> emptystr then begin
    sdsKezelesek.FieldByName('KEZ_KOD').AsString := Self.sBk;
    DBEdit7Exit(Sender);
  end;
  sdsKezelesek.FieldByName('KEZ_DATUM').AsDateTime := dKezDat;

  lucVemhKod.ItemIndex := -1;
  SetEditors(True);
  if DBEdit5.CanFocus then
    DBEdit5.SetFocus;

end;


// Módosítás
procedure TfrmKezelesek.btnModositClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;  
  if sdsKezelesek.RecordCount = 0 then exit;
  sdsKezelesek.Edit;

  SetEditors(True);
  if DBEdit1.CanFocus then dbedit1.SetFocus;
end;

// Törlés nyomógomb
procedure TfrmKezelesek.btnTorolClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if sdsKezelesek.RecordCount = 0 then exit;
  // törlés
  if Application.MessageBox('Valóban törli a kiválasztott kezelést?','Figyelem!', MB_OKCANCEL) = IDOK then
  begin
    sdsKezelesek.Delete;
    sdsKezelesek.ApplyUpdates(0);
  end;
end;

// Adatok kiírása, OK gomb
procedure TfrmKezelesek.actOKExecute(Sender: TObject);
var
  egyed_id,datum,kez_id : string;
begin
  if not (sdsKezelesek.State in [dsInsert,dsEdit]) then exit;
  if not Mezok_kitoltve then exit;
  if sdsKezelesek.State in [dsInsert] then begin
    self.sKezKod := sdsKezelesekKEZELO_KOD.AsString;
    self.sBk := sdsKezelesekKEZ_KOD.AsString;
    self.dKezDat := sdsKezelesekKEZ_DATUM.AsDateTime;

    sdsKezelesek.FieldByName('KEZ_SORSZAM').Value := GetSorszam(sdsKezelesek.FieldByName('EGYEDEK_ID').Value, sdsKezelesek.FieldByName('KEZ_DATUM').Value);
    if sdsKezelesek.FieldByName('KEZ_SORSZAM').Value = 0 then
      sdsKezelesek.FieldByName('KEZ_SORSZAM').Value := 1;
  end;
  if sdsKezelesek.State in [dsEdit, dsInsert] then
  begin
    sdsKezelesek.FieldByName('UTMOD_DAT').AsDateTime := Now();
    sdsKezelesek.FieldByName('UTMOD_KOD').AsString := dtmTarka.UserKod;
    edtMe1.DataField := '' ;
    edtMe2.DataField := '' ;
    edtMe3.DataField := '' ;

    sdsKezelesek.Post;
    egyed_id := sdsKezelesekEGYEDEK_ID.AsString;
    datum := sdsKezelesekKEZ_DATUM.AsString;
    kez_id := sdsKezelesekKEZELES_ID.AsString;

    edtMe1.DataField := 'ME' ;
    edtMe2.DataField := 'ME2' ;
    edtMe3.DataField := 'ME3' ;

    dtmTarka.cnTarka.BeginTrans;
    try
      sdsKezelesek.ApplyUpdates(0);
      dtmTarka.cnTarka.CommitTrans;
      if lucTcs.Text <> EmptyStr then begin
        SQL := 'update egyedek set termelesi_csoport_kod = ' + quotedstr(sTCsoport[lucTcs.ItemIndex]) +
               ' where egyedek.id = ' +  sdsKezelesekEGYEDEK_ID.AsString;
        dtmTarka.cnTarka.Execute(SQL);
      end;
      if (lucVemhKod.Text <> EmptyStr) and (sdsKezelesekTERM_ID.AsString > '') then begin
        SQL := 'update termekenyitesek set allapot = ' + quotedstr(sVemhKod[lucVemhKod.ItemIndex]) +
               ' , VEMH_DATUM = ' + Quotedstr(FormatDateTime('yyyy.mm.dd',StrToDate(sdsKezelesekKEZ_DATUM.AsString))) +
               ' where id = ' +  sdsKezelesekTERM_ID.AsString;
        dtmTarka.cnTarka.Execute(SQL);
      end;

      sdsKezelesek.Refresh;
      sdsKezelesek.Locate('EGYEDEK_ID;KEZ_DATUM;KEZELES_ID',varArrayof([egyed_id,datum,kez_id]),[]);
    except
      on E:Exception do begin
        dtmTarka.cnTarka.RollbackTrans;
        Log('Egyéb kezelések : Rollback  :');
        Log(E.Message);
        Exit;
      end;
    end;
    btnCsopTorolClick(NIL);
    btnVkTorlClick(NIL);
    SetEditors(False);
  end else begin
//    ModalResult := mrOK;
  end;
end;


// Adtatok elvetése, Mégsem gomb
procedure TfrmKezelesek.actMegsemExecute(Sender: TObject);
begin
  inherited;
  if sdsKezelesek.State in [dsEdit, dsInsert] then begin
    sdsKezelesek.Cancel;
    sdsKezelesek.CancelUpdates;
    SetEditors(False);
  end else begin
    ModalResult := mrCancel;
  end;
end;


// Kezelések kikeresése nyomógomb
procedure TfrmKezelesek.actKezelesKodKerExecute(Sender: TObject);
var
  csop : string;
begin
  if cbCsoport.ItemIndex = 0 then
    csop := ''
  else
    csop := Self.scsoport[cbCsoport.itemindex-1];
  if KezParam(True,csop) then
  begin
    sdsKezelesek.FieldByName('KEZELES_ID').Value := frmKezParam.Id;
    sdsKezelesek.FieldByName('KEZ_KOD').Value := frmKezParam.Kod;
    sdsKezelesek.FieldByName('KEZ_NEV').Value := frmKezParam.Nev;
  end;
  Self.DBEdit7.SetFocus;
end;


// Gyógyserek kikeresése nyomógomb
procedure TfrmKezelesek.actGyogyszerKerExecute(Sender: TObject);
var
  Kapott , vissza : TTalParamList;
begin
  if edtGyMenny1.Visible = false then begin
    if GyogyszerKarb(False) then begin
      sdsKezelesek.FieldByName('GYOGYSZER_ID').Value := frmMedicine.Id;
      sdsKezelesek.FieldByName('GYOGY_KOD').Value := frmMedicine.Kod;
      sdsKezelesek.FieldByName('GYOGY_NEV').Value := frmMedicine.Nev;
      Self.edtGyogy1.SetFocus;
    end;
  end else begin
    KeszlMenny := 0;
    Kapott := TTalParamList.Create;
    Vissza := TTalParamList.Create;
    Kapott.Add('mode','VAL');
    try
      if GyogyszerKlt(Kapott, Vissza) then begin
        sdsKezelesek.FieldByName('GYOGYSZER_ID').Value := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
        sdsKezelesek.FieldByName('GYKLT1_ID').Value := Vissza.itemsByName('ID').Values[0];
        sdsKezelesek.FieldByName('GYOGY_KOD').Value := Vissza.itemsByName('KOD').Values[0];
        sdsKezelesek.FieldByName('GYOGY_NEV').Value := Vissza.itemsByName('NEV').Values[0];
        edtMe1.Text := Vissza.itemsByName('ME').Values[0];
        KeszlMenny := Vissza.itemsByName('KESZLET').Values[0];
      end;
    finally
      Kapott.Free;
      Vissza.Free;
    end;
    if edtGyMenny1.CanFocus then edtGyMenny1.SetFocus;
  end;
end;


// Következõ kezelési sorszám kikeresése
function TfrmKezelesek.GetSorszam(Egyed_id, Datum: variant): integer;
begin
  if qGetSorszam.Active then
    qGetSorszam.Close;

  qGetSorszam.Parameters.ParamByName('EGYED_ID').Value := EGYED_ID;
//  qGetSorszam.Parameters.ParamByName('P_DATUM').Value := Datum;
  qGetSorszam.Open;
  result := qGetSorszam.FieldByName('SORSZAM').AsInteger;

  qGetSorszam.Close;
end;


// Egyed név kikeresése kód alapján
procedure TfrmKezelesek.DBEdit5Exit(Sender: TObject);
var
  Nev : string;
  sAzon : string;
  sAzonId : string;
  term_id, Term_dat,Bika, VK : string;
  vissza : TtalParamList;
begin
  inherited;
  if DBEdit5.Enabled and dtmTarka.megsemNyomas(ActiveControl) then exit;

  if DBEdit5.Text > EmptyStr then begin
    sAzon := DBEdit5.Text;
    if not dtmTarka.VaneIlyenEgyed(DBEdit5.Text, sAzon,sAzonId,false,true) then begin
      sAzon := '';
      sAzonId := '';
      dtmTarka.MsgDlg('Nincs ilyen egyed!',mterror,[mbOK],0 );
      DBEdit5.SelectAll;
      DBEdit5.SetFocus;
      exit;
    end;
    sdsKezelesekEGYEDEK_ID.AsString:=sAzonId;
    sdsKezelesekENAR.AsString:=sAzon;
    vissza := TTalParamList.Create;
    try
      dtmTarka.EgyedInfo(sAzonId,vissza);
      sdsKezelesekIVAR.AsString := Vissza.ItemsByName('IVAR').values[0];
      if sdsKezelesekIVAR.AsString = '1' then begin
        TalCheckBox1.Checked := false;
        btnTermekenyitesek.Enabled := false;
      end else begin
        TalCheckBox1.Checked := true;
        btnTermekenyitesek.Enabled := true;
      end;

    finally
      vissza.Free;
    end;

    if dtmTarka.GetKodNev('SELECT * FROM EGYEDEK WHERE ID = ' + sAzonId , 'NEV', Nev) then
       sdsKezelesek.FieldByName('EGYED_NEV').AsString := Nev;
    if dtmTarka.UtolsoEllUtaniTerm(sAzonId, Term_id, Term_dat,Bika, VK) then begin
      sdsKezelesekDATUM.AsString := Term_dat;
      sdsKezelesekKPLSZ.AsString := Bika;
      sdsKezelesekALLAPOT.AsString :=  VK ;
      sdsKezelesekTERM_ID.AsString := term_id;
    end;
  end;

end;


// Kezelés név kikeresése kód alapján
procedure TfrmKezelesek.DBEdit7Exit(Sender: TObject);
var
  Nev : string;
  csoport, id, kod : string;
begin
  inherited;
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if DBEdit7.Text <> '' then begin
    id := '';
    kod := DBEdit7.Text;
    nev := '';
    if cbCsoport.ItemIndex = 0 then
      csoport := ''
    else
      csoport := scsoport[cbCsoport.itemindex-1];

    if dtmTarka.KezelesAdat(id,kod,nev,csoport) then begin
      sdsKezelesek.FieldByName('KEZELES_ID').AsString := id;
      sdsKezelesek.FieldByName('KEZ_KOD').AsString := kod;
      sdsKezelesek.FieldByName('KEZ_NEV').AsString := nev;
    end else begin
      ShowMessage('Nincs ilyen kezelés azonosító!');
      Self.DBEdit7.SetFocus;
    end;
  end;
end;


// Gyógyszer kikeresése kód alapján
procedure TfrmKezelesek.edtGyogy1Exit(Sender: TObject);
var
  Nev : string;
  kapott, vissza : TTalParamList;
begin
  inherited;
  if edtGyMenny1.Visible = false then begin
    if edtGyogy1.Text <> '' then begin
      if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGyogy1.Text)), 'NEV', Nev) then begin
        sdsKezelesek.FieldByName('GYOGY_NEV').AsString := Nev;
        if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGyogy1.Text)), 'ID', Nev) then
          sdsKezelesek.FieldByName('GYOGYSZER_ID').AsString := NEV;
      end else begin
        ShowMessage('Nincs ilyen gyógyszer azonosító!');
        edtGyogy1.SetFocus;
      end;
    end;
  end else begin
    if edtGyogy1.Text <> '' then begin
      KeszlMenny := 0;
      Kapott := TTalParamList.Create;
      Vissza := TTalParamList.Create;
      Kapott.Add('mode','VAL');
      Kapott.Add('GYOGYSZER_KOD',edtGyogy1.Text);
      try
        if GyogyszerKlt(Kapott, Vissza) then begin
          sdsKezelesek.FieldByName('GYOGYSZER_ID').Value := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
          sdsKezelesek.FieldByName('GYKLT1_ID').Value := Vissza.itemsByName('ID').Values[0];
          sdsKezelesek.FieldByName('GYOGY_KOD').Value := Vissza.itemsByName('KOD').Values[0];
          sdsKezelesek.FieldByName('GYOGY_NEV').Value := Vissza.itemsByName('NEV').Values[0];
          edtMe1.Text := Vissza.itemsByName('ME').Values[0];
          KeszlMenny := Vissza.itemsByName('KESZLET').Values[0];
        end;
      finally
        Kapott.Free;
        Vissza.Free;
      end;
    end;
  end;
end;


procedure TfrmKezelesek.sdsKezelesekAZONOSITOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  aa : string;
begin
  if Sender.Value = Null then
    aa := ''
  else
    aa := Sender.Value;
  if ((LeftStr(aa,1) = '3') and (Length(aa)= 10)) then
      Text := LeftStr(aa,5) + '-'+ midstr(aa ,6, 4) + '-'  + RightStr(aa,1)
  else if ((LeftStr(aa,3) = 'HU3') and (Length(aa)=12)) then
         Text :=LeftStr(aa,7) + '-'+ midstr(aa ,8, 4) + '-' + RightStr(aa,1)
       else
         Text := aa;
end;

procedure TfrmKezelesek.btnGyogyszer2Click(Sender: TObject);
var
  Kapott , vissza : TTalParamList;
begin
  if edtGyMenny1.Visible = false then begin
    if GyogyszerKarb(False) then begin
      sdsKezelesekGYOGYSZER2_ID.Value := frmMedicine.Id;
      sdsKezelesekGYOGY2_KOD.Value := frmMedicine.Kod;
      sdsKezelesekGYOGY2_NEV.Value := frmMedicine.Nev;
      Self.edtGyogy2.SetFocus;
    end;
  end else begin
    KeszlMenny := 0;
    Kapott := TTalParamList.Create;
    Vissza := TTalParamList.Create;
    Kapott.Add('mode','VAL');
    try
      if GyogyszerKlt(Kapott, Vissza) then begin
        sdsKezelesek.FieldByName('GYOGYSZER2_ID').Value := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
        sdsKezelesek.FieldByName('GYKLT2_ID').Value := Vissza.itemsByName('ID').Values[0];
        sdsKezelesek.FieldByName('GYOGY2_KOD').Value := Vissza.itemsByName('KOD').Values[0];
        sdsKezelesek.FieldByName('GYOGY2_NEV').Value := Vissza.itemsByName('NEV').Values[0];
        KeszlMenny := Vissza.itemsByName('KESZLET').Values[0];
        edtMe2.Text := Vissza.itemsByName('ME').Values[0];
        if edtGyMenny2.CanFocus then edtGyMenny2.SetFocus;
      end;
    finally
      Kapott.Free;
      Vissza.Free;
    end;
  end;
end;

procedure TfrmKezelesek.edtGyogy2Exit(Sender: TObject);
var
  Nev : string;
  kapott, vissza : TTalParamList;
begin
  inherited;
  if edtGyMenny2.Visible = false then begin
    if edtGyogy2.Text <> '' then begin
      if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGyogy2.Text)), 'NEV', Nev) then begin
          sdsKezelesekGYOGY2_NEV.AsString := Nev;
      if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGyogy2.Text)), 'ID', Nev) then
          sdsKezelesekGYOGYSZER2_ID.AsString := NEV;
      end else begin
        ShowMessage('Nincs ilyen gyógyszer azonosító!');
        edtGyogy2.SetFocus;
      end;
    end;
  end else begin
    if edtGyogy2.Text <> '' then begin
      KeszlMenny := 0;
      Kapott := TTalParamList.Create;
      Vissza := TTalParamList.Create;
      Kapott.Add('mode','VAL');
      Kapott.Add('GYOGYSZER_KOD',edtGyogy2.Text);
      try
        if GyogyszerKlt(Kapott, Vissza) then begin
          sdsKezelesek.FieldByName('GYOGYSZER2_ID').Value := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
          sdsKezelesek.FieldByName('GYKLT2_ID').Value := Vissza.itemsByName('ID').Values[0];
          sdsKezelesek.FieldByName('GYOGY2_KOD').Value := Vissza.itemsByName('KOD').Values[0];
          sdsKezelesek.FieldByName('GYOGY2_NEV').Value := Vissza.itemsByName('NEV').Values[0];
          edtMe2.Text := Vissza.itemsByName('ME').Values[0];
          KeszlMenny := Vissza.itemsByName('KESZLET').Values[0];
        end;
      finally
        Kapott.Free;
        Vissza.Free;
      end;
    end;
  end;
end;



procedure TfrmKezelesek.edtGyogy3Exit(Sender: TObject);
var
  Nev : string;
  kapott, vissza : TTalParamList;
begin
  inherited;
  if edtGyMenny3.Visible = false then begin
    if edtGyogy3.Text <> '' then
    begin
      if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGyogy3.Text)), 'NEV', Nev) then begin
          sdsKezelesekGYOGY3_NEV.AsString := Nev;
      if dtmTarka.GetKodNev('SELECT * FROM GYOGYSZEREK WHERE KOD = ' + QuotedStr(trim(edtGyogy3.Text)), 'ID', Nev) then
          sdsKezelesekGYOGYSZER3_ID.AsString := NEV;
      end else begin
        ShowMessage('Nincs ilyen gyógyszer azonosító!');
        edtGyogy3.SetFocus;
      end;
    end;
  end else begin
    if edtGyogy3.Text <> '' then begin
      KeszlMenny := 0;
      Kapott := TTalParamList.Create;
      Vissza := TTalParamList.Create;
      Kapott.Add('mode','VAL');
      Kapott.Add('GYOGYSZER_KOD',edtGyogy3.Text);
      try
        if GyogyszerKlt(Kapott, Vissza) then begin
          sdsKezelesek.FieldByName('GYOGYSZER3_ID').Value := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
          sdsKezelesek.FieldByName('GYKLT3_ID').Value := Vissza.itemsByName('ID').Values[0];
          sdsKezelesek.FieldByName('GYOGY3_KOD').Value := Vissza.itemsByName('KOD').Values[0];
          sdsKezelesek.FieldByName('GYOGY3_NEV').Value := Vissza.itemsByName('NEV').Values[0];
          edtMe3.Text := Vissza.itemsByName('ME').Values[0];
          KeszlMenny := Vissza.itemsByName('KESZLET').Values[0];
        end;
      finally
        Kapott.Free;
        Vissza.Free;
      end;
    end;
  end;
end;



procedure TfrmKezelesek.btnGyogyszer3Click(Sender: TObject);
var
  Kapott , vissza : TTalParamList;
begin
  if edtGyMenny1.Visible = false then begin
    if GyogyszerKarb(False) then begin
      sdsKezelesekGYOGYSZER3_ID.Value := frmMedicine.Id;
      sdsKezelesekGYOGY3_KOD.Value := frmMedicine.Kod;
      sdsKezelesekGYOGY3_NEV.Value := frmMedicine.Nev;
      Self.edtGyogy3.SetFocus;
    end;
  end else begin
    KeszlMenny := 0;
    Kapott := TTalParamList.Create;
    Vissza := TTalParamList.Create;
    Kapott.Add('mode','VAL');
    try
      if GyogyszerKlt(Kapott, Vissza) then begin
        sdsKezelesek.FieldByName('GYOGYSZER3_ID').Value := Vissza.itemsByName('GYOGYSZER_ID').Values[0];
        sdsKezelesek.FieldByName('GYKLT3_ID').Value := Vissza.itemsByName('ID').Values[0];
        sdsKezelesek.FieldByName('GYOGY3_KOD').Value := Vissza.itemsByName('KOD').Values[0];
        sdsKezelesek.FieldByName('GYOGY3_NEV').Value := Vissza.itemsByName('NEV').Values[0];
        edtMe3.Text := Vissza.itemsByName('ME').Values[0];
        KeszlMenny := Vissza.itemsByName('KESZLET').Values[0];
        if edtGyMenny3.CanFocus then edtGyMenny3.SetFocus;
      end;
    finally
      Kapott.Free;
      Vissza.Free;
    end;
  end;
end;

procedure TfrmKezelesek.btnCsopKezClick(Sender: TObject);
var
  csop : string;
begin
  if not dtmTarka.LicenceDatEll then exit;
  if cbCsoport.ItemIndex = 0 then
    csop := ''
  else
    csop := Self.scsoport[cbCsoport.itemindex-1];
  OpenCsopKez(csop);
  sdsKezelesek.Close;
  sdsKezelesek.Open;
end;

procedure TfrmKezelesek.btnLekerClick(Sender: TObject);
var
  sWhere : string;
begin
  sWhere := '';
  if edtAzonosito.Text <> EmptyStr then begin
    sWhere := ' and E.PSION_AZONOSITO = ' + Quotedstr(trim(edtAzonosito.Text));
  end;
  if trim(edtKezDatSzTol.Text) <> '.  .' then begin
    sWhere := sWhere +
     ' and K.KEZ_DATUM >= ' + quotedStr(FormatDateTime('yyyy.mm.dd',strtoDateTime(edtKezDatSzTol.text)));
  end;
  if trim(edtKezDatSzIg.Text) <> '.  .' then begin
    sWhere := sWhere +
     ' and K.KEZ_DATUM <= ' + quotedStr(FormatDateTime('yyyy.mm.dd',strtoDateTime(edtKezDatSzIg.text)));
  end;
  if trim(edtKovKezDatSzTol.Text) <> '.  .' then begin
    sWhere := sWhere +
     ' and K.KOV_KEZELES_DATUM >= ' + quotedStr(FormatDateTime('yyyy.mm.dd',strtoDateTime(edtKovKezDatSzTol.text)));
  end;
  if trim(edtKovDezDatSzIg.Text) <> '.  .' then begin
    sWhere := sWhere +
     ' and K.KOV_KEZELES_DATUM = ' + quotedStr(FormatDateTime('yyyy.mm.dd',strtoDateTime(edtKovDezDatSzIg.text)));
  end;
  if trim(cbCsoport.Text) <> 'Mind' then begin
    sWhere := sWhere +
     ' and P.CSOPORT_KOD= ' + quotedStr(sCsoport[cbCsoport.itemindex-1]);
  end;
  if sdsKezelesek.Active then sdsKezelesek.Close;
  sdsKezelesek.DataSet.CommandText := sAlapSelect + sWhere;
  sdsKezelesek.Open;
end;


procedure TfrmKezelesek.BitBtn1Click(Sender: TObject);
begin
  edtAzonosito.Text := '';
  edtKezDatSzTol.Text := '';
  edtKovKezDatSzTol.Text := '';
  edtKezDatSzIg.Text := '';
  edtKovDezDatSzIg.Text := '';
  btnLekerClick(NIL);
end;



function TfrmKezelesek.Mezok_kitoltve: Boolean;
begin
  result := false;
  if DBEdit5.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az egyed megadása kötelezõ!', mtWarning, [mbOK], 0);
    DBEdit5.SetFocus;
    exit;
  end;
  if DBEdit1.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A kezelés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    DBEdit1.SetFocus;
    exit;
  end;
  if lucEllLef.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A kezelõ megadása kötelezõ!', mtWarning, [mbOK], 0);
    lucEllLef.SetFocus;
    exit;
  end;
  if DBEdit7.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A kezelés kódjának megadása kötelezõ!', mtWarning, [mbOK], 0);
    DBEdit7.SetFocus;
    exit;
  end;
  if (edtGyogy1.Text <> EmptyStr) and edtGyMenny1.Visible and (edtGyMenny1.Value = 0)  then begin
    dtmTarka.MsgDlg('A gyógyszer mennyiségének megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtGyMenny1.SetFocus;
    exit;
  end;
  if (edtGyogy2.Text <> EmptyStr) and edtGyMenny2.Visible and (edtGyMenny2.Value = 0)  then begin
    dtmTarka.MsgDlg('A gyógyszer mennyiségének megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtGyMenny2.SetFocus;
    exit;
  end;
  if (edtGyogy3.Text <> EmptyStr) and edtGyMenny3.Visible and (edtGyMenny3.Value = 0)  then begin
    dtmTarka.MsgDlg('A gyógyszer mennyiségének megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtGyMenny3.SetFocus;
    exit;
  end;

  Result := true;
end;

procedure TfrmKezelesek.cbCsoportCloseUp(Sender: TObject);
begin
  Self.btnLekerClick(Sender);
  inherited;
end;



procedure TfrmKezelesek.actCsopFelvExecute(Sender: TObject);
begin
  inherited;
  btnCsopKezClick(Sender);
end;



procedure TfrmKezelesek.edtGyMenny1Exit(Sender: TObject);
var
  klt : double;
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if (edtGyMenny1.Text = EmptyStr) or (edtGyMenny1.Value = 0) then exit;
  if sdsKezelesek.State = dsInsert then begin
    klt := 0;
    if not dtmTarka.VaneElegKeszletDb(edtGyMenny1.Value, sdsKezelesekGYKLT1_ID.AsString,klt) then begin
      dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ sdsKezelesekGYOGY_NEV.AsString + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + edtMe1.Text + '    Kellene: '+
          FloatToStr(edtGyMenny1.Value) ,mterror,[mbOK],0 );

      edtGyMenny1.SetFocus;
    end;
  end;
  if sdsKezelesek.State = dsEdit then begin
    klt := 0;
    if sdsKezelesekGYMENNY_1.OldValue < edtGyMenny1.Value then begin
      if not dtmTarka.VaneElegKeszletDb(edtGyMenny1.Value - sdsKezelesekGYMENNY_1.OldValue, sdsKezelesekGYKLT1_ID.AsString, klt) then begin
        dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ sdsKezelesekGYOGY_NEV.AsString + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + edtMe1.Text + '    Kellene: '+
          FloatToStr(edtGyMenny1.Value - sdsKezelesekGYMENNY_1.OldValue) ,mterror,[mbOK],0 );
        edtGyMenny1.SetFocus;
      end;
    end;
  end;
end;



procedure TfrmKezelesek.edtGyMenny2Exit(Sender: TObject);
var
  klt : double;
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if (edtGyMenny2.Text = EmptyStr) or (edtGyMenny2.Value = 0) then exit;
  if sdsKezelesek.State = dsInsert then begin
    klt := 0;
    if not dtmTarka.VaneElegKeszletDb(edtGyMenny2.Value, sdsKezelesekGYKLT2_ID.AsString,klt) then begin
      dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ sdsKezelesekGYOGY2_NEV.AsString + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + edtMe2.Text + '    Kellene: '+
          FloatToStr(edtGyMenny2.Value) ,mterror,[mbOK],0 );
      edtGyMenny2.SetFocus;
    end;
  end;
  if sdsKezelesek.State = dsEdit then begin
    if sdsKezelesekGYMENNY_2.OldValue < edtGyMenny2.Value then begin
      klt := 0;
      if not dtmTarka.VaneElegKeszlet(edtGyMenny2.Value - sdsKezelesekGYMENNY_2.OldValue, sdsKezelesekGYKLT2_ID.AsString) then begin
        dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ sdsKezelesekGYOGY2_NEV.AsString + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + edtMe2.Text + '    Kellene: '+
          FloatToStr(edtGyMenny2.Value - sdsKezelesekGYMENNY_2.OldValue) ,mterror,[mbOK],0 );
        edtGyMenny2.SetFocus;
      end;
    end;
  end;
end;


procedure TfrmKezelesek.edtGyMenny3Exit(Sender: TObject);
var
  klt : double;
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if (edtGyMenny3.Text = EmptyStr) or (edtGyMenny3.Value = 0) then exit;
  if sdsKezelesek.State = dsInsert then begin
    klt := 0;
    if not dtmTarka.VaneElegKeszletDb(edtGyMenny3.Value, sdsKezelesekGYKLT3_ID.AsString, klt) then begin
      dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ sdsKezelesekGYOGY3_NEV.AsString + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + edtMe3.Text + '    Kellene: '+
          FloatToStr(edtGyMenny3.Value) ,mterror,[mbOK],0 );
      edtGyMenny3.SetFocus;
    end;
  end;
  if sdsKezelesek.State = dsEdit then begin
    if sdsKezelesekGYMENNY_3.OldValue < edtGyMenny3.Value then begin
      klt := 0;
      if not dtmTarka.VaneElegKeszletDb(edtGyMenny3.Value - sdsKezelesekGYMENNY_3.OldValue, sdsKezelesekGYKLT3_ID.AsString, klt) then begin
        dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ sdsKezelesekGYOGY3_NEV.AsString + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + edtMe3.Text + '    Kellene: '+
          FloatToStr(edtGyMenny3.Value - sdsKezelesekGYMENNY_3.OldValue) ,mterror,[mbOK],0 );
        edtGyMenny3.SetFocus;
      end;
    end;
  end;
end;


procedure TfrmKezelesek.btnCsopTorolClick(Sender: TObject);
begin
  inherited;
  lucTcs.ItemIndex := -1;
end;


procedure TfrmKezelesek.lucTcsKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
    key := chr(0);
  inherited;
end;

procedure TfrmKezelesek.TalCheckBox1Click(Sender: TObject);
begin
  inherited;
  lucVemhKod.Enabled := TalCheckBox1.Checked;
  btnVkTorl.Enabled := TalCheckBox1.Checked;
end;



procedure TfrmKezelesek.grdValRowChanged(Sender: TObject);
begin
  inherited;
  if sdsKezelesekIVAR.AsString = '1' then begin
    TalCheckBox1.Checked := false;
    btnTermekenyitesek.Enabled := false;
  end else begin
    TalCheckBox1.Checked := true;
    btnTermekenyitesek.Enabled := true;    
  end;
end;



procedure TfrmKezelesek.btnVkTorlClick(Sender: TObject);
begin
  inherited;
  lucVemhKod.ItemIndex := -1;
end;

procedure TfrmKezelesek.btnTermekenyitesekClick(Sender: TObject);
var
  vissza : TTalParamList;
begin
  inherited;
  vissza := TTalParamList.Create;
  try
    if OpenTermekenyitesek(sdsKezelesekEGYEDEK_ID.AsString,sdsKezelesekENAR.AsString,'B',vissza) then begin
    end;
  finally
    vissza.free;
  end;
end;

end.


