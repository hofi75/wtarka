unit QfrmSzarmCsopLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, ActnList, StdCtrls, Buttons, uTALBitBtn,
  ExtCtrls, uTALGroupBox, DB, frxClass, frxDBSet, DBClient, strUtils,
  uTALSimpleDataSet;

type
  TSzarmCsopLista = class(TfrmNyomtatoOs)
    gbSorrend: TTalGroupBox;
    rbBelt: TRadioButton;
    rbEgyed: TRadioButton;
    gbKimenet: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    sdsLista: TTalSimpleDataSet;
    dtsLista: TDataSource;
    frxDBLista: TfrxDBDataset;
    sdsListaBIKA: TWideStringField;
    sdsListaEGYED: TWideStringField;
    sdsListaANYA: TWideStringField;
    sdsListaANYA_NAGYANYA: TWideStringField;
    sdsListaANYA_NAGYAPA: TWideStringField;
    sdsListaAPA: TWideStringField;
    sdsListaAPA_NAGYANYA: TWideStringField;
    sdsListaAPA_NAGYAPA: TWideStringField;
    sdsListaCSILLAG: TWideStringField;
    frxRepLista: TfrxReport;
    sdsListaBELTENY: TBCDField;
    procedure actOKExecute(Sender: TObject);
    procedure sdsListaEGYEDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
    AlapSelect : string;
  public
    { Public declarations }
  end;


procedure SzarmCsopLista;

implementation

uses udtmTarka;

{$R *.dfm}

procedure SzarmCsopLista;
var
  SzarmCsopLista: TSzarmCsopLista;
begin
  SzarmCsopLista := TSzarmCsopLista.Create(Application);
  SzarmCsopLista.sdsLista.Connection := dtmTarka.cnTarka;
  try
    SzarmCsopLista.AlapSelect := SzarmCsopLista.sdsLista.DataSet.CommandText;
    SzarmCsopLista.ShowModal;
  finally
    FreeAndNil(SzarmCsopLista);
  end;
end;



procedure TSzarmCsopLista.actOKExecute(Sender: TObject);
var
  szurofelt : String;
  feltetelek : WideString;
  sikeresnyitas : boolean;
  order, rendezettseg : string;
begin
  szurofelt:='';
  feltetelek:='';

  if rbEgyed.Checked then begin
      order := ' order by egyed ';
      rendezettseg := 'Egyed azonoítóra növekvõ ';
  end;
  if rbBelt.Checked then begin
      order := ' order by szarm_rep.BELTENY desc, egyed asc ';
      rendezettseg := 'Beltenyésztési együtthatóra csökkenõ';
  end;

  if sdsLista.Active then sdsLista.Close;

  sdsLista.DataSet.CommandText := AlapSelect + feltetelek + order;

  sdsLista.Open;
  if rbLista.Checked then begin
    sikeresnyitas := frxRepLista.LoadFromFile(dtmTarka.fr3Path + '\SzarmCsopLista.fr3');
    if sikeresnyitas then begin
       // paraméter átadás a lista fejhez
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['SzuroFeltetelek'] := szurofelt;
       frxRepLista.Script.Variables['Rendezettseg'] := Rendezettseg;
       frxRepLista.ShowReport;
    End;
  end else begin
    dtmTarka.ExcelExport(sdsLista, 'SzarmCsopElemz.xls');
  end;
  sdsLista.Close;
  inherited;
end;



procedure TSzarmCsopLista.sdsListaEGYEDGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  aa : string;
begin
  if Sender.Value = Null then
    aa := ''
  else
    aa := Sender.Value;
  if ((LeftStr(aa,1) = '3') and (Length(aa)= 10)) then
      Text := LeftStr(aa,5) + '-'+ midstr(aa ,6, 4) + '-'  + RightStr(aa,1)
  else if ((LeftStr(aa,3) = 'HU3') and (Length(aa)=12)) then
         Text :=LeftStr(aa,7) + '-'+ midstr(aa ,8, 4) + '-' + RightStr(aa,1)
       else
         Text := aa;
end;

end.
