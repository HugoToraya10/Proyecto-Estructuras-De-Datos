unit uFTetris;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.Buttons;

type
  TfTetris = class(TForm)
    RelativePanel1: TRelativePanel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTetris: TfTetris;

implementation

{$R *.dfm}

uses uFProyecto;

procedure TfTetris.SpeedButton1Click(Sender: TObject);
begin
  TetrisGame.Hide;
  fMenu.Caption := 'Juegos';
end;

end.
