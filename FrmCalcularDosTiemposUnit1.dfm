object CalcularDosTiemposForm: TCalcularDosTiemposForm
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Calcular dos Tiempos'
  ClientHeight = 164
  ClientWidth = 560
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
    Top = 72
    Width = 27
    Height = 19
    Caption = 'Fin:'
  end
  object Label2: TLabel
    Left = 30
    Top = 32
    Width = 45
    Height = 19
    Caption = 'Inicio:'
  end
  object Label3: TLabel
    Left = 304
    Top = 32
    Width = 59
    Height = 19
    Caption = 'Hora(s):'
  end
  object Label4: TLabel
    Left = 288
    Top = 72
    Width = 73
    Height = 19
    Caption = 'Minuto(s):'
  end
  object Label5: TLabel
    Left = 275
    Top = 116
    Width = 87
    Height = 19
    Caption = 'Segundo(s):'
  end
  object InicioTiempoDateTimePicker: TDateTimePicker
    Left = 81
    Top = 24
    Width = 152
    Height = 27
    Date = 43180.639154675930000000
    Time = 43180.639154675930000000
    Kind = dtkTime
    TabOrder = 0
  end
  object FinTiempoDateTimePicker: TDateTimePicker
    Left = 81
    Top = 64
    Width = 152
    Height = 27
    Date = 43180.639154675930000000
    Time = 43180.639154675930000000
    Kind = dtkTime
    TabOrder = 1
  end
  object HorasEdit: TEdit
    Left = 369
    Top = 29
    Width = 121
    Height = 27
    Alignment = taCenter
    Enabled = False
    ReadOnly = True
    TabOrder = 2
  end
  object MinutosEdit: TEdit
    Left = 368
    Top = 72
    Width = 121
    Height = 27
    Alignment = taCenter
    Enabled = False
    ReadOnly = True
    TabOrder = 3
  end
  object SegundosEdit: TEdit
    Left = 368
    Top = 113
    Width = 121
    Height = 27
    Alignment = taCenter
    Enabled = False
    ReadOnly = True
    TabOrder = 4
  end
  object GenerarButton: TButton
    Left = 77
    Top = 112
    Width = 75
    Height = 44
    Caption = 'Generar'
    TabOrder = 5
    OnClick = GenerarButtonClick
  end
  object LimpiarButton: TButton
    Left = 158
    Top = 112
    Width = 75
    Height = 44
    Caption = 'Limpiar'
    TabOrder = 6
    OnClick = LimpiarButtonClick
  end
end
