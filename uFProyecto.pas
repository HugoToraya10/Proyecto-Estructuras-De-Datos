unit uFProyecto;

interface

uses
  uFTetris, uFGato, uFAhorcado, uFJuegos, uFConfig, uFJuegoTerminadoGato,
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.ButtonGroup, Vcl.ControlList, Vcl.Tabs,
  Vcl.Imaging.pngimage;

type
  TfMenu = class(TForm)
    panelMenu: TRelativePanel;
    sbotonJugar: TSpeedButton;
    sbotonAjustes: TSpeedButton;
    sbotonSalir: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbotonSalirClick(Sender: TObject);
    procedure sbotonJugarClick(Sender: TObject);
    procedure sbotonAjustesClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;
  Juegos: tfJuegos;
  Config: tfConfig;
  AhorcadoGame: TfAhorcado;
  GatoGame: TfGato;
  TetrisGame: TfTetris;

implementation

{$R *.dfm}

procedure TfMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fMenu.Close;
end;

procedure TfMenu.sbotonAjustesClick(Sender: TObject);
begin
  Config := tfConfig.Create(fMenu);
  Config.Parent := fMenu;
  Config.Show;
  fMenu.Caption := 'Ajustes';
end;

procedure TfMenu.sbotonJugarClick(Sender: TObject);

begin
  Juegos := tfJuegos.Create(fMenu);
  Juegos.Parent := fMenu;
  Juegos.Show;
  fMenu.Caption := 'Juegos';

end;

procedure TfMenu.sbotonSalirClick(Sender: TObject);
begin
  fMenu.Caption := 'Adiós xd';
  fMenu.Close;
end;

end.
