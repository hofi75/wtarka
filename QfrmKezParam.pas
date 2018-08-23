unit QfrmKezParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, ActnList, StdCtrls, Buttons, uTALBitBtn, ExtCtrls,
  Grids, DBGrids, uTALComboBox, uTALPanel, DB, ADODB, uTalQuery, Wwdbigrd,
  Wwdbgrid, uTALDBGrid, DBClient, uTALSimpleDataSet, Wwkeycb, uTALSearch, StrUtils;

type
  TfrmKezParam = class(TfrmKarbOs)
    bbtnUj: TTalBitBtn;
    bbtnModosit: TTalBitBtn;
    bbtnTorol: TTalBitBtn;
    TalPanel1: TTalPanel;
    dstKodKarb: TDataSource;
    ParamGrid: TTalDBGrid;
    qryKezParam: TTalSimpleDataSet;
    qryKezParamID: TBCDField;
    qryKezParamKOD: TWidestringField;
    qryKezParamNEV: TWidestringField;
    qryKezParamCSOPORT_KOD: TWidestringField;
    qryKezParamKOD_NEV: TWidestringField;
    sdsCsoport: TTalSimpleDataSet;
    sdsCsoportKOD: TWidestringField;
    sdsCsoportKOD_NEV: TWidestringField;
    dtsCsoport: TDataSource;
    Label8: TLabel;
    TalSearch1: TTalSearch;
    procedure actMegsemExecute(Sender: TObject);
    procedure bbtnModositClick(Sender: TObject);
    procedure bbtnTorolClick(Sender: TObject);
    procedure bbtnUjClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure TalSearch1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ParamGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ParamGridKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    sAlapSelect : string;
  public
    { Public declarations }
    Id : Variant;
    Kod : Variant;
    Nev : Variant;
    mode : string;
  end;

var
  frmKezParam: TfrmKezParam;
  valtipus  : string;
  SQL       : string;
  muv_tipus : string;

Function KezParam(Bongesz : boolean = false; Szuro:string = '') : boolean;

implementation

Uses udtmTarka, QfrmKezParamData;

{$R *.dfm}

function KezParam(Bongesz : boolean = false; Szuro:string = '') : boolean;
begin
  with frmKezParam do
  begin
    TalSearch1.Text := '';
    qryKezParam.Connection := dtmTarka.cnTarka;
    sAlapSelect := qryKezParam.DataSet.CommandText;
    if szuro <> '' then begin
      qryKezParam.DataSet.CommandText := qryKezParam.DataSet.CommandText +
          ' where KP.CSOPORT_KOD='+quotedstr(Szuro);
    end;
    qryKezParam.Open;
    sdsCsoport.Open;
//    qryKezParam.First;
    bbtnUj.Enabled := true;
    bbtnModosit.Enabled := true;
    bbtnTorol.Enabled := true;
    ParamGrid.SortField := 'NEV';
    ParamGrid.SortShow := true;
    qryKezParam.First;

    if Bongesz then
    begin
      mode:='BONG';
      BitBtn1.Enabled := True;
      BitBtn1.Visible := True;
    end;

    Result := ShowModal = mrOk;

    if Result then
    begin
      Id := qryKezParam.FieldByName('ID').Value;
      Kod := qryKezParam.FieldByName('KOD').Value;
      Nev := qryKezParam.FieldByName('NEV').Value;
    end;
    qryKezParam.Close;
    qryKezParam.DataSet.CommandText := sAlapSelect;    
    sdsCsoport.Close;
  end;
end;

procedure TfrmKezParam.actMegsemExecute(Sender: TObject);
begin
  qryKezParam.Close;
  frmKezParam.Close;
  inherited;
end;


procedure TfrmKezParam.bbtnModositClick(Sender: TObject);
begin
  if qryKezParam.RecordCount = 0 then exit;
  frmKezParamData.edtKOD.Text := qryKezParam.FieldByName('KOD').Value;
  frmKezParamData.edtNEV.Text := qryKezParam.FieldByName('NEV').Value;
  qryKezParam.Edit;  
  if frmKezParamData.ShowModal = mrOK then
  begin
    qryKezParam.Edit;
    qryKezParam.FieldByName('KOD').Value := frmKezParamData.edtKOD.Text;
    qryKezParam.FieldByName('NEV').Value := frmKezParamData.edtNEV.Text;
    qryKezParam.Post;
    qryKezParam.ApplyUpdates(0);
    qryKezParam.Refresh;
  end;
end;


procedure TfrmKezParam.bbtnTorolClick(Sender: TObject);
begin
  if qryKezParam.RecordCount = 0 then exit;
  inherited;
  dtmTarka.cnTarka.BeginTrans;
  try
    qryKezParam.Delete;
    qryKezParam.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction Then
      dtmTarka.cnTarka.RollbackTrans;
  end;
end;


procedure TfrmKezParam.bbtnUjClick(Sender: TObject);
begin
  inherited;
  qryKezParam.Append;
  frmKezParamData.edtKOD.Text := '';
  frmKezParamData.edtNEV.Text := '';
  if frmKezParamData.ShowModal = mrOK then
  begin
     qryKezParam.FieldByName('KOD').Value := frmKezParamData.edtKOD.Text;
     qryKezParam.FieldByName('NEV').Value := frmKezParamData.edtNEV.Text;
     qryKezParam.Post;
     qryKezParam.ApplyUpdates(0);
     qryKezParam.Refresh;     
  end
  else
    qryKezParam.Cancel;
end;

procedure TfrmKezParam.actOKExecute(Sender: TObject);
begin
//  inherited;
  if mode='BONG' then
    ModalResult := mrOk;
end;

procedure TfrmKezParam.TalSearch1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ParamGrid <> ActiveControl then
  case Key of
    Vk_Up: ParamGrid.DataSource.DataSet.Prior;
    Vk_Down: ParamGrid.DataSource.DataSet.Next;
    Vk_Prior: ParamGrid.DataSource.DataSet.MoveBy(-10);
    Vk_Next: ParamGrid.DataSource.DataSet.MoveBy(10);
  end;
  ParamGridKeyDown(Sender,Key,Shift);
  inherited;
end;

procedure TfrmKezParam.ParamGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if mode = 'BONG' then begin
    if Key = 13	then
      ModalResult := mrOK;
    if Key = 27 then
      Modalresult := mrCancel;
  end;
end;

procedure TfrmKezParam.ParamGridKeyPress(Sender: TObject; var Key: Char);
begin
  if mode = 'BONG' then begin
    if Key = #13 then
      ModalResult := mrOK;
  end;
end;

procedure TfrmKezParam.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if mode <> 'BONG' then
    inherited;
end;

procedure TfrmKezParam.FormShow(Sender: TObject);
begin
  inherited;
  if TalSearch1.CanFocus then TalSearch1.SetFocus;
end;

end.

