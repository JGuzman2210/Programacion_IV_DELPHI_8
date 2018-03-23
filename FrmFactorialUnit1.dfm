object FrmFactorial: TFrmFactorial
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Factorial del Cuadrado del Cubo'
  ClientHeight = 231
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 63
    Height = 19
    Caption = 'N'#250'mero:'
  end
  object NumeroEdit: TEdit
    Left = 93
    Top = 29
    Width = 121
    Height = 27
    Alignment = taCenter
    NumbersOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 133
    Top = 72
    Width = 81
    Height = 41
    Caption = 'Generar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object FactorialListBox: TListBox
    Left = 248
    Top = 32
    Width = 248
    Height = 191
    ItemHeight = 19
    TabOrder = 2
  end
end
