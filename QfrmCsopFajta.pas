unit QfrmCsopFajta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, DBCtrls, uTALDBLookupComboBox, StdCtrls, uTALLabel,
  ActnList, Buttons, uTALBitBtn, ExtCtrls, uTALComboBox, DB, ADODB,
  uTalQuery;

type
  TfrmCsopFaj = class(TfrmKarbOs)
    TalLabel1: TTalLabel;
    TalLabel7: TTalLabel;
    qryInfFajta: TTalQuery;
    dtsInfFajta: TDataSource;
    lucFajta: TTalComboBox;
    qryInfFajtaFKOD: TIntegerField;
    qryInfFajtaFNEV: TWideStringField;
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
    fajtakod : array of string;
  public
    { Public declarations }
  end;

function OpenCsopFajta : Boolean;

implementation

uses udtmTarka, QfrmEnarBe;

{$R *.dfm}

function OpenCsopFajta:Boolean;
var
  frmCsopFaj: TfrmCsopFaj;
  i : integer;
begin
  Result := true;
  frmCsopFaj := TfrmCsopFaj.Create(Application);
  frmCsopFaj.qryInfFajta.Connection := dtmTarka.cnTarka;
  try
    frmCsopFaj.qryInfFajta.Open;
    SetLength(frmCsopFaj.fajtakod ,frmCsopFaj.qryInfFajta.RecordCount);
    i := 0;
    while not frmCsopFaj.qryInfFajta.Eof do begin
      frmCsopFaj.lucFajta.Items.Add(frmCsopFaj.qryInfFajtaFNEV.AsString);
      frmCsopFaj.fajtakod[i] := frmCsopFaj.qryInfFajtaFKOD.AsString;
      i := i+1;
      frmCsopFaj.qryInfFajta.Next;
    end;
    frmCsopFaj.qryInfFajta.Close;
    if frmCsopFaj.ShowModal = mrOK then
      result := true;
  finally
    frmCsopFaj.Release;
  end;
end;



procedure TfrmCsopFaj.actOKExecute(Sender: TObject);
var
  holvan : string;
  sf : string;
begin
  if lucFajta.Text = EmptyStr then begin
    dtmTarka.MsgDlg('Nem választott fajtát!', mtWarning, [mbOK], 0);
    lucFajta.SetFocus;
    exit;
  end;
  try
    with frmEnarBe.sdsEnarBe do begin
      DisableControls;
      sf := frmEnarBe.grdVal.SortField;
      frmEnarBe.grdVal.SortField := '';
      holvan := fieldByName('ENAR').AsString;
      first;
      while not eof do begin
        if trim(FieldByName('fajtakod').AsString) = EmptyStr then begin
          edit ;
          FieldByName('fajtakod').AsString := Self.fajtakod[lucFajta.itemIndex];
          post;
        end;
        next;
      end;
    end;
  finally
    frmEnarBe.grdVal.SortField := sf;
    frmEnarBe.sdsEnarBe.EnableControls;
  end;
  if frmEnarBe.sdsEnarBe.ChangeCount > 0 then begin
    dtmTarka.cnTarka.BeginTrans;
    try
      frmEnarBe.sdsEnarBe.ApplyUpdates(0);
      dtmTarka.cnTarka.CommitTrans;
    except
      if dtmTarka.cnTarka.InTransaction then
        dtmTarka.cnTarka.RollbackTrans;
    end;
  end;

  inherited;

end;

end.
