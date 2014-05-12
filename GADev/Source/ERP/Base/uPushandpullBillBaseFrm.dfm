inherited PushandpullBillBaseFrm: TPushandpullBillBaseFrm
  Left = 218
  Top = 142
  Width = 960
  Height = 561
  Caption = #25512#25289#21333#22522#31867
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter [0]
    Left = 469
    Top = 81
    Height = 401
    Align = alRight
  end
  object pl: TPanel [1]
    Left = 0
    Top = 482
    Width = 944
    Height = 41
    Align = alBottom
    Color = 16511980
    TabOrder = 0
    DesignSize = (
      944
      41)
    object lb: TLabel
      Left = 16
      Top = 16
      Width = 6
      Height = 12
      Visible = False
    end
    object Label4: TLabel
      Left = 8
      Top = 14
      Width = 52
      Height = 12
      AutoSize = False
      Caption = #29983#25104#26041#24335
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btYes: TcxButton
      Left = 754
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
      Left = 842
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #21462#28040'(&C)'
      TabOrder = 1
      OnClick = btCancelClick
      LookAndFeel.Kind = lfOffice11
    end
    object cb_CreateType: TcxComboBox
      Left = 66
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #26410#23436#25104#25968
        #31354#25968#37327
        #22312#24211#25968
        #21487#29992#24211#23384#25968)
      Style.Color = clWhite
      Style.TextStyle = []
      TabOrder = 2
      Text = #26410#23436#25104#25968
      Width = 141
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 48
    Width = 944
    Height = 33
    Align = alTop
    Color = 16511980
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 10
      Width = 100
      Height = 13
      AutoSize = False
      Caption = #29289#26009#32534#21495#25110#21517#31216'(&F)'
      FocusControl = Edit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 284
      Top = 10
      Width = 285
      Height = 13
      AutoSize = False
      Caption = #25552#31034':'#25903#25345#25340#38899#39318#23383#27597#36807#28388
      FocusControl = Edit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TcxTextEdit
      Left = 108
      Top = 7
      Properties.OnChange = Edit1PropertiesChange
      TabOrder = 0
      Width = 174
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 81
    Width = 469
    Height = 401
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 2
    object cxGrid3: TcxGrid
      Left = 0
      Top = 0
      Width = 469
      Height = 401
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object ValList: TcxGridDBTableView
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
        OptionsSelection.CellSelect = False
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
  object Panel3: TPanel [4]
    Left = 472
    Top = 81
    Width = 472
    Height = 401
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 3
    object cxGrid1: TcxGrid
      Left = 32
      Top = 0
      Width = 440
      Height = 401
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object selectTv: TcxGridDBTableView
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
        OptionsSelection.CellSelect = False
        OptionsSelection.HideSelection = True
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
      end
      object cxGridLevel1: TcxGridLevel
        GridView = selectTv
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 32
      Height = 401
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
  object top_pal: TPanel [5]
    Left = 0
    Top = 0
    Width = 944
    Height = 48
    Align = alTop
    Color = 16511980
    TabOrder = 4
    DesignSize = (
      944
      48)
    object Label3: TLabel
      Left = 5
      Top = 9
      Width = 54
      Height = 12
      AutoSize = False
      Caption = #28304#21333#32534#21495
      Transparent = True
    end
    object Label5: TLabel
      Left = 5
      Top = 30
      Width = 54
      Height = 12
      AutoSize = False
      Caption = #28304#21333#22791#27880
      Transparent = True
    end
    object btn_Ref: TcxButton
      Left = 853
      Top = 19
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #26597#35810'(&R)'
      TabOrder = 0
      OnClick = btn_RefClick
      LookAndFeel.Kind = lfOffice11
    end
    object txt_BillNumber: TcxButtonEdit
      Left = 56
      Top = 5
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      TabOrder = 1
      Width = 153
    end
    object txt_SrcDes: TcxTextEdit
      Left = 56
      Top = 26
      Properties.ReadOnly = True
      Style.Color = 12320767
      TabOrder = 2
      Width = 609
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 64
    Top = 200
  end
  object DsFind: TDataSource
    DataSet = QryFind
    Left = 48
    Top = 312
  end
  object dsSelect: TDataSource
    DataSet = adsSelect
    Left = 540
    Top = 295
  end
  object QryFind: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = QryFindFilterRecord
    Left = 105
    Top = 313
  end
  object adsSelect: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 474
    Top = 289
  end
  object cdsPub: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 616
    Top = 417
  end
end
