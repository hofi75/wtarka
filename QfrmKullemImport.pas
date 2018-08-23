unit QfrmKullemImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, ActnList, StdCtrls, Buttons, uTALBitBtn, ExtCtrls,
  Mask, uValidedit, uTALEdit, uTALLabel, DB, DBClient, uTALSimpleDataSet,
  ADODB, uTALConnection, uTALStoredProc;

type
  TfrmKullemImport = class(TfrmKarbOs)
    OpenDialog: TOpenDialog;
    sdsKullem: TTalSimpleDataSet;
    sdsKullemID: TBCDField;
    sdsKullemEGYED_ID: TBCDField;
    sdsKullemDATUM: TDateTimeField;
    sdsKullemSSZ: TIntegerField;
    sdsKullemTENY_KOD: TStringField;
    sdsKullemFARMAGASSAG: TStringField;
    sdsKullemEROSSEG: TStringField;
    sdsKullemTORZSMELYSEG: TStringField;
    sdsKullemELESSEG: TStringField;
    sdsKullemFARLEJTES: TStringField;
    sdsKullemFARSZELESSEG: TStringField;
    sdsKullemH_LAB_OLDAL: TStringField;
    sdsKullemH_LAB_HATUL: TStringField;
    sdsKullemLOCOMOTION: TStringField;
    sdsKullemKOROMSZOG: TStringField;
    sdsKullemELSO_TOGY_ILLE: TStringField;
    sdsKullemHATSO_TOGY_ILLE: TStringField;
    sdsKullemHATSO_TOGY_SZEL: TStringField;
    sdsKullemTOGYFUGGESZTES: TStringField;
    sdsKullemTOGYMELYSEG: TStringField;
    sdsKullemBIMBOHELYEZODES: TStringField;
    sdsKullemBIMBO_HOSSZ: TStringField;
    sdsKullemHATSO_BIMBO_HELY: TStringField;
    sdsKullemTESTPONT: TStringField;
    sdsKullemLAB_LABVEG: TStringField;
    sdsKullemALT_MEGJELENES: TStringField;
    sdsKullemTEJELO_JELLEG: TStringField;
    sdsKullemTEST_KAPACITAS: TStringField;
    sdsKullemTOGY_PONTSZAM: TStringField;
    sdsKullemVEGSO_PONTSZAM: TStringField;
    sdsKullemAKAKO: TStringField;
    sdsKullemMODOSITAS_DATUM: TDateTimeField;
    TalLabel1: TTalLabel;
    edtFileName: TTalEdit;
    TalBitBtn1: TTalBitBtn;
    TalDbfCon: TTalConnection;
    TblBika: TADOTable;
    lblDb: TTalLabel;
    sdsBika: TTalSimpleDataSet;
    sdsBikaKLSZ: TWideStringField;
    sdsBikaFULSZAM: TWideStringField;
    sdsBikaNEV: TWideStringField;
    sdsBikaSZDAT: TDateTimeField;
    sdsBikaHASZNOSIT: TWideStringField;
    sdsBikaERKEZES: TWideStringField;
    sdsBikaSZARM_ORSZ: TWideStringField;
    sdsBikaEXP_ORSZ: TWideStringField;
    sdsBikaFAJTA1: TWideStringField;
    sdsBikaFAJTA2: TWideStringField;
    sdsBikaFAJTA3: TWideStringField;
    sdsBikaFAJTA4: TWideStringField;
    sdsBikaFAJTA5: TWideStringField;
    sdsBikaFAJTA_OSZ: TWideStringField;
    sdsBikaVERH1: TBCDField;
    sdsBikaVERH2: TBCDField;
    sdsBikaVERH3: TBCDField;
    sdsBikaVERH4: TBCDField;
    sdsBikaVERH5: TBCDField;
    sdsBikaAP_KLSZ: TWideStringField;
    sdsBikaAN_FULSZAM: TWideStringField;
    sdsBikaANAPA_KLSZ: TWideStringField;
    sdsBikaSZINKOD: TWideStringField;
    sdsBikaREDFAKTOR: TWideStringField;
    sdsBikaTENYESZTO: TWideStringField;
    sdsBikaTULAJ: TWideStringField;
    sdsBikaHELYE: TWideStringField;
    sdsBikaEL_E: TWideStringField;
    sdsBikaSP_VAN: TWideStringField;
    sdsBikaMOD_DATUM: TDateTimeField;
    sdsBikaITVSTATUS: TWideStringField;
    procMerge: TTalStoredProc;
    TalLabel2: TTalLabel;
    edtEFileName: TTalEdit;
    TalBitBtn2: TTalBitBtn;
    TalLabel3: TTalLabel;
    edtFFileName: TTalEdit;
    TalBitBtn3: TTalBitBtn;
    proc_biktor: TTalStoredProc;
    procedure actOKExecute(Sender: TObject);
    procedure TalBitBtn1Click(Sender: TObject);
    procedure TalBitBtn2Click(Sender: TObject);
    procedure TalBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    tipus : string;
    Siker : Boolean;
    function Szetszed(Separators : TSysCharSet; mezodb : integer; Content: PChar; Strings: TStrings): Integer;
  public
    { Public declarations }
  end;


