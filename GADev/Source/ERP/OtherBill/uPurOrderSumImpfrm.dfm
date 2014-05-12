object PurOrderSumImpForm: TPurOrderSumImpForm
  Left = 230
  Top = 138
  Width = 935
  Height = 549
  Caption = #37319#36141#27719#24635#23548#20837
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 919
    Height = 107
    Align = alTop
    Color = 16511980
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 4
      Top = 5
      Caption = #20379#24212#21830
    end
    object cxLabel2: TcxLabel
      Left = 4
      Top = 30
      Caption = #38144#21806#31867#22411
    end
    object cxLabel3: TcxLabel
      Left = 4
      Top = 55
      Caption = #20316#29992#33539#22260
    end
    object cxLabel4: TcxLabel
      Left = 237
      Top = 81
      Caption = #20179'  '#24211
    end
    object cxLabel5: TcxLabel
      Left = 234
      Top = 5
      Caption = #29289'  '#26009
    end
    object cxLabel6: TcxLabel
      Left = 234
      Top = 30
      Caption = #21697'  '#29260
    end
    object cxLabel7: TcxLabel
      Left = 234
      Top = 55
      Caption = #24405#20837#26041#24335
    end
    object cxLabel8: TcxLabel
      Left = 647
      Top = 5
      Caption = #19994#21153#26085#26399
    end
    object cxLabel9: TcxLabel
      Left = 454
      Top = 5
      Caption = #22823'  '#31867
    end
    object cxLabel10: TcxLabel
      Left = 454
      Top = 30
      Caption = #23567'  '#31867
    end
    object cxLabel11: TcxLabel
      Left = 454
      Top = 55
      Caption = #24180'  '#20221
    end
    object cxLabel12: TcxLabel
      Left = 454
      Top = 81
      Caption = #23395'  '#33410
    end
    object cxbtnReSet: TcxButton
      Left = 795
      Top = 73
      Width = 75
      Height = 27
      Caption = #37325#32622
      TabOrder = 12
      OnClick = cxbtnReSetClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
    end
    object cxbtnSearch: TcxButton
      Left = 699
      Top = 73
      Width = 75
      Height = 27
      Caption = #26597#35810
      TabOrder = 13
      OnClick = cxbtnSearchClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
    end
    object cxLabel13: TcxLabel
      Left = 4
      Top = 81
      Caption = #38144#21806#35746#21333#21495
    end
    object cxbtnSupplier: TcxButtonEdit
      Left = 73
      Top = 4
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 15
      Width = 146
    end
    object cxbtnMaterial: TcxButtonEdit
      Left = 289
      Top = 4
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxbtnMaterialPropertiesButtonClick
      TabOrder = 16
      Width = 145
    end
    object cxlookupGenre: TcxLookupComboBox
      Left = 496
      Top = 4
      Properties.KeyFieldNames = 'FID'
      Properties.ListColumns = <
        item
          FieldName = 'Fname_l2'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsGenre
      TabOrder = 17
      Width = 128
    end
    object cxlookupCatoge: TcxLookupComboBox
      Left = 496
      Top = 29
      Properties.KeyFieldNames = 'FID'
      Properties.ListColumns = <
        item
          FieldName = 'Fname_l2'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCatogary
      TabOrder = 18
      Width = 128
    end
    object cxlookupSaleType: TcxLookupComboBox
      Left = 73
      Top = 29
      Properties.KeyFieldNames = 'FNUMBER'
      Properties.ListColumns = <
        item
          FieldName = 'fname_l2'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsSaleType
      TabOrder = 19
      Width = 145
    end
    object cxlookupRange: TcxLookupComboBox
      Left = 73
      Top = 54
      Properties.KeyFieldNames = 'FID'
      Properties.ListColumns = <
        item
          FieldName = 'Fname_l2'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsRange
      TabOrder = 20
      Width = 145
    end
    object cxbtnWarehouse: TcxButtonEdit
      Left = 289
      Top = 79
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxbtnWarehousePropertiesButtonClick
      TabOrder = 21
      Width = 145
    end
    object cxlookupBrand: TcxLookupComboBox
      Left = 289
      Top = 29
      Properties.KeyFieldNames = 'FID'
      Properties.ListColumns = <
        item
          FieldName = 'Fname_l2'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsBrand
      TabOrder = 22
      Width = 145
    end
    object cxlookupInput: TcxLookupComboBox
      Left = 289
      Top = 54
      Enabled = False
      Properties.KeyFieldNames = 'Fnumber'
      Properties.ListColumns = <
        item
          FieldName = 'Fname_l2'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsInputway
      Properties.OnEditValueChanged = cxlookupInputPropertiesEditValueChanged
      TabOrder = 23
      Width = 145
    end
    object cxlookupYear: TcxLookupComboBox
      Left = 496
      Top = 54
      Properties.KeyFieldNames = 'FID'
      Properties.ListColumns = <
        item
          FieldName = 'Fname_l2'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsYear
      TabOrder = 24
      Width = 128
    end
    object cxlookupSeason: TcxLookupComboBox
      Left = 496
      Top = 79
      Properties.KeyFieldNames = 'FID'
      Properties.ListColumns = <
        item
          FieldName = 'Fname_l2'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsSeason
      TabOrder = 25
      Width = 128
    end
    object cxdetSaleOrder: TcxTextEdit
      Left = 73
      Top = 79
      TabOrder = 26
      Width = 145
    end
    object BeginDate: TcxDateEdit
      Left = 702
      Top = 4
      TabOrder = 27
      Width = 81
    end
    object cxLabel14: TcxLabel
      Left = 797
      Top = 6
      AutoSize = False
      Caption = '-'
      Height = 17
      Width = 21
    end
    object EndDate: TcxDateEdit
      Left = 798
      Top = 4
      TabOrder = 29
      Width = 81
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 107
    Width = 919
    Height = 362
    Align = alClient
    Color = 16511980
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 917
      Height = 360
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object cxgridImpList: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxgridImpListFocusedRecordChanged
        DataController.DataSource = dsImplist
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##'
            Kind = skSum
            Column = cxgridImpListTotalFqty
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        object cxgridImpListfSel: TcxGridDBColumn
          Caption = #36873#25321
          DataBinding.FieldName = 'Fismatched'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
        object cxgridImpListmaterialCode: TcxGridDBColumn
          Caption = #29289#26009#32534#21495
          DataBinding.FieldName = 'materialCode'
          Options.Editing = False
          Width = 100
        end
        object cxgridImpListMaterialName: TcxGridDBColumn
          Caption = #29289#26009#21517#31216
          DataBinding.FieldName = 'MaterialName'
          Options.Editing = False
          Width = 100
        end
        object cxgridImpListColorCode: TcxGridDBColumn
          Caption = #33394#21495
          DataBinding.FieldName = 'ColorCode'
          Options.Editing = False
          Width = 60
        end
        object cxgridImpListColorName: TcxGridDBColumn
          Caption = #39068#33394
          DataBinding.FieldName = 'ColorName'
          Options.Editing = False
          Width = 60
        end
        object cxgridImpListCupName: TcxGridDBColumn
          Caption = #20869#38271
          DataBinding.FieldName = 'CupName'
          Options.Editing = False
          Width = 60
        end
        object cxgridImpListCFPACKNAME: TcxGridDBColumn
          Caption = #37197#30721
          DataBinding.FieldName = 'CFPACKNAME'
          Visible = False
          Options.Editing = False
          Width = 60
        end
        object cxgridImpListCFPackNum: TcxGridDBColumn
          Caption = #31665#25968
          DataBinding.FieldName = 'CFPackNum'
          Visible = False
          Options.Editing = False
          Width = 40
        end
        object cxgridImpListfAmount_1: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_1'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_2: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_2'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_3: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_3'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_4: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_4'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_5: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_5'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_6: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_6'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_7: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_7'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_8: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_8'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_9: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_9'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_10: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_10'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_11: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_11'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_12: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_12'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_13: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_13'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_14: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_14'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_15: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_15'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_16: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_16'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_17: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_17'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_18: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_18'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_19: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_19'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_20: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_20'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_21: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_21'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_22: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_22'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_23: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_23'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_24: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_24'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_25: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_25'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_26: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_26'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_27: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_27'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_28: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_28'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_29: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_29'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListfAmount_30: TcxGridDBColumn
          DataBinding.FieldName = 'fAmount_30'
          Visible = False
          Options.Editing = False
          Width = 35
        end
        object cxgridImpListTotalFqty: TcxGridDBColumn
          Caption = #25968#37327#21512#35745
          DataBinding.FieldName = 'TotalFqty'
          Options.Editing = False
          Width = 60
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxgridImpList
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 469
    Width = 919
    Height = 42
    Align = alBottom
    Color = 16511980
    TabOrder = 2
    DesignSize = (
      919
      42)
    object cxbtnSel: TcxButton
      Left = 8
      Top = 2
      Width = 46
      Height = 22
      Caption = #20840#36873
      TabOrder = 0
      OnClick = cxbtnSelClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
    end
    object cxbtnUnSel: TcxButton
      Left = 64
      Top = 2
      Width = 46
      Height = 22
      Caption = #21453#36873
      TabOrder = 1
      OnClick = cxbtnUnSelClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
    end
    object cxbtnImp: TcxButton
      Left = 724
      Top = 8
      Width = 75
      Height = 26
      Anchors = [akTop, akRight]
      Caption = #30830#35748#23548#20837
      TabOrder = 2
      OnClick = cxbtnImpClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
    end
    object cxbtnCancel: TcxButton
      Left = 820
      Top = 8
      Width = 75
      Height = 26
      Anchors = [akTop, akRight]
      Caption = #21462#28040
      TabOrder = 3
      OnClick = cxbtnCancelClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
    end
  end
  object cdsImpList: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsImpListCalcFields
    Left = 160
    Top = 174
    Data = {
      740400009619E0BD01000000180000003200000000000300000074040B466D61
      74657269616C494401004A000000010005574944544802000200580009436663
      6F6C6F72696401004A0000000100055749445448020002005800074366637570
      696401004A00000001000557494454480200020058000C6D6174657269616C43
      6F646501004A000000010005574944544802000200C8000C4D6174657269616C
      4E616D6501004A000000010005574944544802000200C80009436F6C6F72436F
      646501004A000000010005574944544802000200780009436F6C6F724E616D65
      01004A000000010005574944544802000200C800074375704E616D6501004A00
      0000010005574944544802000200A0000D436673697A6567726F757069640100
      4A00000001000557494454480200020058000966416D6F756E745F3108000400
      000000000966416D6F756E745F3208000400000000000966416D6F756E745F33
      08000400000000000966416D6F756E745F3408000400000000000966416D6F75
      6E745F3508000400000000000966416D6F756E745F3608000400000000000966
      416D6F756E745F3708000400000000000966416D6F756E745F38080004000000
      00000966416D6F756E745F3908000400000000000A66416D6F756E745F313008
      000400000000000A66416D6F756E745F313108000400000000000A66416D6F75
      6E745F313208000400000000000A66416D6F756E745F31330800040000000000
      0A66416D6F756E745F313408000400000000000A66416D6F756E745F31350800
      0400000000000A66416D6F756E745F313608000400000000000A66416D6F756E
      745F313708000400000000000A66416D6F756E745F313808000400000000000A
      66416D6F756E745F313908000400000000000A66416D6F756E745F3230080004
      00000000000A66416D6F756E745F323108000400000000000A66416D6F756E74
      5F323208000400000000000A66416D6F756E745F323308000400000000000A66
      416D6F756E745F323408000400000000000A66416D6F756E745F323508000400
      000000000A66416D6F756E745F323608000400000000000A66416D6F756E745F
      323708000400000000000A66416D6F756E745F323808000400000000000A6641
      6D6F756E745F323908000400000000000A66416D6F756E745F33300800040000
      00000009546F74616C4671747908000400000000000D63666174747269627574
      65696401004A00000001000557494454480200020058000943666272616E6469
      6401004A00000001000557494454480200020001001163666469737472696275
      7465707269636508000400000000000C6366756E697479707269636508000400
      000000000A636670757270726963650800040000000000094662617365756E69
      7401004A00000001000557494454480200020058000843465041434B49440100
      4A00000001000557494454480200020058000A43465041434B4E616D6501004A
      00000001000557494454480200020078000943465061636B4E756D0800040000
      0000000A4669736D61746368656408000400000000000000}
    object cdsImpListFmaterialID: TWideStringField
      DisplayWidth = 23
      FieldName = 'FmaterialID'
      Size = 44
    end
    object cdsImpListCfcolorid: TWideStringField
      DisplayWidth = 21
      FieldName = 'Cfcolorid'
      Size = 44
    end
    object cdsImpListCfcupid: TWideStringField
      DisplayWidth = 19
      FieldName = 'Cfcupid'
      Size = 44
    end
    object cdsImpListFnumber: TWideStringField
      DisplayWidth = 23
      FieldName = 'materialCode'
      Size = 100
    end
    object cdsImpListMaterialName: TWideStringField
      DisplayWidth = 13
      FieldName = 'MaterialName'
      Size = 100
    end
    object cdsImpListColorCode: TWideStringField
      DisplayWidth = 3
      FieldName = 'ColorCode'
      Size = 60
    end
    object cdsImpListColorName: TWideStringField
      DisplayWidth = 19
      FieldName = 'ColorName'
      Size = 100
    end
    object cdsImpListCupName: TWideStringField
      DisplayWidth = 96
      FieldName = 'CupName'
      Size = 80
    end
    object cdsImpListCfsizegroupid: TWideStringField
      DisplayWidth = 53
      FieldName = 'Cfsizegroupid'
      Size = 44
    end
    object cdsImpListfAmount_1: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_1'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_2: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_2'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_3: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_3'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_4: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_4'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_5: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_5'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_6: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_6'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_7: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_7'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_8: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_8'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_9: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_9'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_10: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_10'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_11: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_11'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_12: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_12'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_13: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_13'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_14: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_14'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_15: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_15'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_16: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_16'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_17: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_17'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_18: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_18'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_19: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_19'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_20: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_20'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_21: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_21'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_22: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_22'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_23: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_23'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_24: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_24'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_25: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_25'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_26: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_26'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_27: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_27'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_28: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_28'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_29: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_29'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListfAmount_30: TFloatField
      DisplayWidth = 12
      FieldName = 'fAmount_30'
      OnGetText = cdsImpListfAmount_1GetText
    end
    object cdsImpListTotalFqty: TFloatField
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'TotalFqty'
      Calculated = True
    end
    object cdsImpListcfattributeid: TWideStringField
      DisplayWidth = 53
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsImpListCfbrandid: TWideStringField
      DisplayWidth = 9
      FieldName = 'Cfbrandid'
      Size = 0
    end
    object cdsImpListcfdistributeprice: TFloatField
      DisplayWidth = 15
      FieldName = 'cfdistributeprice'
    end
    object cdsImpListcfunityprice: TFloatField
      DisplayWidth = 12
      FieldName = 'cfunityprice'
    end
    object cdsImpListcfpurprice: TFloatField
      DisplayWidth = 12
      FieldName = 'cfpurprice'
    end
    object cdsImpListFbaseunit: TWideStringField
      DisplayWidth = 53
      FieldName = 'Fbaseunit'
      Size = 44
    end
    object cdsImpListCFPACKID: TWideStringField
      DisplayWidth = 53
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsImpListCFPACKName: TWideStringField
      DisplayWidth = 72
      FieldName = 'CFPACKName'
      Size = 60
    end
    object cdsImpListCFPackNum: TFloatField
      DisplayWidth = 12
      FieldName = 'CFPackNum'
    end
    object cdsImpListFismatched: TFloatField
      DisplayWidth = 12
      FieldName = 'Fismatched'
    end
  end
  object dsImplist: TDataSource
    DataSet = cdsImpList
    Left = 216
    Top = 174
  end
  object dsSaleType: TDataSource
    DataSet = CliDM.cdsSaleType
    Left = 121
    Top = 299
  end
  object dsGenre: TDataSource
    DataSet = CliDM.cdsGENRE
    Left = 560
    Top = 280
  end
  object dsCatogary: TDataSource
    DataSet = CliDM.cdsCATEGORY
    Left = 536
    Top = 312
  end
  object dsBrand: TDataSource
    DataSet = CliDM.cdsBrand
    Left = 336
    Top = 312
  end
  object dsRange: TDataSource
    DataSet = CliDM.cdsRange
    Left = 112
    Top = 344
  end
  object dsInputway: TDataSource
    DataSet = CliDM.cdsInputWay
    Left = 328
    Top = 344
  end
  object dsYear: TDataSource
    DataSet = CliDM.cdsYear
    Left = 584
    Top = 352
  end
  object dsSeason: TDataSource
    DataSet = CliDM.cdsSeason
    Left = 536
    Top = 384
  end
end
