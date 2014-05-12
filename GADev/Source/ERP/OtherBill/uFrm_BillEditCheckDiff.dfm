inherited FM_BillEditCheck_Diff: TFM_BillEditCheck_Diff
  Left = 142
  Top = 142
  Width = 964
  Caption = #30424#28857#24322#24120#21333#25454#26597#35810
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 948
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      948
      41)
    object cbDiff: TCheckBox
      Left = 824
      Top = 16
      Width = 113
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #21482#26174#31034#24046#24322#25968#25454
      TabOrder = 0
      OnClick = cbDiffClick
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 41
    Width = 948
    Height = 380
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 948
      Height = 380
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object dbgList: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDetail
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'CFSTORAGEQTY'
            Column = dbgListCFSTORAGEQTY
          end
          item
            Kind = skSum
            FieldName = 'CFQTY'
            Column = dbgListFQTY
          end
          item
            Kind = skSum
            FieldName = 'CFLPQTY'
            Column = dbgListCFLPQTY
          end
          item
            Kind = skSum
            FieldName = 'CFPQTY'
            Column = dbgListCFPQTY
          end
          item
            Kind = skSum
            FieldName = 'CFLQTY'
            Column = dbgListCFLQTY
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.DataRowSizing = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        object dbgListFSEQ: TcxGridDBColumn
          DataBinding.FieldName = 'FSEQ'
          Options.Editing = False
          Options.Filtering = False
          Width = 46
        end
        object dbgListcfMaterialNumber: TcxGridDBColumn
          DataBinding.FieldName = 'cfMaterialNumber'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Options.Editing = False
          Options.Filtering = False
        end
        object dbgListcfMaterialName: TcxGridDBColumn
          DataBinding.FieldName = 'cfMaterialName'
          Options.Editing = False
          Options.Filtering = False
          Width = 87
        end
        object dbgListcfColorName: TcxGridDBColumn
          DataBinding.FieldName = 'cfColorName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Options.Editing = False
          Options.Filtering = False
          Width = 64
        end
        object dbgListcfSIZEName: TcxGridDBColumn
          DataBinding.FieldName = 'cfSIZEName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Options.Editing = False
          Options.Filtering = False
          Width = 52
        end
        object dbgListcfCupName: TcxGridDBColumn
          DataBinding.FieldName = 'cfCupName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Options.Editing = False
          Options.Filtering = False
          Width = 39
        end
        object dbgListCFSTORAGEQTY: TcxGridDBColumn
          DataBinding.FieldName = 'CFSTORAGEQTY'
          Options.Editing = False
          Options.Filtering = False
        end
        object dbgListFQTY: TcxGridDBColumn
          DataBinding.FieldName = 'CFQTY'
          Options.Editing = False
          Options.Filtering = False
          Width = 75
        end
        object dbgListCFQTY2: TcxGridDBColumn
          DataBinding.FieldName = 'CFQTY2'
          Options.Editing = False
          Options.Filtering = False
        end
        object dbgListCFQTY3: TcxGridDBColumn
          DataBinding.FieldName = 'CFQTY3'
          Options.Editing = False
          Options.Filtering = False
        end
        object dbgListCFLPQTY: TcxGridDBColumn
          DataBinding.FieldName = 'CFLPQTY'
          Options.Editing = False
          Options.Filtering = False
        end
        object dbgListCFLQTY: TcxGridDBColumn
          DataBinding.FieldName = 'CFLQTY'
          Options.Editing = False
          Options.Filtering = False
        end
        object dbgListCFPQTY: TcxGridDBColumn
          DataBinding.FieldName = 'CFPQTY'
          Options.Editing = False
          Options.Filtering = False
        end
        object dbgListCFDIFF: TcxGridDBColumn
          DataBinding.FieldName = 'CFDIFF'
          Options.Editing = False
          Options.Filtering = False
          Width = 97
        end
      end
      object dbgLevel1: TcxGridLevel
        Caption = #31446#25490
        GridView = dbgList
      end
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 421
    Width = 948
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      948
      41)
    object btToExcel: TcxButton
      Left = 850
      Top = 8
      Width = 93
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #23548#20986'EXCEL'
      TabOrder = 0
      OnClick = btToExcelClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object dsDetail: TDataSource
    Left = 368
    Top = 167
  end
  object SaveDg: TSaveDialog
    Filter = 'EXCEL(*.XLS)|*.XLS'
    Left = 587
    Top = 186
  end
end
