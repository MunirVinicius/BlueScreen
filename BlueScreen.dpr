program BlueScreen;

uses
  Vcl.Forms,
  uFmrMain in 'uFmrMain.pas' {frmMain},
  uFmrFinal in 'uFmrFinal.pas' {fmrFinal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfmrFinal, fmrFinal);
  Application.Run;
end.
