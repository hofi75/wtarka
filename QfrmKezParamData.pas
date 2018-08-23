unit QfrmKezParamData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, ActnList, StdCtrls, Buttons, uTALBitBtn, ExtCtrls, DB,
  Mask, uValidedit, uTALEdit, uTALLabel, DBCtrls, uTALDBLookupComboBox;

type
  TfrmKezParamData = class(TfrmKarbOs)   
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    edtKOD: TTalEdit;
    edtNEV: TTalEdit;
    TalLabel3: TTalLabel;
    TalDBLookupComboBox1: TTalDBLookupComboBox;
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKezParamData: TfrmKezParamData;

implementation

uses QfrmKezParam, udtmTarka;

{$R *.dfm}

procedure TfrmKezParamData.actOKExecute(Sender: TObject);
begin
  if edtKOD.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A k�d megad�sa k�telez�!', mtWarning, [mbOK], 0);
    edtKOD.SetFocus;
    exit;
  end;
  if edtNEV.Text = EmptyStr then begin
    dtmTarka.MsgDlg('A megnevez�s megad�sa k�telez�!', mtWarning, [mbOK], 0);
    edtNEV.SetFocus;
    exit;
  end;
  if frmKezParam.qryKezParam.State = dsInsert then begin
    if dtmTarka.VaneIlyenKezParam(edtKOD.Text) then begin
      dtmTarka.MsgDlg('M�r van ilyen k�d r�gz�tve!', mtWarning, [mbOK], 0);
      edtKOD.SetFocus;
      exit;
    end;
  end;
  inherited;
end;

end.
