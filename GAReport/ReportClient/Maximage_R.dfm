object FrmMaxImage: TFrmMaxImage
  Left = 485
  Top = 267
  Width = 297
  Height = 247
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = #29289#26009#21407#22270#26597#30475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object matreialImg: TImage
    Left = 0
    Top = 0
    Width = 281
    Height = 209
    AutoSize = True
    PopupMenu = PopupMenu1
  end
  object Savedg: TSaveDialog
    DefaultExt = '.jpeg'
    Filter = #22270#29255#25991#20214'(*.jpg;*jpeg)|*.jpg;*jpeg'
    Left = 96
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 184
    Top = 112
    object N1: TMenuItem
      Caption = #22270#29255#21478#23384#20026'...'
      OnClick = N1Click
    end
  end
end
