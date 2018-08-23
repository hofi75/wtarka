unit QfrmUstv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, Wwkeycb, uTALSearch, Mask,
  uTALMaskEdit, uTALLabel, uValidedit, uDBValidedit, uTALDBEdit, DB,
  DBClient, uTALSimpleDataSet, uTalParams, frxClass, frxDBSet;

type
  TfrmUstv = class(TfrmModOs)
    pnlKeres: TTalPanel;
    lblS2: TTalLabel;
    lblS1: TTalLabel;
    TalLabel18: TTalLabel;
    edtDatTol: TTalMaskEdit;
    btnLeker: TBitBtn;
    TalSearch1: TTalSearch;
    sdsKeres: TTalSimpleDataSet;
    dtsKeres: TDataSource;
    TalLabel7: TTalLabel;
    TalLabel5: TTalLabel;
    lblDatum: TTalLabel;
    edtAzonosito: TTalDBEdit;
    TalDBEdit3: TTalDBEdit;
    edtDatum: TTalDBEdit;
    TalLabel1: TTalLabel;
    TalDBEdit1: TTalDBEdit;
    TalLabel4: TTalLabel;
    TalDBEdit2: TTalDBEdit;
    sdsKeresENAR: TWidestringField;
    sdsKeresTENYESZET: TWidestringField;
    sdsKeresNEV: TWidestringField;
    sdsKeresSZULDAT: TDateTimeField;
    sdsKeresDATUM: TDateTimeField;
    sdsKeresMOD_KOD: TWidestringField;
    sdsKeresMOD_DAT: TDateTimeField;
    sdsKeresEGYED_ID: TBCDField;
    sdsKeresID: TBCDField;
    frxDBDatasetUSTV: TfrxDBDataset;
    frxRepLista: TfrxReport;
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure edtAzonositoExit(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
    azonosito : string;
    azonosito_id : string;
    rdk : string;
    Tipus : string;

    sKSql : string;
    procedure KarbGombBeallit(mire:Boolean);
    function Mezok_kitoltve:Boolean;

  public
    { Public declarations }
  end;

var
  frmUstv: TfrmUstv;

procedure USTVBrow;
procedure ITVBrow;
procedure KSTVBrow;

implementation

uses udtmTarka;

{$R *.dfm}

procedure USTVBrow;
const
  sSql = ' SELECT WUSTV.ID, WUSTV.EGYED_ID, E.ENAR, E.TENYESZET, E.NEV, ' +
         ' E.SZULDAT, WUSTV.DATUM, WUSTV.MOD_KOD, Wustv.MOD_DAT ' +
         ' FROM WUSTV ' +
         ' JOIN EGYEDEK E ON WUSTV.EGYED_ID = E.ID   ' +
         ' WHERE WUSTV.MOD_DAT > ';
//             ' where  Datediff(day, tt.MOD_DATUM, getdate())<1';
var
  s : string;
begin
  frmUstv.azonosito := '';
  frmUstv.azonosito_id := '';
  frmUstv.Tipus := 'USTV';
  With frmUstv do begin
    sdsKeres.Connection := dtmTarka.cnTarka;
    lblS2.Visible := true;
    lblS1.Visible := true;
    edtDatTol.Visible := true;
    btnLeker.Visible := true;
    lblDatum.Caption := 'ÜSTV-re kerülés dátuma:';
  end;
  frmUstv.rdk := '';
  s := FormatDateTime('yyyy.mm.dd',date-1);
  frmUstv.sKSql := sSql;
  frmUstv.edtDatTol.Text := s;
  frmUstv.sdsKeres.DataSet.CommandText := sSql + Quotedstr(s) + ' ' +  dtmTarka.TenyeszetWhereE;
  frmUstv.sdsKeres.Open;
  frmUstv.Position := poDesktopCenter ;
  frmUstv.Caption := 'ÜSTV-re került borjak - a mai nap rögzített adatok';
  frmUstv.btnCancel.Caption := 'Kilépés';
  if dtmTarka.UserKarb = '0' then
  begin
      frmUstv.btnUj.Enabled := false;
      frmUstv.btnModosit.Enabled := false;
      frmUstv.btnTorol.Enabled := false;
  end;
  frmUstv.ShowModal;
  frmUstv.sdsKeres.Close;
end;


procedure ITVBrow;
const
  sSql = ' SELECT WITV.ID, WITV.EGYED_ID, E.ENAR, E.TENYESZET, E.NEV, ' +
         ' E.SZULDAT, WITV.DATUM, WITV.MOD_KOD, WItv.MOD_DAT ' +
         ' FROM WITV ' +
         ' JOIN EGYEDEK E ON WITV.EGYED_ID = E.ID   ' +
         ' WHERE WITV.MOD_DAT > ';
//             ' where  Datediff(day, tt.MOD_DATUM, getdate())<1';
var
  s : string;
begin
  frmUstv.azonosito := '';
  frmUstv.azonosito_id := '';
  frmUstv.Tipus := 'ITV';
  With frmUstv do begin
    sdsKeres.Connection := dtmTarka.cnTarka;
    lblS2.Visible := true;
    lblS1.Visible := true;
    edtDatTol.Visible := true;
    btnLeker.Visible := true;
    lblDatum.Caption := 'ITV-re kerülés dátuma:';
  end;
  frmUstv.rdk := '';
  s := FormatDateTime('yyyy.mm.dd',date-1);
  frmUstv.sKSql := sSql;
  frmUstv.edtDatTol.Text := s;
  frmUstv.sdsKeres.DataSet.CommandText := sSql + Quotedstr(s) + ' ' +  dtmTarka.TenyeszetWhereE;
  frmUstv.sdsKeres.Open;
  frmUstv.Position := poDesktopCenter ;
  frmUstv.Caption := 'ITV-re került bikák megadása - a mai nap rögzített adatok';
  frmUstv.btnCancel.Caption := 'Kilépés';
      if dtmTarka.UserKarb = '0' then
    begin
      frmUstv.btnUj.Enabled := false;
      frmUstv.btnModosit.Enabled := false;
      frmUstv.btnTorol.Enabled := false;
    end;
  frmUstv.ShowModal;
  frmUstv.sdsKeres.Close;
end;


procedure KSTVBrow;
const
  sSql = ' SELECT WKSTV.ID, WKSTV.EGYED_ID, E.ENAR, E.TENYESZET, E.NEV, ' +
         ' E.SZULDAT, WKSTV.DATUM, WKSTV.MOD_KOD, WKstv.MOD_DAT ' +
         ' FROM WKSTV ' +
         ' JOIN EGYEDEK E ON WKSTV.EGYED_ID = E.ID   ' +
         ' WHERE WKSTV.MOD_DAT > ';
//             ' where  Datediff(day, tt.MOD_DATUM, getdate())<1';
var
  s : string;
begin
  frmUstv.azonosito := '';
  frmUstv.azonosito_id := '';
  frmUstv.Tipus := 'KSTV';
  With frmUstv do begin
    sdsKeres.Connection := dtmTarka.cnTarka;
    lblS2.Visible := true;
    lblS1.Visible := true;
    edtDatTol.Visible := true;
    btnLeker.Visible := true;
    lblDatum.Caption := 'KSTV-re kerülés dátuma:';
  end;
  frmUstv.rdk := '';
  s := FormatDateTime('yyyy.mm.dd',date-1);
  frmUstv.sKSql := sSql;
  frmUstv.edtDatTol.Text := s;
  frmUstv.sdsKeres.DataSet.CommandText := sSql + Quotedstr(s) + ' ' +  dtmTarka.TenyeszetWhereE;
  frmUstv.sdsKeres.Open;
  frmUstv.Position := poDesktopCenter ;
  frmUstv.Caption := 'KSTV-re került borjak - a mai nap rögzített adatok';
  frmUstv.btnCancel.Caption := 'Kilépés';
  frmUstv.ShowModal;
  frmUstv.sdsKeres.Close;
end;






procedure TfrmUstv.btnUjClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if (sdsKeres.RecordCount>0) and (rdk='') then begin
    rdk := sdsKeresDATUM.AsString;
  end;
  sdsKeres.Append;
  if Self.azonosito > EmptyStr then begin
    sdsKeresEGYED_ID.AsString := self.azonosito_id;
    sdsKeresENAR.AsString := self.azonosito;
  end;
  IF dtmTarka.TenyeszetWhereE <> EmptyStr then
    sdsKeresTENYESZET.AsString := dtmTarka.sdsTenyeszetTKOD.AsString;
  if rdk > EmptyStr then begin
    sdsKeresDATUM.AsString := rdk;
  end;
  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  if Self.azonosito = EmptyStr then begin
    Self.edtAzonosito.Enabled := true;
    if Self.edtAzonosito.CanFocus then Self.edtAzonosito.SetFocus;
  end;
  if edtDatTol.Text = EmptyStr then
    if edtDatTol.CanFocus then edtDatTol.SetFocus;end;

procedure TfrmUstv.KarbGombBeallit(mire: Boolean);
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



function TfrmUstv.Mezok_kitoltve: Boolean;
begin
  result := false;
  if (edtAzonosito.Text = EmptyStr) then begin
    dtmTarka.MsgDlg('Az egyed azonosítójának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtAzonosito.SetFocus;
    exit;
  end;
  if edtDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('Az ÜSTV-re kerülés dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtDatum.SetFocus;
    exit;
  end;

  Result := true;
end;



procedure TfrmUstv.btnModositClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  if sdsKeres.RecordCount=0 then exit;
  sdsKeres.Edit;
  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  Self.edtAzonosito.Enabled := false;
  if edtDatum.CanFocus then edtDatum.SetFocus;
end;

procedure TfrmUstv.actOKExecute(Sender: TObject);
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
  rdk := sdsKeresDATUM.AsString;

  sdsKeresMOD_DAT.AsDateTime := now();
  sdsKeresMOD_KOD.AsString := dtmTarka.UserKod;
  ed := sdsKeresDATUM.AsString;
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


procedure TfrmUstv.actMegsemExecute(Sender: TObject);
begin
  if sdsKeres.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsKeres.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;


procedure TfrmUstv.edtAzonositoExit(Sender: TObject);
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
          sdsKeresNEV.AsString := vissza.itemsByName('NEV').values[0];
          sdsKeresSZULDAT.AsString := vissza.itemsByName('SZULDAT').values[0];
          sdsKeresTENYESZET.AsString := vissza.itemsByName('TENYESZET').values[0];
        finally
          vissza.Free;
        end;
      end;
  end;
end;



procedure TfrmUstv.btnLekerClick(Sender: TObject);
begin
    if sdsKeres.Active then
      sdsKeres.Close;

    sdsKeres.DataSet.CommandText := sKSql + Quotedstr(edtDatTol.text) + dtmTarka.TenyeszetWhereE;
    sdsKeres.Open;
end;



procedure TfrmUstv.btnNyomtatClick(Sender: TObject);
var
  sazon : string;
  aa : string;
begin
  aa := dtmTarka.sATKFT_KOD;
  if frmUstv.Tipus = 'USTV' then begin
    if frxRepLista.LoadFromFile('USTVLista.fr3') then begin
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
         if sazon <> emptyStr then
           sdsKeres.Locate('ID',sazon,[]);
         sdsKeres.EnableControls;
       end;
    End;
  end;

  if frmUstv.Tipus = 'ITV' then begin
    if frxRepLista.LoadFromFile('ITVLista.fr3') then begin
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
         if sazon > '' then
           sdsKeres.Locate('ID',sazon,[]);
         sdsKeres.EnableControls;
       end;
    End;
  end;

  if frmUstv.Tipus = 'KSTV' then begin
    if frxRepLista.LoadFromFile('KSTVLista.fr3') then begin
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
         if sazon > '' then
           sdsKeres.Locate('ID',sazon,[]);
         sdsKeres.EnableControls;
       end;
    End;
  end;

end;

procedure TfrmUstv.btnTorolClick(Sender: TObject);
begin
  inherited;
  if not dtmTarka.LicenceDatEll then exit;

end;

end.
