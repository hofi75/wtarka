unit QfrmLogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, uTALImage;

type
  TfrmLogo = class(TForm)
    TalImage1: TTalImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bKellTimer : Boolean;
  end;

var
  frmLogo: TfrmLogo;

implementation

{$R *.dfm}

procedure TfrmLogo.Timer1Timer(Sender: TObject);
begin
  timer1.enabled := false;
  Close;
end;

procedure TfrmLogo.FormShow(Sender: TObject);
begin
  if bKellTimer then
    Timer1.Enabled := true;
end;

end.
