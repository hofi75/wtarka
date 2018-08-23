unit Tibor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, ActnList, StdCtrls, Buttons, uTALBitBtn, ExtCtrls, StrUtils,
  frxClass, frxDBSet, DB, ADODB, uTalQuery;

type
  TfrmTibor = class(TfrmKarbOs)
    qryTiborTenyeszet: TTalQuery;
    frxDBdtsTiborTenyeszet: TfrxDBDataset;
    qryHonapok: TTalQuery;
    frxDBDataset1: TfrxDBDataset;
    qryTiborTenyeszetNEV: TWidestringField;
    qryTiborTenyeszetENAR_kod: TWidestringField;
    qryTiborTenyeszetATKOD: TWidestringField;
    qryTiborTenyeszetTELEP_NEV: TWidestringField;
    qryTiborTenyeszetTKOD: TWidestringField;
    procedure FormCreate(Sender: TObject);
    procedure qryTiborTenyeszetBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure EgyFeltet(Elem : String);
    Procedure Feltet(ElemTol, ElemIg : String);
    Procedure Egy_honap(datum : String; var datumtol,datumig : String);
    Procedure Ut_Fej_Dat(Var Elso : String; Var HoInd : Byte);
  end;

Const
  Honapok: Array[1..12] of String = ('január', 'február', 'március', 'április', 'május',
                                     'június', 'július', 'augusztus', 'szeptember',
                                     'október', 'november', 'december');

  ksql = 'SELECT TENY.TNEV1 AS NEV, TENY.EKOD AS ENAR_kod, ' +
         '      (TARKA_UTILS.LEFT(TENY.TKOD,2) || ''-'' || SUBSTR(TENY.TKOD, 3, 3) || ''-'' || TARKA_UTILS.RIGHT(TENY.TKOD, 2)) as ATKOD, ' +
         '      TENY.TNEV2 AS TELEP_NEV, TENY.TKOD ' +
         ' FROM TENY ' +
         ' WHERE TENY.TKOD = :TENYESZETKOD AND ROWNUM = 1 ';

var
  frmTibor: TfrmTibor;
  feltetel : String;

implementation

Uses udtmTarka;

{$R *.dfm}


Procedure TfrmTibor.EgyFeltet(Elem : String);
Begin
  feltetel:='';
  // a feltétel nem üres
  If Length(Elem) > 0 Then
    feltetel:=' = ' + quotedStr(Elem);
End;


Procedure TfrmTibor.Feltet(ElemTol, ElemIg : String);
Begin
  feltetel:='';
  // legalább az egyik nem üres
  If Length(ElemTol + ElemIg) > 0 Then
   Begin
     // csak tól-ban van adat
     If ((Length(ElemTol)>0) And (Length(ElemIg)=0)) Then
          feltetel:=' > ' + quotedStr(ElemTol);
     // csak ig-ben van adat
     If ((Length(ElemTol)=0) And (Length(ElemIg)>0)) Then
          feltetel:=' < ' + quotedStr(ElemIg);
     // mindkettõben van adat és tól < ig
     If ( (Length(ElemTol)>0) And (Length(ElemIg)>0) ) Then
        feltetel:=' BETWEEN ' + quotedStr(ElemTol) + ' AND ' + quotedStr(ElemIg);
   End;
End;


Procedure TfrmTibor.Egy_honap(datum : String; var datumtol,datumig : String);
Var
  nap : Byte;
  konv : Boolean;

Begin
  datumtol:=datum;
  datumtol:=MidStr(datum,1,8) + '01.';
  nap:=31;
  datumig:=MidStr(datum,1,8) + IntToStr(nap) +'.';
  konv:=False;
  While Not(konv) Do
   Begin
     Try
       datumig:=DateToStr(StrToDate(datumig));
     except
       on EConvertError do
         Begin
           Dec(nap);
           datumig:=MidStr(datum,1,8) + IntToStr(nap) +'.';
           konv:=True;
         End;
     End;  // try
     If konv Then
        konv:=False
      Else
        konv:=True;
   End;  // while
  If Length(datumtol) > 10 Then
    datumtol:=LeftStr(datumtol, 10);
  If Length(datumig) > 10 Then
    datumig:=LeftStr(datumig, 10);
End;


Procedure TfrmTibor.Ut_Fej_Dat(Var Elso : String; var HoInd : Byte);
Var
  datum, SQL : String;


Begin
  datum:=DateToStr(Date);
  If Length(datum) > 10 Then
    datum:=LeftStr(datum, 10);
  // az utolsó fejés dátumának kinyerés
  SQL:='SELECT DISTINCT ht.FEJES_DATUM ' +
       'FROM HAVI_TERM ht ' +
       'WHERE ht.FEJES_DATUM < ' + quotedStr(datum) +
       ' ORDER BY ht.FEJES_DATUM DESC';
   With frmTibor Do
   Begin
     qryHonapok.SQL.Clear;
     qryHonapok.SQL.Add(SQL);
     qryHonapok.Open;
     qryHonapok.First;
     Elso:=qryHonapok.FieldByName('FEJES_DATUM').AsString;
     qryHonapok.Close;
   End;
  HoInd:=StrToInt(Copy(Elso,6,2))-1;
End;


procedure TfrmTibor.FormCreate(Sender: TObject);
begin
  inherited;
  qryTiborTenyeszet.Connection := dtmTarka.cnTarka;
  qryHonapok.Connection := dtmTarka.cnTarka;
  if dtmTarka.sTenyeszetKod = '' then begin
    qryTiborTenyeszet.SQL.Clear;
    qryTiborTenyeszet.SQL.Add(ksql);
  end;
end;


procedure TfrmTibor.qryTiborTenyeszetBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if qryTiborTenyeszet.Active then qryTiborTenyeszet.Close;

  if qryTiborTenyeszet.SQL[0] = ksql then begin
    qryTiborTenyeszet.Parameters.ParamByName('TENYESZETKOD').Value := dtmTarka.TenyeszetTKOD;
  end;
end;

end.
