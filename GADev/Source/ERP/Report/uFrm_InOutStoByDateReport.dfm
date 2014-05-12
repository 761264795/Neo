inherited InOutStoQtyByDateReportFrm: TInOutStoQtyByDateReportFrm
  Left = 206
  Top = 107
  Caption = #36827#20986#23384#25353#26085#26399#27719#24635#25253#34920
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxGrid1: TcxGrid
    Hint = 'F10'#25110#21452#20987#21487#20197#26597#30475#26126#32454#21333#25454'...'
    inherited dbgList: TcxGridDBTableView
      OnCellDblClick = dbgListCellDblClick
      OnCustomDrawCell = dbgListCustomDrawCell
      OnCustomDrawColumnHeader = dbgListCustomDrawColumnHeader
    end
  end
  inherited Panel1: TPanel
    object Label2: TLabel [3]
      Left = 6
      Top = 12
      Width = 50
      Height = 12
      AutoSize = False
      Caption = #24320#22987#26085#26399
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 156
      Top = 12
      Width = 52
      Height = 12
      AutoSize = False
      Caption = #32467#26463#26085#26399
      Transparent = True
    end
    object Label4: TLabel [5]
      Left = 311
      Top = 12
      Width = 51
      Height = 12
      AutoSize = False
      Caption = #21830#21697#32534#21495
      Transparent = True
    end
    object lb_matinfo: TLabel [6]
      Left = 482
      Top = 12
      Width = 80
      Height = 12
      AutoSize = False
      Caption = #21830#21697#21517#31216
      Transparent = True
    end
    inherited btOK: TcxButton
      Font.Name = #23435#20307
    end
    object tpBegin: TcxDateEdit
      Left = 57
      Top = 7
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 97
    end
    object tpEnd: TcxDateEdit
      Left = 209
      Top = 7
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 97
    end
    object txMaterial: TcxButtonEdit
      Left = 363
      Top = 7
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txMaterialPropertiesButtonClick
      Properties.OnChange = txMaterialPropertiesChange
      TabOrder = 3
      OnExit = txMaterialExit
      Width = 112
    end
  end
  inherited dsList: TDataSource
    Left = 152
    Top = 121
  end
  inherited PopupMenu1: TPopupMenu
    object seeBillList: TMenuItem [2]
      Caption = #26597#30475#26126#32454#21333#25454#20449#24687'...'
      ShortCut = 121
      OnClick = seeBillListClick
    end
  end
  inherited cdsList: TADODataSet
    LockType = ltBatchOptimistic
  end
  object cdsList1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 120
  end
  object dsList1: TDataSource
    DataSet = cdsList1
    Left = 288
    Top = 184
  end
end
