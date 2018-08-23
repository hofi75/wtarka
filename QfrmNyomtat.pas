unit QfrmNyomtat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, DBClient, uTALSimpleDataSet, strUtils,
  ADODB, uTalQuery, StdCtrls, Mask, uValidedit, uTALEdit, uTALLabel,
  Buttons, uTALBitBtn, ExtCtrls, uTALRadioGroup, uTALRadioButton,DateUtils,
  uTALGroupBox, uTALCheckBox, uTALButton, uTALPanel, uTALComboBox;

type
  TfrmNyomtat = class(TForm)
    sdsEllu: TTalSimpleDataSet;
    frxDBElluszo: TfrxDBDataset;
    sdsEllt: TTalSimpleDataSet;
    frxDbEllteh: TfrxDBDataset;
    sdsEllO: TTalSimpleDataSet;
    frxDBEllmind: TfrxDBDataset;
    sdsElltSzarazDatuma: TDateTimeField;
    sdsElltVarhEllDatuma: TDateTimeField;
    sdsElluSzarazDatuma: TDateTimeField;
    sdsElluVarhEllDatuma: TDateTimeField;
    sdsEnarLeltar: TTalSimpleDataSet;
    frxDBEnarLeltar: TfrxDBDataset;
    Panel1: TPanel;
    BitBtn1: TTalBitBtn;
    BitBtn2: TTalBitBtn;
    Panel2: TPanel;
    TalLabel2: TTalLabel;
    edtDatum: TTalEdit;
    sdsFolyLak: TTalSimpleDataSet;
    frxDBFolyLak: TfrxDBDataset;
    sdsFolyLakAZONOSITO: TStringField;
    sdsFolyLakPSION_AZONOSITO: TStringField;
    sdsFolyLakELLES_SSZ: TIntegerField;
    sdsFolyLakELLES_DATUM: TDateTimeField;
    sdsFolyLakFEJES_DATUM: TDateTimeField;
    sdsFolyLakALLAPOT_KOD: TStringField;
    sdsFolyLakFEJESI_ALLAPOT_NEV: TStringField;
    sdsFolyLakNAPI_TEJ: TBCDField;
    sdsFolyLakSZOMAT: TIntegerField;
    sdsFolyLakLAKT_NAP: TIntegerField;
    rg1: TTalRadioGroup;
    rgAzon: TTalGroupBox;
    rbPsAzon: TTalRadioButton;
    rbEnar: TTalRadioButton;
    sdsSzaraz: TTalSimpleDataSet;
    frxDBSzaraz: TfrxDBDataset;
    sdsSzarazAZONOSITO: TStringField;
    sdsSzarazPSION_AZONOSITO: TStringField;
    sdsSzarazVARHATO_ELLES: TDateTimeField;
    sdsSzarazTERM_DATUM: TDateTimeField;
    sdsSzarazTERM_SSZ: TIntegerField;
    sdsSzarazNAPI_TEJ: TBCDField;
    sdsSzarazSZOMAT: TIntegerField;
    sdsSzarazKOD: TStringField;
    sdsSzarazNEV: TStringField;
    rgNapok: TTalGroupBox;
    rb1: TTalRadioButton;
    rb2: TTalRadioButton;
    sdsInvol: TTalSimpleDataSet;
    frxDBInvol: TfrxDBDataset;
    sdsInvolAZONOSITO: TStringField;
    sdsInvolPSION_AZONOSITO: TStringField;
    sdsInvolELLES_DATUM: TDateTimeField;
    sdsInvolELLES_OTA_NAP: TIntegerField;
    sdsInvolNAPI_TEJ: TBCDField;
    sdsInvolSZOMAT: TIntegerField;
    sdsInvolKOD: TStringField;
    sdsInvolNEV: TStringField;
    rb3: TTalRadioButton;
    sdsKez: TTalSimpleDataSet;
    frxDBKez: TfrxDBDataset;
    sdsKezAZONOSITO: TStringField;
    sdsKezPSION_AZONOSITO: TStringField;
    sdsKezELLES_DATUM: TDateTimeField;
    sdsKezTERM_DATUM: TDateTimeField;
    sdsKezKEZ_DATUM: TDateTimeField;
    sdsKezKEZNEV: TStringField;
    sdsKezKOD: TStringField;
    sdsKezNEV: TStringField;
    pnlBeallit: TTalPanel;
    Mentes: TTalButton;
    btnBeallit: TTalBitBtn;
    cbAutFutas: TTalCheckBox;
    lblTcsop: TTalLabel;
    lucTCsop: TTalComboBox;
    sdsFolyLakNAPIZSIRSZ: TFloatField;
    sdsFolyLakNAPIFEHSZ: TFloatField;
    sdsFolyLakNAPIZSIRKG: TFloatField;
    sdsFolyLakNAPIFEHKG: TFloatField;
    cbSelejtNemKell: TTalCheckBox;
    sdsElltDATUM: TDateTimeField;
    sdsElluDATUM: TDateTimeField;
    sdsElltENAR: TWideStringField;
    sdsElluENAR: TWideStringField;
    sdsEllOVARHELL: TBCDField;
    sdsEllOUSZO_ELLES: TBCDField;
    sdsEllOTEHEN_ELLES: TBCDField;
    TalLabel1: TTalLabel;
    edtTenyeszet: TTalEdit;
    edtTenyNev: TTalEdit;
    sdsEnarLeltarAZONOSITO: TWideStringField;
    sdsEnarLeltarMARHALEVELSZAM: TWideStringField;
    sdsEnarLeltarANYA_AZONOSITO: TWideStringField;
    sdsEnarLeltarSZUL_DATUM: TDateTimeField;
    sdsEnarLeltarIVAR: TWideStringField;
    sdsEnarLeltarIVARNEV: TWideStringField;
    sdsEnarLeltarFAJTA: TWideStringField;
    sdsEnarLeltarKIKERULES_DATUM: TDateTimeField;
    sdsEnarLeltarKIKERULES_DATUM_1: TDateTimeField;
    sdsEnarLeltarSZARM_TENY: TWideStringField;
    sdsEnarLeltarTENYBEERK_DATUM: TDateTimeField;
    sdsEnarLeltarMEGJEGYZES: TWideStringField;
    sdsEnarLeltarKIKHELY: TWideStringField;
    sdsEnarLeltarKIKHELYNEV: TWideStringField;
    sdsEnarLeltarELHAGYTA_DATUM: TDateTimeField;
    sdsEnarLeltarNEV: TWideStringField;
    sdsEnarLeltarENAR_KOD: TWideStringField;
    sdsEnarLeltarATKOD: TWideStringField;
    sdsEnarLeltarTELEP_NEV: TWideStringField;
    sdsEnarLeltarTKOD: TWideStringField;
    sdsEnarLeltarKOZTERULET: TWideStringField;
    sdsEllOVARHELLEV: TWideStringField;
    rptEnarLeltar: TfrxReport;
    rptEllNemKell: TfrxReport;
    procedure sdsElltAZONOSITOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure sdsElluAZONOSITOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure rg1Click(Sender: TObject);
    procedure btnBeallitClick(Sender: TObject);
    procedure MentesClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtTenyeszetExit(Sender: TObject);
    procedure sdsEnarLeltarAZONOSITOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);

  private
    { Private declarations }
    AlapSelect : string;
    ListaNev : string;
    csoportok : array of string;
    procedure AlapErtekekBeolvasasa;
  public
    { Public declarations }
  end;


