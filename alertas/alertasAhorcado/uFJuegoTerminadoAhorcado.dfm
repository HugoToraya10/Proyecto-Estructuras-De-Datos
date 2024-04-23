object fJuegoTerminadoAhorcado: TfJuegoTerminadoAhorcado
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Juego terminado'
  ClientHeight = 212
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object RelativePanel1: TRelativePanel
    Left = 0
    Top = 0
    Width = 388
    Height = 212
    ControlCollection = <
      item
        Control = StaticText1
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = StaticText2
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = textGanador
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = botonJugar
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
        LeftOf = separador
      end
      item
        Control = separador
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = botonSalir
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
        RightOf = separador
      end>
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 384
    ExplicitHeight = 211
    DesignSize = (
      388
      212)
    object StaticText1: TStaticText
      Left = 80
      Top = 16
      Width = 226
      Height = 41
      Anchors = []
      Caption = #161'Juego Terminado!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 59
      Top = 96
      Width = 268
      Height = 41
      Anchors = []
      Caption = #191'Qu'#233' desea hacer? '#55358#56593
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object textGanador: TStaticText
      Left = 139
      Top = 55
      Width = 108
      Height = 32
      Anchors = []
      Caption = '-------------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object botonJugar: TButton
      Left = 53
      Top = 152
      Width = 100
      Height = 40
      Anchors = []
      Caption = 'Jugar de nuevo'
      TabOrder = 3
      OnClick = botonJugarClick
    end
    object separador: TPanel
      Left = 153
      Top = 151
      Width = 80
      Height = 40
      Anchors = []
      Caption = 'separador'
      TabOrder = 4
      Visible = False
    end
    object botonSalir: TButton
      Left = 233
      Top = 152
      Width = 100
      Height = 40
      Anchors = []
      Caption = 'Ya me aburr'#237' XD'
      TabOrder = 5
      OnClick = botonSalirClick
    end
  end
end
