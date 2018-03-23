object CalcularDosFechasForm: TCalcularDosFechasForm
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Calcular Dos Fechas'
  ClientHeight = 507
  ClientWidth = 392
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
    Left = 64
    Top = 104
    Width = 72
    Height = 19
    Caption = 'Fecha Fin:'
  end
  object Label2: TLabel
    Left = 46
    Top = 48
    Width = 90
    Height = 19
    Caption = 'Fecha Inicio:'
  end
  object Label3: TLabel
    Left = 30
    Top = 312
    Width = 191
    Height = 25
    Caption = 'Diferencia de d'#237'a(s):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 9
    Top = 360
    Width = 212
    Height = 25
    Caption = 'Diferencia de mes(es):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 416
    Width = 197
    Height = 25
    Caption = 'Diferencia de a'#241'o(s):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object FInicioDateTimePicker: TDateTimePicker
    Left = 142
    Top = 40
    Width = 186
    Height = 27
    Date = 43180.582925196760000000
    Time = 43180.582925196760000000
    TabOrder = 0
  end
  object FFinDateTimePicker: TDateTimePicker
    Left = 142
    Top = 96
    Width = 186
    Height = 27
    Date = 43180.582925196760000000
    Time = 43180.582925196760000000
    TabOrder = 1
  end
  object LimpiarButton: TButton
    Left = 223
    Top = 160
    Width = 105
    Height = 57
    Caption = 'Limpiar'
    TabOrder = 2
    OnClick = LimpiarButtonClick
  end
  object CalcularButton: TButton
    Left = 104
    Top = 160
    Width = 105
    Height = 57
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = CalcularButtonClick
  end
  object DiasEdit: TEdit
    Left = 240
    Top = 310
    Width = 121
    Height = 27
    TabOrder = 4
  end
  object MesesEdit: TEdit
    Left = 240
    Top = 362
    Width = 121
    Height = 27
    TabOrder = 5
  end
  object AnosEdit: TEdit
    Left = 240
    Top = 418
    Width = 121
    Height = 27
    TabOrder = 6
  end
end
