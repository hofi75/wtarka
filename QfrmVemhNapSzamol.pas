unit QfrmVemhNapSzamol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, uTALBitBtn, ActnList, ExtCtrls, uTALBevel,
  uTALLabel, Mask, uValidedit, uTALEdit, uTALMaskEdit,DateUtils;

type
  TfrmVemhNapSzamol = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    ActionList1: TActionList;
    actMegsem: TAction;
    BitBtn2: TTalBitBtn;
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    TalLabel3: TTalLabel;
    edtVemhNap: TTalEdit;
    TalBevel1: TTalBevel;
    TalLabel4: TTalLabel;
    TalLabel5: TTalLabel;
    TalLabel6: TTalLabel;
    edtAtlNapSzam: TTalEdit;
    edtTerm1: TTalMaskEdit;
    edtEllDat: TTalMaskEdit;
    edtTermDat2: TTalMaskEdit;
    edtVarhatoElles: TTalEdit;
    procedure actMegsemExecute(Sender: TObject);
    procedure edtEllDatExit(Sender: TObject);
    procedure edtTermDat2Exit(Sender: TObject);
    procedure edtTerm1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVemhNapSzamol: TfrmVemhNapSzamol;

procedure VemhNapSzamolas;

implementation

uses udtmTarka;

{$R *.dfm}

procedure VemhNapSzamolas;
begin
  frmVemhNapSzamol.edtAtlNapSzam.Value := dtmTarka.iAtlVemhNapSzam;
  frmVemhNapSzamol.edtTerm1.Text := '    .  .  ';
  frmVemhNapSzamol.edtEllDat.Text := '    .  .  ';
  frmVemhNapSzamol.edtTermDat2.Text := '    .  .  ';
  frmVemhNapSzamol.edtVarhatoElles.Text := '    .  .  ';
  frmVemhNapSzamol.ShowModal;
end;


procedure TfrmVemhNapSzamol.actMegsemExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;


procedure TfrmVemhNapSzamol.edtEllDatExit(Sender: TObject);
var
  d1, d2 : TDate;
  napok : integer;
begin
  if dtmTarka.megsemNyomas(ActiveControl) then
    exit;

  if edtEllDat.Text = '    .  .  ' then
    exit;

  try
    d2 := StrToDate(edtEllDat.Text);
  except
    Dialogs.ShowMessage('Hibás dátum!');
    edtEllDat.SelectAll;
    edtEllDat.SetFocus;
    exit;
  end;

  d1 := StrToDate(edtTerm1.Text);
  napok :=  DaysBetween(d2,d1);
  edtVemhNap.Text := IntToStr(napok);
end;


procedure TfrmVemhNapSzamol.edtTermDat2Exit(Sender: TObject);
var
  d1, d2 : TDate;
begin
  if edtTermDat2.Text <> '    .  .  ' then begin
    try
      d1 := StrToDate(edtTermDat2.Text);
    except
      Dialogs.ShowMessage('Hibás dátum!');
      edtTermDat2.SelectAll;
      edtTermDat2.SetFocus;
      exit;
    end;

    d2 := d1 + dtmTarka.iAtlVemhNapSzam;
    edtVarhatoElles.Text := DateToStr(d2);
  end;
end;


procedure TfrmVemhNapSzamol.edtTerm1Exit(Sender: TObject);
var
  d1 : Tdate;
begin
  if dtmTarka.MegsemNyomas(ActiveControl) then
    Exit;

  if edtTerm1.Text <> '    .  .  ' then
  begin
    try
      d1 := StrToDate(edtTerm1.Text);
    except
      Dialogs.ShowMessage('Hibás dátum!');
      edtTerm1.SelectAll;
      edtTerm1.SetFocus;
    end;
  end;
end;


procedure TfrmVemhNapSzamol.FormShow(Sender: TObject);
begin
  if Self.edtTerm1.CanFocus then
    Self.edtTerm1.SetFocus;
end;

procedure TfrmVemhNapSzamol.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;

end.
