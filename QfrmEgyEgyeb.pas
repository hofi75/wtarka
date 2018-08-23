unit QfrmEgyEgyeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmModOs, StdCtrls, DBCtrls, uTALDBMemo, Mask, uValidedit,DateUtils,
  uDBValidedit, uTALDBEdit, uTALLabel, ActnList, Grids, Wwdbigrd, Wwdbgrid,
  uTALDBGrid, uTALPanel, Buttons, ExtCtrls, DB, DBClient, uTALSimpleDataSet;

type
  TfrmGyEgyeb = class(TfrmModOs)
    TalLabel5: TTalLabel;
    edtDatum: TTalDBEdit;
    TalLabel7: TTalLabel;
    edtBeszMenny: TTalDBEdit;
    TalLabel1: TTalLabel;
    TalDBMemo1: TTalDBMemo;
    sdsGyEgyeb: TTalSimpleDataSet;
    dtsGyEgyeb: TDataSource;
    Label9: TTalLabel;
    edtGyogyszerKod: TTalDBEdit;
    edtGyogyszerNev: TTalDBEdit;
    sdsGyEgyebKOD: TWidestringField;
    sdsGyEgyebNEV: TWidestringField;
    sdsGyEgyebGYOGYSZERKLT_ID: TBCDField;
    sdsGyEgyebDATUM: TDateTimeField;
    sdsGyEgyebID: TBCDField;
    sdsGyEgyebMENNYISEG: TBCDField;
    sdsGyEgyebME: TWidestringField;
    sdsGyEgyebMEGJEGYZES: TWidestringField;
    sdsGyEgyebUSER_KOD: TWidestringField;
    sdsGyEgyebUTMOD_DAT: TDateTimeField;
    TalDBEdit1: TTalDBEdit;
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
    procedure edtBeszMennyExit(Sender: TObject);
  private
    { Private declarations }
    id : string;
    kod : string;
    nev : string;
    me : string;
    procedure SetEditors(Enable: boolean);
    function Mezok_kitoltve:Boolean;
  public
    { Public declarations }
  end;


procedure GyEgyeb(GyKltId, GyKod, GyNev, GYME : string);

implementation

uses udtmTarka, QSysTools;

procedure GyEgyeb(GyKltId, GyKod, GyNev, GYME : string);
var
  frmGyEgyeb: TfrmGyEgyeb;
begin
  frmGyEgyeb := TfrmGyEgyeb.Create(Application);
  with frmGyEgyeb do begin
    try
      SetEditors(false);
      if GyKltId = EmptyStr then GyKltId := '0';
      id := GyKltId; 
      kod := GyKod;
      nev := GyNev;
      me := GYME;
      Caption := Gynev + ' egyéb felhasználásai ';
      sdsGyEgyeb.DataSet.Connection := dtmTarka.cnTarka;
      sdsGyEgyeb.DataSet.Parameters.ParamByName('GYID').Value := StrToInt(GyKltId);
      sdsGyEgyeb.Open;
      ShowModal;
    finally
      if sdsGyEgyeb.Active then sdsGyEgyeb.Close;
      FreeAndNil(frmGyEgyeb);
    end;
  end;
end;

{$R *.dfm}


procedure TfrmGyEgyeb.btnUjClick(Sender: TObject);
begin
  inherited;
  sdsGyEgyeb.Append;
  sdsGyEgyebGYOGYSZERKLT_ID.AsString := id;
  sdsGyEgyebKOD.AsString := kod;
  sdsGyEgyebNEV.AsString := nev;
  sdsGyEgyebME.AsString := me;
  sdsGyEgyebDATUM.AsDateTime := today();
  SetEditors(True);
  if edtBeszMenny.CanFocus then edtBeszMenny.SetFocus;
end;


procedure TfrmGyEgyeb.SetEditors(Enable: boolean);
begin
  btnOK.Enabled := True;
  btnCancel.Enabled := True;
  btnUj.Enabled := not Enable;
  btnTorol.Enabled := not Enable;
  btnModosit.Enabled := not Enable;
  grdVal.Enabled := not Enable;
  pnlMod.Enabled := Enable;
  if btnUj.Enabled then
    btnCancel.Caption := 'Kilépés'
  else
    btnCancel.Caption := 'Mégsem';
