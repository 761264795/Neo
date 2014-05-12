inherited InputVipPswdFrm: TInputVipPswdFrm
  Left = 344
  Top = 387
  Width = 417
  Height = 119
  BorderIcons = [biSystemMenu]
  Caption = #35831#36755#20837#20250#21592#21345#23494#30721'...'
  Color = clYellow
  KeyPreview = False
  PixelsPerInch = 96
  TextHeight = 12
  object Image1: TImage [0]
    Left = 0
    Top = 0
    Width = 409
    Height = 85
    Align = alClient
    Stretch = True
  end
  object Label1: TLabel [1]
    Left = 20
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
  object edtPWD: TEdit [2]
    Left = 18
    Top = 21
    Width = 375
    Height = 35
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    OnKeyDown = edtPWDKeyDown
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 120
    Top = 168
  end
end
