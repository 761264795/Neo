inherited Frm_CheckAffirm: TFrm_CheckAffirm
  Left = 296
  Top = 188
  Width = 659
  Height = 407
  Caption = #30830#35748#30424#28857
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 643
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = 16053228
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 10
      Width = 82
      Height = 12
      AutoSize = False
      Caption = #36873#25321#30424#28857#26085#26399
      Transparent = True
    end
    object Label2: TLabel
      Left = 11
      Top = 36
      Width = 224
      Height = 12
      AutoSize = False
      Caption = #30456#21516#19994#21153#26085#26399#30340#30424#28857#21333#21015#34920
      Transparent = True
    end
    object cbCheckDate: TcxComboBox
      Left = 100
      Top = 5
      Properties.DropDownListStyle = lsFixedList
      Properties.ReadOnly = False
      TabOrder = 0
      Width = 111
    end
    object btFind: TcxButton
      Left = 434
      Top = 27
      Width = 85
      Height = 23
      Caption = #26597#30475#30424#28857#21333#25454
      TabOrder = 1
      OnClick = btFindClick
      LookAndFeel.Kind = lfOffice11
    end
    object btOk: TcxButton
      Left = 549
      Top = 27
      Width = 89
      Height = 23
      Caption = #30830#23450#30424#28857
      TabOrder = 2
      OnClick = btOkClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxbtnWarehouse: TcxButtonEdit
      Left = 290
      Top = 5
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxbtnWarehousePropertiesButtonClick
      TabOrder = 3
      Width = 231
    end
    object cxLabel1: TcxLabel
      Left = 235
      Top = 10
      Caption = #30424#28857#20179#24211
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 55
    Width = 643
    Height = 276
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Image3: TImage
      Left = 0
      Top = 0
      Width = 643
      Height = 276
      Align = alClient
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 643
      Height = 276
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object dbgList: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsCheckList
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.DataRowSizing = True
        OptionsData.Appending = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
      end
      object dbgLevel1: TcxGridLevel
        Caption = #31446#25490
        GridView = dbgList
      end
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 331
    Width = 643
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    Color = 16053228
    TabOrder = 2
    DesignSize = (
      643
      38)
    object Label3: TLabel
      Left = 10
      Top = 13
      Width = 88
      Height = 12
      AutoSize = False
      Caption = #21462#28040#30424#28857#26085#26399
      Transparent = True
    end
    object btCancel: TcxButton
      Left = 527
      Top = 8
      Width = 66
      Height = 23
      Anchors = [akTop, akRight]
      Caption = #36864#20986
      TabOrder = 0
      OnClick = btCancelClick
      LookAndFeel.Kind = lfOffice11
    end
    object ctCancelCheck: TcxButton
      Left = 207
      Top = 8
      Width = 72
      Height = 23
      Anchors = [akLeft, akBottom]
      Caption = #21462#28040#30424#28857
      TabOrder = 1
      OnClick = ctCancelCheckClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxUnCheckDate: TcxDateEdit
      Left = 93
      Top = 10
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 103
    end
  end
  object cdsCheckList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 113
  end
  object dsCheckList: TDataSource
    DataSet = cdsCheckList
    Left = 232
    Top = 113
  end
  object cdsCheckDate: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 81
  end
  object cdsCheckBill: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 513
    Top = 46
  end
end
