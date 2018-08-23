unit QfrmDolgAdatok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, ActnList, StdCtrls, Buttons, ExtCtrls, Mask,
  fmtBcd, QfrmDolgozok, uTALBitBtn, uValidedit, uDBValidedit, uTALDBEdit,
  wwcheckbox, uTALDBCheckBox, DB, DBCtrls, uTALDBRadioGroup, uTALComboBox,
  DBClient, uTALSimpleDataSet, ADODB, uTALDataset,
  uTalQuery, uTALDBLookupComboBox;

type
  TfrmDolgAdatok = class(TfrmKarbOs)
    Label1: TLabel;
    Label2: TLabel;
    edtDolgKod: TTalDBEdit;
    edtDolgNev: TTalDBEdit;
    cbTipus: TTalDBRadioGroup;
    Label4: TLabel;
    dtsTenyeszet: TDataSource;
    qryTenyeszet: TTalQuery;
    qryTenyeszetTKOD: TWideStringField;
    qryTenyeszetLISTA: TWideStringField;
    cbTenyeszet: TTalDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    private
    { Private declarations }
    mode : string;
    function MezokKitoltve():boolean;
  public
    { Public declarations }
  end;


function OpenDolgAdatok(mode:string):Boolean;

implementation

uses  udtmTarka, StdConvs;

{$R *.dfm}

function OpenDolgAdatok(mode:string):Boolean;
var
  frmDolgAdatok: TfrmDolgAdatok;
  saveIndex: Integer;
begin
  result := false;
  frmDolgAdatok := TfrmDolgAdatok.Create(Application);
  frmDolgAdatok.mode := mode;

  with frmDolgAdatok do begin
    qryTenyeszet.Open;
    // cbTenyeszet.KeyValue := frmDolgozok.sdsDolgTENYESZET.Value;
    // cbTenyeszet.Repaint;
  end;

  frmDolgAdatok.ShowModal;

  if frmDolgAdatok.ModalResult = mrOK then begin
    Result := true;
  end
  else
    if frmDolgozok.sdsDolg.State <> dsBrowse then
      frmDolgozok.sdsDolg.Cancel;

  frmDolgAdatok.release;
end;

{ TfrmDolgAdatok }

function TfrmDolgAdatok.MezokKitoltve: boolean;
begin
  Result := false;
  if Self.edtDolgKod.Text=EmptyStr then begin
    ShowMessage('A kód megadása kötelezõ!');
    edtDolgKod.SetFocus;
    exit;
  end;
  if Self.edtDolgNev.Text=EmptyStr then begin
    ShowMessage('A név megadása kötelezõ!');
    edtDolgNev.SetFocus;
    exit;
  end;
  Result := true;
end;

procedure TfrmDolgAdatok.FormShow(Sender: TObject);
begin
  if (dtmTarka.UserKarb='2') or (dtmTarka.UserKarb='S') then begin
    cbTipus.Visible := true
  end else begin
    cbTipus.Visible := false;
  end;
  if Self.mode <> 'UJ' then begin
    edtDolgKod.Enabled := false;
    edtDolgNev.SetFocus;
    if cbTipus.Visible then
       cbTipus.ItemIndex := frmDolgozok.sdsDolgTIPUS.AsInteger;
  end;
  inherited;
end;



procedure TfrmDolgAdatok.actMegsemExecute(Sender: TObject);
begin
  frmDolgozok.sdsDolg.Cancel;
  qryTenyeszet.Close;
  inherited;
end;

procedure TfrmDolgAdatok.actOKExecute(Sender: TObject);
begin
  if not MezokKitoltve then exit;

  frmDolgozok.sdsDolgTIPUS.AsInteger := cbTipus.ItemIndex;
  // frmDolgozok.sdsDolgTENYESZET.AsInteger := cbTenyeszet.KeyValue;

  if mode = 'UJ' then begin
    if dtmTarka.VaneUser(frmDolgozok.sdsDolgFELH_KOD.AsString) then begin
      Application.MessageBox('Már van ilyen kódú felhasználó! Adjon meg másik kódot!','Figyelem!');
      edtDolgKod.SetFocus;
      qryTenyeszet.Close;
      exit;
    end;
    frmDolgozok.sdsDolgJELSZO.AsString := edtDolgKod.Text;
    frmDolgozok.sdsDolg.Post;
  end;
  if mode = 'MODOSIT' then begin
    frmDolgozok.sdsDolg.Post;
  end;
  ModalResult := mrOK;
end;

end.

