unit QSysTools;

interface

uses
  SysUtils, Classes, Windows;

const
  // LOG állandók
  LogName  = 'wtarka.log';               // log állomány neve
  LogStr   = '%s Message: %s';           // minta mondat

var
  RootDir : string;                      // Log gyökér könyvtár

function Log(const Entry: string): boolean;
function RunApplication(name: string; params: array of string): boolean;
function Conv852(inStr: string): string;

implementation


// Logolás
function Log(const Entry: string): boolean;
var
  LogFile    : TextFile;
  AMessage   : String;
  TempDate   : String;
begin
  try
    // üzenet képzése
    DateTimeToString(TempDate, 'yyyy.mm.dd. hh:nn:ss', Now);

    AMessage := Format(LogStr, [TempDate, Entry]);

    AssignFile(LogFile, RootDir + LogName);   // log állomány összerendelés

    if FileExists(RootDir + LogName) then
      Append(LogFile)                         // log meggnyitása írásra
    else
      Rewrite(LogFile);                       // vagy log létrehozása

    WriteLn(LogFile, AMessage);               // bejegyzés
    CloseFile(LogFile);                       // log zárása

    Result := True;
  except
    result := False;			                    // hiba esetén false ret. érték
  end;
end;


function WinExecAndWait32(FileName: string; Visibility: integer): LongInt;
var
   zAppName: array[0..32767] of char;
   StartupInfo: TStartupInfo;
   ProcessInfo: TProcessInformation;
begin
  StrPCopy(zAppName, FileName);
  FillChar(StartupInfo, Sizeof(StartupInfo), #0);

  StartupInfo.cb := Sizeof(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;

  if not CreateProcess(nil,
    zAppName, { pointer to command line string }
    nil, { pointer to process security attributes }
    nil, { pointer to thread security attributes }
    False, { handle inheritance flag }
    CREATE_NEW_CONSOLE or { creation flags }
    NORMAL_PRIORITY_CLASS,
    nil, { pointer to new environment block }
    nil, { pointer to current directory name }
    StartupInfo, { pointer to STARTUPINFO }
    ProcessInfo) then { pointer to PROCESS_INF }
    Result := -1
  else
  begin
    WaitforSingleObject(ProcessInfo.hProcess, INFINITE);
    GetExitCodeProcess(ProcessInfo.hProcess, Cardinal(Result));
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;
end;


// alkalmazás indítása
function RunApplication(name: string; params: array of string): boolean;
var
  i:integer;
  p:string;
begin
  p:='';

  for i:=0 to high(params) do
    p:=p + ' ' + params[i];

  p := TrimRight(TrimLeft(p));

  if WinExecAndWait32(name + ' ' + p, 1) <> 0 then
  begin
    Result := False;
    Log('Programfuttatási hiba...' + #10#13 + name + ' ' + p);
  end
  else
    Result := True;
end;


// DOS 852-es kaakterkészlet konvertálása
function Conv852(inStr: string): string;
var
  s : string;
  i : integer;
begin
  s := inStr;

  for i := 1 to length(s) do
    case s[i] of
         #$A0 : s[i]:='á';
         #$82 : s[i]:='é';
         #$A1 : s[i]:='í';
         #$A2 : s[i]:='ó';
         #$94 : s[i]:='ö';
         #$8B : s[i]:='õ';
         #$A3 : s[i]:='ú';
         #$81 : s[i]:='ü';
         #$FB : s[i]:='û';

         #$B5 : s[i]:='Á';
         #$90 : s[i]:='É';
         #$D6 : s[i]:='Í';
         #$E0 : s[i]:='Ó';
         #$99 : s[i]:='Ö';
         #$8A : s[i]:='Õ';
         #$E9 : s[i]:='Ú';
         #$9A : s[i]:='Ü';
         #$EB : s[i]:='Û';
    end;

  Result:=s;
end;

end.
