inherited NoVipListFrm: TNoVipListFrm
  Left = 274
  Top = 95
  Caption = #36873#25321#26410#21457#21345#20250#21592
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 792
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      792
      29)
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 792
      Height = 29
      Align = alClient
    end
    object lbBegin: TLabel
      Left = 8
      Top = 8
      Width = 201
      Height = 13
      AutoSize = False
      Caption = #25163#26426#21495#30721'/'#20250#21592#22995#21517'/'#20250#21592#32534#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btOK: TcxButton
      Left = 445
      Top = 2
      Width = 74
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #26597#35810
      Default = True
      TabOrder = 0
      OnClick = btOKClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      LookAndFeel.Kind = lfOffice11
      NumGlyphs = 2
    end
    object cxStyle: TcxTextEdit
      Left = 209
      Top = 4
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      Style.Font.Charset = GB2312_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 1
      Width = 218
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 29
    Width = 792
    Height = 437
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.SkinName = 'Office2007Black'
    object dbgList: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnDblClick = dbgListDblClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataModeController.GridMode = True
      DataController.DataSource = dsList
      DataController.Filter.AutoDataSetFilter = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = #31354#25968#25454
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 24
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = dbgList
    end
  end
  object cdsList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 152
  end
  object dsList: TDataSource
    DataSet = cdsList
    Left = 200
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 176
    object N1: TMenuItem
      Action = actEditCard1
    end
  end
  object actEditCard: TActionList
    Left = 456
    Top = 176
    object actEditCard1: TAction
      Caption = #36873#25321
      OnExecute = actEditCard1Execute
    end
  end
end
