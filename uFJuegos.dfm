object fJuegos: TfJuegos
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  Align = alClient
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Juegos'
  ClientHeight = 590
  ClientWidth = 781
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDefault
  PrintScale = poPrintToFit
  StyleElements = []
  OnClose = FormClose
  TextHeight = 15
  object RelativePanel1: TRelativePanel
    Left = 0
    Top = 0
    Width = 781
    Height = 590
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ControlCollection = <
      item
        Control = sbotonAhorcado
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
        LeftOf = sbotonGato
      end
      item
        Control = sbotonGato
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
      end
      item
        Control = sbotonTetris
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
        RightOf = sbotonGato
      end
      item
        Control = SpeedButton1
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end>
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      781
      590)
    object sbotonAhorcado: TSpeedButton
      Left = 184
      Top = 241
      Width = 137
      Height = 105
      Anchors = []
      Caption = 'Ahorcado'
      OnClick = sbotonAhorcadoClick
    end
    object sbotonGato: TSpeedButton
      Left = 321
      Top = 241
      Width = 137
      Height = 105
      Anchors = []
      Caption = 'Gato'
      OnClick = sbotonGatoClick
    end
    object sbotonTetris: TSpeedButton
      Left = 458
      Top = 241
      Width = 137
      Height = 105
      Anchors = []
      Caption = 'Tetris'
      OnClick = sbotonTetrisClick
    end
    object SpeedButton1: TSpeedButton
      Left = 17
      Top = 17
      Width = 100
      Height = 50
      Align = alClient
      Caption = 'Volver'
      OnClick = SpeedButton1Click
    end
  end
end
