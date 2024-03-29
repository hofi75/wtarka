unit VerhanyadLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uTALLabel, uTALButton, Mask, uValidedit, uTALEdit,
  uTALSimpleDataSet, DB, DBClient, frxClass, frxDBSet;

type
  TfrmVerhanyadLista = class(TForm)
    edtStartDate: TTalEdit;
    edtEndDate: TTalEdit;
    btnPrint: TTalButton;
    TalLabel1: TTalLabel;
    TalLabel2: TTalLabel;
    sdsVerhanyadLista: TTalSimpleDataSet;
    frxDBVerhanyadLista: TfrxDBDataset;
    sdsVerhanyadListaDATUM: TDateTimeField;
    sdsVerhanyadListaDB: TIntegerField;
    sdsVerhanyadListaVERH: TBCDField;
    sdsVerhanyadListaMT_DB: TIntegerField;
    sdsVerhanyadListaMT_VSZ: TBCDField;
    frxVerhanyadLista: TfrxReport;
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Procedure VerhanyadListaShow;

var
  frmVerhanyadLista: TfrmVerhanyadLista;

implementation

uses udtmTarka;

{$R *.dfm}

Procedure VerhanyadListaShow;
begin
  frmVerhanyadLista.edtStartDate.Text := '2010.01.01';
  frmVerhanyadLista.edtEndDate.Text := DateToStr(Date);
  frmVerhanyadLista.ShowModal;
end;

procedure TfrmVerhanyadLista.btnPrintClick(Sender: TObject);
begin
   if frmVerhanyadLista.sdsVerhanyadLista.Active then
      frmVerhanyadLista.sdsVerhanyadLista.DataSet.Close;

   frmVerhanyadLista.sdsVerhanyadLista.DataSet.CommandText :=
       'select m.* from mtverh m ' +
       'where trunc(m.datum) >= ' +
            'to_date(' + QuotedStr( frmVerhanyadLista.edtStartDate.Text) + ',' + QuotedStr( 'yyyy.mm.dd') + ') ' +
       ' and  trunc(m.datum) <= ' +
            'to_date(' + QuotedStr( frmVerhanyadLista.edtEndDate.Text) + ',' + QuotedStr( 'yyyy.mm.dd') + ') ' +
       'order by m.datum';
   frmVerhanyadLista.sdsVerhanyadLista.Dataset.Open;
   frmVerhanyadLista.frxDBVerhanyadLista.Open;

   frmVerhanyadLista.frxVerhanyadLista.ShowReport;

   frmVerhanyadLista.sdsVerhanyadLista.DataSet.Close;
   frmVerhanyadLista.frxDBVerhanyadLista.Close;
end;

end.
