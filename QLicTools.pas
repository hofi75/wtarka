{*******************************************************************************
  Project: wTarka
  Desc:    Licence tool functions
  Author:  Pathó Endre and many others
  Date:    2006.07.26
  --------------------------------------------------------
  MISC: Use TARKA_FLAG in project tarka
*******************************************************************************}
unit QLicTools;

{$DEFINE TARKA_FLAG}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Dialogs, magwmi, magsubs1, StdCtrls, rjMime, DB, DBClient,
  StrUtils, uTalQuery, ADODB, uTALConnection;

function getlics(nap : TDateTime; off: integer) : string;
function getlicf(nap : TDateTime; off: integer) : string;
function complic (const lics, licf: string) : boolean;
function glicf(const lPath : string): string;
function slicf(const lPath, licf: string) : boolean;
function glicv(const lics: string; aDate: TDateTime) : boolean;
function slicd(const licf: string; licd: TDateTime) : string;

{$IFDEF TARKA_FLAG}
function slicff : boolean;
function glics: string;
function slics(const lics : string): boolean;
function ChkLic(var LicDate: TDateTime): boolean;
{$ENDIF}

function glicd(const licf: string; var MName, HDD, OS, Dt : string): boolean;

implementation

{$IFDEF TARKA_FLAG}
uses udtmTarka, QSysTools;
{$ENDIF}

function getmix(dtype : integer; amin : string): string;
var
  i : integer;
  sout : string;
begin
  sout := '';
  for i := 1 to Length(amin) do
    if dtype = 11 then
      sout := sout + char(byte(amin[i]) xor $22)
    else
      sout := sout + char(byte(amin[i]) xor $12);

  result := sout;
end;



function getlics(nap : TDateTime; off: integer) : string;
var
  DecData : string;
  EncData : string;
begin
  DecData := '';
  DecData := DecData + GetCompName;                           // 1
  DecData := DecData + TAB + MagWmiGetDiskSerial(0);          // 2
  DecData := DecData + TAB + MagWmiGetOSInfo('SerialNumber'); // 3
  DecData := DecData + TAB + IntToStr(Trunc(nap) + off);       // 4
  EncData := getmix(11, DecData);

  result := MimeEncodeString(EncData);
end;


function getlicf(nap : TDateTime; off: integer) : string;
var
  DecData : string;
  EncData : string;
begin
  DecData := '';
  DecData := DecData + GetCompName;
  DecData := DecData + TAB + MagWmiGetDiskSerial(0);
  DecData := DecData + TAB + MagWmiGetOSInfo('SerialNumber');
  DecData := DecData + TAB + IntToStr(Trunc(nap) + off);
  EncData := getmix(12, DecData);

  Result := MimeEncodeString(EncData);
end;


function complic(const lics, licf: string) : boolean;
var
  ress, resf : string;
  p : integer;
  ds, df : string;
begin
  if lics = EmptyStr then
  begin
    result := false;
    Exit;
  end;

  ress := MimeDecodeString(lics);
  ress := getmix(11, ress);

  if licf = EmptyStr then
  begin
    result := false;
    Exit;
  end;

  resf := MimeDecodeString(licf);
  resf := getmix(12, resf);

  p := LastDelimiter(TAB, resf);

  df := copy(resf, p+1, Length(resf)-p);
  ds := copy(ress, p+1, Length(ress)-p);

  result := copy(ress, 1, p) = copy(resf, 1, p);

{$IFDEF TARKA_FLAG}
  if result and (df > ds) then
    if not slicff then
    begin
      ShowMessage('Licence frissítési hiba!');
      Halt(3);
    end;
{$ENDIF}    
end;


function slicf(const lPath, licf: string) : boolean;
var
  f : file;
  lc : integer;
begin
  try
    AssignFile(f, lPath);
    Rewrite(f, 1);
    BlockWrite(f, licf[1], Length(licf), lc);
    CloseFile(f);
    Result := lc = Length(licf);
  except
    Result := False;
  end;
end;


function glicf(const lPath : string): string;
var
  f : file;
  l : array [0..10] of char;
  lc : integer;
begin
  try
    fillchar(l, Sizeof(l), 0);
    AssignFile(f, lPath);
    Reset(f, 1);
    lc := 1;
    while not EOF(f) do
    begin
      BlockRead(f, l, 1, lc);
      if lc > 0 then
        Result := Result + l[0]
      else
        break;
    end;
    CloseFile(f);
    // Result := l;
  except
    Result := '';
  end;
end;


{$IFDEF TARKA_FLAG}
function glicsx: boolean;
var
  ds : TTalQuery;
begin
  ds := TTalQuery.Create(nil);
  ds.Connection := dtmTarka.cnTarka;
  ds.SQL.Add('select linux from param');
  ds.Open;
  Result := ds.FieldByName('LINUX').Value = 1;
  ds.Close;
  ds.Free;
