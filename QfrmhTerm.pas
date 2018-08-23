unit QfrmhTerm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, Wwkeycb, uTALSearch, StdCtrls, Mask, uTALMaskEdit,
  uTALLabel, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid, uTALPanel, strUtils,
  Buttons, ExtCtrls, uValidedit, uDBValidedit, uTALDBEdit, uTALSpeedButton, uTalQuery,
  DB, DBClient, uTALSimpleDataSet, uTalParams, frxClass, frxDBSet,
  uTALBitBtn;

type
  TfrmhTerm = class(TfrmModOs)
    pnlKeres: TTalPanel;
    lblS2: TTalLabel;
    lblS1: TTalLabel;
    TalLabel18: TTalLabel;
    edtDatTol: TTalMaskEdit;
    btnLeker: TBitBtn;
    TalSearch1: TTalSearch;
    TalLabel1: TTalLabel;
    edtAdottNap: TTalMaskEdit;
    TalLabel7: TTalLabel;
    TalLabel10: TTalLabel;
    TalLabel2: TTalLabel;
    TalLabel11: TTalLabel;
    TalSpeedButton1: TTalSpeedButton;
    TalLabel8: TTalLabel;
    edtAzonosito: TTalDBEdit;
    edtTermDatum: TTalDBEdit;
    edtTermBika: TTalDBEdit;
    TalDBEdit1: TTalDBEdit;
    TalDBEdit6: TTalDBEdit;
    edtTermDatumIg: TTalDBEdit;
    TalLabel3: TTalLabel;
    sdsBon: TTalSimpleDataSet;
    dtsBon: TDataSource;
    sdsBonID: TBCDField;
    sdsBonENAR: TWidestringField;
    sdsBonFULSZAM: TWidestringField;
    sdsBonTENYESZET: TWidestringField;
    sdsBonEGYED_ID: TBCDField;
    sdsBonDATUM_TOL: TDateTimeField;
    sdsBonDATUM_IG: TDateTimeField;
    sdsBonUTMOD_DAT: TDateTimeField;
    sdsBonUTMOD_KOD: TWidestringField;
    sdsBonNEV: TWidestringField;
    btnVemhTorol: TTalSpeedButton;
    TalSpeedButton2: TTalSpeedButton;
    sdsBonHASZN_SZAM: TWidestringField;
    frxDBDataset1: TfrxDBDataset;
    frxRepLista: TfrxReport;
    sdsBonBIKA_KLSZ: TBCDField;
    btnAtrak: TTalBitBtn;
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure edtAzonositoExit(Sender: TObject);
    procedure edtTermBikaExit(Sender: TObject);
    procedure TalSpeedButton1Click(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure btnVemhTorolClick(Sender: TObject);
    procedure TalSpeedButton2Click(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure sdsBonENARGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnAtrakClick(Sender: TObject);
  private
    AlapSelect : string;
    dTermDat : string;
    dTermDatIg : string;
    sBika : string;
    Func : string;
    bBecsukhat : Boolean;
    EgyedId : string;
    elso : Boolean;
    function Mezok_kitoltve:Boolean;
    procedure KarbGombBeallit(mire:Boolean);
    function VaneHterm : Boolean;
  public
    { Public declarations }
  end;


function OpenHTerm (var Vissza: TTalParamList): Boolean;
function OpenHTermE (kuldo, EgyedId, EgyedAzon : string; var Vissza: TTalParamList) : Boolean;

implementation

uses QfrmTermKarbm, udtmTarka, QfrmBika;

{$R *.dfm}


function OpenHTerm(var Vissza: TTalParamList) : Boolean;
var
  frmhTerm: TfrmhTerm;
  s : string;
begin
  Result := false;
  frmhTerm := TfrmhTerm.Create(Application);
  try
    frmhTerm.Func :='TERMKARB';
    frmhTerm.sdsBon.Connection := dtmTarka.cnTarka;

    frmhTerm.elso := true;
    frmhTerm.edtTermDatum.Enabled := true;
    frmhTerm.edtTermDatumIg.Enabled := true;
    frmhTerm.edtTermBika.Enabled := true;

    s := FormatDateTime('yyyy.mm.dd', date-1);
    frmhTerm.edtDatTol.Text := s;

    if frmhTerm.sdsBon.Active then
      frmhTerm.sdsBon.Close;
    frmhTerm.sdsBon.DataSet.CommandText := frmhTerm.AlapSelect + ' and TH.UTMOD_DAT >= ' + Quotedstr(s) + ' ' +  dtmTarka.TenyeszetWhereE;

    try
      Screen.Cursor := crHourGlass;
      frmhTerm.sdsBon.Open;
    finally
      Screen.Cursor := crArrow;
    end;

    frmhTerm.btnCancel.Caption := 'Kilépés';
    frmhTerm.dTermDat := '';
    frmhTerm.dTermDatIg := '';
    frmhTerm.sBika := '';

    frmhTerm.Caption := 'Háremszerû termékenyítések rögzítése';
    frmhTerm.bBecsukhat := false;

    if dtmTarka.UserKarb = '0' then
    begin
      frmhTerm.btnUj.Enabled := false;
      frmhTerm.btnModosit.Enabled := false;
      frmhTerm.btnTorol.Enabled := false;
      frmhTerm.btnAtrak.Enabled := false;
    end;

    if frmhTerm.ShowModal = mrOK then
      Result := true;

    frmhTerm.sdsBon.Close;
  finally
    FreeAndNil(frmhTerm);
  end;
end;


function OpenHTermE (kuldo, EgyedId, EgyedAzon : string; var Vissza: TTalParamList): Boolean;
var
  frmhTerm: TfrmhTerm;
  s : string;
begin
  Result := false;
  frmhTerm := TfrmhTerm.Create(Application);
  try
    frmhTerm.Func := 'TERMKARBE';
    frmhTerm.EgyedId := EgyedId;
    frmhTerm.sdsBon.Connection := dtmTarka.cnTarka;
    frmhTerm.Caption := 'Háremszerû termékenyítések - Egyed : ' + EgyedAzon;
    frmhTerm.elso := true;
    if kuldo = 'TERM'  then begin
      frmhTerm.btnAtrak.Visible := true;
    end;
    frmhTerm.edtTermDatum.Enabled := true;
    frmhTerm.edtTermDatumIg.Enabled := true;
    frmhTerm.edtTermBika.Enabled := true;


    s := FormatDateTime('yyyy.mm.dd',date - 365);
    frmhTerm.edtDatTol.Text := s;

    if frmhTerm.sdsBon.Active then
      frmhTerm.sdsBon.Close;

    frmhTerm.sdsBon.DataSet.CommandText := frmhTerm.AlapSelect +
              ' and (TH.EGYED_ID = ' + EgyedId + ')' +
              ' and (TH.UTMOD_DAT >= ' + Quotedstr(s) + ') ' +  dtmTarka.TenyeszetWhereE;

    try
      Screen.Cursor := crHourGlass;
      frmhTerm.sdsBon.Open;
    finally
      Screen.Cursor := crArrow;
    end;

    frmhTerm.btnCancel.Caption := 'Kilépés';
    frmhTerm.dTermDat := '';
    frmhTerm.dTermDatIg := '';
    frmhTerm.sBika := '';

    frmhTerm.bBecsukhat := false;
    if dtmTarka.UserKarb = '0' then begin
      frmhTerm.btnUj.Enabled := false;
      frmhTerm.btnModosit.Enabled := false;
      frmhTerm.btnTorol.Enabled := false;
      frmhTerm.btnAtrak.Enabled := false;
    end;
    if frmhTerm.ShowModal = mrOK then begin
      Result := true;
      vissza.add('ENAR', frmhTerm.sdsBonENAR.AsString);
      vissza.add('EGYED_ID', frmhTerm.sdsBonEGYED_ID.AsString);
      vissza.add('BIKA', frmhTerm.sdsBonBIKA_KLSZ.AsString);
      vissza.add('DATUMTOL', frmhTerm.sdsBonDATUM_TOL.AsDateTime);
      vissza.add('DATUMIG', frmhTerm.sdsBonDATUM_IG.AsDateTime);
    end;

    frmhTerm.sdsBon.Close;
  finally
    FreeAndNil(frmhTerm);
  end;
end;

{ TfrmhTerm }

function TfrmhTerm.Mezok_kitoltve: Boolean;
begin
  result := false;
  if edtAzonosito.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az egyed megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtAzonosito.SetFocus;
    exit;
  end;
  if edtTermDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('Az idõszak kezdõdátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtTermDatum.SetFocus;
    exit;
  end;
  if edtTermDatumIg.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('Az idõszak záródátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtTermDatumIg.SetFocus;
    exit;
  end;
  if edtTermDatumIg.Value < edtTermDatum.Value then begin
    dtmTarka.MsgDlg('Hibás az idõszak megadása!', mtWarning, [mbOK], 0);
    edtTermDatumIg.SetFocus;
    exit;
  end;
  if edtTermBika.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Az termékenyítõ bika megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtTermBika.SetFocus;
    exit;
  end;
  Result := true;

end;




procedure TfrmhTerm.KarbGombBeallit(mire: Boolean);
begin
  Self.btnUj.Enabled := mire;
  Self.btnModosit.Enabled := mire;
  Self.btnTorol.Enabled := mire;
  Self.btnNyomtat.Enabled := mire;
  Self.pnlKeres.Enabled := mire;
  if mire = false then
    Self.btnCancel.Caption := 'Mégsem'
  else
    Self.btnCancel.Caption := 'Kilépés';
  if mire then
    if Self.btnUj.CanFocus then Self.btnUj.SetFocus;
end;



procedure TfrmhTerm.btnUjClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
  pnlKeres.Enabled := false;
  sdsBon.Append;

  Self.KarbGombBeallit(False);
  edtTermDatum.Enabled := true;
  edtTermBika.Enabled := true;
  TalSpeedButton1.Enabled := true;
  if dTermDat <> EmptyStr then
    sdsBonDATUM_TOL.AsString := dTermDat;
  if dTermDatIg <> EmptyStr then
    sdsBonDATUM_IG.AsString := dTermDatIg;
  if sBika <> EmptyStr then
    sdsBonBIKA_KLSZ.AsString := sBika;

  edtAzonosito.Enabled := true;

  if elso then begin
    if edtTermDatum.CanFocus then edtTermDatum.SetFocus;
  end else begin
    if edtAzonosito.CanFocus then edtAzonosito.SetFocus;
  end;  
end;




procedure TfrmhTerm.btnModositClick(Sender: TObject);
begin
  if sdsBon.RecordCount = 0 then exit;
  if not dtmTarka.LicenceDatEll then exit;
  inherited;
  sdsBon.Edit;
  Self.KarbGombBeallit(False);
  Self.pnlKeres.Enabled := false;
  edtAzonosito.Enabled := false;
  edtTermDatum.Enabled := true;
  edtTermDatumIg.Enabled := true;
  edtTermBika.Enabled := true;
  TalSpeedButton1.Enabled := true;
  if edtTermDatum.CanFocus then edtTermDatum.SetFocus;
end;

procedure TfrmhTerm.btnTorolClick(Sender: TObject);
var
  SQL : string;
begin
  inherited;
  if sdsBon.RecordCount = 0 then exit;
  if dtmTarka.MsgDlg('Biztos törli a tételt?', mtConfirmation , [mbYes, mbNo],0) = mrYes then begin
    SQL := 'delete from termh where id = ' +  sdsBonID.AsString;
    sdsBon.Close;
    dtmTarka.cnTarka.BeginTrans;
    try
      dtmTarka.cnTarka.Execute(SQL);
      dtmTarka.cnTarka.CommitTrans;
    except
      if dtmTarka.cnTarka.InTransaction then begin
        dtmTarka.cnTarka.RollbackTrans;
      end;
    end;
    sdsBon.Open;
  end;
end;

procedure TfrmhTerm.actOKExecute(Sender: TObject);
var
  sEgyedId : string;
  sTermDatum : string;
begin
  if sdsBon.State = dsBrowse then begin
//    ModalResult := mrOK;
    exit;
  end;
  if not Mezok_kitoltve then exit;
  if VaneHterm then begin
    dtmTarka.MsgDlg('Ennek az egyednek már van adata a megadott idõszakban!',mterror,[mbOK],0 );
    if edtAzonosito.CanFocus then edtAzonosito.SetFocus;
    exit;
  end;

  if elso then begin
    elso := false;
    edtTermDatum.Enabled := false;
    edtTermDatumIg.Enabled := false;
    edtTermBika.Enabled := false;
  end;  

  sdsBonUTMOD_DAT.AsDateTime := now();
  sdsBonUTMOD_KOD.AsString := dtmTarka.UserKod;

  dtmTarka.cnTarka.BeginTrans;
  sTermDatum := sdsBonDATUM_TOL.AsString;

  sEgyedId := sdsBonEGYEd_ID.AsString;
  dTermDat := sdsBonDATUM_TOL.AsString;
  dTermDatIg := sdsBonDATUM_IG.AsString;
  sBika := sdsBonBIKA_KLSZ.AsString;

  sdsBon.Post;
    try
      sdsBon.ApplyUpdates(0);
      dtmTarka.cnTarka.CommitTrans;
      try
        Screen.Cursor := crHourGlass;
        sdsBon.Refresh;
      finally
        Screen.Cursor := crArrow;
      end;
    except
      if dtmTarka.cnTarka.InTransaction then
        dtmTarka.cnTarka.RollbackTrans;
      dtmTarka.MsgDlg('Az adatok mentése nem sikerült!', mtWarning, [mbOK], 0);
//      Log('Termkarb: Rollback');
    end;
  sdsBon.Locate('EGYED_ID;DATUM_TOL',VarArrayOf([sEgyedId,sTermDatum]),[]);
  Self.grdVal.Enabled := true;
  Self.pnlKeres.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;



procedure TfrmhTerm.actMegsemExecute(Sender: TObject);
begin
  if sdsBon.State = dsBrowse then begin
    ModalResult := mrCancel;
    bBecsukhat := true;
  end else
    sdsBon.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlKeres.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;



procedure TfrmhTerm.edtAzonositoExit(Sender: TObject);
var
  sAzon : string;
  sAzonId : string;
  vk : string;
  tDat : Tdate;
begin
  if edtAzonosito.Enabled and dtmTarka.megsemNyomas(ActiveControl) then exit;

  if edtAzonosito.Text > EmptyStr then begin
    sAzon := edtAzonosito.Text;
    if not dtmTarka.VaneIlyenEgyed(edtAzonosito.Text, sAzon,sAzonId,true) then begin
      if sAzonId <> '-1' then
        dtmTarka.MsgDlg('Nincs ilyen élõ egyed, vagy az egyed már kikerült a tenyészetbõl!',mterror,[mbOK],0 );
      sAzon := '';
      sAzonId := '';
      edtAzonosito.SelectAll;
      if edtAzonosito.CanFocus then
        edtAzonosito.SetFocus;
    end else begin
      sdsBonEGYED_ID.AsString:=sAzonId;
      sdsBonENAR.AsString:=sAzon;

        vk := '';
        dtmTarka.ElozoTerm(sAzonId, tdat, vk);
        if (vk = '1')   then begin
          dtmTarka.MsgDlg('A termékenyítendõ egyed megállapított vemhes! Vemhességi kód : '+ vk,mterror,[mbOK],0 );
        end else if vk = '2' then begin
          dtmTarka.MsgDlg('Az egyed vizsgálat alapján valószínû vemhes! Vemhességi kód : '+ vk ,mterror,[mbOK],0 );
        end else if vk = '3' then begin
          dtmTarka.MsgDlg('Az egyednek vetélése volt!'+#10+
                     'Ez tájékoztató üzenet, folytassa az adatrögzítést!',mterror,[mbOK],0 );
        end else if vk = '4' then begin
          dtmTarka.MsgDlg('Embrió kimosás történt!'+#10+
                     'Ez tájékoztató üzenet, folytassa az adatrögzítést!',mterror,[mbOK],0 );
        end else if vk = '5' then begin
          dtmTarka.MsgDlg('Embrió beültetés történt!'+#10+
                     'Ez tájékoztató üzenet, folytassa az adatrögzítést!',mterror,[mbOK],0 );
        end;

    end;
  end;
end;

procedure TfrmhTerm.edtTermBikaExit(Sender: TObject);
var
  klsz,nev :string;
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
    if (sdsBon.state =  dsInsert) or
      (sdsBonBIKA_KLSZ.OldValue <> sdsBonBIKA_KLSZ.NewValue) then begin
      if not dtmTarka.VaneBika(edtTermBika.Text,'') then begin
          dtmTarka.MsgDlg('Nincs ilyen azonosítójú bika!', mtWarning, [mbOK], 0);
          edtTermBika.SelectAll;
          edtTermBika.SetFocus;
          exit;
      end;
      klsz := edtTermBika.Text;
      if dtmTarka.BikaAdat(klsz,nev) then begin
        sdsBonBIKA_KLSZ.AsString := klsz;
        sdsBonNEV.AsString := nev;
      end;
    end;
  if edtTermBika.Text = EmptyStr then edtTermBika.SetFocus;
end;


procedure TfrmhTerm.TalSpeedButton1Click(Sender: TObject);
var
  vissza : TTalParamList;
begin
  vissza := TTalParamList.Create;
  Vissza.Add('MODE','VAL');                               // spklt.választó;
  if frmBika.BikaVal(Vissza) then begin
     sdsBonBIKA_KLSZ.AsString   := Vissza.itemsByName('KLSZ').values[0];
     sdsBonNEV.AsString   := Vissza.itemsByName('BIKA_NEV').values[0];
     if btnOK.CanFocus then
         btnOK.SetFocus;
  end;
  vissza.free;
end;

procedure TfrmhTerm.btnLekerClick(Sender: TObject);
var
  PlusWhere : string;
  s : string;
begin
    if sdsBon.Active then
      sdsBon.Close;

    plusWhere := '';
    if func = 'TERMKARBE' then
      plusWhere := ' and (TH.EGYED_ID = ' + EgyedId + ')' ;
    if edtDatTol.Text > '    .  .  ' then begin
      s := FormatDateTime('yyyy.mm.dd', StrToDate(edtDatTol.Text));
      plusWhere := plusWhere + ' and (TH.UTMOD_DAT >= ' + Quotedstr(edtDatTol.Text) + ')';
    end;
    if edtAdottNap.Text > '    .  .  ' then begin
      s := FormatDateTime('yyyy.mm.dd', strToDate(edtAdottNap.Text));
      plusWhere := plusWhere + ' and (TH.DATUM_TOL <= ' + Quotedstr(s) + ') and (th.DATUM_IG >= ' + quotedstr(s) + ')' ;
    end;

    plusWhere := plusWhere + ' ' +  dtmTarka.TenyeszetWhereE;
    sdsBon.DataSet.CommandText := AlapSelect + PlusWhere;
    try
      Screen.Cursor := crHourGlass;
      sdsBon.Open;
    finally
      Screen.Cursor := crArrow;
    end;
end;

procedure TfrmhTerm.btnVemhTorolClick(Sender: TObject);
begin
  inherited;
  edtDatTol.Text := '';
end;

procedure TfrmhTerm.TalSpeedButton2Click(Sender: TObject);
begin
  inherited;
  edtAdottNap.Text := '';
end;

procedure TfrmhTerm.btnNyomtatClick(Sender: TObject);
var
  sazon : string;
  aa : string;
begin
    aa := dtmTarka.sATKFT_KOD;
    if frxRepLista.LoadFromFile('HTermekenyitesek.fr3') then begin
       // paraméter átadás a lista fejhez
       sazon := sdsBonID.AsString;
       sdsBon.DisableControls;
       try
         frxRepLista.Variables.Clear;
         frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
         frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
         aa := 'Tenyészet:' + dtmTarka.sATKFT_KOD + #10;
         if edtDatTol.Text <> '    .  .  ' then begin
           aa := 'Rögzítés dátuma >= ' + edtDatTol.Text + #10;
         end;
         if edtAdottNap.Text <> '    .  .  ' then begin
           aa := aa + 'Adott napi dátum : ' + edtAdottNap.Text
         end;
         frxRepLista.Script.Variables['SzuroFeltetelek']:= DateToStr(now);
         frxRepLista.ShowReport();
       finally
         if sazon > '' then
           sdsBon.Locate('ID',sazon,[]);
         sdsBon.EnableControls;
       end;
    End;
end;

procedure TfrmhTerm.sdsBonENARGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
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



function TfrmhTerm.VaneHterm: Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as VAN from TERMH where TERMH.EGYED_ID = ' + sdsBonEGYED_ID.AsString +
         ' and ((termh.DATUM_TOL between ' + quotedstr(FormatDateTime('yyyy.mm.dd',edtTermDatum.Value)) +' and ' +quotedstr(FormatDateTime('yyyy.mm.dd',edtTermDatumIg.Value)) + ') or ' +
         ' (termh.DATUM_IG between ' + quotedstr(FormatDateTime('yyyy.mm.dd',edtTermDatum.Value)) + ' and ' +quotedstr(FormatDateTime('yyyy.mm.dd',edtTermDatumIg.Value)) + ') or ' +
         ' ( ' + quotedstr(FormatDateTime('yyyy.mm.dd',edtTermDatum.Value)) + ' between termh.DATUM_TOL  and termh.DATUM_IG ' + ') or ' +
         ' ( ' + quotedstr(FormatDateTime('yyyy.mm.dd',edtTermDatumIg.Value)) + ' between termh.DATUM_TOL  and termh.DATUM_IG ' + ')) ';

  tq := TTalQuery.Create(Self);
  tq.Connection := dtmTarka.cnTarka;
  tq.SQL.Add(SQL);
  tq.Open;
  result := false;
  while not tq.Eof do begin
    if tq.FieldByName('VAN').AsString <> EmptyStr then begin
        Result := true;
    end else begin
        Result := false;
    end;
    tq.Next;
  end ;
  tq.Close;
end;

procedure TfrmhTerm.FormCreate(Sender: TObject);
begin
  inherited;
  AlapSelect := sdsBon.DataSet.CommandText;
end;

procedure TfrmhTerm.btnAtrakClick(Sender: TObject);
begin
  inherited;
  if sdsBon.RecordCount = 0 then exit;
  ModalResult := mrOK;
end;

end.
