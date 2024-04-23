unit uFGato;

interface

uses
  uFJuegos, uFJuegoTerminadoGato, Winapi.Windows, Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TfGato = class(TForm)
    RelativePanel1: TRelativePanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    StaticText1: TStaticText;
    panelPuntos: TPanel;
    rPanelGato: TRelativePanel;
    sbotonVolver: TSpeedButton;
    Image1: TImage;
    _11: TImage;
    _12: TImage;
    _01: TImage;
    _21: TImage;
    _10: TImage;
    _20: TImage;
    _22: TImage;
    _00: TImage;
    _02: TImage;
    textoTurno: TStaticText;
    panelDerecho: TPanel;
    nombreJ1: TEdit;
    nombreJ2: TEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    switch: TToggleSwitch;
    StaticText4: TStaticText;
    Panel2: TPanel;
    procedure sbotonVolverClick(Sender: TObject);
    procedure _00Click(Sender: TObject);
    procedure _01Click(Sender: TObject);
    procedure _02Click(Sender: TObject);
    procedure _10Click(Sender: TObject);
    procedure _11Click(Sender: TObject);
    procedure _12Click(Sender: TObject);
    procedure _20Click(Sender: TObject);
    procedure _21Click(Sender: TObject);
    procedure _22Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure switchClick(Sender: TObject);
    procedure nombreJ1Change(Sender: TObject);
    procedure nombreJ2Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGato: TfGato;
  turnoJugador: boolean;
  lugares: array [0 .. 2, 0 .. 2] of TImage;
  lugaresP: array [0 .. 2, 0 .. 2] of TImage;
  lugarOcupado: array [0 .. 2, 0 .. 2] of boolean;
  matrizGato: array [0 .. 2, 0 .. 2] of String;
  nLugaresOcupados: Integer;
  x: Integer; { Fila para cada lugar del gatón }
  y: Integer; { Columna para cada lugar de la madre esa XD }
  lugar: TImage;
  jugador1: String; { Aqui irá el nombre del jugador 1 }
  jugador2: String; { Aquí irá el nombre del jugador 2 }
  ganador: boolean;
  empate: boolean;
  primeraPartida: boolean;
  juegoVsPC: boolean;
  nombreGanador: String;

implementation

{$R *.dfm}

uses uFProyecto;

{ --------------------------PROCEDURE------------------- }
procedure comprobacionGanador(textoTurno: TStaticText);
var
  i: Integer;
  j: Integer;
  sumaFilas: array [0 .. (Length(matrizGato) - 1)] of String;
  sumaColumnas: array [0 .. (Length(matrizGato) - 1)] of String;
  sumaDiagonales: array [0 .. 1] of String;
  diagonalInversaAumento: Integer;
  diagonalInversaDecremento: Integer;
begin
  diagonalInversaAumento := 0;
  diagonalInversaDecremento := Length(matrizGato) - 1;
  for i := 0 to 2 do
  begin
    for j := 0 to 2 do
    begin
      sumaFilas[i] := sumaFilas[i] + matrizGato[i, j];
      sumaColumnas[i] := sumaColumnas[i] + matrizGato[j, i];
    end;
    sumaDiagonales[0] := sumaDiagonales[0] + matrizGato[i, i];
    sumaDiagonales[1] := sumaDiagonales[1] + matrizGato
      [diagonalInversaDecremento, diagonalInversaAumento];
    diagonalInversaAumento := diagonalInversaAumento + 1;
    diagonalInversaDecremento := diagonalInversaDecremento - 1;
  end;

  for i := 0 to 2 do
  begin
    if (sumaFilas[i] = 'xxx') or (sumaFilas[i] = 'ooo') then
    begin
      ganador := true;
      if sumaFilas[i] = 'xxx' then
        nombreGanador := jugador1
      else
      begin
        if sumaFilas[i] = 'ooo' then
          nombreGanador := jugador2;
      end;
    end
    else
    begin
      if (sumaColumnas[i] = 'xxx') or (sumaColumnas[i] = 'ooo') then
      begin
        ganador := true;
        if sumaColumnas[i] = 'xxx' then
          nombreGanador := jugador1
        else
        begin
          if sumaColumnas[i] = 'ooo' then
            nombreGanador := jugador2;
        end;
      end
    end;
  end;

  for i := 0 to 1 do
  begin
    if (sumaDiagonales[i] = 'xxx') or (sumaDiagonales[i] = 'ooo') then
      ganador := true;
    if sumaDiagonales[i] = 'xxx' then
      nombreGanador := jugador1
    else
    begin
      if sumaDiagonales[i] = 'ooo' then
        nombreGanador := jugador2;
    end;
  end;

  if (nLugaresOcupados = 9) or (ganador) then
  begin
    fJuegoTerminadoGato.Show;
    fMenu.Enabled := false;
  end;
