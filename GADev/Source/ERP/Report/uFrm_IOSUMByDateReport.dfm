inherited IOSUMByDateReportFrm: TIOSUMByDateReportFrm
  Left = 206
  Top = 107
  Caption = #36827#20986#23384#27719#24635#25253#34920
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxGrid1: TcxGrid
    inherited dbgList: TcxGridDBTableView
      OnCustomDrawCell = dbgListCustomDrawCell
      OnCustomDrawColumnHeader = dbgListCustomDrawColumnHeader
    end
  end
  inherited Panel1: TPanel
    object Label2: TLabel [3]
      Left = 3
      Top = 12
      Width = 52
      Height = 12
      AutoSize = False
      Caption = #24320#22987#26085#26399
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 154
      Top = 12
      Width = 54
      Height = 12
      AutoSize = False
      Caption = #32467#26463#26085#26399
      Transparent = True
    end
    object Label4: TLabel [5]
      Left = 304
      Top = 12
      Width = 51
      Height = 12
      AutoSize = False
      Caption = #21830#21697#32534#21495
      Transparent = True
    end
    object lb_matinfo: TLabel [6]
      Left = 477
      Top = 12
      Width = 211
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
      Width = 94
    end
    object tpEnd: TcxDateEdit
      Left = 207
      Top = 7
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 94
    end
    object txMaterial: TcxButtonEdit
      Left = 358
      Top = 7
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
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
