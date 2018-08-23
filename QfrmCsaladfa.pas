unit QfrmCsaladfa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn, strUtils,
  ExtCtrls, frxClass, frxDBSet, DB, DBClient, uTALSimpleDataSet, uTalParams,
  uValidedit, uTALEdit, uTALSpeedButton, Mask, uTALMaskEdit, uTALLabel,
  ADODB, uTALStoredProc;

type
  TfrmCsaladfa = class(TfrmNyomtatoOs)
    TalLabel3: TTalLabel;
    edtParBika: TTalMaskEdit;
    TalSpeedButton1: TTalSpeedButton;
    TalLabel15: TTalLabel;
    edtAzonosito: TTalEdit;
    sdsLista: TTalSimpleDataSet;
    dtsLista: TDataSource;
    frxDBLista: TfrxDBDataset;
    prcLista: TTalStoredProc;
    sdsListaID: TBCDField;
    sdsListaSZULOK: TWideStringField;
    sdsListaVS: TBCDField;
    sdsListaGEN_1: TWideStringField;
    sdsListaV1: TBCDField;
    sdsListaGEN_2: TWideStringField;
    sdsListaV2: TBCDField;
    sdsListaGEN_3: TWideStringField;
    sdsListaV3: TBCDField;
    sdsListaGEN_4: TWideStringField;
    sdsListaV4: TBCDField;
    frxRepLista: TfrxReport;
    procedure TalSpeedButton1Click(Sender: TObject);
    procedure edtParBikaExit(Sender: TObject);
    procedure edtAzonositoExit(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure sdsListaSZULOKGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
    sAzonId : string;
    sAzon : string;
  public
    { Public declarations }
  end;


procedure CsaladfaLista;

implementation

uses QfrmBika, udtmTarka;

{$R *.dfm}


procedure CsaladfaLista;
var
  frmCsaladfa: TfrmCsaladfa;
begin
  frmCsaladfa := TfrmCsaladfa.Create(Application);
  frmCsaladfa.sdsLista.Connection := dtmTarka.cnTarka;
  frmCsaladfa.prcLista.Connection := dtmTarka.cnTarka;
  try
    frmCsaladfa.ShowModal;
  finally
    FreeAndNil(frmCsaladfa);
  end;

end;


procedure TfrmCsaladfa.TalSpeedButton1Click(Sender: TObject);
var
  vissza : TTalParamList;
begin
  vissza := TTalParamList.Create;
  Vissza.Add('MODE','VAL');                               // spklt.választó;
  if frmBika.BikaVal(Vissza) then begin
     edtParBika.Text := Vissza.itemsByName('KLSZ').values[0];
     if BitBtn1.CanFocus then
       BitBtn1.SetFocus;
  end;
end;

procedure TfrmCsaladfa.edtParBikaExit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if edtParBika.Text <> EmptyStr then begin
    if not dtmTarka.VaneBika(edtParBika.Text,'') then begin
        dtmTarka.MsgDlg('Nincs ilyen azonosítójú bika!', mtWarning, [mbOK], 0);
        edtParBika.SelectAll;
        edtParBika.SetFocus;
        exit;
    end;
  end;
end;



procedure TfrmCsaladfa.edtAzonositoExit(Sender: TObject);
var
  sAzon : string;
  sAzonId : string;
begin
  if edtAzonosito.Enabled and dtmTarka.megsemNyomas(ActiveControl) then exit;

  if edtAzonosito.Text > EmptyStr then begin
    sAzon := edtAzonosito.Text;
    if not dtmTarka.VaneIlyenEgyed(edtAzonosito.Text, sAzon,sAzonId,true) then begin
      if sAzonId <> '-1' then
        dtmTarka.MsgDlg('Nincs ilyen élõ egyed!',mterror,[mbOK],0 );
      sAzon := '';
      sAzonId := '';
      edtAzonosito.SelectAll;
      if edtAzonosito.CanFocus then
        edtAzonosito.SetFocus;
    end else begin
      edtAzonosito.Text := sAzon;
      Self.sAzonId := sAzonId;
      Self.sAzon := sAzon;
    end;
  end;
end;

procedure TfrmCsaladfa.actOKExecute(Sender: TObject);
var
//  SQL : string;
  Szurofelt : string;
begin
  Szurofelt := 'Egyed azonosító : ' + edtAzonosito.Text + '   Párosított bika: ' + edtParBika.Text;


  if (edtAzonosito.Text = EmptyStr) and (edtParBika.Text = EmptyStr) then begin
    dtmTarka.MsgDlg('Nem adott meg adatot!', mtWarning, [mbOK], 0);
    exit;
  end;

  try
    screen.Cursor := crHourGlass;
    prcLista.Parameters.ParamByName('P_EGYED_AZON').Value := edtAzonosito.Text + edtParBika.text;
    prcLista.Parameters.ParamByName('P_ANYA_AZON').Value := edtAzonosito.Text;
    prcLista.Parameters.ParamByName('P_APA_AZON').Value := edtParBika.Text;
    prcLista.ExecProc;
  finally
    screen.Cursor := crDefault;
  end;

  if sdsLista.Active then sdsLista.Close;

  sdsLista.dataset.Parameters.ParamByName('ANYA1').Value := edtAzonosito.Text;
  sdsLista.dataset.Parameters.ParamByName('APA1').Value := edtParbika.Text;
  sdsLista.dataset.Parameters.ParamByName('ANYA2').Value := edtAzonosito.Text;
  sdsLista.dataset.Parameters.ParamByName('APA2').Value := edtParbika.Text;
  sdsLista.dataset.Parameters.ParamByName('ANYA3').Value := edtAzonosito.Text;
  sdsLista.dataset.Parameters.ParamByName('APA3').Value := edtParbika.Text;
  sdsLista.dataset.Parameters.ParamByName('ANYA4').Value := edtAzonosito.Text;
  sdsLista.dataset.Parameters.ParamByName('APA4').Value := edtParbika.Text;
  sdsLista.dataset.Parameters.ParamByName('ANYA5').Value := edtAzonosito.Text;
  sdsLista.dataset.Parameters.ParamByName('APA5').Value := edtParbika.Text;
  sdsLista.dataset.Parameters.ParamByName('SZ_EGYED').Value := edtAzonosito.Text + edtParBika.text;
  sdsLista.Open;
  if frxRepLista.LoadFromFile(dtmTarka.fr3Path + '\CsaladfaLista.fr3') then begin
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['SzuroFeltetelek'] := szurofelt;
       frxRepLista.ShowReport;
    End;
  sdsLista.Close;
//  inherited;

//    ModalResult := mrOK;
end;

procedure TfrmCsaladfa.sdsListaSZULOKGetText(Sender: TField;
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
