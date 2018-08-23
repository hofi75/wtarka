unit Qfrmsvszamol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QfrmKarbOs, ActnList, StdCtrls, Buttons, uTALBitBtn, ExtCtrls,
  Mask, uValidedit, uTALEdit, DB, ADODB, uTALStoredProc, QSysTools,
  uTALLabel;

type
  TfrmUjraSzamol = class(TfrmKarbOs)
    lblValDat: TLabel;
    edtValDat: TTalEdit;
    lblTeny: TLabel;
    edtTeny: TTalEdit;
    stpSv: TTalStoredProc;
    stpKmi: TTalStoredProc;
    procedure actOKExecute(Sender: TObject);
  private
    { Private declarations }
    miez : string;
  public
    { Public declarations }
  end;


procedure SvSzamol;
procedure SvSzamolMind;
procedure KMISzamol;

implementation

uses udtmTarka, DateUtils;

{$R *.dfm}

procedure SvSzamol;
var
  frmUjraSzamol: TfrmUjraSzamol;
begin
  frmUjraSzamol := TfrmUjraSzamol.Create(application);
  try
  with frmUjraSzamol do begin
    caption := 'SV százalékok újraszámolása';
    miez := 'SV';
    edtValDat.Value := Today;
    stpSv.Connection := dtmTarka.cnTarka;
    stpKmi.Connection := dtmTarka.cnTarka;
    if ShowModal = mrOK then begin
      if stpSv.Active then stpSv.Close;
      stpSv.Parameters.ParamByName('VDAT_TOL').Value := edtValDat.Value;
      stpSv.Parameters.ParamByName('VDAT_IG').Value := edtValDat.Value;
      dtmTarka.cnTarka.BeginTrans;
      try
        try
          screen.Cursor := crHourGlass;
          stpSv.ExecProc;
          dtmTarka.cnTarka.CommitTrans;
        except       
         on E:Exception do begin
           dtmTarka.cnTarka.RollbackTrans;
           Exit;
         end;
        end;
      finally
        screen.Cursor := crArrow;
        stpSv.Close
      end;
    end;
  end;
  finally
    FreeAndNil(frmUjraSzamol);
  end;
end;



procedure SvSzamolMind;
var
  frmUjraSzamol: TfrmUjraSzamol;
  d1 : Tdate;
begin
  frmUjraSzamol := TfrmUjraSzamol.Create(application);
  try
  with frmUjraSzamol do begin
    caption := 'SV százalékok újraszámolása';
    miez := 'SVM';
    edtValDat.Value := Today;
    stpSv.Connection := dtmTarka.cnTarka;
    stpKmi.Connection := dtmTarka.cnTarka;
    lblValDat.Caption := 'Kezdõ dátum:' ;
    if ShowModal = mrOK then begin
      d1 := edtValDat.Value;
      while d1 < today() do
      begin
        if stpSv.Active then stpSv.Close;
        log('Sv számolás. Dátum:' + DateToStr( d1));
        stpSv.Parameters.ParamByName('VDAT_TOL').Value := d1;
        stpSv.Parameters.ParamByName('VDAT_IG').Value := d1;
        dtmTarka.cnTarka.BeginTrans;
        try
          try
            screen.Cursor := crHourGlass;
            stpSv.ExecProc;
            dtmTarka.cnTarka.CommitTrans;
          except
           on E:Exception do begin
             dtmTarka.cnTarka.RollbackTrans;
             log('Sv számolás HIBA!! Dátum:' + DateToStr( d1));
           end;
          end;
        finally
          screen.Cursor := crArrow;
          stpSv.Close
        end;
        d1 := d1 + 1;
      end;
    end;
  end;
  finally
    FreeAndNil(frmUjraSzamol);
  end;
end;



procedure KMISzamol;
var
  frmUjraSzamol: TfrmUjraSzamol;
  SQL : string;
begin
  frmUjraSzamol := TfrmUjraSzamol.Create(application);
  try
  with frmUjraSzamol do begin
    caption := 'Anya KMI-k újraszámolása';
    miez := 'KMI';
    edtValDat.Visible := false;
    lblValDat.Visible := false;
    edtTeny.Visible := true;
    lblTeny.Visible := true;
    if dtmTarka.TenyeszetTKOD <> EmptyStr then
      edtTeny.Text := dtmTarka.TenyeszetTKOD;
    sql := 'update egyedek set egyedek.min = 100 where id in ' +
           ' (select distinct ee.id ' +
           ' from EGYEDEK EE        ' +
           ' join ELLESEK on ELLESEK.EGYED_ID = EE.id ' +
           ' join BORJAK on BORJAK.ELLESEK_ID = ELLESEK.id ' +
           ' join EGYEDEK BB on BB.ENAR = BORJAK.BORJU_ENAR ' +
           ' where EE.IVAR = 2 ' ;
   if dtmTarka.TenyeszetTKOD <> EmptyStr then
      SQL := SQL + ' AND EE.TENYESZET = ' + quotedstr(dtmTarka.TenyeszetTKOD);
      SQL := SQL + ' and (select COUNT(1)  from ELLESEK where ELLESEK.EGYED_ID = EE.id ) = 1 ' +
           ' and BORJAK.BORJU_ENAR > '' '' and ((BB.VALDAT < BB.SZULDAT) or (BB.VALDAT is null)) )';

    stpSv.Connection := dtmTarka.cnTarka;
    stpKmi.Connection := dtmTarka.cnTarka;
    if ShowModal = mrOK then begin
      if stpKmi.Active then stpKmi.Close;
      stpKmi.Parameters.ParamByName('PTENYKOD').Value := edtTeny.text;
      dtmTarka.cnTarka.BeginTrans;
      try
        try
          screen.Cursor := crHourGlass;
          stpKmi.ExecProc;
          dtmTarka.cnTarka.Execute(SQL);
          dtmTarka.cnTarka.CommitTrans;
        except
         on E:Exception do begin
           dtmTarka.cnTarka.RollbackTrans;
           Exit;
         end;
        end;
      finally
        screen.Cursor := crArrow;
        stpKmi.Close
      end;
    end;
  end;
  finally
      dtmTarka.MsgDlg('Újraszámolás kész!', mtWarning, [mbOK], 0);
      FreeAndNil(frmUjraSzamol);
  end;
end;



procedure TfrmUjraSzamol.actOKExecute(Sender: TObject);
begin
  if miez = 'KMI' then begin
    if edtTeny.Text = EmptyStr then begin
      dtmTarka.MsgDlg('A tenyészet megadása kötelezõ!', mtWarning, [mbOK], 0);
      exit;
    end;
  end;
  if miez = 'SV' then begin
    if edtValDat.Text = '    .  .  ' then begin
      dtmTarka.MsgDlg('A dátum megadása kötelezõ!', mtWarning, [mbOK], 0);
      exit;
    end;
  end;
  inherited;
end;

end.
