unit QfrmValasztoOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ActnList, StdCtrls, ExtCtrls, Mask, Buttons, Db, uTALDBGrid,
  Wwdbigrd, Wwdbgrid;

type
  TfrmValasztoOs = class(TForm)
    pnlGombok: TPanel;
    ActionList1: TActionList;
    actOK: TAction;
    actMegsem: TAction;
    pnlKereses: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btnTorol: TBitBtn;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    btnModosit: TBitBtn;
    btnUj: TBitBtn;
    btnNyomtat: TBitBtn;
    grdVal: TTalDBGrid;
    grdValIButton: TwwIButton;
    Panel1: TPanel;
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure grdValKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdValDblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

uses udtmTarka;

{$R *.dfm}

procedure TfrmValasztoOs.actOKExecute(Sender: TObject);
begin
  Modalresult := mrOK;
end;

procedure TfrmValasztoOs.actMegsemExecute(Sender: TObject);
begin
  Modalresult := mrCancel;
end;

procedure TfrmValasztoOs.grdValKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13	then
    ModalResult := mrOK;
  if Key = 27 then
    Modalresult := mrCancel;
end;

 procedure TfrmValasztoOs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  grdVal.DataSource.DataSet.Close;
end;

procedure TfrmValasztoOs.grdValDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmValasztoOs.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if grdVal <> ActiveControl then
  case Key of
    Vk_Up: grdVal.DataSource.DataSet.Prior;
    Vk_Down: grdVal.DataSource.DataSet.Next;
    Vk_Prior: grdVal.DataSource.DataSet.MoveBy(-10);
    Vk_Next: grdVal.DataSource.DataSet.MoveBy(10);
  end;
  grdValKeyDown(Sender,Key,Shift);
end;

procedure TfrmValasztoOs.FormShow(Sender: TObject);
begin
  Self.grdVal.SortColumn := 0;
  Self.grdVal.SortShow := true;

  if Self.edit1.Text <> EmptyStr then
    Self.Edit1Change(nil);

  Self.Edit1.SetFocus;
end;

procedure TfrmValasztoOs.Edit1Change(Sender: TObject);
var
  keresoMezo : string;
begin
  keresoMezo := grdVal.SortField;
  
  if keresoMezo <> EmptyStr then
    grdVal.DataSource.DataSet.Locate(keresoMezo, Edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TfrmValasztoOs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;

procedure TfrmValasztoOs.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if Action.tag <> -1 then
    if not dtmTarka.JogosultsagEllenorzes( IntToStr(Action.tag)) then
      Handled := true;
end;

end.

