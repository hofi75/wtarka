unit QfrmfrmGyLisKlt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn,
  ExtCtrls, frxClass, frxDBSet, DB, DBClient, uTALSimpleDataSet, uTALLabel,
  Mask, uValidedit, uTALEdit, uTALRadioButton, uTALGroupBox;

type
  TfrmGyLisKlt = class(TfrmNyomtatoOs)
    TalGroupBox5: TTalGroupBox;
    rbR2: TTalRadioButton;
    rbR1: TTalRadioButton;
    TalGroupBox3: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    edtDatTol: TTalEdit;
    TalLabel1: TTalLabel;
    frxDBLista: TfrxDBDataset;
    rbR3: TTalRadioButton;
    sdsLista: TTalSimpleDataSet;
    sdsListaKOD: TWidestringField;
    sdsListaNEV: TWidestringField;
    sdsListaBEVET_DATUM: TDateTimeField;
    sdsListaBEV_MENNY: TBCDField;
    sdsListaAKT_KESZLET: TBCDField;
    sdsListaPILL_KESZL: TBCDField;
    sdsListaME: TWidestringField;
    sdsListaVARAKOZAS_TEJ: TIntegerField;
    sdsListaVARAKOZAS_HUS: TIntegerField;
    frxRepLista: TfrxReport;
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
    AlapSelect : string;
    SQL : string;
  public
    { Public declarations }
  end;


procedure GyKltLista;

implementation

uses udtmTarka, DateUtils;

{$R *.dfm}

procedure GyKltLista;
var
  frmGyLisKlt: TfrmGyLisKlt;
begin
  frmGyLisKlt := TfrmGyLisKlt.Create(Application);
  try
    with frmGyLisKlt do begin
      sdsLista.Connection := dtmTarka.cnTarka;
      AlapSelect := sdsLista.DataSet.CommandText;
      edtDatTol.Value := Today;
      ShowModal;
      if sdsLista.Active then sdsLista.Close;
    end;
  finally
    FreeAndNil(frmGyLisKlt);
  end;


end;



procedure TfrmGyLisKlt.actOKExecute(Sender: TObject);
var
  SzuroFelt : string;
  sOrder : string;
begin
  SzuroFelt := '';
  SQL := '  SELECT ' +
         ' GY.KOD, ' +
         ' GY.NEV, ' +
         ' GYK.BEVET_DATUM, ' +
         ' GYK.BEV_MENNY, ' +
         ' GYK.AKT_KESZLET, ' +
         ' GYK.BEV_MENNY- ' +
         ' COALESCE((SELECT SUM(K.GYMENNY_1) FROM KEZELESEK K WHERE K.GYKLT1_ID=GYK.ID AND K.KEZ_DATUM <=' + quotedstr(edtDatTol.Text) + ' ), 0)- ' +
         ' COALESCE((SELECT SUM(K.GYMENNY_2) FROM KEZELESEK K WHERE K.GYKLT2_ID=GYK.ID AND K.KEZ_DATUM <= ' + quotedstr(edtDatTol.Text) + ' ), 0)- ' +
         ' COALESCE((SELECT SUM(K.GYMENNY_3) FROM KEZELESEK K WHERE K.GYKLT3_ID=GYK.ID AND K.KEZ_DATUM <= ' + quotedstr(edtDatTol.Text) + ' ), 0)- ' +
         ' COALESCE((SELECT SUM(MENNYISEG) FROM GYFELH WHERE GYFELH.GYOGYSZERKLT_ID=GYK.ID AND GYFELH.DATUM <= ' + quotedstr(edtDatTol.Text) + '),0) AS PILL_KESZL , ' +
         ' GYK.ME, ' +
         ' GY.VARAKOZAS_TEJ, ' +
         ' GY.VARAKOZAS_HUS ' +
         ' FROM GYOGYSZER_KLT GYK ' +
         ' JOIN GYOGYSZEREK GY ON GY.KOD = GYK.GYOGYSZER_KOD ' +
         ' WHERE GYK.BEVET_DATUM <= ' + quotedstr(edtDatTol.Text) + ' ' +
         ' AND ' +
         ' (GYK.BEV_MENNY- ' +
         ' COALESCE((SELECT SUM(K.GYMENNY_1) FROM KEZELESEK K WHERE K.GYKLT1_ID=GYK.ID AND K.KEZ_DATUM <= ' + quotedstr(edtDatTol.Text) + ' ), 0)- ' +
         ' COALESCE((SELECT SUM(K.GYMENNY_2) FROM KEZELESEK K WHERE K.GYKLT2_ID=GYK.ID AND K.KEZ_DATUM <= ' + quotedstr(edtDatTol.Text) + ' ), 0)- ' +
         ' COALESCE((SELECT SUM(K.GYMENNY_3) FROM KEZELESEK K WHERE K.GYKLT3_ID=GYK.ID AND K.KEZ_DATUM <= ' + quotedstr(edtDatTol.Text) + ' ), 0)- ' +
         ' COALESCE((SELECT SUM(MENNYISEG) FROM GYFELH WHERE GYFELH.GYOGYSZERKLT_ID=GYK.ID AND GYFELH.DATUM <= ' + quotedstr(edtDatTol.Text) + '),0)) > 0 ' ;

  sdsLista.Close;

  if rbr1.checked then begin
    sOrder := ' ORDER BY KOD ' ;
  end;
  if rbr2.checked then begin
    sOrder := ' order by 2 ' ;
  end;
  if rbr3.checked then begin
    sOrder := ' order by 3 ' ;
  end;
  SQL := SQL + sOrder;

  sdsLista.DataSet.CommandText := SQL ;

  sdsLista.Open;

  if rbLista.Checked then begin
    if frxRepLista.LoadFromFile(dtmTarka.fr3Path + '\GyogyszerKltLista.fr3') then begin;
       // paraméter átadás a lista fejhez
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['SzuroFeltetelek'] := szurofelt;
       frxRepLista.Script.Variables['datum'] := edtDatTol.Text;

       frxRepLista.ShowReport;
    End;
  end else begin
    dtmTarka.ExcelExport(sdsLista, 'GyogyszerKlt.XLS');
  end;

  sdsLista.Close;
end;


end.
