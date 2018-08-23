unit QfrmBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uTALMemo, Buttons, uTALBitBtn, ExtCtrls, uTALPanel, IniFiles,
  ActnList, DB, ADODB, uTalQuery, uTalCommand, uTALButton, uTALLabel, Mask,
  uValidedit, uTALEdit;


const
  DBDir = '\backup\';

type
  TfrmBackup = class(TForm)
    TalPanel1: TTalPanel;
    TalPanel2: TTalPanel;
    btnStart: TTalBitBtn;
    btnExit: TTalBitBtn;
    memBackup: TTalMemo;
    ActionList: TActionList;
    actStart: TAction;
    actExit: TAction;
    procedure actExitExecute(Sender: TObject);
    procedure actStartExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MLog(s: string);
    procedure RenameFile(FOld, FNew: string);
    function ExecuteBackup: boolean;
    procedure MentesDatumElmentese;
  end;

var
  frmBackup: TfrmBackup;

implementation

uses udtmTarka, QSysTools;

{$R *.dfm}

// Kil�p�s
procedure TfrmBackup.actExitExecute(Sender: TObject);
begin
  Close;
end;


// Backup
procedure TfrmBackup.actStartExecute(Sender: TObject);
begin
  try
    if ExecuteBackup then
      MentesDatumElmentese;
  except
    on E:Exception do
      MLog(E.Message);
  end;
end;


// Logol�s
procedure TfrmBackup.MLog(s: string);
begin
  Log(s);
  memBackup.Lines.Add(s);
end;


// File �tnevez�se
procedure TfrmBackup.RenameFile(FOld, FNew: string);
var
  f: file;
begin
  try
    AssignFile(f, FOld);
    Rename(f, FNew);
  except
    MLog('�tnevez�s sikertelen: ' + Fold +' -> ' +FNew);
  end;
end;


// kijelz� t�rl�se
procedure TfrmBackup.FormShow(Sender: TObject);
begin
  memBackup.Clear;
end;


procedure TfrmBackup.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;


procedure TfrmBackup.MentesDatumElmentese;
var
  SQL : string;
begin
  SQL := 'update PARAM set UT_MENT_DAT = CURRENT_TIMESTAMP';

  dtmTarka.cnTarka.BeginTrans;
  try
    dtmTarka.cnTarka.Execute(SQL);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction then begin
      dtmTarka.cnTarka.RollbackTrans;
    end;
  end;

end;


// Ment�s a telep�tett batch file seg�ts�g�vel
function TfrmBackup.ExecuteBackup: boolean;
begin
    DeleteFile(dtmTarka.AppPath + DBDir + 'tarka.dmp_5');
    RenameFile(dtmTarka.AppPath + DBDir + 'tarka.dmp_4', dtmTarka.AppPath + DBDir + 'tarka.dmp_5');
    RenameFile(dtmTarka.AppPath + DBDir + 'tarka.dmp_3', dtmTarka.AppPath + DBDir + 'tarka.dmp_4');
    RenameFile(dtmTarka.AppPath + DBDir + 'tarka.dmp_2', dtmTarka.AppPath + DBDir + 'tarka.dmp_3');
    RenameFile(dtmTarka.AppPath + DBDir + 'tarka.dmp_1', dtmTarka.AppPath + DBDir + 'tarka.dmp_2');
    RenameFile(dtmTarka.AppPath + DBDir + 'tarka.dmp', dtmTarka.AppPath + DBDir + 'tarka.dmp_1');
    MLog('Kor�bbi ment�sek kezel�se k�sz');

  MLog('Adatb�zis ment�s ind�t�sa');
//  Result := RunApplication('C:\oraclexe\app\oracle\product\10.2.0\server\BIN\Backup.bat', []);
  Result := RunApplication(dtmTarka.AppPath + '\sql\export_tarka.bat', []);
//  if not Result then
//    MLog('Adatb�zis ment�s hib�s, k�rem �rtes�tse a rendszergazd�t!')
//  else
    MLog('Adatb�zis ment�s k�sz');
end;


end.
