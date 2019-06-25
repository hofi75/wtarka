unit ATorzskonyves;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, uTALDBLookupComboBox, DB, DBClient,
  uTALSimpleDataSet, Mask, uValidedit, uTALEdit, Buttons, uTALBitBtn, ADODB,
  frxClass, frxDBSet;

type
  TATorzskonyves = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dtsTenyeszet: TDataSource;
    cbTenyeszet: TTalDBLookupComboBox;
    edtBirthdate: TTalEdit;
    btnPrint: TTalBitBtn;
    ADOAtorzskonyv: TADOStoredProc;
    sdsTReturn: TTalSimpleDataSet;
    dtsTReturn: TDataSource;
    sdsTReturnV1: TWideStringField;
    sdsTReturnV2: TWideStringField;
    sdsTReturnV3: TWideStringField;
    sdsTReturnV4: TWideStringField;
    sdsTReturnV5: TWideStringField;
    sdsTReturnV6: TWideStringField;
    sdsTReturnV7: TWideStringField;
    frxTReturn: TfrxDBDataset;
    frxRepListak: TfrxReport;
    sdsTenyeszet: TTalSimpleDataSet;
    sdsTenyeszetLISTA: TWideStringField;
    sdsTenyeszetTKOD: TWideStringField;
    sdsTenyeszetEKOD: TWideStringField;
    sdsTenyeszetRKOD: TWideStringField;
    sdsTenyeszetALLAPOT: TWideStringField;
    sdsTenyeszetTIPUS: TWideStringField;
    sdsTenyeszetBDAT: TDateTimeField;
    sdsTenyeszetIRSZ: TIntegerField;
    sdsTenyeszetVAROS: TWideStringField;
    sdsTenyeszetKTNEV: TWideStringField;
    sdsTenyeszetKTJELL: TWideStringField;
    sdsTenyeszetHSZ: TWideStringField;
    sdsTenyeszetTNEV1: TWideStringField;
    sdsTenyeszetTNEV2: TWideStringField;
    sdsTenyeszetTNEV3: TWideStringField;
    sdsTenyeszetTEL: TWideStringField;
    sdsTenyeszetEMAIL: TWideStringField;
    sdsTenyeszetFAX: TWideStringField;
    sdsTenyeszetTIRSZ: TWideStringField;
    sdsTenyeszetTVAROS: TWideStringField;
    sdsTenyeszetTKTNEV: TWideStringField;
    sdsTenyeszetTKTJELL: TWideStringField;
    sdsTenyeszetTHSZ: TWideStringField;
    sdsTenyeszetKKOD: TWideStringField;
    sdsTenyeszetTMEGYE: TWideStringField;
    sdsTenyeszetCHANGED: TDateTimeField;
    sdsTenyeszetROW_ID: TVarBytesField;
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Procedure ATorzskonyvesCreate;

implementation

uses udtmtarka;

{$R *.dfm}

Procedure ATorzskonyvesCreate;
var
  ATorzskonyves: TATorzskonyves;

begin
  ATorzskonyves := TATorzskonyves.create(Application);
  ATorzskonyves.sdsTenyeszet.Open;

  if dtmTarka.TenyeszetTKOD = '' then
     ATorzskonyves.cbTenyeszet.KeyValue := '0000000'
  else
     ATorzskonyves.cbTenyeszet.KeyValue := dtmTarka.TenyeszetTKOD;

  if not dtmTarka.isAdmin then ATorzskonyves.cbTenyeszet.Enabled := False;

  ATorzskonyves.edtBirthdate.Text := DateToStr(IncMonth(Date,-12*2));
  ATorzskonyves.ShowModal;
end;

procedure TATorzskonyves.btnPrintClick(Sender: TObject);
begin

    Cursor := crHourGlass;
    dtmTarka.cnTarka.BeginTrans;
   try
      ADOAtorzskonyv.Prepared := True;
      ADOAtorzskonyv.Parameters.ParamByName('P_TKOD').Value := cbTenyeszet.KeyValue;
      ADOAtorzskonyv.Parameters.ParamByName('P_BIRTHDATE').Value := edtBirthdate.Text;
      ADOAtorzskonyv.ExecProc;
      dtmTarka.cnTarka.CommitTrans;
      ADOAtorzskonyv.Prepared := False;
  except
    on E:Exception do
    begin
      dtmTarka.cnTarka.RollbackTrans;
      ShowMessage( E.Message);
      Exit;
    end;
  end;
  Cursor := crDefault;

    sdsTReturn.Open;
    frxRepListak.ShowReport();
    sdsTReturn.Close;

end;

end.
