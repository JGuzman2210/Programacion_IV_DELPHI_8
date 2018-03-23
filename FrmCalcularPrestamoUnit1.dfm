object FrmCalcularPrestamo: TFrmCalcularPrestamo
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Calcular Prestamo'
  ClientHeight = 463
  ClientWidth = 711
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
    Left = 217
    Top = 128
    Width = 49
    Height = 23
    Caption = 'Plazo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 32
    Width = 242
    Height = 23
    Caption = 'Monto del pr'#233'stamo en RD$:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 21
    Top = 80
    Width = 245
    Height = 23
    Caption = 'Tasa de Porcentaje Anual %:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 367
    Top = 87
    Width = 162
    Height = 14
    Caption = ' (El plazo debe ser en meses)'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object MontoPrestadoEdit: TEdit
    Left = 272
    Top = 32
    Width = 217
    Height = 27
    NumbersOnly = True
    TabOrder = 0
  end
  object TasaEdit: TEdit
    Left = 272
    Top = 80
    Width = 89
    Height = 27
    NumbersOnly = True
    TabOrder = 1
  end
  object PlazoEdit: TEdit
    Left = 272
    Top = 128
    Width = 89
    Height = 27
    NumbersOnly = True
    TabOrder = 2
  end
  object CalcularButton: TButton
    Left = 352
    Top = 176
    Width = 137
    Height = 41
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = CalcularButtonClick
  end
  object LimpiarButton: TButton
    Left = 200
    Top = 176
    Width = 137
    Height = 41
    Caption = 'Limpiar'
    TabOrder = 4
  end
  object TablaAmortizacionListBox: TListBox
    Left = 40
    Top = 264
    Width = 617
    Height = 185
    ItemHeight = 19
    TabOrder = 5
  end
end