end;



procedure TfrmGyEgyeb.btnModositClick(Sender: TObject);
begin
  inherited;
  sdsGyEgyeb.Edit;
  SetEditors(True);
  edtDatum.Enabled := false;
  if edtBeszMenny.CanFocus then edtBeszMenny.SetFocus;

end;

procedure TfrmGyEgyeb.actMegsemExecute(Sender: TObject);
begin
  inherited;
  if sdsGyEgyeb.State in [dsEdit, dsInsert] then begin
    sdsGyEgyeb.Cancel;
    SetEditors(False);
    exit;
  end else begin
    ModalResult := mrCancel;
  end;
end;


procedure TfrmGyEgyeb.actOKExecute(Sender: TObject);
begin

  if sdsGyEgyeb.State in [dsEdit, dsInsert] then begin
    if not Mezok_kitoltve then exit;
    sdsGyEgyebUTMOD_DAT.AsDateTime := Now();
    sdsGyEgyebUSER_KOD.AsString := dtmTarka.UserKod;

    sdsGyEgyeb.Post;

    dtmTarka.cnTarka.BeginTrans;
    try
      sdsGyEgyeb.ApplyUpdates(0);
      dtmTarka.cnTarka.CommitTrans;
      sdsGyEgyeb.Refresh;
    except
      on E:Exception do
      begin
        dtmTarka.cnTarka.RollbackTrans;
        Log('sdsGyEgyeb : Rollback  :');
        Log(E.Message);
        Exit;
      end;
    end;

    SetEditors(False);
  end else begin
    ModalResult := mrOK;
  end;

  inherited;
end;

function TfrmGyEgyeb.Mezok_kitoltve: Boolean;
begin
  result := false;
  if edtDatum.Text = '    .  .  ' then begin
    dtmTarka.MsgDlg('A mozgás dátumának megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtDatum.SetFocus;
    exit;
  end;
  if edtBeszMenny.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A mennyiség megadása kötelezõ!', mtWarning, [mbOK], 0);
    edtBeszMenny.SetFocus;
    exit;
  end;

  Result := true;
end;

procedure TfrmGyEgyeb.btnTorolClick(Sender: TObject);
begin
  if sdsGyEgyeb.RecordCount = 0 then exit;
  if dtmTarka.MsgDlg('Biztos törli a tételt?', mtConfirmation , [mbYes, mbNo],0) = mrYes then begin
    sdsGyEgyeb.Delete;
    sdsGyEgyeb.ApplyUpdates(0);
  end;
end;


procedure TfrmGyEgyeb.edtBeszMennyExit(Sender: TObject);
var
  klt : double;
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if (edtBeszMenny.Text = EmptyStr) or (edtBeszMenny.Value = 0) then exit;
  if sdsGyEgyeb.State = dsInsert then begin
    klt := 0;
    if not dtmTarka.VaneElegKeszletDb(edtBeszMenny.Value, sdsGyEgyebGYOGYSZERKLT_ID.AsString,klt) then begin
      dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ edtGyogyszerNev.Text + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + TalDBEdit1.Text + '    Kellene: '+
          FloatToStr(edtBeszMenny.Value) ,mterror,[mbOK],0 );

      edtBeszMenny.SetFocus;
    end;
  end;
  if sdsGyEgyeb.State = dsEdit then begin
    klt := 0;
    if sdsGyEgyebMENNYISEG.OldValue < edtBeszMenny.Value then begin
      if not dtmTarka.VaneElegKeszletDb(edtBeszMenny.Value - sdsGyEgyebMENNYISEG.OldValue, sdsGyEgyebGYOGYSZERKLT_ID.AsString, klt) then begin
        dtmTarka.MsgDlg('Nincs elég készlet ebbõl: '+ edtGyogyszerNev.Text + '    Készlet: ' +
          FloatToStr(Klt) +  ' ' + TalDBEdit1.Text + '    Kellene: '+
          FloatToStr(edtBeszMenny.Value - sdsGyEgyebMENNYISEG.OldValue) ,mterror,[mbOK],0 );
        edtBeszMenny.SetFocus;
      end;
    end;                                                                             
  end;
end;

end.
