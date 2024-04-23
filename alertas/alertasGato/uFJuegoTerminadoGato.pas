unit uFJuegoTerminadoGato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls;

type
  TfJuegoTerminadoGato = class(TForm)
    StaticText1: TStaticText;
    RelativePanel1: TRelativePanel;
    botonJugar: TButton;
    separador: TPanel;
    botonSalir: TButton;
    textGanador: TStaticText;
    StaticText2: TStaticText;
    procedure botonSalirClick(Sender: TObject);
    procedure botonJugarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fJuegoTerminadoGato: TfJuegoTerminadoGato;

implementation

{$R *.dfm}

uses uFGato, uFProyecto;

procedure TfJuegoTerminadoGato.botonJugarClick(Sender: TObject);
begin
  fJuegoTerminadoGato.Close;
  GatoGame.hide;
  GatoGame.show;
  fMenu.show;
  fMenu.Enabled := true;
end;

procedure TfJuegoTerminadoGato.botonSalirClick(Sender: TObject);
begin
  fJuegoTerminadoGato.Close;
  GatoGame.hide;
  Juegos.hide;
  fMenu.show; { por no poner esto no me mostraba la pantalla principal
    cuando cerraba la pantalla emergente de juego terminado }
  fMenu.Enabled := true;
  fMenu.Width := 800;
  fMenu.Height := 600;
end;

procedure TfJuegoTerminadoGato.FormShow(Sender: TObject);
begin
  if ganador then
    textGanador.Caption := 'Ganador: ' + nombreGanador
  else
    textGanador.Caption := '¡Empate!';
end;

end.
