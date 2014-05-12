inherited BillDistributionFrm: TBillDistributionFrm
  Left = 187
  Top = 91
  Caption = #25353#21333#37197#36135
  ClientHeight = 525
  ClientWidth = 1059
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 484
    Width = 1059
    Height = 41
    Align = alBottom
    Color = 16511980
    TabOrder = 0
    DesignSize = (
      1059
      41)
    object Label11: TLabel
      Left = 545
      Top = 15
      Width = 100
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #29983#25104#37197#36135#26126#32454#26041#24335
      FocusControl = txt_billMaterList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lb_materInfo: TLabel
      Left = 6
      Top = 9
      Width = 315
      Height = 13
      AutoSize = False
      Caption = 'F10003:'#24320#34923#21355#34915
      FocusControl = txt_billMaterList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btUP: TcxButton
      Left = 762
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #19978#19968#27493'(&U)'
      TabOrder = 0
      OnClick = btUPClick
      LookAndFeel.Kind = lfOffice11
    end
    object btDown: TcxButton
      Left = 850
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #19979#19968#27493'(&D)'
      TabOrder = 1
      OnClick = btDownClick
      LookAndFeel.Kind = lfOffice11
    end
    object btn_CreateBill: TcxButton
      Left = 938
      Top = 8
      Width = 98
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #29983#25104#37197#36135#21333'(&C)'
      TabOrder = 2
      OnClick = btn_CreateBillClick
      LookAndFeel.Kind = lfOffice11
    end
    object cb_DownDataType: TcxComboBox
      Left = 648
      Top = 12
      Anchors = [akTop, akRight]
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #26410#37197#25968#37327
        #31354#25968#37327
        #21487#29992#24211#23384#25968
        #22312#24211#25968#37327)
      TabOrder = 3
      Text = #26410#37197#25968#37327
      Visible = False
      Width = 97
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1059
    Height = 484
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 1
    object mPage: TcxPageControl
      Left = 0
      Top = 0
      Width = 1059
      Height = 484
      ActivePage = cxTabSheet1
      Align = alClient
      Style = 10
      TabOrder = 0
      OnChange = mPageChange
      ClientRectBottom = 484
      ClientRectRight = 1059
      ClientRectTop = 18
      object cxTabSheet1: TcxTabSheet
        Caption = '1-'#26465#20214#35774#32622
        ImageIndex = 0
        object Splitter1: TSplitter
          Left = 0
          Top = 129
          Width = 1059
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1059
          Height = 129
          Align = alTop
          Color = 16511980
          TabOrder = 0
          object gb_Querycondition: TcxGroupBox
            Left = 1
            Top = 1
            Align = alClient
            Caption = #26597#25214#35746#21333#26465#20214
            TabOrder = 0
            Height = 87
            Width = 1057
            object Label5: TLabel
              Left = 232
              Top = 44
              Width = 53
              Height = 12
              AutoSize = False
              Caption = #25910#36135#20179#24211
            end
            object Label4: TLabel
              Left = 679
              Top = 21
              Width = 19
              Height = 12
              AutoSize = False
              Caption = #21040
            end
            object Label3: TLabel
              Left = 490
              Top = 21
              Width = 53
              Height = 12
              AutoSize = False
              Caption = #19994#21153#26085#26399
            end
            object Label2: TLabel
              Left = 232
              Top = 21
              Width = 53
              Height = 12
              AutoSize = False
              Caption = #35746#36135#23458#25143
            end
            object Label1: TLabel
              Left = 8
              Top = 21
              Width = 53
              Height = 12
              AutoSize = False
              Caption = #38144#21806#32452#32455
            end
            object Label8: TLabel
              Left = 490
              Top = 44
              Width = 53
              Height = 12
              AutoSize = False
              Caption = #35746#21333#32534#21495
            end
            object txt_Years: TcxButtonEdit
              Left = 285
              Top = 61
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = txt_YearsPropertiesButtonClick
              TabOrder = 0
              OnKeyPress = txt_YearsKeyPress
              Width = 197
            end
            object txt_warehouse: TcxButtonEdit
              Tag = 100
              Left = 285
              Top = 39
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = txt_warehousePropertiesButtonClick
              TabOrder = 1
              OnKeyPress = txt_warehouseKeyPress
              Width = 197
            end
            object txt_InputWay: TcxLookupComboBox
              Tag = 100
              Left = 63
              Top = 39
              Properties.KeyFieldNames = 'FNUMBER'
              Properties.ListColumns = <
                item
                  FieldName = 'fName_l2'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsInputWay
              Properties.OnChange = txt_InputWayPropertiesChange
              TabOrder = 2
              Width = 145
            end
            object txt_Customer: TcxButtonEdit
              Tag = 100
              Left = 285
              Top = 17
              Hint = #35746#36135#23458#25143
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = txt_CustomerPropertiesButtonClick
              TabOrder = 3
              OnKeyPress = txt_CustomerKeyPress
              Width = 197
            end
            object txt_Crateor: TcxButtonEdit
              Left = 711
              Top = 60
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = txt_CrateorPropertiesButtonClick
              TabOrder = 4
              OnKeyPress = txt_CrateorKeyPress
              Width = 118
            end
            object txt_Brand: TcxButtonEdit
              Left = 63
              Top = 61
              Hint = #35746#36135#23458#25143
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = txt_BrandPropertiesButtonClick
              TabOrder = 5
              OnKeyPress = txt_BrandKeyPress
              Width = 145
            end
            object txt_Attribute: TcxButtonEdit
              Left = 546
              Top = 61
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = txt_AttributePropertiesButtonClick
              TabOrder = 6
              OnKeyPress = txt_AttributeKeyPress
              Width = 119
            end
            object EndDate: TcxDateEdit
              Tag = 100
              Left = 710
              Top = 17
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 7
              Width = 118
            end
            object cxLabel5: TcxLabel
              Left = 490
              Top = 63
              Caption = #27874#27573
            end
            object cxLabel4: TcxLabel
              Left = 232
              Top = 63
              Caption = #24180#20221
            end
            object cxLabel3: TcxLabel
              Left = 8
              Top = 63
              Caption = #21697#29260
            end
            object cxLabel2: TcxLabel
              Left = 671
              Top = 61
              Caption = #21046#21333#20154
            end
            object cxLabel1: TcxLabel
              Left = 8
              Top = 41
              Caption = #24405#20837#26041#24335
            end
            object btn_Reset: TcxButton
              Left = 862
              Top = 53
              Width = 75
              Height = 25
              Caption = #37325#32622'(&R)'
              TabOrder = 13
              OnClick = btn_ResetClick
              LookAndFeel.Kind = lfOffice11
            end
            object cxButton1: TcxButton
              Left = 862
              Top = 26
              Width = 75
              Height = 25
              Caption = #26597#35810'(&F)'
              TabOrder = 14
              OnClick = cxButton1Click
              LookAndFeel.Kind = lfOffice11
            end
            object beginDate: TcxDateEdit
              Tag = 100
              Left = 546
              Top = 17
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 15
              Width = 118
            end
            object txtBillNumber: TcxTextEdit
              Left = 546
              Top = 39
              TabOrder = 16
              Width = 283
            end
            object txt_SaleOrg: TcxButtonEdit
              Tag = 100
              Left = 63
              Top = 17
              Hint = #35746#36135#23458#25143
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
              TabOrder = 17
              OnKeyPress = txt_SaleOrgKeyPress
              Width = 145
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 1
            Top = 88
            Align = alBottom
            Caption = #37197#36135#21333#20449#24687
            TabOrder = 1
            DesignSize = (
              1057
              40)
            Height = 40
            Width = 1057
            object Label6: TLabel
              Left = 9
              Top = 19
              Width = 53
              Height = 12
              AutoSize = False
              Caption = #37197#36135#20179#24211
            end
            object Label7: TLabel
              Left = 481
              Top = 19
              Width = 65
              Height = 12
              AutoSize = False
              Caption = #37197#36135#21333#22791#27880
            end
            object Label15: TLabel
              Left = 281
              Top = 20
              Width = 54
              Height = 12
              AutoSize = False
              Caption = #21457#36135#31867#22411
            end
            object txt_OutWarehouse: TcxButtonEdit
              Tag = 100
              Left = 62
              Top = 15
              Hint = #35746#36135#23458#25143
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = txt_OutWarehousePropertiesButtonClick
              TabOrder = 0
              OnKeyPress = txt_OutWarehouseKeyPress
              Width = 203
            end
            object txt_Des: TcxTextEdit
              Left = 552
              Top = 15
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Width = 497
            end
            object lcb_ShopType: TcxLookupComboBox
              Tag = 100
              Left = 335
              Top = 15
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'FID'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname_l2'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsShipType
              TabOrder = 2
              Width = 129
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 132
          Width = 1059
          Height = 334
          Align = alClient
          Color = 16511980
          TabOrder = 1
          object cxGrid3: TcxGrid
            Left = 1
            Top = 1
            Width = 1057
            Height = 306
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
                end
                item
                  Kind = skSum
                  FieldName = 'FTOTALISSUEBASEQTY'
                  Column = cxSleectBillFTOTALISSUEBASEQTY
                end
                item
                  Kind = skSum
                  FieldName = 'FTOTALSHIPPINGQTY'
                  Column = cxSleectBillFTOTALSHIPPINGQTY
                end
                item
                  Kind = skSum
                  FieldName = 'FTOTALUNISSUEQTY'
                  Column = cxSleectBillFTOTALUNISSUEQTY
                end
                item
                  Kind = skSum
                  FieldName = 'FTOTALUNSHIPBASEQTY'
                  Column = cxSleectBillFTOTALUNSHIPBASEQTY
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
                Width = 147
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
              object cxSleectBillFTOTALSHIPPINGQTY: TcxGridDBColumn
                DataBinding.FieldName = 'FTOTALSHIPPINGQTY'
                Options.Editing = False
                Width = 72
              end
              object cxSleectBillFTOTALUNSHIPBASEQTY: TcxGridDBColumn
                DataBinding.FieldName = 'FTOTALUNSHIPBASEQTY'
                Options.Editing = False
                Width = 63
              end
              object cxSleectBillFTOTALISSUEBASEQTY: TcxGridDBColumn
                DataBinding.FieldName = 'FTOTALISSUEBASEQTY'
                Options.Editing = False
                Width = 68
              end
              object cxSleectBillFTOTALUNISSUEQTY: TcxGridDBColumn
                DataBinding.FieldName = 'FTOTALUNISSUEQTY'
                Options.Editing = False
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
          object Panel5: TPanel
            Left = 1
            Top = 307
            Width = 1057
            Height = 26
            Align = alBottom
            BevelOuter = bvNone
            Color = 16511980
            TabOrder = 1
            object cxButton3: TcxButton
              Left = 3
              Top = 1
              Width = 44
              Height = 23
              Caption = #20840#36873
              TabOrder = 0
              OnClick = cxButton3Click
              LookAndFeel.Kind = lfOffice11
            end
            object cxButton4: TcxButton
              Left = 49
              Top = 1
              Width = 44
              Height = 23
              Caption = #21453#36873
              TabOrder = 1
              OnClick = cxButton4Click
              LookAndFeel.Kind = lfOffice11
            end
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = '2-'#29289#26009#36873#25321
        ImageIndex = 1
        object Splitter2: TSplitter
          Left = 505
          Top = 0
          Height = 466
        end
        object Panel6: TPanel
          Left = 508
          Top = 0
          Width = 551
          Height = 466
          Align = alClient
          BevelOuter = bvNone
          Color = 16511980
          TabOrder = 0
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 551
            Height = 32
            Align = alTop
            Color = 16511980
            TabOrder = 0
            DesignSize = (
              551
              32)
            object Label10: TLabel
              Left = 6
              Top = 10
              Width = 137
              Height = 13
              AutoSize = False
              Caption = #21333#21495'/'#29289#26009#32534#21495'/'#21517#31216#36807#28388
              FocusControl = txt_billMaterList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object txt_billMaterList: TcxTextEdit
              Left = 142
              Top = 7
              Properties.OnChange = txt_billMaterListPropertiesChange
              TabOrder = 0
              Width = 157
            end
            object cxButton6: TcxButton
              Left = 491
              Top = 3
              Width = 55
              Height = 25
              Anchors = [akTop, akRight]
              Caption = #21047#26032
              TabOrder = 1
              OnClick = cxButton6Click
              LookAndFeel.Kind = lfOffice11
            end
          end
          object cxGrid2: TcxGrid
            Left = 0
            Top = 32
            Width = 551
            Height = 434
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Black'
            object cxEntry: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsEntry
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skCount
                  Position = spFooter
                end>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.AlwaysShowEditor = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnMoving = False
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
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxEntry
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 505
          Height = 466
          Align = alLeft
          BevelOuter = bvNone
          Color = 16511980
          TabOrder = 1
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 505
            Height = 32
            Align = alTop
            Color = 16511980
            TabOrder = 0
            object Label9: TLabel
              Left = 4
              Top = 10
              Width = 108
              Height = 13
              AutoSize = False
              Caption = #29289#26009#32534#21495'/'#21517#31216#36807#28388
              FocusControl = txt_Material
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object txt_Material: TcxTextEdit
              Left = 112
              Top = 7
              Properties.OnChange = txt_MaterialPropertiesChange
              TabOrder = 0
              Width = 170
            end
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 32
            Width = 505
            Height = 408
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Black'
            object cxMaterialList: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsMaterial
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skCount
                  Position = spFooter
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'selected'
                  Column = cxMaterialListselected
                end
                item
                  Kind = skSum
                  FieldName = 'Fqty'
                  Column = cxMaterialListFqty
                end
                item
                  Kind = skSum
                  FieldName = 'FTOTALISSUEBASEQTY'
                  Column = cxMaterialListFTOTALISSUEBASEQTY
                end
                item
                  Kind = skSum
                  FieldName = 'FTOTALSHIPPINGQTY'
                  Column = cxMaterialListFTOTALSHIPPINGQTY
                end
                item
                  Kind = skSum
                  Column = cxMaterialListFTOTALUNISSUEQTY
                end
                item
                  Kind = skSum
                  FieldName = 'FTOTALUNSHIPBASEQTY'
                  Column = cxMaterialListFTOTALUNSHIPBASEQTY
                end
                item
                  Kind = skSum
                  FieldName = 'fbaseqty'
                  Column = cxMaterialListfbaseqty
                end
                item
                  Kind = skSum
                  FieldName = 'CFAllocStockQty'
                  Column = cxMaterialListCFAllocStockQty
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.AlwaysShowEditor = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsCustomize.ColumnMoving = False
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
              object cxMaterialListselected: TcxGridDBColumn
                DataBinding.FieldName = 'selected'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Width = 47
              end
              object cxMaterialListMaterialFID: TcxGridDBColumn
                DataBinding.FieldName = 'MaterialFID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxMaterialListMaterialNumber: TcxGridDBColumn
                DataBinding.FieldName = 'MaterialNumber'
                Options.Editing = False
                Width = 80
              end
              object cxMaterialListMaterialName: TcxGridDBColumn
                DataBinding.FieldName = 'MaterialName'
                Options.Editing = False
                Width = 101
              end
              object cxMaterialListFqty: TcxGridDBColumn
                DataBinding.FieldName = 'Fqty'
                Options.Editing = False
                Width = 64
              end
              object cxMaterialListFTOTALSHIPPINGQTY: TcxGridDBColumn
                DataBinding.FieldName = 'FTOTALSHIPPINGQTY'
                Options.Editing = False
                Width = 60
              end
              object cxMaterialListFTOTALUNSHIPBASEQTY: TcxGridDBColumn
                DataBinding.FieldName = 'FTOTALUNSHIPBASEQTY'
                Options.Editing = False
                Width = 58
              end
              object cxMaterialListFTOTALISSUEBASEQTY: TcxGridDBColumn
                DataBinding.FieldName = 'FTOTALISSUEBASEQTY'
                Options.Editing = False
                Width = 63
              end
              object cxMaterialListFTOTALUNISSUEQTY: TcxGridDBColumn
                DataBinding.FieldName = 'FTOTALUNISSUEQTY'
                Options.Editing = False
                Width = 67
              end
              object cxMaterialListfbaseqty: TcxGridDBColumn
                Caption = #24211#23384#25968
                DataBinding.FieldName = 'fbaseqty'
                Options.Editing = False
                Width = 54
              end
              object cxMaterialListCFAllocStockQty: TcxGridDBColumn
                DataBinding.FieldName = 'CFAllocStockQty'
                Options.Editing = False
                Width = 66
              end
              object cxMaterialListbrandName: TcxGridDBColumn
                DataBinding.FieldName = 'brandName'
                Options.Editing = False
                Width = 80
              end
              object cxMaterialListyearsName: TcxGridDBColumn
                DataBinding.FieldName = 'yearsName'
                Options.Editing = False
                Width = 80
              end
              object cxMaterialListattbName: TcxGridDBColumn
                DataBinding.FieldName = 'attbName'
                Options.Editing = False
                Width = 80
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxMaterialList
            end
          end
          object Panel10: TPanel
            Left = 0
            Top = 440
            Width = 505
            Height = 26
            Align = alBottom
            Color = 16511980
            TabOrder = 2
            object cxButton2: TcxButton
              Left = 3
              Top = 1
              Width = 44
              Height = 23
              Caption = #20840#36873
              TabOrder = 0
              OnClick = cxButton2Click
              LookAndFeel.Kind = lfOffice11
            end
            object cxButton5: TcxButton
              Left = 49
              Top = 1
              Width = 44
              Height = 23
              Caption = #21453#36873
              TabOrder = 1
              OnClick = cxButton5Click
              LookAndFeel.Kind = lfOffice11
            end
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = '3-'#37197#36135#26126#32454
        ImageIndex = 2
        object Splitter3: TSplitter
          Left = 0
          Top = 332
          Width = 1059
          Height = 4
          Cursor = crVSplit
          Align = alBottom
        end
        object Panel11: TPanel
          Left = 0
          Top = 336
          Width = 1059
          Height = 130
          Align = alBottom
          BevelOuter = bvNone
          Color = 16511980
          TabOrder = 0
          object pnlStock: TPanel
            Left = 0
            Top = 0
            Width = 1059
            Height = 130
            Align = alClient
            BevelOuter = bvNone
            Color = 16053228
            TabOrder = 0
            object Panel16: TPanel
              Left = 161
              Top = 0
              Width = 898
              Height = 130
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel16'
              TabOrder = 0
              object Panel13: TPanel
                Left = 0
                Top = 0
                Width = 449
                Height = 130
                Align = alLeft
                BevelOuter = bvNone
                Color = 16053228
                TabOrder = 0
                object cxPageStock: TcxPageControl
                  Left = 0
                  Top = 0
                  Width = 449
                  Height = 130
                  ActivePage = cxTabSendStock
                  Align = alClient
                  Style = 10
                  TabOrder = 0
                  ClientRectBottom = 130
                  ClientRectRight = 449
                  ClientRectTop = 18
                  object cxTabSendStock: TcxTabSheet
                    Caption = #21457#36135#26041#24211#23384
                    ImageIndex = 0
                    object cxgird2: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 449
                      Height = 112
                      Align = alClient
                      TabOrder = 0
                      LookAndFeel.Kind = lfOffice11
                      LookAndFeel.SkinName = 'Office2007Black'
                      object cxgridInStock: TcxGridDBTableView
                        NavigatorButtons.ConfirmDelete = False
                        DataController.DataSource = dsInStock
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsData.Deleting = False
                        OptionsData.DeletingConfirmation = False
                        OptionsData.Editing = False
                        OptionsData.Inserting = False
                        OptionsView.DataRowHeight = 22
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderHeight = 22
                        object cxgridInStockCFColorCode: TcxGridDBColumn
                          DataBinding.FieldName = 'CFColorCode'
                          Width = 60
                        end
                        object cxgridInStockCFColorName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFColorName'
                          Width = 60
                        end
                        object cxgridInStockCFCupName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFCupName'
                          Width = 60
                        end
                        object cxgridInStockCFPackName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFPackName'
                          Width = 60
                        end
                        object cxgridInStockcfpackNum: TcxGridDBColumn
                          DataBinding.FieldName = 'cfpackNum'
                          Width = 35
                        end
                        object cxgridInStockfAmount_1: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_1'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_2: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_2'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_3: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_3'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_4: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_4'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_5: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_5'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_6: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_6'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_7: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_7'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_8: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_8'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_9: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_9'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_10: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_10'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_11: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_11'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_12: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_12'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_13: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_13'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_14: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_14'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_15: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_15'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_16: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_16'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_17: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_17'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_18: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_18'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_19: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_19'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_20: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_20'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_21: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_21'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_22: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_22'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_23: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_23'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_24: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_24'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_25: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_25'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_26: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_26'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_27: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_27'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_28: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_28'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_29: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_29'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfAmount_30: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_30'
                          Visible = False
                          Width = 30
                        end
                        object cxgridInStockfTotaLQty: TcxGridDBColumn
                          DataBinding.FieldName = 'fTotaLQty'
                          Width = 58
                        end
                      end
                      object cxgird2Level1: TcxGridLevel
                        GridView = cxgridInStock
                      end
                    end
                  end
                  object cxTabBalStock: TcxTabSheet
                    Caption = #21457#36135#26041#21487#29992#24211#23384
                    ImageIndex = 1
                    object cxGrid4: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 449
                      Height = 112
                      Align = alClient
                      TabOrder = 0
                      LookAndFeel.Kind = lfOffice11
                      LookAndFeel.SkinName = 'Office2007Black'
                      object cxGridBalStock: TcxGridDBTableView
                        NavigatorButtons.ConfirmDelete = False
                        DataController.DataSource = dsBalStock
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsData.Deleting = False
                        OptionsData.DeletingConfirmation = False
                        OptionsData.Editing = False
                        OptionsData.Inserting = False
                        OptionsView.DataRowHeight = 22
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderHeight = 22
                        object cxGridBalStockCFColorCode: TcxGridDBColumn
                          DataBinding.FieldName = 'CFColorCode'
                          Width = 60
                        end
                        object cxGridBalStockCFColorName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFColorName'
                          Width = 60
                        end
                        object cxGridBalStockCFCupName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFCupName'
                          Width = 60
                        end
                        object cxGridBalStockCFPackName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFPackName'
                          Width = 60
                        end
                        object cxGridBalStockcfpackNum: TcxGridDBColumn
                          DataBinding.FieldName = 'cfpackNum'
                          Width = 35
                        end
                        object cxGridBalStockfAmount_1: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_1'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_2: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_2'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_3: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_3'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_4: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_4'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_5: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_5'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_6: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_6'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_7: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_7'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_8: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_8'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_9: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_9'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_10: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_10'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_11: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_11'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_12: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_12'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_13: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_13'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_14: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_14'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_15: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_15'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_16: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_16'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_17: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_17'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_18: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_18'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_19: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_19'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_20: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_20'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_21: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_21'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_22: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_22'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_23: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_23'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_24: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_24'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_25: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_25'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_26: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_26'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_27: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_27'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_28: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_28'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_29: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_29'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfAmount_30: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_30'
                          Visible = False
                          Width = 30
                        end
                        object cxGridBalStockfTotaLQty: TcxGridDBColumn
                          DataBinding.FieldName = 'fTotaLQty'
                          Width = 67
                        end
                      end
                      object cxGridLevel3: TcxGridLevel
                        GridView = cxGridBalStock
                      end
                    end
                  end
                end
              end
              object Panel14: TPanel
                Left = 449
                Top = 0
                Width = 449
                Height = 130
                Align = alClient
                BevelOuter = bvNone
                Color = 16053228
                TabOrder = 1
                object cxpageReceive: TcxPageControl
                  Left = 0
                  Top = 0
                  Width = 449
                  Height = 130
                  ActivePage = cxTabRecStock
                  Align = alClient
                  Style = 10
                  TabOrder = 0
                  ClientRectBottom = 130
                  ClientRectRight = 449
                  ClientRectTop = 18
                  object cxTabRecStock: TcxTabSheet
                    Caption = #25910#36135#26041#24211#23384
                    ImageIndex = 0
                    object cxGrid5: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 449
                      Height = 112
                      Align = alClient
                      TabOrder = 0
                      LookAndFeel.Kind = lfOffice11
                      LookAndFeel.SkinName = 'Office2007Black'
                      object cxgridDestStock: TcxGridDBTableView
                        NavigatorButtons.ConfirmDelete = False
                        DataController.DataSource = dsRecStock
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsData.Deleting = False
                        OptionsData.DeletingConfirmation = False
                        OptionsData.Editing = False
                        OptionsData.Inserting = False
                        OptionsView.DataRowHeight = 22
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderHeight = 22
                        object cxgridDestStockCFColorCode: TcxGridDBColumn
                          DataBinding.FieldName = 'CFColorCode'
                          Width = 60
                        end
                        object cxgridDestStockCFColorName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFColorName'
                          Width = 60
                        end
                        object cxgridDestStockCFCupName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFCupName'
                          Width = 60
                        end
                        object cxgridDestStockCFPackName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFPackName'
                          Width = 60
                        end
                        object cxgridDestStockcfpackNum: TcxGridDBColumn
                          DataBinding.FieldName = 'cfpackNum'
                          Width = 35
                        end
                        object cxgridDestStockfAmount_1: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_1'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_2: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_2'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_3: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_3'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_4: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_4'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_5: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_5'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_6: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_6'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_7: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_7'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_8: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_8'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_9: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_9'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_10: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_10'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_11: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_11'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_12: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_12'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_13: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_13'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_14: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_14'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_15: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_15'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_16: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_16'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_17: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_17'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_18: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_18'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_19: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_19'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_20: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_20'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_21: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_21'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_22: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_22'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_23: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_23'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_24: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_24'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_25: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_25'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_26: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_26'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_27: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_27'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_28: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_28'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_29: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_29'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfAmount_30: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_30'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestStockfTotaLQty: TcxGridDBColumn
                          DataBinding.FieldName = 'fTotaLQty'
                          Width = 60
                        end
                      end
                      object cxGridLevel5: TcxGridLevel
                        GridView = cxgridDestStock
                      end
                    end
                  end
                  object cxTabRecSale: TcxTabSheet
                    Caption = #25910#36135#26041#38144#21806#37327
                    ImageIndex = 1
                    object cxGrid6: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 449
                      Height = 112
                      Align = alClient
                      TabOrder = 0
                      LookAndFeel.Kind = lfOffice11
                      LookAndFeel.SkinName = 'Office2007Black'
                      object cxgridDestSale: TcxGridDBTableView
                        NavigatorButtons.ConfirmDelete = False
                        DataController.DataSource = dsSaleQty
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <>
                        DataController.Summary.SummaryGroups = <>
                        OptionsData.Deleting = False
                        OptionsData.DeletingConfirmation = False
                        OptionsData.Editing = False
                        OptionsData.Inserting = False
                        OptionsView.DataRowHeight = 22
                        OptionsView.GroupByBox = False
                        OptionsView.HeaderHeight = 22
                        object cxgridDestSaleCFColorCode: TcxGridDBColumn
                          DataBinding.FieldName = 'CFColorCode'
                          Width = 60
                        end
                        object cxgridDestSaleCFColorName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFColorName'
                          Width = 60
                        end
                        object cxgridDestSaleCFCupName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFCupName'
                          Width = 60
                        end
                        object cxgridDestSaleCFPackName: TcxGridDBColumn
                          DataBinding.FieldName = 'CFPackName'
                          Width = 60
                        end
                        object cxgridDestSalecfpackNum: TcxGridDBColumn
                          DataBinding.FieldName = 'cfpackNum'
                          Width = 35
                        end
                        object cxgridDestSalefAmount_1: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_1'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_2: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_2'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_3: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_3'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_4: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_4'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_5: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_5'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_6: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_6'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_7: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_7'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_8: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_8'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_9: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_9'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_10: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_10'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_11: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_11'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_12: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_12'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_13: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_13'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_14: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_14'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_15: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_15'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_16: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_16'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_17: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_17'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_18: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_18'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_19: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_19'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_20: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_20'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_21: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_21'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_22: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_22'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_23: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_23'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_24: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_24'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_25: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_25'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_26: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_26'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_27: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_27'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_28: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_28'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_29: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_29'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefAmount_30: TcxGridDBColumn
                          DataBinding.FieldName = 'fAmount_30'
                          Visible = False
                          Width = 30
                        end
                        object cxgridDestSalefTotaLQty: TcxGridDBColumn
                          DataBinding.FieldName = 'fTotaLQty'
                          Width = 61
                        end
                      end
                      object cxGridLevel6: TcxGridLevel
                        GridView = cxgridDestSale
                      end
                    end
                  end
                end
              end
            end
            object Panel17: TPanel
              Left = 0
              Top = 0
              Width = 161
              Height = 130
              Align = alLeft
              BevelOuter = bvLowered
              Caption = #26080#22270#29255
              Color = 16511980
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clScrollBar
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object matreialImg: TImage
                Left = 1
                Top = 1
                Width = 159
                Height = 128
                Hint = #21452#20987#26597#30475#21407#22270
                Align = alClient
                ParentShowHint = False
                ShowHint = True
                Stretch = True
                OnDblClick = matreialImgDblClick
              end
            end
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 1059
          Height = 332
          Align = alClient
          BevelOuter = bvNone
          Color = 16511980
          TabOrder = 1
          object cxGrid7: TcxGrid
            Left = 0
            Top = 27
            Width = 1059
            Height = 305
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Black'
            object cxAllocation: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnFocusedRecordChanged = cxAllocationFocusedRecordChanged
              DataController.DataSource = dsAllocation
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.DataRowHeight = 22
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OptionsView.Indicator = True
              object cxAllocationselected: TcxGridDBColumn
                DataBinding.FieldName = 'selected'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Width = 44
              end
              object cxAllocationBILLFID: TcxGridDBColumn
                DataBinding.FieldName = 'BILLFID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationFNUMBER: TcxGridDBColumn
                DataBinding.FieldName = 'FNUMBER'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationCUSTFID: TcxGridDBColumn
                DataBinding.FieldName = 'CUSTFID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationCUSTNUMBER: TcxGridDBColumn
                DataBinding.FieldName = 'CUSTNUMBER'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationCUSTNAME: TcxGridDBColumn
                DataBinding.FieldName = 'CUSTNAME'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationOUTWARHFID: TcxGridDBColumn
                DataBinding.FieldName = 'OUTWARHFID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationOUTWARHNUMBER: TcxGridDBColumn
                DataBinding.FieldName = 'OUTWARHNUMBER'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationOUTWARHNAME: TcxGridDBColumn
                DataBinding.FieldName = 'OUTWARHNAME'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationINWARHFID: TcxGridDBColumn
                DataBinding.FieldName = 'INWARHFID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationINWARHNUMBER: TcxGridDBColumn
                DataBinding.FieldName = 'INWARHNUMBER'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationINWARHNAME: TcxGridDBColumn
                DataBinding.FieldName = 'INWARHNAME'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationMATERNUMBER: TcxGridDBColumn
                DataBinding.FieldName = 'MATERNUMBER'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationMATERNAME: TcxGridDBColumn
                DataBinding.FieldName = 'MATERNAME'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationCOLORNUMBER: TcxGridDBColumn
                DataBinding.FieldName = 'COLORNUMBER'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationCOLORNAME: TcxGridDBColumn
                DataBinding.FieldName = 'COLORNAME'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationCUPNAME: TcxGridDBColumn
                DataBinding.FieldName = 'CUPNAME'
                Options.Editing = False
                Width = 44
              end
              object cxAllocationPACKNAME: TcxGridDBColumn
                DataBinding.FieldName = 'PACKNAME'
                Options.Editing = False
                Width = 46
              end
              object cxAllocationFMATERIALID: TcxGridDBColumn
                DataBinding.FieldName = 'FMATERIALID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationCFCOLORID: TcxGridDBColumn
                DataBinding.FieldName = 'CFCOLORID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationCFPACKID: TcxGridDBColumn
                DataBinding.FieldName = 'CFPACKID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationCFCUPID: TcxGridDBColumn
                DataBinding.FieldName = 'CFCUPID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxAllocationCFPACKNUM: TcxGridDBColumn
                DataBinding.FieldName = 'CFPACKNUM'
                Width = 63
              end
              object cxAllocationFQty_1: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_1'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_2: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_2'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_3: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_3'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_4: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_4'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_5: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_5'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_6: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_6'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_7: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_7'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_8: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_8'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_9: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_9'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_10: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_10'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_11: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_11'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_12: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_12'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_13: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_13'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_14: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_14'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_15: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_15'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_16: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_16'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_17: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_17'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_18: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_18'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_19: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_19'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_20: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_20'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_21: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_21'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_22: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_22'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_23: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_23'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_24: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_24'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_25: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_25'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_26: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_26'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_27: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_27'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_28: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_28'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_29: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_29'
                Visible = False
                Width = 40
              end
              object cxAllocationFQty_30: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_30'
                Visible = False
                Width = 40
              end
              object cxAllocationFTotalQty: TcxGridDBColumn
                DataBinding.FieldName = 'FTotalQty'
                Options.Editing = False
                Width = 66
              end
              object cxAllocationCFNotPACKNUM: TcxGridDBColumn
                DataBinding.FieldName = 'CFNotPACKNUM'
                Options.Editing = False
                Width = 62
              end
              object cxAllocationFNotQty_1: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_1'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_2: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_2'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_3: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_3'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_4: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_4'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_5: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_5'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_6: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_6'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_7: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_7'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_8: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_8'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_9: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_9'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_10: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_10'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_11: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_11'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_12: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_12'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_13: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_13'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_14: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_14'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_15: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_15'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_16: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_16'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_17: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_17'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_18: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_18'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_19: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_19'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_20: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_20'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_21: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_21'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_22: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_22'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_23: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_23'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_24: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_24'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_25: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_25'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_26: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_26'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_27: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_27'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_28: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_28'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_29: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_29'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotQty_30: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_30'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxAllocationFNotTotalQty: TcxGridDBColumn
                DataBinding.FieldName = 'FNotTotalQty'
                Options.Editing = False
                Width = 62
              end
              object cxAllocationCFDPPRICE: TcxGridDBColumn
                DataBinding.FieldName = 'CFDPPRICE'
                Options.Editing = False
                Width = 59
              end
              object cxAllocationFPRICE: TcxGridDBColumn
                DataBinding.FieldName = 'FPRICE'
                Options.Editing = False
                Width = 44
              end
              object cxAllocationFDISCOUNT: TcxGridDBColumn
                DataBinding.FieldName = 'FDISCOUNT'
                Options.Editing = False
                Width = 52
              end
              object cxAllocationFACTUALPRICE: TcxGridDBColumn
                DataBinding.FieldName = 'FACTUALPRICE'
                Options.Editing = False
                Width = 58
              end
              object cxAllocationFAmount: TcxGridDBColumn
                DataBinding.FieldName = 'FAmount'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationFDpAmount: TcxGridDBColumn
                DataBinding.FieldName = 'FDpAmount'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationFNotAmount: TcxGridDBColumn
                DataBinding.FieldName = 'FNotAmount'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationFDpNotAmount: TcxGridDBColumn
                DataBinding.FieldName = 'FDpNotAmount'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationBRANDNAME: TcxGridDBColumn
                DataBinding.FieldName = 'BRANDNAME'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationYEARSNAME: TcxGridDBColumn
                DataBinding.FieldName = 'YEARSNAME'
                Options.Editing = False
                Width = 80
              end
              object cxAllocationATTBNAME: TcxGridDBColumn
                DataBinding.FieldName = 'ATTBNAME'
                Options.Editing = False
                Width = 80
              end
            end
            object cxAllocation_bands: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              OnEditing = cxAllocation_bandsEditing
              OnFocusedRecordChanged = cxAllocationFocusedRecordChanged
              DataController.DataSource = dsAllocation
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.DataRowHeight = 22
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              Bands = <
                item
                  Caption = #22522#26412#20449#24687
                end
                item
                  Caption = #37197#36135#25968#37327
                end
                item
                  Caption = #26410#37197#25968#37327
                end
                item
                  Caption = #20854#23427#20449#24687
                end>
              object cxAllocation_bandsselected: TcxGridDBBandedColumn
                DataBinding.FieldName = 'selected'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Width = 37
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxAllocation_bandsBILLFID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'BILLFID'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNUMBER: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNUMBER'
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCUSTFID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CUSTFID'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCUSTNUMBER: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CUSTNUMBER'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCUSTNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CUSTNAME'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxAllocation_bandsOUTWARHFID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'OUTWARHFID'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxAllocation_bandsOUTWARHNUMBER: TcxGridDBBandedColumn
                DataBinding.FieldName = 'OUTWARHNUMBER'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxAllocation_bandsOUTWARHNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'OUTWARHNAME'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxAllocation_bandsINWARHFID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'INWARHFID'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxAllocation_bandsINWARHNUMBER: TcxGridDBBandedColumn
                DataBinding.FieldName = 'INWARHNUMBER'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxAllocation_bandsINWARHNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'INWARHNAME'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxAllocation_bandsMATERNUMBER: TcxGridDBBandedColumn
                DataBinding.FieldName = 'MATERNUMBER'
                Options.Editing = False
                Width = 87
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxAllocation_bandsMATERNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'MATERNAME'
                Options.Editing = False
                Width = 94
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCOLORNUMBER: TcxGridDBBandedColumn
                DataBinding.FieldName = 'COLORNUMBER'
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCOLORNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'COLORNAME'
                Options.Editing = False
                Width = 76
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxAllocation_bandsPACKNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'PACKNAME'
                Options.Editing = False
                Width = 51
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCUPNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CUPNAME'
                Options.Editing = False
                Width = 49
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFMATERIALID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FMATERIALID'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCFCOLORID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CFCOLORID'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCFPACKID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CFPACKID'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCFCUPID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CFCUPID'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCFPACKNUM: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CFPACKNUM'
                Width = 58
                Position.BandIndex = 0
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_1: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_1'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_2: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_2'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_3: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_3'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_4: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_4'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_5: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_5'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_6: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_6'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_7: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_7'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_8: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_8'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_9: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_9'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_10: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_10'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_11: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_11'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_12: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_12'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_13: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_13'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_14: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_14'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_15: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_15'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_16: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_16'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_17: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_17'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_18: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_18'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_19: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_19'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_20: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_20'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_21: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_21'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_22: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_22'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_23: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_23'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_24: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_24'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 23
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_25: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_25'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 24
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_26: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_26'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 25
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_27: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_27'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 26
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_28: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_28'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 27
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_29: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_29'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 28
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFQty_30: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_30'
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 29
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFTotalQty: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FTotalQty'
                Options.Editing = False
                Width = 54
                Position.BandIndex = 1
                Position.ColIndex = 30
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFAmount: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FAmount'
                Options.Editing = False
                Width = 58
                Position.BandIndex = 1
                Position.ColIndex = 31
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFDpAmount: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FDpAmount'
                Options.Editing = False
                Width = 79
                Position.BandIndex = 1
                Position.ColIndex = 32
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_1: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_1'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCFNotPACKNUM: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CFNotPACKNUM'
                Options.Editing = False
                Width = 64
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_2: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_2'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_3: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_3'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_4: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_4'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_5: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_5'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_6: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_6'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_7: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_7'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_8: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_8'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_9: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_9'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_10: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_10'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_11: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_11'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_12: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_12'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_13: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_13'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_14: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_14'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_15: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_15'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_16: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_16'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_17: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_17'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_18: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_18'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_19: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_19'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_20: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_20'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_21: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_21'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_22: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_22'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_23: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_23'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 23
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_24: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_24'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 24
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_25: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_25'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 25
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_26: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_26'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 26
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_27: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_27'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 27
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_28: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_28'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 28
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_29: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_29'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 29
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotQty_30: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_30'
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 30
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotTotalQty: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotTotalQty'
                Options.Editing = False
                Width = 57
                Position.BandIndex = 2
                Position.ColIndex = 31
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFNotAmount: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotAmount'
                Options.Editing = False
                Width = 57
                Position.BandIndex = 2
                Position.ColIndex = 32
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFDpNotAmount: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FDpNotAmount'
                Options.Editing = False
                Width = 60
                Position.BandIndex = 2
                Position.ColIndex = 33
                Position.RowIndex = 0
              end
              object cxAllocation_bandsCFDPPRICE: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CFDPPRICE'
                Options.Editing = False
                Width = 51
                Position.BandIndex = 3
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFPRICE: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FPRICE'
                Options.Editing = False
                Width = 38
                Position.BandIndex = 3
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFDISCOUNT: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FDISCOUNT'
                Options.Editing = False
                Width = 58
                Position.BandIndex = 3
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxAllocation_bandsFACTUALPRICE: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FACTUALPRICE'
                Options.Editing = False
                Width = 64
                Position.BandIndex = 3
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxAllocation_bandsBRANDNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'BRANDNAME'
                Options.Editing = False
                Width = 47
                Position.BandIndex = 3
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxAllocation_bandsYEARSNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'YEARSNAME'
                Options.Editing = False
                Width = 51
                Position.BandIndex = 3
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxAllocation_bandsATTBNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ATTBNAME'
                Options.Editing = False
                Width = 48
                Position.BandIndex = 3
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
            end
            object cxGrid7Level1: TcxGridLevel
              GridView = cxAllocation_bands
            end
          end
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 1059
            Height = 27
            Align = alTop
            Color = 16511980
            TabOrder = 1
            DesignSize = (
              1059
              27)
            object Label12: TLabel
              Left = 102
              Top = 6
              Width = 137
              Height = 13
              AutoSize = False
              Caption = #21333#21495'/'#29289#26009#32534#21495'/'#21517#31216#36807#28388
              FocusControl = txt_Filter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 424
              Top = 8
              Width = 381
              Height = 12
              AutoSize = False
              Caption = #35746#36135#23458#25143':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 927
              Top = 7
              Width = 84
              Height = 12
              Anchors = [akTop, akRight]
              AutoSize = False
              Caption = #22825#20869#38144#21806#25968#25454
            end
            object txt_Filter: TcxTextEdit
              Left = 238
              Top = 3
              Properties.OnChange = txt_FilterPropertiesChange
              TabOrder = 0
              Width = 157
            end
            object cxButton7: TcxButton
              Left = 3
              Top = 1
              Width = 44
              Height = 23
              Caption = #20840#36873
              TabOrder = 1
              OnClick = cxButton7Click
              LookAndFeel.Kind = lfOffice11
            end
            object cxButton8: TcxButton
              Left = 49
              Top = 1
              Width = 44
              Height = 23
              Caption = #21453#36873
              TabOrder = 2
              OnClick = cxButton8Click
              LookAndFeel.Kind = lfOffice11
            end
            object spe_SaleDays: TcxSpinEdit
              Left = 881
              Top = 3
              Anchors = [akTop, akRight]
              Properties.AssignedValues.MinValue = True
              Properties.MaxValue = 30.000000000000000000
              TabOrder = 3
              Value = 7
              Width = 45
            end
            object btn_RefDownData: TcxButton
              Left = 1012
              Top = 2
              Width = 44
              Height = 23
              Anchors = [akTop, akRight]
              Caption = #21047#26032
              TabOrder = 4
              OnClick = btn_RefDownDataClick
              LookAndFeel.Kind = lfOffice11
            end
          end
        end
      end
    end
  end
  object dsSaleType: TDataSource
    DataSet = CliDM.cdsSaleType
    Left = 105
    Top = 171
  end
  object dsInputWay: TDataSource
    DataSet = CliDM.cdsInputWay
    Left = 169
    Top = 169
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
    object cdsBilllistFTOTALSHIPPINGQTY: TIntegerField
      DisplayLabel = #24050#37197#25968
      FieldName = 'FTOTALSHIPPINGQTY'
    end
    object cdsBilllistFTOTALUNSHIPBASEQTY: TIntegerField
      DisplayLabel = #26410#37197#25968
      FieldName = 'FTOTALUNSHIPBASEQTY'
    end
    object cdsBilllistFTOTALISSUEBASEQTY: TIntegerField
      DisplayLabel = #24050#20986#24211#25968
      FieldName = 'FTOTALISSUEBASEQTY'
    end
    object cdsBilllistFTOTALUNISSUEQTY: TIntegerField
      DisplayLabel = #26410#20986#24211#25968
      FieldName = 'FTOTALUNISSUEQTY'
    end
    object cdsBilllistfdescription: TStringField
      DisplayLabel = #35746#21333#22791#27880
      FieldName = 'fdescription'
      Size = 250
    end
  end
  object dsBilllist: TDataSource
    DataSet = cdsBilllist
    Left = 104
    Top = 278
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsMaterialAfterPost
    OnFilterRecord = cdsMaterialFilterRecord
    Left = 232
    Top = 258
    object cdsMaterialselected: TBooleanField
      DisplayLabel = #36873#25321
      FieldName = 'selected'
    end
    object cdsMaterialMaterialFID: TStringField
      DisplayLabel = #29289#26009'FID'
      FieldName = 'MaterialFID'
      Size = 80
    end
    object cdsMaterialMaterialNumber: TStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MaterialNumber'
      Size = 80
    end
    object cdsMaterialMaterialName: TStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MaterialName'
      Size = 80
    end
    object cdsMaterialFqty: TIntegerField
      DisplayLabel = #35746#21333#24635#25968
      FieldName = 'Fqty'
    end
    object cdsMaterialFTOTALSHIPPINGQTY: TIntegerField
      DisplayLabel = #24050#37197#25968
      FieldName = 'FTOTALSHIPPINGQTY'
    end
    object cdsMaterialFTOTALUNSHIPBASEQTY: TIntegerField
      DisplayLabel = #26410#37197#25968
      FieldName = 'FTOTALUNSHIPBASEQTY'
    end
    object cdsMaterialFTOTALISSUEBASEQTY: TIntegerField
      DisplayLabel = #24050#20986#24211#25968
      FieldName = 'FTOTALISSUEBASEQTY'
    end
    object cdsMaterialFTOTALUNISSUEQTY: TIntegerField
      DisplayLabel = #26410#20986#24211#25968
      FieldName = 'FTOTALUNISSUEQTY'
    end
    object cdsMaterialfbaseqty: TIntegerField
      DisplayLabel = #22312#24211#25968
      FieldName = 'fbaseqty'
    end
    object cdsMaterialCFAllocStockQty: TIntegerField
      DisplayLabel = #21487#29992#24211#23384
      FieldName = 'CFAllocStockQty'
    end
    object cdsMaterialbrandName: TStringField
      DisplayLabel = #21697#29260
      FieldName = 'brandName'
      Size = 40
    end
    object cdsMaterialyearsName: TStringField
      DisplayLabel = #24180#20221
      FieldName = 'yearsName'
      Size = 40
    end
    object cdsMaterialattbName: TStringField
      DisplayLabel = #27874#27573
      FieldName = 'attbName'
      Size = 60
    end
  end
  object dsMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 296
    Top = 258
  end
  object cdsEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsEntryFilterRecord
    Left = 676
    Top = 298
  end
  object dsEntry: TDataSource
    DataSet = cdsEntry
    Left = 756
    Top = 290
  end
  object cdsPubEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 844
    Top = 130
  end
  object cdsAllocation: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsAllocationCalcFields
    OnFilterRecord = cdsAllocationFilterRecord
    Left = 104
    Top = 90
    object cdsAllocationselected: TBooleanField
      DisplayLabel = #36873#25321
      FieldName = 'selected'
    end
    object cdsAllocationBILLFID: TWideStringField
      DisplayLabel = #35746#21333'FID'
      FieldName = 'BILLFID'
      Size = 44
    end
    object cdsAllocationFNUMBER: TWideStringField
      DisplayLabel = #35746#21333#21495
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsAllocationCUSTFID: TWideStringField
      FieldName = 'CUSTFID'
      Size = 44
    end
    object cdsAllocationCUSTNUMBER: TWideStringField
      DisplayLabel = #23458#25143#32534#21495
      FieldName = 'CUSTNUMBER'
      Size = 80
    end
    object cdsAllocationCUSTNAME: TWideStringField
      DisplayLabel = #23458#25143#21517#31216
      FieldName = 'CUSTNAME'
      Size = 510
    end
    object cdsAllocationOUTWARHFID: TWideStringField
      FieldName = 'OUTWARHFID'
      Size = 44
    end
    object cdsAllocationOUTWARHNUMBER: TWideStringField
      FieldName = 'OUTWARHNUMBER'
      Size = 80
    end
    object cdsAllocationOUTWARHNAME: TWideStringField
      FieldName = 'OUTWARHNAME'
      Size = 510
    end
    object cdsAllocationINWARHFID: TWideStringField
      FieldName = 'INWARHFID'
      Size = 44
    end
    object cdsAllocationINWARHNUMBER: TWideStringField
      DisplayLabel = #20837#24211#20179#32534#21495
      FieldName = 'INWARHNUMBER'
      Size = 80
    end
    object cdsAllocationINWARHNAME: TWideStringField
      DisplayLabel = #20837#24211#20179#21517#31216
      FieldName = 'INWARHNAME'
      Size = 510
    end
    object cdsAllocationMATERNUMBER: TWideStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MATERNUMBER'
      Size = 80
    end
    object cdsAllocationMATERNAME: TWideStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MATERNAME'
      Size = 510
    end
    object cdsAllocationCOLORNUMBER: TWideStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'COLORNUMBER'
      Size = 80
    end
    object cdsAllocationCOLORNAME: TWideStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'COLORNAME'
      Size = 510
    end
    object cdsAllocationPACKNAME: TWideStringField
      DisplayLabel = #37197#30721
      FieldName = 'PACKNAME'
      Size = 510
    end
    object cdsAllocationCUPNAME: TWideStringField
      DisplayLabel = #20869#38271
      FieldName = 'CUPNAME'
      Size = 510
    end
    object cdsAllocationBRANDNAME: TWideStringField
      DisplayLabel = #21697#29260
      FieldName = 'BRANDNAME'
      Size = 510
    end
    object cdsAllocationYEARSNAME: TWideStringField
      DisplayLabel = #24180#20221
      FieldName = 'YEARSNAME'
      Size = 510
    end
    object cdsAllocationATTBNAME: TWideStringField
      DisplayLabel = #27874#27573
      FieldName = 'ATTBNAME'
      Size = 510
    end
    object cdsAllocationFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsAllocationCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsAllocationCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsAllocationCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsAllocationCFPACKNUM: TFloatField
      DisplayLabel = #37197#36135#31665#25968
      FieldName = 'CFPACKNUM'
      OnChange = cdsAllocationCFPACKNUMChange
      OnValidate = cdsAllocationCFPACKNUMValidate
    end
    object cdsAllocationCFNotPACKNUM: TFloatField
      DisplayLabel = #26410#37197#31665#25968
      FieldName = 'CFNotPACKNUM'
    end
    object cdsAllocationCFDPPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object cdsAllocationFPRICE: TFloatField
      DisplayLabel = #21333#20215
      FieldName = 'FPRICE'
    end
    object cdsAllocationFDISCOUNT: TFloatField
      DisplayLabel = #25240#25187'%'
      FieldName = 'FDISCOUNT'
    end
    object cdsAllocationFACTUALPRICE: TFloatField
      DisplayLabel = #23454#38469#21333#20215
      FieldName = 'FACTUALPRICE'
    end
    object cdsAllocationFQty_1: TIntegerField
      Tag = 1
      FieldName = 'FQty_1'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_2: TIntegerField
      Tag = 1
      FieldName = 'FQty_2'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_3: TIntegerField
      Tag = 1
      FieldName = 'FQty_3'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_4: TIntegerField
      Tag = 1
      FieldName = 'FQty_4'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_5: TIntegerField
      Tag = 1
      FieldName = 'FQty_5'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_6: TIntegerField
      Tag = 1
      FieldName = 'FQty_6'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_7: TIntegerField
      Tag = 1
      FieldName = 'FQty_7'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_8: TIntegerField
      Tag = 1
      FieldName = 'FQty_8'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_9: TIntegerField
      Tag = 1
      FieldName = 'FQty_9'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_10: TIntegerField
      Tag = 1
      FieldName = 'FQty_10'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_11: TIntegerField
      Tag = 1
      FieldName = 'FQty_11'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_12: TIntegerField
      Tag = 1
      FieldName = 'FQty_12'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_13: TIntegerField
      Tag = 1
      FieldName = 'FQty_13'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_14: TIntegerField
      Tag = 1
      FieldName = 'FQty_14'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_15: TIntegerField
      Tag = 1
      FieldName = 'FQty_15'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_16: TIntegerField
      Tag = 1
      FieldName = 'FQty_16'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_17: TIntegerField
      Tag = 1
      FieldName = 'FQty_17'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_18: TIntegerField
      Tag = 1
      FieldName = 'FQty_18'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_19: TIntegerField
      Tag = 1
      FieldName = 'FQty_19'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_20: TIntegerField
      Tag = 1
      FieldName = 'FQty_20'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_21: TIntegerField
      Tag = 1
      FieldName = 'FQty_21'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_22: TIntegerField
      Tag = 1
      FieldName = 'FQty_22'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_23: TIntegerField
      Tag = 1
      FieldName = 'FQty_23'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_24: TIntegerField
      Tag = 1
      FieldName = 'FQty_24'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_25: TIntegerField
      Tag = 1
      FieldName = 'FQty_25'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_26: TIntegerField
      Tag = 1
      FieldName = 'FQty_26'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_27: TIntegerField
      Tag = 1
      FieldName = 'FQty_27'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_28: TIntegerField
      Tag = 1
      FieldName = 'FQty_28'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_29: TIntegerField
      Tag = 1
      FieldName = 'FQty_29'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFQty_30: TIntegerField
      Tag = 1
      FieldName = 'FQty_30'
      OnChange = cdsAllocationFQty_1Change
    end
    object cdsAllocationFTotalQty: TIntegerField
      DisplayLabel = #37197#36135#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FTotalQty'
      Calculated = True
    end
    object cdsAllocationFAmount: TFloatField
      DisplayLabel = #37197#36135#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FAmount'
      Calculated = True
    end
    object cdsAllocationFDpAmount: TFloatField
      DisplayLabel = #37197#36135#21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FDpAmount'
      Calculated = True
    end
    object cdsAllocationFNotQty_1: TIntegerField
      FieldName = 'FNotQty_1'
    end
    object cdsAllocationFNotQty_2: TIntegerField
      FieldName = 'FNotQty_2'
    end
    object cdsAllocationFNotQty_3: TIntegerField
      FieldName = 'FNotQty_3'
    end
    object cdsAllocationFNotQty_4: TIntegerField
      FieldName = 'FNotQty_4'
    end
    object cdsAllocationFNotQty_5: TIntegerField
      FieldName = 'FNotQty_5'
    end
    object cdsAllocationFNotQty_6: TIntegerField
      FieldName = 'FNotQty_6'
    end
    object cdsAllocationFNotQty_8: TIntegerField
      FieldName = 'FNotQty_7'
    end
    object cdsAllocationFNotQty_82: TIntegerField
      FieldName = 'FNotQty_8'
    end
    object cdsAllocationFNotQty_9: TIntegerField
      FieldName = 'FNotQty_9'
    end
    object cdsAllocationFNotQty_10: TIntegerField
      FieldName = 'FNotQty_10'
    end
    object cdsAllocationFNotQty_11: TIntegerField
      FieldName = 'FNotQty_11'
    end
    object cdsAllocationFNotQty_12: TIntegerField
      FieldName = 'FNotQty_12'
    end
    object cdsAllocationFNotQty_13: TIntegerField
      FieldName = 'FNotQty_13'
    end
    object cdsAllocationFNotQty_14: TIntegerField
      FieldName = 'FNotQty_14'
    end
    object cdsAllocationFNotQty_15: TIntegerField
      FieldName = 'FNotQty_15'
    end
    object cdsAllocationFNotQty_16: TIntegerField
      FieldName = 'FNotQty_16'
    end
    object cdsAllocationFNotQty_17: TIntegerField
      FieldName = 'FNotQty_17'
    end
    object cdsAllocationFNotQty_18: TIntegerField
      FieldName = 'FNotQty_18'
    end
    object cdsAllocationFNotQty_19: TIntegerField
      FieldName = 'FNotQty_19'
    end
    object cdsAllocationFNotQty_20: TIntegerField
      FieldName = 'FNotQty_20'
    end
    object cdsAllocationFNotQty_21: TIntegerField
      FieldName = 'FNotQty_21'
    end
    object cdsAllocationFNotQty_22: TIntegerField
      FieldName = 'FNotQty_22'
    end
    object cdsAllocationFNotQty_23: TIntegerField
      FieldName = 'FNotQty_23'
    end
    object cdsAllocationFNotQty_24: TIntegerField
      FieldName = 'FNotQty_24'
    end
    object cdsAllocationFNotQty_25: TIntegerField
      FieldName = 'FNotQty_25'
    end
    object cdsAllocationFNotQty_26: TIntegerField
      FieldName = 'FNotQty_26'
    end
    object cdsAllocationFNotQty_27: TIntegerField
      FieldName = 'FNotQty_27'
    end
    object cdsAllocationFNotQty_28: TIntegerField
      FieldName = 'FNotQty_28'
    end
    object cdsAllocationFNotQty_29: TIntegerField
      FieldName = 'FNotQty_29'
    end
    object cdsAllocationFNotQty_30: TIntegerField
      FieldName = 'FNotQty_30'
    end
    object cdsAllocationFNotTotalQty: TIntegerField
      DisplayLabel = #26410#37197#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FNotTotalQty'
      Calculated = True
    end
    object cdsAllocationFNotAmount: TFloatField
      DisplayLabel = #26410#37197#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FNotAmount'
      Calculated = True
    end
    object cdsAllocationFDpNotAmount: TFloatField
      DisplayLabel = #26410#37197#21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FDpNotAmount'
      Calculated = True
    end
    object cdsAllocationcfsizegroupid: TStringField
      FieldName = 'cfsizegroupid'
      Size = 80
    end
  end
  object dsAllocation: TDataSource
    DataSet = cdsAllocation
    Left = 184
    Top = 90
  end
  object cdsBillDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 90
  end
  object cdsInStock: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsInStockCalcFields
    Left = 33
    Top = 427
    object cdsInStockCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 200
    end
    object cdsInStockCFPackID: TStringField
      FieldName = 'CFPackID'
      Size = 44
    end
    object cdsInStockCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 200
    end
    object cdsInStockCFColorCode: TStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsInStockCFColorName: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsInStockCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsInStockCFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 80
    end
    object cdsInStockcfpackNum: TIntegerField
      DisplayLabel = #31665#25968
      FieldName = 'cfpackNum'
    end
    object cdsInStockfAmount_1: TFloatField
      FieldName = 'fAmount_1'
    end
    object cdsInStockfAmount_2: TFloatField
      FieldName = 'fAmount_2'
    end
    object cdsInStockfAmount_3: TFloatField
      FieldName = 'fAmount_3'
    end
    object cdsInStockfAmount_4: TFloatField
      FieldName = 'fAmount_4'
    end
    object cdsInStockfAmount_5: TFloatField
      FieldName = 'fAmount_5'
    end
    object cdsInStockfAmount_6: TFloatField
      FieldName = 'fAmount_6'
    end
    object cdsInStockfAmount_7: TFloatField
      FieldName = 'fAmount_7'
    end
    object cdsInStockfAmount_8: TFloatField
      FieldName = 'fAmount_8'
    end
    object cdsInStockfAmount_9: TFloatField
      FieldName = 'fAmount_9'
    end
    object cdsInStockfAmount_10: TFloatField
      FieldName = 'fAmount_10'
    end
    object cdsInStockfAmount_11: TFloatField
      FieldName = 'fAmount_11'
    end
    object cdsInStockfAmount_12: TFloatField
      FieldName = 'fAmount_12'
    end
    object cdsInStockfAmount_13: TFloatField
      FieldName = 'fAmount_13'
    end
    object cdsInStockfAmount_14: TFloatField
      FieldName = 'fAmount_14'
    end
    object cdsInStockfAmount_15: TFloatField
      FieldName = 'fAmount_15'
    end
    object cdsInStockfAmount_16: TFloatField
      FieldName = 'fAmount_16'
    end
    object cdsInStockfAmount_17: TFloatField
      FieldName = 'fAmount_17'
    end
    object cdsInStockfAmount_18: TFloatField
      FieldName = 'fAmount_18'
    end
    object cdsInStockfAmount_19: TFloatField
      FieldName = 'fAmount_19'
    end
    object cdsInStockfAmount_20: TFloatField
      FieldName = 'fAmount_20'
    end
    object cdsInStockfAmount_21: TFloatField
      FieldName = 'fAmount_21'
    end
    object cdsInStockfAmount_22: TFloatField
      FieldName = 'fAmount_22'
    end
    object cdsInStockfAmount_23: TFloatField
      FieldName = 'fAmount_23'
    end
    object cdsInStockfAmount_24: TFloatField
      FieldName = 'fAmount_24'
    end
    object cdsInStockfAmount_25: TFloatField
      FieldName = 'fAmount_25'
    end
    object cdsInStockfAmount_26: TFloatField
      FieldName = 'fAmount_26'
    end
    object cdsInStockfAmount_27: TFloatField
      FieldName = 'fAmount_27'
    end
    object cdsInStockfAmount_28: TFloatField
      FieldName = 'fAmount_28'
    end
    object cdsInStockfAmount_29: TFloatField
      FieldName = 'fAmount_29'
    end
    object cdsInStockfAmount_30: TFloatField
      FieldName = 'fAmount_30'
    end
    object cdsInStockfTotaLQty: TFloatField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'fTotaLQty'
      Calculated = True
    end
  end
  object dsInStock: TDataSource
    DataSet = cdsInStock
    Left = 89
    Top = 427
  end
  object cdsBalStock: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsInStockCalcFields
    Left = 217
    Top = 387
    object cdsBalStockCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 200
    end
    object cdsBalStockCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 200
    end
    object cdsBalStockCFPackID: TStringField
      FieldName = 'CFPackID'
      Size = 44
    end
    object cdsBalStockCFColorCode: TStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsBalStockCFColorName: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsBalStockCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsBalStockCFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 80
    end
    object cdsBalStockcfpackNum: TIntegerField
      DisplayLabel = #31665#25968
      FieldName = 'cfpackNum'
    end
    object cdsBalStockfAmount_1: TFloatField
      FieldName = 'fAmount_1'
    end
    object cdsBalStockfAmount_2: TFloatField
      FieldName = 'fAmount_2'
    end
    object cdsBalStockfAmount_3: TFloatField
      FieldName = 'fAmount_3'
    end
    object cdsBalStockfAmount_4: TFloatField
      FieldName = 'fAmount_4'
    end
    object cdsBalStockfAmount_5: TFloatField
      FieldName = 'fAmount_5'
    end
    object cdsBalStockfAmount_6: TFloatField
      FieldName = 'fAmount_6'
    end
    object cdsBalStockfAmount_7: TFloatField
      FieldName = 'fAmount_7'
    end
    object cdsBalStockfAmount_8: TFloatField
      FieldName = 'fAmount_8'
    end
    object cdsBalStockfAmount_9: TFloatField
      FieldName = 'fAmount_9'
    end
    object cdsBalStockfAmount_10: TFloatField
      FieldName = 'fAmount_10'
    end
    object cdsBalStockfAmount_11: TFloatField
      FieldName = 'fAmount_11'
    end
    object cdsBalStockfAmount_12: TFloatField
      FieldName = 'fAmount_12'
    end
    object cdsBalStockfAmount_13: TFloatField
      FieldName = 'fAmount_13'
    end
    object cdsBalStockfAmount_14: TFloatField
      FieldName = 'fAmount_14'
    end
    object cdsBalStockfAmount_15: TFloatField
      FieldName = 'fAmount_15'
    end
    object cdsBalStockfAmount_16: TFloatField
      FieldName = 'fAmount_16'
    end
    object cdsBalStockfAmount_17: TFloatField
      FieldName = 'fAmount_17'
    end
    object cdsBalStockfAmount_18: TFloatField
      FieldName = 'fAmount_18'
    end
    object cdsBalStockfAmount_19: TFloatField
      FieldName = 'fAmount_19'
    end
    object cdsBalStockfAmount_20: TFloatField
      FieldName = 'fAmount_20'
    end
    object cdsBalStockfAmount_21: TFloatField
      FieldName = 'fAmount_21'
    end
    object cdsBalStockfAmount_22: TFloatField
      FieldName = 'fAmount_22'
    end
    object cdsBalStockfAmount_23: TFloatField
      FieldName = 'fAmount_23'
    end
    object cdsBalStockfAmount_24: TFloatField
      FieldName = 'fAmount_24'
    end
    object cdsBalStockfAmount_25: TFloatField
      FieldName = 'fAmount_25'
    end
    object cdsBalStockfAmount_26: TFloatField
      FieldName = 'fAmount_26'
    end
    object cdsBalStockfAmount_27: TFloatField
      FieldName = 'fAmount_27'
    end
    object cdsBalStockfAmount_28: TFloatField
      FieldName = 'fAmount_28'
    end
    object cdsBalStockfAmount_29: TFloatField
      FieldName = 'fAmount_29'
    end
    object cdsBalStockfAmount_30: TFloatField
      FieldName = 'fAmount_30'
    end
    object cdsBalStockfTotaLQty: TFloatField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'fTotaLQty'
      Calculated = True
    end
  end
  object dsBalStock: TDataSource
    DataSet = cdsBalStock
    Left = 249
    Top = 422
  end
  object cdsRecStock: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsInStockCalcFields
    Left = 514
    Top = 435
    object cdsRecStockCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 200
    end
    object cdsRecStockCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 200
    end
    object cdsRecStockCFPackID: TStringField
      FieldName = 'CFPackID'
      Size = 44
    end
    object cdsRecStockCFColorCode: TStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsRecStockCFColorName: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsRecStockCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsRecStockCFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 80
    end
    object cdsRecStockcfpackNum: TIntegerField
      DisplayLabel = #31665#25968
      FieldName = 'cfpackNum'
    end
    object cdsRecStockfAmount_1: TFloatField
      FieldName = 'fAmount_1'
    end
    object cdsRecStockfAmount_2: TFloatField
      FieldName = 'fAmount_2'
    end
    object cdsRecStockfAmount_3: TFloatField
      FieldName = 'fAmount_3'
    end
    object cdsRecStockfAmount_4: TFloatField
      FieldName = 'fAmount_4'
    end
    object cdsRecStockfAmount_5: TFloatField
      FieldName = 'fAmount_5'
    end
    object cdsRecStockfAmount_6: TFloatField
      FieldName = 'fAmount_6'
    end
    object cdsRecStockfAmount_7: TFloatField
      FieldName = 'fAmount_7'
    end
    object cdsRecStockfAmount_8: TFloatField
      FieldName = 'fAmount_8'
    end
    object cdsRecStockfAmount_9: TFloatField
      FieldName = 'fAmount_9'
    end
    object cdsRecStockfAmount_10: TFloatField
      FieldName = 'fAmount_10'
    end
    object cdsRecStockfAmount_11: TFloatField
      FieldName = 'fAmount_11'
    end
    object cdsRecStockfAmount_12: TFloatField
      FieldName = 'fAmount_12'
    end
    object cdsRecStockfAmount_13: TFloatField
      FieldName = 'fAmount_13'
    end
    object cdsRecStockfAmount_14: TFloatField
      FieldName = 'fAmount_14'
    end
    object cdsRecStockfAmount_15: TFloatField
      FieldName = 'fAmount_15'
    end
    object cdsRecStockfAmount_16: TFloatField
      FieldName = 'fAmount_16'
    end
    object cdsRecStockfAmount_17: TFloatField
      FieldName = 'fAmount_17'
    end
    object cdsRecStockfAmount_18: TFloatField
      FieldName = 'fAmount_18'
    end
    object cdsRecStockfAmount_19: TFloatField
      FieldName = 'fAmount_19'
    end
    object cdsRecStockfAmount_20: TFloatField
      FieldName = 'fAmount_20'
    end
    object cdsRecStockfAmount_21: TFloatField
      FieldName = 'fAmount_21'
    end
    object cdsRecStockfAmount_22: TFloatField
      FieldName = 'fAmount_22'
    end
    object cdsRecStockfAmount_23: TFloatField
      FieldName = 'fAmount_23'
    end
    object cdsRecStockfAmount_24: TFloatField
      FieldName = 'fAmount_24'
    end
    object cdsRecStockfAmount_25: TFloatField
      FieldName = 'fAmount_25'
    end
    object cdsRecStockfAmount_26: TFloatField
      FieldName = 'fAmount_26'
    end
    object cdsRecStockfAmount_27: TFloatField
      FieldName = 'fAmount_27'
    end
    object cdsRecStockfAmount_28: TFloatField
      FieldName = 'fAmount_28'
    end
    object cdsRecStockfAmount_29: TFloatField
      FieldName = 'fAmount_29'
    end
    object cdsRecStockfAmount_30: TFloatField
      FieldName = 'fAmount_30'
    end
    object cdsRecStockfTotaLQty: TFloatField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'fTotaLQty'
      Calculated = True
    end
  end
  object dsRecStock: TDataSource
    DataSet = cdsRecStock
    Left = 578
    Top = 443
  end
  object cdsSaleQty: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsInStockCalcFields
    Left = 674
    Top = 443
    object cdsSaleQtyCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 200
    end
    object cdsSaleQtyCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 200
    end
    object cdsSaleQtyCFPackID: TStringField
      FieldName = 'CFPackID'
      Size = 44
    end
    object cdsSaleQtyCFColorCode: TStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsSaleQtyCFColorName: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsSaleQtyCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsSaleQtyCFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 80
    end
    object cdsSaleQtycfpackNum: TIntegerField
      DisplayLabel = #31665#25968
      FieldName = 'cfpackNum'
    end
    object cdsSaleQtyfAmount_1: TFloatField
      FieldName = 'fAmount_1'
    end
    object cdsSaleQtyfAmount_2: TFloatField
      FieldName = 'fAmount_2'
    end
    object cdsSaleQtyfAmount_3: TFloatField
      FieldName = 'fAmount_3'
    end
    object cdsSaleQtyfAmount_4: TFloatField
      FieldName = 'fAmount_4'
    end
    object cdsSaleQtyfAmount_5: TFloatField
      FieldName = 'fAmount_5'
    end
    object cdsSaleQtyfAmount_6: TFloatField
      FieldName = 'fAmount_6'
    end
    object cdsSaleQtyfAmount_7: TFloatField
      FieldName = 'fAmount_7'
    end
    object cdsSaleQtyfAmount_8: TFloatField
      FieldName = 'fAmount_8'
    end
    object cdsSaleQtyfAmount_9: TFloatField
      FieldName = 'fAmount_9'
    end
    object cdsSaleQtyfAmount_10: TFloatField
      FieldName = 'fAmount_10'
    end
    object cdsSaleQtyfAmount_11: TFloatField
      FieldName = 'fAmount_11'
    end
    object cdsSaleQtyfAmount_12: TFloatField
      FieldName = 'fAmount_12'
    end
    object cdsSaleQtyfAmount_13: TFloatField
      FieldName = 'fAmount_13'
    end
    object cdsSaleQtyfAmount_14: TFloatField
      FieldName = 'fAmount_14'
    end
    object cdsSaleQtyfAmount_15: TFloatField
      FieldName = 'fAmount_15'
    end
    object cdsSaleQtyfAmount_16: TFloatField
      FieldName = 'fAmount_16'
    end
    object cdsSaleQtyfAmount_17: TFloatField
      FieldName = 'fAmount_17'
    end
    object cdsSaleQtyfAmount_18: TFloatField
      FieldName = 'fAmount_18'
    end
    object cdsSaleQtyfAmount_19: TFloatField
      FieldName = 'fAmount_19'
    end
    object cdsSaleQtyfAmount_20: TFloatField
      FieldName = 'fAmount_20'
    end
    object cdsSaleQtyfAmount_21: TFloatField
      FieldName = 'fAmount_21'
    end
    object cdsSaleQtyfAmount_22: TFloatField
      FieldName = 'fAmount_22'
    end
    object cdsSaleQtyfAmount_23: TFloatField
      FieldName = 'fAmount_23'
    end
    object cdsSaleQtyfAmount_24: TFloatField
      FieldName = 'fAmount_24'
    end
    object cdsSaleQtyfAmount_25: TFloatField
      FieldName = 'fAmount_25'
    end
    object cdsSaleQtyfAmount_26: TFloatField
      FieldName = 'fAmount_26'
    end
    object cdsSaleQtyfAmount_27: TFloatField
      FieldName = 'fAmount_27'
    end
    object cdsSaleQtyfAmount_28: TFloatField
      FieldName = 'fAmount_28'
    end
    object cdsSaleQtyfAmount_29: TFloatField
      FieldName = 'fAmount_29'
    end
    object cdsSaleQtyfAmount_30: TFloatField
      FieldName = 'fAmount_30'
    end
    object cdsSaleQtyfTotaLQty: TFloatField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'fTotaLQty'
      Calculated = True
    end
  end
  object dsSaleQty: TDataSource
    DataSet = cdsSaleQty
    Left = 738
    Top = 443
  end
  object cdsStockData: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 340
    Top = 74
    object cdsStockDatafwarehouseid: TStringField
      FieldName = 'fwarehouseid'
      Size = 80
    end
    object cdsStockDatafmaterialid: TStringField
      FieldName = 'fmaterialid'
      Size = 80
    end
    object cdsStockDatacfcolorid: TStringField
      FieldName = 'cfcolorid'
      Size = 80
    end
    object cdsStockDatacfsizesid: TStringField
      FieldName = 'cfsizesid'
      Size = 80
    end
    object cdsStockDatacfpackid: TStringField
      FieldName = 'cfpackid'
      Size = 80
    end
    object cdsStockDatacfcupid: TStringField
      FieldName = 'cfcupid'
      Size = 80
    end
    object cdsStockDataFQty: TIntegerField
      FieldName = 'FQty'
    end
    object cdsStockDataFUsableQty: TIntegerField
      FieldName = 'FUsableQty'
    end
  end
  object cdsImg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 170
  end
  object cdsStock_tmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 170
  end
  object cdsSaleQty_tmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 170
  end
  object cdsRecStock_tmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 170
  end
  object QrySizeGroupEntry: TADOQuery
    Parameters = <>
    Left = 968
    Top = 75
  end
  object cdsMaster: TClientDataSet
    Tag = 1
    Active = True
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsMasterNewRecord
    Left = 968
    Top = 146
    Data = {
      2C0500009619E0BD01000000180000002C0000000000030000002C0503464944
      01004A000000010005574944544802000200580007464E554D42455201004A00
      0000010005574944544802000200A0000A4643524541544F52494401004A0000
      0001000557494454480200020058000B4643524541544554494D450800080000
      00000011464C41535455504441544555534552494401004A0000000100055749
      4454480200020058000F464C41535455504441544554494D4508000800000000
      000E46434F4E54524F4C554E4954494401004A00000001000557494454480200
      02005800084642495A4441544508000800000000000A4648414E444C45524944
      01004A00000001000557494454480200020058000C464445534352495054494F
      4E02004A00000001000557494454480200020020030C46484153454646454354
      454408000400000000000A4641554449544F52494401004A0000000100055749
      4454480200020058000D46534F5552434542494C4C494402004A000000010005
      57494454480200020040010F46534F5552434546554E4354494F4E02004A0000
      0001000557494454480200020040010A46415544495454494D45080008000000
      00000B4642415345535441545553080004000000000008464341525249455202
      004A00000001000557494454480200020090010E4653414C454F5247554E4954
      494401004A0000000100055749445448020002005800114653544F524147454F
      5247554E4954494401004A00000001000557494454480200020058000A464249
      5A54595045494401004A00000001000557494454480200020058000B4642494C
      4C54595045494401004A00000001000557494454480200020058001146534F55
      52434542494C4C54595045494401004A00000001000557494454480200020058
      0005465945415208000400000000000746504552494F44080004000000000011
      464D4F44494649434154494F4E54494D4508000800000000000B464D4F444946
      494552494401004A00000001000557494454480200020058000B464355525245
      4E4359494401004A00000001000557494454480200020058001146434F4D5041
      4E594F5247554E4954494401004A00000001000557494454480200020058000A
      4649535245564552534508000400000000000D4645584348414E474552415445
      08000400000000000C46434F4E564552544D4F444508000400000000000D4346
      53554242494C4C5459504502004A00000001000557494454480200020090010D
      4346505249434554595045494401004A00000001000557494454480200020058
      000D43464F5244455254595045494401004A0000000100055749445448020002
      0058000943465350454349414C01004A00000001000557494454480200020058
      000A4346494E50555457415901004A0000000100055749445448020002005800
      0C4346535550504C494552494401004A00000001000557494454480200020058
      000C43465055524F52444552494401004A000000010005574944544802000200
      5800104346534F5552434553504C49544E554D02004A00000001000557494454
      4802000200FC030A434653414C455459504501004A0000000100055749445448
      0200020058000A4346534849505459504501004A000000010005574944544802
      00020058000C4657415245484F555345494401004A0000000100055749445448
      0200020058000E46494E57415245484F555345494401004A0000000100055749
      44544802000200580010464F52444552435553544F4D4552494401004A000000
      01000557494454480200020058000000}
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMasterCFCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFCustName'
      Size = 80
      Calculated = True
    end
    object cdsMasterWideStringField2: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsMasterWideStringField3: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMasterDateTimeField: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMasterWideStringField4: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMasterDateTimeField2: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsMasterWideStringField5: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMasterDateTimeField3: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsMasterWideStringField6: TWideStringField
      FieldName = 'FHANDLERID'
      Size = 44
    end
    object cdsMasterWideStringField7: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 400
    end
    object cdsMasterFloatField: TFloatField
      FieldName = 'FHASEFFECTED'
    end
    object cdsMasterWideStringField8: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMasterWideStringField9: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsMasterWideStringField10: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 160
    end
    object cdsMasterDateTimeField4: TDateTimeField
      FieldName = 'FAUDITTIME'
    end
    object cdsMasterFloatField2: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsMasterWideStringField11: TWideStringField
      FieldName = 'FCARRIER'
      Size = 200
    end
    object cdsMasterWideStringField12: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsMasterWideStringField13: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterWideStringField14: TWideStringField
      FieldName = 'FBIZTYPEID'
      Size = 44
    end
    object cdsMasterWideStringField15: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
    object cdsMasterWideStringField16: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsMasterFloatField3: TFloatField
      FieldName = 'FYEAR'
    end
    object cdsMasterFloatField4: TFloatField
      FieldName = 'FPERIOD'
    end
    object cdsMasterDateTimeField5: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterWideStringField17: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterWideStringField18: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterWideStringField19: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFloatField5: TFloatField
      FieldName = 'FISREVERSE'
    end
    object cdsMasterFloatField6: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFloatField7: TFloatField
      FieldName = 'FCONVERTMODE'
    end
    object cdsMasterWideStringField20: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterWideStringField21: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterWideStringField22: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterWideStringField23: TWideStringField
      FieldName = 'CFSPECIAL'
      Size = 44
    end
    object cdsMasterWideStringField24: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 44
    end
    object cdsMasterWideStringField25: TWideStringField
      FieldName = 'CFSUPPLIERID'
      Size = 44
    end
    object cdsMasterWideStringField26: TWideStringField
      FieldName = 'CFPURORDERID'
      Size = 44
    end
    object cdsMasterWideStringField27: TWideStringField
      FieldName = 'CFSOURCESPLITNUM'
      Size = 510
    end
    object cdsMasterWideStringField28: TWideStringField
      FieldName = 'CFSALETYPE'
      Size = 44
    end
    object cdsMasterWideStringField29: TWideStringField
      FieldName = 'CFSHIPTYPE'
      Size = 44
    end
    object cdsMasterWideStringField30: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsMasterWideStringField31: TWideStringField
      FieldName = 'FINWAREHOUSEID'
      Size = 44
    end
    object cdsMasterWideStringField32: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsMasterFCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 0
      Calculated = True
    end
    object cdsMasterFAuditorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterCFReceivWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivWareName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFSendWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSendWareName'
      Size = 60
      Calculated = True
    end
  end
  object cdsDetail: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsDetailNewRecord
    Left = 968
    Top = 199
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsDetailFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailFUNITID: TWideStringField
      FieldName = 'FUNITID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object cdsDetailFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetailFASSCOEFFICIENT: TFloatField
      FieldName = 'FASSCOEFFICIENT'
    end
    object cdsDetailFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailFASSISTUNITID: TWideStringField
      FieldName = 'FASSISTUNITID'
      Size = 44
    end
    object cdsDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFDELIVERYDATE: TDateTimeField
      FieldName = 'FDELIVERYDATE'
    end
    object cdsDetailFDELIVERYADDRESS: TWideStringField
      FieldName = 'FDELIVERYADDRESS'
      Size = 510
    end
    object cdsDetailFTRANSLEADTIME: TFloatField
      FieldName = 'FTRANSLEADTIME'
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailFCUSTPURNUMBER: TWideStringField
      FieldName = 'FCUSTPURNUMBER'
      Size = 200
    end
    object cdsDetailFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailFSHIPPEDQTY: TFloatField
      FieldName = 'FSHIPPEDQTY'
    end
    object cdsDetailFUNSHIPPEDQTY: TFloatField
      FieldName = 'FUNSHIPPEDQTY'
    end
    object cdsDetailFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailFORDERCUSTOMERID: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsDetailFSALEPERSONID: TWideStringField
      FieldName = 'FSALEPERSONID'
      Size = 44
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFDELIVERYTYPEID: TWideStringField
      FieldName = 'FDELIVERYTYPEID'
      Size = 44
    end
    object cdsDetailFSALEGROUPID: TWideStringField
      FieldName = 'FSALEGROUPID'
      Size = 44
    end
    object cdsDetailFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsDetailFSENDDATE: TDateTimeField
      FieldName = 'FSENDDATE'
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFSALEORDERID: TWideStringField
      FieldName = 'FSALEORDERID'
      Size = 44
    end
    object cdsDetailFSALEORDERENTRYID: TWideStringField
      FieldName = 'FSALEORDERENTRYID'
      Size = 44
    end
    object cdsDetailFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 200
    end
    object cdsDetailFSALEORDERENTRYSEQ: TFloatField
      FieldName = 'FSALEORDERENTRYSEQ'
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFSHIPPEDBASEQTY: TFloatField
      FieldName = 'FSHIPPEDBASEQTY'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFTOTALREVERSEDQTY: TFloatField
      FieldName = 'FTOTALREVERSEDQTY'
    end
    object cdsDetailFTOTALREVERSEDBASEQTY: TFloatField
      FieldName = 'FTOTALREVERSEDBASEQTY'
    end
    object cdsDetailFSTOCKTRANSFERBILLID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLENTRYID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLENTRYID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLNUMBER: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLNUMBER'
      Size = 160
    end
    object cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField
      FieldName = 'FSTOCKTRANSFERBILLENTRYSEQ'
    end
    object cdsDetailFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdsDetailFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 160
    end
    object cdsDetailFPLANDELIVERYQTY: TFloatField
      FieldName = 'FPLANDELIVERYQTY'
    end
    object cdsDetailFDELIVERYCUSTOMERID: TWideStringField
      FieldName = 'FDELIVERYCUSTOMERID'
      Size = 44
    end
    object cdsDetailFRECEIVECUSTOMERID: TWideStringField
      FieldName = 'FRECEIVECUSTOMERID'
      Size = 44
    end
    object cdsDetailFPAYMENTCUSTOMERID: TWideStringField
      FieldName = 'FPAYMENTCUSTOMERID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 160
    end
    object cdsDetailFNETORDERBILLNUMBER: TWideStringField
      FieldName = 'FNETORDERBILLNUMBER'
      Size = 160
    end
    object cdsDetailFNETORDERBILLID: TWideStringField
      FieldName = 'FNETORDERBILLID'
      Size = 88
    end
    object cdsDetailFNETORDERBILLENTRYID: TWideStringField
      FieldName = 'FNETORDERBILLENTRYID'
      Size = 88
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailCFUNITPRICE: TFloatField
      FieldName = 'CFUNITPRICE'
    end
    object cdsDetailCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailCFCANCELQTY: TFloatField
      FieldName = 'CFCANCELQTY'
    end
    object cdsDetailCFSTOPNUM: TFloatField
      FieldName = 'CFSTOPNUM'
    end
    object cdsDetailCFISPURIN: TFloatField
      FieldName = 'CFISPURIN'
    end
    object cdsDetailCFPURINQTY: TFloatField
      FieldName = 'CFPURINQTY'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  object cdsBOTP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 968
    Top = 249
  end
  object qrySizegrouppackallot: TADOQuery
    Parameters = <>
    Left = 856
    Top = 75
  end
  object dsShipType: TDataSource
    DataSet = CliDM.cdsShipType
    Left = 537
    Top = 233
  end
end
