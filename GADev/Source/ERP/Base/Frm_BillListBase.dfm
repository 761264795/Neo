object FM_BillListBase: TFM_BillListBase
  Left = 209
  Top = 31
  Align = alClient
  BorderStyle = bsNone
  Caption = #26597#35810#21015#34920#22522#31867
  ClientHeight = 660
  ClientWidth = 1058
  Color = 14804455
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 28
    Width = 1058
    Height = 632
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 0
    object pl_right: TPanel
      Left = 888
      Top = 0
      Width = 170
      Height = 632
      Align = alRight
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 0
      Visible = False
      object Label1: TLabel
        Left = 831
        Top = 10
        Width = 33
        Height = 13
        AutoSize = False
        Visible = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 170
        Height = 30
        Align = alTop
        Color = 16511980
        TabOrder = 0
        object Label4: TLabel
          Left = 25
          Top = 5
          Width = 100
          Height = 19
          AutoSize = False
          Caption = #24120#29992#30456#20851#25253#34920
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = #24494#36719#38597#40657
          Font.Style = []
          ParentFont = False
        end
        object Image1: TImage
          Left = 5
          Top = 7
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617036040000424D360400000000000036000000280000001000
            0000100000000100200000000000000400000000000000000000000000000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00A5522100944A2100944A2100944A2100944A2100944A2100944A2100944A
            2100944A2100944A2100944A2100944A2100944A2100944A2100944A2100A552
            210084422100FFF7EF00FFF7E7008C848400FFEFDE00FFEFD6008C848400FFE7
            CE00FFE7CE008C848400FFDEBD00FFDEB5008C848400FFD6AD00FFD6AD00944A
            21007B422100F7EFE7008C8484008C8484008C8484008C8484008C8484008C84
            84008C8484008C8484008C8484008C8484008C8484008C8484008C8484008C4A
            2100844221008C8484008C848400FFF7EF005273E7000021B500FFEFDE001084
            180018631800FFEFD600BD73730094424200FFE7C6005AA5EF002163A5008C4A
            210084422100FFF7EF008C848400FFF7EF00526BE7000021B500FFEFDE001084
            100018631800FFEFD600BD73730094424200FFE7C6005AA5EF002163A5008C4A
            21007B4218008C8484008C848400FFFFF700526BE7000021B500FFEFDE001884
            180018631800FFEFD600FFE7C600FFE7C600FFE7C6005AA5EF002163A5008C4A
            21007B421800FFFFF7008C848400FFFFF700526BE7000021B500FFEFDE00188C
            180018631800FFEFD600FFE7C600FFE7C600FFE7C6005AA5EF002163A5008C4A
            2100844221008C8484008C848400FFFFF700526BE7000021B500FFEFDE00188C
            180018631800FFEFD600FFEFCE00FFE7CE00FFE7C600FFE7C600FFE7C6008C4A
            21007B391800FFFFFF008C848400FFFFFF00FFFFFF00FFF7EF00FFEFDE001884
            180018631800FFEFDE00FFEFD600FFE7CE00FFE7C600FFE7C600FFE7C6008C42
            2100844221008C8484008C848400FFFFFF00FFFFFF00FFF7EF00FFEFDE00FFEF
            DE00FFEFDE00FFEFDE00FFEFD600FFEFD600FFE7CE00FFE7C600FFE7BD00944A
            2900B56B3900D6AD6300D6A55A00D6A55A00D6A55A00D6A55A00D6A55A00D6A5
            5A00D6A55A00D6A55A00DEAD6B00D6AD6300DEAD6B00CEA56B00CEAD7300B56B
            3900AD5A2100DE7B2100DE7B2100DE7B2100DE7B2100DE7B2100DE7B2100DE7B
            2100DE7B2100DE842900F7BD8400E78C2100F7BD8400B57B52004A6BD600BD5A
            1800FFFFFF00AD5A2900AD5A2900AD5A2900AD5A2900AD5A2900AD5A2900AD5A
            2900AD5A2900AD5A2900AD5A3100AD5A2100AD633100A55229009C523900FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
          Transparent = True
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 30
        Width = 170
        Height = 602
        Align = alClient
        Color = 16511980
        TabOrder = 1
        object cxGrid2: TcxGrid
          Left = 1
          Top = 1
          Width = 168
          Height = 600
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Green'
          object cxReport: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxReportCellDblClick
            DataController.DataSource = dsReportList
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.DataRowHeight = 26
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            OptionsView.HeaderHeight = 22
            Styles.Background = cxStyle2
            Styles.Content = cxStyle2
            Styles.Inactive = cxStyle5
            object cxReportFID: TcxGridDBColumn
              DataBinding.FieldName = 'FID'
              Visible = False
            end
            object cxReportFReportName: TcxGridDBColumn
              DataBinding.FieldName = 'FReportName'
              PropertiesClassName = 'TcxHyperLinkEditProperties'
              Properties.Alignment.Vert = taVCenter
              Properties.LinkColor = clBlack
              Properties.ReadOnly = False
              Properties.StartKey = 118
              Properties.SingleClick = True
              Properties.ValidateOnEnter = True
              Properties.Prefix = ''
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              VisibleForCustomization = False
              Width = 160
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxReport
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 888
      Height = 632
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 89
        Width = 888
        Height = 6
        Cursor = crVSplit
        Align = alTop
      end
      object pnTop: TPanel
        Left = 0
        Top = 0
        Width = 888
        Height = 89
        Align = alTop
        Color = 16511980
        TabOrder = 0
        DesignSize = (
          888
          89)
        object lb_MaterialID: TLabel
          Left = 831
          Top = 10
          Width = 33
          Height = 13
          AutoSize = False
          Visible = False
        end
        object lb_Report: TLabel
          Left = 867
          Top = 1
          Width = 20
          Height = 87
          Cursor = crHandPoint
          Align = alRight
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = '>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          Layout = tlCenter
          Visible = False
          OnClick = lb_ReportClick
          OnMouseEnter = lb_ReportMouseEnter
          OnMouseLeave = lb_ReportMouseLeave
        end
        object btnSearch: TcxButton
          Left = 784
          Top = 40
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #26597#35810
          TabOrder = 0
          OnClick = btnSearchClick
        end
        object recCount: TcxComboBox
          Left = 784
          Top = 8
          Anchors = [akTop, akRight]
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            '100'#34892
            '500'#34892
            '1000'#34892
            #20840#37096)
          TabOrder = 1
          Text = '100'#34892
          Width = 75
        end
      end
      object cxPage: TcxPageControl
        Left = 0
        Top = 95
        Width = 888
        Height = 537
        ActivePage = tb_Grid
        Align = alClient
        Color = 16511980
        HideTabs = True
        ParentColor = False
        Style = 10
        TabOrder = 1
        TabPosition = tpBottom
        OnChange = cxPageChange
        ClientRectBottom = 537
        ClientRectRight = 888
        ClientRectTop = 0
        object tb_Grid: TcxTabSheet
          Caption = #32593#26684
          ImageIndex = 0
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 888
            Height = 537
            Align = alClient
            PopupMenu = pmDetail
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Blue'
            object dbgList: TcxGridDBTableView
              OnDblClick = dbgListDblClick
              NavigatorButtons.ConfirmDelete = False
              OnCustomDrawCell = dbgListCustomDrawCell
              DataController.DataSource = dsList
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.DataRowHeight = 22
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OptionsView.Indicator = True
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = dbgList
            end
          end
        end
        object tb_chart: TcxTabSheet
          Caption = #22270#34920
          ImageIndex = 1
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 888
            Height = 34
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 16511980
            TabOrder = 0
            DesignSize = (
              888
              34)
            object SpeedButton1: TSpeedButton
              Left = 1
              Top = 2
              Width = 28
              Height = 31
              GroupIndex = 1
              Down = True
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFF
                FFF00AAAAAA00FFFFFFFFFFFF00B0AAAAAAAA00FFFFFFFFF0BBBB0AAAAAAA0C0
                FFFFFFFF0BBBB0AAAAAA0CC0FFFFFFF0BBBBBB0AAAA0CCCC0FFFFFF0BBBBBB0A
                AA0CCCCC0FFFFF0BBBBBBBB0A0CCCCCCC0FFFF0BBBBBBBB00CCCCCCCC0FFFF0B
                BBBBBBB00CCCCCCCC0FFFF0BBBBBBB0990CCCCCCC0FFFF0BBBBBBB09990CCCCC
                C0FFFFF0BBBBB0999990CCCC0FFFFFF0BBBBB09999990CCC0FFFFFFF0BBB0999
                999990C0FFFFFFFF0BBB099999999900FFFFFFFFF00099999999900FFFFFFFFF
                FFF0099999900FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 30
              Top = 3
              Width = 28
              Height = 28
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                8F8F8F8F8F8F8F8F8FFFFFF000000000000000000FFFFF80F99FCCF22FEEF11F
                FFFFFFF0F99FCCF22FEEF11FFFFFFF80F99FCCF22FEEF11FFFFFFFF0F99FCCF2
                2FEEFFFFFFFFFF80F99FCCF22FEEFFFFFFFFFFF0FFFFCCF22FEEFFFFFFFFFF80
                FFFFCCF22FEEFFFFFFFFFFF0FFFFCCF22FEEFFFFFFFFFF80FFFFFFF22FEEFFFF
                FFFFFFF0FFFFFFF22FEEFFFFFFFFFF80FFFFFFF22FFFFFFFFFFFFFF0FFFFFFF2
                2FFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF80
                FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object SpeedButton3: TSpeedButton
              Left = 58
              Top = 3
              Width = 28
              Height = 28
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                0400000000000001000000000000000000001000000010000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
                3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
                000077777777777777773303333333333333337FFF333333333F370993333333
                3399377773F33333337733033933333339333F7FF7FFFFFFF7FF770777977777
                977777777777777777773303339333339333337F3373F3337333370333393339
                3333377F33373FF7333333033333999333333F7FFFFF777FFFFF770777777777
                777777777777777777773303333333333333337F333333333333370333333333
                3333377F33333333333333033333333333333F7FFFFFFFFFFFFF770777777777
                7777777777777777777733333333333333333333333333333333}
              NumGlyphs = 2
              OnClick = SpeedButton1Click
            end
            object SpeedButton4: TSpeedButton
              Left = 86
              Top = 3
              Width = 28
              Height = 28
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                8F8F8F8F8F8F8F8F8FFFFFF000000000000000000FFFFF809999999999999999
                9FFFFFF099999999999999999FFFFF8099999999999999999FFFFFF099999999
                999999999FFFFF8099999999999999999FFFFFF099999999C99999999FFFFF80
                999C999CCC9999999FFFFFF099CCC9CCCCC99999CFFFFF809FFCCCCCCCCC999C
                CFFFFFF0FFFFCCCCCCCCC9CCCFFFFF80FFFFFCCCFCCCCCCCCFFFFFF0FFFFFFCF
                FFCCCCCCCFFFFF80FFFFFFFFFFFCCCCCCFFFFFF0FFFFFFFFFFFFCCCFCFFFFF80
                FFFFFFFFFFFFFCFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object SpeedButton5: TSpeedButton
              Left = 114
              Top = 3
              Width = 28
              Height = 28
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8F8F8FFFFFFFF
                00000000000000000FFFFFF80FFFFFFFFFFFFFFFFFFFFFFF099999FFFFFFFFFF
                FFFFFFF8099999FFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF80CCCCCCC
                CFFFFFFFFFFFFFFF0CCCCCCCCFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFF
                0222222222222FFFFFFFFFF80222222222222FFFFFFFFFFF0FFFFFFFFFFFFFFF
                FFFFFFF80EEEEEEEEEEFFFFFFFFFFFFF0EEEEEEEEEEFFFFFFFFFFFF80FFFFFFF
                FFFFFFFFFFFFFFFF0111FFFFFFFFFFFFFFFFFFF80111FFFFFFFFFFFFFFFFFFFF
                0FFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object Label5: TLabel
              Left = 145
              Top = 11
              Width = 22
              Height = 13
              Caption = 'X '#36724
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 266
              Top = 11
              Width = 31
              Height = 13
              Caption = 'Y-1 '#36724
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 375
              Top = 11
              Width = 31
              Height = 13
              Caption = 'Y-2 '#36724
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 486
              Top = 11
              Width = 31
              Height = 13
              Caption = 'Y-3 '#36724
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cxComBox_X: TcxComboBox
              Left = 169
              Top = 7
              ParentFont = False
              Properties.DropDownListStyle = lsEditFixedList
              Properties.DropDownSizeable = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfOffice11
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.Kind = lfOffice11
              TabOrder = 0
              Width = 95
            end
            object cxComBox_Y: TcxComboBox
              Left = 299
              Top = 7
              ParentFont = False
              Properties.DropDownListStyle = lsEditFixedList
              Properties.DropDownSizeable = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfOffice11
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.Kind = lfOffice11
              TabOrder = 1
              Width = 72
            end
            object cxComBox_Y2: TcxComboBox
              Left = 409
              Top = 7
              ParentFont = False
              Properties.DropDownListStyle = lsEditFixedList
              Properties.DropDownSizeable = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfOffice11
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.Kind = lfOffice11
              TabOrder = 2
              Width = 72
            end
            object cxComBox_Y3: TcxComboBox
              Left = 520
              Top = 7
              ParentFont = False
              Properties.DropDownListStyle = lsEditFixedList
              Properties.DropDownSizeable = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfOffice11
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.Kind = lfOffice11
              TabOrder = 3
              Width = 72
            end
            object CheckBox1: TCheckBox
              Left = 744
              Top = 9
              Width = 73
              Height = 17
              Anchors = [akTop, akRight]
              Caption = '3D'#25928#26524
              Checked = True
              State = cbChecked
              TabOrder = 4
              OnClick = CheckBox1Click
            end
            object v_item: TcxComboBox
              Left = 814
              Top = 6
              Anchors = [akTop, akRight]
              ParentFont = False
              Properties.DropDownListStyle = lsEditFixedList
              Properties.DropDownSizeable = True
              Properties.Items.Strings = (
                #20540
                #21517#31216
                #21517#31216'+'#20540)
              Properties.OnCloseUp = v_itemPropertiesCloseUp
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfOffice11
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.Kind = lfOffice11
              TabOrder = 5
              Text = #21517#31216
              Width = 70
            end
            object BitBtn1: TcxButton
              Left = 610
              Top = 4
              Width = 75
              Height = 25
              Caption = #20998#26512
              TabOrder = 6
              OnClick = BitBtn1Click
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF008400000084000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0084000000008400000084000084000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00840000000084000000840000008400000084000084000000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00840000000084000000840000008400000084000000840000008400008400
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008400
                000000840000008400000084000000FF00000084000000840000008400000084
                000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000084
                0000008400000084000000FF0000FF00FF0000FF000000840000008400000084
                000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
                00000084000000FF0000FF00FF00FF00FF00FF00FF0000FF0000008400000084
                00000084000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000FF0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00000084
                0000008400000084000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
                000000840000008400000084000084000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000FF000000840000008400000084000084000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000FF000000840000008400000084000084000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000FF0000008400000084000000840000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000FF00000084000000840000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000840000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF0000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.SkinName = 'Seven'
            end
          end
          object DBChart1: TDBChart
            Left = 0
            Top = 34
            Width = 888
            Height = 503
            BackWall.Brush.Color = clWhite
            Foot.AdjustFrame = False
            Foot.Visible = False
            Gradient.EndColor = clWhite
            Gradient.StartColor = 16744448
            Gradient.Visible = True
            LeftWall.Brush.Color = clWhite
            Title.AdjustFrame = False
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            Chart3DPercent = 8
            DepthAxis.Automatic = False
            DepthAxis.AutomaticMaximum = False
            DepthAxis.AutomaticMinimum = False
            DepthAxis.Maximum = -0.500000000000000000
            DepthAxis.Minimum = -0.500000000000000000
            Legend.ColorWidth = 10
            Legend.TopPos = 5
            RightAxis.Automatic = False
            RightAxis.AutomaticMaximum = False
            RightAxis.AutomaticMinimum = False
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            Align = alClient
            BevelOuter = bvNone
            Color = clWindow
            PopupMenu = Pm_Chart
            TabOrder = 1
            Visible = False
            AutoSize = True
            object Series1: TPieSeries
              Active = False
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 8
              Marks.Visible = True
              SeriesColor = clRed
              OtherSlice.Text = 'Other'
              PieValues.DateTime = False
              PieValues.Name = 'Pie'
              PieValues.Multiplier = 1.000000000000000000
              PieValues.Order = loNone
            end
            object Series2: TBarSeries
              Active = False
              ColorEachPoint = True
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 20
              Marks.Visible = True
              SeriesColor = clGreen
              BarPen.Visible = False
              BarStyle = bsCilinder
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Bar'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series3: TFastLineSeries
              Active = False
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              LinePen.Color = clRed
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series4: TAreaSeries
              Active = False
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clBlue
              DrawArea = True
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series5: THorizBarSeries
              Active = False
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 20
              Marks.Visible = True
              SeriesColor = 16744703
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loNone
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series6: TBarSeries
              Active = False
              Marks.ArrowLength = 20
              Marks.Visible = True
              SeriesColor = clYellow
              BarPen.Visible = False
              BarStyle = bsCilinder
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Bar'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series7: TBarSeries
              Active = False
              Marks.ArrowLength = 20
              Marks.Visible = True
              SeriesColor = clGray
              BarPen.Visible = False
              BarStyle = bsCilinder
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Bar'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series8: TFastLineSeries
              Active = False
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clFuchsia
              LinePen.Color = clFuchsia
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series9: TFastLineSeries
              Active = False
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clTeal
              LinePen.Color = clTeal
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series10: TAreaSeries
              Active = False
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clNavy
              DrawArea = True
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series11: TAreaSeries
              Active = False
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clMaroon
              DrawArea = True
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series12: THorizBarSeries
              Active = False
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 20
              Marks.Style = smsValue
              Marks.Visible = True
              SeriesColor = 16744448
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loNone
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series13: THorizBarSeries
              Active = False
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 20
              Marks.Visible = True
              SeriesColor = 8454016
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loNone
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
      end
    end
  end
  object p_top: TPanel
    Left = 0
    Top = 0
    Width = 1058
    Height = 28
    Align = alTop
    Caption = 'p_top'
    TabOrder = 1
    object Image2: TImage
      Left = 1
      Top = 1
      Width = 1056
      Height = 26
      Align = alClient
      Picture.Data = {
        0A544A504547496D616765294E0000FFD8FFE000104A46494600010201004800
        480000FFE103DD4578696600004D4D002A000000080007011200030000000100
        010000011A00050000000100000062011B0005000000010000006A0128000300
        00000100020000013100020000001B0000007201320002000000140000008D87
        69000400000001000000A4000000D00000004800000001000000480000000141
        646F62652050686F746F73686F702043532057696E646F777300323031313A30
        353A32342031303A33383A3435000000000003A00100030000000100010000A0
        02000400000001000006D1A00300040000000100000056000000000000000601
        0300030000000100060000011A0005000000010000011E011B00050000000100
        00012601280003000000010002000002010004000000010000012E0202000400
        000001000002A70000000000000048000000010000004800000001FFD8FFE000
        104A46494600010201004800480000FFED000C41646F62655F434D0001FFEE00
        0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
        11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
        0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108000800A003012200
        021101031101FFDD0004000AFFC4013F00000105010101010101000000000000
        00030001020405060708090A0B01000105010101010101000000000000000100
        02030405060708090A0B1000010401030204020507060805030C330100021103
        04211231054151611322718132061491A1B14223241552C16233347282D14307
        259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
        D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
        37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
        021103213112044151617122130532819114A1B14223C152D1F0332462E17282
        92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
        B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
        E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F49FB594BE
        D657CC2927FA567A9FA7BED652FB595F30A497A55EA7E9EFB594BED657CC2925
        E957A9FA7BED652FB595F30A497A55EA7E9EFB594BED657CC2925E957A9FA7BE
        D652FB595F30A497A55EA7E9EFB594BED657CC2925E957A9FA7BED652FB595F3
        0A497A55EA7E9EFB594BED657CC2925E957A9FA7BED652FB595F30A497A55EA7
        FFD9FFED096650686F746F73686F7020332E30003842494D0404000000000007
        1C020000020002003842494D0425000000000010460CF28926B856DAB09C01A1
        B0A790773842494D03ED00000000001000480000000100020048000000010002
        3842494D042600000000000E000000000000000000003F8000003842494D040D
        000000000004000000783842494D04190000000000040000001E3842494D03F3
        000000000009000000000000000001003842494D040A00000000000100003842
        494D271000000000000A000100000000000000023842494D03F5000000000048
        002F66660001006C66660006000000000001002F6666000100A1999A00060000
        00000001003200000001005A00000006000000000001003500000001002D0000
        00060000000000013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        03E800003842494D040000000000000200053842494D040200000000000E0000
        0000000000000000000000003842494D04080000000000100000000100000240
        00000240000000003842494D041E000000000004000000003842494D041A0000
        0000033700000006000000000000000000000056000006D10000000100310000
        0001000000000000000000000000000000000000000100000000000000000000
        06D1000000560000000000000000000000000000000001000000000000000000
        0000000000000000000010000000010000000000006E756C6C00000002000000
        06626F756E64734F626A63000000010000000000005263743100000004000000
        00546F70206C6F6E6700000000000000004C6566746C6F6E6700000000000000
        0042746F6D6C6F6E670000005600000000526768746C6F6E67000006D1000000
        06736C69636573566C4C73000000014F626A6300000001000000000005736C69
        63650000001200000007736C69636549446C6F6E67000000000000000767726F
        757049446C6F6E6700000000000000066F726967696E656E756D0000000C4553
        6C6963654F726967696E0000000D6175746F47656E6572617465640000000054
        797065656E756D0000000A45536C6963655479706500000000496D6720000000
        06626F756E64734F626A63000000010000000000005263743100000004000000
        00546F70206C6F6E6700000000000000004C6566746C6F6E6700000000000000
        0042746F6D6C6F6E670000005600000000526768746C6F6E67000006D1000000
        0375726C54455854000000010000000000006E756C6C54455854000000010000
        000000004D7367655445585400000001000000000006616C7454616754455854
        0000000100000000000E63656C6C54657874497348544D4C626F6F6C01000000
        0863656C6C546578745445585400000001000000000009686F727A416C69676E
        656E756D0000000F45536C696365486F727A416C69676E000000076465666175
        6C740000000976657274416C69676E656E756D0000000F45536C696365566572
        74416C69676E0000000764656661756C740000000B6267436F6C6F7254797065
        656E756D0000001145536C6963654247436F6C6F7254797065000000004E6F6E
        6500000009746F704F75747365746C6F6E67000000000000000A6C6566744F75
        747365746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E67
        000000000000000B72696768744F75747365746C6F6E6700000000003842494D
        042800000000000C000000013FF00000000000003842494D0414000000000004
        000000093842494D040C0000000002C300000001000000A000000008000001E0
        00000F00000002A700180001FFD8FFE000104A46494600010201004800480000
        FFED000C41646F62655F434D0001FFEE000E41646F626500648000000001FFDB
        0084000C08080809080C09090C110B0A0B11150F0C0C0F151813131513131811
        0C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11
        110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0CFFC0001108000800A003012200021101031101FFDD0004000AFFC401
        3F0000010501010101010100000000000000030001020405060708090A0B0100
        010501010101010100000000000000010002030405060708090A0B1000010401
        030204020507060805030C330100021103042112310541516113227181320614
        91A1B14223241552C16233347282D14307259253F0E1F163733516A2B2832644
        93546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4
        A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100
        0202010204040304050607070605350100021103213112044151617122130532
        819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B28307
        2635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4
        E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA
        000C03010002110311003F00F49FB594BED657CC2927FA567A9FA7BED652FB59
        5F30A497A55EA7E9EFB594BED657CC2925E957A9FA7BED652FB595F30A497A55
        EA7E9EFB594BED657CC2925E957A9FA7BED652FB595F30A497A55EA7E9EFB594
        BED657CC2925E957A9FA7BED652FB595F30A497A55EA7E9EFB594BED657CC292
        5E957A9FA7BED652FB595F30A497A55EA7FFD9003842494D0421000000000053
        00000001010000000F00410064006F00620065002000500068006F0074006F00
        730068006F00700000001200410064006F00620065002000500068006F007400
        6F00730068006F007000200043005300000001003842494D04010000000000B6
        0006000000000000000000000000000000000000000000000000000800000000
        0000000000000000000000000000000000000000000000040000000100000000
        000000000000000000000000000000010111DC46FFFFB4EF0111DC46FFFFB4EF
        0111DC46FFFFB4EF00010111DC46002B1B450111DC46002B1B450111DC46002B
        1B4500010000000000389A760000000000389A760000000000389A7600010000
        0000FFFF69DD00000000FFFF69DD00000000FFFF69DD3842494D040600000000
        00070004000000010100FFE11934687474703A2F2F6E732E61646F62652E636F
        6D2F7861702F312E302F003C3F787061636B657420626567696E3D27EFBBBF27
        2069643D2757354D304D7043656869487A7265537A4E54637A6B633964273F3E
        0A3C783A786D706D65746120786D6C6E733A783D2761646F62653A6E733A6D65
        74612F2720783A786D70746B3D27584D5020746F6F6C6B697420332E302D3238
        2C206672616D65776F726B20312E36273E0A3C7264663A52444620786D6C6E73
        3A7264663D27687474703A2F2F7777772E77332E6F72672F313939392F30322F
        32322D7264662D73796E7461782D6E73232720786D6C6E733A69583D27687474
        703A2F2F6E732E61646F62652E636F6D2F69582F312E302F273E0A0A203C7264
        663A4465736372697074696F6E207264663A61626F75743D27757569643A6364
        3437386565302D383561652D313165302D393232362D38386137363636343933
        3765270A2020786D6C6E733A657869663D27687474703A2F2F6E732E61646F62
        652E636F6D2F657869662F312E302F273E0A20203C657869663A436F6C6F7253
        706163653E313C2F657869663A436F6C6F7253706163653E0A20203C65786966
        3A506978656C5844696D656E73696F6E3E313734353C2F657869663A50697865
        6C5844696D656E73696F6E3E0A20203C657869663A506978656C5944696D656E
        73696F6E3E38363C2F657869663A506978656C5944696D656E73696F6E3E0A20
        3C2F7264663A4465736372697074696F6E3E0A0A203C7264663A446573637269
        7074696F6E207264663A61626F75743D27757569643A63643437386565302D38
        3561652D313165302D393232362D383861373636363439333765270A2020786D
        6C6E733A7064663D27687474703A2F2F6E732E61646F62652E636F6D2F706466
        2F312E332F273E0A203C2F7264663A4465736372697074696F6E3E0A0A203C72
        64663A4465736372697074696F6E207264663A61626F75743D27757569643A63
        643437386565302D383561652D313165302D393232362D383861373636363439
        333765270A2020786D6C6E733A70686F746F73686F703D27687474703A2F2F6E
        732E61646F62652E636F6D2F70686F746F73686F702F312E302F273E0A20203C
        70686F746F73686F703A486973746F72793E3C2F70686F746F73686F703A4869
        73746F72793E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264
        663A4465736372697074696F6E207264663A61626F75743D27757569643A6364
        3437386565302D383561652D313165302D393232362D38386137363636343933
        3765270A2020786D6C6E733A746966663D27687474703A2F2F6E732E61646F62
        652E636F6D2F746966662F312E302F273E0A20203C746966663A4F7269656E74
        6174696F6E3E313C2F746966663A4F7269656E746174696F6E3E0A20203C7469
        66663A585265736F6C7574696F6E3E37322F313C2F746966663A585265736F6C
        7574696F6E3E0A20203C746966663A595265736F6C7574696F6E3E37322F313C
        2F746966663A595265736F6C7574696F6E3E0A20203C746966663A5265736F6C
        7574696F6E556E69743E323C2F746966663A5265736F6C7574696F6E556E6974
        3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A446573
        6372697074696F6E207264663A61626F75743D27757569643A63643437386565
        302D383561652D313165302D393232362D383861373636363439333765270A20
        20786D6C6E733A7861703D27687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F273E0A20203C7861703A437265617465446174653E323031
        312D30352D32345431303A33383A34352B30383A30303C2F7861703A43726561
        7465446174653E0A20203C7861703A4D6F64696679446174653E323031312D30
        352D32345431303A33383A34352B30383A30303C2F7861703A4D6F6469667944
        6174653E0A20203C7861703A4D65746164617461446174653E323031312D3035
        2D32345431303A33383A34352B30383A30303C2F7861703A4D65746164617461
        446174653E0A20203C7861703A43726561746F72546F6F6C3E41646F62652050
        686F746F73686F702043532057696E646F77733C2F7861703A43726561746F72
        546F6F6C3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C726466
        3A4465736372697074696F6E207264663A61626F75743D27757569643A636434
        37386565302D383561652D313165302D393232362D3838613736363634393337
        65270A2020786D6C6E733A73745265663D27687474703A2F2F6E732E61646F62
        652E636F6D2F7861702F312E302F73547970652F5265736F7572636552656623
        270A2020786D6C6E733A7861704D4D3D27687474703A2F2F6E732E61646F6265
        2E636F6D2F7861702F312E302F6D6D2F273E0A20203C7861704D4D3A44657269
        76656446726F6D207264663A7061727365547970653D275265736F7572636527
        3E0A2020203C73745265663A696E7374616E636549443E757569643A66393637
        366538662D383037642D313165302D386333392D633862643532366264623339
        3C2F73745265663A696E7374616E636549443E0A2020203C73745265663A646F
        63756D656E7449443E61646F62653A646F6369643A70686F746F73686F703A66
        653762383763612D376561662D313165302D623334362D653262636633333030
        3930333C2F73745265663A646F63756D656E7449443E0A20203C2F7861704D4D
        3A4465726976656446726F6D3E0A20203C7861704D4D3A446F63756D656E7449
        443E61646F62653A646F6369643A70686F746F73686F703A6364343738656466
        2D383561652D313165302D393232362D3838613736363634393337653C2F7861
        704D4D3A446F63756D656E7449443E0A203C2F7264663A446573637269707469
        6F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61626F7574
        3D27757569643A63643437386565302D383561652D313165302D393232362D38
        3861373636363439333765270A2020786D6C6E733A64633D27687474703A2F2F
        7075726C2E6F72672F64632F656C656D656E74732F312E312F273E0A20203C64
        633A666F726D61743E696D6167652F6A7065673C2F64633A666F726D61743E0A
        203C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A
        3C2F783A786D706D6574613E0A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020200A2020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020200A202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020200A20
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020200A20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020200A2020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020200A202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020200A20202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020200A2020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020200A202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        200A202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020200A20202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020200A2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020200A2020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A3C3F787061636B657420656E643D2777273F3E
        FFE20C584943435F50524F46494C4500010100000C484C696E6F021000006D6E
        74725247422058595A2007CE00020009000600310000616373704D5346540000
        000049454320735247420000000000000000000000010000F6D6000100000000
        D32D485020200000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000001163707274000001500000
        003364657363000001840000006C77747074000001F000000014626B70740000
        0204000000147258595A00000218000000146758595A0000022C000000146258
        595A0000024000000014646D6E640000025400000070646D6464000002C40000
        0088767565640000034C0000008676696577000003D4000000246C756D690000
        03F8000000146D6561730000040C0000002474656368000004300000000C7254
        52430000043C0000080C675452430000043C0000080C625452430000043C0000
        080C7465787400000000436F7079726967687420286329203139393820486577
        6C6574742D5061636B61726420436F6D70616E79000064657363000000000000
        0012735247422049454336313936362D322E3100000000000000000000001273
        5247422049454336313936362D322E3100000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000058595A20000000000000F35100010000000116CC58595A20000000000000
        0000000000000000000058595A200000000000006FA2000038F5000003905859
        5A2000000000000062990000B785000018DA58595A2000000000000024A00000
        0F840000B6CF64657363000000000000001649454320687474703A2F2F777777
        2E6965632E636800000000000000000000001649454320687474703A2F2F7777
        772E6965632E6368000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000064657363000000000000
        002E4945432036313936362D322E312044656661756C742052474220636F6C6F
        7572207370616365202D207352474200000000000000000000002E4945432036
        313936362D322E312044656661756C742052474220636F6C6F75722073706163
        65202D2073524742000000000000000000000000000000000000000000006465
        7363000000000000002C5265666572656E63652056696577696E6720436F6E64
        6974696F6E20696E2049454336313936362D322E310000000000000000000000
        2C5265666572656E63652056696577696E6720436F6E646974696F6E20696E20
        49454336313936362D322E310000000000000000000000000000000000000000
        00000000000076696577000000000013A4FE00145F2E0010CF140003EDCC0004
        130B00035C9E0000000158595A2000000000004C09560050000000571FE76D65
        61730000000000000001000000000000000000000000000000000000028F0000
        000273696720000000004352542063757276000000000000040000000005000A
        000F00140019001E00230028002D00320037003B00400045004A004F00540059
        005E00630068006D00720077007C00810086008B00900095009A009F00A400A9
        00AE00B200B700BC00C100C600CB00D000D500DB00E000E500EB00F000F600FB
        01010107010D01130119011F0125012B01320138013E0145014C015201590160
        0167016E0175017C0183018B0192019A01A101A901B101B901C101C901D101D9
        01E101E901F201FA0203020C0214021D0226022F02380241024B0254025D0267
        0271027A0284028E029802A202AC02B602C102CB02D502E002EB02F50300030B
        03160321032D03380343034F035A03660372037E038A039603A203AE03BA03C7
        03D303E003EC03F9040604130420042D043B0448045504630471047E048C049A
        04A804B604C404D304E104F004FE050D051C052B053A05490558056705770586
        059605A605B505C505D505E505F6060606160627063706480659066A067B068C
        069D06AF06C006D106E306F507070719072B073D074F076107740786079907AC
        07BF07D207E507F8080B081F08320846085A086E0882089608AA08BE08D208E7
        08FB09100925093A094F09640979098F09A409BA09CF09E509FB0A110A270A3D
        0A540A6A0A810A980AAE0AC50ADC0AF30B0B0B220B390B510B690B800B980BB0
        0BC80BE10BF90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D40
        0D5A0D740D8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE
        0F090F250F410F5E0F7A0F960FB30FCF0FEC1009102610431061107E109B10B9
        10D710F511131131114F116D118C11AA11C911E81207122612451264128412A3
        12C312E31303132313431363138313A413C513E5140614271449146A148B14AD
        14CE14F01512153415561578159B15BD15E0160316261649166C168F16B216D6
        16FA171D17411765178917AE17D217F7181B18401865188A18AF18D518FA1920
        1945196B199119B719DD1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A
        1BB21BDA1C021C2A1C521C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E16
        1E401E6A1E941EBE1EE91F131F3E1F691F941FBF1FEA20152041206C209820C4
        20F0211C2148217521A121CE21FB22272255228222AF22DD230A233823662394
        23C223F0241F244D247C24AB24DA250925382568259725C725F7262726572687
        26B726E827182749277A27AB27DC280D283F287128A228D429062938296B299D
        29D02A022A352A682A9B2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD7
        2D0C2D412D762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035
        306C30A430DB3112314A318231BA31F2322A3263329B32D4330D3346337F33B8
        33F1342B3465349E34D83513354D358735C235FD3637367236AE36E937243760
        379C37D738143850388C38C839053942397F39BC39F93A363A743AB23AEF3B2D
        3B6B3BAA3BE83C273C653CA43CE33D223D613DA13DE03E203E603EA03EE03F21
        3F613FA23FE24023406440A640E74129416A41AC41EE4230427242B542F7433A
        437D43C044034447448A44CE45124555459A45DE4622466746AB46F04735477B
        47C04805484B489148D7491D496349A949F04A374A7D4AC44B0C4B534B9A4BE2
        4C2A4C724CBA4D024D4A4D934DDC4E254E6E4EB74F004F494F934FDD50275071
        50BB51065150519B51E65231527C52C75313535F53AA53F65442548F54DB5528
        557555C2560F565C56A956F75744579257E0582F587D58CB591A596959B85A07
        5A565AA65AF55B455B955BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F
        5F615FB36005605760AA60FC614F61A261F56249629C62F06343639763EB6440
        649464E9653D659265E7663D669266E8673D679367E9683F689668EC6943699A
        69F16A486A9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E
        6F786FD1702B708670E0713A719571F0724B72A67301735D73B87414747074CC
        7528758575E1763E769B76F8775677B37811786E78CC792A798979E77A467AA5
        7B047B637BC27C217C817CE17D417DA17E017E627EC27F237F847FE5804780A8
        810A816B81CD8230829282F4835783BA841D848084E3854785AB860E867286D7
        873B879F8804886988CE8933899989FE8A648ACA8B308B968BFC8C638CCA8D31
        8D988DFF8E668ECE8F368F9E9006906E90D6913F91A89211927A92E3934D93B6
        9420948A94F4955F95C99634969F970A977597E0984C98B89924999099FC9A68
        9AD59B429BAF9C1C9C899CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147
        A1B6A226A296A306A376A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852
        A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8B
        B000B075B0EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0
        B768B7E0B859B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84
        BEFFBF7ABFF5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646
        C6C3C741C7BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36
        CEB6CF37CFB8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655
        D6D8D75CD7E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2
        DF29DFAFE036E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71F
        E7A9E832E8BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCC
        F058F0E5F172F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8
        F938F9C7FA57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFFFFEE000E4164
        6F626500640000000001FFDB0084000604040705070B06060B0E0A080A0E110E
        0E0E0E1116131313131316110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01070909130C1322131322140E0E0E1414
        0E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108005606D103011100021101
        031101FFDD000400DBFFC401A200000007010101010100000000000000000405
        03020601000708090A0B01000202030101010101000000000000000100020304
        05060708090A0B10000201030302040206070304020602730102031104000521
        12314151061361227181143291A10715B14223C152D1E1331662F0247282F125
        43345392A2B26373C235442793A3B33617546474C3D2E2082683090A18198494
        4546A4B456D355281AF2E3F3C4D4E4F465758595A5B5C5D5E5F566768696A6B6
        C6D6E6F637475767778797A7B7C7D7E7F738485868788898A8B8C8D8E8F82939
        495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFA110002020102
        030505040506040803036D0100021103042112314105511361220671819132A1
        B1F014C1D1E1234215526272F1332434438216925325A263B2C20773D235E244
        8317549308090A18192636451A2764745537F2A3B3C32829D3E3F38494A4B4C4
        D4E4F465758595A5B5C5D5E5F5465666768696A6B6C6D6E6F6475767778797A7
        B7C7D7E7F738485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A
        3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00F5457143AB
        8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB855D5C0AEAE2AEAE2AEAE2AEAE2AEAE2AE
        AE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2A
        EAE2AEAE2AEAE2AEAE2AEAE1575702BAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8
        ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB
        8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABA
        B8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB855D5C0A
        EAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2
        AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE2AEAE
        2AEAE2AEAE2AEAE2AEAE1575702BAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABA
        B8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8AB
        AB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8A
        BAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8
        ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB
        8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABA
        B8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8AB
        AB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8A
        BAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8ABAB8
        ABFFD0F5272C28772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55
        DCB15772C55BE58AB5CB15772C55DCB15772C55DCB15772C55DCB143B9629772
        C50EE58A5DCB15772C55DCB15772C55DCB15772C55DCB156F96286B9629772C5
        5DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772
        C55DCB15772C55DCB156F962AD72C55DCB15772C55DCB156F962AD72C55DCB15
        772C55DCB143B9629772C55DCB15772C55DCB15772C55DCB15772C55DCB15772
        C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB143
        B9629772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55BE58ABB96
        2AD72C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55D
        CB156F962AD72C55DCB15772C55DCB15772C55DCB15772C55BE58AB5CB15772C
        55DCB15772C55DCB15772C55DCB143B9629772C55DCB156F962AD72C55DCB157
        72C55DCB156F962AD72C55DCB15772C55DCB15772C55BE58AB5CB15772C55DCB
        15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55D
        CB15772C55DCB156F962AD72C55DCB15772C55DCB15772C50EE58A5DCB15772C
        55DCB15772C55DCB15772C55DCB15772C50EE58A5DCB15772C55DCB15772C50E
        E58A5DCB15772C55DCB15772C55DCB15772C55DCB15772C55BE58AB5CB15772C
        55DCB15772C55DCB15772C55DCB15772C55BE58AB5CB15772C55DCB1437CB14B
        5CB15772C55DCB15772C55DCB15772C55DCB15772C55BE58AB5CB15772C55DCB
        15772C55BE58AB5CB15772C55DCB15772C55BE58AB5CB156F962AD72C55BE58A
        B5CB156EB8ABFFD1F5072C9B1772C55DCB15772C55DCB15772C55DCB15772C0A
        EE5855DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB
        15772C55DCB15772C55DCB15772C0AEE5855DCB15772C55DCB143B9629772C55
        DCB15772C55DCB15772C55DCB02BB9615772C55DCB15772C50EE58A5DCB15772
        C55DCB15772C55DCB15772C55DCB15772C55DCB143B9629772C55DCB15772C55
        DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C0AEE5855DCB
        15772C55DCB15772C0AEE5855DCB15772C55DCB15772C55DCB15772C50EE58A5
        DCB15772C55DCB15772C50EE58A5DCB15772C55DCB15772C50EE58A5DCB15772
        C55DCB15772C55DCB02BB9615772C55DCB15772C55DCB02BB9615772C55DCB15
        772C55DCB15772C55DCB15772C0AEE5855DCB15772C55DCB15772C55DCB15772
        C55DCB15772C55DCB15772C0AEE5855DCB02BB9615772C55DCB15772C55DCB15
        772C55DCB15772C55DCB15772C08772C52EE5855DCB15772C55DCB15772C55DC
        B15772C55DCB15772C0AEE5855DCB15772C55DCB15772C55DCB15772C55DCB15
        772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB
        15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55D
        CB143B9629772C55DCB02BB9615772C55DCB15772C55DCB15772C55DCB15772C
        55DCB15772C0AEE5855DCB15772C55DCB143B9629772C0AEE5855DCB15772C55
        DCB15772C55DCB02BB9615772C55DCB15772C55DCB143B9629772C0AEE5855DC
        B15772C55DCB15772C55DCB15772C0AEE5855DCB15772C55DCB15772C55DCB15
        772C0AEE5855DCB15757021FFFD2F4DF2CB1ADDCB15772C55DCB15772C52EE58
        A1DCB14BB9628772C52EE58A1DCB14BB962AEE58A1DCB14BB962AEE58A1DCB15
        772C55DCB15772C52EE58A1DCB14BB962AEE58A1DCF15772C55DCB15772C55DC
        B15772C52EE58A1DCB15772C52EE58A1DCB14BB9628772C55DCB15772C55DCB1
        5772C55DCB15772C55DCB15772C55DCB15772C52EE58A1DCB15772C55DCB1577
        2C52EE58A1DCB14BB9628772C55DCB15772C55DCB14BB9628772C55DCB15772C
        55DCB15772C55DCB14BB9628772C55DCB15772C55DCB15772C55DCB15772C55D
        CB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB14BB962
        8772C55DCB14BB962AEE58ABB962AEE58A1DCB14BB9628772C52EE58A1DCB157
        72C55DCB14BB962AEE58A1DCB14BB9628772C52EE58ABB9628772C55DCB14BB9
        628772C55DCB15772C52EE58A1DCB15772C55DCB14BB962AEE58A1DCB15772C5
        5DCB14BB9628772C55DCB14BB9628772C55DCB15772C55DCB14BB9628772C55D
        CB14BB9628772C52EE58A1DCB15772C52EE58A1DCB14BB962AEE58ABB9628772
        C55DCB14BB962AEE58A1DCB14BB9628772C55DCB15772C55DCB15772C52EE58A
        1DCB15772C55DCB14BB962AEE58ABB9628772C55DCB15772C55DCB15772C52EE
        58A1DCB14BB9628772C55DCB15772C55DCB15772C52EE58A1DCB15772C55DCB1
        4BB9628772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB1577
        2C55DCB15772C55DCB15772C55DCB15772C55DCB15772C52EE58A1DCB15772C5
        5DCB15772C55DCB14BB9628772C55DCB15772C55DCB15772C55DCB15772C55DC
        B14BB9628772C55DCB14BB9628772C55DCB15772C55FFFD3F4B73CB5A9DCB157
        72C55DCB15773C55DCB15772C55DCB15772C55DCB15773C55DCB15772C55DCF1
        5772C55DCB15773C55DCB15772C55DCF15773C55DCB15772C55DCF15772C55DC
        B15772C55DCB15773C55DCB15772C55DCB15772C55DCF15773C55DCB15772C55
        DCB15773C55DCB15773C55DCB15772C55DCB15772C55DCB15772C55DCB15773C
        55DCB15772C55DCB15772C55DCB15772C55DCF15772C55DCB15772C55DCB1577
        2C55DCF15773C55DCB15772C55DCF15772C55DCB15773C55DCB15772C55DCB15
        772C55DCB15773C55DCF15773C55DCF15772C55DCF15772C55DCB15773C55DCF
        15773C55DCB15772C55DCF15772C55DCB15772C55DCB15772C55DCB15772C55D
        CB15773C55DCB15772C55DCF15772C55DCB15773C55DCF15773C55DCB15773C5
        5DCB15773C55DCF15773C55DCB15772C55DCB15772C55DCF15772C55DCF15772
        C55DCB15772C55DCB15772C55DCF15773C55DCB15772C55DCF15772C55DCB157
        72C55DCB15772C55DCB15773C55DCB15773C55DCB15772C55DCB15772C55DCF1
        5772C55DCF15772C55DCB15772C55DCB15772C55DCF15772C55DCB15772C55DC
        B15773C55DCB15772C55DCB15773C55DCB15772C55DCB15772C55DCB15772C55
        DCB15772C55DCB15772C55DCB15772C55AE78AB7CB15773C55DCF15773C55DCF
        15773C55DCB15772C55DCB15773C55DCF15773C55DCB15773C55DCB15773C55D
        CB15772C55DCB15772C55DCB15772C55DCF15772C55DCB15772C55DCB15772C5
        5DCB15773C55DCF15773C55DCB15772C55DCB15773C55DCB15773C55DCB15773
        C55DCF15773C55DCB15772C55DCB15773C55DCF157FFD4F4872CBDA5BE58AB5C
        B15772C55BE58A1AE5812EE5850EE58A5DCB15772C55DCB15772C55DCB156F96
        28772C55AE58A5DCB143B9629772C55DCB15772C55DCB15772C55DCB15772C55
        DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB156F96286B9629772
        C55DCB15772C55DCB15772C55DCB156F96286B9629772C55DCB15772C55DCB15
        772C55BE58A1AE58A5DCB15772C50EE58A5DCB15772C55DCB15772C50EE58A5D
        CB15772C50DF2C52D72C55BE58ABB96286B96296F962AD72C55DCB156F962AD7
        2C50EE58A5DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB156F962
        AD72C55DCB15772C55DCB15772C55DCB15772C55DCB15772C50EE58A5DCB1577
        2C55DCB15772C55DCB15772C55BE58AB5CB15772C55DCB15772C55DCB143B962
        96F962AD72C55DCB15772C50EE58A5DCB143B962AEE58A5DCB15772C55DCB157
        72C55DCB143B9629772C55DCB156F96286B9629772C55DCB15772C55DCB15772
        C50EE58A5DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB143B9629
        772C55DCB15772C55BE58AB5CB15772C55BE58AB5CB156F962AEE58AB5CB1577
        2C55DCB156F962AEE5815AE5855DCB15772C55BE58AB5CB15772C55DCB15772C
        55BE58AB5CB15772C55DCB15772C55BE58AB5CB15772C55DCB15772C55DCB157
        72C55DCB15772C55DCB15772C55DCB143B9629772C55DCB15772C55DCB15772C
        50EE58A5BE58AB5CB15772C55DCB143B962AEE58A5DCB15772C55BE58AB5CB15
        6F96286B9629772C50DF2C55AE58A5DCB15772C50EE58A5DCB15772C55DCB157
        72C55BE5815AE5850EE58A5DCB15772C55BE58A1AE58A5DCB021BE5852D72C50
        EE58A5FFD5F45F2CC871DDCB15772C55DCB15772C55DCB15772C55DCB15772C5
        5DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772
        C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB157
        72C55DCB15772C52EE58A1DCB15772C55DCB15772C55DCB15772C55DCB15772C
        55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB1577
        2C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15
        772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB
        15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55D
        CB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C5
        5DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772
        C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB157
        72C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB1
        5772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DC
        B15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55
        DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55BE58AB5CB
        15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55D
        CB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C5
        5DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772
        C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB157
        72C55FFFD6F4372CC9719DCB15772C55DCB15772C55DCB15772C55DCB15772C5
        5DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772
        C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB157
        72C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55D5C5
        5DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772
        C55DCB15772C55D5C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55D
        CB15772C55DCB15772C55DCB15772C55DCB156F962AD72C55DCB15772C55DCB1
        5772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DC
        B15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55
        DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C
        55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB1577
        2C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15
        772C55DCB15772C55DCB15772C55DCB15772C55D5C55DCB15772C55DCB15772C
        55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB1577
        2C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55BE58AB5CB15772C5
        5DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772
        C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB157
        72C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB15772C55DCB1
        5772C55DCB15772C55DCB15772C55D5C55DCB15772C55DCB15772C55DCB156F9
        62AFFFD7F41D7329C57571575715757157571575715757157571575715757157
        5715757157571575715757157571575715757157571575715757157571575715
        7571575715757157571575715757157571575715757157571575715757157571
        5757157571575715757157571575715757157571575715772C55D5C55D5C55D5
        C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D
        5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55
        D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C5
        5D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C
        55D5C55D5C55D5C55D5C55DCB157571575715757157571575715757157571575
        7157571575715757157571575715757157571575715757157571575715757157
        5715757157571575715757157571575715757157571575715757157571575715
        7571575715757157571575715757157571575715757157571575715757157571
        575715757157571575715772C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5
        C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D
        5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55D5C55
        D5C55D5C55DCB1575715772C55DCB15757157571575715757157571575715757
        1575715757157571575715757157571575715757157571575715757157571575
        715757157571575715757157FFD0F405732DC475715757157571575715757157
        571575715757157571575714BAB8A1D5C55D5C55D5C52EAE2875715757157571
        5757157571575715757157571575715757157571575715757157571575715757
        1575715757157571575715757157571575715757157571575715757157571575
        7157571575715757157571575715757157571575715757157571575715757157
        5715757157571575715757157571575715757157571575715757157571575715
        7571575715757157571575715757157571575715757157571575715757157571
        5757157571575715757157571575715757157571575715757157571575715757
        1575715757157571575715757157571575715757157571575715757157571575
        7157571575715757157571575715757157571575715757157571575715757157
        5715757157571575715757157571575715757157571575715757157571575715
        7571575715757157571575715757157571575715757157571575715757157571
        5757157571575715757157571575715757157571575715757157571575715757
        1575715757157571575715757157571575715757157571575715757157571575
        7157571575715757157571575715757157571575715757157571575715757157
        5715757157571575715757157571575715757157571575715757157571575715
        7571575715757157571575715757157571575715757157571575715757157571
        575715757157571575715757157571575715757157FFD1EFF996E23B15762AEC
        55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8
        ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB1
        5762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762
        AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC5
        5D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8A
        BB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15
        762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762A
        EC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55
        D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8AB
        B15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157
        62AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AE
        C55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D
        8ABB15762AEC55D8ABB15762AEC55D8ABB15762AFF00FFD9}
      Stretch = True
    end
    object btn_NewBill: TSpeedButton
      Left = 128
      Top = 0
      Width = 73
      Height = 28
      Caption = #26032#22686'(&N)'
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF7C67507C67507963
        4B755F48715B446D57406A543B665038634D346049325D462F5A442B58412958
        422AFFFFFFFFFFFF0000FFFFFFFFFFFF856F59FFE8C9FFE4C4FFE2C0FFE0BBFF
        DDB7FFDBB3FFD8AFFFD6ABFFD5A8FFD3A5FFD1A3FFD0A158422AFFFFFFFFFFFF
        0000FFFFFFFFFFFF8A745DFFEACDFFE8C8FFE5C4FFE2BFFFDFBBFFDDB7FFDBB3
        FFD8AFFFD6ACFFD5A8FFD3A6FFD1A35A442CFFFFFFFFFFFF0000FFFFFFFFFFFF
        8D7861FFEDD1FFEACDFFE7C9FFE5C4FFE2C0FFE0BBFFDDB7FFDBB3FFD9AFFFD6
        ACFFD4A8FFD3A55E472FFFFFFFFFFFFF0000FFFFFFFFFFFF927C66FFF0D6FFED
        D1FFEACDFFE8C9FFE5C4FFE2C0FFE0BCFFDDB7FFDBB2FFD8AFFFD7ABFFD4A860
        4B32FFFFFFFFFFFF0000FFFFFFFFFFFF96806AFFF2DAFFF0D5FFEDD1FFEACDFF
        E7C9FFE5C4FFE2C0FFE0BBFFDDB7FFDBB3FFD8AFFFD6AC644E36FFFFFFFFFFFF
        0000FFFFFFFFFFFF99846EFFF4DEFFF2DAFFF0D6FFEDD1FFEACDFFE8C9FFE4C4
        FFE2C0FFDFBCFFDDB7FFDBB3FFD9B068523AFFFFFFFFFFFF0000FFFFFFFFFFFF
        9D8871FFF7E2FFF4DEFFF2DAFFEFD6FFEDD2FFEACDFFE8C8FFE4C4FFE2C0FFE0
        BBFFDDB7FFDBB36C553EFFFFFFFFFFFF0000FFFFFFFFFFFFA08C75FFF9E6FFF7
        E1FFF4DEFFF2DAFFF0D6FFEDD1FFEACDFFE7C9FFE4C4FFE2BFFFDFBCFFDDB770
        5942FFFFFFFFFFFF0000FFFFFFFFFFFFA38F78FFFAE9FFF9E5FFF6E2FFF4DEFF
        F2DAFFEFD6FFECD1FFEACDFFE8C9FFE5C4FFE2BFFFDFBB745D46FFFFFFFFFFFF
        0000FFFFFFFFFFFFA6927BFFFDECFFFAE9FFF8E5FFF6E2FFF4DEFFF2DAFFF0D5
        FFEDD1FFEACD846E587F6B537B664F78624BFFFFFFFFFFFF0000FFFFFFFFFFFF
        A9957FFFFEEEFFFDECFFFBE9FFF9E6FFF6E2FFF4DEFFF2DAFFEFD6FFEDD18872
        5BFFE8C9FFE5C47C6650FFFFFFFFFFFF0000FFFFFFFFFFFFAB9781FFFFF0FFFE
        EEFFFCECFFFBE9FFF9E5FFF7E1FFF4DEFFF2DAFFEFD68C7760FFEACD846E58FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAD9983FFFFF0FFFFF0FFFEEEFFFDECFF
        FAE8FFF9E5FFF7E2FFF4DEFFF1DA907C648C7760FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFAD9983AD9983AB9781AA957FA7937CA4907AA28D779F8A74
        9B877098836C947F69FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
    end
    object btn_DelBill: TSpeedButton
      Left = 201
      Top = 0
      Width = 73
      Height = 28
      Caption = #21024#38500'(&D)'
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFF657CC55F77C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF173390173390FFFFFF0000FFFFFFFFFFFF
        FFFFFF647BC55E75C25770BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF2844A1233F9A173390FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF627B
        C573AAF3566FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3753AE2774E02844A1FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6179C46EA7F355
        6EBEFFFFFFFFFFFF445FB63F5AB32774E03653AEFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6078C36AA3F1546DBD4F68BB
        4963B8357EE43F5AB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F77C366A1F05897EC4A8DE94863B7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF6B82C9657DC570A8F3629EEF5394EC4D67B9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF788CCE7187CB87
        B9F87AAFF65E76C25E9BEE5091EB4B66B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF8397D5A1CBFF99C5FD90BEFB6980C8627AC4
        5C74C15A98ED4B8EE94A65B8FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF899CD7A0CAFF9FCAFF758BCDFFFFFFFFFFFF6279C45B74C15695
        EC488BE93F5AB3FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF8EA1
        DA889BD78195D4FFFFFFFFFFFFFFFFFFFFFFFF6178C3566EBB4863B73F5AB3FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      OnClick = btn_DelBillClick
    end
    object spt_Audit: TSpeedButton
      Left = 274
      Top = 0
      Width = 67
      Height = 28
      Caption = #23457#26680'(&A)'
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFF8C8C8C7475756F6F6E69696A6364635D5D5D57
        57575151514A4B4A4444443E3F3E3939383232332D2D2D272627575757FFFFFF
        0000FFFFFF7E7E7EEDFAF1EAF9EFE7F8ECE5F8EAE2F7E8DFF5E5DCF5E3D8F4E0
        D5F3DDD2F2DBD0F1D8CCF1D6CAEFD4C7EFD1272726FFFFFF0000FFFFFF838383
        F0FBF4EEFAF1EBF9EF6E6E6EE6F7EBE2F7E8E0F6E6565656DAF4E1D7F3DFD3F2
        DC3E3E3DCDF1D6CAF0D52C2C2CFFFFFF0000FFFFFF888888F4FCF6DE7264D569
        57CC604BC2583EB95033B14828AA411EDDF5E450504FD7F3DF434344D1F2DACD
        F1D8323131FFFFFF0000FFFFFF8C8C8C878787E6786DEAB58ADFA378D49066C8
        7C53BD6941B047265C5B5B5555564F4F4F4949494343423D3D3C616162FFFFFF
        0000FFFFFFFFFFFFFFFFFFEC7E77F5C89DECB98EE2A77DD7956BCB8157B64E30
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFF2847EFED6ABF7CBA1EEBD92E5AC81D99970BE5539FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFF78985FFD8
        ADFFD8ADF9CEA3F1C096E7B086C65C43FFFFFFFFFFFF140EB5140EB5FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF78884F0827CE97C72E1
        7467D76C5AFFFFFFFFFFFF140EB52A23E32A23E3140EB5FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72727388C3CE555555FFFFFFFFFFFF
        2A23E32A23E3FFFFFFFFFFFF2A23E3140EB5FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF898989A7DCE097CFD888C3CF535353FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF2A23E3140EB5FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9192
        91B5E7E9A7DCE098CFD7606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF140EB5140EB50000FFFFFFFFFFFFFFFFFFFFFFFF989898BEEEEEB5E6E9A7
        DCE06D6C6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9897978F8F8F848585FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      OnClick = spt_AuditClick
    end
    object spt_uAudit: TSpeedButton
      Left = 341
      Top = 0
      Width = 77
      Height = 28
      Caption = #21453#23457#26680'(&U)'
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFF8C8E8C7375736B6D6B6B696B6365635A5D5A52
        55525251524A494A424542393C39393839313031292C29212421525552FFFFFF
        0000FFFFFF7B7D7BEFFBF7EFFBEFE7FBEFE7FBEFE7F7EFDEF7E7DEF7E7DEF7E7
        D6F3DED6F3DED6F3DECEF3D6CEEFD6C6EFD6212421FFFFFF0000FFFFFF848284
        F7FBF7EFFBF7EFFBEF6B6D6BE7F7EFE7F7EFE7F7E7525552DEF7E7D6F3DED6F3
        DE393C39CEF3D6CEF3D6292C29FFFFFF0000FFFFFF8C8A8CF7FFF7DE7163D669
        52CE614AC65939BD5131B54929AD4118DEF7E752514AD6F3DE424142D6F3DECE
        F3DE313031FFFFFF0000FFFFFF8C8E8C848684E7796BEFB68CDEA27BD69263CE
        7D52BD6942B545215A595A5255524A4D4A4A494A424142393C39636163FFFFFF
        0000FFFFFFFFFFFFFFFFFFEF7D73F7CB9CEFBA8CE7A67BD6966BCE8252B54D31
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFF7867BFFD7ADF7CBA5EFBE94E7AE84DE9A73BD5539FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFF78A84FFDB
        ADFFDBADFFCFA5F7C394E7B284C65D42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF78A84F7827BEF7D73E7
        7563D66D5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7371738CC3CE525552FFFFFFFFFFFF
        0D0DA90D0DA90D0DA9FFFFFFFFFFFFFFFFFF0D0DA9FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF8C8A8CA5DFE794CFDE8CC3CE525152FFFFFF0D0DA90D0DA9FFFF
        FFFFFFFFFFFFFF0D0DA9FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9492
        94B5E7EFA5DFE79CCFD6636163FFFFFF0D0DA9FFFFFF0D0DA90D0DA90D0DA9FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9C9A9CBDEFEFB5E7EFA5
        DFE76B6D6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C96948C8E8C848684FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      OnClick = spt_uAuditClick
    end
    object Btn_Query: TSpeedButton
      Left = 0
      Top = 0
      Width = 64
      Height = 28
      Caption = #26597#35810'(&F)'
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF91470D8D4207FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF944B1290460C
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF995018934B12FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA25C27F6BD9AF4B790934A10FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD6735F9
        CEB4F8CAAFF7C1A0F5B78F934910FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB67343FAD6C1FCDCC9FBD6C0F9CAAE
        F6BC99F3B18692490FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFBE7D4EF9CEB4FCDBC9FDE4D7FBDBC9F9CEB4F6BF9DF4B289F2A9
        7A91480EFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC48356F6BD
        99F8CAAFFAD6C1FBDCC9FAD6C1F9CAAFF6BC99F3B086F2A97AF2A97A91470EFF
        FFFFFFFFFFFFFFFF0000FFFFFFC48356C48356CB8A5ED6966CE2A17AEBA985EC
        AA88E9A785E3A180DB9979D28F6FC88464BD795BB36F51AA6648A35E40FFFFFF
        0000FFFFFFC48356F6D39AF7D8A6F9E1B8FBEBCBFCF3DCFDF6E4FDF6E2FCF1DB
        FBECD0F9E6C2F8DFB4F7D8A4F6D197F5CC8BA35E40FFFFFF0000FFFFFFC48356
        C48356CB8A5ED7956DE2A17AEBA985ECAA88E9A686E3A080DB9878D18F6FC884
        65BD795AB46F50AB6647A45E40FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      OnClick = Btn_QueryClick
    end
    object spt_Print: TSpeedButton
      Left = 418
      Top = 0
      Width = 70
      Height = 28
      Caption = #25171#21360'(&P)'
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF78634D6E5A446651
        3A5D4831564129564129564129564129564129564129564129564129FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF816D59F9C1A1F7B993F6B086F3A97AF1
        9D68F19D68F19D68F19D68F19D68F19D68F19D68604931FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFF8C7864836F5B7B6751725E476A543E614C35614C35614C35
        614C35614C35614C35614C35C69656604931FFFFFFFFFFFF0000FFFFFF9B8975
        F8DCA3F9E0A6F8DCA3F5D49CF2C992EEBE87EAB17CE6A470FFFFFFFFFFFFD563
        02604931604931C69656614A33FFFFFF0000FFFFFFA28E7BF9DFA6FBE6ACF9E0
        A6F6D79EF3CC93EFBF88EBB27DE7A571E29A66DF8F5BDC8553604931D29E6A61
        4A33614A33FFFFFF0000FFFFFFA28F7CF7DCA3F9DFA6F7DCA3F5D49BF1C992EF
        BE87EAB17CE7A570E29965DE8E5BDC8553654E36E4B98FD8A777614A33FFFFFF
        0000FFFFFFC1AF9EA28F7CA28F7C9E8B79998572927F6A8B7762826E597A644F
        705B4668523C604A346B553DF0CCA8E8C199614A33FFFFFF0000FFFFFFFFFFFF
        785E45FEE1D2FEE4D8FFE7DAFEE8DBFEE6DAFEE5D7FEE1D2FEDCCCFED9C7FED6
        C269533B614A33F0CCA8614A33FFFFFF0000FFFFFFFFFFFF7E6149FEE5D9FFEA
        E0FFEDE4FFEEE6FEEDE5FFEAE0FEE5D9FEE0D2FEDBCBFED7C56A543CD29E6A61
        4A33614A33FFFFFF0000FFFFFFFFFFFFFFFFFF87684EFFEFE8FEF3EEFFF4F0FF
        F3EEFEEFE8FFEAE0FEE4D7FFDECFFED9C6FED6C269533C945F1AFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFF8D6C51FEF3EDFFF8F5FFFAF8FFF8F5FFF3EEFEEDE5
        FFE6DBFEE0D1FEDAC8FED6C36B543CFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF967157F38680F1837DEB7F75E4786CDC7161D36956CA624BC15A
        3FB95436B44E2D69533BFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF9A75
        5AECA582EBA380E89E7BE69873E3916BDF8A61DD8158DA7B50D77448D46F4369
        533BFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F785D9B755B97
        7357916E548B6A5084664C7D6147775D447159406D553D69533BFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      OnClick = spt_PrintClick
    end
    object spt_upQuery: TSpeedButton
      Left = 488
      Top = 0
      Width = 56
      Height = 28
      Caption = #19978#26597
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF1075
        00107100107100107100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF1879089CD7A54AB63910
        7100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF425163425163425163FFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF2182109CD7A54AB639107100FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF425163219AC631BAF7425163FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF298A189CD7A54AB639107100FFFFFFFFFFFFFFFFFFFFFFFF5261
        7329A2D631BAF763A2B5526973FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF318E
        21ADD7AD4AB6391075008B55258A53248952235261734282A542C3F763B2D673
        8A94FFFFFFFFFFFF0000FFFFFF5AAE4A52A6424A9E399CC78C9CD7A54AB63918
        7D08107500107100107100895223639AB5639AB5738A94FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFF5AAE4AADD39CB5DFAD6BC35A52B6424AB639398E21107500
        F5E5BEDFC78C895223738A94FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF52AA42BDDBA5C6E3B56BC35A52B642218210FFE8C8FFEFD3FFF5DCDFC7
        8C895122FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA36B3B52AA
        42C6DFA5ADD39C319221FFE2C2FFE0BDFFE7C8FFF2D6F0DBA78A5324FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA86E3DFFE8CF52AA424AA239FF
        F1DBFFE8CFFFE1C2FFE0BEFFEDD1F5E5BE8B5525FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFA96E3DFFF1DCFFFBEBFCFCF3FFFDEBFFF1DCFFE5C9
        FFE0BDFFE9CBFFF3D98D5627FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFAA703EFFF5E0FCFCF3FAFAFAFCFCF3FFF3E0FFE7CCFFE0BEFFE7C8FFF3
        D8B57F51FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFB57F
        51FFFBEBFCFCF3FFFDEBFFF0DCFFE5C8FFE0BDFFEACBB57F51FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC79367FFF3E0FF
        F1DCFFE9CFFFE1C2FFE1BEC79367FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB703EA96E3DA86E3DA66D3D
        A86E3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      OnClick = spt_upQueryClick
    end
    object spt_DownQuery: TSpeedButton
      Left = 544
      Top = 0
      Width = 57
      Height = 28
      Caption = #19979#26597
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF187500107500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF217D10BDDB9C4AB63910
        7500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF425163425163425163FFFFFF
        0000FFFFFFFFFFFFFFFFFF298A18BDDB9CB5DFAD4ABA394AB639187500FFFFFF
        FFFFFFFFFFFFFFFFFF425163219AC631BAF7425163FFFFFF0000FFFFFFFFFFFF
        399229C6DFA5BDDB9CB5DFAD63BE4A4AB6394AB639187500FFFFFFFFFFFF5261
        7329A2D631BAF763A2B5526973FFFFFF0000FFFFFF429E31399A29399629BDDB
        9CB5DFAD73C75A5ABA42217D10187D081879085261734282A542C3F763B2D673
        8A94FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF399629ADDB948CCF7321
        7D10FFF4DCFFF8DFFFFCE3895223639AB5639AB5738A94FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF429A31C6DFA5A5D78C217D10FFEDD1FFF0D7
        F5E5BEDFC78C895223738A94FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFB57F51429E39C6DFA5BDDB9C217D10FFE1BEFFE8C8FFEFD3FFF5DCDFC7
        8C895122FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA36B3B4AA2
        39C6DFA5C6DFA5217D10FFE2C2FFE0BDFFE7C8FFF2D6F0DBA78A5324FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFA86E3D52A6424AA6394AA23942
        9E31FFE8CFFFE1C2FFE0BEFFEDD1F5E5BE8B5525FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFA96E3DFFF1DCFFFBEBFCFCF3FFFDEBFFF1DCFFE5C9
        FFE0BDFFE9CBFFF3D98D5627FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFAA703EFFF5E0FCFCF3FAFAFAFCFCF3FFF3E0FFE7CCFFE0BEFFE7C8FFF3
        D8B57F51FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFB57F
        51FFFBEBFCFCF3FFFDEBFFF0DCFFE5C8FFE0BDFFEACBB57F51FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC79367FFF3E0FF
        F1DCFFE9CFFFE1C2FFE1BEC79367FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB703EA96E3DA86E3DA66D3D
        A86E3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      OnClick = spt_DownQueryClick
    end
    object spt_ZBFX: TSpeedButton
      Left = 761
      Top = 0
      Width = 89
      Height = 28
      Caption = #21344#27604#20998#26512'(&Z)'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00A5735200735A4A009C6B4A009C6B4A009C6B4A009C6B4A009C6B
        4A00735A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00735A4A00735A4A009C6B4A00BD845200CE8C5200D6945200D6945200C684
        5200A57B4A0084634200846B6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00735A
        4A00A5735200BD845200CE8C5200CE8C5200C68C4A00CE8C5200CE8C5200CE84
        5200CE8C5200C6845200A5734A0063527B00FFFFFF00FFFFFF00735A4A00A573
        5200C6845200C6844A00CE8C4A00CE8C5200D6945200CE945200C68C5200CE94
        5200CE8C4A00C68C4A00A57B52005A4ABD00736BA500FFFFFF00A5735200BD7B
        4200C6844A00DEA56300E7BD8400F7D6A500F7E7B500FFEFBD00FFEFB500F7E7
        B500F7CE9C00DEB57B00B5845A00634AAD005A4A9400FFFFFF00A5735200C68C
        5200DEB57B00F7DEAD00F7E7AD00F7E7B500F7E7AD00F7E7AD00FFE7AD00FFE7
        AD00F7E7B500E7D6A500A5948C007363C6005A4A9400FFFFFF00A5735200E7BD
        8400F7DEA500F7DEAD00F7DEAD00F7DEAD00F7DEAD00FFDEAD00F7DEAD00E7D6
        A500B5A59400ADA5BD00AD9CDE009C8CEF006B639C00FFFFFF00A5735200DEC6
        9C00E7CEA500DECE9C00DECE9C00DECE9C00DECEA500DEC6A500B5AD9C00948C
        BD00AD94EF00AD94EF00A594F700AD94F700847BAD00FFFFFF008C9CA50084C6
        B50084CEC60084CEC60084CEC6008CCEC60084CEC60084B5BD008C8CC6009C84
        E7009C8CEF009C84E7009C8CEF009C8CE7007B73A500FFFFFF008C9CA50073CE
        CE0073F7FF0073F7FF007BF7FF007BF7FF0073F7F70073F7F7007BBDD600847B
        CE009473E7009473E7009473E7008C73D6008C849C00FFFFFF00FFFFFF008C9C
        A5007BD6DE007BEFFF0073EFFF0073EFFF0073EFFF006BEFFF006BE7FF0073BD
        CE007B73C6008C63D6008C63D60084739C00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF009CA5B50073B5C6006BCEDE006BD6EF006BDEFF006BDEFF006BDEFF006BD6
        EF0073A5BD007B73A5009484A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00ADBDBD008CB5BD007BADBD0073ADB50073A5BD0084AD
        BD009CB5BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      Visible = False
      OnClick = spt_ZBFXClick
    end
    object SpeedButton8: TSpeedButton
      Left = 64
      Top = 1
      Width = 64
      Height = 27
      Caption = #21047#26032'(&R)'
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF7C67507C67507963
        4B755F48715B446D57406A543B665038634D346049325D462F5A442B58412958
        422AFFFFFFFFFFFF0000FFFFFFFFFFFF856F59FFE8C9FFE4C4FFE2C0FFE0BBFF
        DDB7FFDBB3FFD8AFFFD6ABFFD5A8FFD3A5FFD1A3FFD0A158422AFFFFFFFFFFFF
        0000FFFFFFFFFFFF8A745DFFEACDFFE8C8FFE5C4FFE2BFFFDFBB067D26FFDBB3
        FFD8AFFFD6ACFFD5A8FFD3A6FFD1A35A442CFFFFFFFFFFFF0000FFFFFFFFFFFF
        8D7861FFEDD1FFEACDFFE7C9FFE5C4067D260E872EFFDDB7FFDBB3FFD9AFFFD6
        ACFFD4A8FFD3A55E472FFFFFFFFFFFFF0000FFFFFFFFFFFF927C66FFF0D6FFED
        D1FFEACD067D260E872E0E872E067D260E872EFFDBB2FFD8AFFFD7ABFFD4A860
        4B32FFFFFFFFFFFF0000FFFFFFFFFFFF96806AFFF2DAFFF0D5FFEDD1FFEACD06
        7D260E872EFFE2C0067D260E872EFFDBB3FFD8AFFFD6AC644E36FFFFFFFFFFFF
        0000FFFFFFFFFFFF99846EFFF4DEFFF2DAFFF0D6FFEDD1FFEACD067D26FFE4C4
        FFE2C0067D26FFDDB7FFDBB3FFD9B068523AFFFFFFFFFFFF0000FFFFFFFFFFFF
        9D8871FFF7E2FFF4DEFFF2DAFFEFD6FFEDD2FFEACDFFE8C8FFE4C4FFE2C0FFE0
        BBFFDDB7FFDBB36C553EFFFFFFFFFFFF0000FFFFFFFFFFFFA08C75FFF9E6FFF7
        E1067D26FFF2DAFFF0D6067D26FFEACDFFE7C9FFE4C4FFE2BFFFDFBCFFDDB770
        5942FFFFFFFFFFFF0000FFFFFFFFFFFFA38F78FFFAE9FFF9E50E872E067D26FF
        F2DA0E872E067D26FFEACDFFE8C9FFE5C4FFE2BFFFDFBB745D46FFFFFFFFFFFF
        0000FFFFFFFFFFFFA6927BFFFDECFFFAE9FFF8E50E872E067D260E872E0E872E
        067D26FFEACD846E587F6B537B664F78624BFFFFFFFFFFFF0000FFFFFFFFFFFF
        A9957FFFFEEEFFFDECFFFBE9FFF9E6FFF6E20E872E067D26FFEFD6FFEDD18872
        5BFFE8C9FFE5C47C6650FFFFFFFFFFFF0000FFFFFFFFFFFFAB9781FFFFF0FFFE
        EEFFFCECFFFBE9FFF9E5067D26FFF4DEFFF2DAFFEFD68C7760FFEACD846E58FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAD9983FFFFF0FFFFF0FFFEEEFFFDECFF
        FAE8FFF9E5FFF7E2FFF4DEFFF1DA907C648C7760FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFAD9983AD9983AB9781AA957FA7937CA4907AA28D779F8A74
        9B877098836C947F69FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      OnClick = SpeedButton8Click
    end
    object SpeedButton6: TSpeedButton
      Left = 601
      Top = 0
      Width = 79
      Height = 28
      Caption = #25289#21333#29983#25104
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000C40E0000C40E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F8EBE0D8EDE3DBFCFCFDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFBFD
        FFC39E84A26533B37E52BE926ABE9067B17A4EA46634CCAA93FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDFD2CA9E5F2CD3B393F7EEDFFC
        F7EBFDF8EEFDF8EDFCF6E9F5EADACDA883A36333EFE8E0FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFD8C8BDA16231F4E8D4FBF5E8F6EDDBF5EAD6F8EEDAF3E5CD
        F3E7D0F5EAD5FAF4E3ECDBC1A1622EEEE4DCFFFFFFFFFFFF0000FFFFFFE6E5E4
        A56C40EEDFC9F8EFDCF4E9D4F6ECD8F5EAD6BA8B61F8EFDBF1E2C7F0DFC0EEDE
        BDF5E8CDE3CDADAC764BFFFFFFFFFFFF0000FBFFFFB89881CCA783FBF4E3F7EE
        DDFCF8ECEBDCCACBA888BB8C66FFFFF7FAF2E2F8EEDCF4E9D0F2E1C1F7E9C9BF
        9161D8BEADFFFFFF0000EAEFF4A2683AF0E2CEFAF4E7FFFFFADBC4B0CEAC8EFF
        FFFFD9BDA6C8A482C7A27DC7A07AC69F77C59C71D4B38BE5CBA3AB7549FFFFFF
        0000DCDCDDAE7A4FFDF9EDFFFFFCC6A183E4D1C1FFFFFFFBECD3FFFBEFFFFFFF
        FFFFFFC6A07DFFFFFFD2B49BC8A178F1E0BDAB7041FFFFFF0000D2CFCCB4825B
        FFFFFFB38057FDFBF9FFFFFFFAE9CEF8E4BFF6DCAFF8E3BDFFFFFFC6A181FFFF
        FFD2B59BCAA37EF6E8C9B07748FEFFFF0000D4D5D6B07B53FFFFFFFCF9F7BF94
        75F3E8DEFFFCF2FAEFDCFCEFD6FFEFCEFFF0C7C49666F9DC9ECEA26DCAA57FF3
        E6CAAA7041FFFFFF0000DAE0E4A2693EF5EFE8FFFFFFFFFFFFCCAD93DAC5B3FF
        FFFFE6D0BAB88A63BA8B63BB8F67BA8D64BA8A60D1B18DE9D7B8AD764DFFFFFF
        0000E7EBEDAD917ACFAD92FFFFFFFFFFFDFFFFFFE3CFC3D1B59FC29A7AFFFFFF
        FDFBFAFEFDFDFBF8F6F8F1E7FCF6E4BE8F64D5BEADFFFFFF0000FAFBFBC7C7C7
        A46D43F1E8E0FFFFFFFFFEFDFFFFFFF4EEE8AE7952FFFFFFFFFFFEFFFEFCFCF9
        F4FDF9EEE2CCAFAB754EFDFEFFFFFFFF0000FFFFFFE7EAECB8ADA2A46737F6EF
        E9FFFFFFFFFFFFFFFFFFFEFEFDFEFDFCFEFEFCFFFEFCFFFFFAE9D7C2A06333E9
        E1DCFFFFFFFFFFFF0000FFFFFFFFFFFFE2E5E8B8AFA79F6335D4B49AFBF8F5FF
        FFFFFFFFFFFFFFFFFFFFFFF7F1E8C9A482A06539E5DED8FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFEAECEECACFD3A98A73A1673AB07A52BD906DBC8F6B
        AD764CA2693CBC9F8AF4FAFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFEEAEEF0DBE1E5D4D7D9CECAC5D3CECAE0E2E5F0F6FAFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
    end
    object SpeedButton7: TSpeedButton
      Left = 680
      Top = 0
      Width = 81
      Height = 28
      Caption = #25512#21333#29983#25104
      Flat = True
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000C40E0000C40E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF0F6FAE0E2E5D3CECACECAC5D4D7D9DBE1E5EAEE
        F0FDFDFEFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF4FA
        FFBC9F8AA2693CAD764CBC8F6BBD906DB07A52A1673AA98A73CACFD3EAECEEFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFE5DED8A06539C9A482F7F1E8FF
        FFFFFFFFFFFFFFFFFFFFFFFBF8F5D4B49A9F6335B8AFA7E2E5E8FFFFFFFFFFFF
        0000FFFFFFFFFFFFE9E1DCA06333E9D7C2FFFFFAFFFEFCFEFEFCFEFDFCFEFEFD
        FFFFFFFFFFFFFFFFFFF6EFE9A46737B8ADA2E7EAECFFFFFF0000FFFFFFFDFEFF
        AB754EE2CCAFFDF9EEFCF9F4FFFEFCFFFFFEFFFFFFAE7952F4EEE8FFFFFFFFFE
        FDFFFFFFF1E8E0A46D43C7C7C7FAFBFB0000FFFFFFD5BEADBE8F64FCF6E4F8F1
        E7FBF8F6FEFDFDFDFBFAFFFFFFC29A7AD1B59FE3CFC3FFFFFFFFFFFDFFFFFFCF
        AD92AD917AE7EBED0000FFFFFFAD764DE9D7B8D1B18DBA8A60BA8D64BB8F67BA
        8B63B88A63E6D0BAFFFFFFDAC5B3CCAD93FFFFFFFFFFFFF5EFE8A2693EDAE0E4
        0000FFFFFFAA7041F3E6CACAA57FCEA26DF9DC9EC49666FFF0C7FFEFCEFCEFD6
        FAEFDCFFFCF2F3E8DEBF9475FCF9F7FFFFFFB07B53D4D5D60000FEFFFFB07748
        F6E8C9CAA37ED2B59BFFFFFFC6A181FFFFFFF8E3BDF6DCAFF8E4BFFAE9CEFFFF
        FFFDFBF9B38057FFFFFFB4825BD2CFCC0000FFFFFFAB7041F1E0BDC8A178D2B4
        9BFFFFFFC6A07DFFFFFFFFFFFFFFFBEFFBECD3FFFFFFE4D1C1C6A183FFFFFCFD
        F9EDAE7A4FDCDCDD0000FFFFFFAB7549E5CBA3D4B38BC59C71C69F77C7A07AC7
        A27DC8A482D9BDA6FFFFFFCEAC8EDBC4B0FFFFFAFAF4E7F0E2CEA2683AEAEFF4
        0000FFFFFFD8BEADBF9161F7E9C9F2E1C1F4E9D0F8EEDCFAF2E2FFFFF7BB8C66
        CBA888EBDCCAFCF8ECF7EEDDFBF4E3CCA783B89881FBFFFF0000FFFFFFFFFFFF
        AC764BE3CDADF5E8CDEEDEBDF0DFC0F1E2C7F8EFDBBA8B61F5EAD6F6ECD8F4E9
        D4F8EFDCEEDFC9A56C40E6E5E4FFFFFF0000FFFFFFFFFFFFEEE4DCA1622EECDB
        C1FAF4E3F5EAD5F3E7D0F3E5CDF8EEDAF5EAD6F6EDDBFBF5E8F4E8D4A16231D8
        C8BDFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFEFE8E0A36333CDA883F5EADAFC
        F6E9FDF8EDFDF8EEFCF7EBF7EEDFD3B3939E5F2CDFD2CAFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCAA93A46634B17A4EBE9067BE926A
        B37E52A26533C39E84FBFDFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFDEDE3DBEBE0D8F9F9F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
    end
  end
  object cdsList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsListFilterRecord
    Left = 136
    Top = 152
  end
  object dsList: TDataSource
    DataSet = cdsList
    Left = 136
    Top = 200
  end
  object actList: TActionList
    Left = 288
    Top = 160
  end
  object pmDetail: TPopupMenu
    AutoHotkeys = maManual
    Left = 264
    Top = 233
    object DelAllList: TMenuItem
      Caption = #25171#24320#21333#25454
      OnClick = dbgListDblClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object excel1: TMenuItem
      Caption = #23548#20986#21040'excel'
      OnClick = excel1Click
    end
    object setGridStyle_n: TMenuItem
      Caption = #35774#32622#32593#26684#26679#24335'...'
      OnClick = setGridStyle_nClick
    end
    object saveGridstyle: TMenuItem
      Caption = #20445#23384#32593#26684#26679#24335'...'
      OnClick = saveGridstyleClick
    end
  end
  object SaveDg: TSaveDialog
    Filter = 'EXCEL(*.XLS)|*.XLS'
    Left = 747
    Top = 202
  end
  object cdsReportList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 952
    Top = 306
  end
  object dsReportList: TDataSource
    DataSet = cdsReportList
    Left = 960
    Top = 362
  end
  object cdsChart: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 392
  end
  object ZBDS: TADODataSet
    Parameters = <>
    Left = 137
    Top = 394
  end
  object Pm_Chart: TPopupMenu
    Left = 216
    Top = 392
    object N2: TMenuItem
      Caption = #26356#25442#32972#26223#22270#29255'...'
      ImageIndex = 41
      OnClick = N2Click
    end
    object N4: TMenuItem
      Caption = #28165#38500#32972#26223#22270
      ImageIndex = 43
      OnClick = N4Click
    end
    object N3: TMenuItem
      Caption = #22797#21046#21040#21098#36148#26495
      ImageIndex = 74
      OnClick = N3Click
    end
    object Bmp1: TMenuItem
      Caption = #23548#20986#20026'Bmp...'
      ImageIndex = 75
      OnClick = Bmp1Click
    end
    object MenuItem1: TMenuItem
      Caption = #25171#21360
      ImageIndex = 103
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Caption = #32593#26684#32447
      OnClick = N5Click
    end
    object N7: TMenuItem
      Caption = #20540#21015#34920#20301#32622
      object N8: TMenuItem
        Caption = #21491#36793
        Checked = True
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #19979#36793
        OnClick = N9Click
      end
    end
    object N10: TMenuItem
      Caption = #20540#21015#34920#26174#31034
      Checked = True
      OnClick = N10Click
    end
  end
  object ChartOpenDg: TOpenDialog
    Filter = #22270#29255'(JPEG,JPG)|*.jpg;*.jpeg'
    Left = 296
    Top = 382
  end
  object ChartSavedg: TSaveDialog
    DefaultExt = 'bmp'
    Filter = 'Bmp'#25991#20214'|*.bmp'
    Title = #23548#20986#20026'Bmp...'
    Left = 296
    Top = 440
  end
  object cdsBillQueryFieldList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 546
  end
  object cdsBillQuery: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 538
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 160
    Top = 48
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 96
    Top = 56
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 16511980
    end
    object cxStyle3: TcxStyle
    end
    object cxStyle4: TcxStyle
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 32
    Top = 48
    PixelsPerInch = 96
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = 16511980
    end
  end
  object cdsBillFindList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 465
    Top = 70
  end
  object cdsQueryCondition: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 650
    Top = 64
    object cdsQueryConditionFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsQueryConditionFFIELDNAME: TWideStringField
      FieldName = 'FFIELDCHNAME'
      Size = 100
    end
    object cdsQueryConditionCOMPARE: TWideStringField
      DisplayLabel = #27604#36739#31526
      FieldName = 'COMPARE'
    end
    object cdsQueryConditionCOMPAREVALUE: TMemoField
      DisplayLabel = #27604#36739#20540
      FieldName = 'COMPAREVALUE'
      BlobType = ftMemo
      Size = 3000
    end
    object cdsQueryConditionLOGIC: TWideStringField
      DisplayLabel = #36923#36753#31526
      FieldName = 'LOGIC'
    end
    object cdsQueryConditionFFieldName2: TStringField
      FieldName = 'FFieldName'
      Size = 80
    end
    object cdsQueryConditionFFieldNameORTableName: TStringField
      FieldName = 'FFieldNameORTableName'
      Size = 100
    end
    object cdsQueryConditionFDataType: TStringField
      FieldName = 'FDataType'
      Size = 40
    end
    object cdsQueryConditionFFindValue: TStringField
      FieldName = 'FFindValue'
      Size = 3000
    end
    object cdsQueryConditionFDialogType: TStringField
      FieldName = 'FDialogType'
      Size = 30
    end
    object cdsQueryConditionFisInput: TIntegerField
      FieldName = 'FisInput'
    end
    object cdsQueryConditionFisRadioSelect: TIntegerField
      FieldName = 'FisRadioSelect'
    end
  end
end
