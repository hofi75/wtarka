unit QfrmJelszoBekeres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, StdCtrls, ActnList, ExtCtrls, uTalBitBtn, Buttons;

type
  TfrmJelszoBekeres = class(TfrmKarbOs)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtFelh: TEdit;
    edtRegi: TEdit;
    edtUj: TEdit;
    edtUj1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  frmJelszoBekeres: TfrmJelszoBekeres;

procedure OpenUjJelszo;

implementation

uses QfrmLogin, udtmTarka;

{$R *.dfm}

procedure OpenUjJelszo;
begin
  frmJelszoBekeres:= TfrmJelszoBekeres.Create(Application);
  if frmLogin.edtFelhasznaloKod.Text <> EmptyStr then begin
    frmJelszoBekeres.edtFelh.Text := frmLogin.edtFelhasznaloKod.Text;
    frmJelszoBekeres.edtFelh.Enabled := false;
  end;

  frmJelszoBekeres.ShowModal;

  frmJelszoBekeres.Release;

end;

procedure TfrmJelszoBekeres.FormShow(Sender: TObject);
begin
  inherited;
  if edtFelh.Text <> EmptyStr then
    edtRegi.SetFocus;
end;

procedure TfrmJelszoBekeres.actOKExecute(Sender: TObject);
begin
  if edtFelh.Text = EmptyStr then begin
    ShowMessage('A felhasználónév megadása kötelezõ!');
    edtFelh.SetFocus;
    exit;
  end;
  if edtUj.Text = EmptyStr then begin
    ShowMessage('Nem adott meg új jelszót!');
    edtUj.SetFocus;
    exit;
  end;
  if edtUj.Text <> edtUj1.Text then begin
    ShowMessage('A 2 új jelszót hibásan adta meg!');
    edtUj.SetFocus;
    exit;
  end;

  if not dtmTarka.Belepes(edtFelh.Text,edtRegi.Text,True) then
  begin
    ShowMessage('Hibás felhasználónév vagy jelszó!');
    exit;
  end;

  dtmTarka.JelszoCsere(edtFelh.Text, edtRegi.Text, edtUj.Text);
  frmLogin.edtJelszo.Text := edtUj.Text;

  inherited;
end;

end.
