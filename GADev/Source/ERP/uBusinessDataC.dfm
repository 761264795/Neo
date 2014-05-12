inherited BusinessDcFrm: TBusinessDcFrm
  Left = 187
  Top = 124
  Caption = #21830#19994#20449#24687#26597#35810
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    inherited dbgList: TcxGridDBTableView
      OnCellDblClick = dbgListCellDblClick
    end
  end
  inherited Panel1: TPanel
    object Label2: TLabel [3]
      Left = 6
      Top = 10
      Width = 87
      Height = 13
      AutoSize = False
      Caption = #33829#19994#26085#26399#33539#22260#65306
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
    object tpBegin: TDateTimePicker
      Left = 89
      Top = 7
      Width = 93
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
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
    end
  end
  inherited PopupMenu1: TPopupMenu
    object delRow: TMenuItem
      Caption = #21024#38500#34892
      OnClick = delRowClick
    end
    object delAll: TMenuItem
      Caption = #20840#37096#21024#38500
      OnClick = delAllClick
    end
  end
end
