inherited FrmDayReceiveType: TFrmDayReceiveType
  Left = 365
  Top = 193
  Width = 745
  Height = 449
  Caption = #25910#38134#27719#24635
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 737
    Height = 33
    Align = alTop
    TabOrder = 0
    DesignSize = (
      737
      33)
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 735
      Height = 31
      Align = alClient
      Stretch = True
    end
    object Label1: TLabel
      Left = 15
      Top = 9
      Width = 60
      Height = 13
      Caption = #26597#35810#26085#26399#65306
      Transparent = True
    end
    object dtDayEnd: TcxDateEdit
      Left = 75
      Top = 5
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 91
    end
    object btOk: TcxButton
      Left = 169
      Top = 3
      Width = 60
      Height = 25
      Caption = #26597#30475'(&F)'
      TabOrder = 1
      OnClick = btOkClick
      LookAndFeel.Kind = lfOffice11
    end
    object btExcel: TcxButton
      Left = 636
      Top = 4
      Width = 80
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #23548#20986'&EXCEL'
      TabOrder = 2
      OnClick = btExcelClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 33
    Width = 737
    Height = 382
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 735
      Height = 380
      Align = alClient
      TabOrder = 0
      object cxTV1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<'#31354#25968#25454'>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTV1
      end
    end
  end
  object dsList: TDataSource
    DataSet = cdsList
    Left = 240
    Top = 81
  end
  object cdsList: TADODataSet
    Parameters = <>
    Left = 192
    Top = 49
  end
  object SaveDg: TSaveDialog
    Filter = 'EXCEL(*.XLS)|*.XLS'
    Left = 315
    Top = 2
  end
end
