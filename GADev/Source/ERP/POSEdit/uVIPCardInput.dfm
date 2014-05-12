inherited FrmVIPCardInput: TFrmVIPCardInput
  Left = 343
  Top = 234
  Width = 526
  Height = 133
  BorderIcons = [biSystemMenu]
  Caption = #36755#20837#20250#21592#21345#21495#25110#25163#26426#21495
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Image1: TImage [0]
    Left = 0
    Top = 0
    Width = 518
    Height = 99
    Align = alClient
    Stretch = True
  end
  object lbl_Code: TLabel [1]
    Left = 6
    Top = 15
    Width = 126
    Height = 25
    AutoSize = False
    Caption = #20250#21592#21345#25110#25163#26426#21495'  '
    Font.Charset = GB2312_CHARSET
    Font.Color = clNavy
    Font.Height = -17
    Font.Name = #24494#36719#38597#40657
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel [2]
    Left = 7
    Top = 53
    Width = 505
    Height = 2
    Anchors = [akLeft, akRight]
  end
  object Label1: TLabel [3]
    Left = 15
    Top = 66
    Width = 156
    Height = 12
    AutoSize = False
    Caption = 'ESC'#38190#36864#20986'...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object edt_VIPCardCode: TcxButtonEdit [4]
    Left = 134
    Top = 10
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
        Visible = False
      end>
    Properties.MaxLength = 0
    Style.Font.Charset = GB2312_CHARSET
    Style.Font.Color = clGreen
    Style.Font.Height = -17
    Style.Font.Name = #24494#36719#38597#40657
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.Kind = lfOffice11
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 0
    OnKeyDown = edt_VIPCardCodeKeyDown
    Width = 371
  end
  object btOK: TcxButton [5]
    Left = 429
    Top = 66
    Width = 74
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #30830#23450'(&Y)'
    Default = True
    TabOrder = 1
    OnClick = btOKClick
    LookAndFeel.Kind = lfOffice11
  end
end