end;

{ --------------------------PROCEDURE------------------- }
procedure actualizarTextoTurno(textoTurno: TStaticText; nombreJ1: TEdit;
  nombreJ2: TEdit);
begin
  jugador1 := nombreJ1.text;
  jugador2 := nombreJ2.text;

  if (nLugaresOcupados < 9) and (not ganador) then
  begin

    if turnoJugador = false then
    begin
      textoTurno.Caption := 'Turno: ' + jugador1;
    end

    else
    begin
      textoTurno.Caption := 'Turno: ' + jugador2;
    end;
  end

  else
  begin
    if ganador then
    begin
      textoTurno.Caption := 'Ganador: ' + nombreGanador;
    end

    else
    begin
      if nLugaresOcupados = 9 then
      begin
        empate := true;
        textoTurno.Caption := '¡Empate!';
      end
    end;

  end;
end;

{ --------------------------PROCEDURE------------------- }
procedure reiniciarJuego(textoTurno: TStaticText; nombreJ1: TEdit;
  nombreJ2: TEdit);
var
  i: Integer;
  j: Integer;
begin
  if juegoVsPC then
  begin
    nombreJ1.text := 'Jugador 1';
    nombreJ2.text := 'PC';
    nombreJ2.Enabled := false;
  end
  else
  begin
    nombreJ1.text := 'Jugador 1';
    nombreJ2.text := 'Jugador 2';
    nombreJ2.Enabled := true;
  end;

  ganador := false;
  actualizarTextoTurno(textoTurno, nombreJ1, nombreJ2);
  nLugaresOcupados := 0;
  turnoJugador := false;
  for i := 0 to 2 do
  begin
    for j := 0 to 2 do
    begin
      matrizGato[i, j] := 'a';
      lugarOcupado[i, j] := false;
      lugaresP[i, j].Picture.LoadFromFile('imagenes/gato/vacio.png');
    end;
  end;
end;

{ --------------------------PROCEDURE------------------- }
procedure TfGato.FormShow(Sender: TObject);
begin
  fMenu.Height := 600;
  fMenu.Width := 800;
  // fMenu.Position := poDesktopcenter; no se puede no se pq
  lugaresP[0, 0] := _00;
  lugaresP[0, 1] := _01;
  lugaresP[0, 2] := _02;
  lugaresP[1, 0] := _10;
  lugaresP[1, 1] := _11;
  lugaresP[1, 2] := _12;
  lugaresP[2, 0] := _20;
  lugaresP[2, 1] := _21;
  lugaresP[2, 2] := _22;

  reiniciarJuego(textoTurno, nombreJ1, nombreJ2);

end;

{ --------------------------PROCEDURE------------------- }
procedure TfGato.nombreJ1Change(Sender: TObject);
begin
  actualizarTextoTurno(textoTurno, nombreJ1, nombreJ2);
end;

procedure TfGato.nombreJ2Change(Sender: TObject);
begin
  actualizarTextoTurno(textoTurno, nombreJ1, nombreJ2);
end;

procedure TfGato.sbotonVolverClick(Sender: TObject);
begin
  Juegos := tfJuegos.Create(fMenu);
  Juegos.Parent := fMenu;
  Juegos.Show;
  GatoGame.Free;
  fMenu.Caption := 'Juegos';
end;

{ --------------------------PROCEDURE------------------- }
procedure TfGato.switchClick(Sender: TObject);
begin

  if switch.State = tssOff then
  begin
    juegoVsPC := false;
    reiniciarJuego(textoTurno, nombreJ1, nombreJ2);
    GatoGame.Show;
  end
  else
  begin
    juegoVsPC := true;
    reiniciarJuego(textoTurno, nombreJ1, nombreJ2);
    GatoGame.Show;
  end;

end;

{ --------------------------PROCEDURE------------------- }
procedure jugadaContraPersona(textoTurno: TStaticText; lugar: TImage;
  x: Integer; y: Integer; nombreJ1: TEdit; nombreJ2: TEdit);

begin
  if (lugarOcupado[x, y] = false) and (not ganador) then
  begin
    { El lugar está desocupado, por lo que se puede colocar tacha o circulo,
      dependiendo del caso }
    lugarOcupado[x, y] := true;
    nLugaresOcupados := nLugaresOcupados + 1;
    if turnoJugador then
    begin
      lugar.Picture.LoadFromFile('imagenes/gato/circulo.png');
      matrizGato[x, y] := 'o';
      turnoJugador := false;
      lugares[x, y] := lugar;
    end
    else
    begin
      lugar.Picture.LoadFromFile('imagenes/gato/tacha.png');
      matrizGato[x, y] := 'x';
      turnoJugador := true;
      lugares[x, y] := lugar;
    end;
  end;
  comprobacionGanador(textoTurno);
  actualizarTextoTurno(textoTurno, nombreJ1, nombreJ2);