procedure KulCsv;
procedure BikaDbf;
procedure BikaTxt;



implementation

uses udtmTarka, StrUtils, QSysTools;


{$R *.dfm}

procedure KulCsv;
var
  frmKullemImport: TfrmKullemImport;
begin
  frmKullemImport := TfrmKullemImport.Create(Application);
  frmKullemImport.tipus := 'CSV';
  frmKullemImport.OpenDialog.Filter := 'CSV file|*.csv';

  frmKullemImport.ShowModal;

  FreeAndNil(frmKullemImport);
end;



procedure BikaDbf;
var
  frmKullemImport: TfrmKullemImport;
begin
  frmKullemImport := TfrmKullemImport.Create(Application);
  frmKullemImport.Caption := 'Központi bikatörzs beolvasása';
  frmKullemImport.TalLabel1.Caption := 'Bikatörzs fájl neve';
  frmKullemImport.OpenDialog.InitialDir := dtmTarka.AppPath + '\dbf';
  frmKullemImport.tipus := 'DBF';
  frmKullemImport.OpenDialog.Filter := 'DBF file|*.dbf';
  frmKullemImport.edtFileName.Text := 'c:\wtarka\dbf\biktor.dbf';
  frmKullemImport.sdsBika.Connection := dtmTarka.cnTarka;
  frmKullemImport.procMerge.Connection := dtmTarka.cnTarka;
  frmKullemImport.PROC_BIKTOR.Connection := dtmTarka.cnTarka;
  frmKullemImport.ShowModal;

  FreeAndNil(frmKullemImport);
end;



procedure BikaTxt;
var
  frmKullemImport: TfrmKullemImport;
begin
  frmKullemImport := TfrmKullemImport.Create(Application);
  frmKullemImport.Caption := 'Bikatörzs beolvasása';
  frmKullemImport.TalLabel1.Caption := 'Bikatörzs fájl neve';
  frmKullemImport.TalLabel2.Visible := True;
  frmKullemImport.TalLabel3.Visible := True;
  frmKullemImport.edtFFileName.Visible := true;
  frmKullemImport.edtEFileName.Visible := true;
  frmKullemImport.TalBitBtn2.Visible := true;
  frmKullemImport.TalBitBtn3.Visible := true;
  frmKullemImport.tipus := 'TXT';
  frmKullemImport.OpenDialog.Filter := 'TXT file|*.txt';

  frmKullemImport.ShowModal;

  FreeAndNil(frmKullemImport);
end;




procedure TfrmKullemImport.actOKExecute(Sender: TObject);
var
  TxtFile : TextFile;
  fb : string;
  oRekordszam, iRekordSzam, count : integer;
  dst : char;
  FileNev : string;
  sTenyKOd : string;
  ssz : string;
  sEgyedKod : string;
  sEgyedId : string;
  sDatum, sElozoDatum : string;
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20 : string;
  s21,s22,s23,s24,s25,s26,s27,s28 : string;
  F : file;
  var slTempString: TStringList;
  i, j : integer;
  aa : string;
  sql : string;

  strDBFolder: String;
  tmpStringList, tmpStringList2: TStringList;
  intX: Integer;
  OK : Boolean;
