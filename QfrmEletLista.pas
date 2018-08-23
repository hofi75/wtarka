unit QfrmEletLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn, StrUtils,
  ExtCtrls, Mask, uValidedit, uTALEdit, uTALLabel, DB, DBClient,
  uTALSimpleDataSet, frxClass, frxDBSet, uTALRadioGroup;

type
  TfrmEletLista = class(TfrmNyomtatoOs)
    TalLabel1: TTalLabel;
    edtEgyed: TTalEdit;
    sdsGn14: TTalSimpleDataSet;
    frxDBGn14: TfrxDBDataset;
    sdsGn14NAP: TDateTimeField;
    rbRendezettseg: TTalRadioGroup;
    sdsGn14NULLA_HAT: TBCDField;
    sdsGn14HAT_TIZENKETTO: TBCDField;
    sdsGn14T12_HUSZONNEGY: TBCDField;
    sdsGn14HAT_HUSZONNEGY: TBCDField;
    sdsGn14HUSZONEGY_TOL: TBCDField;
    sdsGn14LETSZAM: TBCDField;
    frxRepLista: TfrxReport;
    procedure actOKExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ListaTipus : string;
    SQL : string;
    procedure AlapErtekekBeolvasasa;
  public
    { Public declarations }
  end;


procedure gn14Lista;


implementation

uses DateUtils, udtmTarka;

{$R *.dfm}


procedure Gn14Lista;
var
  frmEletLista: TfrmEletLista;
begin
  frmEletLista := TfrmEletLista.Create(Application);
  with frmEletLista do begin
    Caption := 'GN15 szerinti korcsoport statisztika';
    ListaTipus := '2';
    TalLabel1.Caption := 'Év:';
    edtEgyed.ValueType := etInteger;
    edtEgyed.ValueMin := '1980';
    edtEgyed.ValueMax := '2040';
    edtEgyed.Value := yearOf(today()) ;
    edtEgyed.Width := 50;
    sdsGn14.Connection := dtmTarka.cnTarka;
    SQL := sdsGn14.DataSet.CommandText;
    ShowModal;
    if sdsGn14.Active then sdsGn14.Close;
    FreeAndNil(frmEletLista);
  end;
end;






procedure TfrmEletLista.actOKExecute(Sender: TObject);
var
  SQL : string;
begin
// gn14 LISTA
if ListaTipus = '2' then begin
  if edtEgyed.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Nem adott meg évet!',mterror,[mbOK],0 );
    if edtEgyed.CanFocus then edtEgyed.SetFocus;
    exit;
  end;

  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  dtmTarka.prcNaptolt.Connection := dtmTarka.cnTarka;
  dtmTarka.prcNaptolt.Parameters.ParamByName('KEZDAT').Value := edtEgyed.Text + '.01.01';
  dtmTarka.prcNaptolt.ExecProc;
  try
    if sdsGn14.Active then sdsGn14.Close;
    sdsGn14.DataSet.CommandText := StringReplace(sdsGn14.DataSet.CommandText,'/*1*/',dtmTarka.TenyeszetWhereS,[rfReplaceAll]);
    Screen.Cursor := crHourGlass;
    sdsGn14.Open;
  finally
    Screen.Cursor := crArrow;
  end;
  if frxRepLista.LoadFromFile(dtmTarka.fr3Path + '\Gn14Lista.fr3') then begin
    // paraméter átadás a lista fejhez
    frxRepLista.Variables.Clear;
    frxRepLista.script.Variables['TENYESZET']:= 'Tenyészet: ' + dtmTarka.TenyeszetTKOD + ' ' + trim(dtmTarka.TenyeszetTNEV);
    frxRepLista.script.Variables['EV']:= 'Év: ' + edtEgyed.Text;
    frxRepLista.ShowReport;
  End;
  if sdsGn14.Active then sdsGn14.Close;
end;



end;

procedure TfrmEletLista.AlapErtekekBeolvasasa;
begin
  if rbRendezettseg.Visible then begin
    rbRendezettseg.ItemIndex := StrToInt(dtmTarka.IniFileRead('EletLista', 'rbRendezettseg', '0'));
  end;
end;


procedure TfrmEletLista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if rbRendezettseg.Visible then
    dtmTarka.IniFileWrite('EletLista', 'rbRendezettseg',IntToStr(rbRendezettseg.itemIndex));
  inherited;
end;

end.
