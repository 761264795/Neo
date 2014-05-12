inherited subsidiary_trace_reportFrm: Tsubsidiary_trace_reportFrm
  Left = 148
  Top = 67
  Caption = #34917#36135#36319#36394#25253#34920
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
      Caption = #34917#36135#26085#26399#33539#22260#65306
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 174
      Top = 11
      Width = 13
      Height = 15
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
      Left = 443
      Top = 11
      Width = 55
      Height = 16
      AutoSize = False
      Caption = #29289#26009#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lb_matinfo: TLabel [6]
      Left = 628
      Top = 8
      Width = 173
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
    object Label4: TLabel [7]
      Left = 275
      Top = 11
      Width = 55
      Height = 12
      AutoSize = False
      Caption = #34917#36135#21333#21495#65306
      Transparent = True
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
    object bt_material: TcxButtonEdit
      Left = 504
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
      Width = 101
    end
    object ed_SubBill: TcxTextEdit
      Left = 329
      Top = 7
      TabOrder = 4
      Width = 110
    end
  end
end
