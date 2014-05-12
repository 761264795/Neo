inherited DayBalanceFrm: TDayBalanceFrm
  Left = 209
  Top = 60
  Caption = #26085#32467#26597#35810#25253#34920
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    object Label2: TLabel [3]
      Left = 6
      Top = 11
      Width = 56
      Height = 12
      AutoSize = False
      Caption = #26085#32467#26085#26399#65306
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 150
      Top = 11
      Width = 12
      Height = 12
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
    inherited btOK: TcxButton
      Font.Name = #23435#20307
    end
    object tpBegin: TDateTimePicker
      Left = 62
      Top = 6
      Width = 86
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object tpEnd: TDateTimePicker
      Left = 163
      Top = 6
      Width = 84
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 2
    end
  end
end