procedure VarhEll;
procedure EnarLeltarLista;
procedure FolyLakt1mbf;
//procedure MaiNapSzaraz(AutFutas : Boolean);
procedure InvolLista(AutFutas : Boolean);
procedure KezValLista(AutFutas : Boolean);


implementation

uses udtmTarka;

{$R *.dfm}

procedure VarhEll;
var
  frmNyomtat: TfrmNyomtat;
  rptEll : TfrxReport;
begin
  frmNyomtat:= TfrmNyomtat.Create(Application);
  with frmNyomtat do begin;
    caption := 'Várható ellések listázása';
    sdsEllt.Connection := dtmTarka.cnTarka;
    sdsEllu.Connection := dtmTarka.cnTarka;
    sdsEllo.Connection := dtmTarka.cnTarka;
    ListaNev := 'VarhEll';
    sdsEllt.DataSet.CommandText :=
        StringReplace(frmNyomtat.sdsEllt.DataSet.CommandText,'111',intTostr(dtmTarka.iAtlVemhNapSzam - dtmTarka.iAtlSzarazNapSzam),[rfReplaceAll] );
    sdsEllt.DataSet.CommandText :=
        StringReplace(frmNyomtat.sdsEllt.DataSet.CommandText,'333',intTostr(dtmTarka.iAtlVemhNapSzam),[rfReplaceAll] );
    sdsEllt.DataSet.CommandText :=
        StringReplace(frmNyomtat.sdsEllt.DataSet.CommandText,'/*1*/',dtmTarka.TenyeszetWhereS,[rfReplaceAll] );
    sdsEllu.DataSet.CommandText :=
        StringReplace(frmNyomtat.sdsEllu.DataSet.CommandText,'111',intTostr(dtmTarka.iAtlVemhNapSzam - dtmTarka.iAtlSzarazNapSzam),[rfReplaceAll] );
    sdsEllu.DataSet.CommandText :=
        StringReplace(frmNyomtat.sdsEllu.DataSet.CommandText,'333',intTostr(dtmTarka.iAtlVemhNapSzam),[rfReplaceAll] );
    sdsEllu.DataSet.CommandText :=
        StringReplace(frmNyomtat.sdsEllu.DataSet.CommandText,'/*1*/',dtmTarka.TenyeszetWhereS,[rfReplaceAll] );
    sdsEllo.DataSet.CommandText :=
        StringReplace(frmNyomtat.sdsEllo.DataSet.CommandText,'111',intTostr(dtmTarka.iAtlVemhNapSzam - dtmTarka.iAtlSzarazNapSzam),[rfReplaceAll] );
    sdsEllo.DataSet.CommandText :=
        StringReplace(frmNyomtat.sdsEllo.DataSet.CommandText,'333',intTostr(dtmTarka.iAtlVemhNapSzam),[rfReplaceAll] );
    sdsEllo.DataSet.CommandText :=
        StringReplace(frmNyomtat.sdsEllo.DataSet.CommandText,'/*1*/',dtmTarka.TenyeszetWhereS,[rfReplaceAll] );
    rg1.Visible := false;
    rgAzon.Top := 73;
    rgAzon.Left := 120;
    rgAzon.Visible := false;
    edtDatum.Visible := false;
    TalLabel2.Visible := false;
    if dtmTarka.TenyeszetWhere <> EmptyStr then begin
       edtTenyeszet.Enabled := false;
       edtTenyeszet.Text := dtmTarka.TenyeszetTKOD;
       edtTenyeszetExit(NIL);
    end;   
  end;
  if frmNyomtat.ShowModal = mrOK then begin
    frmNyomtat.sdsEllt.Open;
    frmNyomtat.sdsEllu.Open;
    frmNyomtat.sdsEllo.Open;
    rptEll := TfrxReport.Create(Application);
    rptEll.LoadFromFile('VarhEll.fr3');// then begin
     // paraméter átadás a lista fejhez
    rptEll.Variables.Clear;
    rptEll.Script.Variables['ENAR_KOD']     := dtmTarka.sTenyeszetKod;
    rptEll.Script.Variables['TENYESZET_NEV']:= dtmTarka.sTenyeszetNev;
    rptEll.Script.Variables['AT_KFTKOD']    := dtmTarka.sATKFT_KOD;
