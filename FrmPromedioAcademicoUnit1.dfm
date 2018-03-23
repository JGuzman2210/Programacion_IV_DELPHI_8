object FrmPromedioAcademico: TFrmPromedioAcademico
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Calcular Promedio Acad'#233'mico Unicaribe'
  ClientHeight = 316
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 575
    Height = 29
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'CALCULA PROMEDIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 223
  end
  object Label2: TLabel
    Left = 64
    Top = 56
    Width = 85
    Height = 19
    Caption = 'Calificaci'#243'n:'
  end
  object Label3: TLabel
    Left = 8
    Top = 224
    Width = 74
    Height = 19
    Caption = 'Promedio:'
  end
  object Label4: TLabel
    Left = 8
    Top = 280
    Width = 142
    Height = 19
    Caption = 'Registro agregados:'
  end
  object EditCalificacion: TEdit
    Left = 155
    Top = 53
    Width = 121
    Height = 27
    NumbersOnly = True
    TabOrder = 0
  end
  object ButtonAgregar: TButton
    Left = 185
    Top = 104
    Width = 92
    Height = 49
    Caption = 'Agregar'
    TabOrder = 1
    OnClick = ButtonAgregarClick
  end
  object ButtonLimpiar: TButton
    Left = 184
    Top = 159
    Width = 92
    Height = 49
    Caption = 'Limpiar'
    TabOrder = 2
    OnClick = ButtonLimpiarClick
  end
  object ListBoxCalificaciones: TListBox
    Left = 312
    Top = 53
    Width = 255
    Height = 256
    ItemHeight = 19
    TabOrder = 3
  end
  object EditPromedioFinal: TEdit
    Left = 88
    Top = 221
    Width = 73
    Height = 27
    Alignment = taCenter
    Enabled = False
    ReadOnly = True
    TabOrder = 4
  end
  object EditRegistroAgregado: TEdit
    Left = 156
    Top = 281
    Width = 121
    Height = 27
    Enabled = False
    ReadOnly = True
    TabOrder = 5
  end
end
