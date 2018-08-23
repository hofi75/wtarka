unit QfrmKonvNez;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, DB, Grids, Wwdbigrd, Wwdbgrid, uTALDBGrid, DBClient,
  uTALSimpleDataSet, StdCtrls, uTALComboBox, uTALLabel, Wwkeycb,
  uTALSearch, uTALPanel, ActnList, Buttons, uTALBitBtn, ExtCtrls;

type
  TfrmKonvNez = class(TfrmKarbOs)
    TalPanel1: TTalPanel;
    TalSearch1: TTalSearch;
    TalLabel1: TTalLabel;
    cbTabla: TTalComboBox;
    btnLeker: TTalBitBtn;
    sdsKeres: TTalSimpleDataSet;
    grdKeres: TTalDBGrid;
    dtsKeres: TDataSource;
    TalLabel2: TTalLabel;
    procedure btnLekerClick(Sender: TObject);
    procedure cbTablaCloseUp(Sender: TObject);
  private
    { Private declarations }
    tipus : string;
    SQL_T : array of string;
  public
    { Public declarations }
  end;

var
  frmKonvNez: TfrmKonvNez;

procedure KonvNez;
procedure HibaNez;

implementation

uses udtmTarka;

{$R *.dfm}

procedure Konvnez;
begin
  frmKonvNez.sdsKeres.Connection := dtmTarka.cnTarka;
  frmKonvNez.TIPUS := 'Tábla';
  frmKonvNez.TalLabel2.Caption := frmKonvNez.TIPUS + ':';
  frmKonvNez.grdKeres.SortField := '';
  frmKonvNez.cbTabla.Items.Clear;
  frmKonvNez.cbTabla.Items.Add('ANYA');
  frmKonvNez.cbTabla.Items.Add('ANYAKULL');
  frmKonvNez.cbTabla.Items.Add('APA');
  frmKonvNez.cbTabla.Items.Add('APAKULL');
  frmKonvNez.cbTabla.Items.Add('BORJKULL');
  frmKonvNez.cbTabla.Items.Add('ELLES');
  frmKonvNez.cbTabla.Items.Add('EMBRIO');
  frmKonvNez.cbTabla.Items.Add('FAJTA');
  frmKonvNez.cbTabla.Items.Add('HTENY');
  frmKonvNez.cbTabla.Items.Add('ITV');
  frmKonvNez.cbTabla.Items.Add('KIHBEH');
  frmKonvNez.cbTabla.Items.Add('KIKOD');
  frmKonvNez.cbTabla.Items.Add('KIKOK');
  frmKonvNez.cbTabla.Items.Add('KSTV');
  frmKonvNez.cbTabla.Items.Add('MERES');
  frmKonvNez.cbTabla.Items.Add('ORSZAG');
  frmKonvNez.cbTabla.Items.Add('SZARMIG');
  frmKonvNez.cbTabla.Items.Add('SZIN');
  frmKonvNez.cbTabla.Items.Add('SZLAPOK');
  frmKonvNez.cbTabla.Items.Add('TENY');
  frmKonvNez.cbTabla.Items.Add('TERM');
  frmKonvNez.cbTabla.Items.Add('USTV');
  frmKonvNez.cbTabla.Items.Add('VERH');
  frmKonvNez.ShowModal;
  if frmKonvNez.sdsKeres.Active then frmKonvNez.sdsKeres.Close;
end;


procedure HibaNez;
var
 i : integer;
