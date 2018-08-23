unit QfrmNETPontRead;

interface

uses
//  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
//  Dialogs, QfrmKarbOs, ActnList, StdCtrls, Buttons, uTALBitBtn, ExtCtrls,
//  uTALLabel, Mask, uValidedit, uTALEdit;

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, ActnList, StdCtrls, Buttons, uTALBitBtn, ExtCtrls,
  Mask, uValidedit, uTALEdit, uTALLabel, DB, DBClient, uTALSimpleDataSet,
  ADODB, uTALConnection, uTALStoredProc;


type
  TfrmNETPontRead = class(TfrmKarbOs)
    edtFFileName: TTalEdit;
    TalBitBtn3: TTalBitBtn;
    TalLabel3: TTalLabel;
    OpenDialog: TOpenDialog;
    progressLabel: TTalLabel;

    procedure TalBitBtn3Click(Sender: TObject);
    procedure actOKExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNETPontRead: TfrmNETPontRead;

procedure NetPontszamRead;


implementation

uses udtmTarka;

procedure NetPontszamRead;
var
  frmNETPontRead: TfrmNETPontRead;
begin
  frmNETPontRead := TfrmNETPontRead.Create(Application);

  frmNETPontRead.ShowModal;

  FreeAndNil(frmNETPontRead);
end;

procedure TfrmNETPontRead.TalBitBtn3Click(Sender: TObject);
begin

    if OpenDialog.Execute then
        edtFFileName.Text := OpenDialog.FileName;

    if not FileExists(edtFFileName.Text) then begin
        dtmTarka.MsgDlg('Beolvasás nem lehetséges, hiányzik a '+ edtFFileName.Text + ' fájl!',mterror,[mbOK],0 );
        Exit;
    end;
end;


{$R *.dfm}


procedure TfrmNETPontRead.actOKExecute(Sender: TObject);
var
  TxtFile : TextFile;
  fb : string;
  oRekordszam, iRekordSzam, i : integer;
  FileNev : string;
  sEgyedKod : string;
  F : file;
  sql : string;

  tmpStringList : TStringList;
  OK : Boolean;

begin

    try
        FileNev := edtFFileName.Text;
        AssignFile (TxtFile, FileNev);
        dtmTarka.cnTarka.BeginTrans;
        Reset( TxtFile);
        tmpStringList := TStringList.Create;

            // skip first line
        Readln(TxtFile, fb);

        iRekordSzam := 0;

        while not Eoln(TxtFile) do begin

            Readln( TxtFile, fb);

            iRekordSzam := iRekordSzam + 1;
            if iRekordszam mod 100 = 0 then
            begin
               progressLabel.Caption := 'Feldolgozott rekordok: ' + IntToStr( iRekordSzam);
               progressLabel.Update;
            end;

            // Pontosvesszõ a szeparátor...
            i := ExtractStrings( [';'], [' '], PChar( fb ), tmpStringList );
            sql := 'update egyedek ' +
                   'set net_pont = ' + tmpStringList[1] + ' ' +
                   'where enar = ''' + tmpStringList[0] + '''';
            dtmTarka.cnTarka.Execute(SQL);
            tmpStringList.Clear;
        end;

        tmpStringList.Clear;
        dtmTarka.cnTarka.CommitTrans;

    except
        on E:Exception do begin
            if dtmTarka.cnTarka.InTransaction then
               dtmTarka.cnTarka.RollbackTrans;
            dtmTarka.MsgDlg('A beolvasás hibás: ' + sql,mterror,[mbOK],0 );
            Raise Exception.Create(E.message);
        end;
    end;

    CloseFile(TxtFile);
//    if sdsKullem.active then
//        sdsKullem.Close;
    dtmTarka.MsgDlg('A beolvasás sikerült!',mtInformation,[mbOK],0 );
    ModalResult := mrOK;
    tmpStringList.Free;

end;

end.
