inherited CreateInterCode: TCreateInterCode
  Left = 236
  Top = 179
  Caption = #29983#25104#22269#26631#30721
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 0
      Align = alClient
      Caption = #26597#35810#26465#20214
      TabOrder = 0
      Height = 66
      Width = 912
      object Label6: TLabel
        Left = 233
        Top = 19
        Width = 31
        Height = 12
        AutoSize = False
        Caption = #27454#21495
        Transparent = True
      end
      object Label1: TLabel
        Left = 26
        Top = 19
        Width = 35
        Height = 12
        AutoSize = False
        Caption = #21697#29260
        Transparent = True
      end
      object Label2: TLabel
        Left = 233
        Top = 43
        Width = 31
        Height = 12
        AutoSize = False
        Caption = #24180#20221
        Transparent = True
      end
      object Label3: TLabel
        Left = 26
        Top = 44
        Width = 31
        Height = 12
        AutoSize = False
        Caption = #23395#33410
        Transparent = True
      end
      object lb_MaterialName: TLabel
        Left = 424
        Top = 21
        Width = 257
        Height = 14
        AutoSize = False
      end
      object txt_Material: TcxButtonEdit
        Left = 273
        Top = 16
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = False
        Properties.OnButtonClick = txt_MaterialPropertiesButtonClick
        TabOrder = 1
        OnKeyPress = txt_MaterialKeyPress
        Width = 145
      end
      object txt_Brand: TcxButtonEdit
        Left = 71
        Top = 16
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = False
        Properties.OnButtonClick = txt_BrandPropertiesButtonClick
        TabOrder = 0
        OnKeyPress = txt_BrandKeyPress
        Width = 145
      end
      object txt_years: TcxButtonEdit
        Left = 273
        Top = 40
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = False
        Properties.OnButtonClick = txt_yearsPropertiesButtonClick
        TabOrder = 4
        OnKeyPress = txt_yearsKeyPress
        Width = 145
      end
      object txt_Ser: TcxButtonEdit
        Left = 71
        Top = 40
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = False
        Properties.OnButtonClick = txt_SerPropertiesButtonClick
        TabOrder = 3
        OnKeyPress = txt_SerKeyPress
        Width = 145
      end
      object btn_Query: TcxButton
        Left = 637
        Top = 36
        Width = 75
        Height = 25
        Caption = #26597#25214'(&F)'
        TabOrder = 2
        OnClick = btn_QueryClick
        LookAndFeel.Kind = lfOffice11
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 66
      Width = 912
      Height = 31
      Align = alBottom
      Color = 16511980
      TabOrder = 1
      object Label4: TLabel
        Left = 6
        Top = 9
        Width = 68
        Height = 12
        AutoSize = False
        Caption = #22269#26631#30721#21069#32512
        Transparent = True
      end
      object txt_IntentTitle: TcxButtonEdit
        Left = 71
        Top = 6
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = False
        Properties.OnButtonClick = txt_IntentTitlePropertiesButtonClick
        TabOrder = 0
        OnKeyPress = txt_IntentTitleKeyPress
        Width = 145
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 912
    Height = 345
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 1
    object cxPage: TcxPageControl
      Left = 0
      Top = 0
      Width = 912
      Height = 304
      ActivePage = cxTabSheet1
      Align = alClient
      Style = 10
      TabOrder = 0
      OnChange = cxPageChange
      ClientRectBottom = 304
      ClientRectRight = 912
      ClientRectTop = 18
      object cxTabSheet1: TcxTabSheet
        Caption = #26410#29983#25104#21015#34920
        ImageIndex = 0
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 912
          Height = 286
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Green'
          object cxgridMaterList: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsNotExistsList
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'selected'
                Column = cxgridMaterListColumn1
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
            object cxgridMaterListFID: TcxGridDBColumn
              DataBinding.FieldName = 'FID'
              Visible = False
            end
            object cxgridMaterListColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'selected'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 56
            end
            object cxgridMaterListFNUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'FNUMBER'
              Options.Editing = False
              Width = 100
            end
            object cxgridMaterListFNAME_L2: TcxGridDBColumn
              DataBinding.FieldName = 'FNAME_L2'
              Options.Editing = False
              Width = 190
            end
            object cxgridMaterListCOLORFID: TcxGridDBColumn
              DataBinding.FieldName = 'COLORFID'
              Visible = False
              Options.Editing = False
            end
            object cxgridMaterListCOLORNUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'COLORNUMBER'
              Options.Editing = False
              Width = 100
            end
            object cxgridMaterListCOLORNAME: TcxGridDBColumn
              DataBinding.FieldName = 'COLORNAME'
              Options.Editing = False
              Width = 100
            end
            object cxgridMaterListSIZESFID: TcxGridDBColumn
              DataBinding.FieldName = 'SIZESFID'
              Visible = False
              Options.Editing = False
            end
            object cxgridMaterListSIZESNUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'SIZESNUMBER'
              Options.Editing = False
              Width = 100
            end
            object cxgridMaterListSIZESNAME: TcxGridDBColumn
              DataBinding.FieldName = 'SIZESNAME'
              Options.Editing = False
              Width = 100
            end
            object cxgridMaterListCUPFID: TcxGridDBColumn
              DataBinding.FieldName = 'CUPFID'
              Visible = False
              Options.Editing = False
            end
            object cxgridMaterListCUPNUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'CUPNUMBER'
              Options.Editing = False
              Width = 68
            end
            object cxgridMaterListCUPNAME: TcxGridDBColumn
              DataBinding.FieldName = 'CUPNAME'
              Options.Editing = False
              Width = 70
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxgridMaterList
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #24050#29983#25104#21015#34920
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 912
          Height = 286
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Green'
          object TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
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
          end
          object cxGridExists: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsExistsList
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'FSTATE'
                Column = cxGridExistsFSTATE
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
            object cxGridExistsFSTATE: TcxGridDBColumn
              Caption = #36873#25321
              DataBinding.FieldName = 'FSTATE'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 50
            end
            object cxGridExistsFID: TcxGridDBColumn
              DataBinding.FieldName = 'FID'
              Visible = False
            end
            object cxGridExistsFNUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'FNUMBER'
              Options.Editing = False
              Width = 100
            end
            object cxGridExistsFNAME_L2: TcxGridDBColumn
              DataBinding.FieldName = 'FNAME_L2'
              Options.Editing = False
              Width = 100
            end
            object cxGridExistsCOLORNUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'COLORNUMBER'
              Options.Editing = False
              Width = 70
            end
            object cxGridExistsCOLORNAME: TcxGridDBColumn
              DataBinding.FieldName = 'COLORNAME'
              Options.Editing = False
              Width = 79
            end
            object cxGridExistsSIZENUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'SIZENUMBER'
              Options.Editing = False
              Width = 84
            end
            object cxGridExistsSIZENAME: TcxGridDBColumn
              DataBinding.FieldName = 'SIZENAME'
              Options.Editing = False
              Width = 69
            end
            object cxGridExistsCUPNUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'CUPNUMBER'
              Options.Editing = False
              Width = 62
            end
            object cxGridExistsCUPNAME: TcxGridDBColumn
              DataBinding.FieldName = 'CUPNAME'
              Options.Editing = False
              Width = 65
            end
            object cxGridExistsCFBARCODE: TcxGridDBColumn
              DataBinding.FieldName = 'CFBARCODE'
              Options.Editing = False
              Width = 100
            end
            object cxGridExistsCFINTERNATIONALCODE: TcxGridDBColumn
              DataBinding.FieldName = 'CFINTERNATIONALCODE'
              Options.Editing = False
              Width = 100
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridExists
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 304
      Width = 912
      Height = 41
      Align = alBottom
      Color = 16511980
      TabOrder = 1
      DesignSize = (
        912
        41)
      object btn_CreateClear: TcxButton
        Left = 806
        Top = 8
        Width = 77
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #29983#25104#22269#26631#30721
        TabOrder = 3
        OnClick = btn_CreateClearClick
        LookAndFeel.Kind = lfOffice11
      end
      object cxButton1: TcxButton
        Left = 54
        Top = 8
        Width = 41
        Height = 25
        Caption = #21453#36873
        TabOrder = 1
        OnClick = chk_uSelectClick
        LookAndFeel.Kind = lfOffice11
      end
      object cxButton2: TcxButton
        Left = 7
        Top = 8
        Width = 41
        Height = 25
        Caption = #20840#36873
        TabOrder = 0
        OnClick = chk_AllClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_Export: TcxButton
        Left = 724
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #23548#20986'(&E)'
        TabOrder = 2
        OnClick = btn_ExportClick
        LookAndFeel.Kind = lfOffice11
      end
    end
  end
  object cdsExistsList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 203
    object cdsExistsListFSTATE: TIntegerField
      FieldName = 'FSTATE'
    end
    object cdsExistsListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsExistsListFNUMBER: TWideStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsExistsListFNAME_L2: TWideStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'FNAME_L2'
      Size = 510
    end
    object cdsExistsListCOLORNUMBER: TWideStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'COLORNUMBER'
      Size = 80
    end
    object cdsExistsListCOLORNAME: TWideStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'COLORNAME'
      Size = 510
    end
    object cdsExistsListSIZENUMBER: TWideStringField
      DisplayLabel = #23610#30721#32534#21495
      FieldName = 'SIZENUMBER'
      Size = 80
    end
    object cdsExistsListSIZENAME: TWideStringField
      DisplayLabel = #23610#30721#21517#31216
      FieldName = 'SIZENAME'
      Size = 510
    end
    object cdsExistsListCUPNUMBER: TWideStringField
      DisplayLabel = #20869#38271#32534#21495
      FieldName = 'CUPNUMBER'
      Size = 80
    end
    object cdsExistsListCUPNAME: TWideStringField
      DisplayLabel = #20869#38271#21517#31216
      FieldName = 'CUPNAME'
      Size = 510
    end
    object cdsExistsListCFBARCODE: TWideStringField
      DisplayLabel = #26465#24418#30721
      FieldName = 'CFBARCODE'
      Size = 200
    end
    object cdsExistsListCFINTERNATIONALCODE: TWideStringField
      DisplayLabel = #22269#26631#30721
      FieldName = 'CFINTERNATIONALCODE'
      Size = 200
    end
  end
  object dsExistsList: TDataSource
    DataSet = cdsExistsList
    Left = 224
    Top = 203
  end
  object cdsCodeTable: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsCodeTableNewRecord
    Left = 352
    Top = 195
    object cdsCodeTableFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsCodeTableFSIMPLENAME: TWideStringField
      FieldName = 'FSIMPLENAME'
      Size = 160
    end
    object cdsCodeTableFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsCodeTableFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsCodeTableFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsCodeTableFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsCodeTableFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsCodeTableFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsCodeTableCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsCodeTableCFSIZEID: TWideStringField
      FieldName = 'CFSIZEID'
      Size = 44
    end
    object cdsCodeTableCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsCodeTableCFBARCODE: TWideStringField
      FieldName = 'CFBARCODE'
      Size = 200
    end
    object cdsCodeTableCFINTERNATIONALCODE: TWideStringField
      FieldName = 'CFINTERNATIONALCODE'
      Size = 200
    end
    object cdsCodeTableCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
      Size = 44
    end
    object cdsCodeTableFNAME_L1: TWideStringField
      FieldName = 'FNAME_L1'
      Size = 510
    end
    object cdsCodeTableFNAME_L2: TWideStringField
      FieldName = 'FNAME_L2'
      Size = 510
    end
    object cdsCodeTableFNAME_L3: TWideStringField
      FieldName = 'FNAME_L3'
      Size = 510
    end
    object cdsCodeTableFDESCRIPTION_L1: TWideStringField
      FieldName = 'FDESCRIPTION_L1'
      Size = 510
    end
    object cdsCodeTableFDESCRIPTION_L2: TWideStringField
      FieldName = 'FDESCRIPTION_L2'
      Size = 510
    end
    object cdsCodeTableFDESCRIPTION_L3: TWideStringField
      FieldName = 'FDESCRIPTION_L3'
      Size = 510
    end
    object cdsCodeTableFSTATE: TIntegerField
      FieldName = 'FSTATE'
    end
  end
  object cdsNotExistsList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 315
    object cdsNotExistsListselected: TIntegerField
      DisplayLabel = #36873#25321
      FieldName = 'selected'
    end
    object cdsNotExistsListFID: TWideStringField
      FieldName = 'FID'
      Visible = False
      Size = 44
    end
    object cdsNotExistsListFNUMBER: TWideStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsNotExistsListFNAME_L2: TWideStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'FNAME_L2'
      Size = 510
    end
    object cdsNotExistsListCOLORFID: TWideStringField
      FieldName = 'COLORFID'
      Visible = False
      Size = 44
    end
    object cdsNotExistsListCOLORNUMBER: TWideStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'COLORNUMBER'
      Size = 80
    end
    object cdsNotExistsListCOLORNAME: TWideStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'COLORNAME'
      Size = 510
    end
    object cdsNotExistsListSIZESFID: TWideStringField
      FieldName = 'SIZESFID'
      Visible = False
      Size = 44
    end
    object cdsNotExistsListSIZESNUMBER: TWideStringField
      DisplayLabel = #23610#30721#32534#21495
      FieldName = 'SIZESNUMBER'
      Size = 80
    end
    object cdsNotExistsListSIZESNAME: TWideStringField
      DisplayLabel = #23610#30721#21517#31216
      FieldName = 'SIZESNAME'
      Size = 510
    end
    object cdsNotExistsListCUPFID: TWideStringField
      FieldName = 'CUPFID'
      Visible = False
      Size = 44
    end
    object cdsNotExistsListCUPNUMBER: TWideStringField
      DisplayLabel = #20869#38271#32534#21495
      FieldName = 'CUPNUMBER'
      Size = 80
    end
    object cdsNotExistsListCUPNAME: TWideStringField
      DisplayLabel = #20869#38271#21517#31216
      FieldName = 'CUPNAME'
      Size = 510
    end
  end
  object dsNotExistsList: TDataSource
    DataSet = cdsNotExistsList
    Left = 112
    Top = 315
  end
  object cdsIntentTitle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 307
  end
  object SaveDg: TSaveDialog
    Filter = 'EXCEL(*.XLS)|*.XLS'
    Left = 555
    Top = 306
  end
end