begin
    if not FileExists(edtFileName.Text) then begin
      dtmTarka.MsgDlg('Beolvasás nem lehetséges, hiányzik a '+ edtFileName.Text + ' fájl!',mterror,[mbOK],0 );
      Exit;
    end;
    dst := DecimalSeparator;
    iREkordszam := 0;

    if TIPUS = 'CSV'  then begin

      try
        try
          DecimalSeparator := '.';

          FileNev := edtFileName.Text;
          AssignFile (TxtFile, FileNev);
          dtmTarka.cnTarka.BeginTrans;
          Reset(TxtFile);
          slTempString := TStringList.Create;
          while not Eoln(TxtFile) do begin
            Readln(TxtFile, fb);
            // Pontosvesszõ a szeparátor...
            i := ExtractStrings( [';'], [' '], PChar( fb ), slTempString );
            aa := '';
            for j := 0 to i-1 do begin
              aa := aa + slTempString[j]+ ',';
            end;
            if (UpperCase(slTempString[0]) <> 'OK') and
              (trim(slTempString[3]) <> EmptyStr) then begin
              sql := 'INSERT INTO KULLEM ( ID, ENAR, BIRDAT, FARMAG, FARHOSSZ, FARSZEL, MELL,IZOME,IZOM, LAPOC,MED, ' +
                     ' FARLEJT,  HATLAB, CSUD, PARTA,CSANK, RAMA, IZOMS, LAB, OSSZP ) ' +
                     ' select KULLEM_ID_SEQ.nextval,' +
                     quotedstr(slTempString[1]) + ',' +                               // ENAR
                     'to_date(' + quotedstr(slTempString[3]) + ',''yyyy.mm.dd''),' +  // BIRDAT
                     quotedstr(slTempString[4]) + ',' +                               // FARMAG
                     quotedstr(slTempString[5]) + ',' +                               // FARHOSSZ
                     quotedstr(slTempString[6]) + ',' +                               // FARSZEL
                     quotedstr(slTempString[7]) + ',' +                               // MELL
                     quotedstr(slTempString[8]) + ',' +                               // IZOME
                     quotedstr(slTempString[9]) + ',' +                               // IZOM
                     quotedstr(slTempString[10]) + ',' +                              // LAPOC
                     quotedstr(slTempString[11]) + ',' +                              // MED
                     quotedstr(slTempString[12]) + ',' +                              // FARLEJT
                     quotedstr(slTempString[13]) + ',' +                              // HATLAB
                     quotedstr(slTempString[14]) + ',' +                              // CSUD
                     quotedstr(slTempString[15]) + ',' +                              // PARTA
                     quotedstr(slTempString[16]) + ',' +                              // CSANK
                     quotedstr(slTempString[17]) + ',' +                              // RAMA
                     quotedstr(slTempString[18]) + ',' +                              // IZOMS
                     quotedstr(slTempString[19]) + ',' +                              // LAB
                     quotedstr(slTempString[20]) +                                     // ÖSZPONTSZÁM
                     ' from dual where not exists ( SELECT 1 ' +
                     ' FROM KULLEM where kullem.ENAR = ' + quotedstr(slTempString[1]) +
                     ' and kullem.birdat = to_date(' + quotedstr(slTempString[3]) + ',''yyyy.mm.dd''))';
              dtmTarka.cnTarka.Execute(SQL);
            end;
            slTempString.Clear;
          end;
          dtmTarka.cnTarka.CommitTrans;
        except
          on E:Exception do
          begin
            if dtmTarka.cnTarka.InTransaction then
              dtmTarka.cnTarka.RollbackTrans;
            dtmTarka.MsgDlg('A beolvasás hibás!',mterror,[mbOK],0 );
            Raise Exception.Create(E.message);
          end;
        end;
      finally
        CloseFile(TxtFile);
        if sdsKullem.active then
           sdsKullem.Close;
        dtmTarka.MsgDlg('A beolvasás sikerült!',mtInformation,[mbOK],0 );
        ModalResult := mrOK;
        slTempString.Free;
      end;

   end else if tipus = 'DBF' then begin
   // Bikatörzs beolvasása
     i := PosEx( 'BIKTOR.DBF', uppercase(edtFileName.Text));
     strDBFolder := LeftStr(edtFileName.Text , i-1) ;

     if i = 0 then begin
        dtmTarka.MsgDlg('Nem biktor.dbf-t adott meg!',mtError,[mbOK],0 );
        exit;
     end;

