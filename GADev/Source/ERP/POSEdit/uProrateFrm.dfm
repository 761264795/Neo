inherited Frm_Prorate: TFrm_Prorate
  Left = 288
  Top = 208
  Width = 566
  Height = 396
  Caption = #33829#19994#21592#20998#25104' '#27604#20363#20998#37197
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 558
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 5
      Width = 549
      Height = 13
      AutoSize = False
      Caption = #35828#26126#65306#40664#35748#25353#21806#36135#21592#38646#21806#37329#39069#35745#31639#27604#20363#65307#21487#20197#25163#24037#28155#21152#21644#20462#25913#27604#20363#65307#27604#20363#21512#35745#20540#24517#38656#31561#20110'100'
    end
  end
  object pnCenter: TPanel [1]
    Left = 0
    Top = 25
    Width = 558
    Height = 296
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 558
      Height = 296
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object dbgList: TcxGridDBBandedTableView
        PopupMenu = PopupMenu1
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00;-0.00'
            Kind = skSum
            FieldName = 'CFQTY'
            Column = dbgListfCFQTY
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.BandMoving = False
        OptionsData.Appending = True
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.BandHeaders = False
        Bands = <
          item
          end>
        object dbgListsCFSALESMANID: TcxGridDBBandedColumn
          Caption = #33829#19994#21592
          DataBinding.FieldName = 'CFSALESMANID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'FID'
          Properties.ListColumns = <
            item
              Caption = #25910#38134#21592
              FieldName = 'NumberName'
            end>
          Properties.ListSource = CliDM.dsSalesMan
          Width = 185
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object dbgListfCFQTY: TcxGridDBBandedColumn
          Caption = #20998#37197#27604#20363'%'
          DataBinding.FieldName = 'CFQTY'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 207
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object dbgListCFSumPrice: TcxGridDBBandedColumn
          Caption = #38144#21806#37329#39069
          DataBinding.FieldName = 'CFSumPrice'
          Visible = False
          Options.Editing = False
          Width = 164
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object dbgAmount: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.DragFocusing = dfDragOver
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.BandMoving = False
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = #20027#35201#20449#24687
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            Caption = #20854#20182#20449#24687
          end>
      end
      object lvDetail: TcxGridLevel
        Caption = #31446#25490
        GridView = dbgList
      end
    end
  end
  object pnButton: TPanel [2]
    Left = 0
    Top = 321
    Width = 558
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      558
      41)
    object btOK: TcxButton
      Left = 382
      Top = 8
      Width = 73
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #30830#23450'(&Y)'
      Default = True
      TabOrder = 0
      OnClick = btOKClick
      LookAndFeel.Kind = lfOffice11
    end
    object btCancel: TcxButton
      Left = 470
      Top = 8
      Width = 73
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #21462#28040'(&C)'
      TabOrder = 1
      OnClick = btCancelClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 89
    object N1: TMenuItem
      Caption = #26032#22686
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #21024#38500
      OnClick = N2Click
    end
  end
end
