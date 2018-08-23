unit QfrmEnarSzamEll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, uTALMaskEdit, ActnList, uTALLabel, Buttons,
  uTALBitBtn, ExtCtrls, uValidedit, uTALEdit, strUtils;

type
  TfrmEnarSzamEll = class(TForm)
    Panel1: TPanel;
    BitBtn2: TTalBitBtn;
    Panel2: TPanel;
    TalLabel6: TTalLabel;
    ActionList1: TActionList;
    actMegsem: TAction;
    edtEnar: TTalMaskEdit;
    edtCdv: TTalEdit;
    procedure actMegsemExecute(Sender: TObject);
    procedure edtEnarExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtEnarChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnarSzamEll: TfrmEnarSzamEll;

procedure EnarSzamEll;

implementation

uses udtmTarka;


{$R *.dfm}

procedure EnarSzamEll;
begin
  frmEnarSzamEll.ShowModal;
end;

procedure TfrmEnarSzamEll.actMegsemExecute(Sender: TObject);
begin
  edtEnar.Text := emptyStr;
  edtCdv.Text := emptyStr;
  ModalResult := mrCancel;
end;

procedure TfrmEnarSzamEll.edtEnarExit(Sender: TObject);
var
  sum : integer;
begin
  if edtEnar.Text = EmptyStr then
    Exit;

  if dtmTarka.megsemNyomas(ActiveControl) then
    Exit;

  sum := 0;
  sum := sum + StrToInt(midstr(edtEnar.Text,1,1)) * 7;
  sum := sum + StrToInt(midstr(edtEnar.Text,2,1)) * 9;
  sum := sum + StrToInt(midstr(edtEnar.Text,3,1)) * 3;
  sum := sum + StrToInt(midstr(edtEnar.Text,4,1)) * 1;
  sum := sum + StrToInt(midstr(edtEnar.Text,5,1)) * 7;
  sum := sum + StrToInt(midstr(edtEnar.Text,6,1)) * 9;
  sum := sum + StrToInt(midstr(edtEnar.Text,7,1)) * 3;
  sum := sum + StrToInt(midstr(edtEnar.Text,8,1)) * 1;
  sum := sum + StrToInt(midstr(edtEnar.Text,9,1)) * 7;

  edtCdv.Text :=  RightStr(IntToStr(sum), 1);
end;

procedure TfrmEnarSzamEll.FormShow(Sender: TObject);
begin
  if edtEnar.CanFocus then edtEnar.SetFocus;
end;

procedure TfrmEnarSzamEll.edtEnarChange(Sender: TObject);
begin
  edtCdv.Text := '';
end;

procedure TfrmEnarSzamEll.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;

end.
