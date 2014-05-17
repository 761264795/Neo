object SubReportParaFrm: TSubReportParaFrm
  Left = 394
  Top = 134
  Width = 415
  Height = 353
  Caption = #23376#25253#34920#21442#25968#35774#32622
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 12
  object cxGrid: TcxGrid
    Left = 0
    Top = 31
    Width = 399
    Height = 247
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    object cxGridv: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPara
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405#25968#65306
          Kind = skCount
          FieldName = 'iState'
        end
        item
          Kind = skCount
          FieldName = 'MatType'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.DataRowSizing = True
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.Background = DMPub.cxStyle2
      Styles.Content = DMPub.cxStyle2
      Styles.Header = DMPub.cxStyle1
      Styles.Indicator = DMPub.cxStyle1
      object cxGridvfieldname: TcxGridDBColumn
        DataBinding.FieldName = 'fieldname'
        Width = 109
      end
      object cxGridvfieldChName: TcxGridDBColumn
        DataBinding.FieldName = 'fieldChName'
        Width = 115
      end
      object cxGridvfindValue: TcxGridDBColumn
        DataBinding.FieldName = 'findValue'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'comparevalue'
        Properties.ListColumns = <
          item
            Caption = #27604#36739#20540
            MinWidth = 25
            Width = 100
            FieldName = 'comparevalue'
          end
          item
            Caption = #39033#30446
            MinWidth = 25
            Width = 100
            FieldName = 'fieldChName'
          end>
        Properties.ListSource = dsFind
        Width = 150
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridv
    end
  end
  object PlBt: TPanel
    Left = 0
    Top = 278
    Width = 399
    Height = 37
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      399
      37)
    object btYes: TBitBtn
      Left = 320
      Top = 5
      Width = 78
      Height = 26
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 399
    Height = 31
    Align = alTop
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Caption = #20197#19979#21442#25968#23383#27573#26377#21516#21517#20540#65292#35831#20026#23427#20204#25351#23450#21442#25968#20540
    Color = 14548991
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object dsPara: TDataSource
    Left = 182
    Top = 212
  end
  object dsFind: TDataSource
    Left = 188
    Top = 131
  end
  object qryFind1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFind1'
    RemoteServer = DMPub.SocketConn
    Left = 128
    Top = 72
  end
  object qryPara: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPara'
    RemoteServer = DMPub.SocketConn
    Left = 72
    Top = 216
  end
end
