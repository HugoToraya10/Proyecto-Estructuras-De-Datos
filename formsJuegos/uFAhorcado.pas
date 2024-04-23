unit uFAhorcado;

interface

uses
  ufJuegos, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TfAhorcado = class(TForm)
    botonVolver: TSpeedButton;
    RelativePanel1: TRelativePanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    panelJuego: TPanel;
    Panel2: TPanel;
    panelPuntos: TPanel;
    StaticText1: TStaticText;
    SpeedButton2: TSpeedButton;
    botonA: TButton;
    botonB: TButton;
    botonC: TButton;
    botonD: TButton;
    botonE: TButton;
    botonF: TButton;
    botonG: TButton;
    botonH: TButton;
    botonI: TButton;
    botonJ: TButton;
    botonK: TButton;
    botonM: TButton;
    botonN: TButton;
    botonL: TButton;
    botonENIE: TButton;
    botonO: TButton;
    botonP: TButton;
    botonQ: TButton;
    botonY: TButton;
    botonZ: TButton;
    botonX: TButton;
    botonW: TButton;
    botonT: TButton;
    botonV: TButton;
    botonU: TButton;
    botonS: TButton;
    botonR: TButton;
    imagenAhorcado: TImage;
    Panel5: TPanel;
    StaticText2: TStaticText;
    Panel6: TPanel;
    StaticText3: TStaticText;
    textoPGanadas: TStaticText;
    textoPPerdidas: TStaticText;
    procedure botonVolverClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure botonAClick(Sender: TObject);
    procedure botonBClick(Sender: TObject);
    procedure botonCClick(Sender: TObject);
    procedure botonDClick(Sender: TObject);
    procedure botonEClick(Sender: TObject);
    procedure botonFClick(Sender: TObject);
    procedure botonGClick(Sender: TObject);
    procedure botonHClick(Sender: TObject);
    procedure botonIClick(Sender: TObject);
    procedure botonJClick(Sender: TObject);
    procedure botonKClick(Sender: TObject);
    procedure botonLClick(Sender: TObject);
    procedure botonMClick(Sender: TObject);
    procedure botonNClick(Sender: TObject);
    procedure botonENIEClick(Sender: TObject);
    procedure botonOClick(Sender: TObject);
    procedure botonPClick(Sender: TObject);
    procedure botonQClick(Sender: TObject);
    procedure botonRClick(Sender: TObject);
    procedure botonSClick(Sender: TObject);
    procedure botonTClick(Sender: TObject);
    procedure botonUClick(Sender: TObject);
    procedure botonVClick(Sender: TObject);
    procedure botonWClick(Sender: TObject);
    procedure botonXClick(Sender: TObject);
    procedure botonYClick(Sender: TObject);
    procedure botonZClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAhorcado: TfAhorcado;
  espaciadoEntreFiguras: Integer;
  espaciadoEntreLetras: Integer;
  topImagen: Integer;
  leftImagen: Integer;
  topLetra: Integer;
  leftLetra: Integer;
  listaImagenes: array of TImage;
  listaLetras: array of String;
  listaLetrasAdivinadas: array of TStaticText;
  letrasNoAdivinadas: Array of String;
  elegirTipoRaya: array [0 .. 1] of String;
  palabraElegida: String;
  letraPulsada: TButton;
  vidas: Integer;
  contadorBotones: Integer;
  botonesDeshabilitados: Array of TButton;
  perdedor: boolean;
  ganador: boolean;
  numLetrasCorrectas: Integer;
  partidasGanadas: Integer;
  partidasPerdidas: Integer;

implementation

{$R *.dfm}

uses uFProyecto, uFJuegoTerminadoAhorcado;

{ ------------------------------PROCEDURE--------------------------------- }
function devolverPalabra: String;
var
  palabras: array [0 .. 30] of String;
  palabra: String;
begin
  palabras[0] := 'Atardecer';
  palabras[1] := 'Intentar';
  palabras[2] := 'Programar';
  palabras[3] := 'Hacer';
  palabras[4] := 'Explorar';
  palabras[5] := 'Sumatoria';
  palabras[6] := 'Extraer';
  palabras[7] := 'Espacio';
  palabras[8] := 'Desintegrar';
  palabras[9] := 'Casa';
  palabras[10] := 'Tarde';
  palabras[11] := 'Noticia';
  palabras[12] := 'Descabellado';
  palabras[13] := 'Alquimia';
  palabras[14] := 'Plaga';
  palabras[15] := 'Ingeniero';
  palabras[16] := 'Software';
  palabras[17] := 'Bienhechor';
  palabras[18] := 'Brindar';
  palabras[19] := 'Caucho';
  palabras[20] := 'Pata';
  palabras[21] := 'Cocina';
  palabras[22] := 'Pollo';
  palabras[23] := 'Enseñar';
  palabras[24] := 'Taxidermia';
  palabras[25] := 'Unir';
  palabras[26] := 'Discernir';
  palabras[27] := 'Roca';
  palabras[28] := 'Celular';
  palabras[29] := 'Espantasuegras';
  palabras[30] := 'Escritorio';

  palabra := palabras[Random(Length(palabras))];

  Result := palabra;
