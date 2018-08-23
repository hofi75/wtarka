unit QfrmKiesesKArb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid, Db,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, DBCtrls, uTALDBLookupComboBox,
  Mask, uValidedit, uDBValidedit, uTALDBEdit, uTALLabel, uTalParams, uTalBitBtn,
  DBClient, uTALEdit, uTALSimpleDataSet, uTALSpeedButton, uTALCheckBox, DateUtils,
  Wwkeycb, uTALSearch, uTalQuery, ADODB, uTALStoredProc;

type
  TfrmKiesesKarb = class(TfrmModOs)
    TalLabel4: TTalLabel;
    TalDBEdit2: TTalDBEdit;
    TalLabel5: TTalLabel;
    TalDBEdit5: TTalDBEdit;
    TalLabel6: TTalLabel;
    TalDBEdit6: TTalDBEdit;
    TalLabel15: TTalLabel;
    TalLabel16: TTalLabel;
    TalLabel8: TTalLabel;
    TalLabel10: TTalLabel;
    edtKiesesDatum: TTalDBEdit;
    TalLabel12: TTalLabel;
    lucKiesesMod: TTalDBLookupComboBox;
    lblKiesesOK: TTalLabel;
    lucKiesesOk: TTalDBLookupComboBox;
    TalLabel1: TTalLabel;
    edtAzonosito: TTalDBEdit;
    TalLabel17: TTalLabel;
    edtSpecAzon: TTalDBEdit;
    TalLabel3: TTalLabel;
    edtNev: TTalDBEdit;
    dbeFajta: TTalDBEdit;
    dbeIvar: TTalDBEdit;
    dbeSzin: TTalDBEdit;
    sdsTermCsop: TTalSimpleDataSet;
    sdsTermCsopBORJU_SSZ: TIntegerField;
    sdsTermCsopivar_nev: TWidestringField;
    sdsTermCsopszin: TWidestringField;
    sdsTermCsopBORJU_ENAR: TWidestringField;
    sdsTermCsopkikod_nev: TWidestringField;
    sdsTermCsopkiok_nev: TWidestringField;
    sdsTermCsopBORJU_SULY: TFloatField;
    sdsTermCsopBORJU_SZIN: TWidestringField;
    sdsTermCsopELLESEK_ID: TBCDField;
    sdsTermCsopBORJU_IVAR: TWidestringField;
    sdsTermCsopBORJU_KIESES_KOD: TWidestringField;
    sdsTermCsopBORJU_KIESES_OK: TWidestringField;
    sdsTermCsopUTMOD_DAT: TDateTimeField;
    sdsTermCsopUTMOD_KOD: TWidestringField;
    sdsTermCsopID: TBCDField;
    dtsTermCsop: TDataSource;
    TalSpeedButton3: TTalSpeedButton;
    TalSpeedButton1: TTalSpeedButton;
    lblKikerulesHely: TTalLabel;
    lucKikhely: TTalDBLookupComboBox;
    TalSpeedButton2: TTalSpeedButton;
    TalLabel14: TTalLabel;
    edtTomeg: TTalDBEdit;
    TalCheckBox1: TTalCheckBox;
    pnlKeres: TTalPanel;
    lblS2: TTalLabel;
    lblS1: TTalLabel;
    TalLabel18: TTalLabel;
    btnLeker: TBitBtn;
    TalSearch1: TTalSearch;
    edtDatTol: TTalEdit;
    sdsKieses: TTalSimpleDataSet;
    dtsKieses: TDataSource;
    TalLabel9: TTalLabel;
    TalDBEdit7: TTalDBEdit;
    dtsKikHely: TDataSource;
    sdsKikHely: TTalSimpleDataSet;
    sdsKikHelyLISTA: TWideStringField;
    sdsKikHelyKOD: TWideStringField;
    AtmozgatasProc: TTalStoredProc;
    AtmozgatasVisszavonas: TTalStoredProc;
    sdsKiesesID: TBCDField;
    sdsKiesesENAR: TWideStringField;
    sdsKiesesFULSZAM: TWideStringField;
    sdsKiesesTEHENSZAM: TWideStringField;
    sdsKiesesNEV: TWideStringField;
    sdsKiesesSZULDAT: TDateTimeField;
    sdsKiesesANYA_ENAR: TWideStringField;
    sdsKiesesAPAKLSZ: TWideStringField;
    sdsKiesesIVAR: TWideStringField;
    sdsKiesesKIKDAT: TDateTimeField;
    sdsKiesesKIKOK: TWideStringField;
    sdsKiesesKIKOD: TWideStringField;
    sdsKiesesTENYESZET: TWideStringField;
    sdsKiesesMOD_DAT: TDateTimeField;
    sdsKiesesMOD_KOD: TWideStringField;
    sdsKiesesSZIN_KOD: TWideStringField;
    sdsKiesesFAJTA_KOD: TWideStringField;
    sdsKiesesKIKHELY: TWideStringField;
    procedure edtAzonositoExit(Sender: TObject);
    procedure btnUjClick(Sender: TObject);
    procedure KarbGombBeallit(mire:Boolean);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure edtKiesesDatumExit(Sender: TObject);
    procedure TalSpeedButton3Click(Sender: TObject);
    procedure TalSpeedButton1Click(Sender: TObject);
    procedure btnAtkotesVisszavonas(Sender: TObject);
    procedure TalSpeedButton2Click(Sender: TObject);
    procedure TalCheckBox1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnLekerClick(Sender: TObject);
  private
    { Private declarations }
    sSql : string;
    aktDatum   : TDate;
    lBecsukhat : Boolean;
    dAktDatum : Tdate;
    function Mezok_kitoltve:Boolean;
  public
    { Public declarations }
  end;

