unit TListHivSzarmIg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, uTALRadioGroup, DB, ADODB,
  uTalQuery, frxClass, frxDBSet, DBClient, uTALSimpleDataSet, uTALBitBtn,
  uTALStoredProc, Mask, uValidedit, uTALEdit;

type
  TfrmHivSzarmIg = class(TForm)
    lbListanev: TLabel;
    lbBika: TLabel;
    cbEgyed: TComboBox;
    RadioGroup1: TTalRadioGroup;
    bbtnPrint: TBitBtn;
    bbtnKilepes: TBitBtn;
    qListak: TTalQuery;
    btnMegTekMod: TBitBtn;
    sdsListHSzIg: TTalSimpleDataSet;
    frxDBDstHivSzarmIgList: TfrxDBDataset;
    btnUjra: TTalBitBtn;
    TalStoredProc2: TTalStoredProc;
    eENAR: TTalEdit;
    sdsListHSzIgIGDAT: TDateTimeField;
    sdsListHSzIgTKOD: TWideStringField;
    sdsListHSzIgUKOD: TWideStringField;
    sdsListHSzIgEGY: TWideStringField;
    sdsListHSzIgSOR: TIntegerField;
    sdsListHSzIgPER: TIntegerField;
    sdsListHSzIgMAS: TWideStringField;
    sdsListHSzIgKIDAT: TDateTimeField;
    sdsListHSzIgHITDAT: TDateTimeField;
    sdsListHSzIgNYELV: TWideStringField;
    sdsListHSzIgKPLSZ: TBCDField;
    sdsListHSzIgENAR: TWideStringField;
    sdsListHSzIgFULSZAM: TWideStringField;
    sdsListHSzIgNEV: TWideStringField;
    sdsListHSzIgSZULDAT: TDateTimeField;
    sdsListHSzIgTKV: TWideStringField;
    sdsListHSzIgFAJTAKOD: TIntegerField;
    sdsListHSzIgFAJTANEV: TWideStringField;
    sdsListHSzIgFAJTA_SZAZ: TBCDField;
    sdsListHSzIgIVAR: TWideStringField;
    sdsListHSzIgSV: TIntegerField;
    sdsListHSzIgELETNAPI_TGY: TIntegerField;
    sdsListHSzIgSTV_TGY: TIntegerField;
    sdsListHSzIgKMI: TBCDField;
    sdsListHSzIgTIPUS: TWideStringField;
    sdsListHSzIgIZMOLTSAG: TWideStringField;
    sdsListHSzIgLABSZERKEZET: TWideStringField;
    sdsListHSzIgERTEKELES_DATUMA: TDateTimeField;
    sdsListHSzIgAPA_KPLSZ: TBCDField;
    sdsListHSzIgAPA_ENAR: TWideStringField;
    sdsListHSzIgAPA_SZULDAT: TDateTimeField;
    sdsListHSzIgAPA_NEV: TWideStringField;
    sdsListHSzIgAPA_FULSZAM: TWideStringField;
    sdsListHSzIgAPA_FAJTAKOD: TIntegerField;
    sdsListHSzIgAPA_FAJTANEV: TWideStringField;
    sdsListHSzIgAPA_FAJTA_SZAZ: TBCDField;
    sdsListHSzIgAPA_SV: TIntegerField;
    sdsListHSzIgAPA_ETGY: TIntegerField;
    sdsListHSzIgAPA_STV_TGY: TIntegerField;
    sdsListHSzIgAPA_TIPUS: TWideStringField;
    sdsListHSzIgAPA_IZMOLTSAG: TWideStringField;
    sdsListHSzIgAPA_LABSZERKEZET: TWideStringField;
    sdsListHSzIgAPA_ERT_DAT: TDateTimeField;
    sdsListHSzIgANYA_NEV: TWideStringField;
    sdsListHSzIgANYA_SZULDAT: TDateTimeField;
    sdsListHSzIgANYA_ENAR: TWideStringField;
    sdsListHSzIgANYA_ELLSZAM: TWideStringField;
    sdsListHSzIgANYA_FULSZAM: TWideStringField;
    sdsListHSzIgANYA_FAJTA_KOD: TIntegerField;
    sdsListHSzIgANYA_FAJTANEV: TWideStringField;
    sdsListHSzIgANYA_FAJTA_SZAZ: TBCDField;
    sdsListHSzIgANYA_SV: TIntegerField;
    sdsListHSzIgANYA_KMI: TBCDField;
    sdsListHSzIgANYA_TIPUS: TWideStringField;
    sdsListHSzIgANYA_IZMOLTSAG: TWideStringField;
    sdsListHSzIgANYA_LABSZERKEZET: TWideStringField;
    sdsListHSzIgANYA_ERT_DAT: TDateTimeField;
    sdsListHSzIgAPAI_NAGYAPA_NEV: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_SZULDAT: TDateTimeField;
    sdsListHSzIgAPAI_NAGYAPA_KPLSZ: TBCDField;
    sdsListHSzIgAPAI_NAGYAPA_ENAR: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_FULSZAM: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_FAJTAKOD: TIntegerField;
    sdsListHSzIgAPA_NAGYAPA_FAJTANEV: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_FAJTA_SZAZ: TBCDField;
    sdsListHSzIgAPAI_NAGYAPA_SV: TIntegerField;
    sdsListHSzIgAPAI_NAGYAPA_TGY: TIntegerField;
    sdsListHSzIgAPAI_NAGYAPA_STV_TGY: TIntegerField;
    sdsListHSzIgAPAI_NAGYAPA_TIPUS: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_IZMOLTSAG: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_LABSZERKEZET: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_ERTDAT: TDateTimeField;
    sdsListHSzIgAPAI_NAGYAPA_APJA_KPLSZ: TBCDField;
    sdsListHSzIgAPAI_NAGYAPA_APJA_ENAR: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_APJA_FULSZAM: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_APJA_NEV: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_ANYJA_ENAR: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField;
    sdsListHSzIgAPAI_NAGYAPA_ANYJA_NEV: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_NEV: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_SZULDAT: TDateTimeField;
    sdsListHSzIgAPAI_NAGYANYA_ENAR: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_ELLSZAM: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_FULSZAM: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_SV: TIntegerField;
    sdsListHSzIgAPAI_NAGYANYA_KMI: TBCDField;
    sdsListHSzIgAPAI_NAGYANYA_APJA_KPLSZ: TBCDField;
    sdsListHSzIgAPAI_NAGYANYA_APJA_NEV: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_APJA_ENAR: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_APJA_FULSZAM: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_ANYJA_ENAR: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField;
    sdsListHSzIgAPAI_NAGYANYA_ANYJA_NEV: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_KPLSZ: TBCDField;
    sdsListHSzIgANYAI_NAGYAPA_ENAR: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_FULSZAM: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_NEV: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_SZULDAT: TDateTimeField;
    sdsListHSzIgANYAI_NAGYAPA_FAJTAKOD: TIntegerField;
    sdsListHSzIgANYAI_NAGYAPA_FAJTANEV: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_FAJTA_SZAZ: TBCDField;
    sdsListHSzIgANYAI_NAGYAPA_SV: TIntegerField;
    sdsListHSzIgANYAI_NAGYAPA_ETGY: TIntegerField;
    sdsListHSzIgANYAI_NAGYAPA_STV_TGY: TIntegerField;
    sdsListHSzIgANYAI_NAGYAPA_TIPUS: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_IZMOLTSG: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_LABSZERKEZET: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_ERT_DAT: TDateTimeField;
    sdsListHSzIgANYAI_NAGYAPA_APJA_KPLSZ: TBCDField;
    sdsListHSzIgANYAI_NAGYAPA_APJA_ENAR: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_APJA_NEV: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_APJA_FULSZAM: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_ANYJA_ENAR: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_ANYJA_NEV: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_ANYJA_ELLSZAM: TWideStringField;
    sdsListHSzIgANYAI_NAGYAPA_ANYJA_FULSZAM: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_NEV: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_SZULDAT: TDateTimeField;
    sdsListHSzIgANYAI_NAGYANYA_ENAR: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_ELLSZAM: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_FULSZAM: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_SV: TIntegerField;
    sdsListHSzIgANYAI_NAGYANYA_KMI: TBCDField;
    sdsListHSzIgANYAI_NAGYANYA_APJA_ENAR: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_APJA_KPLSZ: TBCDField;
    sdsListHSzIgANYAI_NAGYANYA_APJA_FULSZAM: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_APJA_NEV: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_ANYJA_ENAR: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_ANYJA_ELLSZAM: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_ANYJA_FULSZAM: TWideStringField;
    sdsListHSzIgANYAI_NAGYANYA_ANYJA_NEV: TWideStringField;
    sdsListHSzIgTERM_IDEJE: TDateTimeField;
    sdsListHSzIgTERM_BIKA_KPLSZ: TBCDField;
    sdsListHSzIgTERM_BIKA_ENAR: TWideStringField;
    sdsListHSzIgTERM_BIKA_NEV: TWideStringField;
    sdsListHSzIgTERM_BIKA_SZULDAT: TDateTimeField;
    sdsListHSzIgTERM_BIKA_FULSZAM: TWideStringField;
    sdsListHSzIgTERM_BIKA_FAJTAKOD: TIntegerField;
    sdsListHSzIgTERM_BIKA_FAJTANEV: TWideStringField;
    sdsListHSzIgTERM_BIKA_FAJTA_SZAZ: TBCDField;
    sdsListHSzIgTERM_BIKA_SV: TIntegerField;
    sdsListHSzIgTERM_BIKA_ETGY: TIntegerField;
    sdsListHSzIgTERM_BIKA_STV_TGY: TIntegerField;
    sdsListHSzIgTERM_BIKA_TIPUS: TWideStringField;
    sdsListHSzIgTERM_BIKA_IZMOLTSAG: TWideStringField;
    sdsListHSzIgTERM_BIKA_LABSZERKEZET: TWideStringField;
    sdsListHSzIgTERM_BIKA_ERT_DAT: TDateTimeField;
    sdsListHSzIgTERM_BIKA_APJA_KPLSZ: TBCDField;
    sdsListHSzIgTERM_BIKA_APJA_ENAR: TWideStringField;
    sdsListHSzIgTERM_BIKA_APJA_NEVE: TWideStringField;
    sdsListHSzIgTERM_BIKA_APJA_SZULDAT: TDateTimeField;
    sdsListHSzIgTERM_BIKA_APJA_FULSZAM: TWideStringField;
    sdsListHSzIgTERM_BIKA_ANYJA_KMI: TBCDField;
    sdsListHSzIgTERM_BIKA_ANYJA_NEV: TWideStringField;
    sdsListHSzIgTERM_BIKA_ANYJA_ENAR: TWideStringField;
    sdsListHSzIgTERM_BIKA_ANYJA_FULSZAM: TWideStringField;
    sdsListHSzIgTERM_BIKA_ANYJA_SV: TIntegerField;
    sdsListHSzIgTERM_BIKA_ANYJA_ELLSZAM: TWideStringField;
    sdsListHSzIgTERM_BIKA_ANYJA_SZULDAT: TDateTimeField;
    sdsListHSzIgTERM_BIKA_ANYJA_TIPUS: TWideStringField;
    sdsListHSzIgTERM_BIKA_ANYJA_IZMOLTSAG: TWideStringField;
    sdsListHSzIgTERM_BIKA_ANYJA_LABSZERKEZET: TWideStringField;
    sdsListHSzIgTERM_BIKA_ANYJA_ERT_DAT: TDateTimeField;
    sdsListHSzIgTENYESZTO_NEV: TWideStringField;
    sdsListHSzIgTENYESZTO_CIM: TWideStringField;
    sdsListHSzIgTULAJ_NEV: TWideStringField;
    sdsListHSzIgTULAJ_CIM: TWideStringField;
    sdsListHSzIgTENYESZTO_KOD: TWideStringField;
    sdsListHSzIgTULAJ_KOD: TWideStringField;
    sdsListHSzIgANYA_NET_PONT: TIntegerField;
    sdsListHSzIgNET_PONT: TIntegerField;
    sdsListHSzIgIKTATOSZAM: TWideStringField;
    sdsListHSzIgE_TOGY: TWideStringField;
    sdsListHSzIgANYA_TOGY: TWideStringField;
    sdsListHSzIgT_ANYA_TOGY: TWideStringField;
    frxRepListak: TfrxReport;
    procedure FormActivate(Sender: TObject);
    procedure bbtnPrintClick(Sender: TObject);
    procedure bbtnKilepesClick(Sender: TObject);
    procedure btnMegTekModClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnUjraClick(Sender: TObject);
    procedure eENARKeyPress(Sender: TObject; var Key: Char);
    procedure eENARExit(Sender: TObject);
  private
    { Private declarations }
