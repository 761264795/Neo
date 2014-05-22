inherited SelectDataExFrm: TSelectDataExFrm
  Caption = 'F7'#20540#36873#25321#26694
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 33
    Width = 1
    Height = 395
  end
  object pl: TPanel [1]
    Left = 0
    Top = 428
    Width = 792
    Height = 41
    Align = alBottom
    Color = 16511980
    TabOrder = 0
    DesignSize = (
      792
      41)
    object lb: TLabel
      Left = 16
      Top = 16
      Width = 6
      Height = 12
      Visible = False
    end
    object btYes: TcxButton
      Left = 594
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #30830#23450'(&A)'
      TabOrder = 0
      OnClick = btYesClick
      LookAndFeel.Kind = lfOffice11
    end
    object btCancel: TcxButton
      Left = 682
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #21462#28040'(&C)'
      TabOrder = 1
      OnClick = btCancelClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object Panel2: TPanel [2]
    Left = 1
    Top = 33
    Width = 414
    Height = 395
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    object cxGrid3: TcxGrid
      Left = 0
      Top = 0
      Width = 414
      Height = 395
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
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
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
      end
      object cxGridLevel4: TcxGridLevel
        GridView = ValList
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 415
    Top = 33
    Width = 377
    Height = 395
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 32
      Top = 0
      Width = 345
      Height = 395
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
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
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
      end
      object cxGridLevel1: TcxGridLevel
        GridView = selectTv
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 32
      Height = 395
      Align = alLeft
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
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 0
    Width = 792
    Height = 33
    Align = alTop
    Color = 16511980
    TabOrder = 3
    DesignSize = (
      792
      33)
    object sbSearch: TSpeedButton
      Left = 270
      Top = 3
      Width = 64
      Height = 22
      Caption = #27169#31946#26597#25214
      Flat = True
      OnClick = sbSearchClick
    end
    object cmbCode: TcxComboBox
      Left = 348
      Top = 5
      TabOrder = 0
      Visible = False
      Width = 133
    end
    object edSearch: TEdit
      Left = 143
      Top = 5
      Width = 121
      Height = 20
      ImeName = #20013#25991' - QQ'#20116#31508#36755#20837#27861
      TabOrder = 1
    end
    object cmbName: TcxComboBox
      Left = 4
      Top = 5
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cmbNamePropertiesChange
      TabOrder = 2
      Width = 133
    end
    object cmbTopN: TcxComboBox
      Left = 704
      Top = 5
      Anchors = [akTop, akRight]
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '100'#34892
        '500'#34892
        '1000'#34892
        #20840#37096)
      TabOrder = 3
      Text = '100'#34892
      Width = 83
    end
    object cxLabel1: TcxLabel
      Left = 625
      Top = 8
      Caption = #26368#22810#26597#35810#34892#25968
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 144
    Top = 104
  end
  object DsFind: TDataSource
    DataSet = QryFind
    Left = 72
    Top = 280
  end
  object dsSelect: TDataSource
    DataSet = adsSelect
    Left = 548
    Top = 223
  end
  object QryFind: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 129
    Top = 281
  end
  object adsSelect: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 474
    Top = 233
  end
end
