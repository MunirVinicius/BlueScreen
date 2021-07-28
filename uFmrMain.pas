unit uFmrMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmMain = class(TForm)
    pnlGeral: TPanel;
    pnlCancelar: TPanel;
    lblFace: TLabel;
    lblMessage: TLabel;
    lblCounter: TLabel;
    imgQrCode: TImage;
    Link: TLabel;
    Info: TLabel;
    Code: TLabel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure pnlCancelarMouseEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    counter: integer;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uFmrFinal;


procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.MessageBox('Desculpe, essa operação não pode ser cancelada' +#13
    + 'Tentar novamente ?',
    'Restaurando sistema', MB_ICONQUESTION + MB_ABORTRETRYIGNORE);
  Application.MessageBox('Desculpe, essa operação não pode ser cancelada',
    'Restaurando sistema ...', MB_ICONERROR);
  Abort;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
pnlGeral.left := Round ((Screen.Width - pnlGeral.Width)/2);
pnlGeral.top := Round((Screen.Height - pnlGeral.Height)/2);
counter := 1;
Timer1.Enabled := true;
end;

procedure TfrmMain.pnlCancelarMouseEnter(Sender: TObject);
begin
  Randomize;
  pnlCancelar.Left := Random(Screen.Width - pnlCancelar.Width);
  pnlCancelar.Top := Random(Screen.height - pnlCancelar.Height);
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  lblCounter.Caption := IntToStr(counter) + '% Concluído';
  inc(counter);
  if(counter = 101) then
    begin
      Timer1.Enabled :=false;
      fmrFinal.ShowModal;
    end;
  end;

end.
