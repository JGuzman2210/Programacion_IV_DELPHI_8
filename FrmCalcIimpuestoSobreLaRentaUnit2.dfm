object FrmCalcImpuestoSobreLaRenta: TFrmCalcImpuestoSobreLaRenta
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Calcula Impuesto Sobre La Renta - ISR'
  ClientHeight = 199
  ClientWidth = 404
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
    Left = 32
    Top = 32
    Width = 116
    Height = 19
    Caption = 'Sueldo Mensual:'
  end
  object Label2: TLabel
    Left = 16
    Top = 146
    Width = 175
    Height = 19
    Caption = 'Impuesto sobre la renta:'
  end
  object lbImpuesto: TLabel
    Left = 16
    Top = 112
    Width = 6
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SueldoMensualEdit: TEdit
    Left = 154
    Top = 29
    Width = 207
    Height = 27
    Alignment = taRightJustify
    TabOrder = 0
  end
  object CalcImpuestoButton: TButton
    Left = 216
    Top = 72
    Width = 145
    Height = 49
    Caption = 'Calcular Impuesto'
    TabOrder = 1
    OnClick = CalcImpuestoButtonClick
  end
  object ImpuestoMensualEdit: TEdit
    Left = 197
    Top = 146
    Width = 172
    Height = 31
    Alignment = taCenter
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
end