var
  frmKiesesKarb: TfrmKiesesKarb;

function OpenKiesesBrow:Boolean;

implementation

uses udtmTarka; // ADODB;

{$R *.dfm}


function OpenKiesesBrow:Boolean;
var
  SQL : string;
  SQL1 : string;
  s : string;
begin
  frmKiesesKarb.sSql := frmKiesesKarb.sdsKieses.DataSet.CommandText;
  frmKiesesKarb.sdsKieses.Connection := dtmTarka.cnTarka;
  frmKiesesKarb.AktDatum := today;
  s := FormatDateTime('yyyy.mm.dd',date-1);
  frmKiesesKarb.edtDatTol.Text := s;
  frmKiesesKarb.sdsKieses.DataSet.CommandText := frmKiesesKarb.sSqL + ' AND E.MOD_DAT > ' + Quotedstr(frmKiesesKarb.edtDatTol.text) + ' ' +  dtmTarka.TenyeszetWhereE;

  frmKiesesKarb.sdsKieses.Open;
  dtmTarka.qryKiesesKod.Open;
  dtmTarka.qryKiesesOk.Open;
  dtmTarka.qryKikHely.Open;
  dtmTarka.sdsTenyeszet.Open;
  frmKiesesKarb.sdsKikHely.Open;

  frmKiesesKarb.lBecsukhat := false;
  frmKiesesKarb.dAktDatum := today;

  frmKiesesKarb.Caption := 'Kiesések rögzítése ';
  frmKiesesKarb.btnCancel.Caption := 'Kilépés';
  if dtmTarka.UserKarb = '0' then
    begin
      frmKiesesKarb.btnUj.Enabled := false;
      frmKiesesKarb.btnModosit.Enabled := false;
      frmKiesesKarb.btnTorol.Enabled := false;
    end;
  frmKiesesKarb.ShowModal;
  Result := true;
  dtmTarka.qryKiesesKod.Close;
  dtmTarka.qryKiesesOk.Close;
  dtmTarka.qryKikHely.Close;
  frmKiesesKarb.sdsKieses.Close;
  frmKiesesKarb.sdsKieses.DataSet.CommandText := frmKiesesKarb.sSql;
end;

procedure TfrmKiesesKarb.edtAzonositoExit(Sender: TObject);
var
  sAzon : string;
  sAzonId : string;
  Vissza : TTAlParamList;
