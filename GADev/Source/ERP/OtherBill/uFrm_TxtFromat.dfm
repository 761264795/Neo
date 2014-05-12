inherited FrmTxtFromatSet: TFrmTxtFromatSet
  Left = 435
  Top = 277
  Width = 608
  Height = 150
  Caption = 'TXT'#23548#20837#26639#20301#35774#32622
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 600
    Height = 116
    Align = alClient
    Stretch = True
  end
  object Label1: TLabel
    Left = 8
    Top = 33
    Width = 97
    Height = 13
    AutoSize = False
    Caption = #26465#24418#30721#26639#20301#21517#31216
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 203
    Top = 33
    Width = 81
    Height = 13
    AutoSize = False
    Caption = #25968#37327#26639#20301#21517#31216
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 8
    Top = 9
    Width = 537
    Height = 13
    AutoSize = False
    Caption = #35828#26126#65306#35774#32622'txt'#25991#26723#23548#20837#26102#30340#26639#20301#21517#31216
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 8
    Top = 88
    Width = 60
    Height = 13
    Caption = #26465#30721#26679#20363#65306
    Transparent = True
  end
  object teBarCodeName: TcxTextEdit
    Left = 106
    Top = 30
    ParentFont = False
    Style.Font.Charset = GB2312_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -12
    Style.Font.Name = #23435#20307
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfOffice11
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 0
    Text = #26465#24418#30721
    Width = 66
  end
  object tefAmountName: TcxTextEdit
    Left = 287
    Top = 30
    ParentFont = False
    Style.Font.Charset = GB2312_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -12
    Style.Font.Name = #23435#20307
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfOffice11
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 1
    Text = #25968#37327
    Width = 58
  end
  object cxButton1: TcxButton
    Left = 395
    Top = 27
    Width = 76
    Height = 27
    Anchors = [akTop, akRight]
    Caption = #30830#23450
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = cxButton1Click
    LookAndFeel.Kind = lfOffice11
  end
  object cxButton2: TcxButton
    Left = 483
    Top = 27
    Width = 72
    Height = 27
    Anchors = [akTop, akRight]
    Caption = #36864#20986'(&C)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = cxButton2Click
    LookAndFeel.Kind = lfOffice11
  end
  object Memo1: TMemo
    Left = 96
    Top = 72
    Width = 225
    Height = 34
    BorderStyle = bsNone
    Lines.Strings = (
      #26465#24418#30721','#25968#37327
      '"E13528B107136",2')
    ReadOnly = True
    TabOrder = 4
  end
end