begin
  with frmKonvNez do begin
    sdsKeres.Connection := dtmTarka.cnTarka;
    TIPUS := 'Hiba';
    TalLabel2.Caption := frmKonvNez.TIPUS + ':';
    grdKeres.SortField := '';
    cbTabla.Items.Clear;
    SetLength(SQL_T ,1);
    SQL_T[0] := '';
    
    i := 0;

    cbTabla.Items.Add('Többször szereplõ ellés tételek');
    i := i+1;
    SetLength(SQL_T ,i);
    SQL_T[i-1] := 'SELECT dbo.ELLES.TENYESZET, dbo.ELLES.ENAR, dbo.ELLES.FSZ, ' +
                  ' dbo.ELLES.IENAR, dbo.ELLES.AENAR, dbo.ELLES.AELL, dbo.ELLES.IAENAR, ' +
                  ' dbo.ELLES.DANYA, dbo.ELLES.KPLSZ, dbo.ELLES.APAFSZ, dbo.ELLES.IAPA, ' +
                  ' dbo.ELLES.TERMDAT, dbo.ELLES.ELLDAT, count(1) as darab ' +
                  ' FROM  dbo.ELLES ' +
                  ' GROUP BY dbo.ELLES.TENYESZET, dbo.ELLES.ENAR, dbo.ELLES.FSZ, ' +
                  '   dbo.ELLES.IENAR, dbo.ELLES.AENAR, dbo.ELLES.AELL, dbo.ELLES.IAENAR, ' +
                  '   dbo.ELLES.DANYA, dbo.ELLES.KPLSZ, dbo.ELLES.APAFSZ, dbo.ELLES.IAPA, ' +
                  '   dbo.ELLES.TERMDAT, dbo.ELLES.ELLDAT having count(1) > 1 ';

    cbTabla.Items.Add('HIBÁS TENYÉSZETKÓD AZ ELLÉSEKBEN - teljes rekord');
    i := i+1;
    SetLength(SQL_T ,i);
    SQL_T[i-1] := 'SELECT * FROM ELLES ' +
                  ' LEFT JOIN TENY ON TENY.TKOD = ELLES.TENYESZET ' +
                  ' WHERE TENY.TKOD IS NULL ORDER BY 1';

    cbTabla.Items.Add('HIBÁS TENYÉSZETKÓDOK AZ ELLÉSEKBEN - nincs ilyen a tenyészetben');
    i := i+1;
    SetLength(SQL_T ,i);
    SQL_T[i-1] := 'SELECT DISTINCT elles.TENYESZET FROM ELLES ' +
                  ' LEFT JOIN TENY ON TENY.TKOD = ELLES.TENYESZET ' +
                  ' WHERE TENY.TKOD IS NULL ORDER BY 1 ';

    cbTabla.Items.Add('HIBÁS AZ ENAR KÓD HOSSZA AZ ELLESEKBEN');
    i := i+1;
    SetLength(SQL_T ,i);
    SQL_T[i-1] := 'SELECT * FROM ELLES WHERE ELLES.ENAR > '''' AND LEN(ELLES.ENAR)<>10 ';

    cbTabla.Items.Add('TÖBBSZÖR ELÕFORDULÓ TERMÉKENYÍTÉSEK');
    i := i+1;
    SetLength(SQL_T ,i);
    SQL_T[i-1] := 'SELECT dbo.TERM.TKOD, dbo.TERM.ENAR, dbo.TERM.ELL, dbo.TERM.DANYA,' +
                  '   dbo.TERM.KPLSZ, dbo.TERM.DDATUM, dbo.TERM.DATUM, COUNT(1) as darab ' +
                  ' FROM  dbo.TERM ' +
                  ' GROUP BY dbo.TERM.TKOD, dbo.TERM.ENAR,dbo.TERM.ELL,dbo.TERM.DANYA,' +
                  '   dbo.TERM.KPLSZ, dbo.TERM.DDATUM, dbo.TERM.DATUM HAVING COUNT(1) > 1 ';

    cbTabla.Items.Add('HIBÁS TENYÉSZETKÓD A TERMÉKENYÍTÉSEKBEN - teljes rekord');
    i := i+1;
    SetLength(SQL_T ,i);
    SQL_T[i-1] := 'SELECT * FROM TERM ' +
                  ' LEFT JOIN TENY ON TENY.TKOD = TERM.TKOD ' +
                  ' WHERE TENY.TKOD IS NULL ORDER BY 1,2,3' ;

    cbTabla.Items.Add('Nemlétezõ TENYÉSZETKÓDOK  A TERMÉKENYÍTÉSEKBEN');
    i := i+1;
    SetLength(SQL_T ,i);
    SQL_T[i-1] := 'SELECT DISTINCT term.TKOD FROM TERM ' +
                  ' LEFT JOIN TENY ON TENY.TKOD = TERM.TKOD ' +
                  ' WHERE TENY.TKOD IS NULL ORDER BY 1' ;

    cbTabla.Items.Add('HIBÁS AZ ENÁR KÓD HOSSZA A TERMÉKENYÍTÉSEKBEN');
    i := i+1;
    SetLength(SQL_T ,i);
    SQL_T[i-1] := 'SELECT * FROM TERM WHERE TERM.ENAR > '''' AND LEN(TERM.ENAR)<>10' ;


  frmKonvNez.ShowModal;
  if frmKonvNez.sdsKeres.Active then frmKonvNez.sdsKeres.Close;
  end;
end;





procedure TfrmKonvNez.btnLekerClick(Sender: TObject);
begin
  inherited;
  if sdsKeres.Active then sdsKeres.Close;
  grdKeres.SortField := '';
  sdsKeres.FieldDefs.Clear;
  sdsKeres.IndexDefs.Clear;
  sdsKeres.IndexFieldNames := '';

  if frmKonvNez.TIPUS = 'Tábla' then begin
    sdsKeres.DataSet.CommandText := 'select * from ' +  cbTabla.Text;
    Screen.Cursor := crHourGlass;
  end;
  if frmKonvNez.TIPUS = 'Hiba' then begin
    if cbTabla.Text = EmptyStr then exit;
    sdsKeres.DataSet.CommandText := SQL_T[frmKonvNez.cbTabla.ItemIndex];
    Screen.Cursor := crHourGlass;
  end;
  try
    sdsKeres.Open;
  finally
    Screen.Cursor := crArrow;
  end;
end;



procedure TfrmKonvNez.cbTablaCloseUp(Sender: TObject);
begin
  if sdsKeres.Active then sdsKeres.Close;
  TalSearch1.Text := '';
end;

end.
