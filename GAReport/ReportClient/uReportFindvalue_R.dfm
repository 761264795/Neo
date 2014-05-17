object ReportFindvalueFrm: TReportFindvalueFrm
  Left = 351
  Top = 179
  Width = 694
  Height = 452
  Caption = #20540#36873#25321#23545#35805#26694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCanResize = FormCanResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 33
    Width = 1
    Height = 340
  end
  object pl: TPanel
    Left = 0
    Top = 373
    Width = 678
    Height = 41
    Align = alBottom
    Color = 16511980
    TabOrder = 0
    DesignSize = (
      678
      41)
    object lb: TLabel
      Left = 16
      Top = 16
      Width = 3
      Height = 13
      Visible = False
    end
    object btYes: TBitBtn
      Left = 504
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #30830#35748'(&Y)'
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
      Left = 592
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 33
    Align = alTop
    Color = 16511980
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 10
      Width = 43
      Height = 13
      AutoSize = False
      Caption = #36807#28388'(&L)'
      FocusControl = Edit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 424
      Top = 10
      Width = 223
      Height = 15
      AutoSize = False
      Caption = #25552#31034':'#20013#25991#36807#28388#24517#38656#36755#20837#19968#20010#20197#19978#23383#31526
    end
    object FieldList: TComboBox
      Left = 48
      Top = 6
      Width = 115
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      OnChange = FieldListChange
    end
    object Edit1: TEdit
      Left = 232
      Top = 6
      Width = 183
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object cpList: TComboBox
      Left = 165
      Top = 6
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = #21253#21547
      Items.Strings = (
        #21253#21547
        #31561#20110
        #19981#31561#20110
        #22823#20110
        #23567#20110
        #23567#20110#31561#20110
        #22823#20110#31561#20110)
    end
  end
  object Panel2: TPanel
    Left = 1
    Top = 33
    Width = 353
    Height = 340
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 2
    object cxGrid3: TcxGrid
      Left = 0
      Top = 0
      Width = 353
      Height = 340
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
      object ValList: TcxGridDBTableView
        OnDblClick = ValListDblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DsFind
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            Position = spFooter
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'Fnumber'
          end>
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
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsView.GroupByBox = False
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
    Top = 33
    Width = 324
    Height = 340
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 3
    object cxGrid1: TcxGrid
      Left = 32
      Top = 0
      Width = 292
      Height = 340
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
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsView.GroupByBox = False
        Styles.Background = DMPub.cxStyle2
        Styles.Content = DMPub.cxStyle2
        Styles.Header = DMPub.cxStyle1
        Styles.Indicator = DMPub.cxStyle1
      end
      object cxGridLevel1: TcxGridLevel
        GridView = selectTv
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 32
      Height = 340
      Align = alLeft
      BevelOuter = bvNone
      Color = 16511980
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
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
  end
  object DsFind: TDataSource
    DataSet = QryFind
    Left = 88
    Top = 200
  end
  object QryFind: TADODataSet
    OnFilterRecord = QryFindFilterRecord
    Parameters = <>
    Left = 136
    Top = 216
  end
  object adsSelect: TADODataSet
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 468
    Top = 223
  end
  object dsSelect: TDataSource
    DataSet = adsSelect
    Left = 548
    Top = 223
  end
end
