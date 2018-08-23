unit QfrmCsopSor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uTALComboBox, Mask, uValidedit, uTALEdit, uTALLabel,
  ActnList, Buttons, Wwdbigrd, Grids, Wwdbgrid, uTALDBGrid, ExtCtrls, Db,
  uTALMaskEdit, uTALSpeedButton, DBCtrls, uTALDBLookupComboBox, frxClass,
  strUtils, frxDBSet, ADODB, uTalQuery, Wwkeycb, uTALSearch, DBClient,
  uTALSimpleDataSet;


type
  TfrmCsopSor = class(TForm)
    pnlKereses: TPanel;
    Label1: TLabel;
    pnlGombok: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    btnNyomtat: TBitBtn;
    ActionList1: TActionList;
    actOK: TAction;
    actMegsem: TAction;
    TalLabel7: TTalLabel;
    edtLakt1: TTalEdit;
    TalLabel8: TTalLabel;
    edtLakt2: TTalEdit;
    TalLabel10: TTalLabel;
    btnLeker: TBitBtn;
    lucVemh: TTalComboBox;
    btnVemhTorol: TTalSpeedButton;
    grdVal1: TTalDBGrid;
    qryLista: TTalQuery;
    frxDBLista: TfrxDBDataset;
    BitBtn1: TBitBtn;
    actFeltolt: TAction;
    TalLabel6: TTalLabel;
    edtLakn1: TTalEdit;
    TalLabel11: TTalLabel;
    edtLakn2: TTalEdit;
    BitBtn2: TBitBtn;
    TalLabel12: TTalLabel;
    BitBtn3: TBitBtn;
    TalSearch1: TTalSearch;
    frxRepLista: TfrxReport;
    sdsBon: TTalSimpleDataSet;
    sdsBonID: TBCDField;
    sdsBonENAR: TWidestringField;
    sdsBonSZULDAT: TDateTimeField;
    sdsBonMLEVEL1: TWidestringField;
    sdsBonMLEVEL2: TWidestringField;
    sdsBonIVAR: TWidestringField;
    sdsBonIVARNEV: TWidestringField;
    sdsBonANYA_ENAR: TWidestringField;
    sdsBonELLES_LEF: TWidestringField;
    sdsBonBORJU_SULY: TBCDField;
    sdsBonMOD_DAT: TDateTimeField;
    sdsBonMOD_KOD: TWidestringField;
    sdsBonSZINNEV: TWidestringField;
    sdsBonELLLEFNEV: TWidestringField;
    sdsBonNEV: TWidestringField;
    sdsBonFULSZAM: TWidestringField;
    sdsBonSZIN: TWidestringField;
    sdsBonALLDAT: TDateTimeField;
    sdsBonFAJTANEV: TSmallintField;
    dtsBon: TDataSource;
    procedure btnVemhTorolClick(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure btnNyomtatClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure actFeltoltExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure grdVal1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    feladat : string;
    // csoportok : array of string;
    VemhKod : array of string;
    AlapSelect : string;
  public
    { Public declarations }
  end;

var
  frmCsopSor: TfrmCsopSor;

function OpenCsopVal:Boolean;

implementation

uses udtmTarka;

{$R *.dfm}



function OpenCsopVal:Boolean;
var
 i : integer;
begin
  Result := false;
  frmCsopSor := TfrmCsopSor.Create(Application);

//  frmCsopSor.AlapSelect := dtmTalp.sdsCsopSor.DataSet.CommandText;
  frmCsopSor.Caption := 'Háremszerû termékenyítések rögzítése';
  frmCsopSor.feladat := 'valogat';
  with dtmTarka.qryVemhKod do begin
    Open;
    SetLength(frmCsopSor.VemhKod ,RecordCount);
    First;
    i := 0;
    While not eof do begin
      frmCsopSor.lucVemh.Items.Add(FieldByName('KOD_NEV').AsString);
      frmCsopSor.VemhKod[i] := FieldByName('KOD').AsString;
      i := i+1;
      next;
    end;
    Close;
  end;
  frmCsopSor.sdsBon.Connection := dtmTarka.cnTarka;
  frmCsopSor.sdsBon.Open;
  frmCsopSor.grdVal1.FixedCols := 2;
  frmCsopSor.btnNyomtat.Visible := false;
  frmCsopSor.BitBtn1.Visible := false;
  frmCsopSor.BitBtn3.Visible := false;
  frmCsopSor.btnNyomtat.Visible := false;
  frmCsopSor.btnOK.Hint := 'A kijelölt egyedek felvétele';
  frmCsopSor.grdVal1.SortColumn := 0;

  frmCsopSor.ShowModal;

  if frmCsopSor.sdsBon.Active then frmCsopSor.sdsBon.Close;
  FreeAndNil(frmCsopSor);
end;



procedure TfrmCsopSor.btnVemhTorolClick(Sender: TObject);
begin
  lucVemh.Text := '';
end;



procedure TfrmCsopSor.btnLekerClick(Sender: TObject);
var
  add_where : string;
begin
  if not dtmTarka.LicenceDatEll then exit;
  Add_where := '';
  if trim(edtLakn1.Text) <> EmptyStr then
    add_where := Add_where +
     'and ((SELECT DATEDIFF(day, MAX(ELLESEK.elles_datum),getdate()) from ELLESEK WHERE ELLESEK.egyedek_id=EE.id) >= '+ edtLakn1.Text+')';
  if trim(edtLakn2.Text) <> EmptyStr then
    add_where := Add_where +
     'and ((SELECT DATEDIFF(day, MAX(ELLESEK.elles_datum),getdate()) from ELLESEK WHERE ELLESEK.egyedek_id=EE.id) <= '+ edtLakn2.Text+')';
  if trim(edtLakt1.Text) <> EmptyStr then begin
    add_where := Add_where +
      'and ((select max(ellesek.ELLES_SSZ) from ELLESEK where ellesek.EGYEDEK_ID=EE.ID) >='+
       edtLakt1.Text +')';
  end;
  if trim(edtLakt2.Text) <> EmptyStr then begin
    add_where := Add_where +
      'and ((select max(ellesek.ELLES_SSZ) from ELLESEK where ellesek.EGYEDEK_ID=EE.ID) <='+
       edtLakt2.Text +')';
  end;
  if trim(lucVemh.Text) <> EmptyStr then begin
    add_where := Add_where +
      ' and ((select TERMEKENYITESEK.VEMH_KOD from TERMEKENYITESEK where TERMEKENYITESEK.EGYEDEK_ID=EE.ID and '+
      '       TERMEKENYITESEK.TERM_DATUM>(select max(ellesek.ELLES_DATUM) from ELLESEK where ellesek.EGYEDEK_ID=EE.ID) ' +
      '       and ROWNUM = 1 '+
      '       order by TERM_DATUM desc) = ' +
         Quotedstr(frmCsopSor.VemhKod[lucVemh.itemindex])+')';
  end;

  if frmCsopSor.sdsBon.Active then begin
//    UjCsopMentes;
    frmCsopSor.sdsBon.Close;
  end;

  frmCsopSor.sdsBon.DataSet.CommandText := frmCsopSor.AlapSelect + add_where;
  frmCsopSor.sdsBon.Open;
  frmCsopSor.TalSearch1.SetFocus;
end;


procedure TfrmCsopSor.actOKExecute(Sender: TObject);
{var
  SQL : string;
  i : integer; }
begin

(*  if feladat = 'valogat' then begin
    with dtmTalp.sdsCsopSor do begin
      if dtmTalp.sdsCsopSor.Active = false then exit;
      if dtmTalp.sdsCsopSor.RecordCount = 0 then exit;
      if dtmTarka.MsgDlg('Felveszi a bejelölt tételeket?', mtConfirmation , [mbYes, mbNo],0) = mrNo then exit;
      dtmTalp.sdsCsopSor.DisableControls;
      try
        dtmTalp.TalConnection1.BeginTrans;
        try
          try
          for i:=0 to grdVal1.SelectedList.Count-1 do begin
            with dtmTalp.sdsCsopSor do begin
              GotoBookmark(grdVal1.SelectedList.Items[i]);
              DisableControls;
              SQL := 'INSERT INTO [WKAPCS] ([AZONOSITO]) ' +
                     '  select ' + quotedstr(dtmTalp.sdsCsopSorAZONOSITO.AsString) +
                     ' where not exists (select 1 from wkapcs where azonosito=' +
                     quotedstr(dtmTalp.sdsCsopSorAZONOSITO.AsString) + ')';
              dtmTalp.TalConnection1.Execute(SQL);
            end;
          end;
          dtmTalp.TalConnection1.CommitTrans;
          except
            if dtmTalp.TalConnection1.InTransaction then
              dtmTalp.TalConnection1.RollbackTrans;
          end;
        finally
          EnableControls;
          dtmTalp.sdsCsopSor.Filtered := false;
          dtmTalp.sdsCsopSor.Filter := '';
          dtmTalp.sdsCsopSor.Close;
          dtmTalp.sdsCsopSor.Open;
        end;
      finally
        dtmTalp.sdsCsopSor.EnableControls;
      end;
    end; *)
    
    ModalResult := mrCancel;
end;






procedure TfrmCsopSor.btnNyomtatClick(Sender: TObject);
var
  sazon : string;
  aa : string;
begin
  aa := dtmTarka.sATKFT_KOD;
  if frxRepLista.LoadFromFile('TermCsopSorolMind.fr3') then begin
     // paraméter átadás a lista fejhez
//     sazon := frmCsopSor.sdsBonAZONOSITO.AsString;
     frmCsopSor.sdsBon.DisableControls;
     try
       frxRepLista.Variables.Clear;
       frxRepLista.Script.Variables['ENAR_KOD'] := dtmTarka.sTenyeszetKod;
       frxRepLista.Script.Variables['TENYESZET_NEV'] := dtmTarka.sTenyeszetNev;
       aa := dtmTarka.sATKFT_KOD;
       frxRepLista.Script.Variables['AT_KFTKOD']:= LeftStr(aa,2) + '-'+ midstr(aa ,3, 3) + '-' + RightStr(aa,2);
       frxRepLista.ShowReport();
     finally
       frmCsopSor.sdsBon.Locate('AZONOSITO',sazon,[]);
       frmCsopSor.sdsBon.EnableControls;
     end;
  End;
  qryLista.Close;
end;




procedure TfrmCsopSor.btnCancelClick(Sender: TObject);
begin
  if not grdVal1.DataSource.DataSet.IsEmpty then begin
    if grdVal1.DataSource.DataSet.Modified then
      if dtmTarka.MsgDlg('Elmenti az eddig rögzített új besorolásokat?', mtConfirmation , [mbYes, mbNo],0) <> mrNo then 
//        UjCsopMentes;
  end;
  ModalResult := mrCancel;
end;




procedure TfrmCsopSor.actFeltoltExecute(Sender: TObject);
begin
  if not frmCsopSor.sdsBon.Active then exit;
  if frmCsopSor.sdsBon.RecordCount = 0 then exit;
//  OpenCsopTolt(0);
end;

procedure TfrmCsopSor.BitBtn2Click(Sender: TObject);
begin
  if frmCsopSor.grdVal1.SelectedList.Count > 0 then begin
    frmCsopSor.grdVal1.SelectedList.Clear;
    frmCsopSor.grdVal1.Repaint;
  end;
end;

procedure TfrmCsopSor.grdVal1DblClick(Sender: TObject);
begin
  frmCsopSor.grdVal1.SelectRecord;
end;

procedure TfrmCsopSor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;

procedure TfrmCsopSor.BitBtn3Click(Sender: TObject);
begin
  if not frmCsopSor.sdsBon.Active then exit;
  if frmCsopSor.sdsBon.RecordCount = 0 then exit;
//  OpenCsopTolt(1);
end;


end.
