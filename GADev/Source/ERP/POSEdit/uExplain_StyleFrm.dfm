inherited FM_Explain_Style: TFM_Explain_Style
  Left = 271
  Top = 193
  Width = 777
  Height = 498
  Caption = #21333#27454#20419#38144
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object pnl_Explain_Style_1: TPanel [0]
    Left = 0
    Top = 0
    Width = 769
    Height = 190
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 0
      Top = 23
      Width = 769
      Height = 167
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cgbList1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsExplain_Style_1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cgbList1IsSel: TcxGridDBColumn
          DataBinding.FieldName = 'IsSel'
          Width = 72
        end
        object cgbList1fUnit_Price: TcxGridDBColumn
          DataBinding.FieldName = 'fUnit_Price'
          Options.Editing = False
          Width = 100
        end
        object cgbList1fAgio: TcxGridDBColumn
          DataBinding.FieldName = 'fAgio'
          Options.Editing = False
          Width = 105
        end
        object cgbList1fZRMoney: TcxGridDBColumn
          Caption = #25240#35753#37329#39069
          DataBinding.FieldName = 'fZRMoney'
          Options.Editing = False
          Width = 82
        end
        object cgbList1ExplainInfo: TcxGridDBColumn
          DataBinding.FieldName = 'ExplainInfo'
          Options.Editing = False
          Width = 357
        end
      end
      object cglList1: TcxGridLevel
        GridView = cgbList1
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 769
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
  object pnl_Explain_Style_2: TPanel [1]
    Left = 0
    Top = 190
    Width = 769
    Height = 231
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 0
      Top = 30
      Width = 769
      Height = 201
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cgbList2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsExplain_Style_2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cgbList2IsSel: TcxGridDBColumn
          Caption = #36873#25321
          DataBinding.FieldName = 'IsSel'
          Width = 46
        end
        object cgbList2uStyle_ID: TcxGridDBColumn
          Caption = #36192#21697#32534#21495
          DataBinding.FieldName = 'sStyle_Code'
          Options.Editing = False
          Width = 73
        end
        object cgbList2sStyle_Name: TcxGridDBColumn
          Caption = #36192#21697#21517#31216
          DataBinding.FieldName = 'sStyle_Name'
          Options.Editing = False
          Width = 77
        end
        object cgbList2uColor_ID: TcxGridDBColumn
          DataBinding.FieldName = 'sColor_Code'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cgbList2uColor_IDPropertiesButtonClick
          Width = 73
        end
        object cgbList2sColor_Name: TcxGridDBColumn
          DataBinding.FieldName = 'sColor_Name'
          Options.Editing = False
          Width = 68
        end
        object cgbList2uSize_ID: TcxGridDBColumn
          Caption = #23610#30721#32534#21495
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
          Caption = #25240#35753#37329#39069
          DataBinding.FieldName = 'fZRMoney'
          Options.Editing = False
        end
        object cgbList2ExplainInfo: TcxGridDBColumn
          DataBinding.FieldName = 'ExplainInfo'
          Options.Editing = False
          Width = 229
        end
      end
      object cglList2: TcxGridLevel
        GridView = cgbList2
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 769
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label2: TLabel
        Left = 6
        Top = 9
        Width = 156
        Height = 12
        Caption = 'F4  '#31526#21512#26465#20214#30340#20419#38144#36192#36865#21830#21697
        Transparent = True
      end
      object lbl_Code: TLabel
        Left = 170
        Top = 9
        Width = 54
        Height = 12
        Caption = 'F5 '#26465#24418#30721
        FocusControl = edt_Code
        Transparent = True
      end
      object edt_Code: TcxTextEdit
        Left = 229
        Top = 6
        TabOrder = 0
        OnKeyPress = edt_CodeKeyPress
        Width = 252
      end
    end
  end
  object pnlbtn: TPanel [2]
    Left = 0
    Top = 421
    Width = 769
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      769
      43)
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 769
      Height = 43
      Align = alClient
    end
    object Label3: TLabel
      Left = 7
      Top = 6
      Width = 450
      Height = 24
      Caption = 
        #20351#29992#25216#24039#65306' F6'#36873#25321#20419#38144#27454#39068#33394#21644#23610#30721#65307#31354#26684#38190#20026#36873#20013#25110#32773#21462#28040#65288#40736#26631#20572#22312#34920#26684#21306#26102#65289#13#10'                     '#25353'F' +
        '2'#40736#26631#36339#21040#30830#23450#25353#38062#65307'F3 F4'#21040#34920#26684';  ESC'#36864#20986
      Transparent = True
    end
    object btn_OK: TcxButton
      Left = 557
      Top = 12
      Width = 64
      Height = 26
      Anchors = [akRight, akBottom]
      Caption = #30830#23450' F2'
      TabOrder = 0
      OnClick = btn_OKClick
      OnKeyDown = btn_OKKeyDown
      LookAndFeel.Kind = lfOffice11
    end
    object btn_Cancel: TcxButton
      Left = 630
      Top = 12
      Width = 65
      Height = 26
      Anchors = [akRight, akBottom]
      Caption = #21462#28040' ESC'
      TabOrder = 1
      OnClick = btn_CancelClick
      OnKeyDown = btn_CancelKeyDown
      LookAndFeel.Kind = lfOffice11
    end
  end
  object adsExplain_Style_1: TADODataSet
    Connection = CliDM.conClient
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'sp_Get_Explain_Style_1;1'
    CommandTimeout = 0
    CommandType = cmdStoredProc
    EnableBCD = False
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@uStorage_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@uStyle_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@uColor_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@uSize_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@fUnit_Price'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 10
        Precision = 28
        Value = Null
      end
      item
        Name = '@fAmount'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 10
        Precision = 28
        Value = Null
      end
      item
        Name = '@fSum_Price'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 10
        Precision = 28
        Value = Null
      end>
    Left = 32
    Top = 40
    object adsExplain_Style_1IsSel: TBooleanField
      DisplayLabel = #36873#20013
      FieldName = 'IsSel'
    end
    object adsExplain_Style_1fUnit_Price: TFloatField
      DisplayLabel = #20419#38144#21333#20215
      FieldName = 'fUnit_Price'
    end
    object adsExplain_Style_1fAgio: TFloatField
      DisplayLabel = #20419#38144#25240#25187
      FieldName = 'fAgio'
    end
    object adsExplain_Style_1ExplainInfo: TStringField
      DisplayLabel = #20419#38144#35828#26126
      FieldName = 'ExplainInfo'
      Size = 100
    end
    object adsExplain_Style_1fZRMoney: TFloatField
      FieldName = 'fZRMoney'
    end
    object adsExplain_Style_1FNumber: TStringField
      DisplayLabel = #20419#38144#21333#21495
      FieldName = 'FNumber'
      Size = 200
    end
    object adsExplain_Style_1FVipEnabled: TIntegerField
      DisplayLabel = #20419#38144#26041#26696#19982#20250#21592#20851#31995
      FieldName = 'FVipEnabled'
    end
  end
  object dsExplain_Style_1: TDataSource
    DataSet = adsExplain_Style_1
    Left = 32
    Top = 88
  end
  object adsExplain_Style_2: TADODataSet
    Connection = CliDM.conClient
    LockType = ltBatchOptimistic
    OnCalcFields = adsExplain_Style_2CalcFields
    CommandText = 'sp_Get_Explain_Style_2'
    CommandTimeout = 0
    CommandType = cmdStoredProc
    EnableBCD = False
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@SellGroupID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@uStorage_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@uStyle_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@uColor_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@uSize_ID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@fUnit_Price'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 10
        Precision = 28
        Value = Null
      end
      item
        Name = '@fAmount'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 10
        Precision = 28
        Value = Null
      end
      item
        Name = '@fSum_Price'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 10
        Precision = 28
        Value = Null
      end>
    Left = 48
    Top = 256
    object adsExplain_Style_2IsSel: TBooleanField
      DisplayLabel = #36873#20013
      FieldName = 'IsSel'
    end
    object adsExplain_Style_2uStyle_ID: TStringField
      DisplayLabel = #20419#38144#27454#21495
      FieldName = 'uStyle_ID'
      Size = 50
    end
    object adsExplain_Style_2sStyle_Name: TStringField
      DisplayLabel = #20419#38144#27454#21517
      FieldName = 'sStyle_Name'
      LookupKeyFields = 'uStyle_ID'
      LookupResultField = 'sStyle_Name'
      KeyFields = 'uStyle_ID'
      Size = 200
    end
    object adsExplain_Style_2sColor_Code: TStringField
      DisplayLabel = #33394#21495
      FieldName = 'sColor_Code'
      Size = 50
    end
    object adsExplain_Style_2uColor_ID: TStringField
      DisplayLabel = #33394#21495
      FieldName = 'uColor_ID'
      Size = 50
    end
    object adsExplain_Style_2sColor_Name: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'sColor_Name'
      Size = 80
    end
    object adsExplain_Style_2uSize_ID: TStringField
      DisplayLabel = #30721#21495
      FieldName = 'uSize_ID'
      Size = 50
    end
    object adsExplain_Style_2sSize_Code: TStringField
      DisplayLabel = #30721#21495
      FieldName = 'sSize_Code'
      Size = 50
    end
    object adsExplain_Style_2sSize_name: TStringField
      DisplayLabel = #23610#30721
      FieldName = 'sSize_name'
      Size = 80
    end
    object adsExplain_Style_2fUnit_Price: TFloatField
      DisplayLabel = #20419#38144#21333#20215
      FieldName = 'fUnit_Price'
    end
    object adsExplain_Style_2fAgio: TFloatField
      DisplayLabel = #20419#38144#25240#25187
      FieldName = 'fAgio'
    end
    object adsExplain_Style_2ExplainInfo: TStringField
      DisplayLabel = #20419#38144#35828#26126
      FieldName = 'ExplainInfo'
      Size = 100
    end
    object adsExplain_Style_2BarCode: TStringField
      FieldName = 'BarCode'
      Size = 50
    end
    object adsExplain_Style_2sStyle_Code: TStringField
      FieldName = 'sStyle_Code'
      Size = 50
    end
    object adsExplain_Style_2sStyle_Code_A: TStringField
      FieldName = 'sStyle_Code_A'
      Size = 50
    end
    object adsExplain_Style_2uStyle_ID_A: TStringField
      FieldName = 'uStyle_ID_A'
      Size = 50
    end
    object adsExplain_Style_2fZRMoney: TFloatField
      FieldName = 'fZRMoney'
    end
    object adsExplain_Style_2FNumber: TStringField
      DisplayLabel = #20419#38144#21333#21495
      FieldName = 'FNumber'
      Size = 200
    end
    object adsExplain_Style_2FVipEnabled: TIntegerField
      DisplayLabel = #20419#38144#26041#26696#19982#20250#21592#20851#31995
      FieldName = 'FVipEnabled'
    end
  end
  object dsExplain_Style_2: TDataSource
    DataSet = adsExplain_Style_2
    Left = 48
    Top = 320
  end
  object Temp: TADODataSet
    CommandTimeout = 0
    Parameters = <>
    Left = 256
    Top = 256
  end
  object ADOQuery1: TADOQuery
    Connection = CliDM.conClient
    Parameters = <>
    SQL.Strings = (
      
        'exec sp_Get_Explain_Style_1 '#39#39','#39'NxVPAUC+Q1C/rLYTgXc1Ervp+K4='#39','#39'L' +
        'xwDTGBhQIKerMAdHL8IoEQJ5/A='#39','#39'/h7X24JeTRq9KQuxrpgz/gvG9C4='#39','#39'8sw' +
        'QEREfR0CnvRC2Xl6ONwvG9C4='#39',1000,2,1000')
    Left = 240
    Top = 120
  end
end
