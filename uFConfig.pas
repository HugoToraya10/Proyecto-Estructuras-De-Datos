unit uFConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.Buttons;

type
  TfConfig = class(TForm)
    RelativePanel1: TRelativePanel;
    tituloConfig: TStaticText;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConfig: TfConfig;

implementation

{$R *.dfm}

uses uFProyecto;

procedure TfConfig.SpeedButton1Click(Sender: TObject);
begin
  Config.Free;
  fMenu.Caption := 'Menú principal';
end;

end.
