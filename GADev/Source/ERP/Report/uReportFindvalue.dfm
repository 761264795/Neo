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
  OnKeyDown = FormKeyDown
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
    object Label3: TLabel
      Left = 10
      Top = 13
      Width = 405
      Height = 18
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object btYes: TcxButton
      Left = 499
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
      Left = 587
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 33
    Align = alTop
    Color = 16511980
    TabOrder = 1
    object Label4: TLabel
      Left = 8
      Top = 10
      Width = 77
      Height = 13
      AutoSize = False
      Caption = #32534#21495#25110#21517#31216'(&F)'
      FocusControl = edit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 376
      Top = 11
      Width = 285
      Height = 13
      AutoSize = False
      Caption = #25552#31034':'#25903#25345#25340#38899#39318#23383#27597#36807#28388
      FocusControl = edit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edit1: TcxTextEdit
      Left = 86
      Top = 7
      Properties.OnChange = cxTextEdit1PropertiesChange
      TabOrder = 0
      Width = 268
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
      LookAndFeel.SkinName = 'Office2007Black'
      object ValList: TcxGridDBTableView
        OnDblClick = ValListDblClick
        OnKeyUp = ValListKeyUp
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
  object QryFind: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = QryFindFilterRecord
    Left = 137
    Top = 201
  end
end
