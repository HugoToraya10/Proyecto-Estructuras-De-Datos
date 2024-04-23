unit uFJuegoTerminadoAhorcado;

interface

uses
  uFAhorcado, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.StdCtrls;

type
  TfJuegoTerminadoAhorcado = class(TForm)
    RelativePanel1: TRelativePanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    textGanador: TStaticText;
    botonJugar: TButton;
    separador: TPanel;
    botonSalir: TButton;
    procedure botonJugarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure botonSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fJuegoTerminadoAhorcado: TfJuegoTerminadoAhorcado;

implementation

{$R *.dfm}

uses uFProyecto;

procedure TfJuegoTerminadoAhorcado.botonJugarClick(Sender: TObject);
begin
  fJuegoTerminadoAhorcado.Close;
  AhorcadoGame.hide;
  AhorcadoGame.show;
  fMenu.show;
  fMenu.Enabled := true;
end;

procedure TfJuegoTerminadoAhorcado.botonSalirClick(Sender: TObject);
begin
  fJuegoTerminadoAhorcado.Free;
  AhorcadoGame.hide;
  Juegos.Hide;
  fMenu.show;
  fMenu.Enabled := true;
  fMenu.Width := 800;
  fMenu.Height := 600;
end;

procedure TfJuegoTerminadoAhorcado.FormShow(Sender: TObject);
begin
  if ganador then
    textGanador.Caption := '¡Has ganado!'
  else
  begin
    if perdedor then
      textGanador.Caption := '¡Has perdido!';
  end;

end;

end.
