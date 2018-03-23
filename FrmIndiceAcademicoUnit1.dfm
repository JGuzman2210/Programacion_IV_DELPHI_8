object FrmIndiceAcademico: TFrmIndiceAcademico
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'INDICE ACADEMICO'
  ClientHeight = 391
  ClientWidth = 505
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
    Width = 505
    Height = 29
    Align = alTop
    Caption = 'CALCULAR INDICE ACADEMICO UNICARIBE'
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 462
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 85
    Height = 19
    Caption = 'Calificaci'#243'n:'
  end
  object Label3: TLabel
    Left = 45
    Top = 112
    Width = 64
    Height = 19
    Caption = 'Creditos:'
  end
  object Label4: TLabel
    Left = 248
    Top = 56
    Width = 94
    Height = 19
    Caption = 'Calificaciones'
  end
  object Label5: TLabel
    Left = 384
    Top = 56
    Width = 58
    Height = 19
    Caption = 'Creditos'
  end
  object Label6: TLabel
    Left = 40
    Top = 272
    Width = 184
    Height = 19
    Caption = #205'ndice Acad'#233'mico General'
  end
  object EditCalificacion: TEdit
    Left = 115
    Top = 69
    Width = 62
    Height = 27
    Alignment = taCenter
    NumbersOnly = True
    TabOrder = 0
  end
  object EditCreditos: TEdit
    Left = 115
    Top = 109
    Width = 46
    Height = 27
    Alignment = taCenter
    NumbersOnly = True
    TabOrder = 1
  end
  object ListBoxCalificaciones: TListBox
    Left = 264
    Top = 81
    Width = 66
    Height = 129
    ItemHeight = 19
    TabOrder = 4
  end
  object ListBoxCreditos: TListBox
    Left = 384
    Top = 81
    Width = 66
    Height = 129
    ItemHeight = 19
    TabOrder = 5
  end
  object ButtonAgregar: TButton
    Left = 64
    Top = 176
    Width = 75
    Height = 34
    Caption = 'Agregar'
    TabOrder = 2
    OnClick = ButtonAgregarClick
  end
  object ButtonLimpiar: TButton
    Left = 145
    Top = 176
    Width = 75
    Height = 34
    Caption = 'Limpiar'
    TabOrder = 3
    OnClick = ButtonLimpiarClick
  end
  object EditResultadoIndice: TEdit
    Left = 40
    Top = 312
    Width = 180
    Height = 27
    Alignment = taCenter
    NumbersOnly = True
    ReadOnly = True
    TabOrder = 6
  end
end
