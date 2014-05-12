object ImpDataFromPosForm: TImpDataFromPosForm
  Left = 269
  Top = 191
  Width = 774
  Height = 514
  Caption = #20174'POS'#23548#20837#25968#25454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object cxLabel2: TcxLabel
      Left = 306
      Top = 14
      Caption = #27454'  '#21495
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 14
      Caption = #24320#21333#26085#26399
    end
    object cxLabel4: TcxLabel
      Left = 480
      Top = 14
      Caption = 'SKU'#38144#21806#37327
    end
    object cxedtStyle: TcxButtonEdit
      Left = 345
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxButtonEdit2PropertiesButtonClick
      TabOrder = 3
      Width = 123
    end
    object DT1: TcxDateEdit
      Left = 65
      Top = 10
      TabOrder = 4
      Width = 101
    end
    object DT2: TcxDateEdit
      Left = 187
      Top = 10
      TabOrder = 5
      Width = 100
    end
    object cxLabel5: TcxLabel
      Left = 168
      Top = 14
      Caption = #33267
    end
    object cxbtnSearch: TcxButton
      Left = 675
      Top = 8
      Width = 69
      Height = 27
      Caption = #26597#35810
      TabOrder = 7
      OnClick = cxbtnSearchClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
    end
    object cxLabel6: TcxLabel
      Left = 543
      Top = 14
      Caption = '>='
    end
    object cxCalcEdit1: TcxCalcEdit
      Left = 562
      Top = 10
      EditValue = 0.000000000000000000
      TabOrder = 9
      Width = 87
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 42
    Width = 758
    Height = 402
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 758
      Height = 402
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object cxgridImpPOS: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsImpFromPOS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxgridImpPOSColumn7: TcxGridDBColumn
          Caption = #36873#25321
          DataBinding.FieldName = 'Sel'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 10000c
          Properties.ValueUnchecked = 0c
          Properties.OnChange = cxgridImpPOSColumn7PropertiesChange
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 38
        end
        object cxgridImpPOSMaterCode: TcxGridDBColumn
          Caption = #27454#21495
          DataBinding.FieldName = 'MaterCode'
          Options.Editing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
        end
        object cxgridImpPOSColumn2: TcxGridDBColumn
          Caption = #27454#21517
          DataBinding.FieldName = 'MaterName'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Width = 100
        end
        object cxgridImpPOSColumn3: TcxGridDBColumn
          Caption = #33394#21495
          DataBinding.FieldName = 'ColorCode'
          Options.Editing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
        end
        object cxgridImpPOSColumn4: TcxGridDBColumn
          Caption = #39068#33394
          DataBinding.FieldName = 'ColorName'
          Options.Editing = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
        end
        object cxgridImpPOSColumn5: TcxGridDBColumn
          Caption = #23610#30721
          DataBinding.FieldName = 'SizeName'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
        object cxgridImpPOSColumn1: TcxGridDBColumn
          Caption = #20869#38271
          DataBinding.FieldName = 'Cupname'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
        end
        object cxgridImpPOSColumn6: TcxGridDBColumn
          Caption = #25968#37327
          DataBinding.FieldName = 'CFAmount'
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxgridImpPOS
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 444
    Width = 758
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      758
      32)
    object cxbtnOk: TcxButton
      Left = 648
      Top = 6
      Width = 44
      Height = 22
      Anchors = [akTop, akRight]
      Caption = #30830#23450
      TabOrder = 0
      OnClick = cxbtnOkClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
    end
    object cxbtnClose: TcxButton
      Left = 704
      Top = 6
      Width = 44
      Height = 22
      Anchors = [akTop, akRight]
      Caption = #20851#38381
      TabOrder = 1
      OnClick = cxbtnCloseClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
    end
    object cxButton1: TcxButton
      Left = 5
      Top = 6
      Width = 41
      Height = 22
      Caption = #20840#36873
      TabOrder = 2
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
    end
    object cxButton2: TcxButton
      Left = 55
      Top = 6
      Width = 42
      Height = 22
      Caption = #21453#36873
      TabOrder = 3
      OnClick = cxButton2Click
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
    end
  end
  object cdsImpFromPOS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 188
  end
  object dsImpFromPOS: TDataSource
    DataSet = cdsImpFromPOS
    Left = 288
    Top = 188
  end
end
