unit uFJuegos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.WinXCtrls;

type
  TfJuegos = class(TForm)
    RelativePanel1: TRelativePanel;
    sbotonAhorcado: TSpeedButton;
    sbotonGato: TSpeedButton;
    sbotonTetris: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbotonAhorcadoClick(Sender: TObject);
    procedure sbotonTetrisClick(Sender: TObject);
    procedure sbotonGatoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fJuegos: TfJuegos;

implementation

{$R *.dfm}

uses uFProyecto, uFAhorcado, uFGato, uFTetris;

procedure TfJuegos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fMenu.Show;
  fMenu.Caption := 'Menú principal';
end;

procedure TfJuegos.sbotonAhorcadoClick(Sender: TObject);
begin
  AhorcadoGame := TfAhorcado.Create(fMenu);
  AhorcadoGame.Parent := fMenu;
  AhorcadoGame.Show;
  fMenu.Caption := 'Juego del Ahorcado';
end;

procedure TfJuegos.sbotonGatoClick(Sender: TObject);
begin
  GatoGame := TfGato.Create(fMenu);
  GatoGame.Parent := fMenu;
  GatoGame.Show;
  Juegos.Free;
  fMenu.Caption := 'Juego del Gato';
end;

procedure TfJuegos.sbotonTetrisClick(Sender: TObject);
begin
  TetrisGame := TfTetris.Create(fMenu);
  TetrisGame.Parent := fMenu;
  TetrisGame.Show;
  fMenu.Caption := 'Tetris';
end;

procedure TfJuegos.SpeedButton1Click(Sender: TObject);
begin
  Juegos.Hide;
  fMenu.Caption := 'Menú principal';
end;

end.
