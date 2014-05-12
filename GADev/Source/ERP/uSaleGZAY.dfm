inherited SaleGZAYFrm: TSaleGZAYFrm
  Caption = #38144#21806#36319#36394#25253#34920
  ClientWidth = 1021
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    Width = 1021
  end
  inherited Panel1: TPanel
    Width = 1021
    inherited Image1: TImage
      Width = 1021
    end
    inherited Image2: TImage
      Left = 948
    end
    inherited Label1: TLabel
      Left = 948
      Width = 65
    end
    object Label2: TLabel [3]
      Left = 6
      Top = 10
      Width = 87
      Height = 13
      AutoSize = False
      Caption = #38144#21806#26085#26399#33539#22260#65306
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 184
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
    object Label5: TLabel [5]
      Left = 406
      Top = 12
      Width = 60
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
    object lb_matinfo: TLabel [6]
      Left = 613
      Top = 9
      Width = 216
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
    object Label4: TLabel [7]
      Left = 293
      Top = 12
      Width = 88
      Height = 13
      AutoSize = False
      Caption = '('#20849#35745'7'#22825')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited btOK: TcxButton
      Left = 855
    end
    object tpBegin: TDateTimePicker
      Left = 89
      Top = 7
      Width = 93
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
      OnCloseUp = tpBeginCloseUp
    end
    object tpEnd: TDateTimePicker
      Left = 199
      Top = 7
      Width = 91
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 2
      OnCloseUp = tpBeginCloseUp
    end
    object bt_material: TcxButtonEdit
      Left = 465
      Top = 6
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = bt_materialPropertiesButtonClick
      Properties.OnChange = bt_materialPropertiesChange
      TabOrder = 3
      Width = 141
    end
  end
end
