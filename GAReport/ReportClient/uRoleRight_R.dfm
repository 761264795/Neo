object RoleRightFrm: TRoleRightFrm
  Left = 153
  Top = 47
  Width = 1074
  Height = 665
  Caption = #35282#33394#26435#38480#31649#29702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 225
    Top = 42
    Height = 572
  end
  object stat1: TdxStatusBar
    Left = 0
    Top = 614
    Width = 1066
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clRed
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Width = 300
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = #25552#31034':'#22914#26524#27809#26377#25214#21040#26435#38480#39033','#35831#21333#20987#12304#26356#26032#26435#38480#39033#12305#26356#26032#26435#38480#39033#30446'!'
      end>
    PaintStyle = stpsOffice11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object leftPl: TPanel
    Left = 0
    Top = 42
    Width = 225
    Height = 572
    Align = alLeft
    TabOrder = 1
    object cxGriduser: TcxGrid
      Left = 1
      Top = 1
      Width = 223
      Height = 570
      Align = alClient
      TabOrder = 0
      OnEnter = cxGriduserEnter
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
      object cxGriduserDBTv: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGriduserDBTvCustomDrawCell
        OnFocusedRecordChanged = cxGriduserDBTvFocusedRecordChanged
        DataController.DataSource = dsUser
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        Styles.Background = cxStyle1
        Styles.Content = cxStyle1
        object cxGriduserDBTvColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'img'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = ilimage
          Properties.Items = <
            item
              ImageIndex = 56
              Value = 1
            end
            item
              ImageIndex = 56
              Value = 0
            end>
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 31
          IsCaptionAssigned = True
        end
        object cxGriduserDBTvFNUMBER: TcxGridDBColumn
          Caption = #35282#33394#32534#21495
          DataBinding.FieldName = 'FNUMBER'
          Width = 63
        end
        object cxGriduserDBTvFNAME_L2: TcxGridDBColumn
          Caption = #35282#33394#21517#31216
          DataBinding.FieldName = 'FNAME_L2'
          Width = 111
        end
      end
      object cxGriduserLv: TcxGridLevel
        GridView = cxGriduserDBTv
      end
    end
  end
  object Panel2: TPanel
    Left = 228
    Top = 42
    Width = 838
    Height = 572
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 6
    object Splitter3: TSplitter
      Left = 225
      Top = 0
      Height = 572
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 225
      Height = 572
      Align = alLeft
      BevelOuter = bvLowered
      TabOrder = 0
      object ReportTree: TcxDBTreeList
        Left = 1
        Top = 1
        Width = 223
        Height = 570
        Align = alClient
        Bands = <
          item
          end>
        DataController.DataSource = dsType
        DataController.ImageIndexField = 'FIMGAGEINDEX'
        DataController.ParentField = 'FPARENTID'
        DataController.KeyField = 'TREEID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        Images = DMPub.ImageList16
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        OptionsData.Editing = False
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Headers = False
        ParentFont = False
        RootValue = -1
        Styles.Background = cxStyle1
        Styles.Content = cxStyle1
        TabOrder = 0
        OnFocusedNodeChanged = ReportTreeFocusedNodeChanged
        object TreeListcxDBTreeListColumn2: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'TREEID'
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn1: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'ID'
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn3: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FNUMBER'
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn4: TcxDBTreeListColumn
          DataBinding.FieldName = 'REPORTTYPENAME'
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn5: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FPARENTID'
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn6: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FISROOT'
          Position.ColIndex = 5
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn7: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FIMGAGEINDEX'
          Position.ColIndex = 6
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn8: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FSELECTIMGAGEINDEX'
          Position.ColIndex = 7
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn9: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FISSYSTEM'
          Position.ColIndex = 8
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn10: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FLEVEL'
          Position.ColIndex = 9
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn11: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FVISIBLE'
          Position.ColIndex = 10
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn12: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FTABLENAME'
          Position.ColIndex = 11
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn13: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FCREATORID'
          Position.ColIndex = 12
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn14: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FLASTUPDATEUSERID'
          Position.ColIndex = 13
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object TreeListcxDBTreeListColumn15: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FLONGNUMBER'
          Position.ColIndex = 14
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
    end
    object ClientPL: TPanel
      Left = 228
      Top = 0
      Width = 610
      Height = 572
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 1
        Top = 389
        Width = 608
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object TopPl: TPanel
        Left = 1
        Top = 1
        Width = 608
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Caption = 'mian'
        Color = 16511980
        TabOrder = 0
        object Label1: TLabel
          Left = 25
          Top = 12
          Width = 105
          Height = 13
          AutoSize = False
          Caption = #26597#30475#21333#20215
          OnClick = Label1Click
        end
        object Label2: TLabel
          Left = 150
          Top = 12
          Width = 74
          Height = 13
          AutoSize = False
          Caption = #26597#30475#37329#39069
          OnClick = Label2Click
        end
        object Label3: TLabel
          Left = 264
          Top = 12
          Width = 57
          Height = 13
          AutoSize = False
          Caption = #26597#30475#25104#26412
          OnClick = Label3Click
        end
        object Label4: TLabel
          Left = 368
          Top = 12
          Width = 57
          Height = 13
          AutoSize = False
          Caption = #39044#30041
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = Label4Click
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 8
          Top = 8
          AutoSize = False
          DataBinding.DataField = 'ISSEEPRICE'
          DataBinding.DataSource = dsSee
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.TextStyle = []
          Style.TransparentBorder = False
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 0
          Height = 21
          Width = 17
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 128
          Top = 8
          DataBinding.DataField = 'ISSEEMONEY'
          DataBinding.DataSource = dsSee
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 1
          Width = 25
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 240
          Top = 8
          DataBinding.DataField = 'ISSEEA'
          DataBinding.DataSource = dsSee
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 2
          Width = 25
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 344
          Top = 8
          DataBinding.DataField = 'ISSEEB'
          DataBinding.DataSource = dsSee
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 3
          Width = 25
        end
      end
      object BtPL: TPanel
        Left = 1
        Top = 392
        Width = 608
        Height = 179
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object cxGridModuleList: TcxGrid
          Left = 0
          Top = 0
          Width = 608
          Height = 179
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnEnter = cxGridModuleListEnter
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Green'
          object cxGridModuleListDBTv: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsModuleList
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OptionsView.Indicator = True
            object cxGridModuleListDBTvISSELECT: TcxGridDBColumn
              DataBinding.FieldName = 'ISSELECT'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 38
            end
            object cxGridModuleListDBTvUSER_ID: TcxGridDBColumn
              DataBinding.FieldName = 'USER_ID'
              Visible = False
              Options.Editing = False
              Width = 82
            end
            object cxGridModuleListDBTvMODULE_ID: TcxGridDBColumn
              DataBinding.FieldName = 'MODULE_ID'
              Visible = False
              Options.Editing = False
            end
            object cxGridModuleListDBTvMODULE_LIST_ID: TcxGridDBColumn
              DataBinding.FieldName = 'MODULE_LIST_ID'
              Visible = False
              Options.Editing = False
              Width = 103
            end
            object cxGridModuleListDBTvMODULE_LIST_NAME: TcxGridDBColumn
              DataBinding.FieldName = 'MODULE_LIST_NAME'
              Options.Editing = False
              Width = 290
            end
          end
          object cxGridModuleListLv: TcxGridLevel
            GridView = cxGridModuleListDBTv
          end
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 33
        Width = 608
        Height = 356
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object cxGridModule: TcxGrid
          Left = 0
          Top = 0
          Width = 608
          Height = 356
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          OnEnter = cxGridModuleEnter
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Green'
          object cxGridModuleDBTv: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = cxGridModuleDBTvFocusedRecordChanged
            DataController.DataSource = dsModule
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OptionsView.Indicator = True
            object cxGridModuleDBTvISSELECT: TcxGridDBColumn
              DataBinding.FieldName = 'ISSELECT'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 37
            end
            object cxGridModuleDBTvMODULE_ID: TcxGridDBColumn
              DataBinding.FieldName = 'MODULE_ID'
              Visible = False
              Options.Editing = False
              Width = 94
            end
            object cxGridModuleDBTvMODULE_NAME: TcxGridDBColumn
              DataBinding.FieldName = 'MODULE_NAME'
              Options.Editing = False
              Width = 259
            end
            object cxGridModuleDBTvUSER_ID: TcxGridDBColumn
              DataBinding.FieldName = 'USER_ID'
              Visible = False
              Options.Editing = False
              Width = 100
            end
          end
          object cxGridModuleLv: TcxGridLevel
            GridView = cxGridModuleDBTv
          end
        end
      end
    end
  end
  object dxbrpmn1: TdxBarPopupMenu
    BarManager = dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbrlrgbtn1'
      end
      item
        Visible = True
        ItemName = 'exportExcel'
      end
      item
        Visible = True
        ItemName = 'ExportTEXT'
      end>
    UseOwnFont = False
    Left = 431
    Top = 65530
  end
  object dxbrpmn2: TdxBarPopupMenu
    BarManager = dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbrlrgbtn1'
      end
      item
        Visible = True
        ItemName = 'exportExcel'
      end
      item
        Visible = True
        ItemName = 'ExportTEXT'
      end>
    UseOwnFont = False
    Left = 466
    Top = 65531
  end
  object dxBar3: TdxBarPopupMenu
    BarManager = dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Printprevi'
      end
      item
        Visible = True
        ItemName = 'print'
      end
      item
        Visible = True
        ItemName = 'ReportSet'
      end>
    UseOwnFont = False
    Left = 509
    Top = 65529
  end
  object dxBar4: TdxBarPopupMenu
    BarManager = dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'FormatSet'
      end>
    UseOwnFont = False
    Left = 549
    Top = 65531
  end
  object DxBar5: TdxBarPopupMenu
    BarManager = dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Blbaudit'
      end
      item
        Visible = True
        ItemName = 'BlbUaudit'
      end>
    UseOwnFont = False
    Left = 586
    Top = 65530
  end
  object dxbrmngr1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Microsoft YaHei UI'
    Font.Style = []
    Categories.Strings = (
      #24037#20855#26639
      #23548#20986
      #25171#21360
      #37197#32622
      #23457#26680
      #23548#20986#25253#34920
      #23548#20837#25253#34920)
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.HotImages = ilimage
    ImageOptions.Images = ilimage
    ImageOptions.LargeImages = ilimage
    ImageOptions.LargeIcons = True
    MenuAnimations = maUnfold
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseSystemFont = True
    Left = 640
    DockControlHeights = (
      0
      0
      42
      0)
    object dxbrmngr1Bar1: TdxBar
      AllowQuickCustomizing = False
      Caption = #24037#20855#26639
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 39
      FloatClientHeight = 38
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxbrlrgbtnSaveBill'
        end
        item
          Visible = True
          ItemName = 'FindBillList'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbrlrgbtnExitEdit'
        end>
      OldName = #24037#20855#26639
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrlrgbtnNewBill: TdxBarLargeButton
      Caption = #26032#22686
      Category = 0
      Hint = #26032#22686
      Visible = ivAlways
      LargeImageIndex = 22
      PaintStyle = psCaptionGlyph
      ShortCut = 16462
      AutoGrayScale = False
      HotImageIndex = 22
    end
    object dxbrlrgbtnSaveBill: TdxBarLargeButton
      Caption = #20445#23384
      Category = 0
      Hint = #20445#23384
      Visible = ivAlways
      LargeImageIndex = 43
      ShortCut = 16467
      OnClick = dxbrlrgbtnSaveBillClick
      AutoGrayScale = False
      HotImageIndex = 43
    end
    object FindBillList: TdxBarLargeButton
      Caption = #23450#20301' '
      Category = 0
      Hint = #23450#20301' '
      Visible = ivAlways
      LargeImageIndex = 39
      ShortCut = 16454
      OnClick = FindBillListClick
      AutoGrayScale = False
      HotImageIndex = 39
    end
    object dxbrlrgbtnAuditingBill: TdxBarLargeButton
      Caption = #23457#26680
      Category = 0
      Hint = #23457#26680
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = DxBar5
      LargeImageIndex = 14
      AutoGrayScale = False
      HotImageIndex = 14
    end
    object dxbrlrgbtnFirstBill: TdxBarLargeButton
      Caption = #39318#34892
      Category = 0
      Hint = #39318#34892
      Visible = ivAlways
      DropDownEnabled = False
      LargeImageIndex = 46
      AutoGrayScale = False
      HotImageIndex = 46
    end
    object dxbrlrgbtnQBill: TdxBarLargeButton
      Caption = #21069#19968#34892
      Category = 0
      Hint = #21069#19968#34892
      Visible = ivAlways
      LargeImageIndex = 6
      AutoGrayScale = False
      HotImageIndex = 6
    end
    object dxbrlrgbtnNextBill: TdxBarLargeButton
      Caption = #21518#19968#34892
      Category = 0
      Hint = #21518#19968#34892
      Visible = ivAlways
      LargeImageIndex = 5
      AutoGrayScale = False
      HotImageIndex = 5
    end
    object dxbrlrgbtnBill: TdxBarLargeButton
      Caption = #23614#34892
      Category = 0
      Hint = #23614#34892
      Visible = ivAlways
      DropDownEnabled = False
      LargeImageIndex = 45
      AutoGrayScale = False
      HotImageIndex = 45
    end
    object dxbrlrgbtnEduce: TdxBarLargeButton
      Caption = #23548#20986
      Category = 0
      Hint = #23548#20986
      Visible = ivAlways
      ButtonStyle = bsDropDown
      CloseSubMenuOnClick = False
      LargeImageIndex = 38
      AutoGrayScale = False
      HotImageIndex = 38
    end
    object dxbrlrgbtnprint: TdxBarLargeButton
      Caption = #25171#21360
      Category = 0
      Hint = #25171#21360
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxBar3
      LargeImageIndex = 32
      HotImageIndex = 32
    end
    object dxbrlrgbtnPrintSet: TdxBarLargeButton
      Caption = #35774#32622
      Category = 0
      Hint = #35774#32622
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxBar4
      LargeImageIndex = 36
      AutoGrayScale = False
      HotImageIndex = 36
    end
    object dxbrlrgbtnExitEdit: TdxBarLargeButton
      Caption = #36820#22238
      Category = 0
      Hint = #36820#22238
      Visible = ivAlways
      LargeImageIndex = 28
      ShortCut = 16453
      OnClick = dxbrlrgbtnExitEditClick
      AutoGrayScale = False
      HotImageIndex = 28
    end
    object dxbrlrgbtnpause: TdxBarLargeButton
      Caption = #23548#20837
      Category = 0
      Hint = #23548#20837
      Visible = ivAlways
      ButtonStyle = bsDropDown
      LargeImageIndex = 15
      AutoGrayScale = False
      HotImageIndex = 15
    end
    object Format: TdxBarLargeButton
      Caption = #26684#24335
      Category = 0
      Hint = #26684#24335
      Visible = ivAlways
      LargeImageIndex = 34
      AutoGrayScale = False
      HotImageIndex = 34
    end
    object DelBill: TdxBarLargeButton
      Caption = #21024#38500
      Category = 0
      Hint = #21024#38500
      Visible = ivAlways
      LargeImageIndex = 33
      ShortCut = 16452
      AutoGrayScale = False
      HotImageIndex = 33
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = #26356#26032#26435#38480#39033
      Category = 0
      Hint = #26356#26032#26435#38480#39033
      Visible = ivAlways
      LargeImageIndex = 57
      ShortCut = 116
      OnClick = dxBarLargeButton1Click
      AutoGrayScale = False
      HotImageIndex = 57
      SyncImageIndex = False
      ImageIndex = 57
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #25910#32553
      Category = 0
      Hint = #25910#32553
      Visible = ivAlways
      LargeImageIndex = 51
      ShortCut = 117
      AutoGrayScale = False
      HotImageIndex = 51
    end
    object dxbrlrgbtn1: TdxBarLargeButton
      Caption = #23548#20986#21040'Excel'
      Category = 1
      Hint = #23548#20986#21040'Excel'
      Visible = ivAlways
      AllowAllUp = True
      LargeImageIndex = 29
      HotImageIndex = 29
    end
    object exportExcel: TdxBarLargeButton
      Caption = #23548#20986#21040'HTML'
      Category = 1
      Hint = #23548#20986#21040'HTML'
      Visible = ivAlways
      LargeImageIndex = 38
      HotImageIndex = 38
    end
    object ExportTEXT: TdxBarLargeButton
      Caption = #23548#20986#21040'TEXT'
      Category = 1
      Hint = #23548#20986#21040'TEXT'
      Visible = ivAlways
      LargeImageIndex = 9
      HotImageIndex = 9
    end
    object Printprevi: TdxBarLargeButton
      Caption = #25171#21360#39044#35272
      Category = 2
      Hint = #25171#21360#39044#35272
      Visible = ivAlways
      LargeImageIndex = 39
      HotImageIndex = 39
    end
    object print: TdxBarLargeButton
      Caption = #30452#25509#25171#21360
      Category = 2
      Hint = #30452#25509#25171#21360
      Visible = ivAlways
      LargeImageIndex = 32
      HotImageIndex = 32
    end
    object ReportSet: TdxBarLargeButton
      Caption = #25253#34920#35774#35745
      Category = 2
      Hint = #25253#34920#35774#35745
      Visible = ivAlways
      LargeImageIndex = 34
      HotImageIndex = 34
    end
    object FormatSet: TdxBarLargeButton
      Caption = #26684#24335#35774#32622
      Category = 3
      Hint = #26684#24335#35774#32622
      Visible = ivAlways
      LargeImageIndex = 34
      HotImageIndex = 34
    end
    object Blbaudit: TdxBarLargeButton
      Caption = #23457#26680
      Category = 4
      Hint = #23457#26680
      Visible = ivAlways
      LargeImageIndex = 14
      AutoGrayScale = False
      HotImageIndex = 14
    end
    object BlbUaudit: TdxBarLargeButton
      Caption = #21462#28040#23457#26680
      Category = 4
      Hint = #21462#28040#23457#26680
      Visible = ivAlways
      LargeImageIndex = 47
      HotImageIndex = 47
    end
    object btnOutSelect: TdxBarButton
      Caption = #23548#20986#36873#20013#25253#34920
      Category = 5
      Hint = #23548#20986#36873#20013#25253#34920
      Visible = ivAlways
      ImageIndex = 38
    end
    object btnOutAll: TdxBarButton
      Caption = #23548#20986#25152#26377#25253#34920
      Category = 5
      Hint = #23548#20986#25152#26377#25253#34920
      Visible = ivAlways
      ImageIndex = 38
    end
    object btnInSelect: TdxBarButton
      Caption = #23548#20837#36873#20013#25253#34920
      Category = 6
      Hint = #23548#20837#36873#20013#25253#34920
      Visible = ivAlways
      ImageIndex = 15
    end
    object btnInAll: TdxBarButton
      Category = 6
      Visible = ivAlways
      ImageIndex = 15
    end
  end
  object ilimage: TImageList
    Left = 936
    Top = 8
    Bitmap = {
      494C01013A003B00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000F0000000010020000000000000F0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B54A0800C6521800EF634200F763
      4A00F7634A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073849C0000428C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B54A0800CE522100F7634A00FF6B
      5200FF7B5A00FF846B00F76B5A00F75A4200A55A210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002173AD001873AD0029528400297BB50029A5D600295A
      8C00005294000863A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD4A1000D6522900F7735A00FF8C
      6300FF846300FFD6CE00FFA59400EF5239009C5A2100008C000010AD290021C6
      52004ACE63005AC65A0000940000008400000000000000000000000000000000
      000000000000000000004AADDE0042B5E7000863A5002994CE0031ADDE00086B
      AD001094C6001094CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C64A1800DE633900FF8C6B00FF84
      5A00FFAD9400FFFFFF00FFCEBD00EF6342009452180010A5210031D66B0031D6
      5A00ADF7AD00B5F7B50010AD2100008400000000000000000000000000000000
      00000000000021529400298CC6004ABDEF0042BDEF0042B5E70031ADDE0029A5
      DE0018A5D6001094C60000428C00526384000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DE633900FF8C6300C673
      5A00ADA5A500C6CECE00EFA58C00FF7B5200A563290018B5310021C6520042A5
      5200ADC6A50084CE840021BD4A00008C10000000000000000000000000000000
      000000000000214A940042ADE70052C6F7004ABDEF0063BDE7004A849C001873
      A5001094CE001094C600006BA500216394000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A637B00316B
      AD002173BD00216BAD008C636B00000000000000000000390800003110001031
      6300183184001042520021A54A00000000000000000000000000000000000000
      0000000000006BC6E70052C6EF004ABDEF006BC6EF00DEDEDE006B6B6B00295A
      73001094C6000894CE00109CCE0063ADBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002184B5001884DE00319C
      FF00319CFF002994F7002984D60000000000000810000000000008104A001042
      B5000839AD000831A50010428C00000000000000000000000000000000000000
      000000000000218C390039A5B5004ABDEF006BC6EF00DEDEDE006B6B6B00316B
      7B0018A5D600189CCE00189CCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003184A500399CD60042ADFF0042AD
      FF0042ADFF0042ADFF0039ADFF002184D6000008100000001000184AAD001863
      D600185AC600185AC6001852C6000021A5000000000063A55A00088C1000007B
      00003994290039CE520031AD9C0042B5DE0063C6D600D6D6D60063636300426B
      7B0029A5D60029A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003184A50042A5E7004AB5FF004AB5
      FF0042ADFF0042ADFF004AB5FF003994DE000008080000082100216BCE002173
      E7002163CE00216BD600216BD6001852B50000000000299C29004ADE6B0021B5
      310018AD290039CE520018A5390018A55A0042B54200C6B59C00525252008C73
      630042A5C600189CCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003184A5003184A50042A5D6004AAD
      EF004AB5FF004AADFF004AB5FF00318CD6000008100000000800216BBD003194
      FF00298CF7003194FF00297BDE00215AAD0000000000318C18004ADE6B004AE7
      730039D65A0039CE520029C6420021BD310018A51800219418006B8442000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003184A5003184A5003184A5004AA5
      DE004AB5FF004AB5FF004AB5F700216B9C00000810002121180021395200186B
      AD00217BCE002984D600184A8C00215AAD0039A5390021B531004AE773004AE7
      730073D6840073B584001894210010A5180010A51800089C0800529429000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003184A5003184A5003184
      A5003184A5003184A5003184A5000000000000000000292921006B6363006363
      5A002129310000102100000810000000000094E7A5006BF7940052EF7B004ADE
      6B00D6D6D600A5A5A500217B29000894080008A5100010A5180073C663000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003184A5003184
      A5003184A5003184A50000000000000000000000000000000000525252005A5A
      5A00211818000000000000000000000000000000000042D663004ADE6B004ADE
      6B00D6D6D600A5A5A500399C420021BD310018A518004AA52900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005AE77B004ADE
      6B00CECECE008C8C8C005A944A0052BD4A0063C6630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042D6
      6300B5A58C00736B63008CB54A0021B529000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000104A0000106300001873000018730000106300001052000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000104A0000106300001873000018730000106300001052000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000010
      63000010630000219C000021BD000021BD000021BD000021BD0000219C000010
      6B0000106B000000000000000000000000000000000000000000000000000010
      63000010630000219C000021BD000021BD000021BD000021BD0000219C000010
      6B0000106B000000000000000000000000000000000000000000000000000000
      000018A5D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D6005ACE
      EF00000000000000000000000000000000000000000000000000000000008080
      8000000000008080800080808000000000008080800000000000000000008080
      8000000000008080800080808000000000000000000000000000001873000018
      8C000029C6000029C6000021BD000021BD000021BD000021BD000029C6000029
      C60000188C000010520000000000000000000000000000000000001873000018
      8C000029C6000029C6000021BD000021BD000021BD000021BD000029C6000029
      C60000188C0000105200000000000000000000000000000000000000000018A5
      D60084DEF7008CDEF7003984E70052BDEF0042C6EF0042BDEF0039BDE70018A5
      D600000000000031E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000187300001894000029
      D6000029CE000021BD000021BD00C6CEEF00FFFFFF004A63CE000021BD000021
      BD000029C60000188C0000106B00000000000000000000187300001894000029
      D6000029CE000021BD000021BD006B84D600BDC6EF001839C6000021BD000021
      BD000029C60000188C0000106B000000000000000000000000000000000018A5
      D600A5EFFF00A5E7FF00184AE7002163E7004ABDEF0042C6EF0042BDEF00189C
      D6000029E7000031E700000000000000000000000000000000000000FF000000
      FF0000000000FF00000000000000008000000080000000000000FFFF00000000
      00000000800000008000000000000000000000000000001873000029DE000029
      DE000029CE000021BD000021BD00BDCEEF00FFFFFF004A63CE000021BD000021
      BD000021BD000029C60000106B000000000000000000001873000029DE000029
      DE000029CE000021BD00526BD600F7F7FF00FFFFFF00A5B5E7000029BD000021
      BD000021BD000029C60000106B000000000000000000000000000000000018A5
      D600B5EFFF00C6EFFF0084BDF700215AE7002163EF004AB5EF00319CEF000839
      F7000029EF0000000000000000000000000080808000000000000000FF000000
      FF0000000000FF00000000000000008000000080000000000000FFFF00000000
      00000000800000008000000000000000000000187B000021B5000031F7000029
      DE000029C6000021BD000021BD00BDC6EF00FFFFFF004A63CE000021BD000021
      BD000021BD000029C60000219C000010630000187B000021B5000031F7000029
      DE000029C600526BD600F7F7FF00FFFFFF00FFFFFF00FFFFFF0094A5E7000029
      BD000021BD000029C60000219C000010630000000000000000000000000018A5
      D600BDF7FF00D6F7FF00C6EFFF008CD6F700296BEF00104AEF00104AEF000839
      F7000000000000000000000000000000000000000000000000000000FF000000
      FF0000000000FF00000000000000008000000080000000000000FFFF00000000
      00000000000000000000000000000000000000187B000029E7000031F7000029
      DE002142CE000829BD000021BD00BDC6EF00FFFFFF004A63CE000021BD002142
      C6000831BD000021BD000021B5000010630000187B000029E7000031F7000029
      DE005A73DE00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C9C
      DE000029BD000021BD000021B5000010630000000000000000000000000018A5
      D600BDF7FF00DEF7FF00D6F7FF00ADEFFF00428CF7000839F7001052F7001894
      DE000000000000000000000000000000000080808000000000000000FF000000
      FF0000000000FF00000000000000008000000080000000000000FFFF00000000
      000000000000000000000000000000000000001894000031FF000031FF000031
      FF00DEE7FF0094ADF7000031EF00BDC6FF00FFFFFF00395ACE004A63CE00F7F7
      FF00ADB5EF000021BD000021BD0000106B00001894000031FF000031FF000031
      FF00EFF7FF00FFFFFF008CA5F700BDCEFF00FFFFFF008494DE00E7E7F700FFFF
      FF0094A5E7000021BD000021BD0000106B0000000000000000000000000018A5
      D600BDF7FF00DEF7FF00CEEFFF005A94FF00104AF7004AA5F7004A9CFF000839
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000008000000080000000000000FFFF00000000
      0000000000000000000000000000000000000021A5002152FF000839FF000031
      FF00EFF7FF00FFFFFF008CA5FF00BDCEFF00FFFFFF008494DE00E7E7F700FFFF
      FF0094A5E7000021BD000021BD00001873000021A5002152FF000839FF000031
      FF00DEE7FF0094ADFF000031FF00BDCEFF00FFFFFF00395ACE004A63CE00F7F7
      FF00ADB5EF000021BD000021BD000018730000000000000000000000000018A5
      D600BDF7FF00DEF7FF005A84FF001042F7005AADFF0084EFFF0084EFFF00188C
      DE000839F7000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000008000000080000000000000FFFF00000000
      0000000000000000000000000000000000000021A500426BFF00315AFF000031
      F7005A7BFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C9C
      EF000029D6000029CE000021BD00001063000021A500426BFF00315AFF000031
      F700214AFF000839FF000031FF00BDCEFF00FFFFFF004A6BE7000029D6002142
      D6000831D6000029CE000021BD000010630000000000000000000000000018A5
      D600BDF7FF00DEF7FF001042FF0073ADFF008CEFFF0084EFFF008CEFFF0018A5
      D600000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000008000000080000000000000FFFF00000000
      0000000000000000000000000000000000000021A500315AFF00849CFF000031
      FF000031F7005273FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF0094A5EF000029
      DE000029D6000029CE000021AD00001063000021A500315AFF00849CFF000031
      FF000031F7000031FF000031FF00BDCEFF00FFFFFF004A6BEF000029DE000029
      DE000029D6000029CE000021AD000010630000000000000000000000000018A5
      D600BDF7FF00DEF7FF00D6F7FF00B5F7FF008CEFFF0084EFFF008CEFFF0018A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000080000000000000FFFF00000000
      000000000000000000000000000000000000000000000031EF00ADBDFF005A7B
      FF000031EF000031F7005273FF00F7F7FF00FFFFFF00A5B5F7000029DE000029
      D6000029CE000029D60000188C0000000000000000000031EF00ADBDFF005A7B
      FF000031EF000031F7000031FF00BDCEFF00FFFFFF004A6BEF000029DE000029
      D6000029CE000029D60000188C000000000000000000000000000000000018A5
      D600BDF7FF00DEFFFF00DEFFFF00BDF7FF008CEFFF008CEFFF008CEFFF0018A5
      D600000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000008000000080000000000000000000000000
      000000000000000000000000000000000000000000000031EF00426BFF00C6D6
      FF005A7BFF000031FF000031EF006B8CFF00BDCEFF001842EF000029E7000029
      DE000029E7000029C60000188C0000000000000000000031EF00426BFF00C6D6
      FF005A7BFF000031FF000031EF00C6CEFF00FFFFFF004A6BF7000029E7000029
      DE000029E7000029C60000188C000000000000000000000000000000000018A5
      D600B5F7FF00CEF7FF00BDEFF7009CE7F70073DEF7007BE7FF008CEFFF0018A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000080000000000000000000000000
      00000000000000000000000000000000000000000000000000000029D6005A7B
      FF00D6DEFF0094ADFF003963FF00184AFF000839FF001042FF001042FF000039
      FF000029D60000188C00000000000000000000000000000000000029D6005A7B
      FF00D6DEFF0094ADFF003963FF00184AFF000839FF001042FF001042FF000039
      FF000029D60000188C00000000000000000000000000000000000000000018A5
      D6007BD6EF0084D6EF007BD6EF0073CEEF0063CEEF005ACEEF005ACEEF0018A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000315A
      FF00315AFF0094ADFF00BDCEFF00A5BDFF008CA5FF007394FF003963FF000029
      E7000029E700000000000000000000000000000000000000000000000000315A
      FF00315AFF0094ADFF00BDCEFF00A5BDFF008CA5FF007394FF003963FF000029
      E7000029E70000000000000000000000000000000000000000000000000018A5
      D6009CE7F700ADEFFF00ADEFFF009CEFFF0094EFFF0084E7FF0073DEF70018A5
      D600000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031EF001042FF00295AFF002152FF000031FF000029C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031EF001042FF00295AFF002152FF000031FF000029C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018A5D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008E8F900010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000000000000000000000000000009C9C0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE00000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8F90008E8F90007F7F7F00101010000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF0000000000000000000000000000000000009C9C00CEFFFF009CCE
      FF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCE
      FF009CCEFF009CCEFF0063CECE00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8F90007F7F7F007F7F7F00101010000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CFF
      FF009CCEFF009CCEFF0063CECE00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E8F
      90008E8F90007F7F7F007F7F7F007F7F7F001010100000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF00000000000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCE
      FF009CFFFF009CCEFF0063CECE00000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8F90008E8F
      9000989B9C00989B9C00989B9C007F7F7F0010101000BDC4C700000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CFF
      FF009CCEFF009CFFFF0063CECE000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00989B9C00989B
      9C001010100000000000989B9C00989B9C007F7F7F0010101000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CCE
      FF009CFFFF009CCEFF0063CECE0000000000000000007F7F7F000000FF000000
      FF0000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00101010000000
      0000000000000000000000000000989B9C007F7F7F0010101000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFF
      FF009CCEFF009CFFFF0063CECE00000000007F7F7F000000FF00000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000989B9C00989B9C007F7F7F00101010000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CCEFF0063CECE00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000989B9C00989B9C00101010000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF000000000000000000009C9C00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF009CFFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000989B9C00989B9C001010
      100000000000000000000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF00000000000000000000000000009C9C0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000989B9C007F7F
      7F0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000009C9C00F7F7
      F700CEFFFF00CEFFFF009CFFFF009CFFFF00009C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F0010101000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000000000000000000000000000009C
      9C00009C9C00009C9C00009C9C00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDC4C7007F7F7F007F7F7F00101010000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5636B000000000000000000DE9C
      840000000000000000008C5A5A0000000000000000001073FF00B58484000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7CEA50000000000AD7B6B00FFCE
      9400DEBDAD00000000008C5A5A00000000000000000021A5FF00B58484000000
      00009C6363000884AD008C8C8C0000000000FFFFFF00E79C5200734210007342
      100073421000734210007B4210007B4210007342100073421000734210007342
      10006B39100063391000E7944A00FFFFFF00FFFFFF00E79C5200734210007342
      100073421000734210007B4210007B4210007342100073421000734210007342
      10006B39100063391000E7944A00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000B5520000C65A0000A539
      08000000000000000000000000000000000039A54200000000008C525200F7D6
      AD00B5A5A500000000008C5A5A000000000000000000219CFF00B58484000000
      0000C66B6B0010ADDE00F7F7F70000000000FFFFFF007B42100094521800A55A
      1800A55A1800A55A1800A55A1800A55A1800A55A1800A55A1800A55A18009C52
      1800945218007B4210005A311000FFFFFF00FFFFFF007B42100094521800A55A
      1800A55A1800A55A1800A55A1800A55A1800A55A1800A55A1800A55A18009C5A
      1800945218007B4210005A311000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000AD420000CE6B0000BD5A
      0000A539080000000000000000000000000010942900000000007B4A4200EFDE
      C600B5B5B500000000008C5A5A000000000000000000219CFF00B58473000000
      0000D673730052C6DE00F7F7F70000000000FFFFFF008C4A1800A55A1800B563
      2100B5632100FFFFFF00EFBD9400CE732100CE732100CE732100CE732100B563
      2100DE843100844A10006B391000FFFFFF00FFFFFF008C4A1800A55A1800E7A5
      6B00B5632100B5632100BD6B2100CE732100CE732100EFBD9400FFFFFF00B563
      21009C5A1800844A10006B391000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD420000D66B
      0000BD5200009C39080000000000000000005AAD5A00000000007B4A4A00D6B5
      AD00C6846300C69C8C009C6B630000000000000000001894FF00B58473000000
      0000DE7373008CEFFF00CED6D60063636300FFFFFF009C521800B5632100C66B
      2100C66B2100FFFFFF00FFFFFF00EFBD9400CE732100CE732100CE732100BD6B
      2100FFFFFF009452180073421000FFFFFF00FFFFFF009C5A1800B5632100FFFF
      FF00C66B2100C66B2100CE732100CE732100EFBD9400FFFFFF00FFFFFF00BD6B
      2100A55A18009452180073421000FFFFFF00A5420800B5520800AD4A0000AD42
      0000AD4A0000AD4A0000AD4A0000AD4A0000A54208000000000000000000B54A
      0000D66B0000AD4A00009C3908000000000052AD5A000000B5007B4A4200C68C
      8400BD4A18009C8C84009C6B6B000000000000000000188CFF00BD8C8400BD73
      4A00E77B7B0094EFFF00ADADAD00CECECE00FFFFFF00A55A1800BD6B2100CE73
      2100D6732100FFFFFF00FFFFFF00FFFFFF00EFBD9400CE732100CE732100BD6B
      2100FFFFFF009C52180073421000FFFFFF00FFFFFF00A55A1800BD6B2100FFFF
      FF00D6732100CE732100CE732100EFBD9400FFFFFF00FFFFFF00FFFFFF00BD6B
      2100AD6318009C5A180073421000FFFFFF00BD631800F79C3100DE7B1000CE6B
      0000CE630000CE630000CE630000CE630000AD42000000000000000000000000
      0000BD520000CE630000A53908009C39000094C684000000B50084524A00C684
      8400BD421000A59C9C00A57B730000000000000000001884FF00BD8C84009C52
      4200E77B840094C6D6009494940000636300FFFFFF00B5632100CE732100D673
      2100CE732100FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFBD9400CE732100BD6B
      2100FFFFFF00A55A18007B421000FFFFFF00FFFFFF00B5632100CE732100FFFF
      FF00CE732100CE732100EFBD9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD6B
      2100AD631800A55A18007B421000FFFFFF00C6631800FFB54A00EF943100DE7B
      1800A5420000A5390000A5420000A5420000A539080000000000000000000000
      0000A5420800CE630000B54A00009C390800EFDEC60000000000E7C6A500DED6
      D600BD421000B57B6B00A57B73000000000000000000187BFF00CE9C84009C52
      4200EF84840094949400846B6B0000000000FFFFFF00BD6B2100D6732100CE73
      2100CE732100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFBD9400B563
      2100FFFFFF00A55A1800844A1000FFFFFF00FFFFFF00BD6B2100D6732100FFFF
      FF00CE732100EFBD9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B563
      2100A55A1800A55A1800844A1000FFFFFF00C6631800FFBD5200C66B2100EF9C
      3100D67318009C39000000000000000000000000000000000000000000000000
      000000000000C65A0000BD5A00009C390800E7E7C6000000EF00FFE7CE00EFFF
      FF00BD421000C6948400B584730000000000000000001073FF00CE9C84009C52
      4200EF84840094949400BD8C8C00FFFFFF00FFFFFF00C66B2100D67B2100D673
      2100CE732100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFBD9400AD63
      1800FFFFFF00A55A1800844A1000FFFFFF00FFFFFF00C66B2100D67B2100FFFF
      FF00CE732100EFBD9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD63
      1800A55A1800A55A1800844A1000FFFFFF00C6631800FFBD5200AD4A1000BD5A
      1800FFAD4200CE7318009C390000000000000000000000000000000000000000
      000000000000BD5A0000C65A00009C390800F7EFDE000000E700FFEFDE00E7F7
      F700B5390800DEE7E700B58C8C0000000000000000001073FF00DEAD8400BD73
      4A00F78C8C009494940042182100FFFFFF00FFFFFF00D6732100DE843100DE7B
      2900D67B2100FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFBD9400B5632100A55A
      1800FFFFFF00A55A1800844A1000FFFFFF00FFFFFF00D6732100DE843100FFFF
      FF00D67B2100CE732100EFBD9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00A55A
      1800A55A1800A55A1800844A1000FFFFFF00C6631800FFBD5200B55210009429
      0000A5390800FFB54200D67B2100A53900000000000000000000000000000000
      0000A5390800CE630000BD5200009C390800D6946B0000000000FFFFF7007BB5
      C600C64A1800E7CECE00000000000000000000000000106BFF00DEAD8400BD73
      4A00FF94940094949400DEDEDE00FFFFFF00FFFFFF00D6732100DE8C4200DE8C
      4200DE843100FFFFFF00FFFFFF00FFFFFF00EFBD9400BD6B2100B5632100AD63
      1800FFFFFF00A55A1800844A1000FFFFFF00FFFFFF00D6732100DE8C4200FFFF
      FF00DE843100DE7B2900D67B2100EFBD9400FFFFFF00FFFFFF00FFFFFF00AD63
      1800A55A1800A55A1800844A1000FFFFFF00C6631800FFBD5200B55210000000
      000000000000A5390800FFB54200E78C2900AD4208009C3100009C3900009C39
      0800BD520000D66B0000AD4200009C3900000000000000000000B5CEE7006BDE
      FF00DEA57B00D6AD94000000000000000000000000001063FF00E7B58C00A594
      7B00FF949C0094949400FFFFFF00FFFFFF00FFFFFF00DE7B2900E79C5200E794
      4A00DE843100FFFFFF00FFFFFF00EFBD9400CE732100C66B2100BD6B2100B563
      2100FFFFFF00A55A1800844A1000FFFFFF00FFFFFF00DE7B2900E79C5200FFFF
      FF00DE843100DE7B2900DE7B2900D67B2100EFBD9400FFFFFF00FFFFFF00B563
      2100A55A1800A55A1800844A1000FFFFFF00C6632100FFC65200B55A18000000
      00000000000000000000A5390800EF9C3900F79C3100D6731800BD5A0800C65A
      0000CE6B0000B54A0000AD420000000000000000000000000000316BE7009CAD
      B500FFFFFF00000000000000000000009C0000000000085AFF00E7B58C000000
      0000FF9C9C0094949400FFFFFF00FFFFFF00FFFFFF00DE8C4200E7A56B00E79C
      5200DE8C4200FFFFFF00EFBD9400DE843100DE7B2900CE732100CE732100C66B
      2100DE843100A55A1800844A1000FFFFFF00FFFFFF00DE8C4200E7A56B00E7A5
      6B00DE8C4200DE843900DE843100DE843100DE7B2900EFBD9400FFFFFF00C66B
      2100B5632100A55A1800844A1000FFFFFF00B55A1800EF9C4200AD4A10000000
      0000000000000000000000000000A5390800BD631800D67B2100CE6B1000BD52
      0000A54200009C390800000000000000000000000000000000003952DE00C67B
      7B00F7EFE70000000000000000000018AD0000000000085AFF00EFBD94000000
      0000EF8C8C0094949400F7FFFF0063636300FFFFFF00E7944A00EFB58400E7A5
      6B00E79C5200E7944A00DE8C4200DE843900DE843100DE7B2900DE7B2900CE73
      2100C66B2100A55A180073421000FFFFFF00FFFFFF00E7944A00EFB58400E7A5
      6B00E79C5200E7944A00DE8C4200DE843900DE843100DE7B2900DE7B2900CE73
      2100C66B2100A55A180073421000FFFFFF00B55A1800A5420800A53900000000
      0000000000000000000000000000000000009C3900009C390000A53908009C39
      08009C3900000000000000000000000000000000000000000000394ADE000000
      0000F7E7D60000000000000000000010AD00000000000852FF00EFBD94000000
      00009C63630094949400F7F7F70000000000FFFFFF00F7CEA500E7944A00DE84
      3900DE7B2900D6732100D6732100CE732100CE732100C66B2100BD6B2100B563
      2100A55A180094521800E7A56300FFFFFF00FFFFFF00F7CEA500E7944A00DE84
      3900DE7B2900D6732100D6732100CE732100CE732100C66B2100BD6B2100B563
      2100A55A180094521800E7A56300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000394ADE000000
      000000000000000000000000000000000000000000000042FF00EFBD94000000
      00000000000000000000A5A5A5000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000848484008484
      84008C8C8C000000000000000000000000000000000000000000000000000000
      0000AD7B6B00AD7B6B00AD7B6B00AD7B6B000000000000000000000000000000
      00000000000000000000000000000000000000000000ADA5A50084849400BDA5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C4239009439
      39008C313100947B7B00B5BDB500BDBDBD00C6BDBD00BDBDB500B5BDBD00A584
      8400842929008429290094313100000000000000000000000000000000000000
      00009C9C9C009C9C9C00D6D6D6009494940039393900525252009C949400C6C6
      C600D6D6D600848484000000000000000000000000000000000000000000AD7B
      6B00DEA57B00EFC69400EFC6A500DEB58C00AD7B6B00AD7B6B00AD7B6B00AD7B
      6B0000000000000000000000000000000000000000008CA5BD004A7BCE007B84
      AD00BDA5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200C64A4A00C64A
      4A00A542420084636300AD8C8C00DEC6C600FFF7F700FFFFFF00EFF7F700C69C
      9C007B18180084181800B54242009C39390000000000000000009C9C9C009C9C
      9C00FFFFFF00FFFFFF00D6D6D6009C9C9C004242420018181800181818003131
      310063636300848484008C8C8C00000000000000000000000000AD7B6B00E7B5
      8C00EFB57B00EFC69C00EFD6B500F7CE9C00C69C73007B4A42008C525200AD7B
      6B00AD7B6B00AD7B6B0000000000000000000000000084C6EF0052B5FF004A7B
      CE007B84AD00BDA5A50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200BD4A4A00C64A
      4A00A54242008463630084292900A55A5A00E7D6D600FFFFF700FFFFFF00CEA5
      A5007B18180084181800AD4242009C393900948C8C009C9C9C00F7EFEF00FFFF
      FF00EFEFEF00CECECE009C9C9C008C8C8C009494940084848400636363003939
      39001821210021182100737373000000000000000000AD7B6B00EFC69400F7C6
      8C00EFB57B00EFC6A500F7E7CE00F7D6B500C69C84007B4A4A007B4A4200CEA5
      7B00EFC68C00D6A58400AD7B6B000000000000000000000000007BBDEF0052B5
      FF004A7BCE007B84AD00BDA5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200BD4A4A00C64A
      4A00A5424200946B6B008421210084212100BDADAD00EFEFEF00FFFFFF00DEB5
      B5007B18180084181800AD4242009C3939009C9C9C00EFE7E700E7E7E700BDBD
      BD00A5A5A500B5B5B500C6C6C600A5A5A5009494940094949400949494009C9C
      9C008C8C8C006B6B6B008484840000000000AD7B6B00F7CE9C00FFD69400F7C6
      8C00EFB57B00F7CEAD00FFEFDE00FFE7C600CEA58C007B4A42007B4A4A00CEA5
      7B00EFBD8C00E7B58C00AD7B6B00000000000000000000000000000000007BBD
      EF0052B5FF004A7BCE007B84AD00BDADB5000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200BD4A4A00C64A
      4A00A54242009C7373008C2929007B18180094848400CED6CE00FFFFFF00DEBD
      BD007B1818007B181800AD3939009C39390094949400ADADAD00A5A5A500B5AD
      AD00CECECE00D6D6D600EFEFEF00F7EFF700DEDEDE00C6C6C600ADADAD009C9C
      9C0094949400949494008C8C8C0000000000AD7B6B00FFDE9C00F7D69400F7C6
      8C00F7B57300F7D6AD00FFFFF700FFF7DE00CEAD9C00734242007B4A4200CEA5
      7B00EFBD8C00DEB58400AD7B6B00000000000000000000000000000000000000
      00007BBDEF0052B5FF004A7BCE009CA59400BDA5A500C6948400C6948400C694
      8400C69C9400BDA5A500000000000000000000000000AD5A5200BD4A4A00C64A
      4A00AD424200B5737300B57B7B009C6B6B0094737300A58C8C00DEBDBD00D694
      94008C2121008C212100B54242009C393900948C8C00ADADAD00CEC6C600CECE
      CE00CECECE00E7E7E700D6CECE00A5ADA500BDBDBD00CECECE00D6D6D600D6D6
      D600C6C6C600B5B5B5009C94940000000000AD7B6B00F7D69C00FFD69400E7C6
      9400B5A59400F7D6AD00FFFFFF00FFFFEF00DEC6B50094635A0084524A00CEA5
      8400EFBD8C00DEB58400AD7B6B00000000000000000000000000000000000000
      0000000000008CC6EF00BDC6CE00C6948400D69C9C00F7CEAD00FFEFCE00F7F7
      D600F7DEBD00D6AD9C00C69C94000000000000000000AD5A5200BD4A4A00BD4A
      4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD424200BD424200BD42
      4200BD4A4A00BD4A4A00C64A4A0094393900000000009C9C9C00D6D6D600CECE
      CE00DEDEDE00CEC6C600B5B5B500A5D6A500BDC6BD00C6A5A500ADA5A500ADA5
      A500B5B5B500C6C6C600ADA5A50000000000AD7B6B00FFDE9C00D6CEA50052A5
      E7002184F70084ADDE00FFFFF700FFFFEF00FFF7E700F7E7CE00E7C6A500E7C6
      9C00E7BD9400DEB58400AD7B6B00000000000000000000000000000000000000
      00000000000000000000CEA5A500EFAD9400FFFFCE00FFFFCE00FFFFDE00FFF7
      EF00FFFFFF00FFFFFF00D6AD9C00C69C940000000000AD5A5200A53931009C42
      3900B56B6B00C68C8C00CE949400CE949400CE949400CE8C8C00CE949400CE94
      9400CE9C9400C6848400BD4A4A009439390000000000000000009C9C9C00C6BD
      BD00ADADAD00B5B5B500E7E7E700F7F7F700EFEFEF00EFE7DE00DEDEDE00CECE
      CE00B5B5B500949494000000000000000000AD7B6B009CC6C60042B5FF0031AD
      FF00299CFF001884FF0084BDF700FFFFEF00FFFFEF00FFF7E700FFE7CE00F7D6
      B500EFCEA500DEB58C00A57B7B00000000000000000000000000000000000000
      00000000000000000000D69C9C00F7CEAD00FFE7B500FFFFCE00FFFFDE00FFF7
      EF00FFFFFF00FFF7F700F7DEBD00C694840000000000AD5A52009C313100DEBD
      BD00FFF7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700FFFFFF00D6ADAD00B54242009C3939000000000000000000000000009C9C
      9C00DEDEDE00CECECE009C9CA500BDBDC600D6D6D600D6DEDE00D6D6D600C6C6
      C600ADADAD00000000000000000000000000429CF70039A5FF0042ADFF0042B5
      FF0039ADFF002994FF001884FF008CC6F700FFFFEF00FFF7EF00FFEFDE00FFE7
      CE00E7CEB500948C94009C7B8400000000000000000000000000000000000000
      00000000000000000000C6948400FFEFCE00FFDEAD00FFF7BD00FFFFD600FFFF
      E700FFF7EF00FFFFE700F7F7D600C694840000000000AD5A52009C313100E7CE
      CE00FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700D6ADAD00B54242009C3939000000000000000000000000000000
      0000FFE7E700FFE7D600EFCEBD00E7C6BD00E7CEC600DED6CE00D6CECE009494
      94000000000000000000000000000000000000000000429CFF0042A5FF0042B5
      FF0042B5FF0039A5FF002994FF001884FF008CC6F700FFFFEF00FFFFF700D6D6
      D600737BAD007B73940000000000000000000000000000000000000000000000
      00000000000000000000C6948400FFEFCE00FFE7B500FFFFCE00FFFFCE00FFFF
      D600FFFFD600FFFFD600FFEFCE00C694840000000000AD5A52009C313100E7CE
      C600EFEFEF00CECEC600CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00E7E7E700D6ADAD00B54242009C3939000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFB59C00000000000000
      000000000000000000000000000000000000000000000000000042A5FF0042AD
      FF0042B5FF0042B5FF0031A5FF002994FF001884FF0094C6FF00B5CEE7004A6B
      BD00526BA5000000000000000000000000000000000000000000000000000000
      00000000000000000000C6AD9400F7DEBD00FFEFDE00FFE7B500FFF7BD00FFF7
      BD00FFFFCE00FFFFCE00F7CEAD00C694840000000000AD5A52009C313100E7CE
      CE00EFEFEF00D6CECE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6CE
      CE00EFEFEF00D6ADAD00B54242009C3939000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6B500FFBDA500F7AD9400000000000000
      00000000000000000000000000000000000000000000000000000000000042A5
      FF0042ADFF0042B5FF0042ADFF00319CFF00218CFF001884FF00316BE7003163
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CEA5A500D6AD9C00FFFFFF00FFF7EF00FFEFCE00FFDE
      AD00FFE7B500FFFFCE00D69C9C00BDA5A50000000000AD5A52009C313100E7CE
      CE00F7F7EF00DED6D600DEDED600DEDED600DEDED600DEDED600DEDED600DED6
      D600EFEFEF00D6ADAD00B54242009C3939000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6B500FFBDA500FFB59C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042A5FF0042ADFF0042B5FF0039ADFF003994F7001831B5003952DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6AD9400D6AD9C00F7DEBD00FFEFCE00FFEF
      CE00F7CEAD00D69C9C00C69484000000000000000000AD5A52009C313100E7CE
      CE00EFEFEF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00E7E7E700DEADAD00B54242009C393900000000000000000000000000CE9C
      9C00FFE7D600FFDECE00FFCEBD00FFC6B500FFBDA500FFAD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042A5FF0042B5FF00000000000000000018109400394ADE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEA5A500C6948400C6948400C694
      8400C69C9400CEA5A500000000000000000000000000AD5A52009C313100E7CE
      C600FFFFFF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEF
      EF00FFFFF700D6ADAD00B54242009C393900000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018189C00394ADE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094313100BDA5
      A500C6CEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BD9C9C008C313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003163000031
      6300003163000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029ADD60021ADD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B000000FF000031
      940000007B000031630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029ADD60084EFFF004AC6E7004AC6E70031B5DE0021AD
      D6000000000000000000000000000000000000000000000000004A526300FFEF
      C600F7DEB500F7D6AD00F7D6A500EFCE9400EFC68C00EFC68400EFC67B00EFC6
      8400EFC68400F7C68400A5636B00000000000063630000FFFF0000CEFF0000FF
      FF0000CEFF000094CE0000CEFF000094CE000094CE000031CE0063CEFF000063
      FF00003194000031630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029ADD600ADFFFF008CF7FF008CF7FF008CF7FF0063DE
      F70031B5DE0031B5DE000000000000000000000000004284B500186BC600636B
      8400F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B00000000000063630094FFFF0094FFFF0000CE
      FF0094FFFF0000CEFF000094CE0000CEFF000094CE000031CE0063CEFF000063
      FF00003194000031630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029ADD600ADEFF70094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF0031B5DE000000000000000000000000000000000031A5FF001073
      D6006B6B8400F7DEBD00F7D6B500EFD6AD00EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B00000000000063630094FFFF0000CEFF0094FF
      FF0000CEFF0094FFFF0000CEFF000094CE0000CEFF000031CE0063CEFF000063
      FF00003194000031630000000000000000000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630000000000000000000000000000000000000000000000
      0000A5947B00AD847B0029ADD60029ADD600A5EFF700A5EFF700A5F7FF008CEF
      FF008CEFFF00005A000031B5DE00000000000000000000000000A5635A0031A5
      FF001073D6005A638400F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B00000000000063630094FFFF00FFFFFF0000CE
      FF0094FFFF0000CEFF0094FFFF0000CEFF000094CE000031CE0063CEFF000063
      FF00003194000031630000000000000000000000000063636300CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00636363000000000000000000000000000000000000000000A57B
      6300BD633900C663420029ADD60084EFFF0029ADD60029ADD60029ADD600ADEF
      F700005A000042E77300005A000031B5DE000000000000000000A5736B00FFFF
      F70031A5FF00427BAD008C635A00AD7B730094635A00AD7B6B00CEA58400EFC6
      9400EFC68C00EFC68400A5636B00000000000063630094FFFF0000CEFF00FFFF
      FF0000CEFF0094FFFF0000CEFF0094FFFF0000CEFF000031CE0063CEFF000063
      FF0000319400003163000000000000000000000000006363630000636300CECE
      CE00CECECE00CECECE00006363000063630000636300CECECE00CECECE00CECE
      CE00006363006363630000000000000000000000000000000000BD734A00C65A
      1800A54218008C52210029ADD60094F7FF0094F7FF008CF7FF006BDEF700005A
      000031CE5A0029C6520018B53100005A00000000000000000000A5736B00FFFF
      FF00FFF7E700AD8C8C00B58C8400DEBDA500EFD6B500D6B59C00B58C7300CEA5
      8400EFC69400F7CE8C00A5636B00000000000063630094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0000FFFF000031CE0094FFFF000063
      FF0000319400003163000000000000000000000000006363630000FFFF000063
      6300CECECE000063630000000000000000000000000000636300CECECE000063
      6300CECECE0063636300000000000000000000000000BD734A00BD521000A539
      0000AD4200003163000029ADD60094FFFF0094F7FF008CEFFF008CEFFF0094EF
      FF000873100018B5310008841000000000000000000000000000BD846B00FFFF
      FF00FFF7F700AD847B00DEC6B500F7E7CE00F7E7C600FFFFF700D6B59C00AD7B
      6B00EFCE9C00F7CE9400A5636B00000000000063630000636300006363000063
      630000636300006363000063630000636300006363000031CE0094FFFF0063CE
      FF000031940000007B0000000000000000000000000063636300FFFFFF00FFFF
      FF000063630000000000FFFFFF00FFFFFF0000FFFF000000000000636300CECE
      CE00CECECE00636363000000000000000000B58473009C524200AD420000CE5A
      0000BD6B0000007B000021ADD6009CF7FF009CF7FF006BDEF7006BDEF70029AD
      D60000630800089C1800006B0800000000000000000000000000BD846B00FFFF
      FF00FFFFFF0094636300F7EFE700F7EFDE00F7E7CE00FFFFEF00EFD6B5009463
      5A00F7D6A500F7D6A500A5636B00000000000000000000636300EFFFFF0094FF
      FF0094FFFF000094CE00000000000000000000000000007B7B006363CE006363
      CE0000319400000000000000000000000000000000006363630000FFFF00CECE
      CE0000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00000000000063
      6300CECECE00636363000000000000000000B58473009C524200CE5A0000D67B
      0000848C000039940000C68400001894CE001894CE001894CE00B58C0000B58C
      0000005A0000008C080000000000000000000000000000000000D6946B00FFFF
      FF00FFFFFF00B58C8400DECEC600FFEFE700FFEFDE00FFFFD600DEBDA500AD7B
      7300F7DEB500EFCEA500A5636B00000000000000000000000000006363000063
      630000636300000000000000000000000000000000000000000039423900EFCE
      A500000000000000000000000000000000000000000063636300CECECE000000
      000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      000000636300636363000000000000000000B58473009C524200C673000029A5
      180031AD2100D6AD1800FF9C0800E78C0000E78C0000B58C0000C6840800005A
      0000008C0800005A000000000000000000000000000000000000D6946B00FFFF
      FF00FFFFFF00D6BDBD00BD949400DECEC600F7EFDE00DEC6B500B58C8400B58C
      7B00DECEB500B5AD9400A5636B00000000000000000000000000000000000000
      000000000000000000000000000073737300394239000000000039423900EFCE
      A50000000000000000000000000000000000000000006363630000000000FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000000000636363000000000000000000B5847300BD734A007B94080010C6
      4A0031CE63007BCE6B00FFCE5A00FFA51000B58C0000005A0000005A0000005A
      0000005A00000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00D6BDBD00B58C840094636300AD847B00CEA59C00A56B
      5A00A56B5A00A56B5A00A5636B00000000000000000000000000000000000000
      0000000000000000000073737300FFEFCE00394239003942390084848400EFCE
      A500943129000000000094312900000000000000000063636300FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00000000000000000000000000B5847300BD734A0031BD390042D6
      7300A5E79C00A5F7B500D6E79400D6B52900B58C0000B58C0000C6840800A594
      7B00000000000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD00A56B
      5A00E79C5200E78C3100B56B4A00000000000000000000000000000000000000
      0000000000000000000073737300FFFFFF00BDBDBD00BDBDBD00BDBDBD00FFFF
      FF00BDBDBD00BDBDBD00EFCEA500000000000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      63006363630063636300000000000000000000000000A5947B0084C6730063DE
      7B00BDF7AD00D6FFBD005ADE840039B53100F78C0000C6840800A5947B000000
      0000000000000000000000000000000000000000000000000000E7AD7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600A56B
      5A00FFB55A00BD7B5A0000000000000000000000000000000000000000000000
      0000000000000000000073737300FFFFFF00EFCEA50000000000FFFFFF00FFFF
      FF00FFEFCE00FFEFCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5947B00ADC6
      8C00A5D6840094DE8C0052CE63004AB53900D69C4200A5947B00000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00F7F7EF00DEC6C600A56B
      5A00C6846B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000737373007373730000000000737373007373
      7300737373007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B584
      7300B5847300B5847300B5847300B5847300B584730000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00A56B
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B5000000B5000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A5008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C00A5A5
      A50000000000000000000000000000000000000000000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B5000000B500000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00000000000000000000000000000000000000
      000042182100EFEFEF00F7F7F700B5BDBD00C6C6C600B5B5B500FFFFFF00C6C6
      C600421821006B6B6B000000000000000000000000000000B5000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B50000000000000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00000000000000000000000000000000005252
      520042182100EFEFEF00F7F7F700CEC6C600D6CECE00C6C6C600FFFFFF00C6C6
      CE0042182100525252000000000000000000000000000000B5000000B5000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      000000000000848484007B6352007B6352007B6352007B635200848484000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE0000000000000000006B6B6B004A4A4A004A4A
      4A004A4A4A00DEE7E700CED6D600848C8C008C8C8C00B5B5B500EFEFEF00C6CE
      CE004A4A4A004A4A4A00421821006B6B630000000000000000000000D6000000
      BD000000B5000000B500000000000000000000000000000000000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000FF00000000000000FF00
      000000000000FF00000000000000FF00000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00000000007B7B7B004A4A4A005A5252005252
      52004A4A4A009C9C9C00ADADAD00ADB5B500B5B5B500B5B5B500A5A5A5009494
      9C004A4A4A0052525A004A525200421821000000000000000000000000000000
      00000000B5000000B5000000B500000000000000B5000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CECECE00CECE
      CE00CECECE00FFFFFF00CECECE000000000052525200847B8400949C9C008C9C
      9C008C9C9400949C9C00949494008C8C8C007B847B0084948C008C949400949C
      9C008C849C00B5B5B5008CFF7B00421821000000000000000000000000000000
      0000000000000000B5000000C6000000C6000000CE000000B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FF00
      0000FFFFFF00FF00000000000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE0000000000525252009C9C9C00BDBDBD00ADAD
      AD00948C8C00846B7300846B6B0084636B00845A6B007B636B008C6B6B008C63
      7300A57BA5008C4A5A00B5B5B500421821000000000000000000000000000000
      000000000000000000000000C6000000C6000000DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FF0000000000
      0000CECECE0000000000FF000000CECECE00FFFFFF0000000000CECECE00CECE
      CE00CECECE00FFFFFF00CECECE000000000063636300ADADAD00D6DEDE008C6B
      73009C6B7300A57B7B00BD8C8C00C68C9400BD8C9400BD8C9400C68C8C00A573
      7B00A56B7B008C4A5A00BDD6BD00525252000000000000000000000000000000
      0000000000000000B5000000D6000000CE000000DE000000EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FF00
      000000000000FF00000000000000FF000000FFFFFF00FF000000CECECE00FFFF
      FF00CECECE00FFFFFF00CECECE00000000008C8C8C00B5B5B500CECECE007B4A
      5200844A52004A4A4A0042182100421821004218210042182100421821004A4A
      4A00844A52008C4A5A00C6C6CE00525252000000000000000000000000000000
      00000000E7000000DE000000D60000000000000000000000E7000000EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5252005A5252005A5252005A525200000000000000
      00000000000000000000000000005A525200FF000000FFFFFF00FF000000FFFF
      FF00FF00000000000000FFFFFF0000000000CECECE0000000000CECECE00FFFF
      FF00CECECE00FFFFFF00CECECE00000000008C8C8C00B5B5B500CECECE004218
      21004A4A4A00A5A5A500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00A5A5
      A500393939004A212100CECECE00636363000000000000000000000000000000
      FF000000DE000000EF00000000000000000000000000000000000000FF000000
      F70000000000000000000000000000000000000000005A5252005A5252000000
      0000000000005A525200848484008484840084848400848484005A5252000000
      000000000000000000005A5252005A52520000000000FF00000000000000FFFF
      FF0000000000FF000000FFFFFF00FF00000000000000FF000000FFFFFF00FFFF
      FF00CECECE00FFFFFF00CECECE000000000000000000A5A5A500ADB5B5009C94
      940084737300BDBDBD00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7
      F7007B636B009C8C8C00ADB5B5000000000000000000000000000000F7000000
      F7000000FF000000000000000000000000000000000000000000000000000000
      F7000000F700000000000000000000000000527B840084848400848484005A52
      52005A52520084848400C6C6C600C6C6C600C6C6C600848484005A5252005A52
      52005A5252005A525200C6C6C6005A525200FF00000000000000FF0000000000
      0000FF00000000000000FF00000000000000FF00000000000000CECECE00CECE
      CE00CECECE00FFFFFF00CECECE00000000000000000000000000000000000000
      000000000000BDBDBD00FFFFFF00FFFFFF00F7F7F700A5A5A500A5A5A500A5A5
      A50000000000000000000000000000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000F700000000000000000063636300FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      840084848400C6C6C6005A5252000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00F7FFFF00FFFFFF00F7F7F700A5A5A500DEDEDE00A5A5
      A500000000000000000000000000000000000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000527B8400FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600848484000000000000000000FF00000000000000FF0000000000
      0000FF00000000000000FF00000000000000FF00000000000000FFFFFF00FFFF
      FF009C9C9C00FFFFFF0000000000000000000000000000000000000000000000
      000000000000BDBDBD00F7F7F700F7F7F700F7F7F700A5A5A500A5A5A5000000
      0000000000000000000000000000000000000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063636300FFFFFF00FFFFFF008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400848484000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00A5A5A500A5A5A500A5A5A500A5A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6363006B31310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD5A5A00AD5A5A00E7C6C600E7C6C600E7C6C600C6CE
      C600C6CEC600C6CEC600AD5A5A00943131000000000000000000000000000000
      000000000000000000000000000021A5CE0029ADCE001084AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C6363009C636300BD636300BD6B6B006B31310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE0000000000B58C8C008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A00BD7B7300C65A5A00E7C6C6009C393900B5737300C6CE
      C600F7F7F700F7F7F700C65A5A009431310000000000000000000000000029A5
      CE0021A5CE000884AD00109CC60021ADD60031B5D600188CB5001084AD0042AD
      CE0039ADCE0000000000000000000000000000000000000000009C6363009C63
      6300C66B6B00D66B6B00D66B6B00C66B6B006B3131009C6363009C6363009C63
      63009C6363009C6363009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE0000000000B58C8C00FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500BD7B7300C65A5A00C6948C009C3939009C4A4A00E7C6
      C600C6C6C600F7F7F700C65A5A009431310000000000000000000000000031A5
      CE0031BDDE0010ADDE0010A5CE0018C6F7004AD6FF0031A5CE005AC6DE0063C6
      DE0039A5C60000000000000000000000000000000000000000009C636300DE73
      7300D6737300D66B7300D66B6B00C66B6B006B313100FFA5A500FFADB500FFBD
      BD00FFC6C600FFC6C6009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00CECECE00CECECE00CECECE00CECECE00FFFFFF00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE0000000000B58C8C00FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500BD7B7300C65A5A00C6948C00C6948C00BDA5A500BDA5
      A500E7C6C600C6CEC600C65A5A009431310000000000218CB500299CBD004AB5
      D60084DEEF0052C6DE0039CEEF0018D6FF0039DEFF005AD6F70073C6DE00B5E7
      EF0094CEE700188CB500000000000000000000000000000000009C636300E773
      7B00DE737300DE737300DE737300CE6B73006B31310039C6630021CE630029CE
      630018CE5A00FFC6C6009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00009C00009C9C9C00009C00009C9C9C00FFFF
      FF00CECECE00FFFFFF00CECECE0000000000B58C8C00F7DEC600F7DEC600F7DE
      C600F7DEC600F7DEC600BD7B7300AD524A00B55A5A00C65A5A00C65A5A00C65A
      5A00C65A5A00C65A5A00C65A5A00943131000000000063BDD6004AB5D60052BD
      E70094EFFF008CEFFF005AE7FF0021DEFF0018DEFF0052E7FF007BEFFF007BEF
      FF0039CEEF0031B5DE0029A5CE000000000000000000000000009C636300E77B
      7B00E77B7B00DE7B7B00DE737B00D67373006B31310042C66B0031CE630031CE
      630021CE6300FFC6C6009C63630000000000009C00009C9C9C00009C00009C9C
      9C00009C00009C9C9C00009C0000FFFFFF00009C00009C9C9C00009C0000FFFF
      FF00CECECE00FFFFFF00CECECE0000000000B58C8C00F7DEC600F7DEC600F7DE
      C6008484840000000000BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000001094C60021A5D6004AC6
      EF0084DEF70094EFFF0073D6EF005ABDCE0052B5CE0029C6EF0000D6FF0000CE
      FF0008D6FF0008CEF70008B5E7000000000000000000000000009C636300EF84
      8400E77B8400E77B7B00E7848400D67373006B31310039C6630029CE630029CE
      630021CE5A00FFC6C6009C636300000000009C9C9C00009C00009C9C9C00009C
      00009C9C9C00009C0000FFFFFF00009C00009C9C9C00009C0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE0000000000B58C8C00F7EFDE00F7EFDE008484
      840084000000FF000000BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7
      F700FFFFF700FFF7F700C65A5A009431310000000000188CBD0029ADDE0039BD
      E7006BD6F70094C6D6009494940094949400949494009494940042BDDE0000D6
      FF0010D6FF0018D6FF00089CCE000000000000000000000000009C636300F784
      8C00EF848400EF949400FFDEDE00DE8C8C006B313100BDE7AD006BDE8C005AD6
      840042D67300FFC6C6009C63630000000000009C00009C9C9C00009C00009C9C
      9C00009C0000FFFFFF00009C00009C9C9C00009C00009C9C9C00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE0000000000B58C8C00F7EFDE00F7EFDE008484
      0000FF00000084840000BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7
      F700FFFFF700FFF7F700C65A5A0094313100000000001894BD0021ADDE0031B5
      E7005ACEF70094949400EFE7E700B5B5B500ADA5A500E7B5B500949494005ADE
      FF009CF7FF00B5EFFF00399CBD000000000000000000000000009C636300F78C
      8C00EF848400F79C9C00FFDEDE00DE8C8C006B313100FFF7DE00FFFFE700FFFF
      DE00EFFFD600FFC6C6009C63630000000000FFFFFF00009C00009C9C9C00009C
      0000FFFFFF00009C00009C9C9C00009C00009C9C9C00009C0000FFFFFF00FFFF
      FF00CECECE00FFFFFF00CECECE0000000000B58C8C00FFF7EF00FFF7EF008484
      0000C6C6C600C6C6C600BD7B7300AD524A00FFF7F700FFF7F700FFFFF700FFFF
      F700FFFFF700FFF7F700C65A5A009431310000000000108CBD00189CCE0021AD
      DE0042C6EF0094949400EFE7E700B5B5B500ADA5A500DEB5B500949494007BE7
      FF00ADEFFF008CCEE7004AA5C6000000000000000000000000009C636300FF94
      9400F78C8C00F78C8C00F78C8C00DE7B84006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFE700FFC6C6009C63630000000000FFFFFF00FFFFFF00009C0000FFFF
      FF00009C00009C9C9C00009C00009C9C9C00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE0000000000B58C8C00FFF7EF00FFF7EF008484
      0000C6C6C60084840000BD7B7300AD524A00D6D6D600CEB5B500CEB5B500CEB5
      B500CEB5B500D6D6D600AD524A009431310000000000000000000884AD0021A5
      D60031BDEF0094949400EFE7E700B5B5B500ADA5A500DEB5B5009494940063E7
      FF006BCEE700007BA500000000000000000000000000000000009C636300FF94
      9C00FF949400FF949400FF949400E78484006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C63630000000000FFFFFF00009C0000FFFFFF00009C
      00009C9C9C00009C00009C9C9C00009C00009C9C9C00CECECE00FFFFFF00FFFF
      FF00CECECE00FFFFFF00CECECE0000000000B58C8C00FFF7EF00FFF7EF00C6C6
      C6008484000084848400FF0000000084000084840000C6C6C600FFF7EF00BDAD
      AD00A57B7300000000000000000000000000000000000000000000000000108C
      B500088CBD0094949400EFE7E700B5B5B500ADA5A500E7BDB50094949400189C
      C6002194BD0000000000000000000000000000000000000000009C636300FF9C
      9C00FF949C00FF949400FF949C00E78C8C006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C63630000000000009C0000FFFFFF00009C00009C9C
      9C00009C00009C9C9C00009C00009C9C9C00009C00009C9C9C00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE0000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600848400008484000084840000C6C6C600FFFFFF00FFFFFF00BDAD
      AD00B58473000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700ADADAD00ADA5A500DEB5B500949494000000
      00000000000000000000000000000000000000000000000000009C636300FF9C
      A500FF9C9C00FF9C9C00FF9C9C00E78C8C006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C636300000000009C9C9C00009C00009C9C9C00009C
      00009C9C9C00FFFFFF009C9C9C00009C00009C9C9C00009C0000FFFFFF00FFFF
      FF0000000000000000000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00B58C8C00B58C
      8C00B58C8C000000000000000000000000000000000000000000000000000000
      00000000000094949400B5B5B500A5A5A5009C949400ADA5A500949494000000
      00000000000000000000000000000000000000000000000000009C6363009C63
      6300EF8C8C00FF9C9C00FF9C9C00EF8C94006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C63630000000000009C00009C9C9C00009C00009C9C
      9C00FFFFFF00FFFFFF00FFFFFF009C9C9C00009C00009C9C9C00FFFFFF00FFFF
      FF009C9C9C00FFFFFF000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00BD84
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700C6C6C600A5A5A500B5A5A500949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C636300B5737300D6848400DE8C8C006B3131009C6363009C6363009C63
      63009C6363009C6363009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C00000000000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00BD8484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700EFEFEF00BDBDBD00A59C9C00949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C6363009C6363006B31310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C00000000000000000000000000B58C8C00B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00BD848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094949400949494009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000021A5CE0029ADCE001084AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242004242420042424200424242000000
      00000000000000000000000000000000000000000000000000000000000029A5
      CE0021A5CE000884AD00109CC60021ADD60031B5D600188CB5001084AD0042AD
      CE0039ADCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073849C0000428C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00C6C6C600FFFFFF0084848400848484004242
      42000000000000000000000000000000000000000000000000000000000031A5
      CE0031BDDE0010ADDE0010A5CE0018C6F7004AD6FF0031A5CE005AC6DE0063C6
      DE0039A5C6000000000000000000000000000000000000000000000000000000
      00000000000000000000A5947B00AD847B009C636300BD734A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002173AD001873AD0029528400297BB50029A5D600295A
      8C00005294000863A50000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00424242004242420042424200424242004242
      42000000000000000000000000000000000000000000218CB500299CBD004AB5
      D60084DEEF0052C6DE0039CEEF0018D6FF0039DEFF005AD6F70073C6DE00B5E7
      EF0094CEE700188CB50000000000000000000000000000000000000000000000
      000000000000A57B6300BD633900C6634200C66342009C52420084736B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004AADDE0042B5E7000863A5002994CE0031ADDE00086B
      AD001094C6001094CE0000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00C6C6C600FFFFFF0084848400848484004242
      4200000000000000000000000000000000000000000063BDD6004AB5D60052BD
      E70094EFFF008CEFFF005AE7FF0021DEFF0018DEFF0052E7FF007BEFFF007BEF
      FF0039CEEF0031B5DE0029A5CE00000000000000000000000000000000000000
      0000BD734A00C65A1800A54218008C522100B5421800BD522900CE6339008442
      3100000000000000000000000000000000000000000000000000000000000000
      00000000000021529400298CC6004ABDEF0042BDEF0042B5E70031ADDE0029A5
      DE0018A5D6001094C60000428C0052638400000000000000000000ADFF000000
      000000000000000000008C8C8C00848484008484840084848400848484004242
      420000000000000000000000000000ADFF00000000001094C60021A5D6004AC6
      EF0084DEF70094EFFF0073D6EF005ABDCE0052B5CE0029C6EF0000D6FF0000CE
      FF0008D6FF0008CEF70008B5E70000000000000000000000000000000000BD73
      4A00BD521000A5390000AD420000316300006B4A0000AD390000A5390800BD5A
      3900735242000000000000000000000000000000000000000000000000000000
      000000000000214A940042ADE70052C6F7004ABDEF0063BDE7004A849C001873
      A5001094CE001094C600006BA50021639400000000000000000000000000006B
      FF00000000000084FF000084840000FFFF0000FFFF0000CEFF0000FFFF000084
      8400426BB50000000000006BFF000000000000000000188CBD0029ADDE0039BD
      E7006BD6F70094C6D6009494940094949400949494009494940042BDDE0000D6
      FF0010D6FF0018D6FF00089CCE00000000000000000000000000BD734A009C52
      4200AD420000CE5A0000BD6B0000007B000021730000C65A0000B54A00007363
      2100845A31007352420000000000000000000000000000000000000000000000
      0000000000006BC6E70052C6EF004ABDEF006BC6EF00DEDEDE006B6B6B00295A
      73001094C6000894CE00109CCE0063ADBD000000000000000000000000000000
      000000ADFF000084FF0000FFFF0000E7F70000E7FF0000E7FF0000E7F70000FF
      FF00426BB50000ADFF000000000000000000000000001894BD0021ADDE0031B5
      E7005ACEF70094949400EFE7E700B5B5B500ADA5A500E7B5B500949494005ADE
      FF009CF7FF00B5EFFF00399CBD00000000000000000000000000BD734A009C52
      4200CE5A0000D67B0000848C000039940000C6840000BD7B000021730000086B
      0800636B2900BD734A0000000000000000000000000000000000000000000000
      000000000000218C390039A5B5004ABDEF006BC6EF00DEDEDE006B6B6B00316B
      7B0018A5D600189CCE00189CCE00000000000000000000ADFF00000000000000
      00005ABDFF0000FFFF0000E7FF0000EFFF0000EFFF0000E7FF0000E7FF0000DE
      FF0000FFFF00426BB500000000000000000000000000108CBD00189CCE0021AD
      DE0042C6EF0094949400EFE7E700B5B5B500ADA5A500DEB5B500949494007BE7
      FF00ADEFFF008CCEE7004AA5C600000000000000000000000000BD734A009C52
      4200C673000029A5180031AD2100D6AD1800FF9C0800E78C0000318400000073
      0000426B1000636B290000000000000000000000000063A55A00088C1000007B
      00003994290039CE520031AD9C0042B5DE0063C6D600D6D6D60063636300426B
      7B0029A5D60029A5D60000000000000000000000000000000000006BFF005ABD
      FF00C6FFFF0029EFFF0000EFFF0000F7FF0000FFFF0000FFFF0000E7FF0000E7
      FF0000DEFF0000FFFF00426BB500006BFF0000000000000000000884AD0021A5
      D60031BDEF0094949400EFE7E700B5B5B500ADA5A500DEB5B5009494940063E7
      FF006BCEE700007BA500000000000000000000000000000000009C524200BD73
      4A007B94080010C64A0031CE63007BCE6B00FFCE5A00FFA510006B8C00000084
      0000296B0000296B0000000000000000000000000000299C29004ADE6B0021B5
      310018AD290039CE520018A5390018A55A0042B54200C6B59C00525252008C73
      630042A5C600189CCE0000000000000000000000000000000000000000005ABD
      FF00C6FFFF006BFFFF0021FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000EF
      FF0000E7FF0000CEFF00426BB50000000000000000000000000000000000108C
      B500088CBD0094949400EFE7E700B5B5B500ADA5A500E7BDB50094949400189C
      C6002194BD000000000000000000000000000000000000000000A5947B00BD73
      4A0031BD390042D67300A5E79C00A5F7B500D6E79400D6B52900B58C00003184
      00005A7B2900A5947B00000000000000000000000000318C18004ADE6B004AE7
      730039D65A0039CE520029C6420021BD310018A51800219418006B8442000000
      0000000000000000000000000000000000000000000000000000006BFF005ABD
      FF00C6FFFF00E7FFFF0031FFFF0008FFFF0000FFFF0000FFFF0000FFFF0000F7
      FF0000E7FF0000FFFF00426BB500006BFF000000000000000000000000000000
      00000000000094949400E7E7E700ADADAD00ADA5A500DEB5B500949494000000
      000000000000000000000000000000000000000000000000000000000000A594
      7B0084C6730063DE7B00BDF7AD00D6FFBD005ADE840039B53100F78C0000C684
      0800A5947B0000000000000000000000000039A5390021B531004AE773004AE7
      730073D6840073B584001894210010A5180010A51800089C0800529429000000
      0000000000000000000000000000000000000000000000ADFF00000000005ABD
      FF00C6FFFF00E7FFFF006BFFFF0031FFFF0000FFFF0000FFFF0000FFFF0000F7
      FF0000FFFF0000CEFF00426BB500000000000000000000000000000000000000
      00000000000094949400B5B5B500A5A5A5009C949400ADA5A500949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5947B00ADC68C00A5D6840094DE8C0052CE63004AB53900D69C4200A594
      7B000000000000000000000000000000000094E7A5006BF7940052EF7B004ADE
      6B00D6D6D600A5A5A500217B29000894080008A5100010A5180073C663000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005ABDFF00C6FFFF00E7FFFF0073FFFF0021FFFF0000FFFF0000FFFF0000FF
      FF0000CEFF00426BB50000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700C6C6C600A5A5A500B5A5A500949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5947B00A5947B00AD847B00A5947B00A5947B00A5947B000000
      0000000000000000000000000000000000000000000042D663004ADE6B004ADE
      6B00D6D6D600A5A5A500399C420021BD310018A518004AA52900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006BFF005ABDFF00C6FFFF00E7FFFF00E7FFFF0000FFFF0000FFFF0000CE
      FF00426BB500006BFF0000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700EFEFEF00BDBDBD00A59C9C00949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005AE77B004ADE
      6B00CECECE008C8C8C005A944A0052BD4A0063C6630000000000000000000000
      0000000000000000000000000000000000000000000000000000006BFF0000AD
      FF0000000000000000005ABDFF005ABDFF0010B5FF0010B5FF0010B5FF0010B5
      FF00000000000000000000ADFF00006BFF000000000000000000000000000000
      0000000000000000000094949400949494009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042D6
      6300B5A58C00736B63008CB54A0021B529000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000AD4A1000AD4A1000B54A
      1000B54A1000B54A1000B54A1000B54A1000AD4A1000AD4A1000000000000000
      0000000000000000000000000000000000000000000000000000B5848400FFEF
      D600D6DEAD00DEDEAD00F7DEB500EFD6A500EFD69C00F7CE9C00F7CE9400F7CE
      9C00F7CE9C00F7D69C00B5848400000000000000000000000000B5948400FFEF
      C600F7DEB500F7D6AD00F7D6A500EFCE9400EFC68C00EFC68400EFC67B00EFC6
      8400EFC68400F7C68400A5636B000000000073DE940018633100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000AD4A1000D6522100F763
      4A00FF6B5200FF7B5A00FF846300FF735A00F7634A00C6522900AD4A10000000
      0000000000000000000000000000000000000000000000000000B5848400FFEF
      DE00ADCE940042AD39008CBD6B0031A5290031A529007BB55200D6C68C00EFCE
      9400EFCE9400F7D69C00B5848400000000000000000000000000B5948400FFEF
      CE00F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B000000000073DE940021844200186331000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000AD4A1000DE522900F773
      5200FF8C6B00FF7B5A00FFBDB500FFC6C600F7634200CE523100AD4A18000000
      0000000000000000000000000000000000000000000000000000B5847300FFF7
      E700CEDEAD0021A51800009C0000009C0000009C0000009C000042AD2900E7CE
      9400EFCE9400F7D69C00B5848400000000000000000000000000B5948C00FFEF
      DE00F7E7C600F7DEBD00F7D6B500EFD6AD00EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B000000000073DE940029A5520029A552001863
      3100000000000000000000000000000000000000000000000000000000000000
      000031CE630018633100000000000000000000000000B54A1800E7633900FF8C
      6B00FF8C6300FF947300FFEFEF00FFEFEF00F77B6300C6522900AD4A18000000
      0000000000000000000000000000000000000000000000000000B5847300FFF7
      EF00CEDEB50021A51800009C000029A52100BDCE8C008CBD6B00089C080094BD
      6300EFCE9C00F7D69C00B5848400000000000000000000000000BD948C00FFF7
      E700F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B000000000073DE94002184420029A552002184
      4200186331001863310018633100186331001863310018633100000000000000
      000031CE630018633100000000000000000000000000AD4A1800DE634200FF8C
      5A00F7845A00DEB5AD00EFF7F700FFDECE00FF946B00CE633900AD4A10000000
      0000000000000000000000000000000000000000000000000000BD8C8400FFFF
      F700CEDEBD0010A51000009C0000089C08009CC67B00F7DEBD00BDC68C0084BD
      6B00F7D6A500F7D69C00B5848400000000000000000000000000C69C9400FFFF
      F700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6AD00EFCE9C00EFC6
      9400EFC68C00EFC68400A5636B000000000073DE9400218442001863310029A5
      520029A5520029A5520029A5520029A5520029A5520018633100000000000000
      0000000000000000000000000000000000000000000000000000E76B3900944A
      42004A396B0029428400314A8C006B526B00DE6B4200CE632900000000000000
      0000000000000000000000000000000000000000000000000000BD8C8400FFFF
      FF00EFEFDE00B5DEA500ADD69C00ADCE9400ADCE9400F7DEC600F7DEBD00B5D6
      9400F7D6AD00F7D6A500B5848400000000000000000000000000C6A59C00FFFF
      FF00FFF7E700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6A500EFCE
      9C00EFC69400F7CE8C00A5636B000000000073DE940021844200186331000000
      0000000000000000000073DE940029A552002184420000000000000000000000
      000031CE63001863310000000000000000000000000000000000000000001831
      94000039AD000839A50000319C0000218C0029297B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C8400FFFF
      FF00BDE7B500FFF7EF00F7EFDE00B5D69C00ADCE9400ADCE8C00B5CE8C00EFDE
      B500F7DEB500F7DEAD00B5848400000000000000000000000000CEAD9C00FFFF
      FF00FFF7F700FFEFE700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6
      A500EFCE9C00F7CE9400A5636B000000000073DE940021844200186331000000
      00000000000031CE630029A55200186331000000000000000000000000000000
      000031CE6300186331000000000000000000000000000000000000104200105A
      CE001852BD001852BD001852BD001852BD000039AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C8400FFFF
      FF008CD68C00C6E7BD00FFF7EF009CCE8C00089C0800009C000010A51000F7DE
      C600F7DEBD00FFDEB500B5848400000000000000000000000000CEAD9C00FFFF
      FF00FFFFFF00FFF7F700FFEFE700F7EFDE00F7E7CE00F7E7C600F7DEBD00F7D6
      B500F7D6A500F7D6A500A5636B000000000073DE940021844200186331000000
      000073DE940029A5520021844200000000000000000000000000000000000000
      0000000000002184420018633100000000000000000000000000103984002173
      F700216BDE001863CE001863CE00216BD600185AC60000000000000000000000
      0000000000000000000000000000000000000000000000000000DEAD8400FFFF
      FF009CD69C00089C080094D68C00C6DEB50031AD2900009C000021A51800F7E7
      CE00F7E7C600F7DEB500B5848400000000000000000000000000D6B5A500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7CE00F7DEC600F7DE
      BD00F7DEB500EFCEA500A5636B000000000073DE9400218442001863310031CE
      630029A552001863310000000000000000000000000031CE6300186331000000
      0000000000000000000031CE6300186331000000000000000000103973002173
      DE002163BD001863CE00185AC6002173DE00216BDE0000000000000010000000
      00000039FF000000000000082900000000000000000000000000DEAD8400FFFF
      FF00F7FFF70042B54200009C0000009C0000009C0000009C000021A51800FFEF
      DE00E7DEC600C6BDAD00B5848400000000000000000000000000DEB5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFE7D600FFEF
      CE00DECEB500B5AD9400A5636B000000000073DE940029A5520073DE940029A5
      5200218442000000000000000000000000000000000031CE6300218442000000
      0000000000000000000031CE6300218442000000000000000000081010000008
      1000104273003194F700298CF7003194FF00217BEF0000000000000831000039
      FF00000000000039FF0000219400000000000000000000000000E7B58C00FFFF
      FF00FFFFFF00E7F7E70084CE840039B5390039AD31008CCE840042AD3900AD84
      7300BD847B00BD847B00B5848400000000000000000000000000DEB5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7E700EFDECE00B58C
      7B00A57B6B009C736300A5636B000000000073DE940029A5520029A552001863
      3100000000000000000000000000000000000000000031CE630029A552000000
      0000000000000000000031CE6300218442000000000039393100393931003931
      290010315200298CD60031A5F700319CEF001852B50000000000000831000000
      000000000000000000000039F700000000000000000000000000E7B58C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF00E7F7E700FFFFFF00BDC6AD00A58C
      6B00EFB57300EFA54A00C6846B00000000000000000000000000E7BDA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD00AD73
      5A00E79C5200E78C3100B56B4A000000000073DE940029A55200218442000000
      000000000000000000000000000000000000000000000000000031CE63001863
      3100186331001863310031CE6300186331000000000000000000393939007373
      73006B6B630039424A0010293900102131000000000000000000000000000000
      08000000000000000800001884000039FF000000000000000000EFBD9400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600BD84
      7B00FFC67300CE94730000000000000000000000000000000000E7BDA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600BD84
      6300FFB55A00BD7B5A00000000000000000073DE940018633100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      8C0094948C00847B7B0031292900000000000000000000000000000000000000
      00000000000000000000000000000031E7000000000000000000EFBD9400FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00BD84
      7B00CE9C84000000000000000000000000000000000000000000E7BDA500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00F7F7EF00DEC6C600B57B
      6300C6846B0000000000000000000000000073DE940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFBD9400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400BD84
      7B00000000000000000000000000000000000000000000000000EFC6AD00EFCE
      B500EFCEB500EFCEB500EFCEB500EFCEB500EFCEB500EFCEB500E7C6B500A56B
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD521000C66B2900C65A0800BD520800B5520800B55210000000
      000000000000000000000000000000000000000000000000000000000000009C
      CE004AB5E70063C6EF0052BDE70039B5DE004ABDE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C39
      0000D6844200DE8C4A00E7A55A000039FF00BD9C8400DE945A00CE732100C65A
      08009C390000000000000000000000000000000000000000000008A5CE0008A5
      D6007BD6F700A5DEFF0094DEFF0094DEFF007BCEEF0073CEEF004AB5E7000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000029ADD600ADF7FF0084EF
      FF004AC6E7004AC6E7004AC6E70031B5DE0021ADD60000000000000000000000
      00000000000000000000000000000000000000000000000000009C390000DE94
      5A00DE9C5A00DEB59400FFF7E7000039FF00CECEDE00FFFFEF00EFDECE00CE84
      3900C65A0800A53900000000000000000000000000000000000010ADD60018AD
      DE0084DEEF00A5E7FF0094DEFF0084D6F7005ABDE7008CD6F7009CDEFF0073CE
      F70000000000000000000000000000000000000000000000000018A5D60084DE
      F7008CD6EF006BA5B50052ADC60042C6EF0042BDEF0039BDE70018A5D6000000
      0000000000000000000000000000000000000000000029ADD600A5EFF7009CFF
      FF0094FFFF009CFFFF0094F7FF008CF7FF0084EFFF004AC6E7004AC6E70039BD
      DE00000000000000000000000000000000000000000000000000C6733900E7A5
      6B00DEBD9400FFF7DE00F7D6AD00FFCE9400F7BD8400F7C69400FFEFD600F7EF
      E700CE732900B54A00000000000000000000000000000000000021ADDE0029B5
      DE0094DEEF00B5EFFF00A5E7FF0063B5D600319CC6006BC6EF0094DEFF009CDE
      FF0031B5DE00000000000000000000000000000000000000000018A5D600A5EF
      FF008C949C00AD9C9C007B6B6B004AA5BD0042C6EF0042BDEF0018A5D6000000
      0000000000000000000000000000000000000000000029ADD6008CD6EF00ADFF
      FF0094FFFF0094F7FF0094F7FF008CF7FF008CF7FF0094F7FF0094F7FF0073DE
      F70029ADDE0000000000000000000000000000000000AD4A1000EFA57300D694
      6300FFFFE700FFFFD600FFFFCE00FFFFD600FFEFC600F7BD8C00EFBD8400FFF7
      E700DEBD9C00BD520000A539000000000000000000000000000029B5DE0039BD
      E700B5E7F700CEFFFF00B5F7FF0084CEDE00297BA5006BBDE70094DEFF0094DE
      FF0031B5DE00000000000000000000000000000000000000000018A5D600B5EF
      FF0094948C00D6CECE009C848400637B7B0052CEEF004AC6EF0018A5D6000000
      0000000000000000000000000000000000000000000029ADD60029ADD600ADF7
      FF0094FFFF0094F7FF0094F7FF008CF7FF008CF7FF008CF7FF008CF7FF0073DE
      F70052CEEF0000000000000000000000000000000000BD6B3900EFAD7300D6B5
      9400F7FFFF00FFFFE700FFFFDE00E7E7CE00DEDEC600FFEFC600F7BD8400EFCE
      AD00DEC6BD00BD5A0000A539000000000000000000000000000039BDE7004AC6
      EF00C6EFF700EFFFFF00CEF7FF00B5EFF70063ADBD008CCEEF009CDEFF0094DE
      FF0031B5DE00000000000000000000000000000000000000000018A5D600BDF7
      FF00C6DEE700A59C9C00CEC6C6007B6B630063CEE7005ACEF70018A5D6000000
      0000000000000000000000000000000000000000000029ADD6007BE7F70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF0073DE
      F7007BE7F70029B5DE00000000000000000000000000CE7B4200F7AD6B003194
      FF003194FF00FFFFFF00FFFFE7008C8C7B005A5A5A00E7EFCE00FFDEA5000039
      FF000039FF00CE630800A539000000000000000000000000000029B5DE0042C6
      E7005AC6DE006BCEE70063CEE70063C6E7006BCEE70084DEEF009CE7FF00A5E7
      FF0031B5DE00000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00ADC6C600C6BDBD00B5ADA500638C940063B5CE0018A5D6000000
      0000000000000000000000000000000000000000000029ADD60094FFFF0029AD
      D600ADEFF700ADF7FF00A5F7FF00A5F7FF008CF7FF008CF7FF008CF7FF0073DE
      F700007308005ACEEF00000000000000000000000000BD6B3100EFAD7300E7C6
      9C00FFFFFF00FFFFFF00FFFFF700E7E7CE008484730073736300F7D6AD00FFD6
      9C00E7CEB500BD5A0000A539000000000000000000000000000029B5DE0073DE
      E700318CA500399CB5006BE7F70042CEE70021B5DE0010ADD60029ADD6007BD6
      EF0031B5DE00000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF008C9C9C00DED6D600A5949400948C8C0018A5D6000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF0084F7
      FF0029ADD60029ADD60029ADD60029ADD600ADF7FF0094F7FF008CF7FF000073
      08005AE78C000073080018ADD6000000000000000000AD4A1000E7A56B00DEAD
      7B00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFF700ADAD9C00736B5200F7E7
      C600DEA57300BD5200009C3900000000000000000000000000000000000031B5
      D6004ABDD60073D6E7009CFFFF0084F7FF0052CEE70010A5CE000094C60010A5
      CE0018A5D600000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF00ADE7F7008C949400DED6D600AD9C9C009C8C84006B52
      42007B6B5A00735A520000000000000000000000000029ADD6009CFFFF0094FF
      FF0094FFFF0094FFFF0094F7FF006BDEF70029ADD6009CE7F7000073080052D6
      7B0042D66B0031C64A0000730800000000000000000000000000C6733900EFAD
      6B00E7C6A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CED6C600D6C6
      AD00CE6B1800B552000000000000000000000000000000000000000000000000
      0000000000000000000052CEE7004ACEE70042C6DE00109CC600089CC60010A5
      D60010A5CE00000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF00B5F7FF007BCEDE00ADADAD00CECEC600ADA59C00D6C6
      C600D6C6C600D6C6C600947B7300000000000000000029ADD6009CFFFF0094FF
      FF0094FFFF0094F7FF0094F7FF0094FFFF0084EFFF0029ADD60029ADD600108C
      210031C64A00109C210031ADDE000000000000000000000000009C390000D68C
      5200E7A56B00E7BD9400FFF7E7003194FF00D6EFFF00FFF7F700E7C6A500CE73
      2900BD5A08009C39000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000109CC6000894C6000000
      000000000000000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF00B5F7FF008CEFFF0073ADBD00CEC6C600D6CEC600EFE7
      E700EFE7E700F7EFEF00C6BDB500000000000000000029ADD600A5FFFF0094FF
      FF0094FFFF0094FFFF008CEFFF0094EFFF0094EFFF0094F7FF009CF7FF000884
      100018AD29000884100000000000000000000000000000000000000000009C39
      0000D6844A00E79C5A00E79C6300B5948400CE9C7B00D6945200CE732100C663
      10009C3900000000000000000000000000000000000000000000000000000000
      0000008CBD000084B500000000000000000000000000089CC6000894BD000000
      000000000000000000000000000000000000000000000000000018A5D600BDF7
      FF00DEFFFF00DEFFFF00BDF7FF008CEFFF00739CA500D6CECE00F7EFEF00EFE7
      E700F7EFEF00F7F7F700F7F7F700736352000000000021ADD60029ADD6009CF7
      FF009CF7FF0084EFFF0029ADDE0021ADD60029ADD60029ADDE0031B5DE000894
      100008A518000000000000000000000000000000000000000000000000000000
      00009C3900009C390000C66B2900CE732900CE6B2100BD5A1000A53900009C39
      0000000000000000000000000000000000000000000000000000000000000000
      000029B5DE00189CCE00000000000000000000000000089CCE000894BD000000
      000000000000000000000000000000000000000000000000000018A5D600B5F7
      FF00CEF7FF00BDEFF7009CE7F70073D6EF009C948C00FFFFFF00F7F7F700F7F7
      F700F7F7FF00BDB5AD00CEC6C6007363520000000000000000000000000029AD
      D60031ADDE0029ADDE0000000000000000000000000000000000088C100008A5
      1800088408000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A54208009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004AB5D6006BD6EF00000000000000000000000000089CC6000894BD000000
      000000000000000000000000000000000000000000000000000018A5D6007BD6
      EF0084D6EF007BD6EF0073CEEF0063CEEF0073ADBD00D6CEC600FFFFFF00E7E7
      E700948C84007B6B6300B5ADA50084736B000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000007B
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000009C390000C6733900CE7B4200BD5A0800B54A0000A53900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005AC6DE007BDEEF004ABDD60039ADD60018A5D600000000000000
      000000000000000000000000000000000000000000000000000018A5D6009CE7
      F700ADEFFF00ADEFFF009CEFFF0094EFFF0084E7FF009C948C00DEDEDE00CEC6
      BD00A59C9400CEC6C600948C7B00736352000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A53900009C3900009C3900009C3900009C3900009C3900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052BDD60052C6D6004ABDDE0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D60084736B008473
      6B00A59C940094847B0073635200000000000000000000000000AD4A0000B552
      0000B5520000AD4A0000000000000000000000000000AD4A0000B5520000B54A
      0000AD420000000000000000000000000000000000000000000000000000299C
      DE00299CDE00A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B73000000000000000000B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD848400BD848400BD84
      8400BD848400BD848400BD848400BD8484000000000000000000B54A00000000
      000000000000AD420000AD42000000000000AD420000AD4A0000000000000000
      0000AD4A00000000000000000000000000000000000000000000299CDE008CD6
      EF0084D6F700CEC6BD00FFEFDE00FFF7E700FFF7E700F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00FFEFDE00A57B730000000000B5848400FFEFD600F7E7C600F7DE
      BD00EFD6AD00EFD6A500F7D6A500F7CE9C00F7CE9400F7CE9C00F7CE9C00F7D6
      9C00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD848400F7DEB500F7D6
      AD00F7D6A500F7CE9C00F7CE8C00BD8484000000000000000000B54A00000000
      00000000000000000000AD42000000000000AD42000000000000000000000000
      0000AD42000000000000000000000000000000000000299CDE00A5EFFF0094F7
      FF008CF7FF00CEC6BD00F7E7DE00F7E7D600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7DEC600F7E7D600A57B730000000000B5848400FFEFDE00F7E7CE00E7CE
      B500D6BDA500CEB59C00DEC69C00E7C69C00EFCE9400EFCE9400EFCE9400F7D6
      9C00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C8400FFE7CE008C94
      DE001842F7008C8CCE00F7D69C00BD8484000000000000000000B54A0000A542
      00000000000000000000AD42000000000000AD4200000000000000000000A539
      0800AD4A000000000000000000000000000000000000299CDE00A5E7FF0094EF
      FF0084EFFF00CEC6BD00FFEFDE00FFE7CE00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00F7DEC600F7E7D600A57B730000000000B5847300FFF7E700FFE7D6004A42
      42003139390052636300AD9C8400BDAD8C00D6B58C00E7C69400EFCE9400F7D6
      9C00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400FFEFDE00184A
      FF000031FF00184AF700F7DEAD00BD848400000000000000000000000000B552
      0000B54A0000B5520000B54A000000000000B54A0000B54A0000AD4A0000AD42
      00000000000000000000000000000000000000000000299CDE00ADEFFF00A5F7
      FF0094F7FF00CEC6BD00FFEFE700FFE7D600FFDEC600FFDEC600FFDEC600F7DE
      BD00F7DEC600F7E7D600A57B730000000000B5847300FFF7EF00FFEFDE00B5A5
      9C0018637B00087BAD0018526B0063635A00A5947B00C6AD8400DEBD8C00EFCE
      9400B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEAD8400FFF7EF008C9C
      EF00184AFF008C94E700F7E7BD00BD8484000000000000000000000000000000
      0000AD4A0000B54A00009C4A0800844221009C420800B5420000AD4A00000000
      00000000000000000000000000000000000000000000299CDE00B5EFFF00ADF7
      FF00A5F7FF00CEC6BD00FFEFEF00FFEFDE00FFE7D600FFE7CE00FFE7CE00FFE7
      CE00F7E7D600F7EFDE00A57B730000000000BD8C8400FFFFF700FFEFE700F7E7
      D60039738400297B9C008C7B7B00946B6B007B5A52009C8C7300BDA58400DEBD
      8C00B57B84000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7B58C00FFFFF700FFF7
      EF00FFF7E700FFEFDE00FFEFCE00BD8484000000000000000000000000000000
      0000000000000000000084635200AD9C9C00AD42000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00BDEFFF00BDF7
      FF00B5F7FF00CEC6BD00FFF7F700FFEFD600FFDEBD00FFDEBD00FFDEBD00FFDE
      B500FFE7CE00F7EFE700A57B730000000000BD8C8400FFFFFF00FFF7EF00FFEF
      E700A5B5B5007B737B00E7A5A500CE949400A57373007352520094846B00AD9C
      7B00AD737B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFFFFF00FFFF
      FF00FFFFF700BD848400BD848400BD8473000000000000000000000000000000
      000000000000635A4A00C6B5B500CEB5B5008C736B00735A5200000000000000
      00000000000000000000000000000000000000000000299CDE00C6EFFF00CEF7
      FF00BDF7FF00CEC6BD00FFF7F700FFF7F700FFF7E700FFEFE700FFEFE700FFEF
      E700FFF7E700EFE7DE00A57B730000000000CE9C8400FFFFFF00FFFFF700FFF7
      EF00F7EFDE00847B7B00EFB5B500DEA5A500C68C8C009C6B6B0073524A009484
      6B009C6B6B00000000000000000000000000B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B584840000000000EFBD9400FFFFFF00FFFF
      FF00FFFFFF00BD848400D6946B00000000000000000000000000000000000000
      0000000000009C8C8C00EFDEE700947B7300BDA5A500AD94940063524A000000
      00000000000000000000000000000000000000000000299CDE00CEEFFF00DEFF
      FF00CEFFFF00CEC6BD00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E7
      E700D6BDB500C6ADA500A57B730000000000CE9C8400FFFFFF00FFFFFF00FFFF
      F700FFF7EF00F7E7DE00A57B7B00EFB5B500DEA5A500C68C8C009C6B6B00735A
      52008C636B00000000000000000000000000B5848400EFD6B500E7BD9400E7B5
      8C00DEB58400DEAD7300EFC68400B584840000000000EFBD9400DEAD8400DEAD
      8400428C3900BD84840000000000000000000000000000000000000000000000
      0000735A4A00EFE7E700BDB5AD0063524200B59C9C00D6B5BD00846B5A000000
      00000000000000000000000000000000000000000000299CDE00D6F7FF00EFFF
      FF00DEFFFF00CEC6BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DECE
      C600E7AD7300F7945A000000000000000000DEAD8400FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7EF00EFDECE009C737300EFB5B500DEA5A500C68C8C009C6B
      6B007B525200000000000000000000000000B5848400CE8C6B00942900009C31
      00009C3100009C310000E7B57B00B58484000000000000000000000000000073
      080042D6730031AD4A000000000000000000000000000000000000000000A58C
      8C00A59C9400EFEFEF007B635200000000007B635A00CEB5B500A58C8C00A58C
      8C000000000000000000000000000000000000000000299CDE00DEF7FF00FFFF
      FF00EFFFFF00CEC6BD00FFF7EF00FFF7F700FFF7F700FFF7F700FFF7F700E7C6
      BD00C6AD8C00299CDE000000000000000000DEAD8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7EF00E7CEC600A5737300EFBDBD00D6A5A500C68C
      8C00945A5A005A5A63000000000000000000BD8C8400FFEFE700A54210009429
      000094290000BD734A00FFE7B500B58484000000000000000000007B08004ACE
      73005AE78C0039C65A00108C210000000000000000000000000000000000735A
      5200DED6CE00ADA59C000000000000000000000000009C847B00C6ADAD00735A
      52000000000000000000000000000000000000000000299CDE00DEF7FF00FFFF
      FF00F7FFFF00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6
      BD0084C6DE00299CDE000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7EF00DEC6BD00AD848400F7BDBD00A584
      8C003194B50018ADCE0018ADCE0000000000CE9C8400FFFFFF00D6AD94009421
      0000A5421000EFCEAD00FFEFC600B584840000000000428429001094210029AD
      4A0039CE630021AD3900189C2900087B10000000000000000000000000008473
      6B00C6BDB5006B5A4A000000000000000000000000006B5A4A00AD9494008473
      6B000000000000000000000000000000000000000000299CDE00DEF7FF00F7F7
      F700B5C6CE00ADC6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00B5D6D600DEFF
      FF008CDEF700299CDE000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CECE00AD7B7300B57B7300429C
      BD0008CEF70000A5E7000018AD0000009C00DEAD8400FFFFFF00FFF7F700AD5A
      3100CE947300FFF7DE00DECEB500B58484000000000000000000000000000073
      080021BD4200088C180000000000000000000000000000000000000000008473
      6B008C7B6B000000000000000000000000000000000000000000846B63008473
      63000000000000000000000000000000000000000000299CDE00E7FFFF00DECE
      C600BDA59C00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEBDB500BD9C9400E7EF
      E70094DEF700299CDE000000000000000000EFBD9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600BD847B00DEA56B0010A5
      CE0000ADE7000831CE000829C6000018AD00E7B58C00FFFFFF00FFFFFF00EFDE
      D600FFF7EF00B5848400B5848400B5847300000000000000000000000000087B
      100010AD21000884100000000000000000000000000000000000000000006B5A
      4A0000000000000000000000000000000000000000000000000000000000735A
      4A00000000000000000000000000000000000000000000000000299CDE00B5D6
      E700949C9C00E7DED600FFFFFF00FFFFF700FFFFF700D6C6BD00849CA5008CCE
      E700299CDE00000000000000000000000000EFBD9400FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00BD847B00CE9C84000000
      0000007BCE004A63F700214ADE000010AD00EFBD9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5848400DE9C6300000000000000000000000000088C10000894
      100008A51800007B080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000299C
      DE00299CDE009C948C009C948C009C948C009C948C009C948C00299CDE00299C
      DE000000000000000000000000000000000000000000DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400BD847B00000000000000
      000000000000394ADE001829C60000000000EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400B58484000000000000000000008408000084080000941000089C
      1800008408000000000000000000000000000000000000000000000000000000
      0000000063000000630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A0000000000000000000000000000000000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      6B000018BD000010A50000006300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFFFEF00FFF7E700FFF7DE00F7EFDE00F7EFDE00F7EF
      DE00FFEFDE00F7E7D6008C5A5A0000000000000000000000000000000000BD4A
      0000FFF7D600FFEFC600FFF7BD00ADA5C6000021F700FFDE9400BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000000000000000000000000000000000000000
      6B005273FF000021D6000018AD00000063000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001873EF002973D6005284CE005A73B500215AC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700F7E7CE00F7E7CE00F7DECE00F7DEC600F7DE
      C600F7E7CE00EFDECE008C5A5A0000000000000000000000000000000000BD4A
      00000021F7000021F7000021F7000021F7000021F700FFDEA500F7D69C00BDAD
      AD000021F700FFDE8400FFD68C00BD4A00000000000000000000000000000000
      0000000063005273FF000018D6000018AD000000630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A94F7007BA5DE00B5BDC600D6C6BD00E7BDA500F7AD7300B5A5A5003973
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFDECE008C5A5A0000000000000000000000000000000000BD4A
      00009CA5E7008494DE007384DE00425AE7000021F7000021F7000021F7000021
      F7000021F7000021F7000021F700BD4A00000000000000000000000000000000
      000000000000000063005273FF000018D6000018AD0000006300000000000000
      0000000000000000000000000000000000000000000000000000298CFF007BAD
      EF00FFDEB500FFE7BD00FFE7BD00FFDEB500EFB59400E79C6B00FFCEA500EFDE
      D6007BA5E700317BE700000000000000000000000000B58C8C008C5A5A008C5A
      5A008C5A5A00B58C8C00FFF7EF00FFE7CE00FFE7C600FFDEC600FFDEC600F7DE
      BD00F7E7D600EFDECE009C6B630000000000000000000894CE000894CE00BD4A
      0000FFF7DE00FFF7CE00FFF7C600B5ADCE000021F700FFF7A500E7CEAD009C94
      BD000021F7008C94B5006B73CE00BD4A00000000000000000000000000000000
      00000000000000000000000063005273FF000018D6000018A500000063000000
      00000000000000000000000000000000000000000000000000004284CE00D6C6
      B500FFEFD600FFEFD600FFEFD600F7D6BD00E7AD8400EFB58400FFDEC600FFEF
      DE00FFFFF700BDD6F700428CEF000000000000000000B58C8C00FFFFEF00FFF7
      E700FFF7DE00B58C8C00FFFFF700FFE7CE00FFE7CE00FFE7C600FFDEC600FFDE
      C600F7E7D600EFE7D6009C6B6B00000000000894CE0063CEEF007BDEFF00BD4A
      00004263F700637BEF007B8CDE005A6BE7000021F700BDB5C600C6B5BD00A59C
      BD000021F700FFE78C00FFE79400BD4A00000000000000000000000000000000
      0000000000000000000000000000000063005273FF000018D6000010A5000000
      63000000000000000000000000000000000000000000318CFF00BD8C5200FFE7
      B500FFF7EF00FFF7EF00FFEFDE00EFCEB500DE9C6B00EFBD9C00FFEFDE00FFF7
      EF00FFFFFF00FFFFFF00ADC6EF00217BE70000000000B58C8C00FFF7E700F7E7
      CE00F7E7CE00B58C8C00FFFFF700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500F7E7DE00A57B7300000000000894CE007BDEF700A5EFFF00BD4A
      00000021F7000021F7000021F7000021F7000021F7000021F7000021F7000021
      F7000021F7000021F7000021F700BD4A00000000000000000000000000003963
      CE000084BD00000000000000000000000000000063005273FF000018D6000010
      A50000006300000000000000000000000000000000002984D6008CC67300FFFF
      EF00FFFFF700FFFFF700FFE7DE00E7BD9C00EFAD8400F7DEBD00C6C6BD00E7DE
      DE00FFFFFF00FFFFFF00C6A5AD004284DE0000000000B58C8C00FFF7E700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFEFDE00FFE7D600FFE7D600FFE7D600FFEF
      D600FFF7E700EFE7DE00A57B7300000000000894CE0084DEF700C6F7FF00BD4A
      0000FFFFFF00FFFFEF00FFFFE700B5BDE7000021F700FFFFBD00FFE7B500B5AD
      C6000021F700D6C6AD00ADA5C600BD4A00000000000000000000087BBD0000A5
      E70000A5E7000084BD00000000000000000000000000000063005273FF000010
      A50000319C00005AB500000000000000000000000000298C8C007BDE9C00FFFF
      FF00FFFFFF00FFFFFF00F7DECE00E7A58400EFB58C00FFEFDE00F7F7EF00CECE
      CE00D6D6CE00F7F7F7009C94B5003994FF0000000000B58C8C00FFF7EF00FFE7
      CE00FFE7C600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFDE
      DE00D6C6C600BDADAD00B5847300000000000894CE0084DEF700CEFFFF00BD4A
      0000EFC69C00EFC6A500FFDEAD009494CE000021F700FFFFCE00FFEFCE00C6BD
      DE000021F700FFFFB500FFF7C600BD4A00000000000000000000000000000084
      BD000084BD00000000000000000000000000000000000000000000006300004A
      AD0000C6FF000094CE000084BD0000000000000000001052D600CEDEF700FFFF
      FF00FFFFFF00FFFFFF00EFD6CE00E7AD8400F7CEAD00EFE7DE00FFFFF700FFFF
      FF00EFEFEF00B5D6FF003994FF000000000000000000B58C8C00FFFFF700FFE7
      CE00FFE7CE00B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00B58C8C00B58C8C00B58C8C00000000000894CE0084DEF700CEFFFF00BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A00000000000000000000000000000000
      000000000000000000000084BD00000000000084BD0000000000000000000084
      D6000094CE0000C6FF000084BD0000000000297BEF00315AF700FFFFFF00E7EF
      FF00BDDEFF009CC6FF004AA5FF0073ADEF00DEE7E700DED6CE00C6C6C600E7E7
      E700FFFFFF0073B5FF00298CFF000000000000000000B58C8C00FFFFF700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00EFB56B00C68C7B0000000000000000000894CE0084DEF700CEFFFF00BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A00000000000000000000000000000000
      000000000000000000000084BD000084BD000084BD0000000000000000000000
      00000084BD000084BD000000000000000000298CFF0052A5FF006BADFF0073B5
      FF0000000000000000000000000000000000298CFF00B5D6FF00F7F7F700DEDE
      CE00DEEFFF003994FF00000000000000000000000000B58C8C00FFFFFF00FFEF
      DE00FFE7D600B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C
      8C00BD8484000000000000000000000000000894CE0084E7FF00D6FFFF00C6DE
      DE0094C6C6008CC6C60073BDC6000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084BD0000BDFF0000BDFF0000B5F7000084BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000298CFF00BDDE
      FF0073B5FF00298CFF00000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFDEDE00D6C6C600BDADAD00B58473000000
      0000000000000000000000000000000000000894CE007BDEF700B5E7F70094E7
      FF0063DEFF005ADEFF0052DEFF000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084BD000084BD000084BD0000ADEF000084C6000084BD000084BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000298CFF0000000000000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00B58C8C00B58C8C00B58C8C000000
      0000000000000000000000000000000000000894CE000894CE000894CE000894
      CE000894CE000894CE000894CE000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000084BD0000ADEF000084BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00000000000000
      0000000000000000000000000000000000000894CE000894CE0063CEEF0063D6
      EF005AD6F7004AC6EF000894CE000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00BD84840000000000000000000000
      000000000000000000000000000000000000000000000894CE000894CE000894
      CE000894CE000894CE000894CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEC6B500DEBDB500D6BDB500D6B5AD00D6B5A500DEBDAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6AD9C00BDA59C00B5948C00CE9C8C00000000000000
      000000000000000000000000000000000000000000000000000000000000E7BD
      B500E7D6D600E7E7E700DEE7E700CEC6C600C6BDBD00BDBDC600B5ADAD00BDA5
      9C00DEBDAD000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      000000000000DEAD9400CEBDBD00B5BDC6009C9CA5009C8C8400DEAD94000000
      0000000000000000000000000000000000000000000000000000E7C6B500F7EF
      EF00F7FFFF00DEBDB500CE7B5A00CE734A00C6734A00C6735200C69C8C00B5AD
      B500B5A5A500D6B5A50000000000000000000000000000000000004A08000063
      080000A5080000A5080000A50800009C0800009C080000A5080000A5080000A5
      0800006B00000031000000000000000000000000000000000000004A08000063
      080000A5080000A5080000A50800009C0800009C080000A5080000A5080000A5
      0800006B00000031000000000000000000000000000000000000000000000000
      0000DEAD9C00E7D6CE00DEDEE700C6947B00B5847300A59C9C00A58C8C00C69C
      8C000000000000000000000000000000000000000000E7BDAD00F7F7EF00FFFF
      FF00D68C6B00BD421000BD4A1800F7DECE00EFC6B500BD421000BD4A1800C67B
      5A00B5B5B500BDADA500DEBDAD000000000000000000004A0800006B100008AD
      180000A51000009C0800009C0800009C0800009C0800009C0800009C080000A5
      080000A50800006B0000004A00000000000000000000004A0800006B100008AD
      180000A51000009C0800009C0800009C0800009C0800009C0800009C080000A5
      080000A50800006B0000004A000000000000000000000000000000000000DEAD
      9400EFDEDE00F7FFFF00C67B5A00A5210000AD210000B5634A00A59CA5009C8C
      8400DEAD940000000000000000000000000000000000F7E7DE00FFFFFF00DE9C
      7B00BD421000BD4A1800BD4A1800E7AD8C00DE9C8400BD4A1800BD4A1800BD42
      1000C6846300BDBDC600CEB5AD000000000000000000004A080010AD310008AD
      290008A51800009C080010AD2100D6F7DE00EFFFEF004AC65200009C0800009C
      0800009C080000A50800004A00000000000000000000004A080010AD310008AD
      290008A51800009C08004AC65200EFFFEF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A0000000000000000000000000000DEAD9400EFE7
      DE00FFFFFF00CE846B00B5421800DE9C8400DE9C8400BD421800B55A4200A59C
      A5009C8C8400C69C8C000000000000000000E7C6B500FFFFFF00F7DED600C652
      2100BD4A1800BD4A1800C6522900DE9C8400D68C6300BD4A1800BD4A1800BD4A
      1800BD4A1800CEB5A500CEC6C600DEBDAD00005200000884210010B5420008AD
      290000A51000009C080000A5100084D68C00FFFFFF00F7FFF70042BD4A00009C
      0800009C080000A50800007B080000420000005200000884210010B5420008AD
      290000A5100042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B08000042000000000000DEAD9400F7E7DE00FFFF
      FF00D68C7300A5290000AD311000F7E7DE00F7E7D600AD311000AD290800B563
      4200A59CA5009C8C8400DEAD940000000000EFCEC600FFFFFF00E7A58400C652
      2100C65A2900BD4A1800C65A2900FFFFF700FFEFE700C6522100BD421000BD4A
      1800BD421000CE8C6B00D6DEDE00DEBDAD000052000010A5420018B54A0010AD
      310000A51000009C0800009C0800009C080073D67B00FFFFFF00F7FFF70039BD
      4A00009C080000A5080000940800004200000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A508000094080000420000DEAD9400F7E7DE00FFFFFF00E7A5
      8C00B5391000B5310800AD310800F7DECE00F7D6C600AD310800AD310800AD29
      0800B55A4200A59C9C009C8C8400C69C8C00EFD6CE00FFFFFF00DE946B00CE63
      2900CE633100C65A2900C6522100E7B59C00FFFFFF00EFCEB500C65A2900BD4A
      1800BD421000CE734A00E7E7EF00DEC6B500006B080021B5520018B55200BDEF
      CE00BDEFC600B5EFC600BDEFC600B5EFC600B5EFC600F7FFF700FFFFFF00EFFF
      EF0052C65A0000A50800009C0800004A0000006B080021B5520018B5520073D6
      9400F7FFF700FFFFFF00F7FFFF00B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500B5E7B50000A50800009C0800004A0000E7BDAD00FFFFFF00F7DEC600C65A
      2100C6522100BD4A1800B5421000F7DECE00F7D6CE00AD310800AD310800AD31
      0800AD290000B57B6B009C9CA500B5948C00EFD6CE00FFFFFF00E7A57300D673
      3900D6733900CE6B3100CE632900C65A2900E7B59C00FFFFFF00F7E7D600C65A
      2900BD421000CE7B5200EFF7FF00E7C6BD000873100039BD6B0029BD5A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADE7B50000A50800009C0800005200000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000A50800009C080000520000E7BDAD00FFFFFF00F7DECE00D673
      3100CE6B2900C65A2900C6522100F7E7DE00F7DECE00AD311000AD310800AD31
      0800AD290800C6948400BDBDC600C6A59C00EFCEC600FFFFFF00EFC69C00D67B
      4200D6844A00DE845200CE733900CE633100C65A2100E7B59C00FFFFFF00DE9C
      7B00B5390800D6947300F7FFFF00E7C6B500007B080052C67B0042C6730052C6
      7B0052CE840052CE840052CE84004AC673007BD69400FFFFFF00FFFFFF0094DE
      A50018AD310000A51800009C080000420000007B080052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00FFFFFF0084DEA50039BD5A0042C65A0042BD5A0042BD
      5A0042BD520000A51800009C080000420000DEAD9400F7E7DE00FFFFFF00EFCE
      A500D67B3900CE6B3100D67B4200F7D6BD00E7BD9C00BD421800B5310800AD29
      0800CE8C6B00DEE7E700CEBDB500D6A59400EFCEC600FFFFFF00FFEFE700DE8C
      4A00F7D6B500FFFFFF00E7A57300CE6B3100C65A2100DE9C7300FFFFFF00E7AD
      8C00C64A1800EFDECE00F7F7EF00E7C6B500007B08004ABD6B0084DEA50021B5
      520018B54A0021B5520021B5520052CE7B00E7F7EF00FFFFFF008CDE9C0010AD
      290008A5210000A51000008C080000420000007B08004ABD6B0084DEA50021B5
      520018B54A0094DEB500FFFFFF00E7F7EF004AC6730010AD310008AD310008AD
      290008A5210000A51000008C08000042000000000000DEAD9400EFDED600FFFF
      FF00F7D6B500DE8C4200D67B3900DE8C5200D67B4A00C6522100BD421800D69C
      7B00F7FFFF00E7CECE00DEAD94000000000000000000F7E7D600FFFFFF00EFC6
      9C00EFB58400FFFFFF00FFF7F700EFBD9C00EFBD9C00FFF7F700FFFFF700D67B
      4A00DEA57B00FFFFFF00EFD6CE00000000000000000021A53100ADE7C6006BD6
      8C0010AD4A0018B54A0039BD6B00F7FFF700FFFFFF0084DE9C0010AD310008A5
      290008A5210008AD1800006B0800000000000000000021A53100ADE7C6006BD6
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010AD310008A5
      290008A5210008AD1800006B0800000000000000000000000000D6A59400EFDE
      D600FFFFFF00F7D6B500E7944A00FFEFDE00F7E7D600CE632900E7A58400FFFF
      FF00EFDED600D6AD9400000000000000000000000000E7C6BD00FFEFEF00FFFF
      FF00EFC69C00EFC69400FFEFDE00FFF7F700FFF7EF00F7E7CE00E79C7300E7AD
      8400FFFFFF00F7E7E700EFD6CE00000000000000000021A5310052C67300C6F7
      DE0063CE8C0021B5520021B55200ADE7C60094DEB50018B54A0010AD390010AD
      310008B52900089C1800006B0800000000000000000021A5310052C67300C6F7
      DE0063CE8C0021B5520018B54A0094DEB500ADE7C60018B54A0010AD390010AD
      310008B52900089C1800006B080000000000000000000000000000000000DEAD
      9400EFDED600FFFFFF00F7DEBD00F7C68C00EFB57B00EFBD9400FFFFFF00F7E7
      DE00DEAD94000000000000000000000000000000000000000000E7C6BD00F7EF
      EF00FFFFFF00F7E7CE00EFC6A500EFC69C00EFBD9400EFBD9400F7DEC600FFFF
      FF00F7EFE700E7C6B50000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630029BD5A0021BD
      4A0010A531000063080000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630029BD5A0021BD
      4A0010A531000063080000000000000000000000000000000000000000000000
      0000D6A59400EFDED600FFFFFF00FFEFD600F7E7C600FFFFFF00F7E7DE00DEAD
      9C0000000000000000000000000000000000000000000000000000000000E7C6
      BD00F7E7E700FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7E7
      D600F7E7D6000000000000000000000000000000000000000000000000004ABD
      63004ABD63009CE7B500BDEFD600A5E7C60094E7B5007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000004ABD
      63004ABD63009CE7B500BDEFD600A5E7C60094E7B5007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      000000000000DEAD9400EFDECE00FFFFFF00FFFFFF00F7E7E700DEAD94000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6BD00E7C6BD00EFCEC600EFCEBD00E7C6BD00E7C6BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEAD9400E7BDAD00E7BDAD00DEAD9400000000000000
      000000000000000000000000000000000000000000000000000000000000A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00000000000000
      00000000000000000000000000000000000000000000C68C8400DEA58400DE9C
      7B00DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C
      8400DE9C7B00DE9C8400C6847B00BD7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD420000BD420000BD420000BD420000BD420000BD420000BD420000BD42
      0000BD420000BD420000BD420000BD420000000000000000000000000000A563
      6B00EFCEB500FFE7C6009CC68400C6CE9400E7CEA500EFC69C00A5636B00A563
      6B00A5636B00A5636B000000000000000000C68C8400CE948400EFB59400FFD6
      9C00FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE
      9400FFD69C00EFB58C00CE8C8400C6847B0000000000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000000000000000000000000000000000000000
      0000BD420000FFFFFF00FFFFFF00FFFFEF00FFEFD600FFE7C600FFE7BD00FFDE
      AD00FFDEAD00FFDEA500FFEFC600BD420000000000000000000000000000A563
      6B00EFCEB500F7E7C600109429001894310039A54200D6CE9C00FFD6A500E7CE
      9400D6C68400DEC68400A5636B00A5636B00C68C8400E7B58C00C68C8400F7CE
      AD00F7D6AD00F7CEAD00F7D6AD00F7D6AD00F7D6AD00F7D6AD00F7CEAD00F7D6
      AD00EFC6A500C68C8400EFBD9C00C68C840000000000BD4A0000FFFFFF00FFFF
      FF00FFFFFF006BBD5A00FFEFCE00FFEFCE00FFEFCE00B57B4200736B1800FFCE
      A500FFCEA500FFCEA500BD4A0000000000000000000000000000000000000000
      0000BD420000FFFFFF00FFF7EF00FFF7E700FFEFD600FFE7C600FFDEB500FFD6
      A500FFCE9C00FFCE9400FFDEAD00BD420000000000000000000000000000A573
      6B00F7CEB500FFE7CE00189C3100008C210010942900C6C69400FFD6AD00BDBD
      8400189431000894290094B56300A5636B00C68C8400F7D6B500DEA58C00CEA5
      9C00EFDECE00EFDEC600EFDEC600EFDEC600EFDEC600EFDEC600EFDEC600EFDE
      C600CE949400DEAD9400EFDEC600C684840000000000BD4A0000FFFFFF00FFFF
      FF00FFFFFF006BBD5A00FFEFCE00FFEFD600FFEFC6007B736B00084A5A00736B
      5A00D6AD8400FFCEA500BD4A0000000000000000000000000000BD420000BD42
      0000BD420000FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDE
      B500FFD6AD00FFCE9C00FFDEAD00BD4200000000000029A5CE0029A5CE00A573
      6B00F7CEB500FFEFD600BDD6A50042A552005AAD5A00EFD6AD00FFD6AD00CEC6
      9400299C3900008C210084B56300A5636B00C68C8400EFDED600F7D6B500C68C
      7B00DEC6BD00EFE7DE00EFE7D600EFE7D600EFE7D600EFE7D600F7EFDE00D6B5
      AD00CE948400F7E7CE00EFDED600C68C840000000000BD4A000073B5630063B5
      5A0063B55A00399C290063AD4A0063AD4A0063AD4A004A9C420039636B009C63
      6B005A4A310052733100BD4A0000000000000000000000000000BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFDE00FFE7
      CE00FFDEBD00FFD6AD00FFE7B500BD42000029A5CE0063CEEF007BDEFF00BD84
      6B00EFD6BD00FFEFDE00FFE7DE00D6D6AD0052AD5A00EFD6B500FFDEB500F7D6
      AD0042A54A008CB56B00EFCE9400A5636B00C68C8C00EFE7DE00FFF7E700F7CE
      AD00BD8C8400EFD6D600F7E7DE00EFE7DE00EFE7DE00F7E7DE00E7CEC600C68C
      8400F7DEC600F7F7EF00F7E7DE00C68C8C0000000000BD4A0000EFF7E700EFF7
      EF00EFF7EF0063B55200DEE7C600EFE7CE00EFE7BD00E7DEA5005A7B3900E794
      9C00A56B6B00634A3900C64A0000000000000000000000000000BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEF
      DE00FFE7CE00FFDEBD00FFE7C600BD42000029A5CE007BDEF700A5EFFF00BD84
      6B00F7D6C600FFF7E700F7E7D600FFE7D60094C684008CBD7B00CECEA5008CBD
      7B0063AD5A00F7CEA500F7CE9C00A5636B00C68C8C00F7F7EF00FFFFF700D6AD
      A500C68C8400C6949400C6848400C68C8400C68C8400C68C8C00C6949400C684
      8400E7CEC600FFFFFF00F7EFEF00C68C8C0000000000BD4A0000FFFFFF00FFFF
      FF00F7F7FF0063B56300F7F7E700FFFFEF00FFF7E700FFE7C60063AD4200DE9C
      9C00DE949C00B56363006B5A310000000000BD420000BD420000BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFEFDE00FFE7CE00FFEFD600BD42000029A5CE0084DEF700C6F7FF00D694
      6B00EFD6C600FFF7EF00FFEFDE00FFE7D600EFDEC60031A542001094290039A5
      4A00E7CEA500F7D6AD00F7D6A500A5636B00C68C8C00EFD6D600CE949400CEA5
      A500F7EFEF00F7F7F700E7E7E700E7E7E700E7E7E700E7EFEF00EFF7F700DED6
      D600C6949400D6A5A500F7E7E700C68C8C0000000000C64A00008C8CF7004242
      EF003131E7002129C6006363F700A5BDCE00A5D68C0094C67B004AA539009CC6
      7B0084844A0073848C000894CE000018A500BD420000FFFFFF00BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFEF00FFFFFF00BD42000029A5CE0084DEF700CEFFFF00DE9C
      7300F7DEC600FFFFF700FFEFE700FFEFDE00E7E7C600299C3900008C1800319C
      4200E7D6AD00F7D6AD00F7D6A500A5636B00BD848400BD949400E7C6C600FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00E7F7F700CEB5B500CE949400BD8484000000000063429C004242CE009494
      B500A59CB500A5A5C6005A5AC6001829BD006B9C9C009CD684004AA53900A5CE
      8C00ADC67B006BADA500005AE7000008A500BD420000FFFFFF00BD420000FFFF
      FF00BD420000EFA56300E79C5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C
      5A00E79C5200E79C5200EF9C5A00BD42000029A5CE0084DEF700CEFFFF00E7AD
      7B00F7E7D600FFFFFF00FFFFF700FFF7EF00F7EFDE008CC68C006BBD730094C6
      8C00EFDEBD00F7DEB500F7DEB500A5636B00B5847B00A5DEE700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00EFFFFF00E7F7
      F700D6EFEF00C6EFF700ADBDC600B57B7B004242FF00525AF700D6D6C600FFEF
      AD00F7BD8400FFC68C00FFFFD6006B6BBD005A52FF00EFEFF7006BBD5A00FFFF
      FF00FFEFDE00FFE7BD005A426B0000000000BD420000FFFFFF00BD420000FFFF
      FF00FFFFFF00BD420000BD420000BD420000BD420000BD420000BD420000BD42
      0000BD420000BD420000BD4200000000000029A5CE0084DEF700CEFFFF00E7AD
      7B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D694
      6B00D6946B00D6946B00D6946B00A5636B00BD847B00B5A5A500FFFFFF00FFFF
      FF00FFFFFF00F7F7FF00E7EFEF00CEE7E700A5CED60094C6CE0084BDC6007BB5
      C6006BADCE0073A5BD00A5848C00BD7B7B004242FF009C9CD600FFFFD600FFFF
      CE00FFF7C600F7D69400EFBD7B00D6C6B5003939CE00B5BDEF007BC65A00FFFF
      F700FFEFD600FFE7BD00B54A080000000000BD420000FFFFFF00BD420000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      EF00FFFFFF00BD420000000000000000000029A5CE0084E7FF00D6FFFF00C6DE
      DE0094C6C6008CC6C60073BDC60029A5CE000000000000000000000000000000
      00000000000000000000000000000000000000000000C6737300C6949400A5DE
      DE008CFFFF007BDEEF0073D6E7006BDEE7006BDEEF006BDEEF006BDEF7006BDE
      FF0084BDD600B58C8C00C67B7B00000000004A4AF700ADBDE700FFFFF700FFFF
      DE008484730031313100524A3900A59494004242D60094423100CE5A0000C652
      0000C6520000C65200000000000000000000BD420000FFFFFF00BD420000EFA5
      6300E79C5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C5200E79C
      5200EF9C5A00BD420000000000000000000029A5CE007BDEF700B5E7F70094E7
      FF0063DEFF005ADEFF0052DEFF0029A5CE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B584
      840094B5BD0073F7FF006BF7FF0073F7FF0073F7FF006BF7FF0073E7FF009CAD
      B500C68484000000000000000000000000004242FF00B5B5E700FFFFFF00FFFF
      F700DEDEB5005A635200B5946B00E7CEAD003139E7008C423100000000000000
      000000000000000000000000000000000000BD420000FFFFFF00FFFFFF00BD42
      0000BD420000BD420000BD420000BD420000BD420000BD420000BD420000BD42
      0000BD42000000000000000000000000000029A5CE0029A5CE0029A5CE0029A5
      CE0029A5CE0029A5CE0029A5CE0029A5CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C67B7B00AD9C9C0084DEE70073F7FF0073EFFF0084D6E700AD949C00C67B
      7B00000000000000000000000000000000004242FF007B7BE700FFF7EF00FFFF
      FF00FFFFFF00F7F7DE00A5A57B00948CB5002931FF0000000000000000000000
      000000000000000000000000000000000000BD420000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFEF00FFFFFF00BD42
      00000000000000000000000000000000000029A5CE0029A5CE0063CEEF0063D6
      EF005AD6F7004AC6EF00219CCE0029A5CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD848400B5949400B5949400BD848400000000000000
      000000000000000000000000000000000000000000004242FF00847BE700DEDE
      E700EFF7F700EFF7F700A5A5DE003939EF000000000000000000000000000000
      000000000000000000000000000000000000BD420000EFA56300E79C5A00E79C
      5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C5200E79C5200EF9C5A00BD42
      0000000000000000000000000000000000000000000029A5CE0029A5CE0029A5
      CE0029A5CE00299CCE0029A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003131FF004239
      F7004A4AEF003939EF002929FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD420000BD420000BD42
      0000BD420000BD420000BD420000BD420000BD420000BD420000BD4200000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000F00000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF0000000007FFFF9F00000000
      007FFC03000000000000FC03000000000000F800000000008000F80000000000
      C181F800000000008101F8010000000000008003000000000000800300000000
      0000801F000000000000001F000000008181001F00000000C3C3803F00000000
      FFFFC07F00000000FFFFE0FF00000000F81FF81FFFFFFFFFE007E007F00FE969
      C003C003E00B800180018001E0038A5380018001E0070A5300000000E00F8A5F
      00000000E00F0A5F00000000E00FBA5F00000000E007BA5F00000000E00F3E5F
      00000000E00FBE5F80018001E00F3E7F80018001E00FBE7FC003C003E00FBFFF
      E007E007E00F3FFFF81FF81FF01FBFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FC000
      FFFFF9FFE00F8000F9FFF0FFCFC78000F0FFF0FF87E38000F0FFE07FA3F38000
      E07FC03F31F98000C07F843F38F98000843F1E3F3C7980001E3FFE1F3E398000
      FE1FFF1F3F198000FF1FFF8F9F8B8001FF8FFFC78FC3C03FFFC7FFE3C7E7E07F
      FFE3FFF0E00FFFFFFFF8FFFFF83FFFFF6D9F80018001FFFF459100000000FF8F
      459100000000FF87459000000000FFC341900000000000610180000000000070
      018000000000007041800000000003F801800000000001F801800000000000F0
      4380000000001800C380000000001C01C690000000001E03C690000000001F07
      D69100000000FFFFDF9D80018001FFFFFDC7F0FF8FFFC001F003E00F87FF8000
      C001C00383FF800000018001C1FF800000010001E0FF800000010001F0038000
      00010001F801800080010001FC008000C0030001FC008000E0070001FC008000
      F00F8003FC008000F03FC007FC008000F03FE00FFC008000F03FF01FFE018000
      E03FF99FFF038000E07FFF9FFFFFC001FFC7FFFFFCFFC0010003FFFFFC0FC001
      0003FFFFFC03800100038001FC03C00100038001F001C00100038001E000C001
      00038001C000C001000380018001C001000380010001C001818780010003C001
      C3C780010003C001FE4480010007C001FC008001000FC001FC008001801FC003
      FC01FFFFC03FC007FE43FFFFE07FC00FFFFFFFFCF81FE000F80F9FF9F81FE000
      F0038FF3F81FE000E00387E7F81FE0008000C3CFFC3F00000000F11FFC3F0000
      0000F83FFC3F00000000FC7FFC3F00000000F83FFC3F00000000F19FFC3E0000
      0000E3CF981C00008001C7E700000000F80F8FFB00010000F80F1FFF00030001
      F81F3FFF0007E003F83FFFFF981FE007FE7FE000FC00FE3FF07FE0000000E007
      C001E0000000E007C001E00000008003C001E00000008001C001000000008001
      C001000000008001C001000000008001C001000000008001C00100000000C003
      C00100000007E007C00100000007F81FC00100000007F81FC0010001000FF81F
      F001E003001FF81FFC7FE007003FFC3FFE3FFFFFFFFFFE1FE007FFFFFF9FFC0F
      E007FC3FFC03FC0F8003F81FFC03FC0F8001F00FF800DC0E8001E007F800E805
      8001C003F800F0038001C003F801B0038001C0038003C000C003C0038003E001
      E007C003801FC000F81FE007001FA001F81FF00F001FF003F81FF81F803FF003
      F81FFFFFC07FCC0CFC3FFFFFE0FFFFFFFFFFC001C001FFFF003FC001C0013FFF
      001FC001C0011FFF001FC001C0010FF3801FC001C0010033801FC001C001003F
      C03FC001C0011C73E07FC001C00118F3C07FC001C00111F98041C001C001039C
      8055C001C001079C8049C001C0010F9C805DC001C0011FC0C0C0C003C0033FFF
      E1FEC007C0077FFFFFFFC00FC00FFFFFFFFFF81FE07FFFFF8FFFE007C01FE03F
      807FC003C00FC01F800FC003C007C01F80078001C007C01F80078001C007C01F
      80038001C007C01F80038001C007C01F80018001E007C0038001C003FC07C001
      8001C003FF9FC0018003E007F39FC0008007F00FF39FC000E3C7FC3FF39FC000
      FE0FF81FF83FC000FFFFF81FFC7FE001C387E0018007FF80D937C0010007FF80
      DD7780010007FF80CD6780010007FF80E10F80010007FF80F01F80010007FF80
      FC7F80010007FF80F83F800100070081F81F800100070083F01F8003000700E3
      E10F8003000300C1E38F800300010080E38F8003000000E3E7CF8003000000E3
      EFEFC007001001C3FFFFE00F80390307F3FFFFFFF801E03FE1FFFFFFF801E001
      E0FFFC1FF801E000F07FF00FF801E000F83FC00380018000FC1FC00180010000
      FE0F800080010000E707800080010000C383800080010000E7C1800180010000
      FD61000180030000FC730F03800700FFF83FFFC3801F00FFF01FFFF7801F00FF
      FC7FFFFF803F00FFFEFFFFFF807F81FFF81FF81FF81FFC3FE007E007E007F81F
      C003C003C003F00F800180018001E007800180018001C0030000000000008001
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008001800180018001C003800180018001E007C003C003C003F00F
      E007E007E007F81FF81FF81FF81FFC3FE03F8000FFFFF000E00300008001F000
      E00000008001F000E00000008001C000800000008001C000000000008001C000
      0000000080010000000000008000000000000000800000000000000000010001
      000000000001000300FF80010003000300FFE007003F000700FFF00F007F000F
      00FFFC3F80FF000F81FFFFFFC1FF801F00000000000000000000000000000000
      000000000000}
  end
  object csdUser: TClientDataSet
    Aggregates = <>
    CommandText = 'select 1 as img, fnumber,Fname_l2,FID from T_PM_Role'#13#10
    Params = <>
    ProviderName = 'dspRoleUser'
    RemoteServer = DMPub.SocketConn
    AfterScroll = csdUserAfterScroll
    OnCalcFields = csdUserCalcFields
    Left = 64
    Top = 383
  end
  object dsUser: TDataSource
    DataSet = csdUser
    Left = 64
    Top = 439
  end
  object cdsSee: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from FIELDPDM'
    Params = <>
    ProviderName = 'dspRoleFieldPDM'
    RemoteServer = DMPub.SocketConn
    OnNewRecord = cdsSeeNewRecord
    OnReconcileError = cdsSeeReconcileError
    Left = 261
    Top = 96
    object cdsSeeuser_id: TStringField
      FieldName = 'user_id'
      Size = 60
    end
    object cdsSeeisSeePrice: TIntegerField
      FieldName = 'isSeePrice'
    end
    object cdsSeeisSeeMoney: TIntegerField
      FieldName = 'isSeeMoney'
    end
    object cdsSeeisSeeA: TIntegerField
      FieldName = 'isSeeA'
    end
    object cdsSeeisSeeB: TIntegerField
      FieldName = 'isSeeB'
    end
    object cdsSeeid: TStringField
      FieldName = 'id'
      KeyFields = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 100
    end
  end
  object dsSee: TDataSource
    DataSet = cdsSee
    Left = 261
    Top = 144
  end
  object cdsModule: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from F_MODULE  order by id'
    Params = <>
    ProviderName = 'dspRoleModule'
    RemoteServer = DMPub.SocketConn
    OnFilterRecord = cdsModuleFilterRecord
    OnNewRecord = cdsModuleNewRecord
    OnReconcileError = cdsModuleReconcileError
    Left = 485
    Top = 128
    object cdsModuleMODULE_ID: TStringField
      DisplayLabel = #27169#22359#21495
      DisplayWidth = 12
      FieldName = 'MODULE_ID'
      Size = 60
    end
    object cdsModuleMODULE_NAME: TStringField
      DisplayLabel = #27169#22359#21517#31216
      DisplayWidth = 12
      FieldName = 'MODULE_NAME'
      Size = 100
    end
    object cdsModuleUSER_ID: TStringField
      DisplayLabel = #29992#25143#32534#21495
      DisplayWidth = 10
      FieldName = 'USER_ID'
      Size = 60
    end
    object cdsModuleISSELECT: TIntegerField
      DisplayLabel = #36873#25321
      FieldName = 'ISSELECT'
    end
    object cdsModuleid: TStringField
      FieldName = 'id'
      KeyFields = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 100
    end
  end
  object dsModule: TDataSource
    DataSet = cdsModule
    Left = 485
    Top = 176
  end
  object cdsModuleList: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from F_MODULE_LIST'
    Params = <>
    ProviderName = 'dspRoleModuleList'
    RemoteServer = DMPub.SocketConn
    OnNewRecord = cdsModuleListNewRecord
    OnReconcileError = cdsModuleListReconcileError
    Left = 309
    Top = 488
    object cdsModuleListMODULE_ID: TStringField
      DisplayLabel = #27169#22359#21495
      DisplayWidth = 10
      FieldName = 'MODULE_ID'
      Size = 60
    end
    object cdsModuleListMODULE_LIST_ID: TStringField
      DisplayLabel = #26435#38480#21495
      DisplayWidth = 10
      FieldName = 'MODULE_LIST_ID'
      Size = 60
    end
    object cdsModuleListMODULE_LIST_NAME: TStringField
      DisplayLabel = #26435#38480#21517#31216
      FieldName = 'MODULE_LIST_NAME'
      Size = 100
    end
    object cdsModuleListUSER_ID: TStringField
      DisplayLabel = #29992#25143#32534#21495
      FieldName = 'USER_ID'
      Size = 60
    end
    object cdsModuleListisSelect: TIntegerField
      DisplayLabel = #36873#25321
      FieldName = 'isSelect'
    end
    object cdsModuleListid: TStringField
      FieldName = 'id'
      KeyFields = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 100
    end
  end
  object dsModuleList: TDataSource
    DataSet = cdsModuleList
    Left = 309
    Top = 536
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Images = DMPub.ImageList16
    Left = 397
    Top = 488
    object N1: TMenuItem
      Caption = #20840' '#36873
      ImageIndex = 20
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #21453' '#36873
      ImageIndex = 19
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #36864' '#20986
      ImageIndex = 22
      OnClick = N4Click
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Images = DMPub.ImageList16
    Left = 309
    Top = 256
    object MenuItem1: TMenuItem
      Caption = #20840' '#36873
      ImageIndex = 20
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #21453' '#36873
      ImageIndex = 19
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object MenuItem4: TMenuItem
      Caption = #36864' '#20986
      ImageIndex = 22
      OnClick = N4Click
    end
  end
  object TreeImg: TImageList
    Left = 32
    Top = 512
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000000000000000000000000000000000000009C9C0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000000000000000000000000000000000000009C9C00CEFFFF009CCE
      FF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCE
      FF009CCEFF009CCEFF0063CECE00000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C0000000000000000000000000000000000000000008441
      0800000000009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2
      A5009CA2A5000000000000000000000000000000000084000000000000008400
      0000000000008400000084000000840000008400000084000000000000000000
      00008400000000000000000000000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CFF
      FF009CCEFF009CCEFF0063CECE00000000000000000000000000009C9C000000
      00009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CCEFF009CCEFF009CCE
      FF0063CECE00009C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000000000000000000000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCE
      FF009CFFFF009CCEFF0063CECE000000000000000000009C9C00000000009CFF
      FF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CCEFF009CCE
      FF0063CECE0000000000009C9C00000000000000000000000000000000008441
      0800000000009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2
      A5009CA2A5000000000000000000000000000000000084000000000000008400
      0000000000008400000084000000840000008400000084000000000000000000
      00008400000000000000000000000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CFF
      FF009CCEFF009CFFFF0063CECE000000000000000000009C9C00000000009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF00009C9C0000000000009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000000000000000000000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CCE
      FF009CFFFF009CCEFF0063CECE0000000000009C9C00000000009CFFFF009CFF
      FF009CFFFF009CFFFF009CCEFF009CFFFF009CFFFF009CCEFF009CFFFF0063CE
      CE000000000063CECE0063CECE00000000000000000000000000000000008441
      0800000000009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2
      A5009CA2A5000000000000000000000000000000000084000000000000008400
      0000000000008400000084000000840000008400000084000000000000000000
      00008400000000000000000000000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFF
      FF009CCEFF009CFFFF0063CECE0000000000009C9C00000000009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF0063CE
      CE000000000063CECE0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000000000000000000000000000000000000009C9C00CEFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CCEFF0063CECE0000000000009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C
      9C0063CECE009CFFFF0063CECE00000000000000000000000000000000008441
      0800000000009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2
      A5009CA2A5000000000000000000000000000000000084000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      00008400000000000000000000008400000000000000009C9C00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF009CFFFF0063CECE000000000000000000009C9C00000000009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000008000000000000000009C9C0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C
      9C00009C9C00009C9C00009C9C000000000000000000009C9C00000000009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00000000000000
      0000000000000000000063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000800000000000000000000000009C9C00F7F7
      F700CEFFFF00CEFFFF009CFFFF009CFFFF00009C9C0000000000000000000000
      00000000000000000000000000000000000000000000009C9C00000000009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF0000000000009C9C00009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000084020400840204008402
      0400840204008402040084020400840204008402040084020400840204008402
      04008402040084020400840204000000000000000000840000007B7B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008000000080000000000000000000000000000000009C
      9C00009C9C00009C9C00009C9C00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C000000
      000000000000000000000000000000000000009C9C0000000000000000000000
      0000000000000000000000000000000000000000000084020400840204008402
      0400840204008402040084020400840204008402040084020400840204008402
      0400840204008402040084020400000000000000000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000009C
      9C00009C9C00009C9C00009C9C00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000084020400840204008402
      0400840204008402040084020400840204008402040084020400840204008402
      0400840204008402040084020400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000800000000000000000000000000000000000
      000000000000B58C8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A000000000000000000B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFFFEF00FFF7E700FFF7DE00F7EFDE00F7EFDE00F7EF
      DE00FFEFDE00F7E7D6008C5A5A0000000000B5848400FFEFD600F7E7C600F7DE
      BD00EFD6AD00EFD6A500F7D6A500F7CE9C00F7CE9400F7CE9C00F7CE9C00F7D6
      9C00B584840000000000000000000000000000000000000000004A526300FFEF
      C600F7DEB500F7D6AD00F7D6A500EFCE9400EFC68C00EFC68400EFC67B00EFC6
      8400EFC68400F7C68400A5636B00000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700F7E7CE00F7E7CE00F7DECE00F7DEC600F7DE
      C600F7E7CE00EFDECE008C5A5A0000000000B5848400FFEFDE00F7E7CE00E7CE
      B500D6BDA500CEB59C00DEC69C00E7C69C00EFCE9400EFCE9400EFCE9400F7D6
      9C00B5848400000000000000000000000000000000004284B500186BC600636B
      8400F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B00000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFDECE008C5A5A0000000000B5847300FFF7E700FFE7D6004A42
      42003139390052636300AD9C8400BDAD8C00D6B58C00E7C69400EFCE9400F7D6
      9C00B5848400000000000000000000000000000000000000000031A5FF001073
      D6006B6B8400F7DEBD00F7D6B500EFD6AD00EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B00000000000000000000000000000000000000
      000000000000848484007B6352007B6352007B6352007B635200848484000000
      00000000000000000000000000000000000000000000B58C8C008C5A5A008C5A
      5A008C5A5A00B58C8C00FFF7EF00FFE7CE00FFE7C600FFDEC600FFDEC600F7DE
      BD00F7E7D600EFDECE009C6B630000000000B5847300FFF7EF00FFEFDE00B5A5
      9C0018637B00087BAD0018526B0063635A00A5947B00C6AD8400DEBD8C00EFCE
      9400B58484000000000000000000000000000000000000000000A5635A0031A5
      FF001073D6005A638400F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B00000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000B58C8C00FFFFEF00FFF7
      E700FFF7DE00B58C8C00FFFFF700FFE7CE00FFE7CE00FFE7C600FFDEC600FFDE
      C600F7E7D600EFE7D6009C6B6B0000000000BD8C8400FFFFF700FFEFE700F7E7
      D60039738400297B9C008C7B7B00946B6B007B5A52009C8C7300BDA58400DEBD
      8C00B57B84000000000000000000000000000000000000000000A5736B00FFFF
      F70031A5FF00427BAD008C635A00AD7B730094635A00AD7B6B00CEA58400EFC6
      9400EFC68C00EFC68400A5636B00000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000B58C8C00FFF7E700F7E7
      CE00F7E7CE00B58C8C00FFFFF700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500F7E7DE00A57B730000000000BD8C8400FFFFFF00FFF7EF00FFEF
      E700A5B5B5007B737B00E7A5A500CE949400A57373007352520094846B00AD9C
      7B00AD737B000000000000000000000000000000000000000000A5736B00FFFF
      FF00FFF7E700AD8C8C00B58C8400DEBDA500EFD6B500D6B59C00B58C7300CEA5
      8400EFC69400F7CE8C00A5636B00000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000B58C8C00FFF7E700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFEFDE00FFE7D600FFE7D600FFE7D600FFEF
      D600FFF7E700EFE7DE00A57B730000000000CE9C8400FFFFFF00FFFFF700FFF7
      EF00F7EFDE00847B7B00EFB5B500DEA5A500C68C8C009C6B6B0073524A009484
      6B009C6B6B000000000000000000000000000000000000000000BD846B00FFFF
      FF00FFF7F700AD847B00DEC6B500F7E7CE00F7E7C600FFFFF700D6B59C00AD7B
      6B00EFCE9C00F7CE9400A5636B00000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000B58C8C00FFF7EF00FFE7
      CE00FFE7C600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFDE
      DE00D6C6C600BDADAD00B584730000000000CE9C8400FFFFFF00FFFFFF00FFFF
      F700FFF7EF00F7E7DE00A57B7B00EFB5B500DEA5A500C68C8C009C6B6B00735A
      52008C636B000000000000000000000000000000000000000000BD846B00FFFF
      FF00FFFFFF0094636300F7EFE700F7EFDE00F7E7CE00FFFFEF00EFD6B5009463
      5A00F7D6A500F7D6A500A5636B00000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000B58C8C00FFFFF700FFE7
      CE00FFE7CE00B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00B58C8C00B58C8C00B58C8C0000000000DEAD8400FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7EF00EFDECE009C737300EFB5B500DEA5A500C68C8C009C6B
      6B007B5252000000000000000000000000000000000000000000D6946B00FFFF
      FF00FFFFFF00B58C8400DECEC600FFEFE700FFEFDE00FFFFD600DEBDA500AD7B
      7300F7DEB500EFCEA500A5636B00000000000000000000000000000000000000
      000000000000000000005A5252005A5252005A5252005A525200000000000000
      00000000000000000000000000005A52520000000000B58C8C00FFFFF700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00EFB56B00C68C7B000000000000000000DEAD8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7EF00E7CEC600A5737300EFBDBD00D6A5A500C68C
      8C00945A5A005A5A630000000000000000000000000000000000D6946B00FFFF
      FF00FFFFFF00D6BDBD00BD949400DECEC600F7EFDE00DEC6B500B58C8400B58C
      7B00DECEB500B5AD9400A5636B0000000000000000005A5252005A5252000000
      0000000000005A525200848484008484840084848400848484005A5252000000
      000000000000000000005A5252005A52520000000000B58C8C00FFFFFF00FFEF
      DE00FFE7D600B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C
      8C00BD848400000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7EF00DEC6BD00AD848400F7BDBD00A584
      8C003194B50018ADCE0018ADCE00000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00D6BDBD00B58C840094636300AD847B00CEA59C00A56B
      5A00A56B5A00A56B5A00A5636B0000000000527B840084848400848484005A52
      52005A52520084848400C6C6C600C6C6C600C6C6C600848484005A5252005A52
      52005A5252005A525200C6C6C6005A52520000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFDEDE00D6C6C600BDADAD00B58473000000
      000000000000000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CECE00AD7B7300B57B7300429C
      BD0008CEF70000A5E7000018AD0000009C000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD00A56B
      5A00E79C5200E78C3100B56B4A000000000063636300FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      840084848400C6C6C6005A5252000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00B58C8C00B58C8C00B58C8C000000
      000000000000000000000000000000000000EFBD9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600BD847B00DEA56B0010A5
      CE0000ADE7000831CE000829C6000018AD000000000000000000E7AD7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600A56B
      5A00FFB55A00BD7B5A000000000000000000527B8400FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60084848400000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00000000000000
      000000000000000000000000000000000000EFBD9400FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00BD847B00CE9C84000000
      0000007BCE004A63F700214ADE000010AD000000000000000000E7AD7B00FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00F7F7EF00DEC6C600A56B
      5A00C6846B0000000000000000000000000063636300FFFFFF00FFFFFF008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      84008484840000000000000000000000000000000000B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00BD84840000000000000000000000
      00000000000000000000000000000000000000000000DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400BD847B00000000000000
      000000000000394ADE001829C600000000000000000000000000E7AD7B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00A56B
      5A00000000000000000000000000000000000000000084848400848484000000
      0000000000008484840084848400848484008484840084848400848484000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF8001FFFFC000FFFFBFFD8007
      8000E000BFFDBFF78000C000A805A8378000D000BFFDBFF78000A000A805A837
      8000A000BFFDBFF780004000A805A83780004000BFFDBF7780000000A80588B6
      8000A000BFFD95448001A03CBFFD8AB8C03FA0818001857CE07FDF7F800182FC
      FFFFE0FF8001FDF8FFFFFFFFFFFFFE04F8018007C001F81FF8010007C001F81F
      F80100078001F81FF8010007C001F81F80010007C001FC3F80010007C001FC3F
      80010007C001FC3F80010007C001FC3F80010007C001FC3F80010007C001FC3E
      80030003C001981C80070001C0010000801F0000C0010001801F0000C0030003
      803F0010C0070007807F8039C00F981F00000000000000000000000000000000
      000000000000}
  end
  object cdsType: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReportType'
    RemoteServer = DMPub.SocketConn
    Left = 264
    Top = 344
    object cdsTypeID: TStringField
      FieldName = 'ID'
      Size = 44
    end
    object cdsTypeTREEID: TStringField
      FieldName = 'TREEID'
      Size = 44
    end
    object cdsTypeFNUMBER: TStringField
      FieldName = 'FNUMBER'
      Size = 100
    end
    object cdsTypeREPORTTYPENAME: TStringField
      FieldName = 'REPORTTYPENAME'
      Size = 100
    end
    object cdsTypeFPARENTID: TStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsTypeFISROOT: TIntegerField
      FieldName = 'FISROOT'
    end
    object cdsTypeFIMGAGEINDEX: TIntegerField
      FieldName = 'FIMGAGEINDEX'
    end
    object cdsTypeFSELECTIMGAGEINDEX: TIntegerField
      FieldName = 'FSELECTIMGAGEINDEX'
    end
    object cdsTypeFISSYSTEM: TIntegerField
      FieldName = 'FISSYSTEM'
    end
    object cdsTypeFLEVEL: TFloatField
      FieldName = 'FLEVEL'
    end
    object cdsTypeFVISIBLE: TIntegerField
      FieldName = 'FVISIBLE'
    end
    object cdsTypeFTABLENAME: TStringField
      FieldName = 'FTABLENAME'
      Size = 200
    end
    object cdsTypeFCREATORID: TStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsTypeFLASTUPDATEUSERID: TStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsTypeFLONGNUMBER: TStringField
      FieldName = 'FLONGNUMBER'
      Size = 2400
    end
  end
  object dsType: TDataSource
    DataSet = cdsType
    Left = 336
    Top = 356
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 16511980
    end
  end
  object cdsTypeList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsTypeListFilterRecord
    Left = 356
    Top = 188
  end
end