end;

function glics: string;
var
  ds : TTalQuery;
begin
  ds := TTalQuery.Create(nil);
  ds.Connection := dtmTarka.cnTarka;
  ds.SQL.Add('select lic1, lic2 from param');
  ds.Open;
  Result := ds.FieldByName('LIC2').AsString + ds.FieldByName('LIC1').AsString;
  ds.Close;
  ds.Free;
end;


function slics(const lics : string): boolean;
var
  ds : TTalQuery;
  l1 : string;
  l2 : string;
begin
  ds := TTalQuery.Create(nil);
  ds.Connection := dtmTarka.cnTarka;
  l2 := LeftStr(lics, 20);
  l1 := Copy(lics, 21, Length(lics) - 20);
  ds.SQL.Add('update param set lic1 = ' + QuotedStr(l1));
  ds.SQL.Add(', lic2 = ' + QuotedStr(l2));
  ds.ExecSQL;
  ds.Free;
  Result := True;
end;
{$ENDIF}

function glicv(const lics: string; aDate: TDateTime) : boolean;
var
  ress : string;
  p : integer;
  base : string;
begin
  ress := MimeDecodeString(lics);
  ress := getmix(11, MimeDecodeString(lics));

  base := '';
  base := base + GetCompName;
  base := base + TAB + MagWmiGetDiskSerial(0);
  base := base + TAB + MagWmiGetOSInfo('SerialNumber');

  if AnsiStartsStr(base, ress) then
  begin
    p := LastDelimiter(TAB, ress);
    inc(p);
    ress := Copy(ress, p, (Length(ress)-p)+1);
    Result := ress >= IntToStr(Trunc(aDate));
  end
  else Result := False;
end;


function glicd(const licf: string; var MName, HDD, OS, Dt : string): boolean;
var
  ress : string;
  p : integer;
  lp : integer;
begin
  ress := MimeDecodeString(licf);
  ress := getmix(12, MimeDecodeString(licf));
  p := 1;

  p := PosEx(TAB, ress, p);
  MName := Copy(ress, 1, p-1);

  lp := p + 1;
  p := PosEx(TAB, ress, p+1);
  HDD := Copy(ress, lp, p-lp);

  lp := p + 1;
  p := PosEx(TAB, ress, p+1);
  OS := Copy(ress, lp, p-lp);

  lp := p + 1;
  Dt := Copy(ress, lp, (Length(ress)-lp)+1);

  Result := (MName <> EmptyStr) and (HDD <> EmptyStr) and (OS <> EmptyStr) and (Dt <> EmptyStr);
end;


function slicd(const licf: string; licd: TDateTime) : string;
var
  DecData : string;
  EncData : string;
  p : integer;
begin
  DecData := MimeDecodeString(licf);
  DecData := getmix(12, MimeDecodeString(licf));

  p := LastDelimiter(TAB, DecData);

  DecData := Copy(DecData, 1, p) + IntToStr(Trunc(licd));
  EncData := getmix(12, DecData);

  Result := MimeEncodeString(EncData);
end;

{$IFDEF TARKA_FLAG}
function slicff : boolean;
var
  licf, lics : string;
begin
  licf := glicf(dtmTarka.AppPath +  '\licence.tarka');

  lics := MimeDecodeString(licf);
  lics := getmix(12, MimeDecodeString(licf));

  lics := getmix(11, lics);
  lics := MimeEncodeString(lics);

  Result := slics(lics);
end;


function ChkLic(var LicDate: TDateTime): boolean;
var
  licf, lics : string;
  MName,
  HDD, OS, Dt : string;
begin
  Result := False;

  if dtmTarka = NIL then
    Exit;

  // osztott c/s használat miatt
  if glicsx then
  begin
    LicDate := today() + 30;
    Result := True;
    Exit;
  end;

  licf := glicf(dtmTarka.AppPath + '\licence.tarka');
  lics := glics;

  if (licf = EmptyStr) and (lics = EmptyStr) then
  begin
    licf := getlicf(Today, 30);
    lics := getlics(Today, 30);
    slicf(dtmTarka.AppPath + '\licence.tarka', licf);
    slics(lics)
  end
  else
  begin
    if not complic(lics, licf) then
    begin
      ShowMessage('Licenc hiba!');
      Halt(1);
    end;
    if not glicv(lics, Today) then
    begin
      ShowMessage('Lejárt a licenc!');
      Halt(2);
    end
    else
    begin
      if glicd(licf, MName, HDD, OS, Dt) then
        log('Licdatum : ' + dt);
        LicDate := StrToInt(Dt);

    end;

    Result := True;
  end;
end;
{$ENDIF}

end.
