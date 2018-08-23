unit QfrmKodKarb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, ActnList, StdCtrls, Buttons, uTALBitBtn, ExtCtrls,
  Grids, DBGrids, uTALComboBox, uTALPanel, DB, ADODB, uTalQuery, Wwdbigrd,
  Wwdbgrid, uTALDBGrid, DBClient, uTALSimpleDataSet;

type
  TfrmKodKarb = class(TfrmKarbOs)
    bbtnUj: TTalBitBtn;
    bbtnModosit: TTalBitBtn;
    bbtnTorol: TTalBitBtn;
    TalPanel1: TTalPanel;
    cbKodTipus: TTalComboBox;
    dstKodKarb: TDataSource;
    qryKodKarb2: TTalQuery;
    DBGrid1: TTalDBGrid;
    qryKodKarb: TTalSimpleDataSet;
    procedure actMegsemExecute(Sender: TObject);
    procedure cbKodTipusChange(Sender: TObject);
    procedure bbtnUjClick(Sender: TObject);
    procedure bbtnModositClick(Sender: TObject);
    procedure bbtnTorolClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKodKarb: TfrmKodKarb;
  valtipus, SQL, muv_tipus : String;

Procedure KodKarb;

implementation

Uses QfrmKodUjMod, udtmTarka, StrUtils;

{$R *.dfm}

Procedure KodKarb;
begin
  frmKodKarb.cbKodTipus.Text:='mind';

  SQL:='Select kt.TIPUSKOD as Tipuskód, kt.TIPUSNEV as Megnevezés from kodtipusok kt';

    frmKodKarb.qryKodKarb.DataSet.CommandText := SQL;
    frmKodKarb.qryKodKarb.Open;
    //
    frmKodKarb.cbKodTipus.Items.Clear;
    While Not frmKodKarb.qryKodKarb.Eof do
     Begin
       frmKodKarb.cbKodTipus.Items.Add(frmKodKarb.qryKodKarb.Fields[0].AsString+ ' - ' + frmKodKarb.qryKodKarb.Fields[1].AsString);
       frmKodKarb.qryKodKarb.Next;
     End;
    //
    frmKodKarb.qryKodKarb.First;
    frmKodKarb.bbtnModosit.Enabled := false;
    frmKodKarb.bbtnUj.Enabled := false;
    frmKodKarb.bbtnTorol.Enabled := false;
    frmKodKarb.ShowModal;
    frmKodKarb.qryKodKarb.Close;
end;

procedure TfrmKodKarb.actMegsemExecute(Sender: TObject);
begin
  frmKodKarb.qryKodKarb.Close;
  frmKodKarb.Close;
  inherited;
end;

procedure TfrmKodKarb.cbKodTipusChange(Sender: TObject);
begin
  inherited;
  frmKodKarb.qryKodKarb.Close;
  // szûrés a kiválasztott index alapján
  valtipus:=LeftStr(frmKodKarb.cbKodTipus.Text, pos('-',frmKodKarb.cbKodTipus.Text)-2);
  SQL:='Select kodok.KODTIPUSOK_TIPUSKOD AS "Kódtipus", kodok.KOD as "Kód", kodok.KOD_NEV as "Megnevezés"' +
       'From kodok Where kodok.KODTIPUSOK_TIPUSKOD = ' + quotedStr(valtipus);
  frmKodKarb.qryKodKarb.DataSet.CommandText := sql;
  frmKodKarb.qryKodKarb.Open;
  frmKodKarb.bbtnUj.Enabled := true;
  frmKodKarb.bbtnModosit.Enabled := true;
  frmKodKarb.bbtnTorol.Enabled := true;
end;

procedure TfrmKodKarb.bbtnUjClick(Sender: TObject);
Var
  ures_string : String;

begin
  ures_string:='';
  muv_tipus:='uj';
  KodUjMod(muv_tipus, valtipus, ures_string, ures_string);
end;

procedure TfrmKodKarb.bbtnModositClick(Sender: TObject);
Var
  valasztott_kod, valasztott_nev : String;
begin
  valasztott_kod:=frmKodKarb.DBGrid1.Fields[1].AsString;
  valasztott_nev:=frmKodKarb.DBGrid1.Fields[2].AsString;
  muv_tipus:='mod';
  KodUjMod(muv_tipus, valtipus, valasztott_kod, valasztott_nev);

end;

procedure TfrmKodKarb.bbtnTorolClick(Sender: TObject);
Var
  val_kod, SQL : String;

begin
  if not dtmTarka.JogosultsagEllenorzes('skarb') then exit;
  val_kod := frmKodKarb.DBGrid1.Fields[1].AsString;

  valtipus := LeftStr(frmKodKarb.cbKodTipus.Text, pos('-',frmKodKarb.cbKodTipus.Text)-2);

  SQL := 'DELETE FROM KODOK WHERE KOD = '
         + quotedStr(frmKodKarb.DBGrid1.Fields[1].AsString)
         + ' and kodtipusok_tipuskod='+ QuotedStr(valtipus);

  dtmTarka.cnTarka.BeginTrans;

  try
    dtmTarka.cnTarka.Execute(SQL);
    dtmTarka.cnTarka.CommitTrans;
  except
    if dtmTarka.cnTarka.InTransaction Then
      dtmTarka.cnTarka.RollbackTrans;
  end;

  // frissítés az új tétel miatt
  frmKodKarb.qryKodKarb.Close;
  frmKodKarb.qryKodKarb.Open;
  inherited;
end;

procedure TfrmKodKarb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmKodKarb.qryKodKarb.Active then
    frmKodKarb.qryKodKarb.Close;
end;

end.
