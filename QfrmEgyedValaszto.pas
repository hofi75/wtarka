unit QfrmEgyedValaszto;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmValasztoOs, ActnList, StdCtrls, Buttons, Wwdbigrd, Grids, ADODB,
  Wwdbgrid, uTALDBGrid, ExtCtrls, DB, DBClient, uTALSimpleDataSet,uTalParams,
  uTALSpeedButton, uTALLabel, uTALComboBox, uTALRadioButton, uTALRadioGroup,
  uTalQuery;

const
  AlapSelect = 'SELECT ' +
               '  CAST(case ' +
               '   when (tarka_utils.left(e.ENAR, 1) = ''3'') and length(e.ENAR) = 10 then ' +
               '     tarka_utils.left(e.ENAR, 5) || ''-'' || SUBSTR(e.ENAR, 6, 4) || ''-'' || tarka_utils.right(e.ENAR, 1) ' +
               '   when (tarka_utils.left(e.ENAR, 3) = ''HU3'') and length(e.ENAR) = 12 then ' +
               '     tarka_utils.left(e.ENAR, 7) || ''-'' || substr(e.ENAR, 8, 4) || ''-'' || tarka_utils.right(e.ENAR, 1) ' +
               '   else e.ENAR ' +
               ' end as VARCHAR2(20)) as ENAR, ' +
               ' e.FULSZAM, ' +
               ' e.ID_ENAR, ' +
               ' e.TEHENSZAM, ' +
               ' e.NEV, ' +
               ' e.SZULDAT, ' +
               ' e.ID ' +
               ' from egyedek e ' +
               ' where 1 = 1';

  wIvar0 = ' and e.ivar=''1'' ';

  wIvar1 = ' and e.ivar=''2'' ';

  wkiesett0 = ' and e.kikdat is null ';

  wkiesett1 = ' and not e.kikdat is null ' ;

type
  TfrmEgyedValaszto = class(TfrmValasztoOs)
    sdsKeres: TTalSimpleDataSet;
    dtsKeres: TDataSource;
    rgKiesett: TTalRadioGroup;
    rgIvar: TTalRadioGroup;
    lucKorCsop: TTalComboBox;
    TalLabel1: TTalLabel;
    TalSpeedButton1: TTalSpeedButton;
    qryStatus: TTalQuery;
    qryStatusKOD: TWidestringField;
    qryStatusNEV: TWidestringField;
    dtsStatus: TDataSource;
    sdsKeresENAR: TWideStringField;
    sdsKeresFULSZAM: TWideStringField;
    sdsKeresID_ENAR: TWideStringField;
    sdsKeresTEHENSZAM: TWideStringField;
    sdsKeresNEV: TWideStringField;
    sdsKeresSZULDAT: TDateTimeField;
    sdsKeresID: TBCDField;
    procedure grdValDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgKiesettClick(Sender: TObject);
    procedure rgIvarClick(Sender: TObject);
    procedure lucCsopChange(Sender: TObject);
    procedure lucKorCsopChange(Sender: TObject);
    procedure TalSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    elso : Boolean;
    // csoportok : array of string;
    korcsoport : array of string;
    ibKell : boolean;
    procedure adatLekeres;
  public
    { Public declarations }
  end;

var
  frmEgyedValaszto: TfrmEgyedValaszto;

function EgyedValaszto(Kapott:TTalParamList; vissza : TTalParamList) : boolean;

implementation

uses udtmTarka, ufrmMain;

{$R *.dfm}

function EgyedValaszto(Kapott:TTalParamList; vissza : TTalParamList) : boolean;
var
  i : integer;