end;

{ ------------------------------PROCEDURE--------------------------------- }
procedure creacionImagenes(panelJuego: TPanel);
var
  i: Integer;
begin
  elegirTipoRaya[0] := 'imagenes/ahorcado/raya1.png';
  elegirTipoRaya[1] := 'imagenes/ahorcado/raya2.png';

  palabraElegida := upperCase(devolverPalabra);
  setLength(listaImagenes, Length(palabraElegida));
  setLength(listaLetrasAdivinadas, Length(palabraElegida));

  topImagen := 0;
  leftImagen := 0;
  topLetra := 0;
  leftLetra := 0;

  for i := 0 to Length(palabraElegida) - 1 do
  begin
    topImagen := Round(85 * panelJuego.Height / 100);
    leftImagen := Round(1 * panelJuego.Width / 100) + espaciadoEntreFiguras;

    listaImagenes[i] := TImage.Create(AhorcadoGame.panelJuego);
    listaImagenes[i].Parent := (AhorcadoGame.panelJuego);
    listaImagenes[i].Name := 'Imagen' + IntToStr(i);
    listaImagenes[i].Picture.LoadFromFile
      (elegirTipoRaya[Random(Length(elegirTipoRaya))]);
    listaImagenes[i].Stretch := true;
    listaImagenes[i].Proportional := false;
    listaImagenes[i].Left := leftImagen;
    listaImagenes[i].top := topImagen;
    listaImagenes[i].Width := 40;
    listaImagenes[i].Height := 4;
    listaImagenes[i].visible := true;
    espaciadoEntreFiguras := espaciadoEntreFiguras + listaImagenes[i]
      .Width + 10;

    topLetra := Round(73 * panelJuego.Height / 100);
    leftLetra := Round(2 * panelJuego.Width / 100) + espaciadoEntreLetras;

    listaLetrasAdivinadas[i] := TStaticText.Create(AhorcadoGame.panelJuego);
    listaLetrasAdivinadas[i].Parent := AhorcadoGame.panelJuego;
    listaLetrasAdivinadas[i].Name := 'letra' + IntToStr(i);
    listaLetrasAdivinadas[i].Caption := ' ';
    listaLetrasAdivinadas[i].Font.Size := 30;
    listaLetrasAdivinadas[i].Width := 40;
    listaLetrasAdivinadas[i].Height := 43;
    listaLetrasAdivinadas[i].top := topLetra;
    listaLetrasAdivinadas[i].Left := leftLetra;

    espaciadoEntreLetras := espaciadoEntreLetras + listaLetrasAdivinadas[i]
      .Width + 10;
  end;

end;

procedure mostrarVidas(imagenAhorcado: TImage);
begin

  case vidas of
    4:
      imagenAhorcado.Picture.LoadFromFile('imagenes/ahorcado/5.png');
    3:
      imagenAhorcado.Picture.LoadFromFile('imagenes/ahorcado/4.png');
    2:
      imagenAhorcado.Picture.LoadFromFile('imagenes/ahorcado/3.png');
    1:
      imagenAhorcado.Picture.LoadFromFile('imagenes/ahorcado/2.png');
    0:
      imagenAhorcado.Picture.LoadFromFile('imagenes/ahorcado/1.png');

  else
    imagenAhorcado.Picture.LoadFromFile('imagenes/ahorcado/6.png');
  end;

end;

{ ------------------------------PROCEDURE--------------------------------- }
procedure reiniciarJuego(panelJuego: TPanel; imagenAhorcado: TImage);
var
  i: Integer;
begin
  topImagen := 0;
  leftImagen := 0;
  topLetra := 0;
  leftLetra := 0;
  numLetrasCorrectas := 0;
  vidas := 5;
  espaciadoEntreFiguras := 0;
  espaciadoEntreLetras := 0;
  contadorBotones := 0;

  if Length(listaImagenes) > 0 then
  begin
    for i := 0 to Length(listaImagenes) - 1 do
    begin
      listaImagenes[i].Free;
      listaLetrasAdivinadas[i].Free;
    end;
  end;

  if Length(botonesDeshabilitados) > 0 then
  begin
    for i := 0 to Length(botonesDeshabilitados) - 1 do
      botonesDeshabilitados[i].Enabled := true;
  end;

  creacionImagenes(panelJuego);
  mostrarVidas(imagenAhorcado);

end;

{ ------------------------------PROCEDURE--------------------------------- }
procedure comprobacionLetra(panelJuego: TPanel; imagenAhorcado: TImage);
var
  i: Integer;
  correcto: boolean;
