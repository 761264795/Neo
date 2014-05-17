object SQLFrm: TSQLFrm
  Left = 339
  Top = 132
  Width = 705
  Height = 485
  Caption = #33258#23450#20041#36873#25321#26694#26550#35821#21477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 396
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object SqlMM: TMemo
      Left = 1
      Top = 1
      Width = 687
      Height = 394
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 396
    Width = 689
    Height = 51
    Align = alBottom
    Color = 16511980
    TabOrder = 1
    DesignSize = (
      689
      51)
    object Button1: TButton
      Left = 512
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #20445#23384'(&S)'
      Default = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 600
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #21462#28040'(&C)'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
