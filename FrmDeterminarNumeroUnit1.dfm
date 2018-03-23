object FrmDeterminarNumero: TFrmDeterminarNumero
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Determinar N'#250'mero de Entrada'
  ClientHeight = 443
  ClientWidth = 643
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
    Left = 40
    Top = 32
    Width = 63
    Height = 19
    Caption = 'N'#250'mero:'
  end
  object Label2: TLabel
    Left = 232
    Top = 86
    Width = 38
    Height = 19
    Caption = 'Pares'
  end
  object Label3: TLabel
    Left = 305
    Top = 86
    Width = 58
    Height = 19
    Caption = 'Impares'
  end
  object Label4: TLabel
    Left = 384
    Top = 86
    Width = 62
    Height = 19
    Caption = 'Positivos'
  end
  object Label5: TLabel
    Left = 568
    Top = 86
    Width = 49
    Height = 19
    Caption = 'Primos'
  end
  object Label6: TLabel
    Left = 472
    Top = 86
    Width = 69
    Height = 19
    Caption = 'Negativos'
  end
  object Label7: TLabel
    Left = 232
    Top = 19
    Width = 330
    Height = 35
    Caption = 'Total Numeros Agregados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object NumeroEdit: TEdit
    Left = 109
    Top = 29
    Width = 92
    Height = 27
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object AgregarButton: TButton
    Left = 126
    Top = 80
    Width = 75
    Height = 33
    Caption = 'Agregar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = AgregarButtonClick
  end
  object ListBoxGeneralNum: TListBox
    Left = 8
    Top = 136
    Width = 193
    Height = 299
    ItemHeight = 19
    TabOrder = 2
  end
  object ListBoxPares: TListBox
    Left = 232
    Top = 120
    Width = 49
    Height = 315
    ItemHeight = 19
    TabOrder = 3
  end
  object ListBoxImpares: TListBox
    Left = 305
    Top = 120
    Width = 49
    Height = 315
    ItemHeight = 19
    TabOrder = 4
  end
  object ListBoxPositivos: TListBox
    Left = 384
    Top = 120
    Width = 49
    Height = 315
    ItemHeight = 19
    TabOrder = 5
  end
  object ListBoxNegativos: TListBox
    Left = 480
    Top = 120
    Width = 49
    Height = 315
    ItemHeight = 19
    TabOrder = 6
  end
  object ListBoxPrimos: TListBox
    Left = 568
    Top = 120
    Width = 49
    Height = 315
    ItemHeight = 19
    TabOrder = 7
  end
  object NumerosAgregadosEdit: TEdit
    Left = 570
    Top = 29
    Width = 65
    Height = 27
    Alignment = taCenter
    Enabled = False
    ReadOnly = True
    TabOrder = 8
  end
end
