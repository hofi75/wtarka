unit Allomany;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn,
  ExtCtrls, DBClient, uTALSimpleDataSet, DB, ADODB, uTalQuery, frxClass,
  frxDBSet, Mask, uValidedit, uTALEdit, uTALLabel, uTALRadioButton,
  uTALGroupBox, uTALComboBox, frxExportXLS, frxExportHTML, frxExportPDF,
  QfrmEgyediLapLista, ShellApi,
  ComCtrls,
  DBCtrls, uTALDBLookupComboBox;

type
  TfrmAllomany = class(TForm)
    frxDBLista: TfrxDBDataset;
    qryList: TTalQuery;
    sdsLista: TTalSimpleDataSet;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    Panel1: TPanel;
    cbTenyeszet: TTalDBLookupComboBox;
    TalLabel7: TTalLabel;
    sdsTenyeszet: TTalSimpleDataSet;
    sdsTenyeszetLISTA: TWideStringField;
    sdsTenyeszetTKOD: TWideStringField;
    sdsTenyeszetEKOD: TWideStringField;
    sdsTenyeszetRKOD: TWideStringField;
    sdsTenyeszetALLAPOT: TWideStringField;
    sdsTenyeszetTIPUS: TWideStringField;
    sdsTenyeszetBDAT: TDateTimeField;
    sdsTenyeszetIRSZ: TIntegerField;
    sdsTenyeszetVAROS: TWideStringField;
    sdsTenyeszetKTNEV: TWideStringField;
    sdsTenyeszetKTJELL: TWideStringField;
    sdsTenyeszetHSZ: TWideStringField;
    sdsTenyeszetTNEV1: TWideStringField;
    sdsTenyeszetTNEV2: TWideStringField;
    sdsTenyeszetTNEV3: TWideStringField;
    sdsTenyeszetTEL: TWideStringField;
    sdsTenyeszetEMAIL: TWideStringField;
    sdsTenyeszetFAX: TWideStringField;
    sdsTenyeszetTIRSZ: TWideStringField;
    sdsTenyeszetTVAROS: TWideStringField;
    sdsTenyeszetTKTNEV: TWideStringField;
    sdsTenyeszetTKTJELL: TWideStringField;
    sdsTenyeszetTHSZ: TWideStringField;
    sdsTenyeszetKKOD: TWideStringField;
    sdsTenyeszetTMEGYE: TWideStringField;
    sdsTenyeszetCHANGED: TDateTimeField;
    sdsTenyeszetROW_ID: TVarBytesField;
    dtsTenyeszet: TDataSource;
    DataSource1: TDataSource;
    edtDatum1: TTalEdit;
    edtDatum2: TTalEdit;
    TalLabel1: TTalLabel;
    TalLabel9: TTalLabel;
    sdsListaID: TBCDField;
    sdsListaTENYESZET: TWideStringField;
    sdsListaENAR: TWideStringField;
    sdsListaTEHENSZAM: TWideStringField;
    sdsListaFULSZAM: TWideStringField;
    sdsListaID_ENAR: TWideStringField;
    sdsListaANYA_ENAR: TWideStringField;
    sdsListaANYA_ELL: TWideStringField;
    sdsListaANYA_ID_ENAR: TWideStringField;
    sdsListaDONOR_ANYA: TWideStringField;
    sdsListaAPAKLSZ: TWideStringField;
    sdsListaAPA_FULSZAM: TWideStringField;
    sdsListaID_APA: TWideStringField;
    sdsListaNEV: TWideStringField;
    sdsListaSZULDAT: TDateTimeField;
    sdsListaFAJTAKOD: TWideStringField;
    sdsListaVER1: TWideStringField;
    sdsListaVSZ1: TBCDField;
    sdsListaVER2: TWideStringField;
    sdsListaVSZ2: TBCDField;
    sdsListaVER3: TWideStringField;
    sdsListaVSZ3: TBCDField;
    sdsListaVER4: TWideStringField;
    sdsListaVSZ4: TBCDField;
    sdsListaSZORSZ: TWideStringField;
    sdsListaE_ORSZ: TWideStringField;
    sdsListaKKOD: TWideStringField;
    sdsListaSZIN: TWideStringField;
    sdsListaSZARVALTSAG: TWideStringField;
    sdsListaBIKANEVELO: TWideStringField;
    sdsListaTENYTOM: TIntegerField;
    sdsListaMIN: TBCDField;
    sdsListaTKV: TWideStringField;
    sdsListaMLEVEL1: TWideStringField;
    sdsListaMLEVEL2: TWideStringField;
    sdsListaKIKOD: TWideStringField;
    sdsListaKIKOK: TWideStringField;
    sdsListaKIKDAT: TDateTimeField;
    sdsListaSTATUS: TWideStringField;
    sdsListaALLAPOT: TWideStringField;
    sdsListaALLDAT: TDateTimeField;
    sdsListaIVAR: TWideStringField;
    sdsListaSZUL_SULY: TIntegerField;
    sdsListaMOD_DAT: TDateTimeField;
    sdsListaMOD_KOD: TWideStringField;
    sdsListaMEGJEGYZES: TWideStringField;
    sdsListaVALDAT: TDateTimeField;
    sdsListaVALTOM: TIntegerField;
    sdsListaTOM205: TIntegerField;
    sdsListaSV: TIntegerField;
    sdsListaCHANGED: TDateTimeField;
    sdsListaROW_ID: TVarBytesField;
    sdsListaKIKHELY: TWideStringField;
    sdsListaJEL: TBCDField;
    sdsListaSZARM_TENY: TWideStringField;
    sdsListaIKER: TBCDField;
    sdsListaENAR_BE_DATUM: TDateTimeField;
    sdsListaNET_PONT: TIntegerField;
    sdsListaATKOTES_ID: TBCDField;
    sdsListaTKVSZAM: TWideStringField;
    sdsListaATORZSKONYVES: TWideStringField;
    sdsListaUJ: TWideStringField;
    sdsListaDNS_DATE: TDateTimeField;
    sdsListaDNS_IKTATOSZAM: TWideStringField;
    sdsListaHATALYTALAN: TWideStringField;
    gbKimenet: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    frxRepList: TfrxReport;
    btnPrint: TTalBitBtn;
    btnClose: TTalBitBtn;
    procedure btnPrintClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
