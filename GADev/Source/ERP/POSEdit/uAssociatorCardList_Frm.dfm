inherited Frm_AssociatorCardList: TFrm_AssociatorCardList
  Left = 206
  Top = 113
  Width = 970
  Caption = #24050#21457#21345#20250#21592#26597#35810
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 954
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      954
      29)
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 954
      Height = 29
      Align = alClient
    end
    object lbBegin: TLabel
      Left = 8
      Top = 8
      Width = 201
      Height = 13
      AutoSize = False
      Caption = #20250#21592#21345#21495'/'#25163#26426#21495#30721'/'#20250#21592#22995#21517
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 449
      Top = 9
      Width = 502
      Height = 15
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #25552#31034':'#19981#36755#26465#20214#21487#26597#35810#31649#29702#24215#38138#20026#24403#21069#24215#38138#30340#25152#26377#24050#21457#21345#20250#21592','#20854#23427#24215#38138#30340#24050#21457#21345#20250#21592#21482#20801#35768#21333#20010#26597#35810'!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btOK: TcxButton
      Left = 371
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
      Left = 203
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
      Width = 169
    end
  end
  object cxGrid2: TcxGrid [1]
    Left = 0
    Top = 29
    Width = 954
    Height = 433
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 1
    object dbgList: TcxGridDBTableView
      OnDblClick = dbgListDblClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 22
    end
    object cxGrid2Level1: TcxGridLevel
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
    object expExcel: TMenuItem
      Caption = #23548#20986#21040'Excel...'
      OnClick = expExcelClick
    end
  end
  object actEditCard: TActionList
    Left = 456
    Top = 176
    object actEditCard1: TAction
      Caption = #20462#25913#20250#21592#20449#24687
      OnExecute = actEditCard1Execute
    end
  end
end
