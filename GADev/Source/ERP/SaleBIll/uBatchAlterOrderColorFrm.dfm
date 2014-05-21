inherited BatchAlterOrderColorFrm: TBatchAlterOrderColorFrm
  Left = 183
  Top = 98
  Width = 997
  Height = 614
  Caption = #25209#37327#20462#25913#35746#21333#39068#33394
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 989
    Height = 41
    Align = alTop
    Color = 16511980
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 361
      Height = 25
      AutoSize = False
      Caption = #25209#37327#20462#25913#38144#21806#35746#21333#39068#33394
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 41
    Width = 989
    Height = 542
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 1
    object TPanel
      Left = 0
      Top = 0
      Width = 989
      Height = 36
      Align = alTop
      Color = 16511980
      TabOrder = 0
      DesignSize = (
        989
        36)
      object btn_Query: TcxButton
        Left = 800
        Top = 4
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #26597#35810'(&F)'
        TabOrder = 0
        OnClick = btn_QueryClick
        LookAndFeel.Kind = lfOffice11
      end
      object cxLabel1: TcxLabel
        Left = 6
        Top = 10
        AutoSize = False
        Caption = #29289#26009
        Height = 17
        Width = 30
      end
      object cxLabel2: TcxLabel
        Left = 292
        Top = 10
        AutoSize = False
        Caption = #39068#33394
        Height = 16
        Width = 30
      end
      object cxLabel3: TcxLabel
        Left = 549
        Top = 10
        AutoSize = False
        Caption = #23458#25143
        Height = 16
        Width = 32
      end
      object txt_Customer: TcxButtonEdit
        Left = 579
        Top = 8
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.OnButtonClick = txt_CustomerPropertiesButtonClick
        TabOrder = 4
        OnKeyPress = txt_CustomerKeyPress
        Width = 175
      end
      object btn_Reset: TcxButton
        Left = 888
        Top = 4
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #37325#32622'(&R)'
        Enabled = False
        TabOrder = 5
        OnClick = btn_ResetClick
        LookAndFeel.Kind = lfOffice11
      end
      object txt_material: TcxButtonEdit
        Tag = 100
        Left = 42
        Top = 8
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.OnButtonClick = txt_materialPropertiesButtonClick
        TabOrder = 6
        OnKeyPress = txt_materialKeyPress
        Width = 119
      end
      object txt_Color: TcxButtonEdit
        Tag = 100
        Left = 325
        Top = 8
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.OnButtonClick = txt_ColorPropertiesButtonClick
        TabOrder = 7
        OnKeyPress = txt_ColorKeyPress
        Width = 87
      end
      object txt_MaterialName: TcxTextEdit
        Left = 160
        Top = 7
        Enabled = False
        TabOrder = 8
        Width = 130
      end
      object txt_ColorName: TcxTextEdit
        Left = 411
        Top = 7
        Enabled = False
        TabOrder = 9
        Width = 130
      end
    end
    object pl_Create: TPanel
      Left = 0
      Top = 489
      Width = 989
      Height = 53
      Align = alBottom
      Color = 16511980
      TabOrder = 1
      DesignSize = (
        989
        53)
      object btn_Alter: TcxButton
        Left = 747
        Top = 18
        Width = 121
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #24320#22987#20462#25913'(&C)'
        TabOrder = 0
        OnClick = btn_AlterClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_Exit: TcxButton
        Left = 883
        Top = 18
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #36864#20986'(&E)'
        TabOrder = 1
        OnClick = btn_ExitClick
        LookAndFeel.Kind = lfOffice11
      end
      object chk_SaleOrder: TcxCheckBox
        Left = 8
        Top = 16
        Caption = #26174#31034#24050#37197#36135#30340#35746#21333'('#27880':'#24050#37197#36135#30340#35746#21333#19981#20801#35768#20462#25913#39068#33394')'
        State = cbsChecked
        TabOrder = 2
        OnClick = chk_SaleOrderClick
        Width = 385
      end
    end
    object EntryPage: TcxPageControl
      Left = 0
      Top = 36
      Width = 989
      Height = 453
      ActivePage = cxTabSheet1
      Align = alClient
      Style = 10
      TabOrder = 2
      ClientRectBottom = 453
      ClientRectRight = 989
      ClientRectTop = 18
      object cxTabSheet1: TcxTabSheet
        Caption = #38144#21806#35746#21333#25968#25454
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 23
          Width = 989
          Height = 412
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          object cxGridEntry: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnEditing = cxGridEntryEditing
            DataController.DataSource = dsQuery
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OptionsView.Indicator = True
            object cxGridEntryFIsAllocation: TcxGridDBColumn
              DataBinding.FieldName = 'FIsAllocation'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Options.Editing = False
              Width = 51
            end
            object cxGridEntryFSaleOrderFID: TcxGridDBColumn
              DataBinding.FieldName = 'FSaleOrderFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFSaleOrderNumber: TcxGridDBColumn
              DataBinding.FieldName = 'FSaleOrderNumber'
              Options.Editing = False
              Width = 119
            end
            object cxGridEntryFCustFID: TcxGridDBColumn
              DataBinding.FieldName = 'FCustFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFCustName: TcxGridDBColumn
              DataBinding.FieldName = 'FCustName'
              Options.Editing = False
              Width = 132
            end
            object cxGridEntryFMaterialFID: TcxGridDBColumn
              DataBinding.FieldName = 'FMaterialFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'FMaterialNumber'
              Options.Editing = False
              Width = 84
            end
            object cxGridEntryFMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'FMaterialName'
              Options.Editing = False
              Width = 129
            end
            object cxGridEntryFOldColorFID: TcxGridDBColumn
              DataBinding.FieldName = 'FOldColorFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFOldColorNumber: TcxGridDBColumn
              DataBinding.FieldName = 'FOldColorNumber'
              Options.Editing = False
              Width = 89
            end
            object cxGridEntryFOldColorName: TcxGridDBColumn
              DataBinding.FieldName = 'FOldColorName'
              Options.Editing = False
              Width = 114
            end
            object cxGridEntryFNewColorFID: TcxGridDBColumn
              DataBinding.FieldName = 'FNewColorFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFnewColorNumber: TcxGridDBColumn
              DataBinding.FieldName = 'FnewColorNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClearKey = 46
              Properties.ClickKey = 118
              Properties.ReadOnly = False
              Properties.OnButtonClick = cxGridEntryFnewColorNumberPropertiesButtonClick
              Styles.Content = cxStyle1
              Width = 102
            end
            object cxGridEntryFNewColorName: TcxGridDBColumn
              DataBinding.FieldName = 'FNewColorName'
              Options.Editing = False
              Width = 135
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGridEntry
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 989
          Height = 23
          Align = alTop
          BevelOuter = bvNone
          Color = 16511980
          TabOrder = 1
          object spt_DownCopy: TSpeedButton
            Left = 814
            Top = 0
            Width = 82
            Height = 23
            Caption = #21521#19979#22797#21046
            Flat = True
            OnClick = spt_DownCopyClick
          end
          object spt_Clear: TSpeedButton
            Left = 896
            Top = 0
            Width = 82
            Height = 23
            Caption = #28165#31354#26356#25913
            Flat = True
            OnClick = spt_ClearClick
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #26085#24535
        ImageIndex = 1
        object m_log: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          ParentFont = False
          Properties.ReadOnly = True
          Properties.ScrollBars = ssBoth
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 435
          Width = 989
        end
      end
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 80
    Top = 400
  end
  object cdsQuery: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 199
    object cdsQueryFIsAllocation: TIntegerField
      DisplayLabel = #24050#37197#36135
      FieldName = 'FIsAllocation'
    end
    object cdsQueryFSaleOrderFID: TStringField
      FieldName = 'FSaleOrderFID'
      Size = 80
    end
    object cdsQueryFSaleOrderNumber: TStringField
      DisplayLabel = #38144#21806#35746#21333
      FieldName = 'FSaleOrderNumber'
      Size = 80
    end
    object cdsQueryFCustFID: TStringField
      FieldName = 'FCustFID'
      Size = 80
    end
    object cdsQueryFCustName: TStringField
      DisplayLabel = #23458#25143#21517#31216
      FieldName = 'FCustName'
      Size = 80
    end
    object cdsQueryFMaterialFID: TStringField
      FieldName = 'FMaterialFID'
      Size = 80
    end
    object cdsQueryFMaterialNumber: TStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'FMaterialNumber'
      Size = 80
    end
    object cdsQueryFMaterialName: TStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'FMaterialName'
      Size = 80
    end
    object cdsQueryFOldColorFID: TStringField
      FieldName = 'FOldColorFID'
      Size = 80
    end
    object cdsQueryFOldColorNumber: TStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'FOldColorNumber'
      Size = 80
    end
    object cdsQueryFOldColorName: TStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'FOldColorName'
      Size = 80
    end
    object cdsQueryFNewColorFID: TStringField
      FieldName = 'FNewColorFID'
      Size = 80
    end
    object cdsQueryFnewColorNumber: TStringField
      DisplayLabel = #26356#25913#39068#33394#32534#21495
      FieldName = 'FnewColorNumber'
      OnValidate = cdsQueryFnewColorNumberValidate
      Size = 80
    end
    object cdsQueryFNewColorName: TStringField
      DisplayLabel = #26356#25913#39068#33394#21517#31216
      FieldName = 'FNewColorName'
      Size = 80
    end
  end
  object dsQuery: TDataSource
    DataSet = cdsQuery
    Left = 184
    Top = 199
  end
  object cdsPub: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 271
  end
  object cdsOrderEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 271
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
end
