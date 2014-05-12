inherited FM_Explain_Bill: TFM_Explain_Bill
  Left = 260
  Top = 166
  Caption = #25972#21333#20419#38144
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object pnl_Explain_Bill_1: TPanel [0]
    Left = 0
    Top = 0
    Width = 792
    Height = 194
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 0
      Top = 23
      Width = 792
      Height = 171
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cgbList1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cgbList1FocusedRecordChanged
        DataController.DataSource = dsExplain_Bill_1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cgbList1IsSel: TcxGridDBColumn
          DataBinding.FieldName = 'IsSel'
          Width = 67
        end
        object cgbList1fSum_Price: TcxGridDBColumn
          Caption = #25972#21333#21830#21697#29305#20215
          DataBinding.FieldName = 'fSum_Price'
          Visible = False
          Options.Editing = False
          Width = 87
        end
        object cgbList1fAgio: TcxGridDBColumn
          DataBinding.FieldName = 'fAgio'
          Options.Editing = False
          Width = 87
        end
        object cgbListfZRMoney: TcxGridDBColumn
          Caption = #25972#21333#25240#35753#37329#39069
          DataBinding.FieldName = 'fZRMoney'
          Options.Editing = False
          Width = 88
        end
        object cgbList1ProjectNumberName: TcxGridDBColumn
          DataBinding.FieldName = 'ProjectNumberName'
          Options.Editing = False
          Width = 109
        end
        object cgbList1ExplainInfo: TcxGridDBColumn
          DataBinding.FieldName = 'ExplainInfo'
          Options.Editing = False
          Width = 357
        end
        object cgbList1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'FVipEnabled'
          Options.Editing = False
        end
      end
      object cglList1: TcxGridLevel
        GridView = cgbList1
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 792
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 6
        Top = 6
        Width = 168
        Height = 12
        Caption = 'F3  '#29305#20215#12289#25240#25187#12289#25240#35753'('#31435#20943')  '
        Transparent = True
      end
    end
  end
  object pnl_Explain_Bill_2: TPanel [1]
    Left = 0
    Top = 194
    Width = 792
    Height = 236
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 0
      Top = 30
      Width = 792
      Height = 206
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cgbList2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsExplain_Bill_2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cgbList2IsSel: TcxGridDBColumn
          DataBinding.FieldName = 'IsSel'
          Width = 46
        end
        object cgbList2uStyle_ID: TcxGridDBColumn
          DataBinding.FieldName = 'sStyle_Code'
          Options.Editing = False
          Width = 73
        end
        object cgbList2sStyle_Name: TcxGridDBColumn
          DataBinding.FieldName = 'sStyle_Name'
          Options.Editing = False
          Width = 76
        end
        object cgbList2uColor_ID: TcxGridDBColumn
          DataBinding.FieldName = 'sColor_code'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cgbList2uColor_IDPropertiesButtonClick
          Width = 48
        end
        object cgbList2sColor_Name: TcxGridDBColumn
          DataBinding.FieldName = 'sColor_Name'
          Options.Editing = False
          Width = 56
        end
        object cgbList2uSize_ID: TcxGridDBColumn
          DataBinding.FieldName = 'sSize_Code'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cgbList2uSize_IDPropertiesButtonClick
          Width = 49
        end
        object cgbList2sSize_name: TcxGridDBColumn
          DataBinding.FieldName = 'sSize_name'
          Options.Editing = False
          Width = 62
        end
        object cgbList2fUnit_Price: TcxGridDBColumn
          DataBinding.FieldName = 'fUnit_Price'
          Options.Editing = False
          Width = 64
        end
        object cgbList2fAgio: TcxGridDBColumn
          DataBinding.FieldName = 'fAgio'
          Options.Editing = False
          Width = 62
        end
        object cgbList2fZRMoney: TcxGridDBColumn
          DataBinding.FieldName = 'fZRMoney'
          Options.Editing = False
        end
        object cgbList2ExplainInfo: TcxGridDBColumn
          DataBinding.FieldName = 'ExplainInfo'
          Options.Editing = False
          Width = 230
        end
      end
      object cglList2: TcxGridLevel
        GridView = cgbList2
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 792
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lbl_Code: TLabel
        Left = 162
        Top = 9
        Width = 54
        Height = 12
        Caption = 'F5 '#26465#24418#30721
        FocusControl = edt_Code
        Transparent = True
      end
      object Label2: TLabel
        Left = 6
        Top = 9
        Width = 156
        Height = 12
        Caption = 'F4  '#31526#21512#26465#20214#30340#20419#38144#36192#36865#21830#21697
        Transparent = True
      end
      object edt_Code: TcxTextEdit
        Left = 217
        Top = 6
        TabOrder = 0
        OnKeyPress = edt_CodeKeyPress
        Width = 252
      end
    end
  end
  object pnlbtn: TPanel [2]
    Left = 0
    Top = 430
    Width = 792
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      792
      43)
    object Label3: TLabel
      Left = 7
      Top = 6
      Width = 450
      Height = 24
      Caption = 
        #20351#29992#25216#24039#65306' F6'#36873#25321#20419#38144#27454#39068#33394#21644#23610#30721#65307#31354#26684#38190#20026#36873#20013#25110#32773#21462#28040#65288#40736#26631#20572#22312#34920#26684#21306#26102#65289#13#10'                     '#25353'F' +
        '2'#40736#26631#36339#21040#30830#23450#25353#38062#65307'F3 F4'#21040#34920#26684';  ESC'#36864#20986
    end
    object mbOK: TcxButton
      Left = 576
      Top = 9
      Width = 65
      Height = 26
      Anchors = [akRight, akBottom]
      Caption = #30830#23450' F2'
      TabOrder = 0
      OnClick = mbOKClick
      OnKeyDown = mbOKKeyDown
      LookAndFeel.Kind = lfOffice11
    end
    object mbCancel: TcxButton
      Left = 650
      Top = 9
      Width = 64
      Height = 26
      Anchors = [akRight, akBottom]
      Caption = #21462#28040' ESC'
      TabOrder = 1
      OnClick = mbCancelClick
      OnKeyDown = mbCancelKeyDown
      LookAndFeel.Kind = lfOffice11
    end
  end
  object adsExplain_Bill_1: TADODataSet
    Connection = CliDM.conClient
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'sp_Get_Explain_Bill_1;1'
    CommandTimeout = 0
    CommandType = cmdStoredProc
    EnableBCD = False
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@uStorage_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@FPARENTID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 44
        Value = Null
      end
      item
        Name = '@CFVIPCardNumber'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@AssociatorAgio'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 10
        Precision = 28
        Value = Null
      end>
    Left = 32
    Top = 40
    object adsExplain_Bill_1IsSel: TBooleanField
      DisplayLabel = #36873#20013
      FieldName = 'IsSel'
      OnChange = adsExplain_Bill_1IsSelChange
    end
    object adsExplain_Bill_1fSum_Price: TFloatField
      DisplayLabel = #25240#35753#37329#39069
      FieldName = 'fSum_Price'
    end
    object adsExplain_Bill_1fAgio: TFloatField
      DisplayLabel = #25972#21333#25240#25187
      FieldName = 'fAgio'
    end
    object adsExplain_Bill_1ExplainInfo: TStringField
      DisplayLabel = #20419#38144#35828#26126
      FieldName = 'ExplainInfo'
      Size = 100
    end
    object adsExplain_Bill_1ProjectNumberName: TStringField
      DisplayLabel = #20080#39640#36865#20302#20302#20215#21830#21697
      FieldName = 'ProjectNumberName'
      Size = 400
    end
    object adsExplain_Bill_1ProjectMinStyleID: TStringField
      DisplayLabel = #20215#26684#26368#20302#21830#21697'ID'
      FieldName = 'ProjectMinStyleID'
      Size = 44
    end
    object adsExplain_Bill_1fZRMoney: TFloatField
      FieldName = 'fZRMoney'
    end
    object adsExplain_Bill_1FNumber: TStringField
      DisplayLabel = #20419#38144#21333#21495
      FieldName = 'FNumber'
      Size = 200
    end
    object adsExplain_Bill_1FVipEnabled: TIntegerField
      DisplayLabel = #19982#20250#21592#20851#31995
      FieldName = 'FVipEnabled'
    end
    object adsExplain_Bill_1IsVip: TIntegerField
      DisplayLabel = #20250#21592#31867#25240#25187
      FieldName = 'IsVip'
    end
  end
  object dsExplain_Bill_1: TDataSource
    DataSet = adsExplain_Bill_1
    Left = 32
    Top = 96
  end
  object adsExplain_Bill_2: TADODataSet
    Connection = CliDM.conClient
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = adsExplain_Bill_2CalcFields
    CommandText = 'sp_Get_Explain_Bill_2;1'
    CommandTimeout = 0
    CommandType = cmdStoredProc
    EnableBCD = False
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@uStorage_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@FPARENTID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 44
        Value = Null
      end
      item
        Name = '@CFVIPCardNumber'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@AssociatorAgio'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 10
        Precision = 28
        Value = Null
      end>
    Left = 56
    Top = 240
    object adsExplain_Bill_2IsSel: TBooleanField
      DisplayLabel = #36873#20013
      FieldName = 'IsSel'
    end
    object adsExplain_Bill_2uStyle_ID: TStringField
      DisplayLabel = #20419#38144#27454#21495
      FieldName = 'uStyle_ID'
      Size = 50
    end
    object adsExplain_Bill_2sStyle_Name: TStringField
      DisplayLabel = #20419#38144#27454#21517
      FieldName = 'sStyle_Name'
      LookupKeyFields = 'uStyle_ID'
      LookupResultField = 'sStyle_Name'
      KeyFields = 'uStyle_ID'
      Size = 200
    end
    object adsExplain_Bill_2uColor_ID: TStringField
      DisplayLabel = #33394#21495
      FieldName = 'uColor_ID'
      Size = 50
    end
    object adsExplain_Bill_2sColor_Name: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'sColor_Name'
      Size = 80
    end
    object adsExplain_Bill_2uSize_ID: TStringField
      DisplayLabel = #30721#21495
      FieldName = 'uSize_ID'
      Size = 50
    end
    object adsExplain_Bill_2sSize_name: TStringField
      DisplayLabel = #23610#30721
      FieldName = 'sSize_name'
      LookupKeyFields = 'uSize_ID'
      LookupResultField = 'sSize_Name'
      KeyFields = 'uSize_ID'
      Size = 80
    end
    object adsExplain_Bill_2fUnit_Price: TFloatField
      DisplayLabel = #20419#38144#21333#20215
      FieldName = 'fUnit_Price'
    end
    object adsExplain_Bill_2fAgio: TFloatField
      DisplayLabel = #20419#38144#25240#25187
      FieldName = 'fAgio'
    end
    object adsExplain_Bill_2fZRMoney: TFloatField
      DisplayLabel = #25240#35753#37329#39069
      FieldName = 'fZRMoney'
    end
    object adsExplain_Bill_2ExplainInfo: TStringField
      DisplayLabel = #20419#38144#35828#26126
      FieldName = 'ExplainInfo'
      Size = 100
    end
    object adsExplain_Bill_2BarCode: TStringField
      FieldName = 'BarCode'
      Size = 50
    end
    object adsExplain_Bill_2sStyle_Code: TStringField
      DisplayLabel = #20419#38144#27454#21495
      FieldName = 'sStyle_Code'
      Size = 50
    end
    object adsExplain_Bill_2sColor_code: TStringField
      DisplayLabel = #33394#21495
      FieldName = 'sColor_code'
      LookupKeyFields = 'uColor_ID'
      LookupResultField = 'sColor_Code'
      KeyFields = 'uColor_ID'
      Size = 50
    end
    object adsExplain_Bill_2sSize_Code: TStringField
      DisplayLabel = #30721#21495
      FieldName = 'sSize_Code'
      LookupKeyFields = 'uSize_ID'
      LookupResultField = 'sSize_Code'
      KeyFields = 'uSize_ID'
      Size = 50
    end
    object adsExplain_Bill_2FNumber: TStringField
      DisplayLabel = #20419#38144#21333#21495
      FieldName = 'FNumber'
      Size = 200
    end
    object adsExplain_Bill_2FVipEnabled: TIntegerField
      DisplayLabel = #19982#20250#21592#20851#31995
      FieldName = 'FVipEnabled'
    end
  end
  object dsExplain_Bill_2: TDataSource
    DataSet = adsExplain_Bill_2
    Left = 48
    Top = 320
  end
  object Temp: TADODataSet
    CommandTimeout = 0
    Parameters = <>
    Left = 176
    Top = 256
  end
end