(*     TalDbfCon.Close;
     TalDbfCon.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
                                      strDBFolder +
                                      ';Extended Properties=dBASE IV;User ID=Admin;Password=;';
     TalDbfCon.Open;
     TblBika.TableName := 'BIKTOR';
     TblBika.Open;
     sdsBika.Open;
     j := 0;
     i := 0;
     SQL := 'truncate table biktor';
     dtmTarka.cnTarka.Execute(SQL);
     while not TblBika.Eof do begin

       SQL :=  'Insert into BIKTOR (KLSZ,FULSZAM,NEV,SZDAT,HASZNOSIT,ERKEZES,SZARM_ORSZ,EXP_ORSZ,FAJTA1,' +
               ' FAJTA2,FAJTA3,FAJTA4,FAJTA5,FAJTA_OSZ,VERH1,VERH2,VERH3,VERH4,VERH5,AP_KLSZ,AN_FULSZAM, ' +
               ' ANAPA_KLSZ,SZINKOD,REDFAKTOR,TENYESZTO,TULAJ,HELYE,EL_E,SP_VAN,MOD_DATUM,ITVSTATUS)  values (';
       SQL := SQL + trim(quotedstr(TblBika.fieldByName('KLSZ').AsString)) + ' , ';
       SQL := SQL + trim(quotedstr(TblBika.fieldByName('FULSZAM').AsString )) + ' , ';
       SQL := SQL + trim(quotedstr(LeftStr(TblBika.fieldByName('NEV').AsString,38))) + ' , ';
       SQL := SQL + 'TO_date(' + quotedstr(TblBika.fieldByName('SZ_DAT').AsString ) + ', ''YYYY.MM.DD'')' + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('HASZNOSIT').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('ERKEZES').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('SZARM_ORSZ').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('EXP_ORSZ').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('FAJTA1').AsString ) + ' , ';

       SQL := SQL + quotedstr(TblBika.fieldByName('FAJTA2').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('FAJTA3').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('FAJTA4').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('FAJTA5').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('FAJTA_OSZ').AsString ) + ' , ';
       SQL := SQL + TblBika.fieldByName('VERH1').AsString + ' , ';
       SQL := SQL + TblBika.fieldByName('VERH2').AsString + ' , ';
       SQL := SQL + TblBika.fieldByName('VERH3').AsString + ' , ';
       SQL := SQL + TblBika.fieldByName('VERH4').AsString + ' , ';
       SQL := SQL + TblBika.fieldByName('VERH5').AsString + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('AP_KLSZ').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('AN_FULSZAM').AsString ) + ' , ';

       SQL := SQL + quotedstr(TblBika.fieldByName('ANAPA_KLSZ').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('SZINKOD').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('REDFAKTOR').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('TENYESZTO').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('TULAJ').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('HELYE').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('EL_E').AsString ) + ' , ';
       SQL := SQL + quotedstr(TblBika.fieldByName('SP_VAN').AsString ) + ' , ';
       SQL := SQL + 'TO_date(' + quotedstr(TblBika.fieldByName('MOD_DATUM').AsString ) + ', ''YYYY.MM.DD''), ';
       SQL := SQL + quotedstr(TblBika.fieldByName('ITVSTATUS').AsString ) + ')';
       dtmTarka.cnTarka.Execute(SQL);
       ---------------------------
       sdsBika.Insert;

       sdsBika.FieldByName('KLSZ').AsString :=  trim(TblBika.fieldByName('KLSZ').AsString);
       sdsBika.FieldByName('FULSZAM').AsString :=  trim(TblBika.fieldByName('FULSZAM').AsString) ;
       sdsBika.FieldByName('NEV').AsString :=  trim( LeftStr(TblBika.fieldByName('NEV').AsString,38));
       sdsBika.FieldByName('SZDAT').AsDateTime := TblBika.fieldByName('SZ_DAT').AsDateTime;
       sdsBika.FieldByName('HASZNOSIT').AsString :=    TblBika.fieldByName('HASZNOSIT').AsString ;
       sdsBika.FieldByName('ERKEZES').AsString :=    TblBika.fieldByName('ERKEZES').AsString  ;
       sdsBika.FieldByName('SZARM_ORSZ').AsString :=    TblBika.fieldByName('SZARM_ORSZ').AsString  ;
       sdsBika.FieldByName('EXP_ORSZ').AsString :=    TblBika.fieldByName('EXP_ORSZ').AsString  ;
       sdsBika.FieldByName('FAJTA1').AsString :=    TblBika.fieldByName('FAJTA1').AsString  ;

       sdsBika.FieldByName('FAJTA2').AsString :=    TblBika.fieldByName('FAJTA2').AsString  ;
       sdsBika.FieldByName('FAJTA3').AsString :=    TblBika.fieldByName('FAJTA3').AsString  ;
       sdsBika.FieldByName('FAJTA4').AsString :=    TblBika.fieldByName('FAJTA4').AsString  ;
       sdsBika.FieldByName('FAJTA5').AsString :=    TblBika.fieldByName('FAJTA5').AsString  ;
       sdsBika.FieldByName('FAJTA_OSZ').AsString :=    TblBika.fieldByName('FAJTA_OSZ').AsString  ;
       sdsBika.FieldByName('VERH1').AsString :=   TblBika.fieldByName('VERH1').AsString;
       sdsBika.FieldByName('VERH2').AsString :=   TblBika.fieldByName('VERH2').AsString;
       sdsBika.FieldByName('VERH3').AsString :=   TblBika.fieldByName('VERH3').AsString;
       sdsBika.FieldByName('VERH4').AsString :=   TblBika.fieldByName('VERH4').AsString;
       sdsBika.FieldByName('VERH5').AsString :=   TblBika.fieldByName('VERH5').AsString;
       sdsBika.FieldByName('AP_KLSZ').AsString :=    TblBika.fieldByName('AP_KLSZ').AsString  ;
       sdsBika.FieldByName('AN_FULSZAM').AsString :=    TblBika.fieldByName('AN_FULSZAM').AsString  ;

       sdsBika.FieldByName('ANAPA_KLSZ').AsString :=    TblBika.fieldByName('ANAPA_KLSZ').AsString  ;
       sdsBika.FieldByName('SZINKOD').AsString :=    TblBika.fieldByName('SZINKOD').AsString  ;
       sdsBika.FieldByName('REDFAKTOR').AsString :=    TblBika.fieldByName('REDFAKTOR').AsString  ;
       sdsBika.FieldByName('TENYESZTO').AsString :=    TblBika.fieldByName('TENYESZTO').AsString  ;
       sdsBika.FieldByName('TULAJ').AsString :=    TblBika.fieldByName('TULAJ').AsString  ;
       sdsBika.FieldByName('HELYE').AsString :=    TblBika.fieldByName('HELYE').AsString  ;
       sdsBika.FieldByName('EL_E').AsString :=    TblBika.fieldByName('EL_E').AsString  ;
       sdsBika.FieldByName('SP_VAN').AsString :=    TblBika.fieldByName('SP_VAN').AsString  ;
       sdsBika.FieldByName('MOD_DATUM').AsDateTime :=  TblBika.fieldByName('MOD_DATUM').AsDateTime;
       sdsBika.FieldByName('ITVSTATUS').AsString :=    TblBika.fieldByName('ITVSTATUS').AsString ;
       sdsBika.post;

       TblBika.Next;
       j := j + 1;
       i := i + 1;
       if j > 100 then begin
         lblDb.Caption := 'Beolvasott adatok száma: ' + IntToStr(i) ;
         j := 0;
         lblDb.Visible := true;
       end;

     end;
     lblDb.Caption := 'Beolvasott adatok száma: ' + IntToStr(i) ;
     sdsBika.ApplyUpdates(0);
     TblBika.Close;
     TalDbfCon.Close;
