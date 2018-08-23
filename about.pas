unit about;

interface

uses
  Windows, Classes, Graphics, Forms, Controls, StdCtrls, sysutils, Buttons,
  ExtCtrls, uTALLabel;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    OKButton: TButton;
    ProgramIcon: TImage;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    Label1: TLabel;
    TalLabel1: TTalLabel;
    lblDbVer: TTalLabel;
    lblLicence: TTalLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses udtmTarka;


{$R *.dfm}

procedure TAboutBox.FormShow(Sender: TObject);
const
  InfoNum = 10;
  InfoStr: array[1..InfoNum] of string = ('CompanyName', 'FileDescription',
  'FileVersion', 'InternalName', 'LegalCopyright',
  'LegalTradeMarks', 'OriginalFileName', 'ProductName',
  'ProductVersion', 'Comments');

var
  size,size2: DWord;
  pt,pt2: Pointer;
  versio, s : string;
begin
  S := Application.ExeName;
  size:=getfileversioninfosize(pchar(s),size2);
  if size > 0 then begin
    getmem(pt,size);
    try
    getfileversioninfo(pchar(s),0,size,pt);
    verqueryvalue(pt,'\\\\\\\\',pt2,size2);
    with tvsfixedfileinfo(pt2^) do  begin
      versio:='Verzió : '+inttostr(hiword(dwfileversionms))+'.'+inttostr(loword(dwfileversionms))
      +'.'+inttostr(hiword(dwfileversionls))+ '.'+ inttostr(loword(dwfileversionls) );
    end;
    Self.Version.Caption := versio;
    Self.lblDbVer.Caption := ' Adatbázis verzió: ' + dtmTarka.sDbVer;
    finally
      freemem(pt);
    end;
  end;
  if dtmTarka.Install = 'ATKFT' then
    TalLabel1.Caption := 'ÁT Kft';


  lblLicence.Caption := 'Licenc érvényes: ' + DateToStr(LicenceDate);
end;


end.

