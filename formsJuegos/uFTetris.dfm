object fTetris: TfTetris
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'fTetris'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RelativePanel1: TRelativePanel
    Left = 0
    Top = 0
    Width = 800
    Height = 600
    ControlCollection = <
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
    ExplicitLeft = -144
    DesignSize = (
      800
      600)
    object SpeedButton1: TSpeedButton
      Left = 17
      Top = 17
      Width = 100
      Height = 50
      Anchors = []
      Caption = 'Volver'
      OnClick = SpeedButton1Click
    end
  end
end
