object FrmTablaMultiplicar: TFrmTablaMultiplicar
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Generador Tabla de Multiplicar'
  ClientHeight = 446
  ClientWidth = 502
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
  object Label1: TLabel
    Left = 8
    Top = 61
    Width = 189
    Height = 23
    Caption = 'Tabla de Multiplicar'
    Color = clLime
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object TablaCheckListBox: TCheckListBox
    Left = 8
    Top = 90
    Width = 177
    Height = 348
    OnClickCheck = TablaCheckListBoxClickCheck
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 29
    Items.Strings = (
      '')
    ParentFont = False
    TabOrder = 0
  end
  object TablaResultListBox: TListBox
    Left = 216
    Top = 90
    Width = 278
    Height = 348
    ItemHeight = 19
    TabOrder = 1
  end
  object SeleccionRadioGroup: TRadioGroup
    Left = 216
    Top = 16
    Width = 278
    Height = 68
    Caption = 'Ordenar Tabla'
    TabOrder = 2
  end
  object AscRadioButton: TRadioButton
    Left = 232
    Top = 48
    Width = 113
    Height = 17
    Caption = 'Ascendente'
    Checked = True
    TabOrder = 3
    TabStop = True
    OnClick = AscRadioButtonClick
  end
  object DescRadioButton: TRadioButton
    Left = 368
    Top = 48
    Width = 113
    Height = 17
    Caption = 'Descendente'
    TabOrder = 4
    OnClick = AscRadioButtonClick
  end
end