begin
  if edtAzonosito.Enabled and dtmTarka.megsemNyomas(ActiveControl) then exit;

  if edtAzonosito.Text > EmptyStr then begin
    sAzon := edtAzonosito.Text;
    if not dtmTarka.VaneIlyenEgyed(edtAzonosito.Text, sAzon,sAzonId,false,true,true,true) then begin
      if sAzonId = EmptyStr then
        dtmTarka.MsgDlg('Nincs ilyen egyed!',mterror,[mbOK],0 );
      sAzon := '';
      sAzonId := '';
      edtAzonosito.SelectAll;
      if edtAzonosito.CanFocus then
        edtAzonosito.SetFocus;
    end else begin
      if dtmTarka.oszlopbanEzAzErtekSzerepel(sdsKieses,'ID',sAzonId,
              'Már rögzítette ezt az egyedet','uj','ID',sAzonId) then begin
        sAzon := '';
        sAzonId := '';
        edtAzonosito.SelectAll;
        if edtAzonosito.CanFocus then edtAzonosito.SetFocus;
        exit;
      end;
      Vissza := TTalParamList.Create;
      try
        dtmTarka.EgyedInfo(sAzonId,vissza);
        sdsKiesesID.AsString := sAzonId;
        sdsKiesesENAR.AsString := Vissza.ItemsByName('ENAR').values[0];
        sdsKiesesFULSZAM.AsString :=  Vissza.ItemsByName('FULSZAM').values[0];
        sdsKiesesTEHENSZAM.AsString :=  Vissza.ItemsByName('TEHENSZAM').values[0];
        sdsKiesesTENYESZET.AsString :=  Vissza.ItemsByName('TENYESZET').values[0];
        sdsKiesesNEV.AsString :=  Vissza.ItemsByName('NEV').values[0];
        sdsKiesesSZULDAT.AsString :=  Vissza.ItemsByName('SZULDAT').values[0];
        sdsKiesesANYA_ENAR.AsString :=  Vissza.ItemsByName('ANYA_ENAR').values[0];
        sdsKiesesAPAKLSZ.AsString :=  Vissza.ItemsByName('APAKLSZ').values[0];
        (* sdsKiesesKONSTR_KOD.AsString :=  Vissza.ItemsByName('KONSTR_KOD').values[0] + ' - ' +
                                                   Vissza.ItemsByName('KONSTR_NEV').values[0]; *)
        (* sdsKiesesIVAR.AsString := Vissza.ItemsByName('IVAR').values[0];  + ' - ' +
                                                   Vissza.ItemsByName('IVAR_NEV').values[0];   *)
        if not (sdsKieses.State = dsInsert) then begin
          sdsKiesesKIKDAT.AsString :=  Vissza.ItemsByName('KIKDAT').values[0];
        end;
        sdsKiesesKIKOK.AsString :=  Vissza.ItemsByName('KIKOK').values[0];
        sdsKiesesKIKOD.AsString :=  Vissza.ItemsByName('KIKOD').values[0];
        (* sdsKiesesSZIN_KOD.AsString :=  Vissza.ItemsByName('SZIN').values[0] + ' - ' +
                                                   Vissza.ItemsByName('SZIN_NEV').values[0]; *)
        (* if Vissza.ItemsByName('FAJTAKOD').values[0] <> EmptyStr then
          sdsKiesesFAJTA_KOD.AsString :=  IntToStr( Vissza.ItemsByName('FAJTAKOD').values[0]) + ' - ' +
                                                 Vissza.ItemsByName('FAJTA_NEV').values[0]
        else                                         ;
          sdsKiesesFAJTA_KOD.AsString :=  ''; *)
        if edtKiesesDatum.CanFocus then begin
          edtKiesesDatum.SetFocus;
          edtKiesesDatum.SelectAll;
        end;
        (* sdsKiesesKIKOD.Value := '1';
        sdsKiesesKIKOK.Value := '1'; *)
      finally
        Vissza.Free;
      end;
    end;

  end;
end;

