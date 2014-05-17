object ReportUserCRFrm: TReportUserCRFrm
  Left = 323
  Top = 99
  Width = 695
  Height = 592
  Caption = #25253#34920#26435#38480#20998#37197
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter
    Left = 353
    Top = 92
    Width = 1
    Height = 421
  end
  object Label2: TLabel
    Left = 424
    Top = 10
    Width = 223
    Height = 15
    AutoSize = False
    Caption = #25552#31034':'#20013#25991#36807#28388#24517#38656#36755#20837#19968#20010#20197#19978#23383#31526
  end
  object pl: TPanel
    Left = 0
    Top = 513
    Width = 679
    Height = 41
    Align = alBottom
    Color = 16511980
    TabOrder = 0
    DesignSize = (
      679
      41)
    object lb: TLabel
      Left = 16
      Top = 16
      Width = 6
      Height = 12
      Visible = False
    end
    object btYes: TBitBtn
      Left = 505
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #20445#23384'(&S)'
      TabOrder = 0
      OnClick = btYesClick
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
    end
    object btCancel: TBitBtn
      Left = 593
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #21462#28040'(&C)'
      TabOrder = 1
      OnClick = btCancelClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000B5000000B500FF00FF000000
        B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000B500FF00FF00FF00FF000000
        B5000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000B5000000B500FF00FF00FF00FF00FF00FF000000
        B5000000B5000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000D6000000BD000000B5000000B500FF00FF00FF00FF00FF00FF00FF00
        FF000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000B5000000B5000000B500FF00FF000000B5000000
        B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000C6000000C6000000CE000000
        B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000C6000000C6000000DE00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000D6000000CE000000DE000000
        EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000E7000000DE000000D600FF00FF00FF00FF000000
        E7000000EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF000000DE000000EF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000F7000000F7000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000F7000000F700FF00FF00FF00FF00FF00FF00FF00FF000000
        F7000000F7000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000F700FF00FF00FF00FF000000F7000000
        F7000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000F7000000
        F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object chk_isAll: TCheckBox
      Left = 20
      Top = 12
      Width = 325
      Height = 17
      Caption = #20998#37197#24403#21069#25253#34920#30340#26435#38480#32473#25152#26377#29992#25143'(&A)'
      TabOrder = 2
      OnClick = chk_isAllClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 92
    Align = alTop
    Color = 16511980
    TabOrder = 1
    DesignSize = (
      679
      92)
    object Label1: TLabel
      Left = 7
      Top = 48
      Width = 89
      Height = 13
      AutoSize = False
      Caption = #32534#21495'/'#21517#31216'(&U)'
      FocusControl = Edit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lb_report: TLabel
      Left = 9
      Top = 6
      Width = 656
      Height = 25
      AutoSize = False
      Caption = #38144#21806#20986#24211#20998#26512#25253#34920
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 3
      Top = 68
      Width = 672
      Height = 2
      Anchors = [akLeft, akTop, akRight]
    end
    object Label3: TLabel
      Left = 3
      Top = 75
      Width = 134
      Height = 12
      AutoSize = False
      Caption = '>>'#29992#25143#21015#34920
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 355
      Top = 75
      Width = 190
      Height = 12
      AutoSize = False
      Caption = '>>'#24050#20998#37197#26435#38480#29992#25143
    end
    object Bevel2: TBevel
      Left = 4
      Top = 36
      Width = 672
      Height = 2
      Anchors = [akLeft, akTop, akRight]
    end
    object Label5: TLabel
      Left = 296
      Top = 47
      Width = 223
      Height = 15
      AutoSize = False
      Caption = #25552#31034':'#20013#25991#36807#28388#24517#38656#36755#20837#19968#20010#20197#19978#23383#31526
    end
    object SpeedButton1: TSpeedButton
      Left = 504
      Top = 69
      Width = 171
      Height = 22
      Anchors = [akTop, akRight]
      Caption = #23548#20837#20854#23427#25253#34920#26435#38480#29992#25143'(&E)'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD4A1000AD4A
        1000AD4A1000B54A1000B54A1000B54A1000B54A1000B54A1000AD4A1000AD4A
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD4A1000AD4A
        1000D6522100F7634A00FF6B5200FF7B5A00FF846300FF735A00F7634A00C652
        2900AD4A1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD4A1000AD4A
        1000DE522900F7735200FF8C6B00FF7B5A00FFBDB500FFC6C600F7634200CE52
        3100AD4A1800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B54A
        1800E7633900FF8C6B00FF8C6300FF947300FFEFEF00FFEFEF00F77B6300C652
        2900AD4A1800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD4A
        1800DE634200FF8C5A00F7845A00DEB5AD00EFF7F700FFDECE00FF946B00CE63
        3900AD4A1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00E76B3900944A42004A396B0029428400314A8C006B526B00DE6B4200CE63
        2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00183194000039AD000839A50000319C0000218C0029297B00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000104200105ACE001852BD001852BD001852BD001852BD000039AD00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000103984002173F700216BDE001863CE001863CE00216BD600185AC600FF00
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000103973002173DE002163BD001863CE00185AC6002173DE00216BDE00FF00
        FF0000001000FF00FF000039FF00FF00FF0000082900FF00FF00FF00FF000000
        00000810100000081000104273003194F700298CF7003194FF00217BEF00FF00
        FF00000831000039FF00FF00FF000039FF0000219400FF00FF00FF00FF003939
        3100393931003931290010315200298CD60031A5F700319CEF001852B500FF00
        FF0000083100FF00FF00FF00FF00FF00FF000039F700FF00FF00FF00FF00FF00
        FF0039393900737373006B6B630039424A001029390010213100FF00FF00FF00
        FF0000000000000008000000000000000800001884000039FF00FF00FF00FF00
        FF00FF00FF0094948C0094948C00847B7B0031292900FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000031E700FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Edit1: TEdit
      Left = 90
      Top = 44
      Width = 183
      Height = 20
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 92
    Width = 353
    Height = 421
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 2
    object Panel4: TPanel
      Left = 321
      Top = 0
      Width = 32
      Height = 421
      Align = alRight
      BevelOuter = bvNone
      Color = 16511980
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object SpeedButton4: TSpeedButton
        Left = 0
        Top = 72
        Width = 33
        Height = 26
        Hint = #22686#21152
        Caption = '>>'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = -1
        Top = 98
        Width = 34
        Height = 26
        Hint = #25554#20837
        Caption = '>'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = -1
        Top = 216
        Width = 34
        Height = 26
        Hint = #31227#38500
        Caption = '<'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton6Click
      end
      object SpeedButton10: TSpeedButton
        Left = -1
        Top = 190
        Width = 34
        Height = 26
        Hint = #20840#31227
        Caption = '<<'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton10Click
      end
    end
    object cxGrid3: TcxGrid
      Left = 0
      Top = 0
      Width = 321
      Height = 421
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
      object ValList: TcxGridDBTableView
        OnDblClick = ValListDblClick
        OnKeyDown = ValListKeyDown
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.GridMode = True
        DataController.DataSource = DsFind
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
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideSelection = True
        OptionsSelection.MultiSelect = True
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        Styles.Background = DMPub.cxStyle2
        Styles.Content = DMPub.cxStyle2
        Styles.Header = DMPub.cxStyle1
        Styles.Indicator = DMPub.cxStyle1
      end
      object cxGridLevel4: TcxGridLevel
        GridView = ValList
      end
    end
  end
  object Panel3: TPanel
    Left = 354
    Top = 92
    Width = 325
    Height = 421
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 3
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 325
      Height = 421
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
      object selectTv: TcxGridDBTableView
        OnDblClick = selectTvDblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSelect
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
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        Styles.Background = DMPub.cxStyle2
        Styles.Content = DMPub.cxStyle2
        Styles.Header = DMPub.cxStyle1
        Styles.Indicator = DMPub.cxStyle1
      end
      object cxGridLevel1: TcxGridLevel
        GridView = selectTv
      end
    end
  end
  object DsFind: TDataSource
    DataSet = qryFind
    Left = 88
    Top = 200
  end
  object dsSelect: TDataSource
    DataSet = adsSelect
    Left = 548
    Top = 223
  end
  object qryFind: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = qryFindFilterRecord
    Left = 144
    Top = 199
  end
  object adsSelect: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select 1 as img, fnumber,Fname_l2 from T_PM_User where fnumber n' +
      'ot in ('#39'user'#39','#39'administrator'#39')'
    Params = <>
    ProviderName = 'dspUser'
    Left = 464
    Top = 199
  end
end
