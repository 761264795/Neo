inherited transf_trace_reportFrm: Ttransf_trace_reportFrm
  Left = 111
  Top = 72
  Caption = #35843#25320#36319#36394#25253#34920
  ClientHeight = 561
  ClientWidth = 949
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxGrid1: TcxGrid
    Width = 949
    Height = 527
  end
  inherited Panel1: TPanel
    Width = 949
    inherited Image1: TImage
      Width = 949
    end
    inherited Image2: TImage
      Left = 885
      Top = 9
    end
    inherited Label1: TLabel
      Left = 886
      Top = 11
      Width = 60
    end
    object Label2: TLabel [3]
      Left = 4
      Top = 10
      Width = 78
      Height = 16
      AutoSize = False
      Caption = #35843#25320#20986#24211#26085#26399
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 170
      Top = 9
      Width = 13
      Height = 17
      AutoSize = False
      Caption = #33267
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel [5]
      Left = 457
      Top = 10
      Width = 57
      Height = 16
      AutoSize = False
      Caption = #29289#26009#32534#21495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lb_matinfo: TLabel [6]
      Left = 605
      Top = 9
      Width = 97
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
      Top = 10
      Width = 60
      Height = 16
      AutoSize = False
      Caption = #35843#25320#20986#24211#21333
      Transparent = True
    end
    inherited btOK: TcxButton
      Left = 800
      Font.Name = #23435#20307
    end
    object tpBegin: TDateTimePicker
      Left = 82
      Top = 6
      Width = 86
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object tpEnd: TDateTimePicker
      Left = 184
      Top = 6
      Width = 84
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 2
    end
    object bt_material: TcxButtonEdit
      Left = 512
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
      Width = 93
    end
    object ed_outBill: TcxTextEdit
      Left = 340
      Top = 6
      TabOrder = 4
      Width = 112
    end
  end
end
