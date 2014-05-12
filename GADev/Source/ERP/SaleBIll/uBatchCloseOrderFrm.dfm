inherited BatchCloseOrderFrm: TBatchCloseOrderFrm
  Left = 123
  Top = 51
  Width = 1107
  Height = 677
  Caption = #25209#37327#20851#38381#35746#21333
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1091
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
      Caption = #25209#37327#20851#38381#38144#21806#35746#21333
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
    Width = 1091
    Height = 598
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 1
    object p_top: TPanel
      Left = 0
      Top = 0
      Width = 1091
      Height = 150
      Align = alTop
      Caption = 'p_top'
      Color = 16511980
      TabOrder = 0
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 1
        Align = alTop
        Caption = #25805#20316#31867#22411
        TabOrder = 0
        DesignSize = (
          1089
          42)
        Height = 42
        Width = 1089
        object Bevel1: TBevel
          Left = 170
          Top = 9
          Width = 2
          Height = 29
        end
        object rb_Close: TcxRadioButton
          Left = 24
          Top = 16
          Width = 44
          Height = 17
          Caption = #20851#38381
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rb_CloseClick
        end
        object rb_NotClose: TcxRadioButton
          Left = 81
          Top = 16
          Width = 84
          Height = 17
          Caption = #21462#28040#20851#38381
          TabOrder = 1
          OnClick = rb_NotCloseClick
        end
        object cxLabel8: TcxLabel
          Left = 177
          Top = 16
          AutoSize = False
          Caption = #25805#20316#21407#22240
          Height = 16
          Width = 54
        end
        object bte_Cause: TcxButtonEdit
          Tag = 100
          Left = 230
          Top = 14
          Anchors = [akLeft, akTop, akRight]
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = bte_CausePropertiesButtonClick
          TabOrder = 3
          OnKeyPress = bte_CauseKeyPress
          Width = 855
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 1
        Top = 43
        Align = alClient
        Caption = #26597#25214#26465#20214
        TabOrder = 1
        Height = 71
        Width = 1089
        object EndDate: TcxDateEdit
          Left = 368
          Top = 41
          TabOrder = 0
          Width = 111
        end
        object btn_Query: TcxButton
          Left = 773
          Top = 35
          Width = 75
          Height = 25
          Caption = #26597#35810'(&F)'
          TabOrder = 1
          OnClick = btn_QueryClick
          LookAndFeel.Kind = lfOffice11
        end
        object cxLabel1: TcxLabel
          Left = 176
          Top = 21
          AutoSize = False
          Caption = #29289#26009
          Height = 17
          Width = 30
        end
        object cxLabel3: TcxLabel
          Left = 484
          Top = 21
          AutoSize = False
          Caption = #23458#25143
          Height = 16
          Width = 32
        end
        object txt_Customer: TcxButtonEdit
          Left = 538
          Top = 19
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = txt_CustomerPropertiesButtonClick
          TabOrder = 4
          OnKeyPress = txt_CustomerKeyPress
          Width = 199
        end
        object btn_Reset: TcxButton
          Left = 853
          Top = 35
          Width = 75
          Height = 25
          Caption = #37325#32622'(&R)'
          Enabled = False
          TabOrder = 5
          OnClick = btn_ResetClick
          LookAndFeel.Kind = lfOffice11
        end
        object txt_material: TcxButtonEdit
          Tag = 100
          Left = 230
          Top = 19
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = txt_materialPropertiesButtonClick
          TabOrder = 6
          OnKeyPress = txt_materialKeyPress
          Width = 120
        end
        object cxLabel4: TcxLabel
          Left = 6
          Top = 43
          AutoSize = False
          Caption = #35746#21333#31867#22411
          Height = 16
          Width = 55
        end
        object edt_OrderType: TcxButtonEdit
          Left = 63
          Top = 40
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = edt_OrderTypePropertiesButtonClick
          TabOrder = 8
          OnKeyPress = edt_OrderTypeKeyPress
          Width = 110
        end
        object cxLabel5: TcxLabel
          Left = 176
          Top = 44
          AutoSize = False
          Caption = #35746#21333#26085#26399
          Height = 17
          Width = 59
        end
        object BeginDate: TcxDateEdit
          Left = 230
          Top = 41
          TabOrder = 10
          Width = 120
        end
        object cxLabel6: TcxLabel
          Left = 351
          Top = 44
          AutoSize = False
          Caption = #33267
          Height = 17
          Width = 16
        end
        object cxLabel7: TcxLabel
          Left = 6
          Top = 21
          AutoSize = False
          Caption = #36755#20837#26041#24335
          Height = 16
          Width = 56
        end
        object cb_InputType: TcxComboBox
          Tag = 100
          Left = 63
          Top = 19
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #25955#30721
            #37197#36135)
          Properties.OnChange = cb_InputTypePropertiesChange
          TabOrder = 13
          Text = #25955#30721
          Width = 110
        end
        object cxLabel9: TcxLabel
          Left = 484
          Top = 42
          AutoSize = False
          Caption = #35746#21333#25968#37327
          Height = 17
          Width = 59
        end
        object cb_compare: TcxComboBox
          Left = 538
          Top = 40
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            '>'
            '<'
            '>='
            '<=')
          TabOrder = 15
          Text = '<'
          Width = 63
        end
        object ce_Qty: TcxCalcEdit
          Left = 601
          Top = 40
          EditValue = 0.000000000000000000
          TabOrder = 16
          Width = 136
        end
        object txt_MaterialName: TcxTextEdit
          Left = 347
          Top = 18
          Enabled = False
          TabOrder = 17
          Width = 132
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 1
        Top = 114
        Align = alBottom
        Caption = #20998#32452#26041#24335
        TabOrder = 2
        Height = 35
        Width = 1089
        object chk_Color: TcxCheckBox
          Left = 71
          Top = 10
          Caption = #39068#33394
          TabOrder = 0
          OnClick = chk_ColorClick
          Width = 96
        end
        object chk_SIzeOrPack: TcxCheckBox
          Left = 183
          Top = 10
          Caption = #23610#30721
          TabOrder = 1
          OnClick = chk_SIzeOrPackClick
          Width = 95
        end
        object chk_Cup: TcxCheckBox
          Left = 296
          Top = 10
          Caption = #20869#38271
          TabOrder = 2
          OnClick = chk_CupClick
          Width = 121
        end
      end
    end
    object pl_Create: TPanel
      Left = 0
      Top = 555
      Width = 1091
      Height = 43
      Align = alBottom
      Color = 16511980
      TabOrder = 1
      DesignSize = (
        1091
        43)
      object btn_Alter: TcxButton
        Left = 911
        Top = 11
        Width = 81
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #30830#23450'(&Y)'
        TabOrder = 0
        OnClick = btn_AlterClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_Exit: TcxButton
        Left = 1003
        Top = 11
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #36864#20986'(&E)'
        TabOrder = 1
        OnClick = btn_ExitClick
        LookAndFeel.Kind = lfOffice11
      end
    end
    object EntryPage: TcxPageControl
      Left = 0
      Top = 150
      Width = 1091
      Height = 405
      ActivePage = cxTabSheet1
      Align = alClient
      Style = 10
      TabOrder = 2
      ClientRectBottom = 405
      ClientRectRight = 1091
      ClientRectTop = 18
      object cxTabSheet1: TcxTabSheet
        Caption = #38144#21806#35746#21333#25968#25454
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1091
          Height = 362
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          object cxGridEntry: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsQuery
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skSum
                FieldName = 'FQty'
                Column = cxGridEntryFQty
              end
              item
                Kind = skSum
                FieldName = 'FAmount'
                Column = cxGridEntryFAmount
              end
              item
                Format = '0'
                Kind = skSum
                FieldName = 'FinishQty'
                Column = cxGridEntryFinishQty
              end
              item
                Format = '0'
                Kind = skSum
                FieldName = 'FCloseQty'
                Column = cxGridEntryFCloseQty
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OptionsView.Indicator = True
            object cxGridEntrySelected: TcxGridDBColumn
              DataBinding.FieldName = 'Selected'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Width = 49
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
              Width = 113
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
              Width = 144
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
              Width = 80
            end
            object cxGridEntryFMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'FMaterialName'
              Options.Editing = False
              Width = 110
            end
            object cxGridEntryFColorFID: TcxGridDBColumn
              DataBinding.FieldName = 'FColorFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFColorNumber: TcxGridDBColumn
              DataBinding.FieldName = 'FColorNumber'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'FColorName'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFSizeFID: TcxGridDBColumn
              DataBinding.FieldName = 'FSizeFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFSizeName: TcxGridDBColumn
              DataBinding.FieldName = 'FSizeName'
              Visible = False
              Options.Editing = False
              Width = 50
            end
            object cxGridEntryFCupFID: TcxGridDBColumn
              DataBinding.FieldName = 'FCupFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFCupName: TcxGridDBColumn
              DataBinding.FieldName = 'FCupName'
              Visible = False
              Options.Editing = False
              Width = 53
            end
            object cxGridEntryFPackFID: TcxGridDBColumn
              DataBinding.FieldName = 'FPackFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFPackName: TcxGridDBColumn
              DataBinding.FieldName = 'FPackName'
              Visible = False
              Options.Editing = False
              Width = 53
            end
            object cxGridEntryFQty: TcxGridDBColumn
              DataBinding.FieldName = 'FQty'
              Options.Editing = False
              Width = 67
            end
            object cxGridEntryFPrice: TcxGridDBColumn
              DataBinding.FieldName = 'FPrice'
              Options.Editing = False
              Width = 61
            end
            object cxGridEntryFAmount: TcxGridDBColumn
              DataBinding.FieldName = 'FAmount'
              Options.Editing = False
              Width = 86
            end
            object cxGridEntryFinishQty: TcxGridDBColumn
              DataBinding.FieldName = 'FinishQty'
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryFCloseQty: TcxGridDBColumn
              DataBinding.FieldName = 'FCloseQty'
              Options.Editing = False
              Width = 80
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGridEntry
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 362
          Width = 1091
          Height = 25
          Align = alBottom
          Color = 16511980
          TabOrder = 1
          object cxButton4: TcxButton
            Left = 49
            Top = 1
            Width = 44
            Height = 23
            Caption = #21453#36873
            TabOrder = 0
            OnClick = cxButton4Click
            LookAndFeel.Kind = lfOffice11
          end
          object cxButton3: TcxButton
            Left = 3
            Top = 1
            Width = 44
            Height = 23
            Caption = #20840#36873
            TabOrder = 1
            OnClick = cxButton3Click
            LookAndFeel.Kind = lfOffice11
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
          Height = 387
          Width = 1091
        end
      end
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 832
    Top = 392
  end
  object cdsQuery: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 407
    object cdsQuerySelected: TBooleanField
      DisplayLabel = #36873#25321
      FieldName = 'Selected'
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
      FieldName = 'FColorFID'
      Size = 80
    end
    object cdsQueryFOldColorNumber: TStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'FColorNumber'
      Size = 80
    end
    object cdsQueryFOldColorName: TStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'FColorName'
      Size = 80
    end
    object cdsQueryFSizeFID: TStringField
      FieldName = 'FSizeFID'
      Size = 80
    end
    object cdsQueryFSizeName: TStringField
      DisplayLabel = #23610#30721
      FieldName = 'FSizeName'
      Size = 80
    end
    object cdsQueryFCupFID: TStringField
      FieldName = 'FCupFID'
      Size = 80
    end
    object cdsQueryFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'FCupName'
      Size = 80
    end
    object cdsQueryFPackFID: TStringField
      FieldName = 'FPackFID'
      Size = 80
    end
    object cdsQueryFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'FPackName'
      Size = 80
    end
    object cdsQueryFQty: TIntegerField
      DisplayLabel = #35746#21333#25968#25454
      FieldName = 'FQty'
    end
    object cdsQueryFPrice: TFloatField
      DisplayLabel = #21333#20215
      FieldName = 'FPrice'
    end
    object cdsQueryFAmount: TFloatField
      DisplayLabel = #37329#39069
      FieldName = 'FAmount'
    end
    object cdsQueryFinishQty: TIntegerField
      DisplayLabel = #24050#37197#36135#25968
      FieldName = 'FinishQty'
    end
    object cdsQueryFCloseQty: TIntegerField
      DisplayLabel = #20851#38381#25968#37327
      FieldName = 'FCloseQty'
    end
  end
  object dsQuery: TDataSource
    DataSet = cdsQuery
    Left = 176
    Top = 407
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
end
