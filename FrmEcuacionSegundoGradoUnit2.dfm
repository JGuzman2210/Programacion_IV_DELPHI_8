object FrmEcuacionSegundoGrado: TFrmEcuacionSegundoGrado
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'FrmEcuacionSegundoGrado'
  ClientHeight = 231
  ClientWidth = 505
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
    Left = 48
    Top = 40
    Width = 17
    Height = 19
    Caption = 'A:'
  end
  object Label2: TLabel
    Left = 48
    Top = 80
    Width = 15
    Height = 19
    Caption = 'B:'
  end
  object Label3: TLabel
    Left = 48
    Top = 120
    Width = 16
    Height = 19
    Caption = 'C:'
  end
  object Label4: TLabel
    Left = 248
    Top = 128
    Width = 24
    Height = 19
    Caption = 'X1:'
  end
  object Label5: TLabel
    Left = 248
    Top = 178
    Width = 24
    Height = 19
    Caption = 'X2:'
  end
  object Label6: TLabel
    Left = 312
    Top = 24
    Width = 177
    Height = 19
    Caption = 'Ecuaci'#243'n Segundo Grado'
  end
  object AEdit: TEdit
    Left = 71
    Top = 37
    Width = 121
    Height = 27
    TabOrder = 0
  end
  object BEdit: TEdit
    Left = 71
    Top = 77
    Width = 121
    Height = 27
    TabOrder = 1
  end
  object CEdit: TEdit
    Left = 70
    Top = 117
    Width = 121
    Height = 27
    TabOrder = 2
  end
  object EcuacionButton: TButton
    Left = 116
    Top = 168
    Width = 75
    Height = 41
    Caption = 'Procesar'
    TabOrder = 3
    OnClick = EcuacionButtonClick
  end
  object X1Edit: TEdit
    Left = 278
    Top = 125
    Width = 121
    Height = 27
    TabOrder = 4
  end
  object X2Edit: TEdit
    Left = 278
    Top = 175
    Width = 121
    Height = 27
    TabOrder = 5
  end
end
