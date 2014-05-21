inherited OrderAllocateFrm: TOrderAllocateFrm
  Left = 159
  Top = 72
  Width = 1001
  Height = 634
  Caption = #35746#21333#35843#25320
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 993
    Height = 38
    Align = alTop
    Color = 16511980
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 7
      Width = 361
      Height = 25
      AutoSize = False
      Caption = #35746#21333#35843#25320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 38
    Width = 993
    Height = 527
    Align = alClient
    Color = 16511980
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 153
      Width = 991
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 991
      Height = 152
      Align = alTop
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 0
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 72
        Align = alClient
        Caption = #35843#20837#21333#20449#24687
        TabOrder = 1
        DesignSize = (
          991
          80)
        Height = 80
        Width = 991
        object cxLabel9: TcxLabel
          Left = 9
          Top = 24
          AutoSize = False
          Caption = #35746#36135#23458#25143
          Height = 16
          Width = 54
        end
        object txt_InCustomer: TcxButtonEdit
          Tag = 100
          Left = 66
          Top = 22
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.ReadOnly = True
          Properties.OnButtonClick = txt_InCustomerPropertiesButtonClick
          TabOrder = 0
          OnKeyPress = txt_InCustomerKeyPress
          Width = 161
        end
        object cxLabel11: TcxLabel
          Left = 456
          Top = 24
          AutoSize = False
          Caption = #38144#21806#31867#22411
          Height = 16
          Width = 54
        end
        object txt_InSaleType: TcxButtonEdit
          Tag = 100
          Left = 511
          Top = 22
          Enabled = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.ReadOnly = True
          Properties.OnButtonClick = txt_InSaleTypePropertiesButtonClick
          TabOrder = 2
          OnKeyPress = txt_InSaleTypeKeyPress
          Width = 161
        end
        object cxLabel12: TcxLabel
          Left = 680
          Top = 24
          AutoSize = False
          Caption = #20215#26684#31867#22411
          Height = 16
          Width = 54
        end
        object txt_InPriceType: TcxButtonEdit
          Tag = 100
          Left = 736
          Top = 22
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.ReadOnly = True
          Properties.OnButtonClick = txt_InPriceTypePropertiesButtonClick
          TabOrder = 3
          OnKeyPress = txt_InPriceTypeKeyPress
          Width = 161
        end
        object cxLabel13: TcxLabel
          Left = 9
          Top = 50
          AutoSize = False
          Caption = #21457#36135#20179
          Height = 16
          Width = 54
        end
        object txt_InFStock: TcxTextEdit
          Left = 66
          Top = 48
          Enabled = False
          TabOrder = 8
          Width = 162
        end
        object cxLabel14: TcxLabel
          Left = 237
          Top = 48
          AutoSize = False
          Caption = #25910#36135#20179
          Height = 16
          Width = 54
        end
        object txt_InSStock: TcxButtonEdit
          Tag = 100
          Left = 290
          Top = 48
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.ReadOnly = True
          Properties.OnButtonClick = txt_InSStockPropertiesButtonClick
          TabOrder = 10
          OnKeyPress = txt_InSStockKeyPress
          Width = 161
        end
        object cxLabel10: TcxLabel
          Left = 237
          Top = 24
          AutoSize = False
          Caption = #35746#21333#31867#22411
          Height = 16
          Width = 54
        end
        object txt_InOrderType: TcxButtonEdit
          Tag = 100
          Left = 290
          Top = 22
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.ReadOnly = True
          Properties.OnButtonClick = txt_InOrderTypePropertiesButtonClick
          TabOrder = 1
          OnKeyPress = txt_InOrderTypeKeyPress
          Width = 161
        end
        object cxLabel15: TcxLabel
          Left = 456
          Top = 48
          AutoSize = False
          Caption = #22791#27880
          Height = 16
          Width = 54
        end
        object txt_InDec: TcxTextEdit
          Left = 511
          Top = 48
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 12
          Width = 464
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = #35843#20986#21333#20449#24687
        TabOrder = 0
        DesignSize = (
          991
          72)
        Height = 72
        Width = 991
        object cxLabel8: TcxLabel
          Left = 9
          Top = 24
          AutoSize = False
          Caption = #35746#21333#32534#21495
          Height = 16
          Width = 54
        end
        object txt_OutFnumber: TcxButtonEdit
          Tag = 100
          Left = 66
          Top = 22
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.ReadOnly = True
          Properties.OnButtonClick = txt_OutFnumberPropertiesButtonClick
          TabOrder = 0
          Width = 161
        end
        object cxLabel1: TcxLabel
          Left = 236
          Top = 24
          AutoSize = False
          Caption = #35746#21333#31867#22411
          Height = 16
          Width = 54
        end
        object cxLabel2: TcxLabel
          Left = 458
          Top = 24
          AutoSize = False
          Caption = #38144#21806#31867#22411
          Height = 16
          Width = 54
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 48
          AutoSize = False
          Caption = #35746#36135#23458#25143
          Height = 16
          Width = 54
        end
        object cxLabel4: TcxLabel
          Left = 677
          Top = 24
          AutoSize = False
          Caption = #20215#26684#31867#22411
          Height = 16
          Width = 54
        end
        object cxLabel5: TcxLabel
          Left = 237
          Top = 48
          AutoSize = False
          Caption = #21457#36135#20179
          Height = 16
          Width = 54
        end
        object cxLabel6: TcxLabel
          Left = 458
          Top = 48
          AutoSize = False
          Caption = #25910#36135#20179
          Height = 16
          Width = 54
        end
        object cxLabel7: TcxLabel
          Left = 677
          Top = 48
          AutoSize = False
          Caption = #22791#27880
          Height = 16
          Width = 54
        end
        object txt_OutCustomer: TcxTextEdit
          Left = 66
          Top = 46
          Enabled = False
          TabOrder = 8
          Width = 162
        end
        object txt_OutOrderType: TcxTextEdit
          Left = 290
          Top = 22
          Enabled = False
          TabOrder = 1
          Width = 162
        end
        object txt_OutFstock: TcxTextEdit
          Left = 290
          Top = 46
          Enabled = False
          TabOrder = 9
          Width = 162
        end
        object txt_OutSaleType: TcxTextEdit
          Left = 511
          Top = 22
          Enabled = False
          TabOrder = 2
          Width = 162
        end
        object txt_OutSstock: TcxTextEdit
          Left = 511
          Top = 46
          Enabled = False
          TabOrder = 10
          Width = 162
        end
        object txt_OutPriceType: TcxTextEdit
          Left = 736
          Top = 22
          Enabled = False
          TabOrder = 3
          Width = 162
        end
        object txt_OutDec: TcxTextEdit
          Left = 736
          Top = 46
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          TabOrder = 11
          Width = 241
        end
        object cxButton1: TcxButton
          Left = 901
          Top = 19
          Width = 75
          Height = 25
          Caption = #21047#26032'(&R)'
          TabOrder = 16
          OnClick = cxButton1Click
          LookAndFeel.Kind = lfOffice11
        end
      end
    end
    object cxPageEntry: TcxPageControl
      Left = 1
      Top = 156
      Width = 991
      Height = 370
      ActivePage = cxTabSheet2
      Align = alClient
      Style = 10
      TabOrder = 1
      ClientRectBottom = 370
      ClientRectRight = 991
      ClientRectTop = 18
      object cxTabSheet1: TcxTabSheet
        Caption = #25955#30721
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 983
          Height = 345
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          object cxGridNotPack: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsNotPack
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OptionsView.Indicator = True
            object cxGridNotPackFEntryID: TcxGridDBColumn
              DataBinding.FieldName = 'FEntryID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridNotPackFMaterialID: TcxGridDBColumn
              DataBinding.FieldName = 'FMaterialID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridNotPackFColorID: TcxGridDBColumn
              DataBinding.FieldName = 'FColorID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridNotPackFSizeID: TcxGridDBColumn
              DataBinding.FieldName = 'FSizeID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridNotPackFPackID: TcxGridDBColumn
              DataBinding.FieldName = 'FPackID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridNotPackFCupID: TcxGridDBColumn
              DataBinding.FieldName = 'FCupID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridNotPackbrandName: TcxGridDBColumn
              DataBinding.FieldName = 'brandName'
              Options.Editing = False
              Width = 63
            end
            object cxGridNotPackyearsName: TcxGridDBColumn
              DataBinding.FieldName = 'yearsName'
              Options.Editing = False
              Width = 56
            end
            object cxGridNotPackattrName: TcxGridDBColumn
              DataBinding.FieldName = 'attrName'
              Options.Editing = False
              Width = 58
            end
            object cxGridNotPackMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'MaterialNumber'
              Options.Editing = False
              Width = 80
            end
            object cxGridNotPackMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'MaterialName'
              Options.Editing = False
              Width = 80
            end
            object cxGridNotPackcolorNumber: TcxGridDBColumn
              DataBinding.FieldName = 'colorNumber'
              Options.Editing = False
              Width = 80
            end
            object cxGridNotPackcolorName: TcxGridDBColumn
              DataBinding.FieldName = 'colorName'
              Options.Editing = False
              Width = 80
            end
            object cxGridNotPacksizeName: TcxGridDBColumn
              DataBinding.FieldName = 'sizeName'
              Options.Editing = False
              Width = 48
            end
            object cxGridNotPackcupName: TcxGridDBColumn
              DataBinding.FieldName = 'cupName'
              Options.Editing = False
              Width = 47
            end
            object cxGridNotPackFdpPrice: TcxGridDBColumn
              DataBinding.FieldName = 'FdpPrice'
              Options.Editing = False
              Width = 61
            end
            object cxGridNotPackFqty: TcxGridDBColumn
              DataBinding.FieldName = 'Fqty'
              Options.Editing = False
              Width = 66
            end
            object cxGridNotPackPostQty: TcxGridDBColumn
              DataBinding.FieldName = 'PostQty'
              Options.Editing = False
              Width = 70
            end
            object cxGridNotPackFNotFiniQty: TcxGridDBColumn
              DataBinding.FieldName = 'FNotFiniQty'
              Options.Editing = False
              Width = 68
            end
            object cxGridNotPackFallotQty: TcxGridDBColumn
              DataBinding.FieldName = 'FallotQty'
              Styles.Content = cxStyle1
              Width = 80
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGridNotPack
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #37197#30721
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 991
          Height = 352
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          object cxGridPack: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = cxGridPackFocusedRecordChanged
            DataController.DataSource = dsPack
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OptionsView.Indicator = True
            Bands = <
              item
                Caption = #22522#26412#20449#24687
              end
              item
                Caption = #35843#25320#23610#30721#26126#32454#25968#37327
              end
              item
                Caption = #20854#23427#20449#24687
              end>
            object cxGridPackFMaterialID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FMaterialID'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridPackFColorID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FColorID'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridPackFPackID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FPackID'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridPackFCupID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FCupID'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridPackMaterialNumber: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MaterialNumber'
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridPackMaterialName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MaterialName'
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridPackcolorNumber: TcxGridDBBandedColumn
              DataBinding.FieldName = 'colorNumber'
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridPackcolorName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'colorName'
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridPackpackName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'packName'
              Options.Editing = False
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridPackcupName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'cupName'
              Options.Editing = False
              Width = 46
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridPackallotRate: TcxGridDBBandedColumn
              DataBinding.FieldName = 'allotRate'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridPackFdpPrice: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FdpPrice'
              Options.Editing = False
              Width = 56
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridPackFqty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Fqty'
              Options.Editing = False
              Width = 61
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridPackPostQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PostQty'
              Options.Editing = False
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridPackFNotFiniQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotFiniQty'
              Options.Editing = False
              Width = 74
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridPackFallotQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FallotQty'
              Styles.Content = cxStyle1
              Width = 61
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_1'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_2'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_3'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_4'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_5'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_6: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_6'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_7: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_7'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_8: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_8'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_9: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_9'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_10: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_10'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_11: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_11'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_12: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_12'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_13: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_13'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_14: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_14'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_15: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_15'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_16: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_16'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_17: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_17'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_18: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_18'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_19: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_19'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_20: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_20'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_21: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_21'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_22: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_22'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_23: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_23'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_24: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_24'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_25: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_25'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_26: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_26'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_27: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_27'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_28: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_28'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_29: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_29'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object cxGridPackfAmount_30: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fAmount_30'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object cxGridPackfSumQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'fSumQty'
              Options.Editing = False
              Width = 45
              Position.BandIndex = 1
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object cxGridPackbrandName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'brandName'
              Options.Editing = False
              Width = 47
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridPackyearsName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'yearsName'
              Options.Editing = False
              Width = 44
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridPackattrName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'attrName'
              Options.Editing = False
              Width = 60
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridPack
          end
        end
      end
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 565
    Width = 993
    Height = 38
    Align = alBottom
    Color = 16511980
    TabOrder = 2
    DesignSize = (
      993
      38)
    object btn_Alter: TcxButton
      Left = 808
      Top = 7
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #30830#23450'(&Y)'
      TabOrder = 1
      OnClick = btn_AlterClick
      LookAndFeel.Kind = lfOffice11
    end
    object btn_Exit: TcxButton
      Left = 894
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #36864#20986'(&E)'
      TabOrder = 2
      OnClick = btn_ExitClick
      LookAndFeel.Kind = lfOffice11
    end
    object btn_NotQty: TcxButton
      Left = 8
      Top = 5
      Width = 129
      Height = 25
      Caption = #20840#37096#31561#20110#26410#23436#25104#25968
      TabOrder = 0
      OnClick = btn_NotQtyClick
      LookAndFeel.Kind = lfOffice11
    end
    object chk_NotPackBill: TcxCheckBox
      Left = 666
      Top = 9
      Anchors = [akTop, akRight]
      Caption = #29983#25104#25955#30721#21333#25454
      TabOrder = 3
      Visible = False
      Width = 121
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 720
    Top = 368
  end
  object cdsSrcBill: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 809
    Top = 55
  end
  object cdsSrcBillEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 817
    Top = 244
  end
  object cdsPack: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsPackCalcFields
    Left = 137
    Top = 420
    object cdsPackFMaterialID: TStringField
      FieldName = 'FMaterialID'
      Size = 60
    end
    object cdsPackFColorID: TStringField
      FieldName = 'FColorID'
      Size = 60
    end
    object cdsPackFPackID: TStringField
      FieldName = 'FPackID'
      Size = 60
    end
    object cdsPackFCupID: TStringField
      FieldName = 'FCupID'
      Size = 60
    end
    object cdsPackMaterialNumber: TStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MaterialNumber'
      Size = 60
    end
    object cdsPackMaterialName: TStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MaterialName'
      Size = 80
    end
    object cdsPackbrandName: TStringField
      DisplayLabel = #21697#29260
      FieldName = 'brandName'
      Size = 60
    end
    object cdsPackyearsName: TStringField
      DisplayLabel = #24180#20221
      FieldName = 'yearsName'
      Size = 60
    end
    object cdsPackattrName: TStringField
      DisplayLabel = #27874#27573
      FieldName = 'attrName'
      Size = 60
    end
    object cdsPackcolorNumber: TStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'colorNumber'
      Size = 60
    end
    object cdsPackcolorName: TStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'colorName'
      Size = 60
    end
    object cdsPackpackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'packName'
      Size = 60
    end
    object cdsPackcupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'cupName'
      Size = 60
    end
    object cdsPackallotRate: TIntegerField
      FieldName = 'allotRate'
    end
    object cdsPackFdpPrice: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'FdpPrice'
    end
    object cdsPackFqty: TIntegerField
      DisplayLabel = #35746#36135#31665#25968
      FieldName = 'Fqty'
    end
    object cdsPackPostQty: TIntegerField
      DisplayLabel = #24050#37197#36135#31665#25968
      FieldName = 'PostQty'
    end
    object cdsPackFNotFiniQty: TIntegerField
      DisplayLabel = #26410#23436#25104#31665#25968
      FieldName = 'FNotFiniQty'
    end
    object cdsPackFallotQty: TIntegerField
      DisplayLabel = #35843#25320#31665#25968
      FieldName = 'FallotQty'
      OnChange = cdsPackFallotQtyChange
      OnValidate = cdsPackFallotQtyValidate
    end
    object cdsPackfAmount_1: TIntegerField
      FieldName = 'fAmount_1'
    end
    object cdsPackfAmount_2: TIntegerField
      FieldName = 'fAmount_2'
    end
    object cdsPackfAmount_3: TIntegerField
      FieldName = 'fAmount_3'
    end
    object cdsPackfAmount_4: TIntegerField
      FieldName = 'fAmount_4'
    end
    object cdsPackfAmount_5: TIntegerField
      FieldName = 'fAmount_5'
    end
    object cdsPackfAmount_6: TIntegerField
      FieldName = 'fAmount_6'
    end
    object cdsPackfAmount_7: TIntegerField
      FieldName = 'fAmount_7'
    end
    object cdsPackfAmount_8: TIntegerField
      FieldName = 'fAmount_8'
    end
    object cdsPackfAmount_9: TIntegerField
      FieldName = 'fAmount_9'
    end
    object cdsPackfAmount_10: TIntegerField
      FieldName = 'fAmount_10'
    end
    object cdsPackfAmount_11: TIntegerField
      FieldName = 'fAmount_11'
    end
    object cdsPackfAmount_12: TIntegerField
      FieldName = 'fAmount_12'
    end
    object cdsPackfAmount_13: TIntegerField
      FieldName = 'fAmount_13'
    end
    object cdsPackfAmount_14: TIntegerField
      FieldName = 'fAmount_14'
    end
    object cdsPackfAmount_15: TIntegerField
      FieldName = 'fAmount_15'
    end
    object cdsPackfAmount_16: TIntegerField
      FieldName = 'fAmount_16'
    end
    object cdsPackfAmount_17: TIntegerField
      FieldName = 'fAmount_17'
    end
    object cdsPackfAmount_18: TIntegerField
      FieldName = 'fAmount_18'
    end
    object cdsPackfAmount_19: TIntegerField
      FieldName = 'fAmount_19'
    end
    object cdsPackfAmount_20: TIntegerField
      FieldName = 'fAmount_20'
    end
    object cdsPackfAmount_21: TIntegerField
      FieldName = 'fAmount_21'
    end
    object cdsPackfAmount_22: TIntegerField
      FieldName = 'fAmount_22'
    end
    object cdsPackfAmount_23: TIntegerField
      FieldName = 'fAmount_23'
    end
    object cdsPackfAmount_24: TIntegerField
      FieldName = 'fAmount_24'
    end
    object cdsPackfAmount_25: TIntegerField
      FieldName = 'fAmount_25'
    end
    object cdsPackfAmount_26: TIntegerField
      FieldName = 'fAmount_26'
    end
    object cdsPackfAmount_27: TIntegerField
      FieldName = 'fAmount_27'
    end
    object cdsPackfAmount_28: TIntegerField
      FieldName = 'fAmount_28'
    end
    object cdsPackfAmount_29: TIntegerField
      FieldName = 'fAmount_29'
    end
    object cdsPackfAmount_30: TIntegerField
      FieldName = 'fAmount_30'
    end
    object cdsPackfSumQty: TIntegerField
      DisplayLabel = #21512#35745
      FieldKind = fkCalculated
      FieldName = 'fSumQty'
      Calculated = True
    end
    object cdsPackcfsizegroupid: TStringField
      FieldName = 'cfsizegroupid'
      Size = 80
    end
  end
  object dsPack: TDataSource
    DataSet = cdsPack
    Left = 217
    Top = 420
  end
  object dsNotPack: TDataSource
    DataSet = cdsNotPack
    Left = 217
    Top = 364
  end
  object cdsNotPack: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 145
    Top = 364
    object StringField1: TStringField
      FieldName = 'FEntryID'
      Size = 60
    end
    object StringField2: TStringField
      FieldName = 'FMaterialID'
      Size = 60
    end
    object StringField3: TStringField
      FieldName = 'FColorID'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'FSizeID'
      Size = 60
    end
    object StringField5: TStringField
      FieldName = 'FPackID'
      Size = 60
    end
    object StringField6: TStringField
      FieldName = 'FCupID'
      Size = 60
    end
    object StringField7: TStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MaterialNumber'
      Size = 60
    end
    object StringField8: TStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MaterialName'
      Size = 80
    end
    object StringField9: TStringField
      DisplayLabel = #21697#29260
      FieldName = 'brandName'
      Size = 60
    end
    object StringField10: TStringField
      DisplayLabel = #24180#20221
      FieldName = 'yearsName'
      Size = 60
    end
    object StringField11: TStringField
      DisplayLabel = #27874#27573
      FieldName = 'attrName'
      Size = 60
    end
    object StringField12: TStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'colorNumber'
      Size = 60
    end
    object StringField13: TStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'colorName'
      Size = 60
    end
    object StringField14: TStringField
      DisplayLabel = #23610#30721
      FieldName = 'sizeName'
      Size = 60
    end
    object StringField16: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'cupName'
      Size = 60
    end
    object FloatField1: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'FdpPrice'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = #35746#36135#25968
      FieldName = 'Fqty'
    end
    object IntegerField4: TIntegerField
      DisplayLabel = #24050#37197#36135#25968
      FieldName = 'PostQty'
    end
    object IntegerField5: TIntegerField
      DisplayLabel = #26410#23436#25104#25968
      FieldName = 'FNotFiniQty'
    end
    object IntegerField6: TIntegerField
      DisplayLabel = #35843#25320#25968
      FieldName = 'FallotQty'
      OnChange = IntegerField6Change
    end
  end
  object cdsPub: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 161
    Top = 276
  end
  object qrySizegrouppackallot: TADOQuery
    Parameters = <>
    Left = 728
    Top = 75
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
  end
  object cdsDetail: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    BeforePost = cdsDetailBeforePost
    OnNewRecord = cdsDetailNewRecord
    Left = 680
    Top = 463
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
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailFDISCOUNTCONDITION: TFloatField
      FieldName = 'FDISCOUNTCONDITION'
    end
    object cdsDetailFDISCOUNTTYPE: TFloatField
      FieldName = 'FDISCOUNTTYPE'
    end
    object cdsDetailFDISCOUNT: TFloatField
      FieldName = 'FDISCOUNT'
    end
    object cdsDetailFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailFSENDDATE: TDateTimeField
      FieldName = 'FSENDDATE'
    end
    object cdsDetailFDELIVERYDATE: TDateTimeField
      FieldName = 'FDELIVERYDATE'
    end
    object cdsDetailFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFSENDOVERRATE: TFloatField
      FieldName = 'FSENDOVERRATE'
    end
    object cdsDetailFSENDOWINGRATE: TFloatField
      FieldName = 'FSENDOWINGRATE'
    end
    object cdsDetailFSENDADVANCEDAY: TFloatField
      FieldName = 'FSENDADVANCEDAY'
    end
    object cdsDetailFSENDDEFERRALDAY: TFloatField
      FieldName = 'FSENDDEFERRALDAY'
    end
    object cdsDetailFTOTALISSUEQTY: TFloatField
      FieldName = 'FTOTALISSUEQTY'
    end
    object cdsDetailFTOTALRETURNEDQTY: TFloatField
      FieldName = 'FTOTALRETURNEDQTY'
    end
    object cdsDetailFTOTALINVOICEDQTY: TFloatField
      FieldName = 'FTOTALINVOICEDQTY'
    end
    object cdsDetailFTOTALSHIPPINGQTY: TFloatField
      FieldName = 'FTOTALSHIPPINGQTY'
    end
    object cdsDetailFTOTALRECEIVEDAMOUNT: TFloatField
      FieldName = 'FTOTALRECEIVEDAMOUNT'
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFTOTALISSUEBASEQTY: TFloatField
      FieldName = 'FTOTALISSUEBASEQTY'
    end
    object cdsDetailFTOTALREBASEQTY: TFloatField
      FieldName = 'FTOTALREBASEQTY'
    end
    object cdsDetailFTOLINVOIDBASEQTY: TFloatField
      FieldName = 'FTOLINVOIDBASEQTY'
    end
    object cdsDetailFTOTALSHIPBASEQTY: TFloatField
      FieldName = 'FTOTALSHIPBASEQTY'
    end
    object cdsDetailFTOTALUNRETURNBASEQTY: TFloatField
      FieldName = 'FTOTALUNRETURNBASEQTY'
    end
    object cdsDetailFTOTALUNISSUEBASEQTY: TFloatField
      FieldName = 'FTOTALUNISSUEBASEQTY'
    end
    object cdsDetailFTOTALUNSHIPBASEQTY: TFloatField
      FieldName = 'FTOTALUNSHIPBASEQTY'
    end
    object cdsDetailFTOTALUNISSUEQTY: TFloatField
      FieldName = 'FTOTALUNISSUEQTY'
    end
    object cdsDetailFISLOCKED: TFloatField
      FieldName = 'FISLOCKED'
    end
    object cdsDetailFLOCKQTY: TFloatField
      FieldName = 'FLOCKQTY'
    end
    object cdsDetailFLOCKBASEQTY: TFloatField
      FieldName = 'FLOCKBASEQTY'
    end
    object cdsDetailFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailFISBYSALEORDER: TFloatField
      FieldName = 'FISBYSALEORDER'
    end
    object cdsDetailFORDEREDQTY: TFloatField
      FieldName = 'FORDEREDQTY'
    end
    object cdsDetailFUNORDEREDQTY: TFloatField
      FieldName = 'FUNORDEREDQTY'
    end
    object cdsDetailFPREPAYMENTRATE: TFloatField
      FieldName = 'FPREPAYMENTRATE'
    end
    object cdsDetailFPREPAYMENT: TFloatField
      FieldName = 'FPREPAYMENT'
    end
    object cdsDetailFPRERECEIVED: TFloatField
      FieldName = 'FPRERECEIVED'
    end
    object cdsDetailFUNPRERECEIVEDAMOUNT: TFloatField
      FieldName = 'FUNPRERECEIVEDAMOUNT'
    end
    object cdsDetailFQUANTITYUNCTRL: TFloatField
      FieldName = 'FQUANTITYUNCTRL'
    end
    object cdsDetailFTIMEUNCTRL: TFloatField
      FieldName = 'FTIMEUNCTRL'
    end
    object cdsDetailFDELIVERYDATEQTY: TFloatField
      FieldName = 'FDELIVERYDATEQTY'
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFTOTALINVOICEDAMT: TFloatField
      FieldName = 'FTOTALINVOICEDAMT'
    end
    object cdsDetailFTOTALARAMOUNT: TFloatField
      FieldName = 'FTOTALARAMOUNT'
    end
    object cdsDetailFVERSION: TFloatField
      FieldName = 'FVERSION'
    end
    object cdsDetailFOLDSTATUS: TFloatField
      FieldName = 'FOLDSTATUS'
    end
    object cdsDetailFOLDID: TWideStringField
      FieldName = 'FOLDID'
      Size = 44
    end
    object cdsDetailFISBETWEENCOMPANYSEND: TFloatField
      FieldName = 'FISBETWEENCOMPANYSEND'
    end
    object cdsDetailFTOTALREVERSEDQTY: TFloatField
      FieldName = 'FTOTALREVERSEDQTY'
    end
    object cdsDetailFTOTALREVERSEDBASEQTY: TFloatField
      FieldName = 'FTOTALREVERSEDBASEQTY'
    end
    object cdsDetailFPLANDELIVERYQTY: TFloatField
      FieldName = 'FPLANDELIVERYQTY'
    end
    object cdsDetailFTOTALCANCELLINGSTOCKQTY: TFloatField
      FieldName = 'FTOTALCANCELLINGSTOCKQTY'
    end
    object cdsDetailFTOTALSUPPLYSTOCKQTY: TFloatField
      FieldName = 'FTOTALSUPPLYSTOCKQTY'
    end
    object cdsDetailFDELIVERYCUSTOMERID: TWideStringField
      FieldName = 'FDELIVERYCUSTOMERID'
      Size = 44
    end
    object cdsDetailFPAYMENTCUSTOMERID: TWideStringField
      FieldName = 'FPAYMENTCUSTOMERID'
      Size = 44
    end
    object cdsDetailFRECEIVECUSTOMERID: TWideStringField
      FieldName = 'FRECEIVECUSTOMERID'
      Size = 44
    end
    object cdsDetailFSENDADDRESS: TWideStringField
      FieldName = 'FSENDADDRESS'
      Size = 510
    end
    object cdsDetailFARCLOSEDSTATUS: TFloatField
      FieldName = 'FARCLOSEDSTATUS'
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
    object cdsDetailFTOTALPRODUCTQTY: TFloatField
      FieldName = 'FTOTALPRODUCTQTY'
    end
    object cdsDetailFTOTALBASEPRODUCTQTY: TFloatField
      FieldName = 'FTOTALBASEPRODUCTQTY'
    end
    object cdsDetailFTOTALUNPRODUCTQTY: TFloatField
      FieldName = 'FTOTALUNPRODUCTQTY'
    end
    object cdsDetailFTOTALBASEUNPRODUCTQTY: TFloatField
      FieldName = 'FTOTALBASEUNPRODUCTQTY'
    end
    object cdsDetailFMATCHEDAMOUNT: TFloatField
      FieldName = 'FMATCHEDAMOUNT'
    end
    object cdsDetailFLOCKASSISTQTY: TFloatField
      FieldName = 'FLOCKASSISTQTY'
    end
    object cdsDetailFCHEAPRATE: TFloatField
      FieldName = 'FCHEAPRATE'
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailCFTOTALSALEOUTQTY: TFloatField
      FieldName = 'CFTOTALSALEOUTQTY'
    end
    object cdsDetailCFPRUORDERNUM: TFloatField
      FieldName = 'CFPRUORDERNUM'
    end
    object cdsDetailCFISPURORDER: TFloatField
      FieldName = 'CFISPURORDER'
    end
    object cdsDetailCFTOTALSALEPOSTQTY: TFloatField
      FieldName = 'CFTOTALSALEPOSTQTY'
    end
    object cdsDetailCFSRCPURORDERID: TWideStringField
      FieldName = 'CFSRCPURORDERID'
      Size = 44
    end
    object cdsDetailCFSRCPURORDERENTRYID: TWideStringField
      FieldName = 'CFSRCPURORDERENTRYID'
      Size = 44
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetailCFSUPPLIERID: TWideStringField
      FieldName = 'CFSUPPLIERID'
      Size = 44
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailCFASSISTNUM: TWideStringField
      FieldName = 'CFASSISTNUM'
      Size = 200
    end
    object cdsDetailCFINITQTY: TFloatField
      FieldName = 'CFINITQTY'
    end
    object cdsDetailCFINITPACKNUM: TFloatField
      FieldName = 'CFINITPACKNUM'
    end
    object cdsDetailCFADJUSTQTY: TFloatField
      FieldName = 'CFADJUSTQTY'
    end
    object cdsDetailCFADJUSTPACKNUM: TFloatField
      FieldName = 'CFADJUSTPACKNUM'
    end
  end
  object cdsMaster: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    AfterInsert = cdsMasterAfterInsert
    BeforePost = cdsMasterBeforePost
    OnNewRecord = cdsMasterNewRecord
    Left = 608
    Top = 466
    object cdsMasterFCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 60
      Calculated = True
    end
    object cdsMasterFAuditorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMasterFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMasterFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMasterFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsMasterFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMasterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsMasterFBIZDATE: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsMasterFHANDLERID: TWideStringField
      FieldName = 'FHANDLERID'
      Size = 44
    end
    object cdsMasterFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 160
    end
    object cdsMasterFHASEFFECTED: TFloatField
      FieldName = 'FHASEFFECTED'
    end
    object cdsMasterFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMasterFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsMasterFSOURCEFUNCTION: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 160
    end
    object cdsMasterFAUDITTIME: TDateTimeField
      FieldName = 'FAUDITTIME'
    end
    object cdsMasterFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsMasterFBIZTYPEID: TWideStringField
      FieldName = 'FBIZTYPEID'
      Size = 44
    end
    object cdsMasterFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsMasterFBILLTYPEID: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
    object cdsMasterFYEAR: TFloatField
      FieldName = 'FYEAR'
    end
    object cdsMasterFPERIOD: TFloatField
      FieldName = 'FPERIOD'
    end
    object cdsMasterFISINNERSALE: TFloatField
      FieldName = 'FISINNERSALE'
    end
    object cdsMasterFCUSTOMERORDERNUMBER: TWideStringField
      FieldName = 'FCUSTOMERORDERNUMBER'
      Size = 160
    end
    object cdsMasterFORDERCUSTOMERID: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsMasterFDIRECTSUPPLIERID: TWideStringField
      FieldName = 'FDIRECTSUPPLIERID'
      Size = 44
    end
    object cdsMasterFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
      Size = 44
    end
    object cdsMasterFDELIVERYTYPEID: TWideStringField
      FieldName = 'FDELIVERYTYPEID'
      Size = 44
    end
    object cdsMasterFTRANSLEADTIME: TFloatField
      FieldName = 'FTRANSLEADTIME'
    end
    object cdsMasterFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFPAYMENTTYPEID: TWideStringField
      FieldName = 'FPAYMENTTYPEID'
      Size = 44
    end
    object cdsMasterFCASHDISCOUNTID: TWideStringField
      FieldName = 'FCASHDISCOUNTID'
      Size = 44
    end
    object cdsMasterFSETTLEMENTTYPEID: TWideStringField
      FieldName = 'FSETTLEMENTTYPEID'
      Size = 44
    end
    object cdsMasterFPREPAYMENT: TFloatField
      FieldName = 'FPREPAYMENT'
    end
    object cdsMasterFPREPAYMENTRATE: TFloatField
      FieldName = 'FPREPAYMENTRATE'
    end
    object cdsMasterFSALEORGUNITID: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsMasterFSALEGROUPID: TWideStringField
      FieldName = 'FSALEGROUPID'
      Size = 44
    end
    object cdsMasterFSALEPERSONID: TWideStringField
      FieldName = 'FSALEPERSONID'
      Size = 44
    end
    object cdsMasterFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsMasterFTOTALAMOUNT: TFloatField
      FieldName = 'FTOTALAMOUNT'
    end
    object cdsMasterFTOTALTAX: TFloatField
      FieldName = 'FTOTALTAX'
    end
    object cdsMasterFTOTALTAXAMOUNT: TFloatField
      FieldName = 'FTOTALTAXAMOUNT'
    end
    object cdsMasterFPRERECEIVED: TFloatField
      FieldName = 'FPRERECEIVED'
    end
    object cdsMasterFUNPRERECEIVEDAMOUNT: TFloatField
      FieldName = 'FUNPRERECEIVEDAMOUNT'
    end
    object cdsMasterFSENDADDRESS: TWideStringField
      FieldName = 'FSENDADDRESS'
      Size = 510
    end
    object cdsMasterFISSYSBILL: TFloatField
      FieldName = 'FISSYSBILL'
    end
    object cdsMasterFCONVERTMODE: TFloatField
      FieldName = 'FCONVERTMODE'
    end
    object cdsMasterFLOCALTOTALAMOUNT: TFloatField
      FieldName = 'FLOCALTOTALAMOUNT'
    end
    object cdsMasterFLOCALTOTALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTOTALTAXAMOUNT'
    end
    object cdsMasterFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFISINTAX: TFloatField
      FieldName = 'FISINTAX'
    end
    object cdsMasterFCUSTOMERPHONE: TWideStringField
      FieldName = 'FCUSTOMERPHONE'
      Size = 255
    end
    object cdsMasterFLINKMAN: TWideStringField
      FieldName = 'FLINKMAN'
      Size = 255
    end
    object cdsMasterFALTERDATE: TDateTimeField
      FieldName = 'FALTERDATE'
    end
    object cdsMasterFVERSION: TFloatField
      FieldName = 'FVERSION'
    end
    object cdsMasterFOLDSTATUS: TFloatField
      FieldName = 'FOLDSTATUS'
    end
    object cdsMasterFOLDID: TWideStringField
      FieldName = 'FOLDID'
      Size = 44
    end
    object cdsMasterFALTERPERSON: TWideStringField
      FieldName = 'FALTERPERSON'
      Size = 44
    end
    object cdsMasterFISCENTRALBALANCE: TFloatField
      FieldName = 'FISCENTRALBALANCE'
    end
    object cdsMasterFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFISREVERSE: TFloatField
      FieldName = 'FISREVERSE'
    end
    object cdsMasterFBEENPAIDPREPAYMENT: TFloatField
      FieldName = 'FBEENPAIDPREPAYMENT'
    end
    object cdsMasterFRECEIVECONDITIONID: TWideStringField
      FieldName = 'FRECEIVECONDITIONID'
      Size = 44
    end
    object cdsMasterFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsMasterFISMATCHED: TFloatField
      FieldName = 'FISMATCHED'
    end
    object cdsMasterFISSQUAREBALANCE: TFloatField
      FieldName = 'FISSQUAREBALANCE'
    end
    object cdsMasterFBALANCECOMPANYORGUNITID: TWideStringField
      FieldName = 'FBALANCECOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFBALANCESTORAGEORGUNITID: TWideStringField
      FieldName = 'FBALANCESTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFBALANCEWAREHOUSEID: TWideStringField
      FieldName = 'FBALANCEWAREHOUSEID'
      Size = 44
    end
    object cdsMasterCFTYPINFORMATION: TWideStringField
      FieldName = 'CFTYPINFORMATION'
      Size = 100
    end
    object cdsMasterCFPRICETYPEID: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterCFORDERTYPEID: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterCFRECEIVESTOREUNIT: TWideStringField
      FieldName = 'CFRECEIVESTOREUNIT'
      Size = 44
    end
    object cdsMasterFBALANCESALEORGUNITID: TWideStringField
      FieldName = 'FBALANCESALEORGUNITID'
      Size = 44
    end
    object cdsMasterCFORDERINGDEFID: TWideStringField
      FieldName = 'CFORDERINGDEFID'
      Size = 44
    end
    object cdsMasterCFINWAREHOUSEID: TWideStringField
      FieldName = 'CFINWAREHOUSEID'
      Size = 44
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 100
    end
    object cdsMasterCFSALETYPE: TWideStringField
      FieldName = 'CFSALETYPE'
      Size = 10
    end
    object cdsMasterCFDELIVERYDATE: TDateTimeField
      FieldName = 'CFDELIVERYDATE'
    end
    object cdsMasterCFCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFCustName'
      Size = 100
      Calculated = True
    end
    object cdsMasterCFSendWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSendWareName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFReceivOrgName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivOrgName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFReceivWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivWareName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFSalorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSalorName'
      Size = 60
      Calculated = True
    end
  end
end