//    if frmNyomtat.rbEnar.Checked then
      rptEll.Script.Variables['PSION']:= 'NEM';
//    else
//      rptEll.Script.Variables['PSION']:= 'IGEN';
    rptEll.ShowReport;
    FreeAndNil(rptEll);
  end;
  frmNyomtat.sdsEllt.Close;
  frmNyomtat.sdsEllu.Close;
  frmNyomtat.sdsEllo.Close;
  frmNyomtat.Free;
end;



procedure TfrmNyomtat.sdsElltAZONOSITOGetText(Sender: TField;
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

procedure TfrmNyomtat.sdsElluAZONOSITOGetText(Sender: TField;
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


procedure EnarLeltarLista;
var
  frmNyomtat : TfrmNyomtat;
  SzuroFeltetelek : string;
  OrderBy : string;
  PlusWhere : string;
begin
  frmNyomtat := TfrmNyomtat.Create(Application);
  frmNyomtat.ListaNev := 'EnarLeltarLista';
  frmNyomtat.sdsEnarLeltar.Connection := dtmTarka.cnTarka;
  frmNyomtat.Caption := 'ENAR leltár lista nyomtatása ';
  frmNyomtat.AlapSelect := frmNyomtat.sdsEnarLeltar.DataSet.CommandText;
  frmNyomtat.edtDatum.Text := '';
  OrderBy := ' ORDER BY AZONOSITO ';
  frmNyomtat.rg1.Visible := true;
  frmNyomtat.edtDatum.Enabled := false;
  frmNyomtat.edtTenyeszet.Text := dtmTarka.TenyeszetTKOD;
  frmNyomtat.edtTenyNev.Text := dtmTarka.TenyeszetTNEV;
  PlusWhere := '';

  if frmNyomtat.ShowModal = mrOK then begin
    SzuroFeltetelek := '';
    if frmNyomtat.rptEnarLeltar.LoadFromFile('EnarLeltarLista.fr3') then begin
       // paraméter átadás a lista fejhez
      if frmNyomtat.rg1.ItemIndex = 0 then begin
        plusWhere :=  PlusWhere + ' AND (E.KIKDAT IS NULL) ';
        SzuroFeltetelek := 'Csak élõ egyedek ' + #13;
      end else begin
        if frmNyomtat.rg1.ItemIndex = 1 then begin
          plusWhere := PlusWhere + ' and (NOT E.KIKDAT IS NULL) ';
          SzuroFeltetelek := 'Csak kiesett egyedek ' + #13;
          if LeftStr(frmNyomtat.edtDatum.Text,3) <> '   ' then begin
            SzuroFeltetelek := SzuroFeltetelek + 'Kiesés dátuma:' + frmNyomtat.edtDatum.Text + '-tól';
            frmNyomtat.sdsEnarLeltar.Connection := dtmTarka.cnTarka;
            PlusWhere := PlusWhere +
               ' AND (E.KIKDAT >= ' +
                quotedStr(FormatDateTime('YYYY.MM.DD',StrToDate(frmNyomtat.edtDatum.text)))+ ')' ;
          end;
        end;

        if frmNyomtat.rg1.ItemIndex = 2 then begin
          SzuroFeltetelek := 'Minden egyed ' + #13;
          if LeftStr(frmNyomtat.edtDatum.Text,3) <> '   ' then begin
            SzuroFeltetelek :=  SzuroFeltetelek + 'Kiesés dátuma:' + frmNyomtat.edtDatum.Text + '-tól';
            frmNyomtat.sdsEnarLeltar.Connection := dtmTarka.cnTarka;
            PlusWhere := PlusWhere +
               ' and (E.KIKDAT IS NULL) OR (E.KIKDAT>=' +
                quotedStr(FormatDateTime('YYYY.MM.DD',StrToDate(frmNyomtat.edtDatum.text)))+ ')' ;
          end else begin
            plusWhere := ' and (E.KIKDAT IS NULL) OR (NOT E.KIKDAT IS NULL)';
          end;
        end;
      end;
      Pluswhere := PlusWhere + dtmTarka.TenyeszetWhereE;

      if frmNyomtat.sdsEnarLeltar.Active then frmNyomtat.sdsEnarLeltar.Close;
      frmNyomtat.sdsEnarLeltar.DataSet.CommandText := frmNyomtat.AlapSelect + PlusWhere + orderBy;

      frmNyomtat.sdsEnarLeltar.Open;
      frmNyomtat.rptEnarLeltar.Variables.Clear;
      frmNyomtat.rptEnarLeltar.Script.Variables['ENAR_KOD']:=dtmTarka.sTenyeszetKod;
      frmNyomtat.rptEnarLeltar.Script.Variables['TENYESZET_NEV']:=dtmTarka.sTenyeszetNev;
      frmNyomtat.rptEnarLeltar.Script.Variables['AT_KFTKOD']:=dtmTarka.sATKFT_KOD;
      frmNyomtat.rptEnarLeltar.Script.Variables['SzuroFeltetelek']:= SzuroFeltetelek;
      frmNyomtat.rptEnarLeltar.ShowReport();
    End;
    frmNyomtat.sdsEnarLeltar.Close;
  end;
  frmNyomtat.Release;
end;


procedure FolyLakt1mbf;
var
  frmNyomtat: TfrmNyomtat;
  rptEll : TfrxReport;
begin
  frmNyomtat := TfrmNyomtat.Create(Application);
  frmNyomtat.Caption := 'ENAR leltár lista nyomtatása ';
  frmNyomtat.ListaNev := 'FolyLakt1mbf';
  frmNyomtat.AlapErtekekBeolvasasa;
  try
    frmNyomtat.sdsFolyLak.Connection := dtmTarka.cnTarka;
    frmNyomtat.sdsFolyLak.Open;
    rptEll := TfrxReport.Create(Application);
    if rptEll.LoadFromFile('FolyLakt1mb.fr3') then begin
       // paraméter átadás a lista fejhez
       rptEll.Variables.Clear;
       rptEll.Script.Variables['ENAR_KOD']     := dtmTarka.sTenyeszetKod;
       rptEll.Script.Variables['TENYESZET_NEV']:= dtmTarka.sTenyeszetNev;
       rptEll.Script.Variables['AT_KFTKOD']    := dtmTarka.sATKFT_KOD;
       rptEll.ShowReport;
       frmNyomtat.sdsFolyLak.Close;
    End;
  finally
    FreeAndNil(rptEll);
    frmNyomtat.Free;
  end;
end;


(*procedure MaiNapSzaraz(AutFutas : Boolean);
var
  frmNyomtat: TfrmNyomtat;
  rptEll : TfrxReport;
  bKellLista : Boolean;
  i : integer;
  SQL : string;
  tq : Ttalquery;
  tcs : string;
begin
  frmNyomtat := TfrmNyomtat.Create(Application);
  frmNyomtat.Caption := 'Adott napon szárazra állítandó tehenek listája';
  frmNyomtat.ListaNev := 'MaiNapSzaraz';
  frmNyomtat.btnBeallit.Visible := true;
  try
    frmNyomtat.sdsSzaraz.Connection := dtmTarka.cnTarka;
    frmNyomtat.TalLabel2.Visible := true;
    frmNyomtat.edtDatum.Visible := true;
    frmNyomtat.edtDatum.Value := today();
    frmNyomtat.rgAzon.Visible := true;
    frmNyomtat.lblTcsop.Visible := true;
    frmNyomtat.lucTCsop.Visible := true;
    frmNyomtat.cbSelejtNemKell.Visible := true;
    frmNyomtat.AlapErtekekBeolvasasa;
    i := 0;
    dtmTarka.sdsTermCsopVal.Open;
    SetLength(frmNyomtat.csoportok ,dtmTarka.sdsTermCsopVal.RecordCount+1);
    dtmTarka.sdsTermCsopVal.First;
    while not dtmTarka.sdsTermCsopVal.Eof do begin
      frmNyomtat.lucTCsop.Items.Add( dtmTarka.sdsTermCsopValNEV.AsString);
      frmNyomtat.csoportok[i] := dtmTarka.sdsTermCsopValKOD.AsString;
      i := i+1;
      dtmTarka.sdsTermCsopVal.Next;
    end;

    SQL := 'SELECT SZARAZ_TCS FROM PARAM ';
    tq := TTalQuery.Create(frmNyomtat);
    tq.Connection := dtmTarka.cnTarka;
    tq.SQL.Add(SQL);
    tq.Open;
    tcs := tq.FieldByName('SZARAZ_TCS').AsString;
    tq.Close;
    tq.free;
    if tcs <> EmptyStr then
      for i := 0 to length(frmNyomtat.csoportok)-1 do begin
        if frmNyomtat.csoportok[i] = tcs then begin
          frmNyomtat.lucTCsop.ItemIndex := i;
          break;
        end;
      end;

    if not AutFutas then begin
      if frmNyomtat.ShowModal = mrOK then
        bKellLista := true
      else
        bKellLista := false;
    end else begin
      bKellLista := true
    end;

    if bKellLista then begin
      if frmNyomtat.cbSelejtNemKell.Checked then
         frmNyomtat.sdsSzaraz.DataSet.CommandText := frmNyomtat.sdsSzaraz.DataSet.CommandText +
         ' AND ( E.SELEJT_JEL_DATUM is NULL) ';

      if frmNyomtat.rbEnar.Checked then
        frmNyomtat.sdsSzaraz.DataSet.CommandText := frmNyomtat.sdsSzaraz.DataSet.CommandText +
            ' ORDER BY E.TERMELESI_CSOPORT_KOD, E.AZONOSITO'
      else
        frmNyomtat.sdsSzaraz.DataSet.CommandText := frmNyomtat.sdsSzaraz.DataSet.CommandText +
            ' ORDER BY E.TERMELESI_CSOPORT_KOD, CAST(E.PSION_AZONOSITO AS NUMERIC)';

      frmNyomtat.sdsSzaraz.DataSet.Parameters.ParamByName('DATUM').Value := frmNyomtat.edtDatum.Value;
      frmNyomtat.sdsSzaraz.Open;
      rptEll := TfrxReport.Create(Application);
      if rptEll.LoadFromFile('SzarazLista.fr3') then begin
         // paraméter átadás a lista fejhez
         rptEll.Variables.Clear;
         rptEll.Script.Variables['ENAR_KOD']     := dtmTarka.sTenyeszetKod;
         rptEll.Script.Variables['TENYESZET_NEV']:= dtmTarka.sTenyeszetNev;
         rptEll.Script.Variables['AT_KFTKOD']    := dtmTarka.sATKFT_KOD;
         rptEll.Script.Variables['DATUM']        := frmNyomtat.edtDatum.Text;
         if frmNyomtat.rbEnar.Checked then
           rptEll.Script.Variables['PSION']:= 'NEM'
         else
           rptEll.Script.Variables['PSION']:= 'IGEN';
         rptEll.ShowReport;
         frmNyomtat.sdsSzaraz.Close;
      End;
    end;
  finally
    FreeAndNil(rptEll);
    frmNyomtat.Free;
  end;
end;  *)





procedure InvolLista(AutFutas : Boolean);
var
  frmNyomtat: TfrmNyomtat;
  rptEll : TfrxReport;
  bKellLista : Boolean;
begin
  frmNyomtat := TfrmNyomtat.Create(Application);
  frmNyomtat.Caption := 'Adott napon Involuciós vizsgálatra kiválogatandó tehenek';
  frmNyomtat.ListaNev := 'InvolLista';
  frmNyomtat.btnBeallit.Visible := true;

  try
    frmNyomtat.sdsInvol.Connection := dtmTarka.cnTarka;
    frmNyomtat.TalLabel2.Visible := true;
    frmNyomtat.edtDatum.Visible := true;
    frmNyomtat.edtDatum.Value := today();
    frmNyomtat.rgAzon.Visible := true;
    frmNyomtat.rgNapok.Visible := true;
    frmNyomtat.cbSelejtNemKell.Visible := true;
    frmNyomtat.AlapErtekekBeolvasasa;

    if not AutFutas then begin
      if frmNyomtat.ShowModal = mrOK then
        bKellLista := true
      else
        bKellLista := false;
    end else begin
      bKellLista := true;
    end;

    if bKellLista then begin
      if frmNyomtat.cbSelejtNemKell.Checked then
         frmNyomtat.sdsInvol.DataSet.CommandText := frmNyomtat.sdsInvol.DataSet.CommandText +
         ' AND ( E.SELEJT_JEL_DATUM is NULL) ';

      if frmNyomtat.rbEnar.Checked then
        frmNyomtat.sdsInvol.DataSet.CommandText := frmNyomtat.sdsInvol.DataSet.CommandText +
            ' ORDER BY E.TERMELESI_CSOPORT_KOD, E.AZONOSITO'
      else
        frmNyomtat.sdsInvol.DataSet.CommandText := frmNyomtat.sdsInvol.DataSet.CommandText +
            ' ORDER BY E.TERMELESI_CSOPORT_KOD, CAST(E.PSION_AZONOSITO AS NUMERIC)';

      frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('DATUM').Value := frmNyomtat.edtDatum.Value;
      frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('DATUM1').Value := frmNyomtat.edtDatum.Value;
      if frmNyomtat.rb1.Checked then begin
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP1').Value := 37;
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP2').Value := 44;
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP3').Value := 37;
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP4').Value := 44;
      end else if frmNyomtat.rb2.checked then begin
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP1').Value := 57;
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP2').Value := 64;
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP3').Value := 57;
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP4').Value := 64;
      end else begin
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP1').Value := 37;
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP2').Value := 44;
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP3').Value := 57;
        frmNyomtat.sdsInvol.DataSet.Parameters.ParamByName('NAP4').Value := 64;
      end;
      frmNyomtat.sdsInvol.Open;
      rptEll := TfrxReport.Create(Application);
      if rptEll.LoadFromFile('InvolLista.fr3') then begin
         // paraméter átadás a lista fejhez
         rptEll.Variables.Clear;
         rptEll.Script.Variables['ENAR_KOD']     := dtmTarka.sTenyeszetKod;
         rptEll.Script.Variables['TENYESZET_NEV']:= dtmTarka.sTenyeszetNev;
         rptEll.Script.Variables['AT_KFTKOD']    := dtmTarka.sATKFT_KOD;
         rptEll.Script.Variables['DATUM']        := frmNyomtat.edtDatum.Text;
         if frmNyomtat.rbEnar.Checked then
           rptEll.Script.Variables['PSION']:= 'NEM'
         else
           rptEll.Script.Variables['PSION']:= 'IGEN';
         rptEll.ShowReport;
         frmNyomtat.sdsInvol.Close;
      End;
    end;
  finally
    FreeAndNil(rptEll);
    frmNyomtat.Free;
  end;
end;



procedure KezValLista(AutFutas : Boolean);
var
  frmNyomtat: TfrmNyomtat;
  rptEll : TfrxReport;
  bKellLista : Boolean;
begin
  frmNyomtat := TfrmNyomtat.Create(Application);
  frmNyomtat.Caption := 'Adott napon kezelésre válogatandó egyedek ';
  frmNyomtat.ListaNev := 'KezValLista';
  frmNyomtat.btnBeallit.Visible := true;

  try
    frmNyomtat.sdsKez.Connection := dtmTarka.cnTarka;
    frmNyomtat.TalLabel2.Visible := true;
    frmNyomtat.edtDatum.Visible := true;
    frmNyomtat.edtDatum.Value := today();
    frmNyomtat.rgAzon.Visible := true;
    frmNyomtat.rgNapok.Visible := true;
    frmNyomtat.rgNapok.Caption := 'Listázandó kezeléscsoport';
    frmNyomtat.rb1.Caption := 'Csak szapbiol kezelés';
    frmNyomtat.rb2.Caption := 'Minden kezelés';
    frmNyomtat.rb3.Visible := false;
    frmNyomtat.rb1.Checked := true;
    frmNyomtat.cbSelejtNemKell.Visible := true;

    frmNyomtat.AlapErtekekBeolvasasa;

    if not AutFutas then begin
      if frmNyomtat.ShowModal = mrOK then
        bKellLista := true
      else
        bKellLista := false;
    end else begin
      bKellLista := true;
    end;

    if bKellLista then begin
      if frmNyomtat.cbSelejtNemKell.Checked then
         frmNyomtat.sdsKez.DataSet.CommandText := frmNyomtat.sdsKez.DataSet.CommandText +
            ' AND ( E.SELEJT_JEL_DATUM is NULL) ';

      if frmNyomtat.rb1.Checked then
        frmNyomtat.sdsKez.DataSet.CommandText := frmNyomtat.sdsKez.DataSet.CommandText +
            ' AND KP.CSOPORT_KOD = ''2''';

      if frmNyomtat.rbEnar.Checked then
        frmNyomtat.sdsKez.DataSet.CommandText := frmNyomtat.sdsKez.DataSet.CommandText +
            ' ORDER BY K.KEZ_DATUM,E.TERMELESI_CSOPORT_KOD, E.AZONOSITO'
      else
        frmNyomtat.sdsKez.DataSet.CommandText := frmNyomtat.sdsKez.DataSet.CommandText +
            ' ORDER BY K.KEZ_DATUM,E.TERMELESI_CSOPORT_KOD, CAST(E.PSION_AZONOSITO AS NUMERIC)';

      frmNyomtat.sdsKez.DataSet.Parameters.ParamByName('DATUM1').Value := frmNyomtat.edtDatum.Value - 7;
      frmNyomtat.sdsKez.DataSet.Parameters.ParamByName('DATUM2').Value := frmNyomtat.edtDatum.Value;
      frmNyomtat.sdsKez.Open;
      rptEll := TfrxReport.Create(Application);
      if rptEll.LoadFromFile('KezValLista.fr3') then begin
         // paraméter átadás a lista fejhez
         rptEll.Variables.Clear;
         rptEll.Script.Variables['ENAR_KOD']     := dtmTarka.sTenyeszetKod;
         rptEll.Script.Variables['TENYESZET_NEV']:= dtmTarka.sTenyeszetNev;
         rptEll.Script.Variables['AT_KFTKOD']    := dtmTarka.sATKFT_KOD;
         rptEll.Script.Variables['DATUM']        := frmNyomtat.edtDatum.Text;
         if frmNyomtat.rbEnar.Checked then
           rptEll.Script.Variables['PSION']:= 'NEM'
         else
           rptEll.Script.Variables['PSION']:= 'IGEN';
         rptEll.ShowReport;
         frmNyomtat.sdsKez.Close;
      End;
    end;
  finally
    FreeAndNil(rptEll);
    frmNyomtat.Free;
  end;
end;




procedure TfrmNyomtat.rg1Click(Sender: TObject);
begin
  if rg1.ItemIndex = 0 then
    edtDatum.Enabled := false
  else
    edtDatum.Enabled := true;
end;



procedure TfrmNyomtat.btnBeallitClick(Sender: TObject);
begin
  pnlBeallit.Visible := true;
  cbAutFutas.Checked := (dtmTarka.IniFileRead(Listanev,'AutFutas','0' ) = '1');
end;

procedure TfrmNyomtat.MentesClick(Sender: TObject);
begin
  if cbAutFutas.Checked then
    dtmTarka.IniFileWrite(listanev, 'Autfutas','1')
  else
    dtmTarka.IniFileWrite(listanev, 'Autfutas','0');

  if rg1.Visible then begin
    dtmTarka.IniFileWrite(listanev, 'rg1', IntToStr(rg1.ItemIndex) );
  end;

  if rbEnar.Visible then begin
    if rbEnar.Checked then
      dtmTarka.IniFileWrite(listanev, 'rbEnar','1')
    else
      dtmTarka.IniFileWrite(listanev, 'rbEnar','0');
  end;

  if cbSelejtNemKell.Visible then begin
    if cbSelejtNemKell.Checked then
      dtmTarka.IniFileWrite(listanev, 'cbSelejtNemKell','1')
    else
      dtmTarka.IniFileWrite(listanev, 'cbSelejtNemKell','0');
  end;


  if rgNapok.Visible then begin

    if rb1.Checked then
      dtmTarka.IniFileWrite(listanev, 'rb1','1')
    else
      dtmTarka.IniFileWrite(listanev, 'rb1','0');

    if rb2.Checked then
      dtmTarka.IniFileWrite(listanev, 'rb2','1')
    else
      dtmTarka.IniFileWrite(listanev, 'rb2','0');

    if rb3.Checked then
      dtmTarka.IniFileWrite(listanev, 'rb3','1')
    else
      dtmTarka.IniFileWrite(listanev, 'rb3','0');
  end;

  pnlBeallit.Visible := false;
end;



procedure TfrmNyomtat.AlapErtekekBeolvasasa;
begin
  if rg1.Visible then begin
    rg1.ItemIndex := StrToInt(dtmTarka.IniFileRead(listanev, 'rg1', '0'));
  end;

  if rbEnar.Visible then begin
    rbEnar.Checked := (dtmTarka.IniFileRead(listanev, 'rbEnar','1') = '1');
    rbPsAzon.Checked := not rbEnar.Checked;
  end;

  if cbSelejtNemKell.Visible then begin
    cbSelejtNemKell.Checked := (dtmTarka.IniFileRead(listanev, 'cbSelejtNemKell','1') = '1');
  end;

  if rgNapok.Visible then begin

    if rb1.Visible then
      if rb3.Visible then
        rb1.Checked := dtmTarka.IniFileRead(listanev, 'rb1','0') = '1'
      else
        rb1.Checked := dtmTarka.IniFileRead(listanev, 'rb1','1') = '1';

    if rb2.Visible then
      rb2.Checked := dtmTarka.IniFileRead(listanev, 'rb2','0') = '1';

    if rb3.Visible then
        rb3.Checked := dtmTarka.IniFileRead(listanev, 'rb3','1') = '1';
  end;

end;


procedure TfrmNyomtat.BitBtn1Click(Sender: TObject);
var
  SQL : string;
begin
  if ListaNev = 'MaiNapSzaraz' then begin
    if lucTCsop.Text = EmptyStr then begin
      dtmTarka.MsgDlg('A szárazraállított egyedek termelési csoportját kötelezõ megadni!', mtConfirmation , [mbOK],0);
      exit;
    end else begin
      SQL := 'update param set SZARAZ_TCS = ' + Quotedstr(Self.Csoportok[lucTCsop.itemindex]);
      try
        dtmTarka.cnTarka.Execute(SQL);
      finally
      end;  
    end;
  end;
  inherited;
end;

procedure TfrmNyomtat.edtTenyeszetExit(Sender: TObject);
begin
  edtTenyNev.Text := dtmTarka.Vaneenyeszet(edtTenyeszet.Text);
end;



procedure TfrmNyomtat.sdsEnarLeltarAZONOSITOGetText(Sender: TField;
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

end.
