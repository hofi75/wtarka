unit QfrmDolgozok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmValasztoOs, ActnList,StdCtrls, Buttons, FmtBcd,  ExtCtrls, DB,
  Wwdbigrd, Wwdbgrid, uTALDBGrid, uTALSimpleDataSet, uTalParams, DBClient,
  Grids;

type
  TfrmDolgozok = class(TfrmValasztoOs)
    dtsDolg: TDataSource;
    actUj: TAction;
    actModosit: TAction;
    actTorol: TAction;
    actNyomtat: TAction;
    sdsDolg: TTalSimpleDataSet;
    sdsDolgFELH_KOD: TWidestringField;
    sdsDolgNEV: TWidestringField;
    sdsDolgJELSZO: TWidestringField;
    sdsDolgTIPUS: TWidestringField;
    sdsDolgTENYESZET: TWideStringField;
    procedure actUjExecute(Sender: TObject);
    procedure actModositExecute(Sender: TObject);
    procedure actTorolExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Karbantart(mode:string);    
  public
    { Public declarations }
  end;

var
  frmDolgozok: TfrmDolgozok;  

function Dolgbon:Boolean;

implementation

uses udtmTarka, QfrmDolgAdatok;

{$R *.dfm}

function Dolgbon():Boolean;
var
  SQL : string;
begin
  result := true;
  frmDolgozok := TfrmDolgozok.Create(Application);
  frmDolgozok.sdsDolg.Connection := dtmTarka.cnTarka;
  if (dtmTarka.UserKarb <> 'S') and (dtmTarka.UserKarb <> '2') then begin
    SQL := 'SELECT * FROM USEREK WHERE (TIPUS <> ''S'') and (TIPUS <> ''2'')';
  end else begin
    SQL := 'SELECT * FROM USEREK';
  end;
  frmDolgozok.sdsDolg.DataSet.CommandText := SQL;
  frmDolgozok.sdsDolg.Open;
  frmDolgozok.ShowModal;

  if frmDolgozok.sdsDolg.Active then
      frmDolgozok.sdsDolg.Close;
  frmDolgozok.Release;
end;


procedure TfrmDolgozok.Karbantart(mode: string);
var
  ls_dolgkod : string;
begin
  OpenDolgAdatok(mode);

  ls_Dolgkod := Self.sdsDolgFELH_KOD.AsString;
  Self.sdsDolg.DisableControls;

  dtmTarka.cnTarka.BegiNTrans;

  try
    sdsDolg.ApplyUpdates(0);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then
      dtmTarka.cnTarka.RollbackTrans;
  end;

  Self.sdsDolg.locate('FELH_KOD',ls_dolgkod,[]);
  Self.sdsDolg.EnableControls;
end;

procedure TfrmDolgozok.actUjExecute(Sender: TObject);
begin
  if (dtmTarka.UserKarb <> 'S') and (dtmTarka.UserKarb <> '2') then begin
     ShowMessage('Új felhasználó felvitele nem engedélyezett!');
     exit;
  end;
  Self.sdsDolg.Append;
  Self.sdsDolgTIPUS.AsInteger := 1;
  Karbantart('UJ');
  inherited;
end;

procedure TfrmDolgozok.actModositExecute(Sender: TObject);
begin
  if (dtmTarka.UserKarb <> 'S') and (dtmTarka.UserKarb <> '2') then begin
     ShowMessage('Felhasználó módosítása nem engedélyezett!');
     exit;
  end;
  self.sdsDolg.Edit;
  karbantart('Modosit');
  inherited;
end;

procedure TfrmDolgozok.actTorolExecute(Sender: TObject);
var
  SQL : string;
  ls_kod : string;
begin
  inherited;
  ls_kod := sdsDolgFELH_KOD.AsString;
  if (dtmTarka.UserKarb <> 'S') and (dtmTarka.UserKarb <> '2') then begin
     ShowMessage('Felhasználó törlése nem engedélyezett!');
     exit;
  end;
  if dtmTarka.MsgDlg('Biztos törli a dolgozót?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    SQL := 'delete from userek where felh_kod = ' + quotedstr(ls_kod);

    dtmTarka.cnTarka.BeginTrans;

    try
      dtmTarka.cnTarka.Execute(SQL);
      dtmTarka.cnTarka.CommitTrans;
    except
      if dtmTarka.cnTarka.InTransaction then
        dtmTarka.cnTarka.RollbackTrans;
    end;

    sdsDolg.Close;
    sdsDolg.Open;
  end;
end;


end.
