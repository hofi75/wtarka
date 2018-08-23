unit QfrmKodUjMod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, StdCtrls, ExtCtrls, ActnList, Buttons, uTALBitBtn,
  strUtils;

type
  TfrmKarbUjMod = class(TfrmKarbOs)
    leTipus: TLabeledEdit;
    leKod: TLabeledEdit;
    leKodNev: TLabeledEdit;
    procedure actOKExecute(Sender: TObject);
    procedure actMegsemExecute(Sender: TObject);
    procedure leKodKeyPress(Sender: TObject; var Key: Char);
    procedure leKodChange(Sender: TObject);
    procedure leKodNevChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKarbUjMod: TfrmKarbUjMod;
  SQL : string;
  muvelet_tipus : string;
  valasz_kod : string;

Procedure KodUjMod(var muvelet, vtipus, vkod, vnev: string);

implementation

Uses QfrmKodKarb, udtmTarka;

{$R *.dfm}

Procedure KodUjMod(var muvelet, vtipus, vkod, vnev: string);
Begin
  muvelet_tipus:=muvelet;
  If muvelet_tipus='uj' Then
     frmKarbUjMod.Caption:='Új kód és név megadás'
   Else
     frmKarbUjMod.Caption:='Kód és név módosítás';
  frmKarbUjMod.leTipus.Text:=vtipus;
  frmKarbUjMod.leKod.Text:=vkod;
  frmKarbUjMod.leKodNev.Text:=vnev;
//  frmKarbUjMod.leTipus.Enabled:=False;
  valasz_kod:=vkod;

  frmKarbUjMod.ShowModal;

  // frissítés az új tétel miatt
  frmKodKarb.qryKodKarb.Close;
  frmKodKarb.qryKodKarb.Open;
End;


procedure TfrmKarbUjMod.actOKExecute(Sender: TObject);
var
  valTipus : string;
begin
      // insert where not exists(select * from ... where kod=amit rögzíteni akarok
  valtipus := frmKarbUjMod.leTipus.Text;

  if muvelet_tipus='uj' Then
     SQL:='INSERT INTO KODOK (kodtipusok_tipuskod, KOD, kod_nev) VALUES ('
          + quotedStr(valTipus)+','
          + quotedStr(frmKarbUjMod.leKod.Text)+','
          + quotedStr(frmKarbUjMod.leKodNev.Text)+')'
   else
     SQL:='UPDATE KODOK SET KOD='+quotedStr(frmKarbUjMod.leKod.Text)+
          ', kod_nev='+quotedStr(frmKarbUjMod.leKodNev.Text)+
          'Where KOD='+quotedStr(valasz_kod)+
          ' and kodtipusok_tipuskod=' + QuotedStr(valTipus);

  dtmTarka.cnTarka.BeginTrans;

  try
    dtmTarka.cnTarka.Execute(SQL);
    dtmTarka.cnTarka.CommitTrans;
  except
    If dtmTarka.cnTarka.InTransaction Then
      dtmTarka.cnTarka.RollbackTrans;
  end;

  frmKarbUjMod.leKod.Text:='';
  frmKarbUjMod.leKodNev.Text:='';
  frmKarbUjMod.Close;
end;

procedure TfrmKarbUjMod.actMegsemExecute(Sender: TObject);
begin
  inherited;

  frmKarbUjMod.Close;
end;

procedure TfrmKarbUjMod.leKodKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  // csak numerikus és backspace lehet
  If Not(Key In ['0'..'9','A'..'Z', #8]) Then Key:=#0;
end;

procedure OkEnabled;
Begin
  If ((Length(frmKarbUjMod.leKod.Text)>0) And (Length(frmKarbUjMod.leKodNev.Text)>0)) Then
     frmKarbUjMod.BitBtn1.Enabled:=True
   Else
     frmKarbUjMod.BitBtn1.Enabled:=False;
End;

procedure TfrmKarbUjMod.leKodChange(Sender: TObject);
begin
  inherited;

  OkEnabled;
end;

procedure TfrmKarbUjMod.leKodNevChange(Sender: TObject);
begin
  inherited;

  OkEnabled;
end;

procedure TfrmKarbUjMod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;

end;

end.
