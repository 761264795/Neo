object PromtCountFrm: TPromtCountFrm
  Left = 122
  Top = 136
  Width = 1054
  Height = 697
  Caption = #26412#24215#21487#29992#20419#38144#26041#26696#26126#32454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCanResize = FormCanResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1046
    Height = 263
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1044
      Height = 237
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object dbgList: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = dbgListFocusedRecordChanged
        DataController.DataSource = ds_detail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.BandMoving = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.BandHeaders = False
        Bands = <
          item
          end>
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
    object Panel3: TPanel
      Left = 1
      Top = 238
      Width = 1044
      Height = 24
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object cxCheckBox1: TcxCheckBox
        Left = 0
        Top = 3
        Caption = #26174#31034#20419#38144#26126#32454'(&V)'
        TabOrder = 0
        OnClick = cxCheckBox1Click
        Width = 121
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 263
    Width = 1046
    Height = 400
    Align = alBottom
    TabOrder = 1
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 616
      Height = 398
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 616
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = 8
          Width = 91
          Height = 14
          AutoSize = False
          Caption = #20419#38144#26126#32454
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 28
        Width = 616
        Height = 370
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Black'
        object dbgprmtdetail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dspromtDetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object dbgprmtdetailfnumber: TcxGridDBColumn
            Caption = #21830#21697#32534#21495
            DataBinding.FieldName = 'fnumber'
            Width = 90
          end
          object dbgprmtdetailfname_l2: TcxGridDBColumn
            Caption = #21830#21697#21517#31216
            DataBinding.FieldName = 'fname_l2'
            Options.Editing = False
            Options.Filtering = False
            Width = 115
          end
          object dbgprmtdetailFPromtKind: TcxGridDBColumn
            Caption = #20419#38144#26041#24335
            DataBinding.FieldName = 'FPromtKind'
            Options.Editing = False
            Options.Filtering = False
            Width = 60
          end
          object dbgprmtdetailfpromtvalue: TcxGridDBColumn
            Caption = #20419#38144#26041#24335#20540
            DataBinding.FieldName = 'fpromtvalue'
            Options.Editing = False
            Options.Filtering = False
            Width = 80
          end
          object dbgprmtdetailColumn1: TcxGridDBColumn
            Caption = #20419#38144#21830#21697#21495
            DataBinding.FieldName = 'FDNUMBER'
            Width = 80
          end
          object dbgprmtdetailColumn2: TcxGridDBColumn
            Caption = #20419#38144#21830#21697#21517#31216
            DataBinding.FieldName = 'FDNameL2'
            Options.Editing = False
            Options.Filtering = False
            Width = 116
          end
          object dbgprmtdetailColumn3: TcxGridDBColumn
            Caption = #20419#38144#25240#25187
            DataBinding.FieldName = 'FD_AGIO'
            Options.Editing = False
            Options.Filtering = False
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = dbgprmtdetail
        end
      end
    end
    object Panel4: TPanel
      Left = 617
      Top = 1
      Width = 428
      Height = 398
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 1
      object cxGrid3: TcxGrid
        Left = 0
        Top = 28
        Width = 428
        Height = 370
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Black'
        object dbggiftDetail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPromtGift
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object dbggiftDetailfnumber: TcxGridDBColumn
            Caption = #21830#21697#32534#21495
            DataBinding.FieldName = 'fnumber'
            Width = 96
          end
          object dbggiftDetailfname_l2: TcxGridDBColumn
            Caption = #21830#21697#21517#31216
            DataBinding.FieldName = 'fname_l2'
            Options.Editing = False
            Options.Filtering = False
            Width = 155
          end
          object dbggiftDetailFPromtKind: TcxGridDBColumn
            Caption = #20419#38144#26041#24335
            DataBinding.FieldName = 'FPromtKind'
            Options.Editing = False
            Options.Filtering = False
            Width = 88
          end
          object dbggiftDetailfpromtvalue: TcxGridDBColumn
            Caption = #20419#38144#26041#24335#20540
            DataBinding.FieldName = 'fpromtvalue'
            Options.Editing = False
            Options.Filtering = False
            Width = 97
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = dbggiftDetail
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 428
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 79
          Height = 18
          AutoSize = False
          Caption = #36192#21697#26126#32454
        end
      end
    end
  end
  object ds_detail: TDataSource
    DataSet = dbgQry
    Left = 96
    Top = 136
  end
  object dbgQry: TADOQuery
    Parameters = <>
    Left = 200
    Top = 168
  end
  object qryPromtDetail: TADOQuery
    Connection = CliDM.conClient
    Parameters = <>
    Left = 256
    Top = 368
    object qryPromtDetailFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object qryPromtDetailfnumber: TStringField
      FieldName = 'fnumber'
      Size = 40
    end
    object qryPromtDetailfname_l2: TStringField
      FieldName = 'fname_l2'
      Size = 100
    end
    object qryPromtDetailFPromtKind: TIntegerField
      FieldName = 'FPromtKind'
      OnGetText = qryPromtDetailFPromtKindGetText
    end
    object qryPromtDetailfpromtvalue: TFloatField
      FieldName = 'fpromtvalue'
    end
    object qryPromtDetailFDNUMBER: TStringField
      FieldName = 'FDNUMBER'
      Size = 100
    end
    object qryPromtDetailFDNameL2: TStringField
      FieldName = 'FDNameL2'
      Size = 100
    end
    object qryPromtDetailFD_AGIO: TFloatField
      FieldName = 'FD_AGIO'
    end
  end
  object qrypromtGift: TADOQuery
    Connection = CliDM.conClient
    Parameters = <>
    SQL.Strings = (
      
        'select m.fnumber,m.fname_l2,a.FPromtKind,a.fpromtvalue  from T_P' +
        'RT_PromtAllBillEntry a'
      'left join T_BD_material m on a.fMaterialID=m.fid')
    Left = 617
    Top = 368
    object qrypromtGiftfnumber: TWideStringField
      FieldName = 'fnumber'
      Size = 80
    end
    object qrypromtGiftfname_l2: TWideStringField
      FieldName = 'fname_l2'
      Size = 255
    end
    object qrypromtGiftFPromtKind: TIntegerField
      FieldName = 'FPromtKind'
      OnGetText = qrypromtGiftFPromtKindGetText
    end
    object qrypromtGiftfpromtvalue: TBCDField
      FieldName = 'fpromtvalue'
      Precision = 28
      Size = 10
    end
  end
  object dspromtDetail: TDataSource
    DataSet = qryPromtDetail
    Left = 296
    Top = 368
  end
  object dsPromtGift: TDataSource
    DataSet = qrypromtGift
    Left = 673
    Top = 368
  end
end