procedure TfrmKiesesKarb.btnUjClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
  frmKiesesKarb.edtAzonosito.Enabled := true;

  sdsKieses.Append;
  sdsKiesesKIKDAT.AsDateTime := dAktDatum;
  Self.KarbGombBeallit(False);

  if edtAzonosito.CanFocus then edtAzonosito.SetFocus;
end;

procedure TfrmKiesesKarb.KarbGombBeallit(mire: Boolean);
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
    if Self.btnUj.CanFocus then Self.btnUj.Setfocus;
end;



procedure TfrmKiesesKarb.actOKExecute(Sender: TObject);
var
  SQL : string;
begin
  if sdsKieses.State = dsBrowse then begin
//    ModalResult := mrOK;
    exit;
  end;

  if sdsKiesesKIKOD.AsString = '12' then
     if dtmTarka.MsgDlg('Biztos áthelyezi az egyedet?', mtConfirmation , [mbYes, mbNo],0) = mrNo then
        exit;

  if not Mezok_kitoltve then exit;
  sdsKiesesMOD_DAT.AsDateTime := now();
  sdsKiesesMOD_KOD.AsString := dtmTarka.UserKod;
  sdsKieses.Post;

  try
      try
          dtmTarka.cnTarka.BeginTrans;

//          sdsKieses.DisableControls;
//          sdsKieses.first;
//          While not sdsKieses.eof do begin
             SQL := 'update egyedek ' +
                   ' SET KIKOK = '+Quotedstr(sdsKiesesKIKOK.AsString) +
                   ' , KIKOD = '+Quotedstr(sdsKiesesKIKOD.AsString) +
                   ' , KIKDAT = '+Quotedstr(FormatDateTime('yyyy.mm.dd',sdsKiesesKIKDAT.AsDateTime)) +
                   ' , KIKHELY='+Quotedstr(sdsKiesesKIKHELY.AsString);
//                   if sdsKiesesKIESESI_TOMEG.AsString <> EmptyStr then
//                     SQL := SQL + ' , KIESESI_TOMEG='+sdsKiesesKIESESI_TOMEG.asString;
                   SQL := SQL +
                   ' , MOD_DAT = '+Quotedstr(FormatDateTime('yyyy.mm.dd',sdsKiesesMOD_DAT.AsDateTime)) +
                   ' , MOD_KOD = '+Quotedstr(sdsKiesesMOD_KOD.AsString) +
                   ' where EGYEDEK.ID = '+Quotedstr(sdsKiesesID.AsString);

//             SQL1 := '';
(*             if sdsKiesesKIKOK.AsString>EmptyStr then begin
               SQL1 := 'INSERT INTO [KOR_NAP] ([EGYED_ID], [MNEM], [DATUM]';
               if sdsKiesesSTATUSZ.AsString > EmptyStr then
                 SQL1 := SQL1 + ' ,[KI_KORCS]';
               if sdsKiesesKIESESI_TOMEG.AsString > EmptyStr then
                 SQL1 := SQL1 + ' ,[TOMEG]';

               SQL1 := SQL1 + ') SELECT ' +
               sdsKiesesID.asstring +
               ', ''KIK'' ,' +
               quotedstr(FormatDateTime('yyyy.mm.dd', sdsKiesesKIKERULES_DATUM.AsDateTime));
               if sdsKiesesSTATUSZ.AsString > EmptyStr then
                 SQL1 := SQL1 + ',' + quotedstr(sdsKiesesSTATUSZ.AsString) ;
               if sdsKiesesKIESESI_TOMEG.AsString > EmptyStr then
                 SQL1 := SQL1 + ',' + sdsKiesesKIESESI_TOMEG.AsString ;
               SQL1 := SQL1 + ' from egyedek e where e.id= ' + sdsKiesesID.asstring +
                         ' AND NOT EXISTS (SELECT 1 FROM KOR_NAP K1 WHERE K1.EGYED_ID=E.ID AND K1.MNEM=''KIK'' )';
             end; *)
                dtmTarka.cnTarka.Execute(SQL);
