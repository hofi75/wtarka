unit QfrmMigration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uTALMemo, Buttons, uTALBitBtn, ExtCtrls, uTALPanel,
  ActnList, uTALLabel, DB, ADODB, uTalQuery, uTALStoredProc, uTALCheckBox;

type
  TfrmMigration = class(TForm)
    TalPanel1: TTalPanel;
    TalPanel2: TTalPanel;
    btnExit: TTalBitBtn;
    btnStart: TTalBitBtn;
    memState: TTalMemo;
    ActionList: TActionList;
    TalLabel1: TTalLabel;
    qChkState: TTalQuery;
    actExit: TAction;
    actStart: TAction;
    PROC_INIT_LOAD2: TTalStoredProc;
    PROC_INIT_LOAD1: TTalStoredProc;
    PROC_INIT_LOAD: TTalStoredProc;
    PROC_INIT_TOROL: TTalStoredProc;
    cbDeleteData: TTalCheckBox;
    GroupBox1: TGroupBox;
    cbKodImport: TTalCheckBox;
    PROC_INIT_LOAD3: TTalStoredProc;
    procedure actExitExecute(Sender: TObject);
    procedure actStartExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbDeleteDataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CheckMigrationState: boolean;
    procedure MLog(s : string);
  end;

var
  frmMigration: TfrmMigration;

implementation

uses  QSysTools, udtmTarka;

{$R *.dfm}


// migr�ci�  �lapot�nak ellen�rz�se;
function TfrmMigration.CheckMigrationState: boolean;
begin
  qChkState.Close;
  qChkState.Open;
  Result := qChkState.FieldByName('MIGRAL_JEL').Value = 0;
  qChkState.Close;
  if not Result then
    memState.Lines.Add('Az �telem�s m�r megt�rt�nt, t�bbsz�ri feldolgoz�s nem lehets�ges!')
end;


// Kil�p�s
procedure TfrmMigration.actExitExecute(Sender: TObject);
begin
  Close;
end;


// Adat�zis DBF adatok beemel�se
procedure TfrmMigration.actStartExecute(Sender: TObject);
begin
  btnStart.Enabled := False;

  // beemel�s �llapot�nak vizsg�lata
  if not CheckMigrationState then
  begin
    MLog('Indul� adatok �tv�tele nem lehets�ges, m�r �tv�ve!');
    Exit;
  end;

  try
    btnExit.Enabled := False;
    MLog('Indul� adatok �tv�tele elkezd�d�tt');

    // dts csomagok ellen�rz�se
    if not FileExists(dtmTarka.AppPath + '\dts\KOD_IMPORT.dts') then
    begin
      MLog('Indul� adatok �tv�tele nem lehets�ges, hi�nyz� KOD_IMPORT DTS csomag!');
      Exit;
    end;

    if not FileExists(dtmTarka.AppPath + '\dts\TALP_CONVERT.dts') then
    begin
      MLog('Indul� adatok �tv�tele lehets�ges, hi�nyz� TALP_CONVERT DTS csomag!');
      Exit;
    end;

      // Adatok t�rl�se
      if cbDeleteData.Checked then
      begin
        MLog('Adatok t�rl�se');
        dtmTarka.cnTarka.BeginTrans;
        try
          PROC_INIT_TOROL.Prepared := True;
          PROC_INIT_TOROL.ExecProc;

          dtmTarka.cnTarka.CommitTrans;
          MLog('Adatok t�rl�se k�sz');
          PROC_INIT_TOROL.Prepared := False;
        except
          on E:Exception do
          begin
            MLog('Adatok t�rl�se hib�s!');
            dtmTarka.cnTarka.RollbackTrans;
            MLog(E.Message);
            Exit;
          end;
        end;
      end;


      // Adatok beemel�se
      MLog('Adatok beemel�se : 1');
      dtmTarka.cnTarka.BeginTrans;
      try
        PROC_INIT_LOAD.Open;
        MLog('Adatok beemel�se: 1: rendben!');
        PROC_INIT_LOAD.Close;
      except
        on E:Exception do
        begin
          MLog('Adatok beemel�se 1 hib�s!');
          dtmTarka.cnTarka.RollbackTrans;
          PROC_INIT_LOAD.Close;
          MLog(E.Message);
          Exit;
        end
      end;

      MLog('Adatok beemel�se : 2');
      try
        PROC_INIT_LOAD1.Open;
        MLog('Adatok beemel�se: 2: rendben!');
        PROC_INIT_LOAD.Close;
      except
        on E:Exception do
        begin
          MLog('Adatok beemel�se 2 hib�s!');
          dtmTarka.cnTarka.RollbackTrans;
          PROC_INIT_LOAD1.Close;
          MLog(E.Message);
          Exit;
        end
      end;

      MLog('Adatok beemel�se : 3');
      try
        PROC_INIT_LOAD2.Open;
        MLog('Adatok beemel�se: 3: rendben!');
        PROC_INIT_LOAD2.Close;
      except
        on E:Exception do
        begin
          MLog('Adatok beemel�se 3 hib�s!');
          dtmTarka.cnTarka.RollbackTrans;
          PROC_INIT_LOAD2.Close;
          MLog(E.Message);
          Exit;
        end
      end;

      MLog('Adatok beemel�se : 4');
      try
        PROC_INIT_LOAD3.Open;
        MLog('Adatok beemel�se: 3: rendben!');
        PROC_INIT_LOAD3.Close;
        dtmTarka.cnTarka.CommitTrans;
      except
        on E:Exception do
        begin
          MLog('Adatok beemel�se 3 hib�s!');
          dtmTarka.cnTarka.RollbackTrans;
          PROC_INIT_LOAD3.Close;
          MLog(E.Message);
          Exit;
        end
      end;

  finally
    btnExit.Enabled := True;
  end;
end;


// Logol�s �s megjelen�t�s
procedure TfrmMigration.MLog(s: string);
begin
  Log(s);
  memState.Lines.Add(s);
end;


// Ablak l�trehoz�sa �s ellen�rz�s
procedure TfrmMigration.FormShow(Sender: TObject);
begin
  memState.Clear;

  // Migr�ci� �llapot ellen�rz�se
  btnStart.Enabled := CheckMigrationState;
end;


procedure TfrmMigration.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;


procedure TfrmMigration.cbDeleteDataClick(Sender: TObject);
begin
  if cbDeleteData.Checked then
end;


end.
