unit QfrmGyFelh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmValasztoOs, ActnList, StdCtrls, Buttons, Wwdbigrd, Grids,
  Wwdbgrid, uTALDBGrid, ExtCtrls, DB, DBClient, uTALSimpleDataSet;

type
  TfrmGyFelh = class(TfrmValasztoOs)
    sdsFelh: TTalSimpleDataSet;
    dtsFelh: TDataSource;
    sdsFelhKEZ_DATUM: TDateTimeField;
    sdsFelhMENNY: TBCDField;
    sdsFelhME: TWidestringField;
    sdsFelhNEV: TWidestringField;
    sdsFelhENAR: TWidestringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


procedure Felh(klt_id : string);

implementation

uses udtmTarka;

procedure Felh(klt_id : string);
var
  frmGyFelh: TfrmGyFelh;
begin
  frmGyFelh := TfrmGyFelh.Create(Application);
  if klt_id = EmptyStr then klt_id := '0';
  try
    with frmGyFelh do begin
      sdsFelh.Connection := dtmTarka.cnTarka;
      sdsFelh.DataSet.Parameters[0].Value := klt_id;
      sdsFelh.DataSet.Parameters[1].Value := klt_id;
      sdsFelh.DataSet.Parameters[2].Value := klt_id;
      sdsFelh.DataSet.Parameters[3].Value := klt_id;
      sdsFelh.open;

      ShowModal;      
    end;
  finally
    FreeAndNil(frmGyFelh);
  end;
end;

{$R *.dfm}

end.
