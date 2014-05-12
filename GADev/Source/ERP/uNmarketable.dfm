inherited UnmarketableFrm: TUnmarketableFrm
  Left = -21
  Top = 57
  Caption = #28382#38144#21830#21697#26597#35810
  ClientHeight = 613
  ClientWidth = 1028
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    Top = 57
    Width = 1028
    Height = 556
  end
  inherited Panel1: TPanel
    Width = 1028
    Height = 57
    inherited Image1: TImage
      Width = 1028
      Height = 57
    end
    inherited Image2: TImage
      Left = 947
    end
    inherited Label1: TLabel
      Left = 948
      Width = 64
    end
    object Label2: TLabel [3]
      Left = 6
      Top = 10
      Width = 87
      Height = 13
      AutoSize = False
      Caption = #28382#38144#26085#26399#33539#22260#65306
      Transparent = True
    end
    object Label5: TLabel [4]
      Left = 446
      Top = 12
      Width = 67
      Height = 13
      AutoSize = False
      Caption = #29289#26009#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lb_matinfo: TLabel [5]
      Left = 602
      Top = 9
      Width = 114
      Height = 15
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel [6]
      Left = 189
      Top = 12
      Width = 14
      Height = 13
      AutoSize = False
      Caption = #33267
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel [7]
      Left = 296
      Top = 12
      Width = 60
      Height = 13
      AutoSize = False
      Caption = '('#28382#38144'7'#22825')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel [8]
      Left = 6
      Top = 34
      Width = 851
      Height = 13
      AutoSize = False
      Caption = #25253#34920#35828#26126#65306#22312#24403#21069#30340#24211#23384#21830#21697#20013#65292#22914#26524#19978#36848#26085#26399#33539#22260#20869#27809#26377#20135#29983#38144#21806#23601#26174#31034#20026#28382#38144#65307'  '#21344#27604#32479#35745#22522#25968#65306#21344#27604#32479#35745#20998#31867#26102#20351#29992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited btOK: TcxButton
      Left = 855
    end
    object bt_material: TcxButtonEdit
      Left = 508
      Top = 6
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = bt_materialPropertiesButtonClick
      Properties.OnChange = bt_materialPropertiesChange
      TabOrder = 1
      Width = 96
    end
    object tpBegin: TDateTimePicker
      Left = 94
      Top = 7
      Width = 93
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 2
      OnCloseUp = tpBeginCloseUp
    end
    object tpEnd: TDateTimePicker
      Left = 204
      Top = 7
      Width = 91
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 3
      OnCloseUp = tpEndCloseUp
    end
    object cxCheckBox1: TcxCheckBox
      Left = 355
      Top = 9
      Caption = #24211#23384#22823#20110#38646
      State = cbsChecked
      TabOrder = 4
      Transparent = True
      Width = 87
    end
  end
end
