object FrmOperacionesExtras: TFrmOperacionesExtras
  Left = 0
  Top = 0
  Caption = 'Operaciones Extras'
  ClientHeight = 273
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object LbNum1: TLabel
    Left = 224
    Top = 62
    Width = 60
    Height = 19
    Caption = 'LbNum1'
  end
  object LbNum2: TLabel
    Left = 224
    Top = 112
    Width = 60
    Height = 19
    Caption = 'LbNum2'
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 64
    Width = 177
    Height = 17
    Caption = #193'rea del Triangulo'
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object AreaCuboCheckBox: TCheckBox
    Left = 8
    Top = 224
    Width = 137
    Height = 17
    Caption = #193'rea del Cubo'
    TabOrder = 1
  end
  object AreaRectanguloCheckBox: TCheckBox
    Left = 8
    Top = 192
    Width = 161
    Height = 17
    Caption = #193'rea de Rectangulo'
    TabOrder = 2
  end
  object AreaCuadradoCheckBox: TCheckBox
    Left = 8
    Top = 160
    Width = 161
    Height = 17
    Caption = #193'rea del Cuadrado'
    TabOrder = 3
  end
  object AreaCilindroCheckBox: TCheckBox
    Left = 8
    Top = 127
    Width = 137
    Height = 17
    Caption = #193'rea del Cilindro'
    TabOrder = 4
  end
  object AreaCirculoCheckBox: TCheckBox
    Left = 8
    Top = 96
    Width = 153
    Height = 17
    Caption = #193'rea del Circulo'
    TabOrder = 5
  end
  object Num1Edit: TEdit
    Left = 336
    Top = 59
    Width = 121
    Height = 27
    NumbersOnly = True
    TabOrder = 6
  end
  object Num2Edit: TEdit
    Left = 336
    Top = 109
    Width = 121
    Height = 27
    NumbersOnly = True
    TabOrder = 7
  end
  object BtnButton: TButton
    Left = 224
    Top = 160
    Width = 257
    Height = 65
    Caption = 'Procesar'
    TabOrder = 8
    OnClick = BtnButtonClick
  end
end