//             if sql1 > '' then begin
//               dtmTarka.cnTarka.Execute(SQL1);
//             end;
//             sdsKieses.next;
//          end;

          if sdsKiesesKIKOD.AsString = '12' then begin
             AtmozgatasProc.ProcedureName := 'ATMOZGATASP';
             AtmozgatasProc.Connection := dtmTarka.cnTarka;
             AtmozgatasProc.Parameters.ParamByName('P_TKOD').Value := sdsKiesesKIKHELY.AsString;
             AtmozgatasProc.Parameters.ParamByName('P_ENAR').Value := sdsKiesesENAR.AsString;
             AtmozgatasProc.Parameters.ParamByName('P_EGYED_ID').Value := sdsKiesesID.AsInteger;
             AtmozgatasProc.ExecProc;
          end;

          dtmTarka.cnTarka.CommitTrans;

      except
        if dtmTarka.cnTarka.InTransaction then
          dtmTarka.cnTarka.RollbackTrans;
      end;
    finally
//      frmKiesesKarb.sdsKieses.EnableControls;
    end;


  dAktdatum := sdsKiesesKIKDAT.AsDateTime;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

(*
function slics(const lics : string): boolean;
var
  ds : TTalQuery;
  l1 : string;
  l2 : string;
begin
  ds := TTalQuery.Create(nil);
  ds.Connection := dtmTarka.cnTarka;
  l2 := LeftStr(lics, 20);
  l1 := Copy(lics, 21, Length(lics) - 20);
  ds.SQL.Add('update param set lic1 = ' + QuotedStr(l1));
  ds.SQL.Add(', lic2 = ' + QuotedStr(l2));
  ds.ExecSQL;
  ds.Free;
  Result := True;
end;
*)


function TfrmKiesesKarb.Mezok_kitoltve: Boolean;
var
  SQL: String;
  ds : TTalQuery;
  x: Integer;
  found: Boolean;
