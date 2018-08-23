unit QfrmSzarmLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmNyomtatoOs, DB, DBClient, uTALSimpleDataSet, StrUtils,
  uTALRadioButton, StdCtrls, uTALGroupBox, ActnList, Buttons, uTALBitBtn,
  ExtCtrls, frxClass, frxDBSet;

type
  TfrmSzarmLista = class(TfrmNyomtatoOs)
    TalGroupBox3: TTalGroupBox;
    rbExcel: TRadioButton;
    rbLista: TRadioButton;
    TalGroupBox1: TTalGroupBox;
    rbPsAzon: TTalRadioButton;
    rbEnar: TTalRadioButton;
    TalGroupBox4: TTalGroupBox;
    rbCsakElo: TTalRadioButton;
    rbMindenki: TTalRadioButton;
    TalGroupBox2: TTalGroupBox;
    rbCsakTehen: TTalRadioButton;
    rbCsakUszo: TTalRadioButton;
    rbMind: TTalRadioButton;
    sdsNyomtat: TTalSimpleDataSet;
    dtsNyomtat: TDataSource;
    frxDBNyomtat: TfrxDBDataset;
    TalGroupBox5: TTalGroupBox;
    rbApa: TTalRadioButton;
    rbEgyed: TTalRadioButton;
    sdsNyomtatENAR: TWideStringField;
    sdsNyomtatPSION_AZONOSITO: TWideStringField;
    sdsNyomtatSZULDAT: TDateTimeField;
    sdsNyomtatANYA_ENAR: TWideStringField;
    sdsNyomtatANYANEV: TWideStringField;
    sdsNyomtatANYAKONS: TWideStringField;
    sdsNyomtatANYASZULDAT: TDateTimeField;
    sdsNyomtatAPAAZON: TWideStringField;
    sdsNyomtatAPANEV: TWideStringField;
    sdsNyomtatAPASZULDAT: TDateTimeField;
    sdsNyomtatAPAKONS: TWideStringField;
    sdsNyomtatANAAZON: TWideStringField;
    sdsNyomtatANANEV: TWideStringField;
    sdsNyomtatANASZULDAT: TDateTimeField;
    sdsNyomtatANAKONS: TWideStringField;
    sdsNyomtatANPAZON: TWideStringField;
    sdsNyomtatANPNEV: TWideStringField;
    sdsNyomtatANPSZULDAT: TDateTimeField;
    sdsNyomtatANPKONS: TWideStringField;
    sdsNyomtatAPANANYA_AZON: TWideStringField;
    sdsNyomtatAPAANYANEV: TWideStringField;
    sdsNyomtatAPAPAZON: TWideStringField;
    sdsNyomtatAPAPNEV: TWideStringField;
    sdsNyomtatAPAPKONS: TWideStringField;
    sdsNyomtatAPAPSZULDAT: TDateTimeField;
    rptNyomtat: TfrxReport;
    procedure actOKExecute(Sender: TObject);
    procedure sdsNyomtatANYA_AZONOSITOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
    alapSQL : string;
  public
    { Public declarations }
  end;


procedure SzarmLista;

implementation

uses udtmTarka;

{$R *.dfm}

procedure SzarmLista;
var
  frmSzarmLista: TfrmSzarmLista;
begin
  frmSzarmLista := TfrmSzarmLista.Create(Application);

  with frmSzarmLista do begin
    alapSQL := sdsNyomtat.DataSet.CommandText;
    sdsNyomtat.Connection := dtmTarka.cnTarka;

    try
      frmSzarmLista.ShowModal;
    finally
      if sdsNyomtat.Active then sdsNyomtat.Close;
    end;
  end;
  FreeAndNil(frmSzarmLista);

end;

procedure TfrmSzarmLista.actOKExecute(Sender: TObject);
const
  order1 = 'ORDER BY 1' ;
  order2 = 'ORDER BY SUBSTR(e.ENAR,6,4)' ;
  order3 = 'ORDER BY E.APAKLSZ, ';
var
  PlusWhere : string;
  Rendezettseg : string;
  szurofelt : string;
begin
  PlusWhere := '';
  szurofelt := '';
   // tehén összes vagy élõ
  If rbMindenki.Checked Then
     szurofelt:='Minden egyed' + #13
  Else begin
     szurofelt:='Csak élõ egyedek' + #13;
     PlusWhere := ' AND (E.KIKDAT is null) ';
  end;
   // tehén összes vagy élõ
  If rbMind.Checked Then begin
     szurofelt := Szurofelt + 'Üszõ és tehén ' + #13
  end;
  If rbCsakTehen.Checked Then begin
     szurofelt := Szurofelt + 'Csak tehén ' + #13;
     PlusWhere := PlusWhere + ' AND exists (select 1 from ellesek where ellesek.egyed_id=E.id) ';
  end;
  If rbCsakUszo.Checked Then begin
     szurofelt := Szurofelt + 'Csak üszõ ' + #13;
     PlusWhere := PlusWhere + ' AND not exists (select 1 from ellesek where ellesek.egyed_id=E.id) ';
  end;

  if rbEgyed.Checked then begin
    Rendezettseg := 'Egyed azonosítóra növekvõ';
    if rbEnar.Checked then
      sdsNyomtat.DataSet.CommandText := AlapSqL + PlusWhere + order1
    else
      sdsNyomtat.DataSet.CommandText := AlapSqL + PlusWhere + order2;
  end else begin
    Rendezettseg := 'Apa azonosítóra növekvõ';
    if rbEnar.Checked then
      sdsNyomtat.DataSet.CommandText := AlapSqL + PlusWhere + order3 + '1'
    else
      sdsNyomtat.DataSet.CommandText := AlapSqL + PlusWhere + order3 + '2';
  end;

  sdsNyomtat.Open;

  if rbLista.Checked then begin
    if  rptNyomtat.LoadFromFile(dtmTarka.fr3Path + '\SzarmLista.fr3') then begin
       // paraméter átadás a lista fejhez
       rptNyomtat.Variables.Clear;
       rptNyomtat.Script.Variables['SzuroFeltetelek'] := szurofelt;
       if rbEnar.Checked then
         rptNyomtat.Script.Variables['PSION']:= 'NEM'
       else
         rptNyomtat.Script.Variables['PSION']:= 'IGEN';
       rptNyomtat.Script.Variables['Rendezettseg'] := Rendezettseg ;
       rptNyomtat.ShowReport;
    End;
  end else begin
    dtmTarka.ExcelExport(sdsNyomtat, 'SzarmLista.XLS');
  end;
  sdsNyomtat.Close;
  inherited;
end;

procedure TfrmSzarmLista.sdsNyomtatANYA_AZONOSITOGetText(Sender: TField;
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
