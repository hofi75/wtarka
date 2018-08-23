unit QSysTools;

interface

uses
  SysUtils, Classes, Windows;

const
  // LOG �lland�k
  LogName  = 'wtarka.log';               // log �llom�ny neve
  LogStr   = '%s Message: %s';           // minta mondat

var
  RootDir : string;                      // Log gy�k�r k�nyvt�r

function Log(const Entry: string): boolean;
function RunApplication(name: string; params: array of string): boolean;
function Conv852(inStr: string): string;

implementation


// Logol�s
function Log(const Entry: string): boolean;
var
  LogFile    : TextFile;
  AMessage   : String;
  TempDate   : String;
begin
  try
    // �zenet k�pz�se
    DateTimeToString(TempDate, 'yyyy.mm.dd. hh:nn:ss', Now);

    AMessage := Format(LogStr, [TempDate, Entry]);

    AssignFile(LogFile, RootDir + LogName);   // log �llom�ny �sszerendel�s

    if FileExists(RootDir + LogName) then
      Append(LogFile)                         // log meggnyit�sa �r�sra
    else
      Rewrite(LogFile);                       // vagy log l�trehoz�sa

    WriteLn(LogFile, AMessage);               // bejegyz�s
    CloseFile(LogFile);                       // log z�r�sa

    Result := True;
  except
    result := False;			                    // hiba eset�n false ret. �rt�k
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


// alkalmaz�s ind�t�sa
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
    Log('Programfuttat�si hiba...' + #10#13 + name + ' ' + p);
  end
  else
    Result := True;
end;


// DOS 852-es kaakterk�szlet konvert�l�sa
function Conv852(inStr: string): string;
var
  s : string;
  i : integer;
begin
  s := inStr;

  for i := 1 to length(s) do
    case s[i] of
         #$A0 : s[i]:='�';
         #$82 : s[i]:='�';
         #$A1 : s[i]:='�';
         #$A2 : s[i]:='�';
         #$94 : s[i]:='�';
         #$8B : s[i]:='�';
         #$A3 : s[i]:='�';
         #$81 : s[i]:='�';
         #$FB : s[i]:='�';

         #$B5 : s[i]:='�';
         #$90 : s[i]:='�';
         #$D6 : s[i]:='�';
         #$E0 : s[i]:='�';
         #$99 : s[i]:='�';
         #$8A : s[i]:='�';
         #$E9 : s[i]:='�';
         #$9A : s[i]:='�';
         #$EB : s[i]:='�';
    end;

  Result:=s;
end;

end.
