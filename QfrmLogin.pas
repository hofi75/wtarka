unit QfrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, StdCtrls, ActnList, Buttons, ExtCtrls, uTALBitBtn;

type
  TfrmLogin = class(TfrmKarbOs)
    Label1: TLabel;
    Label2: TLabel;
    edtFelhasznaloKod: TEdit;
    edtJelszo: TEdit;
    edtJelszoMod: TBitBtn;
    actJelszoModosit: TAction;
    procedure actOKExecute(Sender: TObject);
    procedure actJelszoModositExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

function Login():Boolean;

implementation

uses QfrmJelszoBekeres, udtmTarka;

{$R *.dfm}

function Login : Boolean;
begin
  frmLogin := TfrmLogin.Create(Application);
  Result := frmLogin.ShowModal = mrOK;
  frmLogin.Release;
end;



procedure TfrmLogin.actOKExecute(Sender: TObject);
begin
  if edtFelhasznaloKod.Text = EmptyStr then begin
    ShowMessage('A felhasználónév megadása kötelezõ!');
    edtFelhasznaloKod.SetFocus;
    exit;
  end;
  if not dtmTarka.Belepes(edtFelhasznaloKod.Text,edtJelszo.Text,False) then begin
    ShowMessage('Hibás felhasználónév vagy jelszó!');
    exit;
  end;
  Inherited;
end;

procedure TfrmLogin.actJelszoModositExecute(Sender: TObject);
begin
  inherited;
  OpenUjJelszo;
end;

end.
