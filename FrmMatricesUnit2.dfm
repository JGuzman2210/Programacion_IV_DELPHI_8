object FrmMatrices: TFrmMatrices
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Operaciones B'#225'sica [Suma,Resta,Divisi'#243'n,Multiplicaci'#243'n]'
  ClientHeight = 330
  ClientWidth = 413
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object GenerarButton: TButton
    Left = 8
    Top = 32
    Width = 161
    Height = 41
    Caption = 'Generar Matriz 3x3'
    TabOrder = 0
    OnClick = GenerarButtonClick
  end
  object MatricesListBox: TListBox
    Left = 8
    Top = 88
    Width = 161
    Height = 225
    ItemHeight = 19
    TabOrder = 1
  end
  object SumaButton: TButton
    Left = 195
    Top = 28
    Width = 41
    Height = 49
    Caption = '+'
    TabOrder = 2
    OnClick = SumaButtonClick
  end
  object RestaButton: TButton
    Left = 242
    Top = 28
    Width = 41
    Height = 49
    Caption = '-'
    TabOrder = 3
    OnClick = RestaButtonClick
  end
  object DivisionButton: TButton
    Left = 289
    Top = 28
    Width = 41
    Height = 49
    Caption = '/'
    TabOrder = 4
    OnClick = DivisionButtonClick
  end
  object MultiplicacionButton: TButton
    Left = 336
    Top = 28
    Width = 41
    Height = 49
    Caption = 'x'
    TabOrder = 5
    OnClick = MultiplicacionButtonClick
  end
  object ResultadoListBox: TListBox
    Left = 195
    Top = 83
    Width = 182
    Height = 230
    ItemHeight = 19
    TabOrder = 6
  end
end