begin
  Result := false;

  with frmEgyedValaszto do
  begin
    ibKell := false;
    sdsKeres.Connection := dtmTarka.cnTarka;

    if Kapott.ItemsByName('ELSO')<>NIL then
    begin
      Elso := true;
    end;

    if Elso then
    begin
      rgKiesett.ItemIndex := 2;
      rgIvar.ItemIndex := 2;
      rgKiesett.Enabled := true;
      rgIvar.Enabled := true;

      with qryStatus do
      begin
        Open;
        SetLength(korcsoport ,RecordCount);
        First;
        i := 0;

        While not eof do
        begin
          lucKorCsop.Items.Add(FieldByName('NEV').AsString);
          korcsoport[i] := FieldByName('KOD').AsString;
          i := i+1;
          next;
        end;
        Close;
      end;
    end;

    if Kapott.ItemsByName('KIESETT')<>NIL then
    begin
      if Kapott.ItemsByName('KIESETT').Values[0]='ELO' then
        rgKiesett.ItemIndex := 0;

      if Kapott.ItemsByName('KIESETT').Values[0]='KIESETT' then
        rgKiesett.ItemIndex := 1;

      if Kapott.ItemsByName('KIESETT').Values[0]='MIND' then
        rgKiesett.ItemIndex := 2;

      rgKiesett.Enabled := false;
    end;

    if Kapott.ItemsByName('IVAR')<>NIL then
    begin
      if Kapott.ItemsByName('IVAR').Values[0]='BIKA' then
        rgIvar.ItemIndex := 0;

      if Kapott.ItemsByName('IVAR').Values[0]='NO' then
        rgIvar.ItemIndex := 1;

      if Kapott.ItemsByName('IVAR').Values[0]='MIND' then
        rgIvar.ItemIndex := 2;

      rgIvar.Enabled := false;
    end;

    ibKell := true;
    AdatLekeres;

    grdVal.SortField := 'ENAR';
    grdVal.SortColumn := 1;

    if ShowModal = mrOK then
    begin
      Result := true;
      Vissza.Add('Egyed_Id', sdsKeresID.AsString);
      Vissza.Add('ENAR', sdsKeresENAR.AsString);
      Vissza.Add('FULSZAM', sdsKeresFULSZAM.AsString);
      Vissza.Add('TEHENSZAM', sdsKeresTEHENSZAM.AsString);
      Vissza.Add('ID_ENAR', sdsKeresID_ENAR.AsString);
      Vissza.Add('Egyed_nev', sdsKeresNev.AsString);
      Elso := false;
    end;

    sdsKeres.Close;
  end;
end;

procedure TfrmEgyedValaszto.grdValDblClick(Sender: TObject);
begin
  inherited;
  actOKExecute(Nil);
end;

procedure TfrmEgyedValaszto.FormShow(Sender: TObject);
begin
  grdVal.SortField := 'ENAR';
  grdVal.SortColumn := 1;
  inherited;
end;

procedure TfrmEgyedValaszto.FormCreate(Sender: TObject);
begin
  elso := true;
  inherited;
end;

procedure TfrmEgyedValaszto.rgKiesettClick(Sender: TObject);
begin
  if ibKell then
    AdatLekeres;
  inherited;
end;


procedure TfrmEgyedValaszto.adatLekeres;
var
  SQL : string;
begin
  if sdsKeres.Active then
    sdsKeres.Close;

  SQL := AlapSelect;

  if rgKiesett.ItemIndex = 0 then
    SQL := SQL + wkiesett0;

  if rgKiesett.ItemIndex = 1 then
    SQL := SQL + wkiesett1;

  if rgIvar.ItemIndex = 0 then
    SQL := SQL + wIvar0;

  if rgIvar.ItemIndex = 1 then
    SQL := SQL + wIvar1;

  SQL := SQL + dtmTarka.TenyeszetWhereE + ' ';

  if lucKorCsop.Text <> '' then
    SQL := SQl + ' and e.statusz =' + quotedstr(korcsoport[lucKorCsop.itemIndex]) ;

 // if lucCsop.Text <> '' then
 //   SQL := SQl + ' and e.termelesi_csoport_kod =' + quotedstr(csoportok[lucCsop.itemIndex]) ;

  SQL := SQl + 'order by ENAR';
  
  sdsKeres.DataSet.CommandText := SQL;

  Screen.Cursor := crHourGlass;
  try
    sdsKeres.Open;
  finally
    Screen.Cursor := crArrow;  
  end;
end;


procedure TfrmEgyedValaszto.rgIvarClick(Sender: TObject);
begin
  if ibKell then
    AdatLekeres;
  inherited;
end;

procedure TfrmEgyedValaszto.lucCsopChange(Sender: TObject);
begin
  AdatLekeres;
  inherited;
end;

procedure TfrmEgyedValaszto.lucKorCsopChange(Sender: TObject);
begin
  if ibKell then
    AdatLekeres;
  inherited;
end;


procedure TfrmEgyedValaszto.TalSpeedButton1Click(Sender: TObject);
begin
  lucKorCsop.Text := '';
  if ibKell then
    adatLekeres;
  inherited;
end;


end.
