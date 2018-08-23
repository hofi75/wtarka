unit QfrmMarhaLev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid,
  uTALPanel, StdCtrls, Buttons, ExtCtrls, wwcheckbox, uTALDBCheckBox,
  DBCtrls, uTALDBLookupComboBox, Mask, uValidedit, uDBValidedit,StrUtils,
  uTALDBEdit, uTALLabel, DB, DBClient, uTALSimpleDataSet, uTALEdit, UTAlParams,
  frxClass, frxDBSet, ADODB, uTalQuery, Wwkeycb, uTALSearch, uTALMaskEdit;

type
  TfrmMarhaLev = class(TfrmModOs)
    TalLabel3: TTalLabel;
    TalLabel4: TTalLabel;
    TalLabel5: TTalLabel;
    TalLabel6: TTalLabel;
    TalLabel7: TTalLabel;
    TalLabel8: TTalLabel;
    TalLabel10: TTalLabel;
    TalLabel11: TTalLabel;
    TalLabel14: TTalLabel;
    TalLabel15: TTalLabel;
    TalLabel16: TTalLabel;
    TalLabel18: TTalLabel;
    edtAzonosito: TTalDBEdit;
    TalDBEdit2: TTalDBEdit;
    TalDBEdit3: TTalDBEdit;
    TalDBEdit4: TTalDBEdit;
    TalDBEdit5: TTalDBEdit;
    TalDBEdit6: TTalDBEdit;
    TalDBEdit7: TTalDBEdit;
    TalDBEdit10: TTalDBEdit;
    TalDBEdit11: TTalDBEdit;
    TalDBEdit8: TTalDBEdit;
    sdsMarhaLev: TTalSimpleDataSet;
    sdsMarhaLevID: TBCDField;
    sdsMarhaLevIVAR: TWidestringField;
    sdsMarhaLevIVARNEV: TWidestringField;
    sdsMarhaLevELLES_LEF: TWidestringField;
    sdsMarhaLevMOD_DAT: TDateTimeField;
    sdsMarhaLevMOD_KOD: TWidestringField;
    sdsMarhaLevSZINNEV: TWidestringField;
    sdsMarhaLevELLLEFNEV: TWidestringField;
    dtsMarhaLev: TDataSource;
    TalLabel1: TTalLabel;
    TalLabel13: TTalLabel;
    edtMarhaLevSzam: TTalDBEdit;
    TalLabel17: TTalLabel;
    edtTenyeszetKod: TTalEdit;
    TalLabel9: TTalLabel;
    TalDBEdit1: TTalDBEdit;
    TalDBEdit9: TTalDBEdit;
    sdsMarhaLevNEV: TWidestringField;
    qryLista: TTalQuery;
    frxDBLista: TfrxDBDataset;
    pnlKeres: TTalPanel;
    lblS2: TTalLabel;
    lblS1: TTalLabel;
    TalLabel12: TTalLabel;
    btnLeker: TBitBtn;
    TalSearch1: TTalSearch;
    edtDatTol: TTalEdit;
    sdsMarhaLevENAR: TWidestringField;
    sdsMarhaLevFULSZAM: TWidestringField;
    sdsMarhaLevSZULDAT: TDateTimeField;
    sdsMarhaLevSZIN: TWidestringField;
    sdsMarhaLevALLDAT: TDateTimeField;
    sdsMarhaLevANYA_ENAR: TWidestringField;
    sdsMarhaLevMLEVEL1: TWidestringField;
    sdsMarhaLevMLEVEL2: TWidestringField;
    TalDBEdit12: TTalDBEdit;
    sdsMarhaLevBORJU_SULY: TBCDField;
    qryListaID: TBCDField;
    qryListaENAR: TWidestringField;
    qryListaFULSZAM: TWidestringField;
    qryListaSZULDAT: TDateTimeField;
    qryListaIVAR: TWidestringField;
    qryListaIVARNEV: TWidestringField;
    qryListaSZIN: TWidestringField;
    qryListaSZINNEV: TWidestringField;
    qryListaNEV: TWidestringField;
    qryListaALLDAT: TDateTimeField;
    qryListaANYA_ENAR: TWidestringField;
    qryListaELLES_LEF: TWidestringField;
    qryListaELLLEFNEV: TWidestringField;
    qryListaBORJU_SULY: TBCDField;
    qryListaMOD_DAT: TDateTimeField;
    qryListaMOD_KOD: TWidestringField;
    qryListaMLEVEL1: TWidestringField;
    qryListaMLEVEL2: TWidestringField;
    frxRepLista: TfrxReport;
    sdsMarhaLevFAJTANEV: TWideStringField;
    qryListaFAJTANEV: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure btnUjClick(Sender: TObject);
    procedure edtAzonositoExit(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure sdsMarhaLevAZONOSITOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure edtMarhaLevSzamExit(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
    EredetiSql : string;
    rd : string;
    ssz : integer;
    procedure KarbGombBeallit(mire:Boolean);
  public
    { Public declarations }
    Procedure OpenMarhaLevKarb;
  end;

var
  frmMarhaLev: TfrmMarhaLev;

implementation

uses udtmTarka;

{$R *.dfm}

{ TfrmMarhaLev }


procedure TfrmMarhaLev.OpenMarhaLevKarb;
var
  s : string;
begin
  Self.EredetiSql := Self.sdsMarhaLev.DataSet.CommandText;
  Self.WindowState := wsNormal;
  Self.Position := poDesktopCenter ;
  Self.edtTenyeszetKod.Text := dtmTarka.sTenyeszetKod;

  //  KarbGombBeallit(true);
  try
    if Self.sdsMarhaLev.Active
      then Self.sdsMarhaLev.Close;

    s := FormatDateTime('yyyy.mm.dd',date-1);
    Self.edtDatTol.Text := s;
    sdsMarhaLev.DataSet.CommandText := Self.EredetiSql + ' and E.MOD_DAT > ' +  Quotedstr(s);

    Self.sdsMarhaLev.Open;
    dtmTarka.qryInfFajta.Open;

    if dtmTarka.UserKarb = '0' then
    begin
      self.btnUj.Enabled := false;
      self.btnModosit.Enabled := false;
      self.btnTorol.Enabled := false;
    end;
   if Self.ShowModal = mrOK then begin

   end;
   finally
     if self.sdsMarhaLev.Active then self.sdsMarhaLev.Close;
     if dtmTarka.qryInfFajta.Active then dtmTarka.qryInfFajta.Close;
     Self.sdsMarhaLev.DataSet.CommandText := Self.EredetiSql;
   end;

end;

procedure TfrmMarhaLev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;

end;

procedure TfrmMarhaLev.actOKExecute(Sender: TObject);
var
  SQL : string;
begin
  if Self.sdsMarhaLev.State = dsBrowse then begin
//    ModalResult := mrOK;
    exit;
  end;

  sdsMarhaLevMOD_DAT.AsDateTime := now();
  sdsMarhaLevMOD_KOD.AsString := dtmTarka.UserKod;
  sdsMarhaLev.Post;

  dtmTarka.cnTarka.BeginTrans;
  try
    SQL := 'update egyedek set MLEVEL1 = ' + quotedstr(sdsMarhaLevMLEVEL1.AsString) ;
    if sdsMarhaLevMLEVEL2.AsString > EmptyStr then
      SQL := SQL + ',  MLEVEL2 = ' + quotedstr(sdsMarhaLevMLEVEL2.AsString);

    SQL := SQL + ', MOD_DAT = '+ Quotedstr(FormatDateTime('yyyy.mm.dd',now()));
    SQL := SQL + ', MOD_KOD = '+ quotedstr(dtmTarka.UserKod) +
            ' where ENAR = ' + quotedstr(sdsMarhaLevENAR.asstring);
    dtmTarka.cnTarka.Execute(SQL);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;
  Self.grdVal.Enabled := true;
  Self.KarbGombBeallit(true);
end;



procedure TfrmMarhaLev.KarbGombBeallit(mire: Boolean);
begin
  Self.btnUj.Enabled := mire;
  Self.btnModosit.Enabled := mire;
  Self.btnTorol.Visible := false;
  if mire = false then
    Self.btnCancel.Caption := 'Mégsem'
  else
    Self.btnCancel.Caption := 'Kilépés';
  if mire then
    if Self.btnUj.CanFocus then Self.btnUj.SetFocus;
end;



procedure TfrmMarhaLev.actMegsemExecute(Sender: TObject);
begin
  if sdsMarhaLev.State = dsBrowse then
    ModalResult := mrCancel
  else
    sdsMarhaLev.Cancel;
  Self.grdVal.Enabled := true;
  Self.pnlMod.Enabled := false;
  Self.KarbGombBeallit(true);
end;


procedure TfrmMarhaLev.btnUjClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  rd := '';
  ssz := 0;
  if Self.sdsMarhaLev.RecordCount >0 then begin
//    rd := sdsMarhaLevMARHALEV_KIALL_DAT.AsString;
//    ssz := sdsMarhaLevMARHALEV_KIALL_SSZ.AsInteger;
  end;
  sdsMarhaLev.Append;
  if rd>EmptyStr then begin
//    Self.sdsMarhaLevMARHALEV_KIALL_DAT.AsString := rd;
//    Self.sdsMarhaLevMARHALEV_KIALL_SSZ.AsInteger := ssz;
  end;
  Self.pnlMod.Enabled := true;
  KarbGombBeallit(false);
  Self.edtAzonosito.Enabled := true;
  if Self.edtAzonosito.CanFocus then Self.edtAzonosito.SetFocus;
end;



procedure TfrmMarhaLev.edtAzonositoExit(Sender: TObject);
var
  sAzon : string;
  sAzonId : string;
  Vissza : TTAlParamList;
begin
  if edtAzonosito.Enabled and dtmTarka.megsemNyomas(ActiveControl) then exit;

  if edtAzonosito.Text > EmptyStr then begin
    sAzon := edtAzonosito.Text;
    if not dtmTarka.VaneIlyenEgyed(edtAzonosito.Text, sAzon,sAzonId,false,false,true) then begin
      sAzon := '';
      sAzonId := '';
      dtmTarka.MsgDlg('Nincs ilyen egyed!',mterror,[mbOK],0 );
      edtAzonosito.SelectAll;
      if edtAzonosito.CanFocus then
        edtAzonosito.SetFocus;
    end else begin
      Vissza := TTalParamList.Create;
      try
        dtmTarka.EgyedInfo(sAzonId,vissza);
        if trim(Vissza.ItemsByName('MLEVEL1').values[0]) <> EmptyStr then begin
          dtmTarka.MsgDlg('Már rögzített az egyedhez marhalevélszámot!',mterror,[mbOK],0 );
        end;
        Self.sdsMarhaLevENAR.AsString := Vissza.ItemsByName('ENAR').values[0];
        Self.sdsMarhaLevIVARNEV.AsString := Vissza.ItemsByName('IVAR').values[0] + ' - ' +
                                                   Vissza.ItemsByName('IVAR_NEV').values[0];
        Self.sdsMarhaLevSZINNEV.AsString :=  Vissza.ItemsByName('SZIN').values[0] + ' - ' +
                                                   Vissza.ItemsByName('SZIN_NEV').values[0];
        Self.sdsMarhaLevFAJTANEV.AsString :=
                                           Vissza.ItemsByName('FAJTA_NEV').values[0];
        Self.sdsMarhaLevFULSZAM.AsString :=  Vissza.ItemsByName('FULSZAM').values[0];
        Self.sdsMarhaLevALLDAT.AsString :=  Vissza.ItemsByName('ALLDAT').values[0];
        Self.sdsMarhaLevSZULDAT.AsString :=  Vissza.ItemsByName('SZULDAT').values[0];
        Self.sdsMarhaLevANYA_ENAR.AsString :=  Vissza.ItemsByName('ANYA_ENAR').values[0];
        Self.sdsMarhaLevELLES_LEF.AsString :=  Vissza.ItemsByName('ELLLEFNEV').values[0];
        Self.sdsMarhaLevBORJU_SULY.AsString :=  Vissza.ItemsByName('BORJU_SULY').values[0];
 //       Self.sdsMarhaLevENAR_BE_DATUM.AsString :=  Vissza.ItemsByName('ENAR_BE_DATUM').values[0];
        Self.sdsMarhaLevNEV.AsString :=  Vissza.ItemsByName('NEV').values[0];
        Self.sdsMarhaLevMLEVEL1.AsString :=  Vissza.ItemsByName('MLEVEL1').values[0];
        Self.sdsMarhaLevMLEVEL2.AsString :=  Vissza.ItemsByName('MLEVEL2').values[0];
      finally
        vissza.Free;
      end;
    end;
    if edtMarhaLevSzam.CanFocus then edtMarhaLevSzam.SetFocus;
  end;
end;



procedure TfrmMarhaLev.btnModositClick(Sender: TObject);
begin
  if not dtmTarka.LicenceDatEll then exit;
  inherited;
  if sdsMarhaLev.RecordCount = 0 then exit;
  sdsMarhaLev.Edit;
  Self.KarbGombBeallit(false);
  if Self.edtMarhaLevSzam.CanFocus then edtMarhaLevSzam.SetFocus;
end;

procedure TfrmMarhaLev.sdsMarhaLevazonositoGetText(Sender: TField;
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

procedure TfrmMarhaLev.edtMarhaLevSzamExit(Sender: TObject);
begin
  if edtMarhaLevSzam.Text = EmptyStr then exit;
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if dtmTarka.VaneMarhaLevszam(edtMarhaLevSzam.Text,sdsMarhaLevENAR.AsString) then begin
    dtmTarka.MsgDlg('Már van ilyen marhalevélszám kiadva!', mtInformation , [mbOK],0) ;
    edtMarhaLevSzam.SetFocus;
  end;
  inherited;
end;



procedure TfrmMarhaLev.btnNyomtatClick(Sender: TObject);
Var
  SQL : String;
begin
  SQl := Self.sdsMarhaLev.DataSet.CommandText;
  qryLista.SQL.Clear;
  qryLista.SQL.Add(SQL);
  qryLista.Open;
  if frxRepLista.LoadFromFile('MarhaLevRogzLista.fr3') then begin
     // paraméter átadás a lista fejhez
     frxRepLista.Variables.Clear;
     frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
     frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
     frxRepLista.Script.Variables['AT_KFTKOD'] := dtmTarka.sATKFT_KOD;
     frxRepLista.ShowReport();
  End;
  qryLista.Close;
end;



procedure TfrmMarhaLev.btnLekerClick(Sender: TObject);
begin
    if sdsMarhaLev.Active then
      sdsMarhaLev.Close;

    sdsMarhaLev.DataSet.CommandText := EredetiSql + ' and E.MOD_DAT > ' + Quotedstr(edtDatTol.text);
    sdsMarhaLev.Open;
end;

procedure TfrmMarhaLev.btnTorolClick(Sender: TObject);
var
  SQL : string;
begin
  if not dtmTarka.LicenceDatEll then exit;
  if sdsMarhaLev.RecordCount = 0 then exit;
  if dtmTarka.MsgDlg('Biztos törli a marhalevél adatokat?', mtConfirmation , [mbYes, mbNo],0) <> mrYes then exit;

  if Self.sdsMarhaLev.State = dsBrowse then begin
    sdsMarhaLev.Edit;
  end;

  sdsMarhaLevMOD_DAT.AsDateTime := now();
  sdsMarhaLevMOD_KOD.AsString := dtmTarka.UserKod;
  sdsMarhaLev.Post;

  dtmTarka.cnTarka.BeginTrans;
  try
    SQL := 'update egyedek set MLEVEL1 = NULL,';
    SQL := SQL + ' MLEVEL2 = NULL, ';
    SQL := SQL + ', MOD_DAT = '+ Quotedstr(FormatDateTime('yyyy.mm.dd',now()));
    SQL := SQL + ', MOD_KOD = '+ quotedstr(dtmTarka.UserKod) +
            ' where ENAR = ' + quotedstr(sdsMarhaLevENAR.asstring);
    dtmTarka.cnTarka.Execute(SQL);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;
  sdsMarhaLev.Close;
  sdsMarhaLev.Open;
end;

end.
