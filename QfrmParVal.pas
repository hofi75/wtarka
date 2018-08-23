unit QfrmParVal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid, Wwkeycb, uTALSearch,
  Mask, uTALMaskEdit, StdCtrls, uTALComboBox, Buttons, uValidedit,
  uTALEdit, uTALSpeedButton, uTALLabel, ExtCtrls, DB, DBClient, uTalParams,
  uTALSimpleDataSet, uTALPanel, uTALCheckBox, uTALRadioButton, ADODB,
  uTALStoredProc;

type
  TfrmParVal = class(TForm)
    pnlKereses: TPanel;
    Label1: TLabel;
    TalLabel5: TTalLabel;
    TalLabel13: TTalLabel;
    btnLeker: TBitBtn;
    edtDatumTol: TTalMaskEdit;
    TalSearch1: TTalSearch;
    edtDatumIg: TTalMaskEdit;
    pnlGombok: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    btnNyomtat: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    sdsParos: TTalSimpleDataSet;
    dtsParos: TDataSource;
    edtAzonosito: TTalEdit;
    TalLabel15: TTalLabel;
    TalLabel1: TTalLabel;
    edtApaTol: TTalMaskEdit;
    TalLabel2: TTalLabel;
    edtApaIg: TTalMaskEdit;
    rbTehen: TTalRadioButton;
    rbUszo: TTalRadioButton;
    cbVemhes: TTalCheckBox;
    TalPanel1: TTalPanel;
    pnlBika: TTalPanel;
    TalLabel3: TTalLabel;
    edtParBika: TTalMaskEdit;
    TalSpeedButton1: TTalSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    sdsParos1: TTalSimpleDataSet;
    sdsParos1AZONOSITO: TStringField;
    sdsParos1PSION_AZONOSITO: TStringField;
    sdsParos1SZUL_DATUM: TDateTimeField;
    sdsParos1ANYA_AZONOSITO: TStringField;
    sdsParos1APA_AZONOSITO: TStringField;
    sdsParos1ELLES_SSZ: TIntegerField;
    sdsParos1TERM_SSZ: TIntegerField;
    sdsParos1TERM_DATUM: TDateTimeField;
    sdsParos1VEMH_KOD: TStringField;
    sdsParos1JELOL: TIntegerField;
    TalLabel4: TTalLabel;
    edtellesTol: TTalMaskEdit;
    TalLabel6: TTalLabel;
    edtellesIg: TTalMaskEdit;
    cbTerm: TTalCheckBox;
    sdsParos1ELLES_DATUM: TDateTimeField;
    rbMind: TTalRadioButton;
    sdsParosID: TBCDField;
    sdsParosENAR: TWideStringField;
    sdsParosPS_AZON: TWideStringField;
    sdsParosSZULDAT: TDateTimeField;
    sdsParosANYA_ENAR: TWideStringField;
    sdsParosAPAKLSZ: TWideStringField;
    sdsParosELLES_DATUM: TDateTimeField;
    sdsParosDATUM: TDateTimeField;
    sdsParosVEMH_KOD: TWideStringField;
    sdsParosJEL: TBCDField;
    grdVal1: TTalDBGrid;
    prcLista: TTalStoredProc;
    prcBelteny: TTalStoredProc;
    procedure edtAzonositoExit(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnLekerClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TalSpeedButton1Click(Sender: TObject);
    procedure edtParBikaExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure grdVal1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure JelolesTorles;
  private
    { Private declarations }
    sAzon : string;
    sAzonId : string;
    AlapSelect : string;
    mode : string;
    procedure AdatExport;
  public
    { Public declarations }
  end;


procedure CsopElemz;

implementation

uses udtmTarka, QfrmBika, QfrmSzarmCsopLista;

{$R *.dfm}


procedure CsopElemz;
var
  frmParVal : TfrmParVal;
begin
  frmParVal := TfrmParVal.Create(Application);
  frmParVal.sdsParos.Connection := dtmTarka.cnTarka;
  frmParVal.prcLista.Connection := dtmTarka.cnTarka;
  frmParVal.prcBelteny.Connection := dtmTarka.cnTarka;
  frmParVal.Caption := 'Származás elemzés csoportos';
  frmParVal.mode := 'E';
  frmParVal.JelolesTorles;
  frmParVal.AlapSelect := frmParVal.sdsParos.DataSet.CommandText;
  try
    frmParVal.ShowModal;

  finally
    FreeAndNil(frmParVal);
  end;
end;


procedure TfrmParVal.edtAzonositoExit(Sender: TObject);
var
  sAzon : string;
  sAzonId : string;
begin
  if edtAzonosito.Enabled and dtmTarka.megsemNyomas(ActiveControl) then exit;

  if edtAzonosito.Text > EmptyStr then begin
    sAzon := edtAzonosito.Text;
    if not dtmTarka.VaneIlyenEgyed(edtAzonosito.Text, sAzon,sAzonId,true) then begin
      if sAzonId <> '-1' then
        dtmTarka.MsgDlg('Nincs ilyen élõ egyed!',mterror,[mbOK],0 );
      sAzon := '';
      sAzonId := '';
      edtAzonosito.SelectAll;
      if edtAzonosito.CanFocus then
        edtAzonosito.SetFocus;
    end else begin
      edtAzonosito.Text := sAzon;
      Self.sAzonId := sAzonId;
      Self.sAzon := sAzon;
    end;
  end;
end;



procedure TfrmParVal.btnCancelClick(Sender: TObject);
var
  sAzon : string;
  OK : Boolean;
begin
  if sdsParos.Active = false then begin
    ModalResult := mrOK;
    exit;
  end;
  if sdsParos.RecordCount = 0 then begin
    ModalResult := mrOK;
    exit;
  end;
  if mode = 'E' then begin
    sAzon := sdsParos.FieldByName('ID').AsString;
    OK := sdsParos.Locate('jel',1,[]);
    if OK  then
      if dtmTarka.MsgDlg('Kilép feldolgozás nélkül?',mtConfirmation,[mbYes,mbNo],0 )= mrNo then exit;
  end;
  ModalResult := mrOK;
end;




procedure TfrmParVal.btnLekerClick(Sender: TObject);
var
  add_where : string;
  i : integer;
  destinationField:TField;
begin
  if not dtmTarka.LicenceDatEll then exit;
  Add_where := '';
  if trim(edtAzonosito.Text) <> EmptyStr then begin
    add_where := Add_where +
     ' and (E.ID = '+ sAzonId +') ';
  end;

  if rbTehen.Checked then begin
      add_where := Add_where +
    ' and exists (select 1 from ellesek where ellesek.egyed_id = e.id) ';
  end;

  if rbUszo.Checked then begin
      add_where := Add_where +
    '  and not exists (select 1 from ellesek where ellesek.egyed_id = e.id) ';
  end;

  if cbVemhes.Checked then begin
      add_where := Add_where +
    ' and (T.datum is not null and coalesce(t.allapot,''0'') != ''1'') ';
  end;

  if (edtApaTol.Text <> EmptyStr)  then begin
    add_where := Add_where +
      ' AND (E.APAKLSZ >= '+ QuotedStr(edtApaTol.Text) + ')';
  end;
  if (edtApaIg.Text <> EmptyStr)  then begin
    add_where := Add_where +
      ' AND (E.APAKLSZ <= '+ QuotedStr(edtApaIg.Text) + ')';
  end;

  if (edtDatumTol.Text <> '    .  .  ')  then begin
    add_where := Add_where +
      ' AND (E.SZULDAT >= to_date(' + quotedstr(edtDatumTol.Text) + ',''yyyy.mm.dd''))';
  end;
  if (edtDatumIg.Text <> '    .  .  ')  then begin
    add_where := Add_where +
      ' AND (E.SZULDAT <= to_date(' + quotedstr(edtDatumIg.Text) + ',''yyyy.mm.dd''))';
  end;
  if cbTerm.Checked then begin
     add_where := Add_where + ' AND T.ID IS NULL ';
  end;

  if (edtellesTol.Text <> '    .  .  ')  then begin
    add_where := Add_where +
      ' AND (ELL.ELLES_DATUM >= to_date(' + quotedstr(edtellesTol.Text) + ',''yyyy.mm.dd''))';
  end;
  if (edtellesIg.Text <> '    .  .  ')  then begin
    add_where := Add_where +
      ' AND (ELL.ELLES_DATUM  <= to_date(' + quotedstr(edtellesIg.Text) + ',''yyyy.mm.dd''))';
  end;

  if sdsParos.Active then begin
//    UjCsopMentes;
    sdsParos.Close;
  end;
  sdsParos.DataSet.CommandText := AlapSelect + add_where;
  sdsParos.Open;

(*  for i := 1 to sdsParos1.FieldCount -1 do begin
       destinationField := sdsParos.FindField(sdsParos1.Fields[i].FieldName);
       if destinationField<>nil then begin
          destinationField.DisplayLabel := sdsParos1.Fields[i].DisplayLabel;
          destinationField.DisplayWidth := sdsParos1.Fields[i].DisplayWidth;
          destinationField.Alignment := sdsParos1.Fields[i].Alignment;
          destinationField.Visible := sdsParos1.Fields[i].Visible;
          destinationField.index := sdsParos1.Fields[i].Index;
       end;
  end;

  sdsParos.FieldDefs.Update;
  sdsParos.FieldDefList.Update;
  sdsParos.FieldList.Update;


  for i := 0 to sdsParos.FieldCount-1 do begin
     sdsParos.Fields[i].visible := i <= 11;
  end;
*)
  if sdsParos.RecordCount > 0 then begin
    btnNyomtat.Enabled := true;
    BitBtn1.Enabled := true;
    BitBtn2.Enabled := true;
    BitBtn3.Enabled := true;
    BitBtn4.Enabled := true;
    btnOK.Enabled := true;
  end else begin
    btnNyomtat.Enabled := false;
    BitBtn1.Enabled := false;
    BitBtn2.Enabled := false;
    BitBtn3.Enabled := false;
    BitBtn4.Enabled := false;
    btnOK.Enabled := false;
  end;
  TalSearch1.SetFocus;
end;


procedure TfrmParVal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    SelectNext(ActiveControl, True, True);
end;



procedure TfrmParVal.TalSpeedButton1Click(Sender: TObject);
var
  vissza : TTalParamList;
begin
    vissza := TTalParamList.Create;
    Vissza.Add('MODE','VAL');                               // spklt.választó;
    if frmBika.BikaVal(Vissza) then begin
       edtParBika.Text := Vissza.itemsByName('KLSZ').values[0];
       if btnOK.CanFocus then
         btnOK.SetFocus;
    end;

end;



procedure TfrmParVal.edtParBikaExit(Sender: TObject);
begin
  if dtmTarka.megsemNyomas(ActiveControl) then exit;
  if edtParBika.Text <> EmptyStr then begin
    if not dtmTarka.VaneBika(edtParBika.Text,'') then begin
        dtmTarka.MsgDlg('Nincs ilyen azonosítójú bika!', mtWarning, [mbOK], 0);
        edtParBika.SelectAll;
        edtParBika.SetFocus;
        exit;
    end;
  end;
end;



procedure TfrmParVal.BitBtn3Click(Sender: TObject);
begin
  edtParBika.SetFocus;
end;

procedure TfrmParVal.grdVal1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 32 then begin
    if sdsParos.FieldByName('JEL').AsInteger = 1 then begin
      if not (sdsParos.State in [dsEdit, dsInsert]) then sdsParos.edit;
      sdsParos.FieldByName('JEL').AsInteger := 0
    end else begin
      if not (sdsParos.State in [dsEdit, dsInsert]) then sdsParos.edit;
      sdsParos.FieldByName('JEL').AsInteger := 1;
    end;

  end;
end;



procedure TfrmParVal.BitBtn2Click(Sender: TObject);
var
  sAzon : string;
begin
    if dtmTarka.MsgDlg('Törli az összes megadott kijelölést?',mtConfirmation,[mbYes,mbNo],0 )= mrYes then begin
      sAzon := sdsParos.FieldByName('ID').AsString;
      sdsParos.First;
      while not sdsParos.Eof do begin
        if sdsParos.FieldByName('JEL').AsInteger = 1 then begin
          sdsParos.Edit;
          sdsParos.FieldByName('JEL').AsInteger := 0;
          sdsParos.Post;
        end;
        sdsParos.Next;
      end;
      sdsParos.Locate('ID',sazon,[]);
    end;

end;



procedure TfrmParVal.btnOKClick(Sender: TObject);
var
  sAzon : string;
  OK : Boolean;
  SQL : string;
begin
  if sdsParos.RecordCount = 0 then exit;
  if mode = 'E' then begin
    sAzon := sdsParos.FieldByName('ENAR').AsString;
    OK := sdsParos.Locate('jel',1,[]);
    if OK = false then begin
      dtmTarka.MsgDlg('Nem jelölt ki egyetlen egyedet sem!', mtWarning, [mbOK], 0);
      exit;
    end;
    if edtParBika.Text = EmptyStr then begin
      dtmTarka.MsgDlg('Nem adott meg bikát a párosításhoz!', mtWarning, [mbOK], 0);
      exit;
    end;

    try
      screen.Cursor := crHourGlass;
      sdsParos.First;
      while not sdsParos.Eof do begin
        if sdsParos.FieldByName('JEL').AsInteger = 1 then begin
          dtmTarka.cnTarka.Execute('update egyedek set jel = 1 where id = ' + sdsParosID.AsString);
        end;  
        sdsParos.Next;
      end;
//      dtmTarka.cnTarka.BeginTrans;
//      sdsParos.ApplyUpdates(0);
//      dtmTarka.cnTarka.CommitTrans;
      sdsParos.close;
      sdsParos.open;
      sdsParos.First;
      while not sdsParos.Eof do begin
        if sdsParos.FieldByName('JEL').AsInteger = 1 then begin
(*          SQL := 'execute CSALADFA_TOLTES ' +
                    '@EGYED_AZON = ' + quotedstr(sdsParos.fieldByName('AZONOSITO').AsString + edtParBika.text) + ',' +
                    '@ANYA_AZON = ' + quotedstr(sdsParos.fieldByName('ANYA_AZONOSITO').AsString) + ',' +
                    '@APA_AZON = ' + quotedstr(edtParBika.Text);
          dtmTarka.cnTarka.Execute(SQL);*)
        try
          screen.Cursor := crHourGlass;
          prcLista.Parameters.ParamByName('P_EGYED_AZON').Value := sdsParos.fieldByName('ENAR').AsString + edtParBika.text;
          prcLista.Parameters.ParamByName('P_ANYA_AZON').Value := sdsParos.fieldByName('ANYA_ENAR').AsString;
          prcLista.Parameters.ParamByName('P_APA_AZON').Value := edtParBika.Text;
          prcLista.ExecProc;
        finally
          screen.Cursor := crDefault;
        end;

        end;
        sdsParos.Next;
      end;
//      SQL := 'execute BELTENY_REP ' +
//                    '@BIKA_AZON = ' + quotedstr(edtParBika.Text);
//          dtmTarka.cnTarka.Execute(SQL);
      try
        screen.Cursor := crHourGlass;
        prcBelteny.Parameters.ParamByName('BIKA_AZON').Value := edtParBika.Text;
        prcBelteny.ExecProc;
      finally
        screen.Cursor := crDefault;
      end;
    finally
      screen.Cursor := crDefault;
    end;
    SzarmCsopLista;
    ModalResult := mrOK;
  end;

end;


procedure TfrmParVal.BitBtn1Click(Sender: TObject);
var
  sAzon : string;
begin
  sAzon := sdsParos.FieldByName('ID').AsString;
  sdsParos.First;
  while not sdsParos.Eof do begin
    if sdsParos.FieldByName('JEL').AsInteger = 0 then begin
      sdsParos.Edit;
      sdsParos.FieldByName('JEL').AsInteger := 1;
      sdsParos.Post;
    end;
    sdsParos.Next;
  end;
  sdsParos.Locate('ID',sazon,[]);
end;



procedure TfrmParVal.BitBtn4Click(Sender: TObject);
var
  sAzon : string;
begin
  sAzon := sdsParos.FieldByName('ID').Value;
  sdsParos.First;
  while not sdsParos.Eof do begin
    sdsParos.Edit;
    if sdsParos.FieldByName('JEL').AsInteger = 0 then
      sdsParos.FieldByName('JEL').AsInteger := 1
    else
      sdsParos.FieldByName('JEL').AsInteger := 0;
    sdsParos.Post;
    sdsParos.Next;
  end;
  sdsParos.Locate('ID',sazon,[]);
end;


procedure TfrmParVal.AdatExport;
var
  i : integer;
begin
(*  sdsParos.Filter := 'JELOL = 1';
  sdsParos.Filtered := true;


  for i := 10 to sdsParos.FieldCount-1 do begin
     sdsParos.Fields[i].visible := true;
  end;
  sdsParos.FieldByName('JELOL').Visible := false;

  dtmTarka.ExcelExport(sdsParVal, dtmTarka.sTenyeszetKod + '.XLS');*)
end;



procedure TfrmParVal.JelolesTorles;
var
  SQL : string;
begin
  SQL := 'update egyedek set jel = 0';
  screen.Cursor := crHourGlass;
  try
    dtmTarka.cnTarka.Execute(SQL);
  finally
    Screen.Cursor := crDefault;
  end;
end;

end.
