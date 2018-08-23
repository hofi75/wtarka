unit QfrmModOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid, uTALPanel,
  StdCtrls, Buttons, ExtCtrls;

type
  TfrmModOs = class(TForm)
    pnlGombok: TPanel;
    btnTorol: TBitBtn;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    btnModosit: TBitBtn;
    btnUj: TBitBtn;
    btnNyomtat: TBitBtn;
    pnlMod: TTalPanel;
    grdVal: TTalDBGrid;
    ActionList1: TActionList;
    actOK: TAction;
    actMegsem: TAction;
    procedure btnUjClick(Sender: TObject);
    procedure btnModositClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

procedure TfrmModOs.btnUjClick(Sender: TObject);
begin
  grdVal.Enabled := false;
  pnlMod.Enabled := true;

end;

procedure TfrmModOs.btnModositClick(Sender: TObject);
begin
  grdVal.Enabled := false;
  pnlMod.Enabled := true;

end;

procedure TfrmModOs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then begin
      SelectNext(ActiveControl, True, True)
  end;

end;

end.
