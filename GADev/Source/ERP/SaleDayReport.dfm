inherited SaleDayReportFrm: TSaleDayReportFrm
  Left = 232
  Top = 145
  Caption = #38144#21806#26085#25253#34920
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxGrid1: TcxGrid
    inherited dbgList: TcxGridDBTableView
      OnCellDblClick = dbgListCellDblClick
    end
  end
  inherited Panel1: TPanel
    object Label2: TLabel [1]
      Left = 6
      Top = 11
      Width = 60
      Height = 16
      AutoSize = False
      Caption = #19994#21153#26085#26399#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel [2]
      Left = 214
      Top = 10
      Width = 14
      Height = 12
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
    object lb_Name: TLabel [5]
      Left = 384
      Top = 10
      Width = 77
      Height = 12
      AutoSize = False
      Caption = #23454#25910#37329#39069#21512#35745#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lb_paymentmoney: TLabel [6]
      Left = 464
      Top = 10
      Width = 128
      Height = 12
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    inherited btOK: TcxButton
      Font.Name = #23435#20307
    end
    object tpBegin: TDateTimePicker
      Left = 67
      Top = 6
      Width = 143
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object tpEnd: TDateTimePicker
      Left = 228
      Top = 6
      Width = 143
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 2
    end
  end
  inherited PopupMenu1: TPopupMenu
    object seeSrcBill: TMenuItem [2]
      Caption = #26597#30475#28304#21333'...'
      ShortCut = 121
      OnClick = seeSrcBillClick
    end
  end
end
