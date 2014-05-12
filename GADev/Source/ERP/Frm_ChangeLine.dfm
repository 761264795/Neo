object FM_ChangeLine: TFM_ChangeLine
  Left = 388
  Top = 257
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #29366#24577#20999#25442
  ClientHeight = 171
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    369
    171)
  PixelsPerInch = 96
  TextHeight = 12
  object lbl1: TLabel
    Left = 40
    Top = 24
    Width = 136
    Height = 16
    Caption = #31995#32479#24403#21069#32852#26426#29366#24577
    Font.Charset = GB2312_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl2: TLabel
    Left = 40
    Top = 58
    Width = 272
    Height = 48
    Caption = #27880#24847#20107#39033#65306#13#10#20999#25442#21069#35831#20808#25552#20132#20445#23384#27491#22312#20462#25913#30340#21333#25454#13#10
    Font.Charset = GB2312_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object btnOk: TButton
    Left = 180
    Top = 121
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #20999#25442' &O'
    TabOrder = 0
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 268
    Top = 121
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = #21462#28040' &C'
    ModalResult = 2
    TabOrder = 1
  end
end