*)
     Log('Biktor.dbf beolvasás indítása');
     OK := RunApplication(dtmTarka.AppPath + '\impDBF.exe ' + dtmTarka.AppPath + '\dbf\biktor.dbf', []);
     if not OK then begin
       dtmTarka.MsgDlg('A beolvasás nem futott le! (ImpDbf)',mtInformation,[mbOK]) ;
       Log('ImpDbf nem futott le!!');
       exit;
     end else begin
       try
       try
         Screen.Cursor := crHourGlass;
         Log('ImpDbf OK');
         if FileExists(dtmTarka.AppPath + '\source\biktor.dat') then
           dtmTarka.MyCopyFile(dtmTarka.AppPath + '\source\biktor.dat', dtmTarka.AppPath + '\dbf\BIKTOR.DAT');
         if FileExists(dtmTarka.AppPath + '\biktor.dat') then
           dtmTarka.MyCopyFile(dtmTarka.AppPath + '\biktor.dat', dtmTarka.AppPath + '\dbf\BIKTOR.DAT');
         if FileExists(dtmTarka.AppPath + '\dts\BIKTOR.sql') then
           dtmTarka.MyCopyFile(dtmTarka.AppPath + '\dts\BIKTOR.sql', dtmTarka.AppPath + '\dbf\BIKTOR.SQL');
         if FileExists(dtmTarka.AppPath + '\dts\biktor.bat') then
           dtmTarka.MyCopyFile(dtmTarka.AppPath + '\dts\biktor.BAT', dtmTarka.AppPath + '\dbf\BIKTOR.BAT');
         if FileExists(dtmTarka.AppPath + '\dts\biktor.ctl') then
           dtmTarka.MyCopyFile(dtmTarka.AppPath + '\dts\biktor.CTL', dtmTarka.AppPath + '\dbf\BIKTOR.CTL');
         OK := RunApplication(dtmTarka.AppPath + '\DBF\BIKTOR.BAT', []);
         if not OK then begin
           dtmTarka.MsgDlg('Az importálás nem olvasott be adatot!',mtInformation,[mbOK]) ;
           Log('Import nem olvasott be adatot!!');
           exit;
         end;
         Log('Biktor.bat OK');
         Log('Merge START');
         procMerge.ExecProc;
         Log('Merge OK');
       except
         dtmTarka.MsgDlg('A beolvasás nem sikerült!',mtError,[mbOK]) ;
       end;
       finally
         Screen.Cursor := crDefault;
       end;
       if dtmTarka.MsgDlg('A beolvasás vége!',mtInformation,[mbOK]) = mrOK then
         ModalResult := mrCancel;
     end;
   end else if tipus = 'TXT' then begin

      try
        // Bikatörzs
        ok := false;
        count := 0;
        try
          DecimalSeparator := '.';
          lblDb.Caption := 'Adatelõkészítés...    ';
          lblDb.Visible := true;
          dtmTarka.cnTarka.Execute('delete from BIKTXT');
          FileNev := edtFileName.Text;
          AssignFile (TxtFile, FileNev);
          dtmTarka.cnTarka.BeginTrans;
          Reset(TxtFile);
          slTempString := TStringList.Create;
          lblDb.Caption := 'A bikatörzs beolvasás tart...';
          lblDb.Visible := true;
          Screen.Cursor := crHourGlass;
          while not Eoln(TxtFile) do begin

            if count mod 100 = 0 then
            begin
               lblDb.Caption := 'A bikatörzs beolvasása tart: '  + IntToStr( count);
               lblDb.Update;
            end;
            count := count + 1;

            Readln(TxtFile, fb);
            // TAB a szeparátor...
            i := Szetszed( [#9], 27, PChar( fb ), slTempString );
            aa := '';
            for j := 0 to i-1 do begin
              aa := aa + quotedstr(trimRight(slTempString[j]));
              if j < i-1 then
                aa := aa + ',';
            end;
            if (UpperCase(slTempString[0]) <> 'kaztp') and
              (trim(slTempString[1]) <> 'kazon') then begin
              sql := 'INSERT INTO BIKTXT (kaztp,kazon,nevee,szuld,konsk,erkez,itv_e,szine,' +
                     'aaztp,aazon,aneve,aaptp,aapaz,aanev,maztp,mazon,haszn,prone,' +
                     'elone,sajne,apane,hneve,utot1,utot2,utot3,utot4,utot5) ' +
                     ' VALUES ( ' + aa + ')';
 //             Log(SQL);
              dtmTarka.cnTarka.Execute(SQL);
            end;
            slTempString.Clear;
          end;
          dtmTarka.cnTarka.CommitTrans;
        except
          on E:Exception do
          begin
            if dtmTarka.cnTarka.InTransaction then
              dtmTarka.cnTarka.RollbackTrans;
            dtmTarka.MsgDlg('A fajta adatok beolvasás hibás!',mterror,[mbOK],0 );
            Raise Exception.Create(E.message);
          end;
        end;
      finally
        CloseFile(TxtFile);
        lblDb.Caption := 'A bikatörzs beolvasás kész, azonosítók adatok beolvasása tart...';
        lblDb.Visible := true;
        slTempString.Free;
        Screen.Cursor := crArrow;
      end;

      try
        // Elõzõ azonosítók
        try
          count := 0;
          DecimalSeparator := '.';
          dtmTarka.cnTarka.Execute('delete from IDKAPTXT');

          FileNev := edtEFileName.Text;
          AssignFile (TxtFile, FileNev);
          dtmTarka.cnTarka.BeginTrans;
          Reset(TxtFile);
          slTempString := TStringList.Create;
          Screen.Cursor := crHourGlass;
          while not Eoln(TxtFile) do begin
            Readln(TxtFile, fb);

            if count mod 100 = 0 then
            begin
               lblDb.Caption := 'Elõzõ azonosítók beolvasása tart: '  + IntToStr( count);
               lblDb.Update;
            end;
            count := count + 1;

            // TAB a szeparátor...
            i := Szetszed( [#9], 12, PChar( fb ), slTempString );
            aa := '';
            for j := 0 to i-1 do begin
              aa := aa + quotedstr(trimRight(slTempString[j]));
              if j < i-1 then
                aa := aa + ',';
            end;
            if (UpperCase(slTempString[0]) <> 'kaztp') and
              (trim(slTempString[1]) <> 'kazon') then begin
              sql := 'INSERT INTO IDKAPTXT (KAZTI,KAZON,IVARA,EAZTI,EAZON,KPLSZ,IAZON,KAZON_3B,KAZON_2B,EAZON_3B,EAZON_2B,IBAZON) ' +
                     ' VALUES ( ' + aa + ')';
 //             Log(SQL);
              dtmTarka.cnTarka.Execute(SQL);
            end;
            slTempString.Clear;
          end;
          dtmTarka.cnTarka.CommitTrans;
        except
          on E:Exception do
          begin
            if dtmTarka.cnTarka.InTransaction then
              dtmTarka.cnTarka.RollbackTrans;
            dtmTarka.MsgDlg('Azonosítók beolvasás hibás!',mterror,[mbOK],0 );
            Raise Exception.Create(E.message);
          end;
        end;
      finally
        CloseFile(TxtFile);
        lblDb.Caption := 'A bikatörzs, azonosítók beolvasás kész, fajta adatok beolvasása tart...';
        lblDb.Visible := true;
        slTempString.Free;
        Screen.Cursor := crArrow;
      end;


      try
        // Fajta adatok
        try
          count := 0;
          DecimalSeparator := '.';
          dtmTarka.cnTarka.Execute('delete from BIKFAJTXT');

          FileNev := edtFFileName.Text;
          AssignFile (TxtFile, FileNev);
          dtmTarka.cnTarka.BeginTrans;
          Reset(TxtFile);
          slTempString := TStringList.Create;
          Screen.Cursor := crHourGlass;
          while not Eoln(TxtFile) do begin
            Readln(TxtFile, fb);

             if count mod 100 = 0 then
            begin
               lblDb.Caption := 'Fajtakódok beolvasása tart: '  + IntToStr( count);
               lblDb.Update;
            end;
            count := count + 1;

            // TAB a szeparátor...
            i := Szetszed( [#9], 12, PChar( fb ), slTempString );
            aa := '';
            for j := 0 to i-1 do begin
              aa := aa + quotedstr(trimRight(slTempString[j]));
              if j < i-1 then
                aa := aa + ',';
            end;
            if (UpperCase(slTempString[0]) <> 'kaztp') and
              (trim(slTempString[1]) <> 'kazon') then begin
              sql := 'INSERT INTO BIKFAJTXT (KAZTP,KAZON,FAJTA1,FAJTA2,FAJTA3,FAJTA4,FAJTA5,VERH1,VERH2,VERH3,VERH4,VERH5) ' +
                     ' VALUES ( ' + aa + ')';
 //             Log(SQL);
              dtmTarka.cnTarka.Execute(SQL);
            end;
            slTempString.Clear;
          end;
          dtmTarka.cnTarka.CommitTrans;
          ok := true;
        except
          on E:Exception do
          begin
            if dtmTarka.cnTarka.InTransaction then
              dtmTarka.cnTarka.RollbackTrans;
            dtmTarka.MsgDlg('A fajta adatok beolvasás hibás!',mterror,[mbOK],0 );
            Raise Exception.Create(E.message);
          end;
        end;
      finally
        CloseFile(TxtFile);
        if OK then begin
          lblDb.Caption := 'A beolvasás kész, bikatörzs frissítése folyik...    ';
        end ;
        slTempString.Free;
        Screen.Cursor := crArrow;
      end;

      try
        // Bikatörzs frissítés
        try
          if PROC_BIKTOR.Active then PROC_BIKTOR.Close;
          PROC_BIKTOR.Connection := dtmTarka.cnTarka;
          PROC_BIKTOR.ProcedureName := 'BIKTOR_FRISSIT';
          PROC_BIKTOR.Prepared := true;
          PROC_BIKTOR.ExecProc;
          ok := true;
        except
          on E:Exception do
          begin
            if dtmTarka.cnTarka.InTransaction then
              dtmTarka.cnTarka.RollbackTrans;
            dtmTarka.MsgDlg('Bikatörzs frissítés hibás!',mterror,[mbOK],0 );
            Raise Exception.Create(E.message);
          end;
        end;
      finally
        if OK then begin
          dtmTarka.MsgDlg('A beolvasás sikerült!',mtInformation,[mbOK],0 );
        end;
        lblDb.Visible := false;
        ModalResult := mrOK;
        // slTempString.Free;
        Screen.Cursor := crArrow;
      end;
   end;
end;





function TfrmKullemImport.Szetszed(Separators : TSysCharSet; mezodb : integer; Content: PChar; Strings: TStrings): Integer;
var
  Tail: PChar;
  s, ss : string;
  EOS, InQuote: Boolean;
  QuoteChar: Char;
  Item: string;
  sharp : char;
  mutato, index, i : integer;
function ReadWord(s:string; var mutato:integer):string;
  var
    temp  : string;
    cikl  : integer;
  begin
    cikl := mutato;
    inc(cikl);
    temp := '';
    while (cikl<=length(s)) and (s[cikl]<>sharp) do begin
      temp:=temp+s[cikl];
      inc(cikl);
    end;
    if length(temp)>1 then begin
      if temp[1]=sharp then temp:=copy(temp, 2,length(temp)-1);
      if temp[length(temp)]=sharp then temp:=copy(temp, 1, length(temp)-1);
    end else begin
      if temp=sharp then temp:='';
    end;
    result := temp;
    mutato := cikl;
end;

begin
  Result := 0;
  Sharp := #9;

//  s := copy(content, 1,length(content)-2);
  s := copy(content, 1,length(content));
  mutato := 0;
  index := 0;

  //ures sor kiszurese
  if s = EmptyStr then
  for index := 0 to mezodb - 1 do begin
    Strings.Add(Item);
  end;

  ss := ReadWord(s, mutato);
  while (mutato <= length(s)+1) do begin
      ss := trim(ss);
      inc(index);
      if ss <> '' then begin
        Strings.Add(ss);
      end else begin
        Strings.Add(' ');
      end;
      ss := ReadWord(s, mutato);
  end;
  if index < mezodb then
  for i := Index to mezodb do begin
    Strings.Add(Item);
    inc(index);
  end;
  if index > mezodb then index := mezodb;
  Result := index;
end;

procedure TfrmKullemImport.TalBitBtn1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
    edtFileName.Text := OpenDialog.FileName;

end;

procedure TfrmKullemImport.TalBitBtn2Click(Sender: TObject);
begin
  if OpenDialog.Execute then
    edtEFileName.Text := OpenDialog.FileName;
end;

procedure TfrmKullemImport.TalBitBtn3Click(Sender: TObject);
begin
  if OpenDialog.Execute then
    edtFFileName.Text := OpenDialog.FileName;
end;

end.
