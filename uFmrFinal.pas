unit uFmrFinal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfmrFinal = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmrFinal: TfmrFinal;

implementation

{$R *.dfm}

procedure TfmrFinal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
