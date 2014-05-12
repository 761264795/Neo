inherited VIPPswdupdate: TVIPPswdupdate
  Width = 350
  Height = 277
  BorderIcons = [biSystemMenu]
  Caption = #20250#21592#23494#30721#20462#25913
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 12
  object bvl1: TBevel [0]
    Left = 4
    Top = 78
    Width = 328
    Height = 109
  end
  object lbl1: TLabel [1]
    Left = 23
    Top = 18
    Width = 54
    Height = 12
    Alignment = taRightJustify
    Caption = #20250#21592#21345#21495'&U'
    Transparent = True
  end
  object lbl2: TLabel [2]
    Left = 29
    Top = 97
    Width = 48
    Height = 12
    Alignment = taRightJustify
    Caption = #26087#23494#30721'&O'
    FocusControl = edtOldPWD
    Transparent = True
  end
  object lbl3: TLabel [3]
    Left = 29
    Top = 125
    Width = 48
    Height = 12
    Alignment = taRightJustify
    Caption = #26032#23494#30721'&P'
    FocusControl = edtNewPWD
    Transparent = True
  end
  object lbl4: TLabel [4]
    Left = 17
    Top = 153
    Width = 60
    Height = 12
    Alignment = taRightJustify
    Caption = #23494#30721#30830#35748'&D'
    FocusControl = edtNewPWD2
    Transparent = True
  end
  object Label1: TLabel [5]
    Left = 23
    Top = 46
    Width = 54
    Height = 12
    Alignment = taRightJustify
    Caption = #20250#21592#21517#31216'&N'
    FocusControl = edtUserName
    Transparent = True
  end
  object edtOldPWD: TEdit [6]
    Left = 82
    Top = 93
    Width = 233
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object edtNewPWD: TEdit [7]
    Left = 82
    Top = 121
    Width = 233
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object edtNewPWD2: TEdit [8]
    Left = 82
    Top = 149
    Width = 233
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object edtUserName: TEdit [9]
    Left = 82
    Top = 42
    Width = 233
    Height = 21
    ParentColor = True
    ReadOnly = True
    TabOrder = 1
  end
  object edt_vipNumber: TEdit [10]
    Left = 81
    Top = 13
    Width = 235
    Height = 21
    TabOrder = 0
    OnKeyUp = edt_vipNumberKeyUp
  end
  object Button1: TButton [11]
    Left = 160
    Top = 200
    Width = 75
    Height = 25
    Caption = #30830#35748'(&Y)'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton [12]
    Left = 245
    Top = 200
    Width = 75
    Height = 25
    Caption = #21462#28040'(&E)'
    TabOrder = 6
    OnClick = Button2Click
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 48
    Top = 192
  end
end
