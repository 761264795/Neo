inherited Frm_MaterialList: TFrm_MaterialList
  Left = 257
  Top = 181
  Caption = #29289#26009#26723#26696
  KeyPreview = False
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object pnTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 792
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      792
      27)
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 792
      Height = 27
      Align = alClient
    end
    object lbBegin: TLabel
      Left = 7
      Top = 8
      Width = 185
      Height = 12
      AutoSize = False
      Caption = #35831#36755#20837#21830#21697#32534#30721#25110#21517#31216#26597#35810'(&I)'
      FocusControl = cxStyle
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lb_qty: TLabel
      Left = 555
      Top = 7
      Width = 170
      Height = 14
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btOK: TcxButton
      Left = 361
      Top = 1
      Width = 79
      Height = 23
      Anchors = [akTop, akRight]
      Caption = #26597#35810'(&F)'
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
      Left = 193
      Top = 3
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      Style.Font.Charset = GB2312_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 1
      OnKeyDown = cxStyleKeyDown
      Width = 163
    end
  end
  object cxGrid2: TcxGrid [1]
    Left = 0
    Top = 27
    Width = 792
    Height = 439
    Align = alClient
    TabOrder = 1
    object dbgList: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnKeyDown = dbgListKeyDown
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = dbgList1CellDblClick
      DataController.DataSource = dsList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = dbgList
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    FieldDefs = <
      item
        Name = 'STBaseEditDataSetField1'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
  end
  object cdsList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 137
    Top = 152
  end
  object dsList: TDataSource
    DataSet = cdsList
    Left = 200
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 256
    Top = 264
    object N1: TMenuItem
      Caption = #26597#30475#35814#32454#36164#26009
      ShortCut = 119
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #26597#30475#24211#23384#20449#24687'...'
      ShortCut = 117
      OnClick = N2Click
    end
    object Excel1: TMenuItem
      Caption = #23548#20986#21040'Excel'
      ShortCut = 16453
      OnClick = Excel1Click
    end
  end
end
