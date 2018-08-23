unit QfrmValRogz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, uDBValidedit, uTALDBEdit, Mask,
  uValidedit, uTALEdit, Wwkeycb, uTALSearch, uTALLabel, DB, DBClient,
  uTALSimpleDataSet, DateUtils, uTalParams, frxClass, frxDBSet;

type
  TfrmValRogz = class(TfrmModOs)
    sdsKeres: TTalSimpleDataSet;
    sdsKeresID: TBCDField;
    sdsKeresENAR: TWidestringField;
    sdsKeresFULSZAM: TWidestringField;
    sdsKeresTEHENSZAM: TWidestringField;
    sdsKeresNEV: TWidestringField;
    sdsKeresSZULDAT: TDateTimeField;
    sdsKeresIVAR: TWidestringField;
    sdsKeresTENYESZET: TWidestringField;
    sdsKeresMOD_DAT: TDateTimeField;
    sdsKeresMOD_KOD: TWidestringField;
    dtsKeres: TDataSource;
    pnlKeres: TTalPanel;
    lblS2: TTalLabel;
    lblS1: TTalLabel;
    TalLabel18: TTalLabel;
    btnLeker: TBitBtn;
    TalSearch1: TTalSearch;
    edtDatTol: TTalEdit;
    TalLabel4: TTalLabel;
    TalLabel5: TTalLabel;
    TalLabel8: TTalLabel;
    TalLabel10: TTalLabel;
    TalLabel1: TTalLabel;
    TalLabel17: TTalLabel;
    TalLabel3: TTalLabel;
    TalLabel9: TTalLabel;
    TalDBEdit2: TTalDBEdit;
    TalDBEdit5: TTalDBEdit;
    edtValDatum: TTalDBEdit;
    edtAzonosito: TTalDBEdit;
    edtSpecAzon: TTalDBEdit;
    edtNev: TTalDBEdit;
    TalDBEdit4: TTalDBEdit;
    TalDBEdit7: TTalDBEdit;
    TalLabel7: TTalLabel;
    TalLabel6: TTalLabel;
    edtValTom: TTalDBEdit;
    TalLabel2: TTalLabel;
    edtTom205: TTalDBEdit;
    TalLabel11: TTalLabel;
    TalLabel12: TTalLabel;
    sdsKeresSZUL_SULY: TSmallintField;
    sdsKeresVALDAT: TDateTimeField;
    sdsKeresVALTOM: TSmallintField;
    sdsKeresTOM205: TSmallintField;
    frxDBDatasetV: TfrxDBDataset;
    frxRepLista: TfrxReport;
    procedure btnUjClick(Sender: TObject);
    procedure edtAzonositoExit(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure edtValTomExit(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
    sSql : string;
    aktDatum   : TDate;
    lBecsukhat : Boolean;
    dAktDatum : Tdate;
    function Mezok_kitoltve:Boolean;
    procedure KarbGombBeallit(mire:Boolean);
  public
    { Public declarations }
  end;

var
  frmValRogz: TfrmValRogz;

function OpenValRogz:Boolean;

implementation

uses udtmTarka, ConvUtils;

{$R *.dfm}


function OpenValRogz:Boolean;
var
  SQL : string;
  SQL1 : string;
  s : string;
begin
  frmValRogz.sSql := frmValRogz.sdsKeres.DataSet.CommandText;
  frmValRogz.sdsKeres.Connection := dtmTarka.cnTarka;
  if frmValRogz.sdsKeres.Active then frmValRogz.sdsKeres.Close;
  frmValRogz.AktDatum := today;
  s := FormatDateTime('yyyy.mm.dd',date-1);
  frmValRogz.edtDatTol.Text := s;
  frmValRogz.sdsKeres.DataSet.CommandText := frmValRogz.sSqL + ' AND E.MOD_DAT > ' + Quotedstr(frmValRogz.edtDatTol.text) + ' ' +  dtmTarka.TenyeszetWhereE;

  frmValRogz.sdsKeres.Open;
  frmValRogz.lBecsukhat := false;
  frmValRogz.dAktDatum := today;

  frmValRogz.Caption := 'Választási adatok rögzítése ';
  frmValRogz.btnCancel.Caption := 'Kilépés';
    if dtmTarka.UserKarb = '0' then
    begin
      frmValRogz.btnUj.Enabled := false;
      frmValRogz.btnModosit.Enabled := false;
      frmValRogz.btnTorol.Enabled := false;
    end;
  frmValRogz.ShowModal;
  Result := true;
  frmValRogz.sdsKeres.Close;
  frmValRogz.sdsKeres.DataSet.CommandText := frmValRogz.sSql;

end;


{ TfrmValRogz }

function TfrmValRogz.Mezok_kitoltve: Boolean;
begin
  result := false;
  if edtAzonosito.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Nem adott meg egyedet!', mtWarning, [mbOK], 0);
    edtAzonosito.SetFocus;
    exit;
  end;


  Result := true;

end;

procedure TfrmValRogz.btnUjClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;
  edtAzonosito.Enabled := true;

  sdsKeres.Append;
  sdsKeresVALDAT.AsDateTime := dAktDatum;
  Self.KarbGombBeallit(False);

  if edtAzonosito.CanFocus then edtAzonosito.SetFocus;

end;

procedure TfrmValRogz.KarbGombBeallit(mire: Boolean);
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

procedure TfrmValRogz.edtAzonositoExit(Sender: TObject);
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
      if dtmTarka.oszlopbanEzAzErtekSzerepel(sdsKeres,'ID',sAzonId,
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
        sdsKeresID.AsString := sAzonId;
        sdsKeresENAR.AsString := Vissza.ItemsByName('ENAR').values[0];
        sdsKeresFULSZAM.AsString :=  Vissza.ItemsByName('FULSZAM').values[0];
        sdsKeresTEHENSZAM.AsString :=  Vissza.ItemsByName('TEHENSZAM').values[0];
        sdsKeresTENYESZET.AsString :=  Vissza.ItemsByName('TENYESZET').values[0];
        sdsKeresNEV.AsString :=  Vissza.ItemsByName('NEV').values[0];
        sdsKeresSZULDAT.AsString :=  Vissza.ItemsByName('SZULDAT').values[0];
        sdsKeresSZUL_SULY.AsString :=  Vissza.ItemsByName('SZUL_SULY').values[0];
        sdsKeresIVAR.AsString := Vissza.ItemsByName('IVAR').values[0] + ' - ' +
                                                   Vissza.ItemsByName('IVAR_NEV').values[0];
        if not (sdsKeres.State = dsInsert) then begin
          sdsKeresVALDAT.AsString :=  Vissza.ItemsByName('VALDAT').values[0];
        end;
        sdsKeresVALTOM.AsString :=  Vissza.ItemsByName('VALTOM').values[0];
        sdsKeresTOM205.AsString :=  Vissza.ItemsByName('TOM205').values[0];
        if edtValDatum.CanFocus then begin
          edtValDatum.SetFocus;
          edtValDatum.SelectAll;
        end;
      finally
        Vissza.Free;
      end;
    end;

  end;
end;



procedure TfrmValRogz.btnModositClick(Sender: TObject);
begin
  if sdsKeres.RecordCount = 0 then exit;
  if not dtmTarka.LicenceDatEll then exit;
  inherited;
  sdsKeres.Edit;
  Self.KarbGombBeallit(False);
  edtAzonosito.Enabled := false;
  edtValDatum.Enabled := true;
  if edtValDatum.CanFocus then edtValDatum.SetFocus;
end;



procedure TfrmValRogz.btnLekerClick(Sender: TObject);
begin
  inherited;
  if sdsKeres.Active then sdsKeres.Close;
  sdsKeres.DataSet.CommandText := frmValRogz.sSqL + ' AND E.MOD_DAT > ' + Quotedstr(frmValRogz.edtDatTol.text) + dtmTarka.TenyeszetWhereE;;

  sdsKeres.Open;

end;

procedure TfrmValRogz.actOKExecute(Sender: TObject);
var
  SQL : string;
begin
  if sdsKeres.State = dsBrowse then begin
//    ModalResult := mrOK;
    exit;
  end;
  if not Mezok_kitoltve then exit;
  sdsKeresMOD_DAT.AsDateTime := now();
  sdsKeresMOD_KOD.AsString := dtmTarka.UserKod;
  if sdsKeres.State = dsEdit then begin
    sdsKeres.Post;

    dtmTarka.cnTarka.BeginTrans;
    try
      sdsKeres.ApplyUpdates(0);

      dtmTarka.cnTarka.CommitTrans;
    except
      if dtmTarka.cnTarka.InTransaction then
        dtmTarka.cnTarka.RollbackTrans;
    end;
  end else begin
    try
      with frmValRogz do begin
        dtmTarka.cnTarka.BeginTrans;
        SQL := 'update egyedek ' +
               ' SET VALTOM = '+ sdsKeresVALTOM.AsString +
               ' , TOM205 = '+ sdsKeresTOM205.AsString +
               ' , VALDAT =  to_date('+Quotedstr(FormatDateTime('yyyy.mm.dd',sdsKeresVALDAT.AsDateTime)) + ',''yyyy.mm.dd'')';
        SQL := SQL +
               ' , MOD_DAT =  to_date('+Quotedstr(FormatDateTime('yyyy.mm.dd',sdsKeresMOD_DAT.AsDateTime)) + ',''yyyy.mm.dd'')' +
               ' , MOD_KOD = '+Quotedstr(sdsKeresMOD_KOD.AsString) +
               ' where EGYEDEK.ID = ' + sdsKeresID.AsString;

        dtmTarka.cnTarka.Execute(SQL);
        dtmTarka.cnTarka.CommitTrans;
      end;
    except
      if dtmTarka.cnTarka.InTransaction then
        dtmTarka.cnTarka.RollbackTrans;
    end;
  end;
  sdsKeres.Cancel;

  sdsKeres.Refresh;

  dAktdatum := sdsKeresVALDAT.AsDateTime;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;



procedure TfrmValRogz.actMegsemExecute(Sender: TObject);
begin
  if sdsKeres.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsKeres.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;

procedure TfrmValRogz.edtValTomExit(Sender: TObject);
var
  ci : Double;
  nap : Extended;
  ss : double;
begin
//  ss := sdsKeresVALTOM.AsInteger - sdsKeresSZUL_SULY.AsInteger;
  ss := edtValTom.Value - sdsKeresSZUL_SULY.AsInteger;
  nap := sdsKeresVALDAT.AsDateTime - sdsKeresSZULDAT.AsDateTime;
  if nap <> 0 then
    ci := (205 * ss  / nap ) + sdsKeresSZUL_SULY.AsFloat
  else
    ci := 0;
    
  sdsKeresTOM205.AsFloat := ci;

end;

procedure TfrmValRogz.btnNyomtatClick(Sender: TObject);
var
  sazon : string;
  aa : string;
begin
  aa := dtmTarka.sATKFT_KOD;
  if frxRepLista.LoadFromFile('ValRogzLista.fr3') then begin
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
  End;end;

procedure TfrmValRogz.btnTorolClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;

end;

end.
