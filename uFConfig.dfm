object fConfig: TfConfig
  AlignWithMargins = True
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 612
  ClientWidth = 808
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RelativePanel1: TRelativePanel
    Left = 0
    Top = 0
    Width = 808
    Height = 612
    ControlCollection = <
      item
        Control = tituloConfig
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
        Below = Panel1
      end
      item
        Control = SpeedButton1
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = Panel1
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = True
        AlignVerticalCenterWithPanel = False
      end>
    Align = alClient
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    DesignSize = (
      808
      612)
    object tituloConfig: TStaticText
      Left = 359
      Top = 42
      Width = 88
      Height = 41
      Margins.Top = 20
      Anchors = []
      Caption = 'Ajustes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object SpeedButton1: TSpeedButton
      Left = 17
      Top = 17
      Width = 100
      Height = 50
      Caption = 'Volver'
      OnClick = SpeedButton1Click
    end
    object Panel1: TPanel
      Left = 312
      Top = 1
      Width = 185
      Height = 41
      Caption = 'Panel1'
      TabOrder = 1
      Visible = False
    end
  end
end
