unit QfrmKihajt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, uValidedit, uDBValidedit,
  uTALDBEdit, Wwkeycb, uTALSearch, Mask, uTALMaskEdit, uTALLabel, DB,
  DBClient, uTALSimpleDataSet, uTalParams, frxClass, frxDBSet;

type
  TfrmKihajt = class(TfrmModOs)
    pnlKeres: TTalPanel;
    lblS2: TTalLabel;
    lblS1: TTalLabel;
    TalLabel18: TTalLabel;
    edtDatTol: TTalMaskEdit;
    btnLeker: TBitBtn;
    TalSearch1: TTalSearch;
    TalLabel7: TTalLabel;
    TalLabel4: TTalLabel;
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    TalLabel3: TTalLabel;
    TalLabel5: TTalLabel;
    edtAzonosito: TTalDBEdit;
    edtKiTomeg: TTalDBEdit;
    edtFulszam: TTalDBEdit;
    edtTehenszam: TTalDBEdit;
    TalDBEdit3: TTalDBEdit;
    TalLabel10: TTalLabel;
    edtKiDatum: TTalDBEdit;
    TalLabel6: TTalLabel;
    TalLabel8: TTalLabel;
    edtBeTomeg: TTalDBEdit;
    TalLabel9: TTalLabel;
    edtBeDatum: TTalDBEdit;
    sdsKeres: TTalSimpleDataSet;
    dtsKeres: TDataSource;
    sdsKeresID: TBCDField;
    sdsKeresEGYED_ID: TBCDField;
    sdsKeresENAR: TWidestringField;
    sdsKeresFULSZAM: TWidestringField;
    sdsKeresTEHENSZAM: TWidestringField;
    sdsKeresKI_DAT: TDateTimeField;
    sdsKeresKI_TOM: TSmallintField;
    sdsKeresBE_DAT: TDateTimeField;
    sdsKeresBE_TOM: TSmallintField;
    sdsKeresMOD_DAT: TDateTimeField;
    sdsKeresMOD_KOD: TWidestringField;
    sdsKeresTENYESZET: TWidestringField;
    frxDBDataset1: TfrxDBDataset;
    frxRepLista: TfrxReport;
    procedure btnUjClick(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure edtAzonositoExit(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
    azonosito : string;
    azonosito_id : string;
    rdk : string;
    rdb : string;

    sKSql : string;
    procedure KarbGombBeallit(mire:Boolean);
    function Mezok_kitoltve:Boolean;
  public
    { Public declarations }
  end;

var
  frmKihajt: TfrmKihajt;

procedure HajtasBrow;

implementation

uses udtmTarka;

{$R *.dfm}

procedure HajtasBrow;
const
  sSql = ' SELECT H.ID ,H.EGYED_ID,EE.ENAR,EE.FULSZAM,EE.TEHENSZAM, ' +
         ' H.KI_DAT,H.KI_TOM,H.BE_DAT,H.BE_TOM,H.MOD_DAT,H.MOD_KOD,EE.TENYESZET ' +
         ' FROM HAJTAS H ' +
         ' JOIN EGYEDEK EE ON EE.ID = H.EGYED_ID ' +
         ' WHERE H.MOD_DAT > ';
//             ' where  Datediff(day, tt.MOD_DATUM, getdate())<1';
var
  s : string;
begin
  frmKihajt.azonosito := '';
  frmKihajt.azonosito_id := '';
  With frmKihajt do begin
    lblS2.Visible := true;
    lblS1.Visible := true;
    edtDatTol.Visible := true;
    btnLeker.Visible := true;
  end;
  frmKihajt.rdk := '';
  frmKihajt.rdb := '';
  s := FormatDateTime('yyyy.mm.dd',date-1);
  frmKihajt.sKSql := sSql;
  frmKihajt.edtDatTol.Text := s;
  if frmKihajt.sdsKeres.Active then frmKihajt.sdsKeres.Close;
  frmKihajt.sdsKeres.Connection := dtmTarka.cnTarka;
  frmKihajt.sdsKeres.DataSet.CommandText := sSql + Quotedstr(s) + ' ' +  dtmTarka.TenyeszetWhere;
  frmKihajt.sdsKeres.Open;
  frmKihajt.Position := poDesktopCenter ;
  frmKihajt.Caption := 'Kihajtások - behajtások - a mai nap rögzített adatok';
  frmKihajt.btnCancel.Caption := 'Kilépés';
    if dtmTarka.UserKarb = '0' then
    begin
      frmKihajt.btnUj.Enabled := false;
      frmKihajt.btnModosit.Enabled := false;
      frmKihajt.btnTorol.Enabled := false;
    end;
  frmKihajt.ShowModal;
  frmKihajt.sdsKeres.Close;
end;

{ TfrmKihajt }

procedure TfrmKihajt.KarbGombBeallit(mire: Boolean);
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

function TfrmKihajt.Mezok_kitoltve: Boolean;
begin
  result := false;
  if (edtAzonosito.Text = EmptyStr) and (edtFulszam.Text = EmptyStr) and
    (edtTehenszam.Text = EmptyStr) then begin
    dtmTarka.MsgDlg('Az egyed azonosítójának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtAzonosito.SetFocus;
    exit;
  end;
  if edtKiDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A kihajtás dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtKiDatum.SetFocus;
    exit;
  end;
  if edtKiTomeg.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A kihajtási tömeg megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtKiTomeg.SetFocus;
    exit;
  end;
  Result := true;

end;

procedure TfrmKihajt.btnUjClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if (sdsKeres.RecordCount>0) and (rdk='') then begin
    rdk := sdsKeresKI_DAT.AsString;
    rdb := sdsKeresBE_DAT.AsString;
  end;
  sdsKeres.Append;
  if Self.azonosito>EmptyStr then begin
    sdsKeresEGYED_ID.AsString := self.azonosito_id;
    sdsKeresENAR.AsString := self.azonosito;
  end;
  IF dtmTarka.TenyeszetWhere <> EmptyStr then
    sdsKeresTENYESZET.AsString := dtmTarka.sdsTenyeszetTKOD.AsString;
  if rdk > EmptyStr then begin
    sdsKeresKI_DAT.AsString := rdk;
  end;
  Self.pnlMod.Enabled := true;
  if rdb > EmptyStr then begin
    sdsKeresBE_DAT.AsString := rdb;
  end;
  KarbGombBeallit(false);
  if Self.azonosito=EmptyStr then begin
    Self.edtAzonosito.Enabled := true;
    if Self.edtAzonosito.CanFocus then Self.edtAzonosito.SetFocus;
  end;
  if edtKiDatum.Text = EmptyStr then
    if edtKiDatum.CanFocus then edtKiDatum.SetFocus;

end;

procedure TfrmKihajt.btnLekerClick(Sender: TObject);
begin
    if sdsKeres.Active then
      sdsKeres.Close;

    sdsKeres.DataSet.CommandText := sKSql + Quotedstr(edtDatTol.text) + dtmTarka.TenyeszetWhere;
    sdsKeres.Open;

end;

procedure TfrmKihajt.edtAzonositoExit(Sender: TObject);
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
        sdsKeresEGYED_ID.AsString := sAzonId;
        sdsKeresENAR.AsString := sAzon;
        vissza := TTalParamList.Create;
        try
          dtmTarka.EgyedInfo(sAzonId,vissza);
          sdsKeresFULSZAM.AsString := vissza.itemsByName('FULSZAM').values[0];
          sdsKeresTEHENSZAM.AsString := vissza.itemsByName('TEHENSZAM').values[0];
          sdsKeresTENYESZET.AsString := vissza.itemsByName('TENYESZET').values[0];
        finally
          vissza.Free;
        end;
      end;
  end;
end;

procedure TfrmKihajt.actOKExecute(Sender: TObject);
var
  ed : string;
  az : string;
  mode : string;
begin
  if sdsKeres.State = dsBrowse then begin
//    ModalResult := mrOK;
    exit;
  end;
  if not Mezok_kitoltve then exit;
  mode := 'MAS';
  if sdsKeres.State = dsInsert then begin
    mode := 'INSERT';
  end;
  if sdsKeres.State = dsEdit then begin
    mode := 'EDIT';
  end;
  rdk := sdsKeresKI_DAT.AsString;
  rdb := sdsKeresBE_DAT.AsString;

  sdsKeresMOD_DAT.AsDateTime := now();
  sdsKeresMOD_KOD.AsString := dtmTarka.UserKod;
  ed := sdsKeresKI_DAT.AsString;
  az := sdsKeresENAR.AsString;
  sdsKeres.Post;

  dtmTarka.cnTarka.BeginTrans;
  try
    sdsKeres.ApplyUpdates(0);

    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;
  sdsKeres.Refresh;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;



procedure TfrmKihajt.actMegsemExecute(Sender: TObject);
begin
  if sdsKeres.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsKeres.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

procedure TfrmKihajt.btnModositClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if sdsKeres.RecordCount=0 then exit;
  sdsKeres.Edit;
  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  Self.edtAzonosito.Enabled := false;
  if edtDatTol.CanFocus then edtDatTol.SetFocus;

end;

procedure TfrmKihajt.btnNyomtatClick(Sender: TObject);
var
  sazon : string;
  aa : string;
begin
  aa := dtmTarka.sATKFT_KOD;
  if frxRepLista.LoadFromFile('kibehajt.fr3') then begin
     // paraméter átadás a lista fejhez
     sazon := sdsKeresID.AsString;
     sdsKeres.DisableControls;
     try
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
       frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
       aa := dtmTarka.sATKFT_KOD;
       frxRepLista.Script.Variables['SzuroFeltetelek']:= edtDatTol.Text;
       frxRepLista.ShowReport();
     finally
       sdsKeres.Locate('ID',sazon,[]);
       sdsKeres.EnableControls;
     end;
  End;
end;



procedure TfrmKihajt.btnTorolClick(Sender: TObject);
var
  SQL : string;
begin
  inherited;
  if not dtmTarka.JogosultsagEllenorzes('karb') then exit;
  if sdsKeres.RecordCount = 0 then exit;
  if dtmTarka.MsgDlg('Biztos törli a tételt?', mtConfirmation , [mbYes, mbNo],0) = mrYes then begin
    SQL := 'delete from hajtas where id = ' +  sdsKeresID.AsString;
    sdsKeres.Close;
    dtmTarka.cnTarka.BeginTrans;
    try
      dtmTarka.cnTarka.Execute(SQL);
      dtmTarka.cnTarka.CommitTrans;
    except
      if dtmTarka.cnTarka.InTransaction then begin
        dtmTarka.cnTarka.RollbackTrans;
      end;
    end;
    sdsKeres.Open;
  end;
end;

end.
