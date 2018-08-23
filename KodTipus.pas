unit KodTipus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, StdCtrls, uTALComboBox, ActnList, Buttons,
  uTALBitBtn, ExtCtrls, uTALGroupBox, DB, ADODB, uTalQuery, frxClass,
  frxDBSet, uTALLabel;

type
  TfrmKodList = class(TfrmKarbOs)
    TalGroupBox1: TTalGroupBox;
    cbKodTipus: TTalComboBox;
    qryKodTipus: TTalQuery;
    frxDBdtsKodTipus: TfrxDBDataset;
    TalLabel1: TTalLabel;
    frxReportKodTipus: TfrxReport;
    procedure actMegsemExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKodList: TfrmKodList;

Procedure KodTipusLista;

implementation

Uses udtmTarka;

{$R *.dfm}

Procedure KodTipusLista;
Var
  SQL : String;

Begin
  // combobox feltöltés
  SQL:='Select kt.TIPUSKOD, kt.TIPUSNEV from kodtipusok kt';
  frmKodList.qryKodTipus.SQL.Clear;
  frmKodList.qryKodTipus.SQL.Add(SQL);
  frmKodList.qryKodTipus.Open;
  frmKodList.cbKodTipus.Items.Clear;
  While Not frmKodList.qryKodTipus.Eof do
   Begin
     frmKodList.cbKodTipus.Items.Add(frmKodList.qryKodTipus.FieldByName('TIPUSKOD').AsString);
     frmKodList.qryKodTipus.Next;
   End;
  frmKodList.qryKodTipus.Close;
  frmKodList.cbKodTipus.ItemIndex:=0;
  frmKodList.TalGroupBox1.Caption:='Kódtípus választó';
  frmKodList.ShowModal;
End;

procedure TfrmKodList.actMegsemExecute(Sender: TObject);
begin
//  inherited;
  If frmKodList.qryKodTipus.Active Then
    frmKodList.qryKodTipus.Close;
  frmKodList.Close;
end;

procedure TfrmKodList.actOKExecute(Sender: TObject);
Var
  Siker : Boolean;
  SQL : String;

begin
  inherited;

  Siker:=False;
  SQL:='SELECT tn.TIPUSNEV, kk.KOD_NEV, kk.KOD, kk.KODTIPUSOK_TIPUSKOD ' +
       'FROM KODTIPUSOK tn, KODOK kk ' +
       'WHERE (tn.TIPUSKOD = kk.KODTIPUSOK_TIPUSKOD ' +
       'AND kk.KODTIPUSOK_TIPUSKOD= ' + quotedStr(frmKodList.cbKodTipus.Text) + ' ) ' +
       'ORDER BY kk.KOD';
  frmKodList.qryKodTipus.SQL.Clear;
  frmKodList.qryKodTipus.SQL.Add(SQL);
  frmKodList.qryKodTipus.Open;

  Siker:=frmKodList.frxReportKodTipus.LoadFromFile(dtmTarka.fr3Path + '\Kodok.fr3',Siker);
  If Siker Then
   Begin
     // paraméter átadás a lista fejhez
     frmKodList.frxReportKodTipus.Variables.Clear;
     frmKodList.frxReportKodTipus.Script.Variables['SzuroFeltetelek'] := cbKodTipus.Text ;
     frmKodList.frxReportKodTipus.Script.Variables['Rendezettseg']:='kód';
     frmKodList.frxReportKodTipus.ShowReport(Siker);
   End;
  frmKodList.qryKodTipus.Close;
end;

end.