end;

{ --------------------------PROCEDURE------------------- }
Procedure jugadaContraPC(textoTurno: TStaticText; lugar: TImage; x: Integer;
  y: Integer; nombreJ1: TEdit; nombreJ2: TEdit);

var
  xAleat: Integer;
  yAleat: Integer;
  turnoPC: boolean;

begin
  turnoPC := false;
  if (lugarOcupado[x, y] = false) and (not ganador) then
  begin
    { El lugar está desocupado, por lo que se puede colocar tacha o circulo,
      dependiendo del caso }
    nLugaresOcupados := nLugaresOcupados + 1;

    if not turnoPC then
    begin
      lugar.Picture.LoadFromFile('imagenes/gato/tacha.png');
      lugarOcupado[x, y] := true;
      matrizGato[x, y] := 'x';
      turnoPC := true;
    end;

    comprobacionGanador(textoTurno);
    actualizarTextoTurno(textoTurno, nombreJ1, nombreJ2);
    // TURNO DE LA PC
    while ((turnoPC) and (nLugaresOcupados < 9) and (not ganador)) do
    begin
      xAleat := Random(3);
      yAleat := Random(3);
      if lugarOcupado[xAleat, yAleat] = false then
      begin
        lugaresP[xAleat, yAleat].Picture.LoadFromFile
          ('imagenes/gato/circulo.png');
        lugarOcupado[xAleat, yAleat] := true;
        matrizGato[xAleat, yAleat] := 'o';
        turnoPC := false;
      end;
    end;

    nLugaresOcupados := nLugaresOcupados + 1;

    comprobacionGanador(textoTurno);
    actualizarTextoTurno(textoTurno, nombreJ1, nombreJ2);
  end;
end;

{ --------------------------PROCEDURES PARA CADA LUGAR------------------- }
procedure TfGato._00Click(Sender: TObject);
begin
  if not juegoVsPC then
    jugadaContraPersona(textoTurno, _00, 0, 0, nombreJ1, nombreJ2)
  else
    jugadaContraPC(textoTurno, _00, 0, 0, nombreJ1, nombreJ2);
end;

procedure TfGato._01Click(Sender: TObject);
begin
  if not juegoVsPC then
    jugadaContraPersona(textoTurno, _01, 0, 1, nombreJ1, nombreJ2)
  else
    jugadaContraPC(textoTurno, _01, 0, 1, nombreJ1, nombreJ2);
end;

procedure TfGato._02Click(Sender: TObject);
begin
  if not juegoVsPC then
    jugadaContraPersona(textoTurno, _02, 0, 2, nombreJ1, nombreJ2)
  else
    jugadaContraPC(textoTurno, _02, 0, 2, nombreJ1, nombreJ2);
end;

procedure TfGato._10Click(Sender: TObject);
begin
  if not juegoVsPC then
    jugadaContraPersona(textoTurno, _10, 1, 0, nombreJ1, nombreJ2)
  else
    jugadaContraPC(textoTurno, _10, 1, 0, nombreJ1, nombreJ2);
end;

procedure TfGato._11Click(Sender: TObject);
begin
  if not juegoVsPC then
    jugadaContraPersona(textoTurno, _11, 1, 1, nombreJ1, nombreJ2)
  else
    jugadaContraPC(textoTurno, _11, 1, 1, nombreJ1, nombreJ2);
end;

procedure TfGato._12Click(Sender: TObject);
begin
  if not juegoVsPC then
    jugadaContraPersona(textoTurno, _12, 1, 2, nombreJ1, nombreJ2)
  else
    jugadaContraPC(textoTurno, _12, 1, 2, nombreJ1, nombreJ2);
end;

procedure TfGato._20Click(Sender: TObject);
begin
  if not juegoVsPC then
    jugadaContraPersona(textoTurno, _20, 2, 0, nombreJ1, nombreJ2)
  else
    jugadaContraPC(textoTurno, _20, 2, 0, nombreJ1, nombreJ2);
end;

procedure TfGato._21Click(Sender: TObject);
begin
  if not juegoVsPC then
    jugadaContraPersona(textoTurno, _21, 2, 1, nombreJ1, nombreJ2)
  else
    jugadaContraPC(textoTurno, _21, 2, 1, nombreJ1, nombreJ2);
end;

procedure TfGato._22Click(Sender: TObject);
begin
  if not juegoVsPC then
    jugadaContraPersona(textoTurno, _22, 2, 2, nombreJ1, nombreJ2)
  else
    jugadaContraPC(textoTurno, _22, 2, 2, nombreJ1, nombreJ2);
end;

end.
