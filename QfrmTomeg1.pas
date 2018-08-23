unit QfrmTomeg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid, Db,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, DBCtrls, uTALDBLookupComboBox,
  Mask, uValidedit, uDBValidedit, uTALDBEdit, uTALLabel, uTalParams, uTalQuery,
  Wwkeycb, uTALSearch, uTALMaskEdit, frxClass, frxDBSet, DBClient,
  uTALSimpleDataSet, udtmTarka;

type
  TfrmTomeg1 = class(TfrmModOs)
    TalLabel7: TTalLabel;
    edtAzonosito: TTalDBEdit;
    TalLabel10: TTalLabel;
    edtMeresDatum: TTalDBEdit;
    TalLabel4: TTalLabel;
    edtTomeg: TTalDBEdit;
    TalLabel1: TTalLabel;
    pnlKeres: TTalPanel;
    lblS2: TTalLabel;
    lblS1: TTalLabel;
    TalLabel18: TTalLabel;
    edtDatTol: TTalMaskEdit;
    btnLeker: TBitBtn;
    TalSearch1: TTalSearch;
    TalLabel2: TTalLabel;
    edtFulszam: TTalDBEdit;
    TalLabel3: TTalLabel;
    edtTehenszam: TTalDBEdit;
    TalLabel5: TTalLabel;
    TalDBEdit3: TTalDBEdit;
    frxDBDataset1: TfrxDBDataset;
    frxRepLista: TfrxReport;
    lucMeresTps: TTalDBLookupComboBox;
    TalLabel6: TTalLabel;
    dtsTomeg: TDataSource;
    sdsTomeg: TTalSimpleDataSet;
    sdsTomegID: TBCDField;
    sdsTomegEGYED_ID: TBCDField;
    sdsTomegTENYESZET: TWideStringField;
    sdsTomegENAR: TWideStringField;
    sdsTomegDATUM: TDateTimeField;
    sdsTomegTOMEG: TSmallintField;
    sdsTomegFULSZAM: TWideStringField;
    sdsTomegTEHENSZAM: TWideStringField;
    sdsTomegMOD_DAT: TDateTimeField;
    sdsTomegMOD_KOD: TWideStringField;
    sdsTomegMERES_TIPUS: TWideStringField;
    sdsTomegKOD_NEV: TWideStringField;
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure edtAzonositoExit(Sender: TObject);
    procedure edtMeresDatumExit(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
  private
    { Private declarations }
    azonosito : string;
    azonosito_id : string;
    rd : string;
    rtip : string;
    sTomegSql : string;
    procedure KarbGombBeallit(mire:Boolean);
    function Mezok_kitoltve:Boolean;
    function VaneErreANapraMerese:Boolean;
    function VaneUstvNyitas:Boolean;    
  public
    { Public declarations }
  end;

var
  frmTomeg1: TfrmTomeg1;

function OpenTestTomegek(egyed_id, azonosito:string):Boolean;
function OpenTestTomegBrow:Boolean;

implementation

// uses udtmTarka;



{$R *.dfm}

function OpenTestTomegek(egyed_id, azonosito:string):Boolean;
const
  TomegSql = ' select ' +
             ' TT.ID , ' +
             ' TT.EGYED_ID, ' +
             ' EE.ENAR, ' +
             ' EE.FULSZAM, ' +
             ' EE.TEHENSZAM, ' +
             ' TT.DATUM, ' +
             ' TT.TOMEG, ' +
             ' TT.MOD_DAT, ' +
             ' TT.MOD_KOD, ' +
             ' TT.MERES_TIPUS, ' +
             ' KODOK.KOD_NEV AS KOD_NEV, '+
             ' EE.TENYESZET ' +
             ' FROM TOMEGEK TT ' +
             ' JOIN EGYEDEK EE ON EE.ID = TT.EGYED_ID ' +
             ' LEFT JOIN KODOK ON KODOK.KODTIPUSOK_TIPUSKOD=''MERESTPS'' AND KODOK.KOD=TT.MERES_TIPUS ' +
             ' WHERE TT.EGYED_ID = :EGYED_ID';

begin
  Result := false;

  With frmTomeg1 do
  begin
    lblS2.Visible := false;
    lblS1.Visible := false;
    edtDatTol.Visible := false;
    btnLeker.Visible := false;
  end;

  frmTomeg1.sTomegSql := TomegSql;
  frmTomeg1.azonosito := azonosito;
  frmTomeg1.azonosito_id := egyed_id;

  frmTomeg1.sdsTomeg.DataSet.CommandText := TomegSql;
  frmTomeg1.sdsTomegENAR.Visible := False;
  frmTomeg1.sdsTomegTENYESZET.Visible := False;

  frmTomeg1.sdsTomeg.DataSet.Parameters.ParamByName('EGYED_ID').Value := egyed_id;
  frmTomeg1.sdsTomeg.Open;
  dtmTarka.sdsMeresTip.Open;
  dtmTarka.sdsMeresTip.Filter := 'kod>''1''';
  dtmTarka.sdsMeresTip.Filtered := true;

  frmTomeg1.rd := '';

  frmTomeg1.WindowState := wsNormal;
  frmTomeg1.Position := poDesigned ;
  frmTomeg1.Caption := dtmTarka.AzonIr(azonosito) +' egyed mért testtömeg adatai';
  frmTomeg1.btnCancel.Caption := 'Kilépés';
  if dtmTarka.UserKarb = '0' then
  begin
    frmTomeg1.btnTorol.Enabled := false;
    frmTomeg1.btnModosit.Enabled := false;
    frmTomeg1.btnUj.Enabled := false;
  end;

  if frmTomeg1.ShowModal = mrOK then
    Result := true;

  frmTomeg1.sdsTomeg.Close;

  dtmTarka.sdsMeresTip.Filter := '';
  dtmTarka.sdsMeresTip.Filtered := false;
  dtmTarka.sdsMeresTip.Close;
end;


function OpenTestTomegBrow:Boolean;
const
  TomegSql = ' select ' +
             ' TT.ID , ' +
             ' TT.EGYED_ID, ' +
             ' EE.ENAR, ' +
             ' EE.FULSZAM, ' +
             ' EE.TEHENSZAM, ' +
             ' TT.DATUM, ' +
             ' TT.TOMEG, ' +
             ' TT.MOD_DAT, ' +
             ' TT.MOD_KOD, ' +
             ' TT.MERES_TIPUS, ' +
             ' KODOK.KOD_NEV AS KOD_NEV, '+
             ' EE.TENYESZET ' +
             ' FROM TOMEGEK TT ' +
             ' JOIN EGYEDEK EE ON EE.ID = TT.EGYED_ID ' +
             ' LEFT JOIN KODOK ON KODOK.KODTIPUSOK_TIPUSKOD=''MERESTPS'' AND KODOK.KOD=TT.MERES_TIPUS ' +
             ' where tt.MOD_DAT > ';
//             ' where  Datediff(day, tt.MOD_DATUM, getdate())<1';
var
  s : string;
begin
  Result := false;
  frmTomeg1.azonosito := '';
  frmTomeg1.azonosito_id := '';
  frmTomeg1.sdsTomegENAR.Visible := True;

  With frmTomeg1 do
  begin
    lblS2.Visible := true;
    lblS1.Visible := true;
    edtDatTol.Visible := true;
    btnLeker.Visible := true;
  end;

  frmTomeg1.rd := '';
  s := FormatDateTime('yyyy.mm.dd', date-1);
  frmTomeg1.sTomegSql := TomegSql;
  frmTomeg1.edtDatTol.Text := s;

  frmTomeg1.sdsTomeg.DataSet.CommandText := TomegSql + Quotedstr(s) + ' ' +  dtmTarka.TenyeszetWhere;
  frmTomeg1.sdsTomeg.Open;
  dtmTarka.sdsMeresTip.Open;
  dtmTarka.sdsMeresTip.Filter := 'kod>''1''';
  dtmTarka.sdsMeresTip.Filtered := true;

  frmTomeg1.Position := poDesktopCenter ;
  frmTomeg1.Caption := 'Testtömeg mérési adatok - a mai nap rögzített adatok';
  frmTomeg1.btnCancel.Caption := 'Kilépés';
  if dtmTarka.UserKarb = '0' then
  begin
    frmTomeg1.btnTorol.Enabled := false;
    frmTomeg1.btnModosit.Enabled := false;
    frmTomeg1.btnUj.Enabled := false;
  end;
  if frmTomeg1.ShowModal = mrOK then
    Result := true;
  frmTomeg1.sdsTomeg.Close;

  dtmTarka.sdsMeresTip.Filter := '';
  dtmTarka.sdsMeresTip.Filtered := false;  
  dtmTarka.sdsMeresTip.Close;
end;


procedure TfrmTomeg1.KarbGombBeallit(mire: Boolean);
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

procedure TfrmTomeg1.btnUjClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  if (sdsTomeg.RecordCount>0) and (rd='') then begin
    rd := frmTomeg1.sdsTomegDATUM.AsString;
    rtip := frmTomeg1.sdsTomegMERES_TIPUS.AsString;
  end;
  sdsTomeg.Append;
  if Self.azonosito>EmptyStr then begin
    frmTomeg1.sdsTomegEGYED_ID.AsString := self.azonosito_id;
    frmTomeg1.sdsTomegENAR.AsString := self.azonosito;
  end;
  IF dtmTarka.TenyeszetWhere <> EmptyStr then
    frmTomeg1.sdsTomegTENYESZET.AsString := dtmTarka.sdsTenyeszetTKOD.AsString;
  if rd>EmptyStr then begin
    frmTomeg1.sdsTomegMERES_TIPUS.AsString := rtip;
    frmTomeg1.sdsTomegDATUM.AsString := rd;
  end;
  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  if Self.azonosito=EmptyStr then begin
    Self.edtAzonosito.Enabled := true;
    if Self.edtAzonosito.CanFocus then Self.edtAzonosito.SetFocus;
  end else begin
    if lucMeresTps.CanFocus then lucMeresTps.SetFocus;
  end;
  if lucMeresTps.Text = EmptyStr then lucMeresTps.SetFocus;

end;

function TfrmTomeg1.Mezok_kitoltve: Boolean;
begin
  result := false;

  if lucMeresTps.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A mérés típusának megadása kötelezõ!', mtWarning, [mbOK], 0);
    lucMeresTps.SetFocus;
    exit;
  end;

  if (edtAzonosito.Text = EmptyStr) and (edtFulszam.Text = EmptyStr) and
    (edtTehenszam.Text = EmptyStr) then begin
    dtmTarka.MsgDlg('Az egyed azonosítójának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtAzonosito.SetFocus;
    exit;
  end;

  if edtMeresDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A mérés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtMeresDatum.SetFocus;
    exit;
  end;

  if edtTomeg.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A mért tömeg megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtTomeg.SetFocus;
    exit;
  end;

  Result := true;
end;



procedure TfrmTomeg1.btnModositClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  if sdsTomeg.RecordCount=0 then exit;
  sdsTomeg.Edit;
  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  Self.edtAzonosito.Enabled := false;
  if edtTomeg.CanFocus then edtTomeg.SetFocus;
end;



procedure TfrmTomeg1.actOKExecute(Sender: TObject);
var
  ed : string;
  az : string;
  SQL : string;
  SQL1 : string;
  mode : string;
  t205 : double;
begin
  if sdsTomeg.State = dsBrowse then
    exit;

  if not Mezok_kitoltve then
    exit;

  mode := 'MAS';

  if sdsTomeg.State = dsInsert then
    mode := 'INSERT';

  if sdsTomeg.State = dsEdit then
    mode := 'EDIT';

  rd := frmTomeg1.sdsTomegDATUM.AsString;
  rtip := frmTomeg1.sdsTomegMERES_TIPUS.AsString;

  if mode = 'INSERT' then begin
    if VaneErreANapraMerese then begin
      dtmTarka.MsgDlg('Az egyednek már van mérés rögzítve erre a napra!',mterror,[mbOK],0 );
      exit;
    end;
    if rtip = '3' then begin
      if not VaneUstvNyitas then begin
        dtmTarka.MsgDlg('Az egyed nem lett rögzítve ÜSTV-re került egyedként!',mterror,[mbOK],0 );
        exit;
      end;
    end;
  end;

  frmTomeg1.sdsTomegMOD_DAT.AsDateTime := now();
  frmTomeg1.sdsTomegMOD_KOD.AsString := dtmTarka.UserKod;
  ed := frmTomeg1.sdsTomegDATUM.AsString;
  az := frmTomeg1.sdsTomegENAR.AsString;
  sdsTomeg.Post;

  SQL := '';
  SQL1 := '';

  dtmTarka.cnTarka.BeginTrans;
  try
    if frmTomeg1.sdsTomegMERES_TIPUS.AsString = '1' then begin      (* Választáskori mérés*)
        t205 := dtmTarka.Tom205szam(frmTomeg1.sdsTomegEGYED_ID.AsString,frmTomeg1.sdsTomegDATUM.AsDateTime,frmTomeg1.sdsTomegTOMEG.AsFloat);
        SQL := 'update egyedek ' +
               ' SET VALTOM = ' + frmTomeg1.sdsTomegTOMEG.AsString +
               ' , TOM205 = ' + IntToStr(round(t205)) +
               ' , VALDAT = to_date(' + Quotedstr(FormatDateTime('yyyy.mm.dd',frmTomeg1.sdsTomegDATUM.AsDateTime))+',''yyyy.mm.dd'')';
        SQL := SQL +
               ' , MOD_DAT = to_date(' + Quotedstr(FormatDateTime('yyyy.mm.dd',frmTomeg1.sdsTomegMOD_DAT.AsDateTime))+',''yyyy.mm.dd'')' +
               ' , MOD_KOD = ' + Quotedstr(frmTomeg1.sdsTomegMOD_KOD.AsString) +
               ' where EGYEDEK.ID = '+ frmTomeg1.sdsTomegEGYED_ID.AsString;

        dtmTarka.cnTarka.Execute(SQL);
    end;
    sdsTomeg.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;

  sdsTomeg.Refresh;

  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

procedure TfrmTomeg1.actMegsemExecute(Sender: TObject);
begin
  if sdsTomeg.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsTomeg.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

procedure TfrmTomeg1.edtAzonositoExit(Sender: TObject);
var
  sAzon : string;
  sAzonId : string;
  vissza : TTalParamList;
begin
  if edtAzonosito.Enabled and dtmTarka.megsemNyomas(ActiveControl) then exit;
  if edtAzonosito.Text > EmptyStr then begin
    sAzon := edtAzonosito.Text;
      if not dtmTarka.VaneIlyenEgyed(edtAzonosito.Text, sAzon,sAzonId,false) then begin
        sAzon := '';
        sAzonId := '';
        dtmTarka.MsgDlg('Nincs ilyen egyed, vagy az egyed már kikerült a tenyészetbõl!',mterror,[mbOK],0 );
        edtAzonosito.SelectAll;
        edtAzonosito.SetFocus;
      end else begin
        frmTomeg1.sdsTomegEGYED_ID.AsString:=sAzonId;
        frmTomeg1.sdsTomegENAR.AsString:=sAzon;
        vissza := TTalParamList.Create;
        try
          dtmTarka.EgyedInfo(sAzonId,vissza);
          frmTomeg1.sdsTomegFULSZAM.AsString := vissza.itemsByName('FULSZAM').values[0];
          frmTomeg1.sdsTomegTEHENSZAM.AsString := vissza.itemsByName('TEHENSZAM').values[0];
          frmTomeg1.sdsTomegTENYESZET.AsString := vissza.itemsByName('TENYESZET').values[0];
        finally
          vissza.Free;
        end;
      end;
  end;
end;

procedure TfrmTomeg1.edtMeresDatumExit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if StrToDate(edtMeresDatum.Text)  > Date then begin
    dtmTarka.MsgDlg('Hibás dátum!', mtWarning, [mbOK], 0);
    edtMeresDatum.SelectAll;
    edtMeresDatum.SetFocus;
  end;
end;



procedure TfrmTomeg1.btnTorolClick(Sender: TObject);
var
  SQL : string;
begin
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  if sdsTomeg.RecordCount = 0 then exit;
  if dtmTarka.MsgDlg('Biztos törli a tételt?', mtConfirmation , [mbYes, mbNo],0) = mrYes then begin
    SQL := 'delete from tomegek where id = ' +  frmTomeg1.sdsTomegID.AsString;
    sdsTomeg.Close;
    dtmTarka.cnTarka.BeginTrans;
    try
      dtmTarka.cnTarka.Execute(SQL);
      dtmTarka.cnTarka.CommitTrans;
    except
      if dtmTarka.cnTarka.InTransaction then begin
        dtmTarka.cnTarka.RollbackTrans;
      end;
    end;
    sdsTomeg.Open;
  end;
end;

procedure TfrmTomeg1.btnLekerClick(Sender: TObject);
begin
    if sdsTomeg.Active then
      sdsTomeg.Close;

    sdsTomeg.DataSet.CommandText := sTomegSql + Quotedstr(edtDatTol.text) + dtmTarka.TenyeszetWhere;
    sdsTomeg.Open;
end;




procedure TfrmTomeg1.btnNyomtatClick(Sender: TObject);
var
  sazon : string;
begin
  if frxRepLista.LoadFromFile('TomegKarb.fr3') then begin
     // paraméter átadás a lista fejhez
     sazon := frmTomeg1.sdsTomegID.AsString;
     sdsTomeg.DisableControls;
     try
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
       frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
       frxRepLista.Script.Variables['SzuroFeltetelek'] := 'Utolsó módosítás dátuma >= ' + edtDatTol.Text;
       frxRepLista.ShowReport();
     finally
       sdsTomeg.Locate('ID',sazon,[]);
       sdsTomeg.EnableControls;
     end;
  end;
end;

function TfrmTomeg1.VaneErreANapraMerese: Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as van from tomegek where (tomegek.egyed_id = ' + frmTomeg1.sdsTomegEGYED_ID.AsString +
          ') and (tomegek.datum = to_date(' + Quotedstr(FormatDateTime('yyyy.mm.dd',frmTomeg1.sdsTomegDATUM.AsDateTime)) +
          ',''yyyy.mm.dd''))';
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
  tq.Free;
end;




function TfrmTomeg1.VaneUstvNyitas: Boolean;
var
  SQL : string;
  tq : Ttalquery;
begin
  SQL := 'select 1 as van from tomegek where (tomegek.egyed_id = ' + frmTomeg1.sdsTomegEGYED_ID.AsString +
          ') and (tomegek.meres_tipus = ''6'' )';
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
  tq.Free;
end;

end.
