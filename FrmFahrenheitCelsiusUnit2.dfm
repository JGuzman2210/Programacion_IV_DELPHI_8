object FrmFahrenheitCelsius: TFrmFahrenheitCelsius
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Fahrenheit a Celsius || Celsius a Fahrenheit'
  ClientHeight = 231
  ClientWidth = 569
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
    Left = 8
    Top = 24
    Width = 237
    Height = 33
    Caption = 'Fahrenheit a Celsius'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 304
    Top = 24
    Width = 237
    Height = 33
    Caption = 'Celsius a Fahrenheit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 80
    Height = 19
    Caption = 'Fahrenheit:'
  end
  object Label4: TLabel
    Left = 312
    Top = 80
    Width = 55
    Height = 19
    Caption = 'Celsius:'
  end
  object Label5: TLabel
    Left = 16
    Top = 184
    Width = 75
    Height = 19
    Caption = 'Resultado:'
  end
  object Label6: TLabel
    Left = 312
    Top = 184
    Width = 75
    Height = 19
    Caption = 'Resultado:'
  end
  object FahrenheitEdit: TEdit
    Left = 102
    Top = 77
    Width = 143
    Height = 27
    Alignment = taCenter
    TabOrder = 0
  end
  object FTOCButton: TButton
    Left = 170
    Top = 128
    Width = 75
    Height = 41
    Caption = 'Convertir'
    TabOrder = 1
    OnClick = FTOCButtonClick
  end
  object CelsiusEdit: TEdit
    Left = 373
    Top = 77
    Width = 168
    Height = 27
    Alignment = taCenter
    TabOrder = 2
  end
  object CTOFButton: TButton
    Left = 466
    Top = 128
    Width = 75
    Height = 41
    Caption = 'Convertir'
    TabOrder = 3
    OnClick = CTOFButtonClick
  end
  object ResultFTOCEdit: TEdit
    Left = 97
    Top = 181
    Width = 148
    Height = 27
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 4
  end
  object ResultCTOFEdit: TEdit
    Left = 393
    Top = 181
    Width = 148
    Height = 27
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 5
  end
end
