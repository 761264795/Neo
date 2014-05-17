object SystemSetFrm: TSystemSetFrm
  Left = 432
  Top = 228
  Width = 473
  Height = 268
  Caption = #21442#25968#35774#32622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Lb_code: TLabel
    Left = 16
    Top = 20
    Width = 121
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #26368#22823#21487#26597#35810#25968#25454#34892#65306
    Transparent = True
  end
  object Label1: TLabel
    Left = 16
    Top = 52
    Width = 121
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #26368#22823#21487#26597#35810#25968#25454#21253#65306
    Transparent = True
  end
  object Label2: TLabel
    Left = 288
    Top = 52
    Width = 33
    Height = 13
    AutoSize = False
    Caption = 'MB'
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 8
    Top = 168
    Width = 441
    Height = 2
  end
  object ed_maxrowCount: TEdit
    Left = 144
    Top = 16
    Width = 137
    Height = 20
    Color = clWhite
    TabOrder = 0
    OnKeyPress = ed_maxrowCountKeyPress
  end
  object ed_maxdatasize: TEdit
    Left = 144
    Top = 48
    Width = 137
    Height = 20
    Color = clWhite
    TabOrder = 1
    OnKeyPress = ed_maxdatasizeKeyPress
  end
  object btn_Save: TBitBtn
    Left = 352
    Top = 184
    Width = 75
    Height = 25
    Caption = #20445#23384'(&S)'
    TabOrder = 2
    OnClick = btn_SaveClick
  end
end
