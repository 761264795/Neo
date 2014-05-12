inherited BatchAddOrderMaterialFrm: TBatchAddOrderMaterialFrm
  Left = 215
  Top = 121
  Width = 979
  Height = 606
  Caption = #25209#37327#22686#21152#35746#21333#29289#26009
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 963
    Height = 121
    Align = alTop
    Color = 16511980
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = #21333#25454#26597#25214#26465#20214
      TabOrder = 0
      Height = 49
      Width = 961
      object cxLabel3: TcxLabel
        Left = 18
        Top = 20
        AutoSize = False
        Caption = #24405#20837#26041#24335
        Height = 16
        Width = 54
      end
      object txt_InputWay: TcxComboBox
        Tag = 100
        Left = 79
        Top = 17
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #25955#30721
          #37197#30721)
        Properties.OnCloseUp = cxComboBox1PropertiesCloseUp
        TabOrder = 1
        Text = #25955#30721
        Width = 140
      end
      object cxLabel5: TcxLabel
        Left = 223
        Top = 20
        AutoSize = False
        Caption = #19994#21153#26085#26399
        Height = 16
        Width = 54
      end
      object BeginDate: TcxDateEdit
        Tag = 100
        Left = 278
        Top = 17
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 3
        Width = 140
      end
      object cxLabel6: TcxLabel
        Left = 441
        Top = 20
        AutoSize = False
        Caption = #33267
        Height = 16
        Width = 17
      end
      object EndDate: TcxDateEdit
        Tag = 100
        Left = 478
        Top = 18
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 5
        Width = 140
      end
      object btn_Query: TcxButton
        Left = 706
        Top = 16
        Width = 75
        Height = 25
        Caption = #26597#35810'(&F)'
        TabOrder = 6
        OnClick = btn_QueryClick
        LookAndFeel.Kind = lfOffice11
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 50
      Align = alClient
      Caption = #22686#21152#29289#26009#20449#24687
      TabOrder = 1
      Height = 70
      Width = 961
      object cxLabel1: TcxLabel
        Left = 18
        Top = 22
        AutoSize = False
        Caption = #29289#26009
        Height = 16
        Width = 54
      end
      object txt_MaterialNumber: TcxButtonEdit
        Tag = 100
        Left = 79
        Top = 19
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = True
        Properties.OnButtonClick = txt_MaterialNumberPropertiesButtonClick
        TabOrder = 1
        OnKeyPress = txt_MaterialNumberKeyPress
        Width = 140
      end
      object cxLabel2: TcxLabel
        Left = 18
        Top = 46
        AutoSize = False
        Caption = #39068#33394
        Height = 16
        Width = 54
      end
      object txt_ColorNumber: TcxButtonEdit
        Left = 79
        Top = 43
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = True
        Properties.OnButtonClick = txt_ColorNumberPropertiesButtonClick
        TabOrder = 3
        OnKeyPress = txt_ColorNumberKeyPress
        Width = 140
      end
      object cxLabel4: TcxLabel
        Left = 434
        Top = 20
        AutoSize = False
        Caption = #23610#30721
        Height = 16
        Width = 39
      end
      object cxLabel7: TcxLabel
        Left = 434
        Top = 44
        AutoSize = False
        Caption = #20869#38271
        Height = 16
        Width = 41
      end
      object txt_SizeOrPack: TcxButtonEdit
        Left = 478
        Top = 18
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = True
        Properties.OnButtonClick = txt_SizeOrPackPropertiesButtonClick
        TabOrder = 6
        OnKeyPress = txt_SizeOrPackKeyPress
        Width = 140
      end
      object txt_Cup: TcxButtonEdit
        Left = 478
        Top = 42
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = True
        Properties.OnButtonClick = txt_CupPropertiesButtonClick
        TabOrder = 7
        OnKeyPress = txt_CupKeyPress
        Width = 140
      end
      object txt_MaterialName: TcxTextEdit
        Left = 216
        Top = 18
        Properties.ReadOnly = True
        Style.Color = clMenuBar
        TabOrder = 8
        Width = 202
      end
      object txt_ColorName: TcxTextEdit
        Left = 216
        Top = 42
        Properties.ReadOnly = True
        Style.Color = clMenuBar
        TabOrder = 9
        Width = 202
      end
      object lb_AlterQty: TcxLabel
        Left = 634
        Top = 44
        AutoSize = False
        Caption = #25968#37327
        Height = 16
        Width = 37
      end
      object cxCalcEdit1: TcxCalcEdit
        Left = 676
        Top = 42
        EditValue = 1.000000000000000000
        TabOrder = 11
        Width = 121
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 517
    Width = 963
    Height = 51
    Align = alBottom
    Color = 16511980
    TabOrder = 1
    DesignSize = (
      963
      51)
    object btn_Alter: TcxButton
      Left = 773
      Top = 15
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #24320#22987#22686#21152'(&D)'
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
    end
    object btn_Exit: TcxButton
      Left = 872
      Top = 15
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #36864#20986'(&E)'
      TabOrder = 1
      OnClick = btn_ExitClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxButton3: TcxButton
      Left = 3
      Top = 1
      Width = 44
      Height = 23
      Caption = #20840#36873
      TabOrder = 2
      OnClick = cxButton3Click
      LookAndFeel.Kind = lfOffice11
    end
    object cxButton4: TcxButton
      Left = 49
      Top = 1
      Width = 44
      Height = 23
      Caption = #21453#36873
      TabOrder = 3
      OnClick = cxButton4Click
      LookAndFeel.Kind = lfOffice11
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 121
    Width = 963
    Height = 396
    Align = alClient
    Color = 16511980
    TabOrder = 2
    object cxGrid3: TcxGrid
      Left = 1
      Top = 1
      Width = 961
      Height = 394
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object cxSleectBill: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsBilllist
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            Position = spFooter
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'Selected'
            Column = cxSleectBillSelected
          end
          item
            Kind = skSum
            FieldName = 'Fqty'
            Column = cxSleectBillFqty
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        object cxSleectBillSelected: TcxGridDBColumn
          DataBinding.FieldName = 'Selected'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
        end
        object cxSleectBillBillFID: TcxGridDBColumn
          DataBinding.FieldName = 'BillFID'
          Visible = False
          Options.Editing = False
        end
        object cxSleectBillBillNumber: TcxGridDBColumn
          DataBinding.FieldName = 'BillNumber'
          Options.Editing = False
          Width = 125
        end
        object cxSleectBillcustName: TcxGridDBColumn
          DataBinding.FieldName = 'custName'
          Options.Editing = False
          Width = 127
        end
        object cxSleectBillWarehouseName: TcxGridDBColumn
          DataBinding.FieldName = 'WarehouseName'
          Options.Editing = False
          Width = 114
        end
        object cxSleectBillfbizdate: TcxGridDBColumn
          DataBinding.FieldName = 'fbizdate'
          Options.Editing = False
          Width = 88
        end
        object cxSleectBillFOrderType: TcxGridDBColumn
          DataBinding.FieldName = 'FOrderType'
          Options.Editing = False
          Width = 85
        end
        object cxSleectBillFPriceType: TcxGridDBColumn
          DataBinding.FieldName = 'FPriceType'
          Options.Editing = False
          Width = 80
        end
        object cxSleectBillFqty: TcxGridDBColumn
          DataBinding.FieldName = 'Fqty'
          Options.Editing = False
          Width = 83
        end
        object cxSleectBillfdescription: TcxGridDBColumn
          DataBinding.FieldName = 'fdescription'
          Options.Editing = False
          Width = 206
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxSleectBill
      end
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 496
    Top = 376
  end
  object cdsBilllist: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 278
    object cdsBilllistSelected: TBooleanField
      DisplayLabel = #36873#25321
      FieldName = 'Selected'
    end
    object cdsBilllistBillFID: TStringField
      FieldName = 'BillFID'
      Size = 80
    end
    object cdsBilllistBillNumber: TStringField
      DisplayLabel = #21333#25454#32534#21495
      FieldName = 'BillNumber'
      Size = 80
    end
    object cdsBilllistfbizdate: TStringField
      DisplayLabel = #19994#21153#26085#26399
      FieldName = 'fbizdate'
      Size = 60
    end
    object cdsBilllistFOrderType: TStringField
      DisplayLabel = #35746#21333#31867#22411
      FieldName = 'FOrderType'
      Size = 80
    end
    object cdsBilllistFPriceType: TStringField
      DisplayLabel = #20215#26684#31867#22411
      FieldName = 'FPriceType'
      Size = 80
    end
    object cdsBilllistFqty: TIntegerField
      DisplayLabel = #35746#21333#24635#25968#37327
      FieldName = 'Fqty'
    end
    object cdsBilllistfdescription: TStringField
      DisplayLabel = #35746#21333#22791#27880
      FieldName = 'fdescription'
      Size = 250
    end
    object cdsBilllistcustName: TStringField
      DisplayLabel = #35746#36135#23458#25143
      FieldName = 'custName'
      Size = 120
    end
    object cdsBilllistWarehouseName: TStringField
      DisplayLabel = #25910#36135#20179
      FieldName = 'WarehouseName'
      Size = 120
    end
  end
  object dsBilllist: TDataSource
    DataSet = cdsBilllist
    Left = 104
    Top = 278
  end
end
