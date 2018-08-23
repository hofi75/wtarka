unit QfrmAzonositoValaszto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmValasztoOs, DB, DBClient, uTALSimpleDataSet, ActnList,
  StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, uTALDBGrid, ExtCtrls;

type
  TfrmAzonositoValaszto = class(TfrmValasztoOs)
    sdsKeres: TTalSimpleDataSet;
    dtsKeres: TDataSource;
    sdsKeresENAR: TWideStringField;
    sdsKeresAzonosito_mutat: TWideStringField;
    sdsKeresFULSZAM: TWideStringField;
    sdsKeresTEHENSZAM: TWideStringField;
    sdsKeresID_ENAR: TWideStringField;
    sdsKeresNEV: TWideStringField;
    sdsKeresKIKDAT: TDateTimeField;
    sdsKereski_ok: TWideStringField;
    sdsKereski_kod: TWideStringField;
    sdsKeresID: TBCDField;
    sdsKeresIVAR: TWideStringField;
    sdsKerestenyeszet: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdValDblClick(Sender: TObject);
  private
    { Private declarations }
    AlapSelect : string;
  public
    { Public declarations }
  end;


function AzonositoValaszto(psion_azon:string;var azonosito:string;var EgyedId:string; var Ivar:string; var sKikerultKod : string):boolean;

implementation

uses udtmTarka;

{$R *.dfm}

function AzonositoValaszto(psion_azon:string;var azonosito:string;var EgyedId:string; var Ivar:string; var sKikerultKod : string):boolean;
var
  frmAzonositoValaszto: TfrmAzonositoValaszto;
begin
  frmAzonositoValaszto := TfrmAzonositoValaszto.Create(Application);
  Result := false;

  try
    frmAzonositoValaszto.AlapSelect := frmAzonositoValaszto.sdsKeres.DataSet.CommandText;

    if frmAzonositoValaszto.sdsKeres.Active then
      frmAzonositoValaszto.sdsKeres.Close;

    frmAzonositoValaszto.sdsKeres.Connection := dtmTarka.cnTarka;

    if dtmTarka.TenyeszetWhere <> EmptyStr then
    begin
      frmAzonositoValaszto.sdsKeres.DataSet.CommandText :=
        frmAzonositoValaszto.AlapSelect + dtmTarka.TenyeszetWhereE;
    end;

    frmAzonositoValaszto.sdsKeres.DataSet.Parameters.ParamByName('P_AZON').Value := psion_azon;
    frmAzonositoValaszto.sdsKeres.DataSet.Parameters.ParamByName('P_AZON1').Value := psion_azon;
    frmAzonositoValaszto.sdsKeres.Open;
    frmAzonositoValaszto.Caption := psion_azon +' használati számmal rendelkezõ egyedek';

    if frmAzonositoValaszto.ShowModal = mrOK then
    begin
      Result := true;
      azonosito := frmAzonositoValaszto.sdsKeresENAR.AsString;
      egyedId := frmAzonositoValaszto.sdsKeresID.AsString;
      Ivar := frmAzonositoValaszto.sdsKeresIVAR.AsString;
      sKikerultKod := frmAzonositoValaszto.sdsKereski_kod.AsString;
      if sKikerultKod = ',' then sKikerultKod := '';
    end;
  finally
    frmAzonositoValaszto.sdsKeres.Close;
    FreeAndNil(frmAzonositoValaszto);
  end;
end;

procedure TfrmAzonositoValaszto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
end;

procedure TfrmAzonositoValaszto.grdValDblClick(Sender: TObject);
begin
  actOKExecute(Nil);
  inherited;
end;

end.
