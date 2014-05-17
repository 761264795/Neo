object uAlterLevelForm: TuAlterLevelForm
  Left = 335
  Top = 102
  Width = 633
  Height = 571
  Caption = #35831#36873#25321#35201#31227#21160#21040#30340#33410#28857
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TreeList: TcxDBTreeList
    Left = 0
    Top = 0
    Width = 505
    Height = 533
    Align = alClient
    Bands = <
      item
      end>
    DataController.DataSource = dsMenu
    DataController.ImageIndexField = 'FImgageIndex'
    DataController.ParentField = 'FPARENTID'
    DataController.KeyField = 'TreeID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    Images = DMPub.ImageList16
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsSelection.CellSelect = False
    OptionsSelection.HideFocusRect = False
    OptionsView.ColumnAutoWidth = True
    OptionsView.Headers = False
    ParentFont = False
    RootValue = -1
    Styles.Background = cxStyle1
    Styles.Content = cxStyle1
    TabOrder = 0
    object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'TreeID'
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'FNUMBER'
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn
      DataBinding.FieldName = 'REPORTTYPENAME'
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'FPARENTID'
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object Panel1: TPanel
    Left = 505
    Top = 0
    Width = 112
    Height = 533
    Align = alRight
    Color = 16511980
    TabOrder = 1
    DesignSize = (
      112
      533)
    object btn_open: TcxButton
      Left = 7
      Top = 16
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #20840#37096#23637#24320
      TabOrder = 0
      OnClick = btn_openClick
      LookAndFeel.Kind = lfOffice11
    end
    object btn_ss: TcxButton
      Left = 7
      Top = 48
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #20840#37096#25910#32553
      TabOrder = 1
      OnClick = btn_ssClick
      LookAndFeel.Kind = lfOffice11
    end
    object btn_Config: TcxButton
      Left = 7
      Top = 464
      Width = 97
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #30830#23450'(&S)'
      TabOrder = 2
      OnClick = btn_ConfigClick
      LookAndFeel.Kind = lfOffice11
    end
    object btn_Exit: TcxButton
      Left = 7
      Top = 496
      Width = 97
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #36864#20986'(&E)'
      TabOrder = 3
      OnClick = btn_ExitClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object cdsMenu: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 408
    object cdsMenuFID: TStringField
      FieldName = 'TreeID'
      Size = 44
    end
    object cdsMenuFNUMBER: TStringField
      FieldName = 'FNUMBER'
      Size = 200
    end
    object cdsMenuFNAME_L1: TStringField
      FieldName = 'REPORTTYPENAME'
      Size = 200
    end
    object cdsMenuFPARENTID: TStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsMenuFImgageIndex: TIntegerField
      FieldName = 'FImgageIndex'
    end
  end
  object dsMenu: TDataSource
    DataSet = cdsMenu
    Left = 97
    Top = 409
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 16511980
    end
  end
end
