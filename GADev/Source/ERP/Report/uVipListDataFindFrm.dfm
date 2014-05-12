inherited VipListDataFindFrm: TVipListDataFindFrm
  Left = 226
  Top = 230
  Caption = #20250#21592#27969#27700#26597#35810
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxGrid1: TcxGrid
    Top = 49
    Height = 536
  end
  inherited Panel1: TPanel
    Height = 49
    inherited Image1: TImage
      Height = 49
    end
    inherited Image2: TImage
      Left = 887
      Top = 19
    end
    inherited Label1: TLabel
      Left = 872
      Top = 21
    end
    object lblBegin: TLabel [3]
      Left = 6
      Top = 7
      Width = 219
      Height = 12
      AutoSize = False
      Caption = #20250#21592#21345#21495'/'#25163#26426#21495#30721'/'#20250#21592#22995#21517
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lbl_yo: TLabel [4]
      Left = 431
      Top = 13
      Width = 146
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl_LJ: TLabel [5]
      Left = 430
      Top = 31
      Width = 224
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited btOK: TcxButton
      Left = 782
      Top = 13
    end
    object cxGroupBox1: TcxGroupBox
      Left = 241
      Top = 7
      Caption = #26597#35810#31867#22411
      TabOrder = 1
      Transparent = True
      Height = 37
      Width = 185
      object rb_JF: TcxRadioButton
        Left = 16
        Top = 14
        Width = 73
        Height = 17
        Caption = #31215#20998#27969#27700
        Checked = True
        TabOrder = 0
        TabStop = True
        Transparent = True
      end
      object rb_CZ: TcxRadioButton
        Left = 104
        Top = 14
        Width = 73
        Height = 17
        Caption = #20648#20540#27969#27700
        TabOrder = 1
        Transparent = True
      end
    end
    object cxStyle: TcxTextEdit
      Left = 5
      Top = 24
      ParentFont = False
      Style.Font.Charset = GB2312_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 2
      OnKeyDown = cxStyleKeyDown
      Width = 228
    end
  end
  inherited PopupMenu1: TPopupMenu
    object N1: TMenuItem [2]
      Caption = #25171#24320#28304#21333'...'
      ShortCut = 121
      OnClick = N1Click
    end
  end
end