//    procedure rbKiesettClick(Sender: TObject);
//    procedure actOKExecute(Sender: TObject);
//    procedure cbIvarCloseUp(Sender: TObject);
  private
    { Private declarations }
    fajtaKod : Array of string;
    sAlapSelect : string;
//    procedure ComboTolt;
  public
    { Public declarations }
  end;


procedure AllomanyStart;

implementation

uses udtmTarka;

{$R *.dfm}

procedure AllomanyStart;
var
  frmAllomany: TfrmAllomany;
begin
  frmAllomany := TfrmAllomany.Create(Application);
  try
  with frmAllomany do begin
    edtDatum1.Text := FormatDateTime('yyyy.mm.dd',now());
    edtDatum2.Text := FormatDateTime('yyyy.mm.dd',now());
    sdsLista.Connection := dtmTarka.cnTarka;
    qryList.Connection := dtmTarka.cnTarka;
    sAlapSelect := sdsLista.DataSet.CommandText;
//    comboTolt;
    if dtmTarka.TenyeszetWhere <> EmptyStr then begin
//      edtTenyeszet.Enabled := false;
//      edtTenyeszet.Text := dtmTarka.TenyeszetTKOD
    end else begin
//      edtTenyeszet.Enabled := true;
    end;
    sdsTenyeszet.Close;
    sdsTenyeszet.Connection := dtmTarka.cnTarka;

    // csak a sajat tenyeszetet latja mindenki, aki nem admin
    if (dtmTarka.UserTenyeszet = '0000000') or (dtmTarka.isAdmin) then
        sdsTenyeszet.DataSet.CommandText :=
         'SELECT TKOD || ' + QuotedStr(' - ') + ' || TNEV2 AS LISTA, * ' +
         'FROM TENY ' +
         'ORDER BY TNEV2'
    else
       sdsTenyeszet.DataSet.CommandText :=
         'SELECT TKOD || ' + QuotedStr(' - ') + ' || TNEV2 AS LISTA, * ' +
         '  FROM TENY ' +
         '  WHERE TKOD = ' + QuotedStr(dtmTarka.UserTenyeszet) +
         '  ORDER BY TKOD';

    cbTenyeszet.KeyValue := dtmTarka.UserTenyeszet;
    sdsTenyeszet.Open;

    ShowModal;
  end;
  finally
//    if frmAllomany.qryList.Active then frmAllomany.qryList.Close;
//    if frmAllomany.sdsLista.Active then frmAllomany.sdsLista.Close;
    FreeAndNil(frmAllomany);
  end;
end;

procedure TfrmAllomany.btnPrintClick(Sender: TObject);
begin
  sdsLista.DataSet.CommandText :=
    'select * from egyedek ' +
    'where tenyeszet = ' + QuotedStr(cbTenyeszet.KeyValue) + ' and ' +
    'szuldat <= TO_DATE(' + QuotedStr(edtDatum2.Text) + ',' + QuotedStr('yyyy.mm.dd') + ') and ' +
    '(kikdat is null or kikdat >= TO_DATE(' + QuotedStr(edtDatum1.Text) + ',' + QuotedStr('yyyy.mm.dd') + '))';
  try
    Screen.Cursor := crHourGlass;
    sdsLista.Open;
  finally
    Screen.Cursor := crArrow;
  end;

  if rbLista.Checked then begin
    frxDBLista.DataSet := sdsLista;
    If frxRepList.LoadFromFile(dtmTarka.fr3Path + '\Allomany.fr3') Then Begin
       // paraméter átadás a lista fejhez
       frxRepList.Variables.Clear;
       frxRepList.Script.Variables['datum1'] := edtDatum1.Text;
       frxRepList.Script.Variables['datum2'] := edtDatum2.Text;
       frxRepList.Script.Variables['tenyeszet'] := Trim(cbTenyeszet.Text);
       frxRepList.ShowReport;
     End;
  end else begin
      dtmTarka.ExcelExport(sdsLista, 'allomany.xls');
  end;

  sdsLista.Close;

end;

procedure TfrmAllomany.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