//    Procedure EgyedComboTolt(n : Byte);
    Procedure SzarmigEllenorzes(Kellfigy:boolean = false);
    Function TablabaIr(irando : String): Boolean;
  public
    { Public declarations }
    Procedure HivSzarmIg;
  end;

var
  frmHivSzarmIg: TfrmHivSzarmIg;
  param1, param2, param3,
  ListaStr1, ListaStr2,
  ParamStr1 : String;

implementation

Uses udtmTarka, ufrmMain, TListHivSzarmIgMod;

{$R *.dfm}

Procedure TfrmHivSzarmIg.HivSzarmIg;
Begin
  ListaStr1 := 'HIVATALOS SZÁRMAZÁSI IGAZOLÁS';   // megnevezés
  ListaStr2 := 'HivatalosSzarmazasiIgazolas';     // *.fr3; *.xls név
  ParamStr1 := 'EGYEDENAR';

  frmHivSzarmIg.lbListanev.Caption := ListaStr1;
  frmHivSzarmIg.ShowModal;
End;

procedure TfrmHivSzarmIg.bbtnPrintClick(Sender: TObject);
Begin
  SzarmigEllenorzes;

  If frmHivSzarmIg.sdsListHSzIg.Active Then frmHivSzarmIg.sdsListHSzIg.Close;
  frmHivSzarmIg.sdsListHSzIg.Connection := dtmTarka.cnTarka;
  frmHivSzarmIg.frxDBDstHivSzarmIgList.DataSet := frmHivSzarmIg.sdsListHSzIg;
  frmHivSzarmIg.sdsListHSzIg.DataSet.Parameters.ParamByName(ParamStr1).Value := frmHivSzarmIg.eENAR.Text; // frmHivSzarmIg.cbEgyed.Text;

  Try
    Screen.Cursor := crHourGlass;
    frmHivSzarmIg.sdsListHSzIg.Open;
  Finally
    Screen.Cursor := crArrow;
  End;

  If frmHivSzarmIg.RadioGroup1.ItemIndex = 0 Then
     Begin
       If frmHivSzarmIg.frxRepListak.LoadFromFile(dtmTarka.fr3Path + '\' + ListaStr2 +'.fr3') Then
        Begin
          frmHivSzarmIg.frxRepListak.Variables.Clear;
          frmHivSzarmIg.frxRepListak.Script.Variables['p0'] := ListaStr1;
          frmHivSzarmIg.frxRepListak.Script.Variables['p1'] := param1 + '   ' +
                                                               param2 + '   ' +
                                                               param3;
          frmHivSzarmIg.frxRepListak.Script.Variables['p3'] := param1;
          frmHivSzarmIg.frxRepListak.Script.Variables['p4'] := param2;
          frmHivSzarmIg.frxRepListak.Script.Variables['p5'] := param3;

          frmHivSzarmIg.frxRepListak.ShowReport();
        End;
     End
   Else
     dtmTarka.ExcelExport(frmHivSzarmIg.sdsListHSzIg, ListaStr2 + '.XLS');
  frmHivSzarmIg.sdsListHSzIg.Close;
End;

Procedure TfrmHivSzarmIg.SzarmigEllenorzes(Kellfigy:boolean = false);
Var
  SQL_Text : String;
  letezik : Boolean;

Begin
  // az ENAR már létezik-e a SZARMIG táblában?

  letezik := False;
  With frmHivSzarmIg.qListak Do
   Begin
     If Active Then
      Close;
     SQL.Text := 'Select szarmig.enar from szarmig where szarmig.enar = ' + quotedstr(frmHivSzarmIg.eENAR.Text); //quotedstr(frmHivSzarmIg.cbEgyed.texT);
     Open;
     while not Eof do
      begin
        letezik := FieldByName('ENAR').AsString <> EmptyStr;
        If letezik then Break;
        Next;
      end ;
     Close;
   End;

  if Kellfigy then
    if Letezik then
      if dtmTarka.MsgDlg('Az egyedrõl már vannak adatok a származás táblában! Felülírja az alapadatokkal?', mtWarning, [mbYes, mbNo], 0) = mrYes then begin
        letezik := false;
      end;


  If Not letezik Then  //    Nem talált!
   Begin

        Begin
          frmHivSzarmIg.Cursor := crSQLWait;
          dtmTarka.cnTarka.BeginTrans;
          try
            frmHivSzarmIg.TalStoredProc2.Prepared := True;
            frmHivSzarmIg.TalStoredProc2.Parameters.ParamByName('PEGYED_ENAR').Value := frmHivSzarmIg.eENAR.Text; // frmHivSzarmIg.cbEgyed.texT;
            frmHivSzarmIg.TalStoredProc2.ExecProc;

            dtmTarka.cnTarka.CommitTrans;
            frmHivSzarmIg.TalStoredProc2.Prepared := False;
          except
            on E:Exception do
            begin
              dtmTarka.cnTarka.RollbackTrans;
              Exit;
            end;
          end;
          frmHivSzarmIg.Cursor := crDefault;
        End
   End;
End;

Function TfrmHivSzarmIg.TablabaIr(irando : String): Boolean;
Begin
  Result := false;
  If dtmTarka.cnTarka.Connected Then
   Begin
     dtmTarka.cnTarka.BeginTrans;
     Try
       dtmTarka.cnTarka.Execute(irando);
       dtmTarka.cnTarka.CommitTrans;
       Result := true;
     Except
       If dtmTarka.cnTarka.InTransaction Then
        Begin
          dtmTarka.cnTarka.RollbackTrans;
          Result := false;
        End;
     End;
   End;
End;

procedure TfrmHivSzarmIg.FormActivate(Sender: TObject);
begin
//  frmHivSzarmIg.sdsListHSzIg.Connection := dtmTarka.cnTarka;
  // TListHivSzarmIgMod.frmHSzIMod.sdsHSzIModIg.Connection := dtmTarka.cnTarka;
  TListHivSzarmIgMod.frmHSzIMod.sdsHSzIModLap.Connection := dtmTarka.cnTarka;


//  EgyedComboTolt(3);      kívánságra kivéve
  frmHivSzarmIg.eENAR.SetFocus;
end;
{
Procedure TfrmHivSzarmIg.EgyedComboTolt(n : Byte);
Begin
  Screen.Cursor := crHourGlass;

  frmHivSzarmIg.cbEgyed.Items.Clear;
  With frmHivSzarmIg.qListak Do
   Begin
     If Active Then
      Close;
     Case n Of
       1 : SQL.Text := '';
       2 : SQL.Text := '';
       3 : SQL.Text := 'select distinct(e.enar) ' +            // egyedek
                       'from egyedek e ' +
                       'where Length(Trim(e.enar)) > 6 ' +
                       'order by e.enar';
     End;
     Open;
     While Not Eof Do
      Begin
        frmHivSzarmIg.cbEgyed.Items.Add(Fields[0].AsString);
        Next;
      End;
     Close;
   End;
  Screen.Cursor := crArrow;
End;
 }
procedure TfrmHivSzarmIg.bbtnKilepesClick(Sender: TObject);
begin
  frmHivSzarmIg.Close;
end;

procedure TfrmHivSzarmIg.btnMegTekModClick(Sender: TObject);
begin
  SzarmigEllenorzes;
  frmHSzIMod.Modosit;
end;

procedure TfrmHivSzarmIg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // TListHivSzarmIgMod.frmHSzIMod.sdsHSzIModIg.Close;
  TListHivSzarmIgMod.frmHSzIMod.sdsHSzIModLap.Close;

  frmHivSzarmIg.btnUjra.Enabled := False;
  frmHivSzarmIg.btnMegTekMod.Enabled := False;
  frmHivSzarmIg.bbtnPrint.Enabled := False;
end;

procedure TfrmHivSzarmIg.btnUjraClick(Sender: TObject);
Var
  SQL_Text : String;

begin
  // csak kitöltött eENAR esetén fusson!!!
  If Length(Trim(frmHivSzarmIg.eENAR.Text)) > 0 Then
     Begin
       SzarmigEllenorzes(true);
     End
   Else
     Begin
       ShowMessage('Kérem adja meg az ENAR számot!');
     End;
end;

procedure TfrmHivSzarmIg.eENARKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = Char(VK_BACK) Then
    Begin
      frmHivSzarmIg.btnUjra.Enabled := False;
      frmHivSzarmIg.btnMegTekMod.Enabled := False;
      frmHivSzarmIg.bbtnPrint.Enabled := False;
    End;
  If Key = #0 Then
   Begin
     With frmHivSzarmIg.qListak Do
      Begin
        If Active Then Close;
        SQL.Text := 'SELECT rownum FROM EGYEDEK WHERE enar = ' + quotedstr(frmHivSzarmIg.eENAR.Text);
        Open;
        If(Fields[0].AsString) = '1' Then
           Begin
             frmHivSzarmIg.btnUjra.Enabled := True;
             frmHivSzarmIg.btnMegTekMod.Enabled := True;
             frmHivSzarmIg.bbtnPrint.Enabled := True;
           End
         Else
           ShowMessage('Nem létezõ ENAR!');
        Close;
      End;
   End;
end;


procedure TfrmHivSzarmIg.eENARExit(Sender: TObject);
begin
     With frmHivSzarmIg.qListak Do
      Begin
        If Active Then Close;
        SQL.Text := 'SELECT rownum FROM EGYEDEK WHERE enar = ' + quotedstr(frmHivSzarmIg.eENAR.Text);
        Open;
        If(Fields[0].AsString) = '1' Then
           Begin
             frmHivSzarmIg.btnUjra.Enabled := True;
             frmHivSzarmIg.btnMegTekMod.Enabled := True;
             frmHivSzarmIg.bbtnPrint.Enabled := True;
           End
         Else
           ShowMessage('Nem létezõ ENAR!');
        Close;
      End;
end;

end.

