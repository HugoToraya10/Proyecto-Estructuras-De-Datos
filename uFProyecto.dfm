object fMenu: TfMenu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Men'#250' principal'
  ClientHeight = 562
  ClientWidth = 788
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  TextHeight = 15
  object panelMenu: TRelativePanel
    Left = 0
    Top = 0
    Width = 788
    Height = 562
    ControlCollection = <
      item
        Control = sbotonAjustes
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
      end
      item
        Control = sbotonJugar
        Above = sbotonAjustes
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = sbotonSalir
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
        Below = sbotonAjustes
      end>
    Align = alClient
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    ExplicitWidth = 784
    ExplicitHeight = 561
    DesignSize = (
      788
      562)
    object sbotonAjustes: TSpeedButton
      Left = 304
      Top = 230
      Width = 177
      Height = 100
      Anchors = []
      Caption = 'Ajustes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = sbotonAjustesClick
    end
    object sbotonJugar: TSpeedButton
      Left = 304
      Top = 130
      Width = 177
      Height = 100
      Cursor = crArrow
      Anchors = []
      Caption = 'Jugar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = sbotonJugarClick
    end
    object sbotonSalir: TSpeedButton
      Left = 304
      Top = 330
      Width = 177
      Height = 100
      Anchors = []
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = sbotonSalirClick
    end
  end
end
