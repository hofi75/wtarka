unit QfrmKarbOs;

interface

uses Windows, Classes, Graphics, Forms, Controls, StdCtrls, ActnList,
  Buttons,  ExtCtrls, ComCtrls, DBCtrls, Mask, SysUtils, uTalBitBtn;

type
  TfrmKarbOs = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    actOK: TAction;
    actMegsem: TAction;
    Panel2: TPanel;
    BitBtn1: TTalBitBtn;
    BitBtn2: TTalBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
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

procedure TfrmKarbOs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Action := caFree;
end;

procedure TfrmKarbOs.actOKExecute(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmKarbOs.actMegsemExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmKarbOs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;

procedure TfrmKarbOs.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if Action.tag <> -1 then
    if not dtmTarka.JogosultsagEllenorzes(IntToStr(Action.tag)) then
      Handled := true;
end;

end.
