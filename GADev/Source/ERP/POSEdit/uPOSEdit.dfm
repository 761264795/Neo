object frmPOSEdit1: TfrmPOSEdit1
  Left = 313
  Top = 61
  Width = 916
  Height = 602
  Caption = 'POS'#24320#21333#30028#38754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 908
      Height = 65
      Align = alClient
    end
  end
  object pnClient: TPanel
    Left = 0
    Top = 65
    Width = 908
    Height = 405
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnClientClient: TPanel
      Left = 0
      Top = 0
      Width = 908
      Height = 344
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnClientClient'
      TabOrder = 0
      object cxGD: TcxGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 344
        Align = alClient
        TabOrder = 0
        object cxDetail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
        end
        object cxlev: TcxGridLevel
          GridView = cxDetail
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 344
      Width = 908
      Height = 61
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 152
        Top = 8
        DataBinding.DataField = 'flastupdatetime'
        DataBinding.DataSource = dsMaster
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 416
        Top = 8
        TabOrder = 1
        Width = 121
      end
    end
  end
  object pnButton: TPanel
    Left = 0
    Top = 470
    Width = 908
    Height = 98
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Button1: TButton
      Left = 264
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object csMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 121
  end
  object dsMaster: TDataSource
    DataSet = csMaster
    Left = 96
    Top = 177
  end
  object csDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 129
  end
  object dsDetail: TDataSource
    DataSet = csDetail
    Left = 192
    Top = 193
  end
end
