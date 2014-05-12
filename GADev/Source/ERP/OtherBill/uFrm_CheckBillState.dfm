inherited CheckBillStateFrm: TCheckBillStateFrm
  Left = 251
  Top = 94
  Caption = #30424#28857#21069#24517#38656#22788#29702#19979#36848#21333#25454' '
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 0
    Width = 792
    Height = 466
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.SkinName = 'Office2007Black'
    object dbgMulti1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
    end
    object cxGridLevel1: TcxGridLevel
      GridView = dbgMulti1
    end
  end
  object DataSource1: TDataSource
    Left = 288
    Top = 168
  end
end
