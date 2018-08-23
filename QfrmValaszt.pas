unit QfrmValaszt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmValasztoOs, ActnList, StdCtrls, Buttons, Wwdbigrd, Grids,
  Wwdbgrid, uTALDBGrid, ExtCtrls, uTalParams, DB, DBClient, strUtils,
  uTALSimpleDataSet;

type
  TfrmValaszt = class(TfrmValasztoOs)
    sdsFuljelzok: TTalSimpleDataSet;
    sdsFuljelzokRENDELES_DATUM: TDateTimeField;
    sdsFuljelzokBEVET_DATUM: TDateTimeField;
    sdsFuljelzokKIADAS_DATUM: TDateTimeField;
    sdsFuljelzokID: TBCDField;
    sdsFuljelzokJELENTES_DATUM: TDateTimeField;
    sdsFuljelzokUTMOD_DAT: TDateTimeField;
    dtsFulJelzok: TDataSource;
    sdsFuljelzokFULJ_AZON: TWideStringField;
    sdsFuljelzokREND_NEV: TWideStringField;
    sdsFuljelzokRENDELESI_KOD: TWideStringField;
    sdsFuljelzokUTMOD_KOD: TWideStringField;
    sdsKimeno: TTalSimpleDataSet;
    dtsKimeno: TDataSource;
    sdsKimenoID: TBCDField;
    sdsKimenoDEST_SITE: TWideStringField;
    sdsKimenoPACK_NR: TIntegerField;
    sdsKimenoPACK_DATE: TDateTimeField;
    sdsKimenoFROM_DATE: TDateTimeField;
    sdsKimenoTO_DATE: TDateTimeField;
    sdsKimenoSTATUS: TBCDField;
    sdsBejovo: TTalSimpleDataSet;
    BCDField1: TBCDField;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    BCDField2: TBCDField;
    dtsBejovo: TDataSource;
    sdsBejovoSRC_SITE: TWideStringField;
    procedure sdsFuljelzokFULJ_AZONGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnTorolClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValaszt: TfrmValaszt;

function FuljelzoValaszto(vissza:TTalParamList):Boolean;
procedure KimenoCsomagok;
procedure BejovoCsomagok;



implementation

uses udtmTarka;

{$R *.dfm}

function FuljelzoValaszto(vissza:TTalParamList):Boolean;
var
  commandtext : string;
begin
  result := false;
  with frmValaszt do begin
    caption := 'Felhasználható ENAR füljegyzõk';
    try
      grdVal.DataSource := dtsFulJelzok;
      // csak a tenyeszethez tartozó ENAR-ok megmutatása
      sdsFuljelzok.Params.ParamByName('ENARPrefix').AsString := dtmTarka.TenyeszetEKOD + '%';

      sdsFuljelzok.Open;
      if ShowModal = mrOK then begin
        result := true;
        vissza.Add('ENAR',sdsFuljelzokFULJ_AZON.AsString);
      end;
    finally
      sdsFuljelzok.Close
    end;
  end;
end;


procedure KimenoCsomagok;
begin
  with frmValaszt do begin
    caption := 'Küldött csomagok megtekintése';
    try
      grdVal.DataSource := dtsKimeno;
      btnTorol.Visible := true;
      sdsKimeno.Open;
      ShowModal;
    finally
      sdsKimeno.Close
    end;
  end;
end;




procedure BejovoCsomagok;
begin
  with frmValaszt do begin
    caption := 'Érkezett csomagok megtekintése';
    try
      grdVal.DataSource := dtsBejovo;
      btnTorol.Visible := true;
      sdsBejovo.Open;
      ShowModal;
    finally
      sdsBejovo.Close
    end;
  end;
end;



procedure TfrmValaszt.sdsFuljelzokFULJ_AZONGetText(Sender: TField;
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


procedure TfrmValaszt.FormCreate(Sender: TObject);
begin
  inherited;
  sdsFuljelzok.Connection := dtmTarka.cnTarka;
  sdsKimeno.Connection := dtmTarka.cnTarka;
  sdsBejovo.Connection := dtmTarka.cnTarka;
end;

procedure TfrmValaszt.btnTorolClick(Sender: TObject);
var
  SQL : string;
begin
  inherited;
  if sdsBejovo.Active then
    if sdsBejovo.RecordCount = 0 then exit;
  if sdsKimeno.Active then
    if sdsKimeno.RecordCount = 0 then exit;
  if caption = 'Érkezett csomagok megtekintése' then begin
     sql := 'delete from comm_pack_in where id = ' + sdsBejovo.fieldByName('ID').AsString;
     dtmTarka.cnTarka.Execute(SQL);
     sdsBejovo.Close;
     sdsBejovo.open;
  end;
  if caption = 'Küldött csomagok megtekintése' then begin
     sql := 'delete from comm_pack_out where id = ' + sdsKimenoID.AsString;
     dtmTarka.cnTarka.Execute(SQL);
     sdsKimeno.Close;
     sdsKimeno.open;
  end;

end;

end.
