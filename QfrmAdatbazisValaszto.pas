unit QfrmAdatbazisValaszto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, StdCtrls, ActnList, Buttons, ExtCtrls,IniFiles,
  uTALBitBtn;

type
  TfrmAdatbazsValaszto = class(TfrmKarbOs)
    ListBox1: TListBox;
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


function AdatbazisValaszto(IniFile:TIniFile):string;

implementation

uses udtmTarka;

{$R *.dfm}

function AdatbazisValaszto(IniFile:TIniFile):string;
var
  frmAdatbazsValaszto: TfrmAdatbazsValaszto;
  Nevek : TStringList;
  Cimek : TStringList;
  i : integer;
begin
  frmAdatbazsValaszto := TfrmAdatbazsValaszto.Create(Application);

  nevek := TStringList.Create;
  cimek := TStringList.Create;

  IniFile.ReadSections(nevek);
  IniFile.ReadSection('DATABASES', frmAdatbazsValaszto.ListBox1.Items);
  IniFile.ReadSectionValues('DATABASES', cimek);

  if Nevek[0] = 'DATABASES' then
  begin
    frmAdatbazsValaszto.ListBox1.Selected[0] := true;
    if frmAdatbazsValaszto.ListBox1.Count  > 1 then
    begin
      if frmAdatbazsValaszto.ShowModal = mrOK then begin
        for i:=0 to frmAdatbazsValaszto.ListBox1.count-1 do
        begin
          if frmAdatbazsValaszto.ListBox1.Selected[i] then
          begin
            Result := IniFile.ReadString('DATABASES', frmAdatbazsValaszto.ListBox1.Items[i], 'Tarka');
            dtmTarka.sAdatbazisNev := frmAdatbazsValaszto.ListBox1.Items[i] + '  (' + IniFile.ReadString(Result, 'Database', '') + ')';;
            dtmTarka.sAdatbazis := IniFile.ReadString('DATABASES', frmAdatbazsValaszto.ListBox1.Items[i], 'Tarka');
          end;
        end;
      end;
    end
    else
    begin
      Result := IniFile.ReadString('DATABASES', frmAdatbazsValaszto.ListBox1.Items[0], 'Tarka');
      dtmTarka.sAdatbazisNev := frmAdatbazsValaszto.ListBox1.Items[0] + '  ('+IniFile.ReadString(Result,'Database','')+')';
      dtmTarka.sAdatbazis := IniFile.ReadString('DATABASES', frmAdatbazsValaszto.ListBox1.Items[0],'Tarka');
    end;
  end
  else
  begin
    Result := 'Tarka';
    dtmTarka.sAdatbazisNev := Result + '  ('+IniFile.ReadString(Result,'Database', '') + ')';
    dtmTarka.sAdatbazis := 'Tarka';
  end;

  FreeAndNil(frmAdatbazsValaszto);
end;

procedure TfrmAdatbazsValaszto.ListBox1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
  inherited;
end;

end.
