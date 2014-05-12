inherited VipAyReportFrm: TVipAyReportFrm
  Left = 183
  Top = 107
  Caption = #20250#21592#28040#36153#20998#26512#25253#34920
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    object Label2: TLabel [3]
      Left = 6
      Top = 9
      Width = 80
      Height = 12
      AutoSize = False
      Caption = #28040#36153#26085#26399#33539#22260#65306
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 173
      Top = 11
      Width = 13
      Height = 17
      AutoSize = False
      Caption = #33267
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel [5]
      Left = 284
      Top = 11
      Width = 58
      Height = 17
      AutoSize = False
      Caption = #20250#21592#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lb_Vip_name: TLabel [6]
      Left = 467
      Top = 8
      Width = 197
      Height = 14
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited btOK: TcxButton
      Font.Name = #23435#20307
    end
    object tpBegin: TDateTimePicker
      Left = 87
      Top = 6
      Width = 86
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object tpEnd: TDateTimePicker
      Left = 188
      Top = 6
      Width = 84
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 2
    end
    object bt_Vip_id: TcxButtonEdit
      Left = 342
      Top = 6
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.ReadOnly = False
      Properties.OnButtonClick = bt_Vip_idPropertiesButtonClick
      TabOrder = 3
      Width = 121
    end
  end
end