begin
  correcto := false;
  if vidas > 0 then
  begin
    for i := 0 to Length(palabraElegida) - 1 do
    begin
      if palabraElegida[i + 1] = letraPulsada.Caption then
      begin
        listaLetrasAdivinadas[i].Caption := letraPulsada.Caption;
        correcto := true;
        letraPulsada.Enabled := false;
        numLetrasCorrectas := numLetrasCorrectas + 1;
      end;
    end;

    if numLetrasCorrectas = Length(palabraElegida) then
    begin
      { Se abre la pantalla de juego terminado }
      ganador := true;
      partidasGanadas := partidasGanadas + 1;
      fMenu.Enabled := false;
      fJuegoTerminadoAhorcado.show;
    end;

    if not correcto then
    begin
      vidas := vidas - 1;
    end
    else
    begin
      contadorBotones := contadorBotones + 1;
      setLength(botonesDeshabilitados, contadorBotones);
      botonesDeshabilitados[contadorBotones - 1] := letraPulsada;
    end;
    mostrarVidas(imagenAhorcado);
  end;
  if vidas <= 0 then
  begin
    { Se abre la pantalla de juego terminado }
    setLength(letrasNoAdivinadas, Length(palabraElegida));
    for i := 0 to Length(palabraElegida) - 1 do
    begin
      if palabraElegida[i + 1] <> listaLetrasAdivinadas[i].Caption then
      begin
        letrasNoAdivinadas[i] := palabraElegida[i + 1];
        listaLetrasAdivinadas[i].Caption := letrasNoAdivinadas[i];
        listaLetrasAdivinadas[i].Transparent := false;
        listaLetrasAdivinadas[i].Font.color := clred;
        listaLetrasAdivinadas[i].Height := 43;
      end;
    end;
    perdedor := true;
    partidasPerdidas := partidasPerdidas + 1;
    fMenu.Enabled := false;
    fJuegoTerminadoAhorcado.show;
  end;

end;

{ ------------------------------PROCEDURES PANEL ESTADISTICAS--------------------------------- }
procedure TfAhorcado.SpeedButton2Click(Sender: TObject);
begin
  reiniciarJuego(panelJuego, imagenAhorcado);
end;

{ ------------------------------PROCEDURE--------------------------------- }
procedure TfAhorcado.FormShow(Sender: TObject);
begin
  fMenu.Height := 768;
  fMenu.Width := 1024;
  // fMenu.Position := poDesktopcenter; no se puede no se pq XD
  textoPGanadas.Caption := IntToStr(partidasGanadas);
  textoPPerdidas.Caption := IntToStr(partidasPerdidas);
  reiniciarJuego(panelJuego, imagenAhorcado);
end;

{ ------------------------------PROCEDURE--------------------------------- }
procedure TfAhorcado.botonVolverClick(Sender: TObject);
begin
  fMenu.Height := 600;
  fMenu.Width := 800;
  AhorcadoGame.Hide;

  fMenu.Caption := 'Juegos';
end;

{ ------------------------------ PROCEDURES PARA CADA LETRA --------------------------------- }
procedure TfAhorcado.botonAClick(Sender: TObject);
begin
  letraPulsada := botonA;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonBClick(Sender: TObject);
begin
  letraPulsada := botonB;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonCClick(Sender: TObject);
begin
  letraPulsada := botonC;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonDClick(Sender: TObject);
begin
  letraPulsada := botonD;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonEClick(Sender: TObject);
begin
  letraPulsada := botonE;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonENIEClick(Sender: TObject);
begin
  letraPulsada := botonENIE;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonFClick(Sender: TObject);
begin
  letraPulsada := botonF;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonGClick(Sender: TObject);
begin
  letraPulsada := botonG;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonHClick(Sender: TObject);
begin
  letraPulsada := botonH;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonIClick(Sender: TObject);
begin
  letraPulsada := botonI;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonJClick(Sender: TObject);
begin
  letraPulsada := botonJ;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonKClick(Sender: TObject);
begin
  letraPulsada := botonK;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonLClick(Sender: TObject);
begin
  letraPulsada := botonL;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonMClick(Sender: TObject);
begin
  letraPulsada := botonM;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonNClick(Sender: TObject);
begin
  letraPulsada := botonN;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonOClick(Sender: TObject);
begin
  letraPulsada := botonO;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonPClick(Sender: TObject);
begin
  letraPulsada := botonP;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonQClick(Sender: TObject);
begin
  letraPulsada := botonQ;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonRClick(Sender: TObject);
begin
  letraPulsada := botonR;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonSClick(Sender: TObject);
begin
  letraPulsada := botonS;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonTClick(Sender: TObject);
begin
  letraPulsada := botonT;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonUClick(Sender: TObject);
begin
  letraPulsada := botonU;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonVClick(Sender: TObject);
begin
  letraPulsada := botonV;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonWClick(Sender: TObject);
begin
  letraPulsada := botonW;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonXClick(Sender: TObject);
begin
  letraPulsada := botonX;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonYClick(Sender: TObject);
begin
  letraPulsada := botonY;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

procedure TfAhorcado.botonZClick(Sender: TObject);
begin
  letraPulsada := botonZ;
  comprobacionLetra(panelJuego, imagenAhorcado);
end;

end.
