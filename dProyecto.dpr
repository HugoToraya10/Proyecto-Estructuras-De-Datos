program dProyecto;

uses
  Vcl.Forms,
  uFProyecto in 'uFProyecto.pas' {fMenu},
  uFJuegos in 'uFJuegos.pas' {fJuegos},
  uFConfig in 'uFConfig.pas' {fConfig},
  uFAhorcado in 'formsJuegos\uFAhorcado.pas' {fAhorcado},
  uFGato in 'formsJuegos\uFGato.pas' {fGato},
  uFTetris in 'formsJuegos\uFTetris.pas' {fTetris},
  uFJuegoTerminadoGato in 'alertas\alertasGato\uFJuegoTerminadoGato.pas' {fJuegoTerminadoGato},
  uFMenuGato in 'alertas\alertasGato\uFMenuGato.pas' {Form1},
  uFJuegoTerminadoAhorcado in 'alertas\alertasAhorcado\uFJuegoTerminadoAhorcado.pas' {fJuegoTerminadoAhorcado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMenu, fMenu);
  Application.CreateForm(TfJuegos, fJuegos);
  Application.CreateForm(TfConfig, fConfig);
  Application.CreateForm(TfAhorcado, fAhorcado);
  Application.CreateForm(TfGato, fGato);
  Application.CreateForm(TfTetris, fTetris);
  Application.CreateForm(TfJuegoTerminadoGato, fJuegoTerminadoGato);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfJuegoTerminadoAhorcado, fJuegoTerminadoAhorcado);
  Application.Run;
end.
