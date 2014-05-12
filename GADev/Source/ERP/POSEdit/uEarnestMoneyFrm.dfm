inherited FrmHangOut: TFrmHangOut
  Left = 373
  Top = 220
  Width = 435
  Height = 165
  BorderIcons = [biSystemMenu]
  Caption = #25346#21333
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object imgBack: TImage [0]
    Left = 0
    Top = 0
    Width = 427
    Height = 131
    Align = alClient
    Stretch = True
  end
  object lbEarnest: TLabel [1]
    Left = 215
    Top = 43
    Width = 24
    Height = 12
    Caption = #23450#37329
    Transparent = True
  end
  object lbCaption: TLabel [2]
    Left = 9
    Top = 7
    Width = 369
    Height = 24
    AutoSize = False
    Caption = #25346#21333#21518#20250#25171#21360#25346#21333#23567#31080#65292#19979#27425#32467#21333#21069#38656#20973#25346#21333#26085#26399#21152#25346#21333#21495#13#10#65288#25110#23567#31080#32534#21495#21518'4'#20301#65289#26469#26597#25214#28304#21333
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel [3]
    Left = 12
    Top = 43
    Width = 36
    Height = 12
    Caption = #25346#21333#21495
    Transparent = True
  end
  object Bevel1: TBevel [4]
    Left = 7
    Top = 76
    Width = 371
    Height = 2
  end
  object tEarnestMoney: TEdit [5]
    Left = 252
    Top = 41
    Width = 122
    Height = 20
    TabOrder = 1
    OnKeyDown = tEarnestMoneyKeyDown
    OnKeyPress = tEarnestMoneyKeyPress
  end
  object btOK: TcxButton [6]
    Left = 236
    Top = 86
    Width = 66
    Height = 23
    Caption = #25346#21333'(&G)'
    Default = True
    TabOrder = 2
    OnClick = btOKClick
    OnKeyDown = btOKKeyDown
    LookAndFeel.Kind = lfOffice11
  end
  object btCancel: TcxButton [7]
    Left = 310
    Top = 86
    Width = 66
    Height = 23
    Caption = #21462#28040'(&C)'
    TabOrder = 3
    OnClick = btCancelClick
    OnKeyDown = btCancelKeyDown
    LookAndFeel.Kind = lfOffice11
  end
  object TeGdbillNo: TEdit [8]
    Left = 49
    Top = 41
    Width = 142
    Height = 20
    TabOrder = 0
    OnKeyDown = TeGdbillNoKeyDown
  end
end
