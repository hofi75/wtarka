unit Atkotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, uTALDBLookupComboBox, StdCtrls, Buttons, uTALBitBtn,
  uTALLabel, Mask, uValidedit, uDBValidedit, uTALDBEdit, udtmTarka;

type
  TfrmAtkotes = class(TForm)
    TalLabel14: TTalLabel;
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    btnAtkotes: TTalBitBtn;
    btnMegse: TTalBitBtn;
    lucTenyeszet: TTalDBLookupComboBox;
    edtENAR: TEdit;
    edtTenyeszet: TEdit;
    procedure btnMegseClick(Sender: TObject);
    procedure btnAtkotesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Procedure StartAtkotes(pID: String; pENAR: String; pTenyeszet: String);

var
  frmAtkotes: TfrmAtkotes;

implementation

Procedure StartAtkotes(pID: String; pENAR: String; pTenyeszet: String);
begin;
  frmAtkotes := TfrmAtkotes.create(Application);
  frmAtkotes.edtENAR.Text := pENAR;
  frmAtkotes.edtTenyeszet.Text := pTenyeszet;
  frmAtkotes.ShowModal;
end;

{$R *.dfm}

procedure TfrmAtkotes.btnMegseClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmAtkotes.btnAtkotesClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  dtmTarka.MsgDlg('Biztosan áthelyezi az egyedet?', mtConfirmation , [mbYes, mbNo],0);
end;

end.