begin
  result := false;
  if edtAzonosito.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Nem adott meg egyedet!', mtWarning, [mbOK], 0);
    edtAzonosito.SetFocus;
    exit;
  end;

  if lucKiesesMod.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A kiesés módjának megadása kötelezõ!', mtWarning, [mbOK], 0);
    lucKiesesMod.SetFocus;
    exit;
  end;
  if lucKiesesOk.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A kiesés okának megadása kötelezõ!', mtWarning, [mbOK], 0);
    lucKiesesOk.SetFocus;
    exit;
  end;
  if edtKiesesDatum.Text='    .  .  ' then begin
    dtmTarka.MsgDlg('A kiesés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtKiesesDatum.SetFocus;
    exit;
  end;
  if lucKikhely.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A kikerülés vagy átkötés helyének megadása kötelezõ!', mtWarning, [mbOK], 0);
    exit;
  end;

  if lucKiesesMod.KeyValue = '12' then begin
    ds := TTalQuery.Create(Self);
    ds.Connection := dtmTarka.cnTarka;
    ds.SQL.Add('select * from teny where tkod = ' + Quotedstr(lucKikhely.KeyValue));
    ds.Open;
    found := not ds.Eof;
    ds.Free;
    if not found then begin;
       dtmTarka.MsgDlg('Átkötés esetén adjon meg létezõ tenyészetet!', mtWarning, [mbOK], 0);
       exit;
    end;
  end;
  Result := true;
end;



procedure TfrmKiesesKarb.actMegsemExecute(Sender: TObject);
begin
  if sdsKieses.State = dsBrowse then begin
    ModalResult := mrCancel;
    lBecsukhat := true;
  end else
    sdsKieses.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;



procedure TfrmKiesesKarb.btnModositClick(Sender: TObject);
begin
  if sdsKieses.RecordCount = 0 then exit;
  if not dtmTarka.LicenceDatEll then exit;  
  inherited;
  sdsKieses.Edit;
  Self.KarbGombBeallit(False);
  edtAzonosito.Enabled := false;
  edtKiesesDatum.Enabled := true;
  if edtKiesesDatum.CanFocus then edtKiesesDatum.SetFocus;
end;

procedure TfrmKiesesKarb.edtKiesesDatumExit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if edtKiesesDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A kiesés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtKiesesDatum.SelectAll;
    edtKiesesDatum.SetFocus;
    exit;
  end;
  if StrToDate(edtKiesesDatum.Text)  > Date then begin
    dtmTarka.MsgDlg('Hibás dátum!', mtWarning, [mbOK], 0);
    edtKiesesDatum.SelectAll;
    edtKiesesDatum.SetFocus;
  end;
  if dtmTarka.VaneDatumnalKesobbiAdat(sdsKiesesID.AsString,edtKiesesDatum.Text) then begin
    dtmTarka.MsgDlg('A megadott kiesés dátumánál késõbbi dátummal van adata az egyednek!', mtWarning, [mbOK], 0);
    edtKiesesDatum.SelectAll;
    edtKiesesDatum.SetFocus;
  end;
end;

procedure TfrmKiesesKarb.TalSpeedButton3Click(Sender: TObject);
begin
  sdsKiesesKIKOD.AsString := '';
  inherited;
end;


procedure TfrmKiesesKarb.TalSpeedButton1Click(Sender: TObject);
begin
  sdsKiesesKIKOK.AsString := '';
  inherited;
end;

procedure TfrmKiesesKarb.btnAtkotesVisszavonas(Sender: TObject);
begin
  if sdsKieses.RecordCount = 0 then exit;
  if dtmTarka.MsgDlg('Biztos visszavonja az átkötést?', mtConfirmation , [mbYes, mbNo],0) = mrNo then exit;
  if lucKiesesMod.KeyValue <> '12' then begin
    dtmTarka.MsgDlg('Az egyed nem átkötéssel került ki a tenyészetbõl!', mtWarning, [mbOK], 0);
    exit;
  end;

  AtmozgatasVisszavonas.ProcedureName := 'ATMOZGATAS_VISSZAVONAS';
  AtmozgatasVisszavonas.Connection := dtmTarka.cnTarka;
  AtmozgatasVisszavonas.Parameters.ParamByName('P_EGYED_ID').Value := sdsKiesesID.AsInteger;
  AtmozgatasVisszavonas.ExecProc;

  sdsKieses.Refresh;

  inherited;
end;



procedure TfrmKiesesKarb.TalSpeedButton2Click(Sender: TObject);
begin
  sdsKiesesKIKHELY.AsString := '';
end;

procedure TfrmKiesesKarb.TalCheckBox1Click(Sender: TObject);
begin
  inherited;
  edtTomeg.Enabled :=  TalCheckBox1.checked;
  edtTomeg.TabStop :=  TalCheckBox1.checked;
end;

procedure TfrmKiesesKarb.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  CanClose := lBecsukhat;
end;

procedure TfrmKiesesKarb.btnLekerClick(Sender: TObject);
begin
  inherited;
  if sdsKieses.Active then sdsKieses.Close;
  sdsKieses.DataSet.CommandText := frmKiesesKarb.sSqL + ' AND E.MOD_DAT > ' + Quotedstr(frmKiesesKarb.edtDatTol.text) + dtmTarka.TenyeszetWhereE;;

  sdsKieses.Open;

end;

(*
procedure TfrmKiesesKarb.lucKiesesModCloseUp(Sender: TObject);
begin
  inherited;
  if lucKiesesMod.KeyValue = 12 then begin
     // dtmTarka.MsgDlg( 'Áthelyezés ', mtConfirmation , [mbOK],0);
     lucKikhely.Visible       := False;
     lucKikhely.Enabled       := False;
     lucAtkotesTenyeszet.Visible := True;
     lucAtkotesTenyeszet.Enabled := True;
     lblKikerulesHely.Caption := 'Új tenyészet:';
  end else begin
     lucKikhely.Visible          := True;
     lucKikhely.Enabled          := True;
     lucAtkotesTenyeszet.Visible := False;
     lucAtkotesTenyeszet.Enabled := False;
     lblKikerulesHely.Caption    := 'Kikerülés helye:';
  end;
end;
  *)

end.
