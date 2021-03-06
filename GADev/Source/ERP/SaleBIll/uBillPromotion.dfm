inherited FM_BillPromotionEdit: TFM_BillPromotionEdit
  Left = 196
  Top = 174
  Width = 1087
  Height = 609
  Caption = #20419#38144#32534#36753
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object pnlTop: TPanel [0]
    Left = 0
    Top = 53
    Width = 1071
    Height = 109
    Align = alTop
    Color = 16511980
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 2
      Top = 5
      Caption = #21333#25454#32534#21495
    end
    object cxLabel2: TcxLabel
      Left = 2
      Top = 65
      Caption = #20419#38144#31867#22411
    end
    object cxLabel3: TcxLabel
      Left = 255
      Top = 5
      Caption = #20419#38144#21517#31216
    end
    object cxLabel4: TcxLabel
      Left = 513
      Top = 5
      Caption = #19994#21153#26085#26399
    end
    object cxLabel5: TcxLabel
      Left = 255
      Top = 65
      Caption = #20419#38144#26041#24335
    end
    object cxLabel7: TcxLabel
      Left = 2
      Top = 35
      Caption = #24320#22987#26085#26399
    end
    object cxLabel8: TcxLabel
      Left = 513
      Top = 65
      Caption = #20250#21592#22788#29702#20851#31995
    end
    object cxLabel9: TcxLabel
      Left = 2
      Top = 91
      Caption = #22791'  '#27880
    end
    object cxLabel10: TcxLabel
      Left = 255
      Top = 35
      Caption = #32467#26463#26085#26399
    end
    object cxLabel11: TcxLabel
      Left = 811
      Top = 5
      Caption = #29366'  '#24577
    end
    object cxLabel13: TcxLabel
      Left = 513
      Top = 35
      Caption = #24320#22987#26102#38388
    end
    object cxLabel16: TcxLabel
      Left = 811
      Top = 35
      Caption = #32467#26463#26102#38388
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 58
      Top = 5
      DataBinding.DataField = 'FNUMBER'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 12
      Width = 167
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 591
      Top = 5
      DataBinding.DataField = 'FBIZDATE'
      DataBinding.DataSource = dsMaster
      Properties.ShowTime = False
      TabOrder = 13
      Width = 178
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 58
      Top = 33
      DataBinding.DataField = 'FBEGTIME'
      DataBinding.DataSource = dsMaster
      Properties.ShowTime = False
      TabOrder = 14
      Width = 167
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 313
      Top = 33
      DataBinding.DataField = 'FENDTIME'
      DataBinding.DataSource = dsMaster
      Properties.ShowTime = False
      TabOrder = 15
      Width = 161
    end
    object cxChkBoxStart: TcxDBCheckBox
      Left = 811
      Top = 64
      Caption = #21551#29992#20419#38144#39033#30446
      DataBinding.DataField = 'FISSTARTPROJECT'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnChange = cxChkBoxStartPropertiesChange
      TabOrder = 16
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 313
      Top = 5
      DataBinding.DataField = 'FNAME'
      DataBinding.DataSource = dsMaster
      TabOrder = 17
      Width = 161
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 58
      Top = 87
      DataBinding.DataField = 'FDESCRIPTION'
      DataBinding.DataSource = dsMaster
      TabOrder = 18
      Width = 416
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 868
      Top = 5
      DataBinding.DataField = 'FBASESTATUS'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 19
      Width = 121
    end
    object cmbLookupKind: TcxDBLookupComboBox
      Left = 313
      Top = 61
      DataBinding.DataField = 'FCX_KIND'
      DataBinding.DataSource = dsMaster
      Properties.KeyFieldNames = 'Fnumber'
      Properties.ListColumns = <
        item
          FieldName = 'Fname'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsTmpKind
      Properties.OnEditValueChanged = cmbLookupKindPropertiesEditValueChanged
      TabOrder = 20
      Width = 161
    end
    object CmblookupType: TcxDBLookupComboBox
      Left = 58
      Top = 61
      DataBinding.DataField = 'FCX_TYPE'
      DataBinding.DataSource = dsMaster
      Properties.KeyFieldNames = 'Fnumber'
      Properties.ListColumns = <
        item
          FieldName = 'Fname'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsTmpType
      Properties.OnCloseUp = CmblookupTypePropertiesCloseUp
      Properties.OnEditValueChanged = CmblookupTypePropertiesEditValueChanged
      TabOrder = 21
      Width = 167
    end
    object cmblookupVIP: TcxDBLookupComboBox
      Left = 591
      Top = 61
      DataBinding.DataField = 'FVipEnabled'
      DataBinding.DataSource = dsMaster
      Properties.KeyFieldNames = 'Fnumber'
      Properties.ListColumns = <
        item
          FieldName = 'Fname'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsTmpVIP
      TabOrder = 22
      Width = 178
    end
    object cxDBMaskEdit1: TcxDBMaskEdit
      Left = 591
      Top = 33
      DataBinding.DataField = 'FBEG_TIMEOFDAY'
      DataBinding.DataSource = dsMaster
      Properties.EditMask = '##:##'
      Properties.MaxLength = 0
      TabOrder = 23
      Width = 178
    end
    object cxDBMaskEdit2: TcxDBMaskEdit
      Left = 868
      Top = 33
      DataBinding.DataField = 'FEND_TIMEOFDAY'
      DataBinding.DataSource = dsMaster
      Properties.EditMask = '##:##'
      Properties.MaxLength = 0
      TabOrder = 24
      Width = 121
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 162
    Width = 1071
    Height = 382
    Align = alClient
    Color = 16511980
    TabOrder = 1
    object cxPageCtrlDetail: TcxPageControl
      Left = 1
      Top = 25
      Width = 1069
      Height = 356
      ActivePage = cxtabPromItem
      Align = alClient
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      Style = 10
      TabOrder = 0
      OnChange = cxPageCtrlDetailChange
      ClientRectBottom = 356
      ClientRectRight = 1069
      ClientRectTop = 18
      object cxTabOrg: TcxTabSheet
        Caption = #36873#25321#24215#38138
        ImageIndex = 0
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 1077
          Height = 342
          Align = alClient
          Color = 16511980
          TabOrder = 0
          object cxGrid2: TcxGrid
            Left = 1
            Top = 1
            Width = 1075
            Height = 340
            Align = alClient
            BevelOuter = bvRaised
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Black'
            object cxGridSelectedList: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnEditing = cxGridSelectedListEditing
              DataController.DataSource = dsWareDetail
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.DataRowHeight = 22
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              object cxGridSelectedListFSeq: TcxGridDBColumn
                DataBinding.FieldName = 'FSEQ'
                Options.Editing = False
                Options.FilteringFilteredItemsList = False
                Width = 59
              end
              object cxGridSelectedListFSHOPNUM: TcxGridDBColumn
                DataBinding.FieldName = 'FSHOPNUM'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Width = 153
              end
              object cxGridSelectedListFSHOPNAME: TcxGridDBColumn
                DataBinding.FieldName = 'FSHOPNAME'
                Options.Editing = False
                Options.FilteringFilteredItemsList = False
                Width = 223
              end
              object cxGridSelectedListFREMARK: TcxGridDBColumn
                DataBinding.FieldName = 'FREMARK'
                Width = 277
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGridSelectedList
            end
          end
        end
      end
      object cxtabpromDetail: TcxTabSheet
        Caption = #20419#38144#26126#32454
        ImageIndex = 1
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1077
          Height = 342
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Black'
          object cxGridDetail: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnEditing = cxGridDetailEditing
            DataController.DataSource = dsDetail
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object cxGridDetailCFSMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'CFSMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDetailCFSMaterialNumberPropertiesButtonClick
              Width = 100
            end
            object cxGridDetailCFSMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSMaterialName'
              Options.Editing = False
              Width = 100
            end
            object cxGridDetailCFSColorCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFSColorCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDetailCFSColorCodePropertiesButtonClick
              Width = 60
            end
            object cxGridDetailCFSColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSColorName'
              Options.Editing = False
              Width = 80
            end
            object cxGridDetailFS_BEGNUMER: TcxGridDBColumn
              DataBinding.FieldName = 'FS_BEGNUMER'
              Width = 80
            end
            object cxGridDetailFS_ENDNUMER: TcxGridDBColumn
              DataBinding.FieldName = 'FS_ENDNUMER'
              Width = 80
            end
            object cxGridDetailFS_BEGMONEY: TcxGridDBColumn
              DataBinding.FieldName = 'FS_BEGMONEY'
              Width = 80
            end
            object cxGridDetailFS_ENDMONEY: TcxGridDBColumn
              DataBinding.FieldName = 'FS_ENDMONEY'
              Width = 80
            end
            object cxGridDetailCFDMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'CFDMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDetailCFDMaterialNumberPropertiesButtonClick
              Width = 100
            end
            object cxGridDetailCFDMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'CFDMaterialName'
              Options.Editing = False
              Width = 100
            end
            object cxGridDetailFD_UNITPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FD_UNITPRICE'
            end
            object cxGridDetailFD_MONEY: TcxGridDBColumn
              DataBinding.FieldName = 'FD_MONEY'
            end
            object cxGridDetailFD_AGIO: TcxGridDBColumn
              DataBinding.FieldName = 'FD_AGIO'
            end
            object cxGridDetailFPROMTKIND: TcxGridDBColumn
              DataBinding.FieldName = 'FPROMTKIND'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Fnumber'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsTmpKind
              Width = 69
            end
            object cxGridDetailFPROMTVALUE: TcxGridDBColumn
              DataBinding.FieldName = 'FPROMTVALUE'
              Width = 81
            end
            object cxGridDetailFCX_REMARK: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'FCX_REMARK'
              Width = 120
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDetail
          end
        end
      end
      object cxtabPresent: TcxTabSheet
        Caption = #36192#21697#26126#32454
        ImageIndex = 2
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 1077
          Height = 342
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Black'
          object cxGridPresent: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnEditing = cxGridPresentEditing
            DataController.DataSource = dsPresent
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object cxGridPresentFSEQ: TcxGridDBColumn
              Caption = #24207#21495
              DataBinding.FieldName = 'FSEQ'
              Width = 50
            end
            object cxGridPresentCFMaterialNumber: TcxGridDBColumn
              Caption = #20419#38144#27454#21495
              DataBinding.FieldName = 'CFMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridPresentCFMaterialNumberPropertiesButtonClick
              Width = 100
            end
            object cxGridPresentCFMaterialName: TcxGridDBColumn
              Caption = #20419#38144#27454#21517
              DataBinding.FieldName = 'CFMaterialName'
              Options.Editing = False
              Width = 100
            end
            object cxGridPresentCFColorCode: TcxGridDBColumn
              Caption = #33394#21495
              DataBinding.FieldName = 'CFColorCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridPresentCFColorCodePropertiesButtonClick
              Width = 60
            end
            object cxGridPresentCFColorName: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'CFColorName'
              Options.Editing = False
              Width = 60
            end
            object cxGridPresentCFSizeName: TcxGridDBColumn
              Caption = #23610#30721
              DataBinding.FieldName = 'CFSizeName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = cxGridPresentCFSizeNamePropertiesButtonClick
              Width = 60
            end
            object cxGridPresentFPROMTKIND: TcxGridDBColumn
              Caption = #20419#38144#26041#24335
              DataBinding.FieldName = 'FPROMTKIND'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Fnumber'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsTmpKind
              Width = 68
            end
            object cxGridPresentFPROMTVALUE: TcxGridDBColumn
              Caption = #20419#38144#26041#24335#20540
              DataBinding.FieldName = 'FPROMTVALUE'
              Width = 104
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridPresent
          end
        end
      end
      object cxtabPromItem: TcxTabSheet
        Caption = #20419#38144#39033#30446
        ImageIndex = 3
        object cxGrid5: TcxGrid
          Left = 0
          Top = 0
          Width = 1069
          Height = 338
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Black'
          object cxGridItem: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnEditing = cxGridItemEditing
            DataController.DataSource = dsPromProJect
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object cxGridItemFSEQ: TcxGridDBColumn
              Caption = #24207#21495
              DataBinding.FieldName = 'FSEQ'
              Width = 50
            end
            object cxGridItemCFYearName: TcxGridDBColumn
              Caption = #24180#20221
              DataBinding.FieldName = 'FYEARSID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'FID'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname_l2'
                end>
              Properties.ListSource = dsYear
              Width = 60
            end
            object cxGridItemCFSeasonName: TcxGridDBColumn
              Caption = #23395#33410
              DataBinding.FieldName = 'FSEASONID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'FID'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname_l2'
                end>
              Properties.ListSource = dsSeason
              Width = 60
            end
            object cxGridItemCFSexName: TcxGridDBColumn
              Caption = #24615#21035
              DataBinding.FieldName = 'FSEXID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'FID'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname_l2'
                end>
              Properties.ListSource = dsSex
              Width = 60
            end
            object cxGridItemCFPositionName: TcxGridDBColumn
              Caption = #20135#21697#20301#32622
              DataBinding.FieldName = 'FPOSTIONID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'FID'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname_l2'
                end>
              Properties.ListSource = dsPosition
              Width = 60
            end
            object cxGridItemCFCategoryName: TcxGridDBColumn
              Caption = #20135#21697#31867#22411
              DataBinding.FieldName = 'FCATEGORYID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'FID'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname_l2'
                end>
              Properties.ListSource = dsCATEGORY
              Width = 60
            end
            object cxGridItemCFGenreName: TcxGridDBColumn
              Caption = #31867#21035
              DataBinding.FieldName = 'FGENREID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'FID'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname_l2'
                end>
              Properties.ListSource = dsGENRE
              Width = 60
            end
            object cxGridItemFPROMTKIND: TcxGridDBColumn
              Caption = #20419#38144#26041#24335
              DataBinding.FieldName = 'FPROMTKIND'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Fnumber'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname'
                end>
              Properties.ListSource = dsTmpKind
              Width = 60
            end
            object cxGridItemFPROMTVALUE: TcxGridDBColumn
              Caption = #20419#38144#26041#24335#20540
              DataBinding.FieldName = 'FPROMTVALUE'
              Width = 96
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridItem
          end
        end
      end
      object cxTabPromtInfo: TcxTabSheet
        Caption = #20419#38144#20449#24687
        ImageIndex = 5
        object cxGrid7: TcxGrid
          Left = 0
          Top = 0
          Width = 1077
          Height = 342
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Black'
          object cxGridPromInfo: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnEditing = cxGridPromInfoEditing
            DataController.DataSource = dsComPromt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object cxGridPromInfoFSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'FSEQ'
            end
            object cxGridPromInfoCFMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'CFMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridPromInfoCFMaterialNumberPropertiesButtonClick
              Width = 100
            end
            object cxGridPromInfoCFMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'CFMaterialName'
              Options.Editing = False
              Width = 100
            end
            object cxGridPromInfoFDAGIO: TcxGridDBColumn
              DataBinding.FieldName = 'FDAGIO'
            end
            object cxGridPromInfoFDMONEY: TcxGridDBColumn
              DataBinding.FieldName = 'FDMONEY'
            end
            object cxGridPromInfoFDUNITPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FDUNITPRICE'
            end
            object cxGridPromInfoFCREMARK: TcxGridDBColumn
              DataBinding.FieldName = 'FCREMARK'
              Width = 187
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridPromInfo
          end
        end
      end
      object cxTabNotPromItem: TcxTabSheet
        Caption = #19981#21442#19982#21830#21697
        ImageIndex = 5
        object cxGrid6: TcxGrid
          Left = 0
          Top = 0
          Width = 1077
          Height = 342
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Black'
          object cxGridNotItem: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnEditing = cxGridNotItemEditing
            DataController.DataSource = dsNotMat
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object cxGridNotItemFSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'FSEQ'
              Width = 50
            end
            object cxGridNotItemCFMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'CFMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridNotItemCFMaterialNumberPropertiesButtonClick
              Width = 100
            end
            object cxGridNotItemCFMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'CFMaterialName'
              Options.Editing = False
              Width = 100
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridNotItem
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1069
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 1
      object cxChkStarProm: TcxDBCheckBox
        Left = 10
        Top = 1
        Caption = #21551#29992#20419#38144#26085
        DataBinding.DataField = 'FIsEnable'
        DataBinding.DataSource = dsMaster
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Properties.OnEditValueChanged = cxChkStarPromPropertiesEditValueChanged
        TabOrder = 0
        Width = 97
      end
      object cxChkMonday: TcxDBCheckBox
        Left = 144
        Top = 1
        AutoSize = False
        Caption = #26143#26399#19968
        DataBinding.DataField = 'FDayOfWeek1'
        DataBinding.DataSource = dsMaster
        Enabled = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 1
        Height = 21
        Width = 80
      end
      object CxChkTuesDay: TcxDBCheckBox
        Left = 244
        Top = 1
        AutoSize = False
        Caption = #26143#26399#20108
        DataBinding.DataField = 'FDayOfWeek2'
        DataBinding.DataSource = dsMaster
        Enabled = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 2
        Height = 21
        Width = 80
      end
      object cxChkWednesDay: TcxDBCheckBox
        Left = 344
        Top = 1
        AutoSize = False
        Caption = #26143#26399#19977
        DataBinding.DataField = 'FDayOfWeek3'
        DataBinding.DataSource = dsMaster
        Enabled = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 3
        Height = 21
        Width = 80
      end
      object cxChkThursDay: TcxDBCheckBox
        Left = 444
        Top = 1
        AutoSize = False
        Caption = #26143#26399#22235
        DataBinding.DataField = 'FDayOfWeek4'
        DataBinding.DataSource = dsMaster
        Enabled = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 4
        Height = 21
        Width = 80
      end
      object cxChkFriDay: TcxDBCheckBox
        Left = 544
        Top = 1
        AutoSize = False
        Caption = #26143#26399#20116
        DataBinding.DataField = 'FDayOfWeek5'
        DataBinding.DataSource = dsMaster
        Enabled = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 5
        Height = 21
        Width = 80
      end
      object cxChkSaturDay: TcxDBCheckBox
        Left = 644
        Top = 1
        AutoSize = False
        Caption = #26143#26399#20845
        DataBinding.DataField = 'FDayOfWeek6'
        DataBinding.DataSource = dsMaster
        Enabled = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 6
        Height = 21
        Width = 80
      end
      object cxChkSunDay: TcxDBCheckBox
        Left = 744
        Top = 1
        AutoSize = False
        Caption = #26143#26399#22825
        DataBinding.DataField = 'FDayOfWeek7'
        DataBinding.DataSource = dsMaster
        Enabled = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 7
        Height = 21
        Width = 80
      end
    end
    object cxbtnImpStorage: TcxButton
      Left = 832
      Top = 17
      Width = 64
      Height = 24
      Caption = #23548#20837#25968#25454
      TabOrder = 2
      OnClick = cxbtnImpStorageClick
      LookAndFeel.Kind = lfOffice11
      SpeedButtonOptions.Flat = True
    end
    object cxBtnAppend: TcxButton
      Left = 912
      Top = 17
      Width = 64
      Height = 24
      Caption = #26032#22686
      TabOrder = 3
      OnClick = cxBtnAppendClick
      LookAndFeel.Kind = lfOffice11
      SpeedButtonOptions.Flat = True
    end
    object cxbtnDel: TcxButton
      Left = 992
      Top = 17
      Width = 64
      Height = 24
      Caption = #21024#38500
      TabOrder = 4
      OnClick = cxbtnDelClick
      LookAndFeel.Kind = lfOffice11
      SpeedButtonOptions.Flat = True
    end
    object selectGrid: TDBGrid
      Left = 337
      Top = 97
      Width = 489
      Height = 249
      Color = clGradientActiveCaption
      Ctl3D = False
      DataSource = dsSelect
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Visible = False
      OnDrawColumnCell = selectGridDrawColumnCell
      OnDblClick = selectGridDblClick
      OnEnter = selectGridEnter
      OnExit = selectGridExit
      OnKeyDown = selectGridKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'FID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Fnumber'
          Title.Caption = #32534#21495
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FName'
          Title.Caption = #21517#31216
          Width = 281
          Visible = True
        end>
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 544
    Width = 1071
    Height = 27
    Align = alBottom
    Color = 16511980
    TabOrder = 6
    DesignSize = (
      1071
      27)
    object Label1: TLabel
      Left = 1
      Top = 9
      Width = 52
      Height = 13
      Anchors = [akLeft]
      AutoSize = False
      Caption = #24320#21333#20154
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 153
      Top = 9
      Width = 65
      Height = 13
      Anchors = [akLeft]
      AutoSize = False
      Caption = #24320#21333#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 333
      Top = 9
      Width = 52
      Height = 13
      Anchors = [akLeft]
      AutoSize = False
      Caption = #23457#26680#20154
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 489
      Top = 9
      Width = 65
      Height = 13
      Anchors = [akLeft]
      AutoSize = False
      Caption = #23457#26680#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 674
      Top = 9
      Width = 52
      Height = 13
      Anchors = [akLeft]
      AutoSize = False
      Caption = #20462#25913#20154
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 827
      Top = 9
      Width = 65
      Height = 13
      Anchors = [akLeft]
      AutoSize = False
      Caption = #20462#25913#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cxFCreatorName: TcxDBMaskEdit
      Left = 50
      Top = 4
      Anchors = [akLeft]
      AutoSize = False
      DataBinding.DataField = 'FCreatorName'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 0
      Height = 20
      Width = 100
    end
    object cxFCreatorDate: TcxDBMaskEdit
      Left = 216
      Top = 4
      Anchors = [akLeft]
      AutoSize = False
      DataBinding.DataField = 'FCREATETIME'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 1
      Height = 20
      Width = 107
    end
    object cxFAUDITORName: TcxDBMaskEdit
      Left = 377
      Top = 4
      Anchors = [akLeft]
      AutoSize = False
      DataBinding.DataField = 'FAuditorName'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 2
      Height = 20
      Width = 100
    end
    object cxFAUDITORdate: TcxDBMaskEdit
      Left = 556
      Top = 4
      Anchors = [akLeft]
      AutoSize = False
      DataBinding.DataField = 'FAUDITTIME'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 3
      Height = 20
      Width = 107
    end
    object cxFmodifieridName: TcxDBMaskEdit
      Left = 720
      Top = 4
      Anchors = [akLeft]
      AutoSize = False
      DataBinding.DataField = 'CFModifierName'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 4
      Height = 20
      Width = 100
    end
    object Fmodificationtime: TcxDBMaskEdit
      Left = 894
      Top = 4
      Anchors = [akLeft]
      AutoSize = False
      DataBinding.DataField = 'FLASTUPDATETIME'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 5
      Height = 20
      Width = 107
    end
  end
  inherited pm_ExportExcel: TPopupMenu
    Left = 816
    Top = 112
  end
  inherited i3_ExportexcelDg: TSaveDialog
    Left = 731
    Top = 162
  end
  object ImageListMainForm: TImageList
    Left = 1024
    Top = 64
    Bitmap = {
      494C01013C004000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000001000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039AD39001094100000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001094100039AD390000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039AD3900218C180000AD000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000AD0000218C180039AD3900000000000000
      0000000000000000000000000000000000000000000000000000B5848400FFEF
      D600D6DEAD00DEDEAD00F7DEB500EFD6A500EFD69C00F7CE9C00F7CE9400F7CE
      9C00F7CE9C00F7D69C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039AD390018841800219C1800009C000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009C0000219C18001884180039AD39000000
      0000000000000000000000000000000000000000000000000000B5848400FFEF
      DE00ADCE940042AD39008CBD6B0031A5290031A529007BB55200D6C68C00EFCE
      9400EFCE9400F7D69C00B5848400000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039AD3900088C100008840000088C0000009C000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009C0000088C000008840000088C100039AD
      3900000000000000000000000000000000000000000000000000B5847300FFF7
      E700CEDEAD0021A51800009C0000009C0000009C0000009C000042AD2900E7CE
      9400EFCE9400F7D69C00B5848400000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000039AD
      3900107B100063AD630021942100008C0000088C080000B5000000B5080018C6
      180042DE420052E752006BDE6B0000AD000000AD00006BDE6B0052E7520042DE
      420018C6180000B5080000B50000088C0800008C00002194210063AD6300107B
      100039AD39000000000000000000000000000000000000000000B5847300FFF7
      EF00CEDEB50021A51800009C000029A52100BDCE8C008CBD6B00089C080094BD
      6300EFCE9C00F7D69C00B5848400000000000000000000000000848484000000
      0000000000000000000000008400000084000000840000008400000000000000
      000000000000000000000000000000000000000000000000000039AD3900187B
      180063AD6300218C180000840000008C0800008C000000A5000000B5000000BD
      000008C6000018D6180063E76300009C0800009C080063E7630018D6180008C6
      000000BD000000B5000000A50000008C0000008C080000840000218C180063AD
      6300187B180039AD390000000000000000000000000000000000BD8C8400FFFF
      F700CEDEBD0010A51000009C0000089C08009CC67B00F7DEBD00BDC68C0084BD
      6B00F7D6A500F7D69C00B5848400000000000000000000000000848484000000
      0000000000000000840000000000000000000000000000000000000084000000
      0000000000000000000000000000000000000000000039AD3900187B180063AD
      6300187B2100007B000000840000008C0800009C000000AD000000B5000000BD
      000000C6000000CE000063E76300109408001094080063E7630000CE000000C6
      000000BD000000B5000000AD0000009C0000008C080000840000007B0000187B
      210063AD6300187B180039AD3900000000000000000000000000BD8C84000000
      0000EFEFDE00B5DEA500ADD69C00ADCE9400ADCE9400F7DEC600F7DEBD00B5D6
      9400F7D6AD00F7D6A500B5848400000000000000000000000000848484000000
      0000000084000000000000000000000000000000000000000000000000000000
      84000000000000000000000000000000000039AD3900187B210063AD6300298C
      3100007B00000084000000840000008C08000094000000AD000000B5000000BD
      000008C6000000CE000063E76B0000A5000000A5000063E76B0000CE000008C6
      000000BD000000B5000000AD000000940000008C08000084000000840000007B
      0000298C310063AD6300187B210039AD39000000000000000000CE9C84000000
      0000BDE7B500FFF7EF00F7EFDE00B5D69C00ADCE9400ADCE8C00B5CE8C00EFDE
      B500F7DEB500F7DEAD00B5848400000000000000000000000000848484000000
      0000000084000000840000008400000084000000840000008400000084000000
      84000000000000000000000000000000000039AD39001873290063AD6300398C
      310000730000007B000000840000008C08000094080000AD000000B5000000BD
      000008C6000000CE00006BE76B00089C0000089C00006BE76B0000CE000008C6
      000000BD000000B5000000AD000000940800008C080000840000007B00000073
      0000398C310063AD63001873290039AD39000000000000000000CE9C84000000
      00008CD68C00C6E7BD00FFF7EF009CCE8C00089C0800009C000010A51000F7DE
      C600F7DEBD00FFDEB500B5848400000000000000000000000000848484000000
      0000000084000000000000000000000000000000000000000000000000000000
      8400000000000000000000000000000000000000000039AD3900187B210063AD
      630029841800087B080000840000009400000094000000A5000000B5000000BD
      000008C6000000CE000063E76300009C0000009C000063E7630000CE000008C6
      000000BD000000B5000000A50000009400000094000000840000087B08002984
      180063AD6300187B210039AD3900000000000000000000000000DEAD84000000
      00009CD69C00089C080094D68C00C6DEB50031AD2900009C000021A51800F7E7
      CE00F7E7C600F7DEB500B5848400000000000000000000000000848484000000
      0000000000000000840000000000000000000000000000000000000084000000
      000000000000000000000000000000000000000000000000000039AD3900107B
      180063AD6300108C180000840000008C00000894000000AD080000B5000000BD
      000008C6000018D618006BEF630000940800009408006BEF630018D6180008C6
      000000BD000000B5000000AD080008940000008C000000840000108C180063AD
      6300107B180039AD390000000000000000000000000000000000DEAD84000000
      0000F7FFF70042B54200009C0000009C0000009C0000009C000021A51800FFEF
      DE00E7DEC600C6BDAD00B5848400000000000000000000000000848484000000
      0000000000000000000000008400000084000000840000008400000000000000
      00000000000000000000000000000000000000000000000000000000000039AD
      3900107B100063AD630018942100009400000094000000AD000000B5080018C6
      180042DE42005AE75A007BDE7B0000AD000000AD00007BDE7B005AE75A0042DE
      420018C6180000B5080000AD000000940000009400001894210063AD6300107B
      100039AD39000000000000000000000000000000000000000000E7B58C000000
      000000000000E7F7E70084CE840039B5390039AD31008CCE840042AD3900AD84
      7300BD847B00BD847B00B5848400000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039AD3900088C100008840000008C0000009C000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009C0000008C000008840000088C100039AD
      3900000000000000000000000000000000000000000000000000E7B58C000000
      0000000000000000000000000000EFF7EF00E7F7E70000000000BDC6AD00A58C
      6B00EFB57300EFA54A00C6846B00000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039AD3900188C1800189418001094080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001094080018941800188C180039AD39000000
      0000000000000000000000000000000000000000000000000000EFBD94000000
      0000000000000000000000000000000000000000000000000000E7D6D600BD84
      7B00FFC67300CE94730000000000000000000000000000000000000000008484
      8400848484000000000000000000C6C6C600C6C6C600C6C6C600000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000039AD390018941800009C000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009C00001894180039AD3900000000000000
      0000000000000000000000000000000000000000000000000000EFBD9400FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00BD84
      7B00CE9C84000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039AD39002194210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002194210039AD390000000000000000000000
      0000000000000000000000000000000000000000000000000000EFBD9400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C31630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD848400BD848400BD84
      8400BD848400BD848400BD848400BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C316300CE9C9C009C316300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD848400F7DEB500F7D6
      AD00F7D6A500F7CE9C00F7CE8C00BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C316300CE9C9C00CE9C9C00CE9C9C009C3163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3163009C3163009C3163009C3163009C3163009C3163009C31
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C8400FFE7CE008C94
      DE001842F7008C8CCE00F7D69C00BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400FFEFDE00184A
      FF000031FF00184AF700F7DEAD00BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C316300CE9C9C00CE9C9C00CE9C9C009C316300CE9C9C00CE9C9C00CE9C
      9C009C31630000000000000000000000000000000000000000009C3163009C31
      63009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      63009C3163009C3163009C316300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEAD8400FFF7EF008C9C
      EF00184AFF008C94E700F7E7BD00BD8484000000000000000000000000000000
      000000000000FF94290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C31
      6300CE9C9C00CE9C9C00CE9C9C009C316300CE9C9C009C316300CE9C9C00CE9C
      9C00CE9C9C009C316300000000000000000000000000000000009C316300CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C009C316300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7B58C00FFFFF700FFF7
      EF00FFF7E700FFEFDE00FFEFCE00BD8484000000000000000000000000000000
      0000FF942900FF94290000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C316300CE9C
      9C00CE9C9C00CE9C9C009C316300CE9C9C00CE9C9C00CE9C9C009C316300CE9C
      9C00CE9C9C00CE9C9C009C316300000000000000000000000000000000009C31
      6300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C009C31630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400000000000000
      0000FFFFF700BD848400BD848400BD847300000000000000000000000000FF94
      2900FFCE2900FF942900FF942900FF942900FF942900FF942900FF942900FF94
      2900FF94290000000000000000000000000000000000000000009C3163009C31
      63009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      63009C3163009C3163009C316300000000000000000000000000000000000000
      00009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C009C316300000000000000000000000000B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B584840000000000EFBD9400000000000000
      000000000000BD848400D6946B00000000000000000000000000FF632900FFFF
      9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF
      9400FF9429000000000000000000000000000000000000000000000000000000
      00009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C009C31630000000000000000000000000000000000000000009C3163009C31
      63009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      63009C3163009C3163009C31630000000000B5848400EFD6B500E7BD9400E7B5
      8C00DEB58400DEAD7300EFC68400B584840000000000EFBD9400DEAD8400DEAD
      8400428C3900BD8484000000000000000000000000000000000000000000FF63
      2900FFFF9400FFFF940000000000FF632900FF632900FF632900FF632900FF63
      2900FF6329000000000000000000000000000000000000000000000000009C31
      6300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C009C316300000000000000000000000000000000009C316300CE9C
      9C00CE9C9C00CE9C9C009C316300CE9C9C00CE9C9C00CE9C9C009C316300CE9C
      9C00CE9C9C00CE9C9C009C31630000000000B5848400CE8C6B00942900009C31
      00009C3100009C310000E7B57B00B58484000000000000000000000000000073
      080042D6730031AD4A0000000000000000000000000000000000000000000000
      0000FF632900FFFF940000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C316300CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C009C316300000000000000000000000000000000009C31
      6300CE9C9C00CE9C9C00CE9C9C009C316300CE9C9C009C316300CE9C9C00CE9C
      9C00CE9C9C009C3163000000000000000000BD8C8400FFEFE700A54210009429
      000094290000BD734A00FFE7B500B58484000000000000000000007B08004ACE
      73005AE78C0039C65A00108C2100000000000000000000000000000000000000
      000000000000FF63290000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3163009C31
      63009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      63009C3163009C3163009C316300000000000000000000000000000000000000
      00009C316300CE9C9C00CE9C9C00CE9C9C009C316300CE9C9C00CE9C9C00CE9C
      9C009C316300000000000000000000000000CE9C840000000000D6AD94009421
      0000A5421000EFCEAD00FFEFC600B584840000000000428429001094210029AD
      4A0039CE630021AD3900189C2900087B10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      630000000000000000000000000000000000DEAD840000000000FFF7F700AD5A
      3100CE947300FFF7DE00DECEB500B58484000000000000000000000000000073
      080021BD4200088C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3163009C3163009C3163009C3163009C3163009C3163009C31
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C316300CE9C9C00CE9C9C00CE9C9C009C3163000000
      000000000000000000000000000000000000E7B58C000000000000000000EFDE
      D600FFF7EF00B5848400B5848400B5847300000000000000000000000000087B
      100010AD21000884100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C316300CE9C9C009C316300000000000000
      000000000000000000000000000000000000EFBD940000000000000000000000
      000000000000B5848400DE9C6300000000000000000000000000088C10000894
      100008A51800007B080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C31630000000000000000000000
      000000000000000000000000000000000000EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400B58484000000000000000000008408000084080000941000089C
      1800008408000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003163000031
      6300003163000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B000000FF000031
      940000007B000031630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063630000FFFF0000CEFF0000FF
      FF0000CEFF000094CE0000CEFF000094CE000094CE000031CE0063CEFF000063
      FF00003194000031630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063630094FFFF0094FFFF0000CE
      FF0094FFFF0000CEFF000094CE0000CEFF000094CE000031CE0063CEFF000063
      FF000031940000316300000000000000000000000000FF632900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF632900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063630094FFFF0000CEFF0094FF
      FF0000CEFF0094FFFF0000CEFF000094CE0000CEFF000031CE0063CEFF000063
      FF000031940000316300000000000000000000000000FF632900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF632900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063630094FFFF00FFFFFF0000CE
      FF0094FFFF0000CEFF0094FFFF0000CEFF000094CE000031CE0063CEFF000063
      FF000031940000316300000000000000000000000000FF632900000000000000
      000000000000FF94290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF6329000000
      00000000000000000000FF632900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF6329000000
      0000000000000000000000000000000000000063630094FFFF0000CEFF00FFFF
      FF0000CEFF0094FFFF0000CEFF0094FFFF0000CEFF000031CE0063CEFF000063
      FF000031940000316300000000000000000000000000FF632900000000000000
      0000FF942900FF94290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF942900FF63
      29000000000000000000FF632900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF942900FF63
      2900000000000000000000000000000000000063630094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0000FFFF000031CE0094FFFF000063
      FF000031940000316300000000000000000000000000FF63290000000000FF94
      2900FFCE2900FF942900FF942900FF942900FF942900FF942900FF942900FF94
      2900FF9429000000000000000000000000000000000000000000FF632900FF94
      2900FF942900FF942900FF942900FF942900FF942900FF942900FF942900FFCE
      2900FF63290000000000FF632900000000000000000000000000FF632900FF94
      2900FF942900FF942900FF942900FF942900FF942900FF942900FF942900FFCE
      2900FF6329000000000000000000000000000063630000636300006363000063
      630000636300006363000063630000636300006363000031CE0094FFFF0063CE
      FF000031940000007B00000000000000000000000000FF632900FF632900FFFF
      9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF
      9400FF9429000000000000000000000000000000000000000000FF632900FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      9400FFCE290000000000FF632900000000000000000000000000FF632900FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      9400FFCE29000000000000000000000000000000000000636300EFFFFF0094FF
      FF0094FFFF000094CE00000000000000000000000000007B7B006363CE006363
      CE000031940000000000000000000000000000000000FF63290000000000FF63
      2900FFFF9400FFFF940000000000FF632900FF632900FF632900FF632900FF63
      2900FF6329000000000000000000000000000000000000000000FF632900FF63
      2900FF632900FF632900FF632900FF632900FF632900FF632900FFFFCE00FFCE
      29000000000000000000FF632900000000000000000000000000FF632900FF63
      2900FF632900FF632900FF632900FF632900FF632900FF632900FFFFCE00FFCE
      2900000000000000000000000000000000000000000000000000006363000063
      630000636300000000000000000000000000000000000000000039423900EFCE
      A5000000000000000000000000000000000000000000FF632900000000000000
      0000FF632900FFFF940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900FFCE29000000
      00000000000000000000FF632900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900FFCE29000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000073737300394239000000000039423900EFCE
      A5000000000000000000000000000000000000000000FF632900000000000000
      000000000000FF63290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900000000000000
      00000000000000000000FF632900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300FFEFCE00394239003942390084848400EFCE
      A5009431290000000000943129000000000000000000FF632900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900000000000000
      00000000000000000000FF632900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300FFFFFF00BDBDBD00BDBDBD00BDBDBD00FFFF
      FF00BDBDBD00BDBDBD00EFCEA500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300FFFFFF00EFCEA50000000000FFFFFF00FFFF
      FF00FFEFCE00FFEFCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000737373007373730000000000737373007373
      7300737373007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A5008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042182100EFEFEF00F7F7F700B5BDBD00C6C6C600B5B5B500FFFFFF00C6C6
      C600421821006B6B6B0000000000000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      520042182100EFEFEF00F7F7F700CEC6C600D6CECE00C6C6C600FFFFFF00C6C6
      CE00421821005252520000000000000000000000000000000000000000000000
      000000000000848484007B6352007B6352007B6352007B635200848484000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B004A4A4A004A4A
      4A004A4A4A00DEE7E700CED6D600848C8C008C8C8C00B5B5B500EFEFEF00C6CE
      CE004A4A4A004A4A4A00421821006B6B63000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000FF00000000000000FF00
      000000000000FF00000000000000FF00000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00000000000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630000000000000000007B7B7B004A4A4A005A5252005252
      52004A4A4A009C9C9C00ADADAD00ADB5B500B5B5B500B5B5B500A5A5A5009494
      9C004A4A4A0052525A004A525200421821000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CECECE00CECE
      CE00CECECE00FFFFFF00CECECE00000000000000000063636300CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE0063636300000000000000000052525200847B8400949C9C008C9C
      9C008C9C9400949C9C00949494008C8C8C007B847B0084948C008C949400949C
      9C008C849C00B5B5B5008CFF7B00421821000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FF00
      0000FFFFFF00FF00000000000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE0000000000000000006363630000636300CECE
      CE00CECECE00CECECE00006363000063630000636300CECECE00CECECE00CECE
      CE0000636300636363000000000000000000525252009C9C9C00BDBDBD00ADAD
      AD00948C8C00846B7300846B6B0084636B00845A6B007B636B008C6B6B008C63
      7300A57BA5008C4A5A00B5B5B500421821000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FF0000000000
      0000CECECE0000000000FF000000CECECE00FFFFFF0000000000CECECE00CECE
      CE00CECECE00FFFFFF00CECECE0000000000000000006363630000FFFF000063
      6300CECECE000063630000000000000000000000000000636300CECECE000063
      6300CECECE0063636300000000000000000063636300ADADAD00D6DEDE008C6B
      73009C6B7300A57B7B00BD8C8C00C68C9400BD8C9400BD8C9400C68C8C00A573
      7B00A56B7B008C4A5A00BDD6BD00525252000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FF00
      000000000000FF00000000000000FF000000FFFFFF00FF000000CECECE00FFFF
      FF00CECECE00FFFFFF00CECECE00000000000000000063636300FFFFFF00FFFF
      FF000063630000000000FFFFFF00FFFFFF0000FFFF000000000000636300CECE
      CE00CECECE006363630000000000000000008C8C8C00B5B5B500CECECE007B4A
      5200844A52004A4A4A0042182100421821004218210042182100421821004A4A
      4A00844A52008C4A5A00C6C6CE00525252000000000000000000000000000000
      000000000000000000005A5252005A5252005A5252005A525200000000000000
      00000000000000000000000000005A525200FF000000FFFFFF00FF000000FFFF
      FF00FF00000000000000FFFFFF0000000000CECECE0000000000CECECE00FFFF
      FF00CECECE00FFFFFF00CECECE0000000000000000006363630000FFFF00CECE
      CE0000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00000000000063
      6300CECECE006363630000000000000000008C8C8C00B5B5B500CECECE004218
      21004A4A4A00A5A5A500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00A5A5
      A500393939004A212100CECECE0063636300000000005A5252005A5252000000
      0000000000005A525200848484008484840084848400848484005A5252000000
      000000000000000000005A5252005A52520000000000FF00000000000000FFFF
      FF0000000000FF000000FFFFFF00FF00000000000000FF000000FFFFFF00FFFF
      FF00CECECE00FFFFFF00CECECE00000000000000000063636300CECECE000000
      000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      00000063630063636300000000000000000000000000A5A5A500ADB5B5009C94
      940084737300BDBDBD00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7
      F7007B636B009C8C8C00ADB5B50000000000527B840084848400848484005A52
      52005A52520084848400C6C6C600C6C6C600C6C6C600848484005A5252005A52
      52005A5252005A525200C6C6C6005A525200FF00000000000000FF0000000000
      0000FF00000000000000FF00000000000000FF00000000000000CECECE00CECE
      CE00CECECE00FFFFFF00CECECE0000000000000000006363630000000000FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000006363630000000000000000000000000000000000000000000000
      000000000000BDBDBD00FFFFFF00FFFFFF00F7F7F700A5A5A500A5A5A500A5A5
      A5000000000000000000000000000000000063636300FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      840084848400C6C6C6005A5252000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000063636300FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00F7FFFF00FFFFFF00F7F7F700A5A5A500DEDEDE00A5A5
      A50000000000000000000000000000000000527B8400FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600848484000000000000000000FF00000000000000FF0000000000
      0000FF00000000000000FF00000000000000FF00000000000000FFFFFF00FFFF
      FF009C9C9C00FFFFFF0000000000000000000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630000000000000000000000000000000000000000000000
      000000000000BDBDBD00F7F7F700F7F7F700F7F7F700A5A5A500A5A5A5000000
      00000000000000000000000000000000000063636300FFFFFF00FFFFFF008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400848484000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00A5A5A500A5A5A500A5A5A500A5A5A500000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD5A5A00AD5A5A00E7C6C600E7C6C600E7C6C600C6CE
      C600C6CEC600C6CEC600AD5A5A00943131000000000000000000000000000000
      000000000000000000000000000021A5CE0029ADCE001084AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000029ADD60021ADD6000000000000000000000000000000
      000000000000000000000000000000000000B58C8C008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A00BD7B7300C65A5A00E7C6C6009C393900B5737300C6CE
      C600F7F7F700F7F7F700C65A5A009431310000000000000000000000000029A5
      CE0021A5CE000884AD00109CC60021ADD60031B5D600188CB5001084AD0042AD
      CE0039ADCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000636B6B009494940094949400000000000000000000000000000000000000
      0000000000000000000029ADD60084EFFF004AC6E7004AC6E70031B5DE0021AD
      D60000000000000000000000000000000000B58C8C00FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500BD7B7300C65A5A00C6948C009C3939009C4A4A00E7C6
      C600C6C6C600F7F7F700C65A5A009431310000000000000000000000000031A5
      CE0031BDDE0010ADDE0010A5CE0018C6F7004AD6FF0031A5CE005AC6DE0063C6
      DE0039A5C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      520094949400FFFFFF00EFEFEF00A5A5A5000000000000000000000000000000
      0000000000000000000029ADD600ADFFFF008CF7FF008CF7FF008CF7FF0063DE
      F70031B5DE0031B5DE000000000000000000B58C8C00FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500BD7B7300C65A5A00C6948C00C6948C00BDA5A500BDA5
      A500E7C6C600C6CEC600C65A5A009431310000000000218CB500299CBD004AB5
      D60084DEEF0052C6DE0039CEEF0018D6FF0039DEFF005AD6F70073C6DE00B5E7
      EF0094CEE700188CB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010001010
      10007B7B7B00E7E7E700A5A5A500000000000000000000000000000000000000
      0000000000000000000029ADD600ADEFF70094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF0031B5DE000000000000000000B58C8C00F7DEC600F7DEC600F7DE
      C600F7DEC600F7DEC600BD7B7300AD524A00B55A5A00C65A5A00C65A5A00C65A
      5A00C65A5A00C65A5A00C65A5A00943131000000000063BDD6004AB5D60052BD
      E70094EFFF008CEFFF005AE7FF0021DEFF0018DEFF0052E7FF007BEFFF007BEF
      FF0039CEEF0031B5DE0029A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010101000101010004242
      42007B7B7B008C8C8C0000000000000000000000000000000000000000000000
      0000A5947B00AD847B0029ADD60029ADD600A5EFF700A5EFF700A5F7FF008CEF
      FF008CEFFF00005A000031B5DE0000000000B58C8C00F7DEC600F7DEC600F7DE
      C6008484840000000000BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000001094C60021A5D6004AC6
      EF0084DEF70094EFFF0073D6EF005ABDCE0052B5CE0029C6EF0000D6FF0000CE
      FF0008D6FF0008CEF70008B5E700000000000000000000000000000000000000
      00000010E700D6D6D60000000000000000001010100010101000424A52008484
      84006B6B6B00000000000000000000000000000000000000000000000000A57B
      6300BD633900C663420029ADD60084EFFF0029ADD60029ADD60029ADD600ADEF
      F700005A000042E77300005A000031B5DE00B58C8C00F7EFDE00F7EFDE008484
      840084000000FF000000BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7
      F700FFFFF700FFF7F700C65A5A009431310000000000188CBD0029ADDE0039BD
      E7006BD6F70094C6D6009494940094949400949494009494940042BDDE0000D6
      FF0010D6FF0018D6FF00089CCE00000000000000000000000000000000000000
      00003139BD00ADCEE700000000001010100010101000424A5200848484006B6B
      6B00000000000000000000000000000000000000000000000000BD734A00C65A
      1800A54218008C52210029ADD60094F7FF0094F7FF008CF7FF006BDEF700005A
      000031CE5A0029C6520018B53100005A0000B58C8C00F7EFDE00F7EFDE008484
      0000FF00000084840000BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7
      F700FFFFF700FFF7F700C65A5A0094313100000000001894BD0021ADDE0031B5
      E7005ACEF70094949400EFE7E700B5B5B500ADA5A500E7B5B500949494005ADE
      FF009CF7FF00B5EFFF00399CBD00000000000000000000000000000000000000
      00003139BD005A73E70021080000101010004242420084848400737373000000
      00000000000000000000000000000000000000000000BD734A00BD521000A539
      0000AD4200003163000029ADD60094FFFF0094F7FF008CEFFF008CEFFF0094EF
      FF000873100018B531000884100000000000B58C8C00FFF7EF00FFF7EF008484
      0000C6C6C600C6C6C600BD7B7300AD524A00FFF7F700FFF7F700FFFFF700FFFF
      F700FFFFF700FFF7F700C65A5A009431310000000000108CBD00189CCE0021AD
      DE0042C6EF0094949400EFE7E700B5B5B500ADA5A500DEB5B500949494007BE7
      FF00ADEFFF008CCEE7004AA5C6000000000000000000000000000010E7007B94
      C60018A5FF001052BD000008A5003139BD008C847B006B6B6300000000000000
      000000000000000000000000000000000000B58473009C524200AD420000CE5A
      0000BD6B0000007B000021ADD6009CF7FF009CF7FF006BDEF7006BDEF70029AD
      D60000630800089C1800006B080000000000B58C8C00FFF7EF00FFF7EF008484
      0000C6C6C60084840000BD7B7300AD524A00D6D6D600CEB5B500CEB5B500CEB5
      B500CEB5B500D6D6D600AD524A009431310000000000000000000884AD0021A5
      D60031BDEF0094949400EFE7E700B5B5B500ADA5A500DEB5B5009494940063E7
      FF006BCEE700007BA500000000000000000000000000000000005A73E700089C
      FF0042E7F70042E7F7002973F700394A9400635A4A0000000000000000000000
      000000000000000000000000000000000000B58473009C524200CE5A0000D67B
      0000848C000039940000C68400001894CE001894CE001894CE00B58C0000B58C
      0000005A0000008C08000000000000000000B58C8C00FFF7EF00FFF7EF00C6C6
      C6008484000084848400FF0000000084000084840000C6C6C600FFF7EF00BDAD
      AD00A57B7300000000000000000000000000000000000000000000000000108C
      B500088CBD0094949400EFE7E700B5B5B500ADA5A500E7BDB50094949400189C
      C6002194BD0000000000000000000000000042A5DE002973F700089CFF0042E7
      F700CEF7FF008CF7FF004ABDFF002973F7002973F70094A5EF00ADCEE7000000
      000000000000000000000000000000000000B58473009C524200C673000029A5
      180031AD2100D6AD1800FF9C0800E78C0000E78C0000B58C0000C6840800005A
      0000008C0800005A00000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600848400008484000084840000C6C6C600FFFFFF00FFFFFF00BDAD
      AD00B58473000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700ADADAD00ADA5A500DEB5B500949494000000
      000000000000000000000000000000000000ADCEE7002973F700299CEF0042E7
      F700CEF7FF008CF7FF004ABDFF00299CEF002973F7007B94C600ADB5CE000000
      000000000000000000000000000000000000B5847300BD734A007B94080010C6
      4A0031CE63007BCE6B00FFCE5A00FFA51000B58C0000005A0000005A0000005A
      0000005A0000000000000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00B58C8C00B58C
      8C00B58C8C000000000000000000000000000000000000000000000000000000
      00000000000094949400B5B5B500A5A5A5009C949400ADA5A500949494000000
      00000000000000000000000000000000000000000000000000005A73E70018A5
      FF0042E7F70042E7F7000094F70094A5EF000000000000000000000000000000
      000000000000000000000000000000000000B5847300BD734A0031BD390042D6
      7300A5E79C00A5F7B500D6E79400D6B52900B58C0000B58C0000C6840800A594
      7B0000000000000000000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00BD84
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700C6C6C600A5A5A500B5A5A500949494000000
      00000000000000000000000000000000000000000000000000002973F70094A5
      EF0031ADFF001094EF0094A5EF0042A5DE000000000000000000000000000000
      00000000000000000000000000000000000000000000A5947B0084C6730063DE
      7B00BDF7AD00D6FFBD005ADE840039B53100F78C0000C6840800A5947B000000
      000000000000000000000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00BD8484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700EFEFEF00BDBDBD00A59C9C00949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002973F70042A5DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5947B00ADC6
      8C00A5D6840094DE8C0052CE63004AB53900D69C4200A5947B00000000000000
      000000000000000000000000000000000000B58C8C00B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00BD848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094949400949494009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADCEE7007B94C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B584
      7300B5847300B5847300B5847300B5847300B584730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242004242420042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6363006B31310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073849C0000428C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00C6C6C600FFFFFF0084848400848484004242
      4200000000000000000000000000000000000000000000000000000000000000
      00009C6363009C636300BD636300BD6B6B006B31310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00000000000000000000000000000000000000
      000000000000000000002173AD001873AD0029528400297BB50029A5D600295A
      8C00005294000863A50000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00424242004242420042424200424242004242
      42000000000000000000000000000000000000000000000000009C6363009C63
      6300C66B6B00D66B6B00D66B6B00C66B6B006B3131009C6363009C6363009C63
      63009C6363009C6363009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00000000000000000000000000000000000000
      000000000000000000004AADDE0042B5E7000863A5002994CE0031ADDE00086B
      AD001094C6001094CE0000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00C6C6C600FFFFFF0084848400848484004242
      42000000000000000000000000000000000000000000000000009C636300DE73
      7300D6737300D66B7300D66B6B00C66B6B006B313100FFA5A500FFADB500FFBD
      BD00FFC6C600FFC6C6009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00CECECE00CECECE00CECECE00CECECE00FFFFFF00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE00000000000000000000000000000000000000
      00000000000021529400298CC6004ABDEF0042BDEF0042B5E70031ADDE0029A5
      DE0018A5D6001094C60000428C0052638400000000000000000000ADFF000000
      000000000000000000008C8C8C00848484008484840084848400848484004242
      420000000000000000000000000000ADFF0000000000000000009C636300E773
      7B00DE737300DE737300DE737300CE6B73006B31310039C6630021CE630029CE
      630018CE5A00FFC6C6009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00009C00009C9C9C00009C00009C9C9C00FFFF
      FF00CECECE00FFFFFF00CECECE00000000000000000000000000000000000000
      000000000000214A940042ADE70052C6F7004ABDEF0063BDE7004A849C001873
      A5001094CE001094C600006BA50021639400000000000000000000000000006B
      FF00000000000084FF000084840000FFFF0000FFFF0000CEFF0000FFFF000084
      8400426BB50000000000006BFF000000000000000000000000009C636300E77B
      7B00E77B7B00DE7B7B00DE737B00D67373006B31310042C66B0031CE630031CE
      630021CE6300FFC6C6009C63630000000000009C00009C9C9C00009C00009C9C
      9C00009C00009C9C9C00009C0000FFFFFF00009C00009C9C9C00009C0000FFFF
      FF00CECECE00FFFFFF00CECECE00000000000000000000000000000000000000
      0000000000006BC6E70052C6EF004ABDEF006BC6EF00DEDEDE006B6B6B00295A
      73001094C6000894CE00109CCE0063ADBD000000000000000000000000000000
      000000ADFF000084FF0000FFFF0000E7F70000E7FF0000E7FF0000E7F70000FF
      FF00426BB50000ADFF00000000000000000000000000000000009C636300EF84
      8400E77B8400E77B7B00E7848400D67373006B31310039C6630029CE630029CE
      630021CE5A00FFC6C6009C636300000000009C9C9C00009C00009C9C9C00009C
      00009C9C9C00009C0000FFFFFF00009C00009C9C9C00009C0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00000000000000000000000000000000000000
      000000000000218C390039A5B5004ABDEF006BC6EF00DEDEDE006B6B6B00316B
      7B0018A5D600189CCE00189CCE00000000000000000000ADFF00000000000000
      00005ABDFF0000FFFF0000E7FF0000EFFF0000EFFF0000E7FF0000E7FF0000DE
      FF0000FFFF00426BB500000000000000000000000000000000009C636300F784
      8C00EF848400EF949400FFDEDE00DE8C8C006B313100BDE7AD006BDE8C005AD6
      840042D67300FFC6C6009C63630000000000009C00009C9C9C00009C00009C9C
      9C00009C0000FFFFFF00009C00009C9C9C00009C00009C9C9C00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE00000000000000000063A55A00088C1000007B
      00003994290039CE520031AD9C0042B5DE0063C6D600D6D6D60063636300426B
      7B0029A5D60029A5D60000000000000000000000000000000000006BFF005ABD
      FF00C6FFFF0029EFFF0000EFFF0000F7FF0000FFFF0000FFFF0000E7FF0000E7
      FF0000DEFF0000FFFF00426BB500006BFF0000000000000000009C636300F78C
      8C00EF848400F79C9C00FFDEDE00DE8C8C006B313100FFF7DE00FFFFE700FFFF
      DE00EFFFD600FFC6C6009C63630000000000FFFFFF00009C00009C9C9C00009C
      0000FFFFFF00009C00009C9C9C00009C00009C9C9C00009C0000FFFFFF00FFFF
      FF00CECECE00FFFFFF00CECECE000000000000000000299C29004ADE6B0021B5
      310018AD290039CE520018A5390018A55A0042B54200C6B59C00525252008C73
      630042A5C600189CCE0000000000000000000000000000000000000000005ABD
      FF00C6FFFF006BFFFF0021FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000EF
      FF0000E7FF0000CEFF00426BB5000000000000000000000000009C636300FF94
      9400F78C8C00F78C8C00F78C8C00DE7B84006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFE700FFC6C6009C63630000000000FFFFFF00FFFFFF00009C0000FFFF
      FF00009C00009C9C9C00009C00009C9C9C00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE000000000000000000318C18004ADE6B004AE7
      730039D65A0039CE520029C6420021BD310018A51800219418006B8442000000
      0000000000000000000000000000000000000000000000000000006BFF005ABD
      FF00C6FFFF00E7FFFF0031FFFF0008FFFF0000FFFF0000FFFF0000FFFF0000F7
      FF0000E7FF0000FFFF00426BB500006BFF0000000000000000009C636300FF94
      9C00FF949400FF949400FF949400E78484006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C63630000000000FFFFFF00009C0000FFFFFF00009C
      00009C9C9C00009C00009C9C9C00009C00009C9C9C00CECECE00FFFFFF00FFFF
      FF00CECECE00FFFFFF00CECECE000000000039A5390021B531004AE773004AE7
      730073D6840073B584001894210010A5180010A51800089C0800529429000000
      0000000000000000000000000000000000000000000000ADFF00000000005ABD
      FF00C6FFFF00E7FFFF006BFFFF0031FFFF0000FFFF0000FFFF0000FFFF0000F7
      FF0000FFFF0000CEFF00426BB5000000000000000000000000009C636300FF9C
      9C00FF949C00FF949400FF949C00E78C8C006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C63630000000000009C0000FFFFFF00009C00009C9C
      9C00009C00009C9C9C00009C00009C9C9C00009C00009C9C9C00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE000000000094E7A5006BF7940052EF7B004ADE
      6B00D6D6D600A5A5A500217B29000894080008A5100010A5180073C663000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005ABDFF00C6FFFF00E7FFFF0073FFFF0021FFFF0000FFFF0000FFFF0000FF
      FF0000CEFF00426BB500000000000000000000000000000000009C636300FF9C
      A500FF9C9C00FF9C9C00FF9C9C00E78C8C006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C636300000000009C9C9C00009C00009C9C9C00009C
      00009C9C9C00FFFFFF009C9C9C00009C00009C9C9C00009C0000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000042D663004ADE6B004ADE
      6B00D6D6D600A5A5A500399C420021BD310018A518004AA52900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006BFF005ABDFF00C6FFFF00E7FFFF00E7FFFF0000FFFF0000FFFF0000CE
      FF00426BB500006BFF00000000000000000000000000000000009C6363009C63
      6300EF8C8C00FF9C9C00FF9C9C00EF8C94006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C63630000000000009C00009C9C9C00009C00009C9C
      9C00FFFFFF00FFFFFF00FFFFFF009C9C9C00009C00009C9C9C00FFFFFF00FFFF
      FF009C9C9C00FFFFFF00000000000000000000000000000000005AE77B004ADE
      6B00CECECE008C8C8C005A944A0052BD4A0063C6630000000000000000000000
      0000000000000000000000000000000000000000000000000000006BFF0000AD
      FF0000000000000000005ABDFF005ABDFF0010B5FF0010B5FF0010B5FF0010B5
      FF00000000000000000000ADFF00006BFF000000000000000000000000000000
      00009C636300B5737300D6848400DE8C8C006B3131009C6363009C6363009C63
      63009C6363009C6363009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C0000000000000000000000000000000000000000000000000042D6
      6300B5A58C00736B63008CB54A0021B529000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C6363009C6363006B31310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000021A5CE0029ADCE001084AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400FFEF
      D600D6DEAD00DEDEAD00F7DEB500EFD6A500EFD69C00F7CE9C00F7CE9400F7CE
      9C00F7CE9C00F7D69C00B58484000000000073DE940018633100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000029A5
      CE0021A5CE000884AD00109CC60021ADD60031B5D600188CB5001084AD0042AD
      CE0039ADCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400FFEF
      DE00ADCE940042AD39008CBD6B0031A5290031A529007BB55200D6C68C00EFCE
      9400EFCE9400F7D69C00B58484000000000073DE940021844200186331000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000031A5
      CE0031BDDE0010ADDE0010A5CE0018C6F7004AD6FF0031A5CE005AC6DE0063C6
      DE0039A5C6000000000000000000000000000000000000000000000000000000
      00000000000000000000A5947B00AD847B009C636300BD734A00000000000000
      0000000000000000000000000000000000000000000000000000B5847300FFF7
      E700CEDEAD0021A51800009C0000009C0000009C0000009C000042AD2900E7CE
      9400EFCE9400F7D69C00B58484000000000073DE940029A5520029A552001863
      3100000000000000000000000000000000000000000000000000000000000000
      000031CE630018633100000000000000000000000000218CB500299CBD004AB5
      D60084DEEF0052C6DE0039CEEF0018D6FF0039DEFF005AD6F70073C6DE00B5E7
      EF0094CEE700188CB50000000000000000000000000000000000000000000000
      000000000000A57B6300BD633900C6634200C66342009C52420084736B000000
      0000000000000000000000000000000000000000000000000000B5847300FFF7
      EF00CEDEB50021A51800009C000029A52100BDCE8C008CBD6B00089C080094BD
      6300EFCE9C00F7D69C00B58484000000000073DE94002184420029A552002184
      4200186331001863310018633100186331001863310018633100000000000000
      000031CE63001863310000000000000000000000000063BDD6004AB5D60052BD
      E70094EFFF008CEFFF005AE7FF0021DEFF0018DEFF0052E7FF007BEFFF007BEF
      FF0039CEEF0031B5DE0029A5CE00000000000000000000000000000000000000
      0000BD734A00C65A1800A54218008C522100B5421800BD522900CE6339008442
      3100000000000000000000000000000000000000000000000000BD8C8400FFFF
      F700CEDEBD0010A51000009C0000089C08009CC67B00F7DEBD00BDC68C0084BD
      6B00F7D6A500F7D69C00B58484000000000073DE9400218442001863310029A5
      520029A5520029A5520029A5520029A5520029A5520018633100000000000000
      000000000000000000000000000000000000000000001094C60021A5D6004AC6
      EF0084DEF70094EFFF0073D6EF005ABDCE0052B5CE0029C6EF0000D6FF0000CE
      FF0008D6FF0008CEF70008B5E70000000000000000000000000000000000BD73
      4A00BD521000A5390000AD420000316300006B4A0000AD390000A5390800BD5A
      3900735242000000000000000000000000000000000000000000BD8C8400FFFF
      FF00EFEFDE00B5DEA500ADD69C00ADCE9400ADCE9400F7DEC600F7DEBD00B5D6
      9400F7D6AD00F7D6A500B58484000000000073DE940021844200186331000000
      0000000000000000000073DE940029A552002184420000000000000000000000
      000031CE630018633100000000000000000000000000188CBD0029ADDE0039BD
      E7006BD6F70094C6D6009494940094949400949494009494940042BDDE0000D6
      FF0010D6FF0018D6FF00089CCE00000000000000000000000000BD734A009C52
      4200AD420000CE5A0000BD6B0000007B000021730000C65A0000B54A00007363
      2100845A31007352420000000000000000000000000000000000CE9C8400FFFF
      FF00BDE7B500FFF7EF00F7EFDE00B5D69C00ADCE9400ADCE8C00B5CE8C00EFDE
      B500F7DEB500F7DEAD00B58484000000000073DE940021844200186331000000
      00000000000031CE630029A55200186331000000000000000000000000000000
      000031CE6300186331000000000000000000000000001894BD0021ADDE0031B5
      E7005ACEF70094949400EFE7E700B5B5B500ADA5A500E7B5B500949494005ADE
      FF009CF7FF00B5EFFF00399CBD00000000000000000000000000BD734A009C52
      4200CE5A0000D67B0000848C000039940000C6840000BD7B000021730000086B
      0800636B2900BD734A0000000000000000000000000000000000CE9C8400FFFF
      FF008CD68C00C6E7BD00FFF7EF009CCE8C00089C0800009C000010A51000F7DE
      C600F7DEBD00FFDEB500B58484000000000073DE940021844200186331000000
      000073DE940029A5520021844200000000000000000000000000000000000000
      00000000000021844200186331000000000000000000108CBD00189CCE0021AD
      DE0042C6EF0094949400EFE7E700B5B5B500ADA5A500DEB5B500949494007BE7
      FF00ADEFFF008CCEE7004AA5C600000000000000000000000000BD734A009C52
      4200C673000029A5180031AD2100D6AD1800FF9C0800E78C0000318400000073
      0000426B1000636B290000000000000000000000000000000000DEAD8400FFFF
      FF009CD69C00089C080094D68C00C6DEB50031AD2900009C000021A51800F7E7
      CE00F7E7C600F7DEB500B58484000000000073DE9400218442001863310031CE
      630029A552001863310000000000000000000000000031CE6300186331000000
      0000000000000000000031CE63001863310000000000000000000884AD0021A5
      D60031BDEF0094949400EFE7E700B5B5B500ADA5A500DEB5B5009494940063E7
      FF006BCEE700007BA500000000000000000000000000000000009C524200BD73
      4A007B94080010C64A0031CE63007BCE6B00FFCE5A00FFA510006B8C00000084
      0000296B0000296B000000000000000000000000000000000000DEAD8400FFFF
      FF00F7FFF70042B54200009C0000009C0000009C0000009C000021A51800FFEF
      DE00E7DEC600C6BDAD00B58484000000000073DE940029A5520073DE940029A5
      5200218442000000000000000000000000000000000031CE6300218442000000
      0000000000000000000031CE630021844200000000000000000000000000108C
      B500088CBD0094949400EFE7E700B5B5B500ADA5A500E7BDB50094949400189C
      C6002194BD000000000000000000000000000000000000000000A5947B00BD73
      4A0031BD390042D67300A5E79C00A5F7B500D6E79400D6B52900B58C00003184
      00005A7B2900A5947B0000000000000000000000000000000000E7B58C00FFFF
      FF00FFFFFF00E7F7E70084CE840039B5390039AD31008CCE840042AD3900AD84
      7300BD847B00BD847B00B58484000000000073DE940029A5520029A552001863
      3100000000000000000000000000000000000000000031CE630029A552000000
      0000000000000000000031CE6300218442000000000000000000000000000000
      00000000000094949400E7E7E700ADADAD00ADA5A500DEB5B500949494000000
      000000000000000000000000000000000000000000000000000000000000A594
      7B0084C6730063DE7B00BDF7AD00D6FFBD005ADE840039B53100F78C0000C684
      0800A5947B000000000000000000000000000000000000000000E7B58C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF00E7F7E700FFFFFF00BDC6AD00A58C
      6B00EFB57300EFA54A00C6846B000000000073DE940029A55200218442000000
      000000000000000000000000000000000000000000000000000031CE63001863
      3100186331001863310031CE6300186331000000000000000000000000000000
      00000000000094949400B5B5B500A5A5A5009C949400ADA5A500949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5947B00ADC68C00A5D6840094DE8C0052CE63004AB53900D69C4200A594
      7B00000000000000000000000000000000000000000000000000EFBD9400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600BD84
      7B00FFC67300CE947300000000000000000073DE940018633100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700C6C6C600A5A5A500B5A5A500949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5947B00A5947B00AD847B00A5947B00A5947B00A5947B000000
      0000000000000000000000000000000000000000000000000000EFBD9400FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00BD84
      7B00CE9C840000000000000000000000000073DE940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700EFEFEF00BDBDBD00A59C9C00949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFBD9400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094949400949494009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001073FF001073FF001073
      FF001073FF001073FF001073FF001073FF001073FF001073FF001073FF001073
      FF001073FF001073FF001073FF000852FF00000000001073FF001073FF001073
      FF001073FF001073FF001073FF001073FF001073FF001073FF001073FF001073
      FF001073FF001073FF001073FF0000000000000000001073FF001073FF001073
      FF001073FF001073FF001073FF001073FF001073FF001073FF001073FF001073
      FF001073FF001073FF001073FF0000000000AD4A1000AD4A1000AD4A1000B54A
      1000B54A1000B54A1000B54A1000B54A1000AD4A1000AD4A1000000000000000
      000000000000000000000000000000000000106BFF0021A5FF0021A5FF0021A5
      FF00218CFF003184FF00217BFF001884FF001894FF00219CFF0021A5FF0021A5
      FF0021A5FF0021A5FF0021A5FF00106BFF00106BFF0021A5FF0021A5FF00219C
      FF001873FF00186BFF001073FF001884FF00219CFF00219CFF00188CFF00219C
      FF00219CFF00188CFF00219CFF00106BFF00106BFF0021A5FF0021A5FF0021A5
      FF002194FF00217BFF00187BFF00188CFF002994FF00297BFF00188CFF0021A5
      FF0021A5FF0021A5FF0021A5FF00106BFF00AD4A1000AD4A1000D6522100F763
      4A00FF6B5200FF7B5A00FF846300FF735A00F7634A00C6522900AD4A10000000
      000000000000000000000000000000000000106BFF00219CFF00219CFF0094CE
      FF00F7F7FF00A5D6FF0073C6FF00CEDEFF00C6CEFF00297BFF00219CFF00219C
      FF00219CFF00219CFF00219CFF00106BFF00106BFF00219CFF0031A5FF00B5CE
      FF00E7F7FF0094D6FF00BDDEFF00ADBDFF001873FF0094C6FF00A5B5FF00106B
      FF009CC6FF009CADFF001884FF00106BFF00106BFF00219CFF00219CFF0084C6
      FF00E7EFFF00B5DEFF007BC6FF0052ADFF00F7FFFF00FFFFFF003184FF00219C
      FF00219CFF00219CFF00219CFF00106BFF00AD4A1000AD4A1000DE522900F773
      5200FF8C6B00FF7B5A00FFBDB500FFC6C600F7634200CE523100AD4A18000000
      0000000000000000000000000000000000001063FF00219CFF0084C6FF00FFFF
      FF0073ADFF00219CFF00219CFF00FFFFFF00FFFFFF00297BFF00219CFF00219C
      FF00219CFF00219CFF00219CFF001063FF001063FF00219CFF00D6EFFF00EFF7
      FF0039A5FF00219CFF00C6E7FF00FFFFFF00217BFF00FFFFFF00FFFFFF003173
      FF00DEEFFF00E7E7FF00187BFF001063FF001063FF00219CFF007BC6FF00FFFF
      FF007BB5FF00219CFF00219CFF00219CFF00F7FFFF00FFFFFF00317BFF00219C
      FF00219CFF00219CFF00219CFF001063FF0000000000B54A1800E7633900FF8C
      6B00FF8C6300FF947300FFEFEF00FFEFEF00F77B6300C6522900AD4A18000000
      0000000000000000000000000000000000001063FF001894FF00DEEFFF00F7F7
      FF00187BFF001894FF002194FF00FFFFFF00FFFFFF00296BFF001873FF00186B
      FF00188CFF001894FF001894FF001063FF001063FF0052ADFF00FFFFFF0094B5
      FF001894FF001894FF00C6E7FF00FFFFFF00528CFF00FFFFFF00FFFFFF006B8C
      FF00DEEFFF00E7E7FF001073FF001063FF001063FF001894FF00DEEFFF00F7F7
      FF00187BFF001894FF001894FF001894FF00F7FFFF00FFFFFF00317BFF001894
      FF001894FF001894FF001894FF001063FF0000000000AD4A1800DE634200FF8C
      5A00F7845A00DEB5AD00EFF7F700FFDECE00FF946B00CE633900AD4A10000000
      0000000000000000000000000000000000000863FF00188CFF00FFFFFF00DEE7
      FF001073FF00188CFF00188CFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6CE
      FF00107BFF00188CFF00188CFF000863FF000863FF0073B5FF00FFFFFF00739C
      FF00188CFF00188CFF00C6E7FF00FFFFFF008CA5FF00EFF7FF00D6DEFF00ADBD
      FF00D6DEFF00E7E7FF001073FF000863FF000863FF00188CFF00FFFFFF00DEE7
      FF001073FF00188CFF00188CFF00188CFF00F7FFFF00FFFFFF00317BFF002994
      FF001884FF00188CFF00188CFF000863FF000000000000000000E76B3900944A
      42004A396B0029428400314A8C006B526B00DE6B4200CE632900000000000000
      000000000000000000000000000000000000085AFF001884FF00F7FFFF00F7F7
      FF001063FF001884FF001884FF00FFFFFF00FFFFFF0073A5FF006BB5FF005AA5
      FF003184FF001884FF001884FF00085AFF00085AFF006BB5FF00FFFFFF0094A5
      FF00187BFF001884FF00C6DEFF00FFFFFF00C6D6FF00B5C6FF009CC6FF00EFEF
      FF00DEE7FF00E7E7FF00106BFF00085AFF00085AFF001884FF00F7FFFF00F7F7
      FF001063FF001884FF001873FF00106BFF00F7FFFF00FFFFFF00296BFF00186B
      FF002973FF001884FF001884FF00085AFF000000000000000000000000001831
      94000039AD000839A50000319C0000218C0029297B0000000000000000000000
      000000000000000000000000000000000000085AFF00187BFF00C6DEFF00FFFF
      FF004A7BFF00187BFF00187BFF00FFFFFF00FFFFFF0084A5FF007B9CFF007B9C
      FF005A8CFF00106BFF00187BFF00085AFF00085AFF004294FF00FFFFFF00DEE7
      FF00085AFF00187BFF00C6DEFF00FFFFFF00FFFFFF007BA5FF005AA5FF00FFFF
      FF00FFFFFF00E7E7FF00106BFF00085AFF00085AFF00187BFF00CEE7FF00FFFF
      FF004A73FF00298CFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084ADFF00106BFF00187BFF00085AFF00000000000000000000104200105A
      CE001852BD001852BD001852BD001852BD000039AD0000000000000000000000
      0000000000000000000000000000000000000852FF001073FF0073ADFF00FFFF
      FF00C6D6FF00085AFF00187BFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0073A5FF00296BFF001073FF000852FF000852FF00107BFF00DEEFFF00FFFF
      FF00527BFF00106BFF00C6DEFF00FFFFFF00FFFFFF004284FF00217BFF00FFFF
      FF00FFFFFF00E7EFFF00106BFF000852FF000852FF001073FF007BB5FF00FFFF
      FF00BDCEFF00186BFF00BDD6FF00BDD6FF00BDD6FF00BDD6FF00BDD6FF00BDD6
      FF007BADFF00296BFF001073FF000852FF000000000000000000103984002173
      F700216BDE001863CE001863CE00216BD600185AC60000000000000000000000
      0000000000000000000000000000000000000852FF001073FF001873FF00E7F7
      FF00FFFFFF007394FF000863FF001873FF001873FF001873FF001873FF001873
      FF004A94FF00638CFF001073FF000852FF000852FF001073FF006BA5FF00FFFF
      FF00E7EFFF001852FF002173FF00297BFF00297BFF001073FF001073FF00297B
      FF00A5C6FF002163FF001073FF000852FF000852FF001073FF00217BFF00EFF7
      FF00FFFFFF00638CFF001063FF001073FF001073FF001073FF001073FF001073
      FF004A94FF005A84FF001073FF000852FF000000000000000000103973002173
      DE002163BD001863CE00185AC6002173DE00216BDE0000000000000010000000
      00000039FF00000000000008290000000000084AFF00106BFF00106BFF005A9C
      FF00FFFFFF00FFFFFF006B8CFF00085AFF00106BFF00106BFF00106BFF00106B
      FF0084B5FF00739CFF00106BFF00084AFF00084AFF00106BFF00106BFF00CEDE
      FF00FFFFFF00D6DEFF001852FF000863FF00106BFF00106BFF00106BFF00106B
      FF00DEE7FF00185AFF00106BFF00084AFF00084AFF00106BFF00106BFF006BA5
      FF00FFFFFF00FFFFFF005A7BFF00085AFF00106BFF00106BFF00106BFF00106B
      FF007BADFF00739CFF00106BFF00084AFF000000000000000000081010000008
      1000104273003194F700298CF7003194FF00217BEF0000000000000831000039
      FF00000000000039FF000021940000000000084AFF001063FF001063FF001063
      FF008CB5FF00FFFFFF00FFFFFF00ADBDFF003163FF000852FF000852FF005284
      FF00F7F7FF00638CFF001063FF00084AFF00084AFF001063FF001063FF002973
      FF00E7EFFF00FFFFFF00E7EFFF006384FF00084AFF000852FF000852FF008CAD
      FF00F7F7FF00105AFF001063FF00084AFF00084AFF001063FF001063FF001063
      FF00A5C6FF00FFFFFF00FFFFFF009CADFF00215AFF000852FF00085AFF00397B
      FF00EFF7FF00638CFF001063FF00084AFF000000000039393100393931003931
      290010315200298CD60031A5F700319CEF001852B50000000000000831000000
      000000000000000000000039F70000000000004AFF00085AFF00085AFF00085A
      FF00085AFF0084ADFF00FFFFFF00FFFFFF00FFFFFF00EFEFFF00EFEFFF00FFFF
      FF00F7F7FF001863FF00085AFF00004AFF00004AFF00085AFF00085AFF00085A
      FF003173FF00DEE7FF00FFFFFF00FFFFFF00F7F7FF00CEDEFF00EFEFFF00FFFF
      FF00ADC6FF00085AFF00085AFF00004AFF00004AFF00085AFF00085AFF00085A
      FF00105AFF009CBDFF00FFFFFF00FFFFFF00FFFFFF00D6DEFF00D6DEFF00FFFF
      FF00F7FFFF002163FF00085AFF00004AFF000000000000000000393939007373
      73006B6B630039424A0010293900102131000000000000000000000000000000
      08000000000000000800001884000039FF000042FF00085AFF000852FF000852
      FF00085AFF000852FF004A84FF00CEDEFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      FF005A8CFF000852FF000852FF000042FF000042FF00085AFF000852FF000852
      FF00085AFF001863FF0094B5FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00DEE7
      FF00216BFF000852FF000852FF000042FF000042FF00085AFF000852FF000852
      FF00085AFF00085AFF005A8CFF00DEE7FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006B94FF000852FF000852FF000042FF000000000000000000000000009494
      8C0094948C00847B7B0031292900000000000000000000000000000000000000
      00000000000000000000000000000031E7000042FF000852FF000852FF000852
      FF000852FF000852FF000852FF000852FF00316BFF00638CFF005A8CFF001863
      FF000852FF000852FF000852FF000042FF000042FF000852FF000852FF000852
      FF000852FF000852FF000852FF00185AFF005A8CFF007B9CFF005A8CFF00105A
      FF000852FF000852FF000852FF000042FF000042FF000852FF000852FF000852
      FF000852FF000852FF000852FF000852FF00427BFF00739CFF006B9CFF00296B
      FF000852FF000852FF000852FF000042FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000042FF000042FF000042
      FF000042FF000042FF000042FF000042FF000042FF000042FF000042FF000042
      FF000042FF000042FF000042FF000039FF00000000000042FF000042FF000042
      FF000042FF000042FF000042FF000042FF000042FF000042FF000042FF000042
      FF000042FF000042FF000042FF0000000000000000000042FF000042FF000042
      FF000042FF000042FF000042FF000042FF000042FF000042FF000042FF000042
      FF000042FF000042FF000042FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD521000C66B2900C65A0800BD520800B5520800B55210000000
      000000000000000000000000000000000000000000000000000000000000009C
      CE004AB5E70063C6EF0052BDE70039B5DE004ABDE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C39
      0000D6844200DE8C4A00E7A55A000039FF00BD9C8400DE945A00CE732100C65A
      08009C390000000000000000000000000000000000000000000008A5CE0008A5
      D6007BD6F700A5DEFF0094DEFF0094DEFF007BCEEF0073CEEF004AB5E7000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000029ADD600ADF7FF0084EF
      FF004AC6E7004AC6E7004AC6E70031B5DE0021ADD60000000000000000000000
      00000000000000000000000000000000000000000000000000009C390000DE94
      5A00DE9C5A00DEB59400FFF7E7000039FF00CECEDE00FFFFEF00EFDECE00CE84
      3900C65A0800A53900000000000000000000000000000000000010ADD60018AD
      DE0084DEEF00A5E7FF0094DEFF0084D6F7005ABDE7008CD6F7009CDEFF0073CE
      F70000000000000000000000000000000000000000000000000018A5D60084DE
      F7008CD6EF006BA5B50052ADC60042C6EF0042BDEF0039BDE70018A5D6000000
      0000000000000000000000000000000000000000000029ADD600A5EFF7009CFF
      FF0094FFFF009CFFFF0094F7FF008CF7FF0084EFFF004AC6E7004AC6E70039BD
      DE00000000000000000000000000000000000000000000000000C6733900E7A5
      6B00DEBD9400FFF7DE00F7D6AD00FFCE9400F7BD8400F7C69400FFEFD600F7EF
      E700CE732900B54A00000000000000000000000000000000000021ADDE0029B5
      DE0094DEEF00B5EFFF00A5E7FF0063B5D600319CC6006BC6EF0094DEFF009CDE
      FF0031B5DE00000000000000000000000000000000000000000018A5D600A5EF
      FF008C949C00AD9C9C007B6B6B004AA5BD0042C6EF0042BDEF0018A5D6000000
      0000000000000000000000000000000000000000000029ADD6008CD6EF00ADFF
      FF0094FFFF0094F7FF0094F7FF008CF7FF008CF7FF0094F7FF0094F7FF0073DE
      F70029ADDE0000000000000000000000000000000000AD4A1000EFA57300D694
      6300FFFFE700FFFFD600FFFFCE00FFFFD600FFEFC600F7BD8C00EFBD8400FFF7
      E700DEBD9C00BD520000A539000000000000000000000000000029B5DE0039BD
      E700B5E7F700CEFFFF00B5F7FF0084CEDE00297BA5006BBDE70094DEFF0094DE
      FF0031B5DE00000000000000000000000000000000000000000018A5D600B5EF
      FF0094948C00D6CECE009C848400637B7B0052CEEF004AC6EF0018A5D6000000
      0000000000000000000000000000000000000000000029ADD60029ADD600ADF7
      FF0094FFFF0094F7FF0094F7FF008CF7FF008CF7FF008CF7FF008CF7FF0073DE
      F70052CEEF0000000000000000000000000000000000BD6B3900EFAD7300D6B5
      9400F7FFFF00FFFFE700FFFFDE00E7E7CE00DEDEC600FFEFC600F7BD8400EFCE
      AD00DEC6BD00BD5A0000A539000000000000000000000000000039BDE7004AC6
      EF00C6EFF700EFFFFF00CEF7FF00B5EFF70063ADBD008CCEEF009CDEFF0094DE
      FF0031B5DE00000000000000000000000000000000000000000018A5D600BDF7
      FF00C6DEE700A59C9C00CEC6C6007B6B630063CEE7005ACEF70018A5D6000000
      0000000000000000000000000000000000000000000029ADD6007BE7F70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF0073DE
      F7007BE7F70029B5DE00000000000000000000000000CE7B4200F7AD6B003194
      FF003194FF00FFFFFF00FFFFE7008C8C7B005A5A5A00E7EFCE00FFDEA5000039
      FF000039FF00CE630800A539000000000000000000000000000029B5DE0042C6
      E7005AC6DE006BCEE70063CEE70063C6E7006BCEE70084DEEF009CE7FF00A5E7
      FF0031B5DE00000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00ADC6C600C6BDBD00B5ADA500638C940063B5CE0018A5D6000000
      0000000000000000000000000000000000000000000029ADD60094FFFF0029AD
      D600ADEFF700ADF7FF00A5F7FF00A5F7FF008CF7FF008CF7FF008CF7FF0073DE
      F700007308005ACEEF00000000000000000000000000BD6B3100EFAD7300E7C6
      9C00FFFFFF00FFFFFF00FFFFF700E7E7CE008484730073736300F7D6AD00FFD6
      9C00E7CEB500BD5A0000A539000000000000000000000000000029B5DE0073DE
      E700318CA500399CB5006BE7F70042CEE70021B5DE0010ADD60029ADD6007BD6
      EF0031B5DE00000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF008C9C9C00DED6D600A5949400948C8C0018A5D6000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF0084F7
      FF0029ADD60029ADD60029ADD60029ADD600ADF7FF0094F7FF008CF7FF000073
      08005AE78C000073080018ADD6000000000000000000AD4A1000E7A56B00DEAD
      7B00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFF700ADAD9C00736B5200F7E7
      C600DEA57300BD5200009C3900000000000000000000000000000000000031B5
      D6004ABDD60073D6E7009CFFFF0084F7FF0052CEE70010A5CE000094C60010A5
      CE0018A5D600000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF00ADE7F7008C949400DED6D600AD9C9C009C8C84006B52
      42007B6B5A00735A520000000000000000000000000029ADD6009CFFFF0094FF
      FF0094FFFF0094FFFF0094F7FF006BDEF70029ADD6009CE7F7000073080052D6
      7B0042D66B0031C64A0000730800000000000000000000000000C6733900EFAD
      6B00E7C6A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CED6C600D6C6
      AD00CE6B1800B552000000000000000000000000000000000000000000000000
      0000000000000000000052CEE7004ACEE70042C6DE00109CC600089CC60010A5
      D60010A5CE00000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF00B5F7FF007BCEDE00ADADAD00CECEC600ADA59C00D6C6
      C600D6C6C600D6C6C600947B7300000000000000000029ADD6009CFFFF0094FF
      FF0094FFFF0094F7FF0094F7FF0094FFFF0084EFFF0029ADD60029ADD600108C
      210031C64A00109C210031ADDE000000000000000000000000009C390000D68C
      5200E7A56B00E7BD9400FFF7E7003194FF00D6EFFF00FFF7F700E7C6A500CE73
      2900BD5A08009C39000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000109CC6000894C6000000
      000000000000000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF00B5F7FF008CEFFF0073ADBD00CEC6C600D6CEC600EFE7
      E700EFE7E700F7EFEF00C6BDB500000000000000000029ADD600A5FFFF0094FF
      FF0094FFFF0094FFFF008CEFFF0094EFFF0094EFFF0094F7FF009CF7FF000884
      100018AD29000884100000000000000000000000000000000000000000009C39
      0000D6844A00E79C5A00E79C6300B5948400CE9C7B00D6945200CE732100C663
      10009C3900000000000000000000000000000000000000000000000000000000
      0000008CBD000084B500000000000000000000000000089CC6000894BD000000
      000000000000000000000000000000000000000000000000000018A5D600BDF7
      FF00DEFFFF00DEFFFF00BDF7FF008CEFFF00739CA500D6CECE00F7EFEF00EFE7
      E700F7EFEF00F7F7F700F7F7F700736352000000000021ADD60029ADD6009CF7
      FF009CF7FF0084EFFF0029ADDE0021ADD60029ADD60029ADDE0031B5DE000894
      100008A518000000000000000000000000000000000000000000000000000000
      00009C3900009C390000C66B2900CE732900CE6B2100BD5A1000A53900009C39
      0000000000000000000000000000000000000000000000000000000000000000
      000029B5DE00189CCE00000000000000000000000000089CCE000894BD000000
      000000000000000000000000000000000000000000000000000018A5D600B5F7
      FF00CEF7FF00BDEFF7009CE7F70073D6EF009C948C00FFFFFF00F7F7F700F7F7
      F700F7F7FF00BDB5AD00CEC6C6007363520000000000000000000000000029AD
      D60031ADDE0029ADDE0000000000000000000000000000000000088C100008A5
      1800088408000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A54208009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004AB5D6006BD6EF00000000000000000000000000089CC6000894BD000000
      000000000000000000000000000000000000000000000000000018A5D6007BD6
      EF0084D6EF007BD6EF0073CEEF0063CEEF0073ADBD00D6CEC600FFFFFF00E7E7
      E700948C84007B6B6300B5ADA50084736B000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000007B
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000009C390000C6733900CE7B4200BD5A0800B54A0000A53900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005AC6DE007BDEEF004ABDD60039ADD60018A5D600000000000000
      000000000000000000000000000000000000000000000000000018A5D6009CE7
      F700ADEFFF00ADEFFF009CEFFF0094EFFF0084E7FF009C948C00DEDEDE00CEC6
      BD00A59C9400CEC6C600948C7B00736352000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A53900009C3900009C3900009C3900009C3900009C3900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052BDD60052C6D6004ABDDE0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D60084736B008473
      6B00A59C940094847B0073635200000000000000000000000000AD4A0000B552
      0000B5520000AD4A0000000000000000000000000000AD4A0000B5520000B54A
      0000AD420000000000000000000000000000000000000000000000000000299C
      DE00299CDE00A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B73000000000000000000B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD848400BD848400BD84
      8400BD848400BD848400BD848400BD8484000000000000000000B54A00000000
      000000000000AD420000AD42000000000000AD420000AD4A0000000000000000
      0000AD4A00000000000000000000000000000000000000000000299CDE008CD6
      EF0084D6F700CEC6BD00FFEFDE00FFF7E700FFF7E700F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00FFEFDE00A57B730000000000B5848400FFEFD600F7E7C600F7DE
      BD00EFD6AD00EFD6A500F7D6A500F7CE9C00F7CE9400F7CE9C00F7CE9C00F7D6
      9C00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD848400F7DEB500F7D6
      AD00F7D6A500F7CE9C00F7CE8C00BD8484000000000000000000B54A00000000
      00000000000000000000AD42000000000000AD42000000000000000000000000
      0000AD42000000000000000000000000000000000000299CDE00A5EFFF0094F7
      FF008CF7FF00CEC6BD00F7E7DE00F7E7D600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7DEC600F7E7D600A57B730000000000B5848400FFEFDE00F7E7CE00E7CE
      B500D6BDA500CEB59C00DEC69C00E7C69C00EFCE9400EFCE9400EFCE9400F7D6
      9C00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C8400FFE7CE008C94
      DE001842F7008C8CCE00F7D69C00BD8484000000000000000000B54A0000A542
      00000000000000000000AD42000000000000AD4200000000000000000000A539
      0800AD4A000000000000000000000000000000000000299CDE00A5E7FF0094EF
      FF0084EFFF00CEC6BD00FFEFDE00FFE7CE00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00F7DEC600F7E7D600A57B730000000000B5847300FFF7E700FFE7D6004A42
      42003139390052636300AD9C8400BDAD8C00D6B58C00E7C69400EFCE9400F7D6
      9C00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400FFEFDE00184A
      FF000031FF00184AF700F7DEAD00BD848400000000000000000000000000B552
      0000B54A0000B5520000B54A000000000000B54A0000B54A0000AD4A0000AD42
      00000000000000000000000000000000000000000000299CDE00ADEFFF00A5F7
      FF0094F7FF00CEC6BD00FFEFE700FFE7D600FFDEC600FFDEC600FFDEC600F7DE
      BD00F7DEC600F7E7D600A57B730000000000B5847300FFF7EF00FFEFDE00B5A5
      9C0018637B00087BAD0018526B0063635A00A5947B00C6AD8400DEBD8C00EFCE
      9400B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEAD8400FFF7EF008C9C
      EF00184AFF008C94E700F7E7BD00BD8484000000000000000000000000000000
      0000AD4A0000B54A00009C4A0800844221009C420800B5420000AD4A00000000
      00000000000000000000000000000000000000000000299CDE00B5EFFF00ADF7
      FF00A5F7FF00CEC6BD00FFEFEF00FFEFDE00FFE7D600FFE7CE00FFE7CE00FFE7
      CE00F7E7D600F7EFDE00A57B730000000000BD8C8400FFFFF700FFEFE700F7E7
      D60039738400297B9C008C7B7B00946B6B007B5A52009C8C7300BDA58400DEBD
      8C00B57B84000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7B58C00FFFFF700FFF7
      EF00FFF7E700FFEFDE00FFEFCE00BD8484000000000000000000000000000000
      0000000000000000000084635200AD9C9C00AD42000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00BDEFFF00BDF7
      FF00B5F7FF00CEC6BD00FFF7F700FFEFD600FFDEBD00FFDEBD00FFDEBD00FFDE
      B500FFE7CE00F7EFE700A57B730000000000BD8C8400FFFFFF00FFF7EF00FFEF
      E700A5B5B5007B737B00E7A5A500CE949400A57373007352520094846B00AD9C
      7B00AD737B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFFFFF00FFFF
      FF00FFFFF700BD848400BD848400BD8473000000000000000000000000000000
      000000000000635A4A00C6B5B500CEB5B5008C736B00735A5200000000000000
      00000000000000000000000000000000000000000000299CDE00C6EFFF00CEF7
      FF00BDF7FF00CEC6BD00FFF7F700FFF7F700FFF7E700FFEFE700FFEFE700FFEF
      E700FFF7E700EFE7DE00A57B730000000000CE9C8400FFFFFF00FFFFF700FFF7
      EF00F7EFDE00847B7B00EFB5B500DEA5A500C68C8C009C6B6B0073524A009484
      6B009C6B6B00000000000000000000000000B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B584840000000000EFBD9400FFFFFF00FFFF
      FF00FFFFFF00BD848400D6946B00000000000000000000000000000000000000
      0000000000009C8C8C00EFDEE700947B7300BDA5A500AD94940063524A000000
      00000000000000000000000000000000000000000000299CDE00CEEFFF00DEFF
      FF00CEFFFF00CEC6BD00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E7
      E700D6BDB500C6ADA500A57B730000000000CE9C8400FFFFFF00FFFFFF00FFFF
      F700FFF7EF00F7E7DE00A57B7B00EFB5B500DEA5A500C68C8C009C6B6B00735A
      52008C636B00000000000000000000000000B5848400EFD6B500E7BD9400E7B5
      8C00DEB58400DEAD7300EFC68400B584840000000000EFBD9400DEAD8400DEAD
      8400428C3900BD84840000000000000000000000000000000000000000000000
      0000735A4A00EFE7E700BDB5AD0063524200B59C9C00D6B5BD00846B5A000000
      00000000000000000000000000000000000000000000299CDE00D6F7FF00EFFF
      FF00DEFFFF00CEC6BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DECE
      C600E7AD7300F7945A000000000000000000DEAD8400FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7EF00EFDECE009C737300EFB5B500DEA5A500C68C8C009C6B
      6B007B525200000000000000000000000000B5848400CE8C6B00942900009C31
      00009C3100009C310000E7B57B00B58484000000000000000000000000000073
      080042D6730031AD4A000000000000000000000000000000000000000000A58C
      8C00A59C9400EFEFEF007B635200000000007B635A00CEB5B500A58C8C00A58C
      8C000000000000000000000000000000000000000000299CDE00DEF7FF00FFFF
      FF00EFFFFF00CEC6BD00FFF7EF00FFF7F700FFF7F700FFF7F700FFF7F700E7C6
      BD00C6AD8C00299CDE000000000000000000DEAD8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7EF00E7CEC600A5737300EFBDBD00D6A5A500C68C
      8C00945A5A005A5A63000000000000000000BD8C8400FFEFE700A54210009429
      000094290000BD734A00FFE7B500B58484000000000000000000007B08004ACE
      73005AE78C0039C65A00108C210000000000000000000000000000000000735A
      5200DED6CE00ADA59C000000000000000000000000009C847B00C6ADAD00735A
      52000000000000000000000000000000000000000000299CDE00DEF7FF00FFFF
      FF00F7FFFF00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6
      BD0084C6DE00299CDE000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7EF00DEC6BD00AD848400F7BDBD00A584
      8C003194B50018ADCE0018ADCE0000000000CE9C8400FFFFFF00D6AD94009421
      0000A5421000EFCEAD00FFEFC600B584840000000000428429001094210029AD
      4A0039CE630021AD3900189C2900087B10000000000000000000000000008473
      6B00C6BDB5006B5A4A000000000000000000000000006B5A4A00AD9494008473
      6B000000000000000000000000000000000000000000299CDE00DEF7FF00F7F7
      F700B5C6CE00ADC6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00B5D6D600DEFF
      FF008CDEF700299CDE000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CECE00AD7B7300B57B7300429C
      BD0008CEF70000A5E7000018AD0000009C00DEAD8400FFFFFF00FFF7F700AD5A
      3100CE947300FFF7DE00DECEB500B58484000000000000000000000000000073
      080021BD4200088C180000000000000000000000000000000000000000008473
      6B008C7B6B000000000000000000000000000000000000000000846B63008473
      63000000000000000000000000000000000000000000299CDE00E7FFFF00DECE
      C600BDA59C00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEBDB500BD9C9400E7EF
      E70094DEF700299CDE000000000000000000EFBD9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600BD847B00DEA56B0010A5
      CE0000ADE7000831CE000829C6000018AD00E7B58C00FFFFFF00FFFFFF00EFDE
      D600FFF7EF00B5848400B5848400B5847300000000000000000000000000087B
      100010AD21000884100000000000000000000000000000000000000000006B5A
      4A0000000000000000000000000000000000000000000000000000000000735A
      4A00000000000000000000000000000000000000000000000000299CDE00B5D6
      E700949C9C00E7DED600FFFFFF00FFFFF700FFFFF700D6C6BD00849CA5008CCE
      E700299CDE00000000000000000000000000EFBD9400FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00BD847B00CE9C84000000
      0000007BCE004A63F700214ADE000010AD00EFBD9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5848400DE9C6300000000000000000000000000088C10000894
      100008A51800007B080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000299C
      DE00299CDE009C948C009C948C009C948C009C948C009C948C00299CDE00299C
      DE000000000000000000000000000000000000000000DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400BD847B00000000000000
      000000000000394ADE001829C60000000000EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400B58484000000000000000000008408000084080000941000089C
      1800008408000000000000000000000000000000000000000000000000000000
      00000000000000000000D6AD9C00BDA59C00B5948C00CE9C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000063000000630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A00000000000000000000000000000000000000
      000000000000DEAD9400CEBDBD00B5BDC6009C9CA5009C8C8400DEAD94000000
      0000000000000000000000000000000000000000000000000000000000000000
      6B000018BD000010A50000006300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFFFEF00FFF7E700FFF7DE00F7EFDE00F7EFDE00F7EF
      DE00FFEFDE00F7E7D6008C5A5A00000000000000000000000000000000000000
      0000DEAD9C00E7D6CE00DEDEE700C6947B00B5847300A59C9C00A58C8C00C69C
      8C00000000000000000000000000000000000000000000000000000000000000
      6B005273FF000021D6000018AD00000063000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001873EF002973D6005284CE005A73B500215AC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700F7E7CE00F7E7CE00F7DECE00F7DEC600F7DE
      C600F7E7CE00EFDECE008C5A5A0000000000000000000000000000000000DEAD
      9400EFDEDE00F7FFFF00C67B5A00A5210000AD210000B5634A00A59CA5009C8C
      8400DEAD94000000000000000000000000000000000000000000000000000000
      0000000063005273FF000018D6000018AD000000630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A94F7007BA5DE00B5BDC600D6C6BD00E7BDA500F7AD7300B5A5A5003973
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFDECE008C5A5A00000000000000000000000000DEAD9400EFE7
      DE00FFFFFF00CE846B00B5421800DE9C8400DE9C8400BD421800B55A4200A59C
      A5009C8C8400C69C8C0000000000000000000000000000000000000000000000
      000000000000000063005273FF000018D6000018AD0000006300000000000000
      0000000000000000000000000000000000000000000000000000298CFF007BAD
      EF00FFDEB500FFE7BD00FFE7BD00FFDEB500EFB59400E79C6B00FFCEA500EFDE
      D6007BA5E700317BE700000000000000000000000000B58C8C008C5A5A008C5A
      5A008C5A5A00B58C8C00FFF7EF00FFE7CE00FFE7C600FFDEC600FFDEC600F7DE
      BD00F7E7D600EFDECE009C6B63000000000000000000DEAD9400F7E7DE00FFFF
      FF00D68C7300A5290000AD311000F7E7DE00F7E7D600AD311000AD290800B563
      4200A59CA5009C8C8400DEAD9400000000000000000000000000000000000000
      00000000000000000000000063005273FF000018D6000018A500000063000000
      00000000000000000000000000000000000000000000000000004284CE00D6C6
      B500FFEFD600FFEFD600FFEFD600F7D6BD00E7AD8400EFB58400FFDEC600FFEF
      DE00FFFFF700BDD6F700428CEF000000000000000000B58C8C00FFFFEF00FFF7
      E700FFF7DE00B58C8C00FFFFF700FFE7CE00FFE7CE00FFE7C600FFDEC600FFDE
      C600F7E7D600EFE7D6009C6B6B0000000000DEAD9400F7E7DE00FFFFFF00E7A5
      8C00B5391000B5310800AD310800F7DECE00F7D6C600AD310800AD310800AD29
      0800B55A4200A59C9C009C8C8400C69C8C000000000000000000000000000000
      0000000000000000000000000000000063005273FF000018D6000010A5000000
      63000000000000000000000000000000000000000000318CFF00BD8C5200FFE7
      B500FFF7EF00FFF7EF00FFEFDE00EFCEB500DE9C6B00EFBD9C00FFEFDE00FFF7
      EF00FFFFFF00FFFFFF00ADC6EF00217BE70000000000B58C8C00FFF7E700F7E7
      CE00F7E7CE00B58C8C00FFFFF700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500F7E7DE00A57B730000000000E7BDAD00FFFFFF00F7DEC600C65A
      2100C6522100BD4A1800B5421000F7DECE00F7D6CE00AD310800AD310800AD31
      0800AD290000B57B6B009C9CA500B5948C000000000000000000000000003963
      CE000084BD00000000000000000000000000000063005273FF000018D6000010
      A50000006300000000000000000000000000000000002984D6008CC67300FFFF
      EF00FFFFF700FFFFF700FFE7DE00E7BD9C00EFAD8400F7DEBD00C6C6BD00E7DE
      DE00FFFFFF00FFFFFF00C6A5AD004284DE0000000000B58C8C00FFF7E700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFEFDE00FFE7D600FFE7D600FFE7D600FFEF
      D600FFF7E700EFE7DE00A57B730000000000E7BDAD00FFFFFF00F7DECE00D673
      3100CE6B2900C65A2900C6522100F7E7DE00F7DECE00AD311000AD310800AD31
      0800AD290800C6948400BDBDC600C6A59C000000000000000000087BBD0000A5
      E70000A5E7000084BD00000000000000000000000000000063005273FF000010
      A50000319C00005AB500000000000000000000000000298C8C007BDE9C00FFFF
      FF00FFFFFF00FFFFFF00F7DECE00E7A58400EFB58C00FFEFDE00F7F7EF00CECE
      CE00D6D6CE00F7F7F7009C94B5003994FF0000000000B58C8C00FFF7EF00FFE7
      CE00FFE7C600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFDE
      DE00D6C6C600BDADAD00B584730000000000DEAD9400F7E7DE00FFFFFF00EFCE
      A500D67B3900CE6B3100D67B4200F7D6BD00E7BD9C00BD421800B5310800AD29
      0800CE8C6B00DEE7E700CEBDB500D6A594000000000000000000000000000084
      BD000084BD00000000000000000000000000000000000000000000006300004A
      AD0000C6FF000094CE000084BD0000000000000000001052D600CEDEF700FFFF
      FF00FFFFFF00FFFFFF00EFD6CE00E7AD8400F7CEAD00EFE7DE00FFFFF700FFFF
      FF00EFEFEF00B5D6FF003994FF000000000000000000B58C8C00FFFFF700FFE7
      CE00FFE7CE00B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00B58C8C00B58C8C00B58C8C000000000000000000DEAD9400EFDED600FFFF
      FF00F7D6B500DE8C4200D67B3900DE8C5200D67B4A00C6522100BD421800D69C
      7B00F7FFFF00E7CECE00DEAD9400000000000000000000000000000000000000
      000000000000000000000084BD00000000000084BD0000000000000000000084
      D6000094CE0000C6FF000084BD0000000000297BEF00315AF700FFFFFF00E7EF
      FF00BDDEFF009CC6FF004AA5FF0073ADEF00DEE7E700DED6CE00C6C6C600E7E7
      E700FFFFFF0073B5FF00298CFF000000000000000000B58C8C00FFFFF700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00EFB56B00C68C7B0000000000000000000000000000000000D6A59400EFDE
      D600FFFFFF00F7D6B500E7944A00FFEFDE00F7E7D600CE632900E7A58400FFFF
      FF00EFDED600D6AD940000000000000000000000000000000000000000000000
      000000000000000000000084BD000084BD000084BD0000000000000000000000
      00000084BD000084BD000000000000000000298CFF0052A5FF006BADFF0073B5
      FF0000000000000000000000000000000000298CFF00B5D6FF00F7F7F700DEDE
      CE00DEEFFF003994FF00000000000000000000000000B58C8C00FFFFFF00FFEF
      DE00FFE7D600B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C
      8C00BD848400000000000000000000000000000000000000000000000000DEAD
      9400EFDED600FFFFFF00F7DEBD00F7C68C00EFB57B00EFBD9400FFFFFF00F7E7
      DE00DEAD94000000000000000000000000000000000000000000000000000000
      0000000000000084BD0000BDFF0000BDFF0000B5F7000084BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000298CFF00BDDE
      FF0073B5FF00298CFF00000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFDEDE00D6C6C600BDADAD00B58473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6A59400EFDED600FFFFFF00FFEFD600F7E7C600FFFFFF00F7E7DE00DEAD
      9C00000000000000000000000000000000000000000000000000000000000000
      00000084BD000084BD000084BD0000ADEF000084C6000084BD000084BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000298CFF0000000000000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00B58C8C00B58C8C00B58C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEAD9400EFDECE00FFFFFF00FFFFFF00F7E7E700DEAD94000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000084BD0000ADEF000084BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEAD9400E7BDAD00E7BDAD00DEAD9400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00BD84840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD420000BD420000BD420000BD420000BD420000BD420000BD420000BD42
      0000BD420000BD420000BD420000BD4200000000000000000000000000000000
      000000000000DEC6B500DEBDB500D6BDB500D6B5AD00D6B5A500DEBDAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD420000FFFFFF00FFFFFF00FFFFEF00FFEFD600FFE7C600FFE7BD00FFDE
      AD00FFDEAD00FFDEA500FFEFC600BD420000000000000000000000000000E7BD
      B500E7D6D600E7E7E700DEE7E700CEC6C600C6BDBD00BDBDC600B5ADAD00BDA5
      9C00DEBDAD000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      0000BD420000FFFFFF00FFF7EF00FFF7E700FFEFD600FFE7C600FFDEB500FFD6
      A500FFCE9C00FFCE9400FFDEAD00BD4200000000000000000000E7C6B500F7EF
      EF00F7FFFF00DEBDB500CE7B5A00CE734A00C6734A00C6735200C69C8C00B5AD
      B500B5A5A500D6B5A50000000000000000000000000000000000004A08000063
      080000A5080000A5080000A50800009C0800009C080000A5080000A5080000A5
      0800006B00000031000000000000000000000000000000000000004A08000063
      080000A5080000A5080000A50800009C0800009C080000A5080000A5080000A5
      0800006B00000031000000000000000000000000000000000000BD420000BD42
      0000BD420000FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDE
      B500FFD6AD00FFCE9C00FFDEAD00BD42000000000000E7BDAD00F7F7EF00FFFF
      FF00D68C6B00BD421000BD4A1800F7DECE00EFC6B500BD421000BD4A1800C67B
      5A00B5B5B500BDADA500DEBDAD000000000000000000004A0800006B100008AD
      180000A51000009C0800009C0800009C0800009C0800009C0800009C080000A5
      080000A50800006B0000004A00000000000000000000004A0800006B100008AD
      180000A51000009C0800009C0800009C0800009C0800009C0800009C080000A5
      080000A50800006B0000004A0000000000000000000000000000BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFDE00FFE7
      CE00FFDEBD00FFD6AD00FFE7B500BD42000000000000F7E7DE00FFFFFF00DE9C
      7B00BD421000BD4A1800BD4A1800E7AD8C00DE9C8400BD4A1800BD4A1800BD42
      1000C6846300BDBDC600CEB5AD000000000000000000004A080010AD310008AD
      290008A51800009C080010AD2100D6F7DE00EFFFEF004AC65200009C0800009C
      0800009C080000A50800004A00000000000000000000004A080010AD310008AD
      290008A51800009C08004AC65200EFFFEF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A0000000000000000000000000000BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEF
      DE00FFE7CE00FFDEBD00FFE7C600BD420000E7C6B500FFFFFF00F7DED600C652
      2100BD4A1800BD4A1800C6522900DE9C8400D68C6300BD4A1800BD4A1800BD4A
      1800BD4A1800CEB5A500CEC6C600DEBDAD00005200000884210010B5420008AD
      290000A51000009C080000A5100084D68C00FFFFFF00F7FFF70042BD4A00009C
      0800009C080000A50800007B080000420000005200000884210010B5420008AD
      290000A5100042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B080000420000BD420000BD420000BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFEFDE00FFE7CE00FFEFD600BD420000EFCEC600FFFFFF00E7A58400C652
      2100C65A2900BD4A1800C65A2900FFFFF700FFEFE700C6522100BD421000BD4A
      1800BD421000CE8C6B00D6DEDE00DEBDAD000052000010A5420018B54A0010AD
      310000A51000009C0800009C0800009C080073D67B00FFFFFF00F7FFF70039BD
      4A00009C080000A5080000940800004200000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A508000094080000420000BD420000FFFFFF00BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFEF00FFFFFF00BD420000EFD6CE00FFFFFF00DE946B00CE63
      2900CE633100C65A2900C6522100E7B59C00FFFFFF00EFCEB500C65A2900BD4A
      1800BD421000CE734A00E7E7EF00DEC6B500006B080021B5520018B55200BDEF
      CE00BDEFC600B5EFC600BDEFC600B5EFC600B5EFC600F7FFF700FFFFFF00EFFF
      EF0052C65A0000A50800009C0800004A0000006B080021B5520018B5520073D6
      9400F7FFF700FFFFFF00F7FFFF00B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500B5E7B50000A50800009C0800004A0000BD420000FFFFFF00BD420000FFFF
      FF00BD420000EFA56300E79C5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C
      5A00E79C5200E79C5200EF9C5A00BD420000EFD6CE00FFFFFF00E7A57300D673
      3900D6733900CE6B3100CE632900C65A2900E7B59C00FFFFFF00F7E7D600C65A
      2900BD421000CE7B5200EFF7FF00E7C6BD000873100039BD6B0029BD5A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADE7B50000A50800009C0800005200000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000A50800009C080000520000BD420000FFFFFF00BD420000FFFF
      FF00FFFFFF00BD420000BD420000BD420000BD420000BD420000BD420000BD42
      0000BD420000BD420000BD42000000000000EFCEC600FFFFFF00EFC69C00D67B
      4200D6844A00DE845200CE733900CE633100C65A2100E7B59C00FFFFFF00DE9C
      7B00B5390800D6947300F7FFFF00E7C6B500007B080052C67B0042C6730052C6
      7B0052CE840052CE840052CE84004AC673007BD69400FFFFFF00FFFFFF0094DE
      A50018AD310000A51800009C080000420000007B080052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00FFFFFF0084DEA50039BD5A0042C65A0042BD5A0042BD
      5A0042BD520000A51800009C080000420000BD420000FFFFFF00BD420000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      EF00FFFFFF00BD4200000000000000000000EFCEC600FFFFFF00FFEFE700DE8C
      4A00F7D6B500FFFFFF00E7A57300CE6B3100C65A2100DE9C7300FFFFFF00E7AD
      8C00C64A1800EFDECE00F7F7EF00E7C6B500007B08004ABD6B0084DEA50021B5
      520018B54A0021B5520021B5520052CE7B00E7F7EF00FFFFFF008CDE9C0010AD
      290008A5210000A51000008C080000420000007B08004ABD6B0084DEA50021B5
      520018B54A0094DEB500FFFFFF00E7F7EF004AC6730010AD310008AD310008AD
      290008A5210000A51000008C080000420000BD420000FFFFFF00BD420000EFA5
      6300E79C5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C5200E79C
      5200EF9C5A00BD420000000000000000000000000000F7E7D600FFFFFF00EFC6
      9C00EFB58400FFFFFF00FFF7F700EFBD9C00EFBD9C00FFF7F700FFFFF700D67B
      4A00DEA57B00FFFFFF00EFD6CE00000000000000000021A53100ADE7C6006BD6
      8C0010AD4A0018B54A0039BD6B00F7FFF700FFFFFF0084DE9C0010AD310008A5
      290008A5210008AD1800006B0800000000000000000021A53100ADE7C6006BD6
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010AD310008A5
      290008A5210008AD1800006B080000000000BD420000FFFFFF00FFFFFF00BD42
      0000BD420000BD420000BD420000BD420000BD420000BD420000BD420000BD42
      0000BD42000000000000000000000000000000000000E7C6BD00FFEFEF00FFFF
      FF00EFC69C00EFC69400FFEFDE00FFF7F700FFF7EF00F7E7CE00E79C7300E7AD
      8400FFFFFF00F7E7E700EFD6CE00000000000000000021A5310052C67300C6F7
      DE0063CE8C0021B5520021B55200ADE7C60094DEB50018B54A0010AD390010AD
      310008B52900089C1800006B0800000000000000000021A5310052C67300C6F7
      DE0063CE8C0021B5520018B54A0094DEB500ADE7C60018B54A0010AD390010AD
      310008B52900089C1800006B080000000000BD420000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFEF00FFFFFF00BD42
      0000000000000000000000000000000000000000000000000000E7C6BD00F7EF
      EF00FFFFFF00F7E7CE00EFC6A500EFC69C00EFBD9400EFBD9400F7DEC600FFFF
      FF00F7EFE700E7C6B50000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630029BD5A0021BD
      4A0010A531000063080000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630029BD5A0021BD
      4A0010A53100006308000000000000000000BD420000EFA56300E79C5A00E79C
      5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C5200E79C5200EF9C5A00BD42
      000000000000000000000000000000000000000000000000000000000000E7C6
      BD00F7E7E700FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7E7
      D600F7E7D6000000000000000000000000000000000000000000000000004ABD
      63004ABD63009CE7B500BDEFD600A5E7C60094E7B5007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000004ABD
      63004ABD63009CE7B500BDEFD600A5E7C60094E7B5007BDE9C004AC67B00189C
      3900189C390000000000000000000000000000000000BD420000BD420000BD42
      0000BD420000BD420000BD420000BD420000BD420000BD420000BD4200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6BD00E7C6BD00EFCEC600EFCEBD00E7C6BD00E7C6BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018A5310039B5520042BD630042BD630029A54A00108C29000000
      00000000000000000000000000000000000000000000ADA5A50084849400BDA5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C4239009439
      39008C313100947B7B00B5BDB500BDBDBD00C6BDBD00BDBDB500B5BDBD00A584
      84008429290084292900943131000000000000000000C68C8400DEA58400DE9C
      7B00DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C
      8400DE9C7B00DE9C8400C6847B00BD7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CA5BD004A7BCE007B84
      AD00BDA5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200C64A4A00C64A
      4A00A542420084636300AD8C8C00DEC6C600FFF7F700FFFFFF00EFF7F700C69C
      9C007B18180084181800B54242009C393900C68C8400CE948400EFB59400FFD6
      9C00FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE
      9400FFD69C00EFB58C00CE8C8400C6847B0000000000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000000000000000000084C6EF0052B5FF004A7B
      CE007B84AD00BDA5A50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200BD4A4A00C64A
      4A00A54242008463630084292900A55A5A00E7D6D600FFFFF700FFFFFF00CEA5
      A5007B18180084181800AD4242009C393900C68C8400E7B58C00C68C8400F7CE
      AD00F7D6AD00F7CEAD00F7D6AD00F7D6AD00F7D6AD00F7D6AD00F7CEAD00F7D6
      AD00EFC6A500C68C8400EFBD9C00C68C840000000000BD4A0000FFFFFF00FFFF
      FF00FFFFFF006BBD5A00FFEFCE00FFEFCE00FFEFCE00B57B4200736B1800FFCE
      A500FFCEA500FFCEA500BD4A00000000000000000000000000007BBDEF0052B5
      FF004A7BCE007B84AD00BDA5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200BD4A4A00C64A
      4A00A5424200946B6B008421210084212100BDADAD00EFEFEF00FFFFFF00DEB5
      B5007B18180084181800AD4242009C393900C68C8400F7D6B500DEA58C00CEA5
      9C00EFDECE00EFDEC600EFDEC600EFDEC600EFDEC600EFDEC600EFDEC600EFDE
      C600CE949400DEAD9400EFDEC600C684840000000000BD4A0000FFFFFF00FFFF
      FF00FFFFFF006BBD5A00FFEFCE00FFEFD600FFEFC6007B736B00084A5A00736B
      5A00D6AD8400FFCEA500BD4A0000000000000000000000000000000000007BBD
      EF0052B5FF004A7BCE007B84AD00BDADB5000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200BD4A4A00C64A
      4A00A54242009C7373008C2929007B18180094848400CED6CE00FFFFFF00DEBD
      BD007B1818007B181800AD3939009C393900C68C8400EFDED600F7D6B500C68C
      7B00DEC6BD00EFE7DE00EFE7D600EFE7D600EFE7D600EFE7D600F7EFDE00D6B5
      AD00CE948400F7E7CE00EFDED600C68C840000000000BD4A000073B5630063B5
      5A0063B55A00399C290063AD4A0063AD4A0063AD4A004A9C420039636B009C63
      6B005A4A310052733100BD4A0000000000000000000000000000000000000000
      00007BBDEF0052B5FF004A7BCE009CA59400BDA5A500C6948400C6948400C694
      8400C69C9400BDA5A500000000000000000000000000AD5A5200BD4A4A00C64A
      4A00AD424200B5737300B57B7B009C6B6B0094737300A58C8C00DEBDBD00D694
      94008C2121008C212100B54242009C393900C68C8C00EFE7DE00FFF7E700F7CE
      AD00BD8C8400EFD6D600F7E7DE00EFE7DE00EFE7DE00F7E7DE00E7CEC600C68C
      8400F7DEC600F7F7EF00F7E7DE00C68C8C0000000000BD4A0000EFF7E700EFF7
      EF00EFF7EF0063B55200DEE7C600EFE7CE00EFE7BD00E7DEA5005A7B3900E794
      9C00A56B6B00634A3900C64A0000000000000000000000000000000000000000
      0000000000008CC6EF00BDC6CE00C6948400D69C9C00F7CEAD00FFEFCE00F7F7
      D600F7DEBD00D6AD9C00C69C94000000000000000000AD5A5200BD4A4A00BD4A
      4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD424200BD424200BD42
      4200BD4A4A00BD4A4A00C64A4A0094393900C68C8C00F7F7EF00FFFFF700D6AD
      A500C68C8400C6949400C6848400C68C8400C68C8400C68C8C00C6949400C684
      8400E7CEC600FFFFFF00F7EFEF00C68C8C0000000000BD4A0000FFFFFF00FFFF
      FF00F7F7FF0063B56300F7F7E700FFFFEF00FFF7E700FFE7C60063AD4200DE9C
      9C00DE949C00B56363006B5A3100000000000000000000000000000000000000
      00000000000000000000CEA5A500EFAD9400FFFFCE00FFFFCE00FFFFDE00FFF7
      EF00FFFFFF00FFFFFF00D6AD9C00C69C940000000000AD5A5200A53931009C42
      3900B56B6B00C68C8C00CE949400CE949400CE949400CE8C8C00CE949400CE94
      9400CE9C9400C6848400BD4A4A0094393900C68C8C00EFD6D600CE949400CEA5
      A500F7EFEF00F7F7F700E7E7E700E7E7E700E7E7E700E7EFEF00EFF7F700DED6
      D600C6949400D6A5A500F7E7E700C68C8C0000000000C64A00008C8CF7004242
      EF003131E7002129C6006363F700A5BDCE00A5D68C0094C67B004AA539009CC6
      7B0084844A0073848C000894CE000018A5000000000000000000000000000000
      00000000000000000000D69C9C00F7CEAD00FFE7B500FFFFCE00FFFFDE00FFF7
      EF00FFFFFF00FFF7F700F7DEBD00C694840000000000AD5A52009C313100DEBD
      BD00FFF7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700FFFFFF00D6ADAD00B54242009C393900BD848400BD949400E7C6C600FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00E7F7F700CEB5B500CE949400BD8484000000000063429C004242CE009494
      B500A59CB500A5A5C6005A5AC6001829BD006B9C9C009CD684004AA53900A5CE
      8C00ADC67B006BADA500005AE7000008A5000000000000000000000000000000
      00000000000000000000C6948400FFEFCE00FFDEAD00FFF7BD00FFFFD600FFFF
      E700FFF7EF00FFFFE700F7F7D600C694840000000000AD5A52009C313100E7CE
      CE00FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700D6ADAD00B54242009C393900B5847B00A5DEE700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00EFFFFF00E7F7
      F700D6EFEF00C6EFF700ADBDC600B57B7B004242FF00525AF700D6D6C600FFEF
      AD00F7BD8400FFC68C00FFFFD6006B6BBD005A52FF00EFEFF7006BBD5A00FFFF
      FF00FFEFDE00FFE7BD005A426B00000000000000000000000000000000000000
      00000000000000000000C6948400FFEFCE00FFE7B500FFFFCE00FFFFCE00FFFF
      D600FFFFD600FFFFD600FFEFCE00C694840000000000AD5A52009C313100E7CE
      C600EFEFEF00CECEC600CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00E7E7E700D6ADAD00B54242009C393900BD847B00B5A5A500FFFFFF00FFFF
      FF00FFFFFF00F7F7FF00E7EFEF00CEE7E700A5CED60094C6CE0084BDC6007BB5
      C6006BADCE0073A5BD00A5848C00BD7B7B004242FF009C9CD600FFFFD600FFFF
      CE00FFF7C600F7D69400EFBD7B00D6C6B5003939CE00B5BDEF007BC65A00FFFF
      F700FFEFD600FFE7BD00B54A0800000000000000000000000000000000000000
      00000000000000000000C6AD9400F7DEBD00FFEFDE00FFE7B500FFF7BD00FFF7
      BD00FFFFCE00FFFFCE00F7CEAD00C694840000000000AD5A52009C313100E7CE
      CE00EFEFEF00D6CECE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6CE
      CE00EFEFEF00D6ADAD00B54242009C39390000000000C6737300C6949400A5DE
      DE008CFFFF007BDEEF0073D6E7006BDEE7006BDEEF006BDEEF006BDEF7006BDE
      FF0084BDD600B58C8C00C67B7B00000000004A4AF700ADBDE700FFFFF700FFFF
      DE008484730031313100524A3900A59494004242D60094423100CE5A0000C652
      0000C6520000C652000000000000000000000000000000000000000000000000
      00000000000000000000CEA5A500D6AD9C00FFFFFF00FFF7EF00FFEFCE00FFDE
      AD00FFE7B500FFFFCE00D69C9C00BDA5A50000000000AD5A52009C313100E7CE
      CE00F7F7EF00DED6D600DEDED600DEDED600DEDED600DEDED600DEDED600DED6
      D600EFEFEF00D6ADAD00B54242009C393900000000000000000000000000B584
      840094B5BD0073F7FF006BF7FF0073F7FF0073F7FF006BF7FF0073E7FF009CAD
      B500C68484000000000000000000000000004242FF00B5B5E700FFFFFF00FFFF
      F700DEDEB5005A635200B5946B00E7CEAD003139E7008C423100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6AD9400D6AD9C00F7DEBD00FFEFCE00FFEF
      CE00F7CEAD00D69C9C00C69484000000000000000000AD5A52009C313100E7CE
      CE00EFEFEF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00E7E7E700DEADAD00B54242009C3939000000000000000000000000000000
      0000C67B7B00AD9C9C0084DEE70073F7FF0073EFFF0084D6E700AD949C00C67B
      7B00000000000000000000000000000000004242FF007B7BE700FFF7EF00FFFF
      FF00FFFFFF00F7F7DE00A5A57B00948CB5002931FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEA5A500C6948400C6948400C694
      8400C69C9400CEA5A500000000000000000000000000AD5A52009C313100E7CE
      C600FFFFFF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEF
      EF00FFFFF700D6ADAD00B54242009C3939000000000000000000000000000000
      00000000000000000000BD848400B5949400B5949400BD848400000000000000
      000000000000000000000000000000000000000000004242FF00847BE700DEDE
      E700EFF7F700EFF7F700A5A5DE003939EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094313100BDA5
      A500C6CEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BD9C9C008C313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003131FF004239
      F7004A4AEF003939EF002929FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B5000000B5000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000848484008484
      84008C8C8C000000000000000000000000000000000000000000000000000000
      0000AD7B6B00AD7B6B00AD7B6B00AD7B6B000000000000000000000000000000
      000000000000000000000000000000000000000000000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B5000000B5000000000000000000000000004A526300FFEF
      C600F7DEB500F7D6AD00F7D6A500EFCE9400EFC68C00EFC68400EFC67B00EFC6
      8400EFC68400F7C68400A5636B00000000000000000000000000000000000000
      00009C9C9C009C9C9C00D6D6D6009494940039393900525252009C949400C6C6
      C600D6D6D600848484000000000000000000000000000000000000000000AD7B
      6B00DEA57B00EFC69400EFC6A500DEB58C00AD7B6B00AD7B6B00AD7B6B00AD7B
      6B0000000000000000000000000000000000000000000000B5000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B5000000000000000000000000004284B500186BC600636B
      8400F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B000000000000000000000000009C9C9C009C9C
      9C00FFFFFF00FFFFFF00D6D6D6009C9C9C004242420018181800181818003131
      310063636300848484008C8C8C00000000000000000000000000AD7B6B00E7B5
      8C00EFB57B00EFC69C00EFD6B500F7CE9C00C69C73007B4A42008C525200AD7B
      6B00AD7B6B00AD7B6B000000000000000000000000000000B5000000B5000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      B5000000B500000000000000000000000000000000000000000031A5FF001073
      D6006B6B8400F7DEBD00F7D6B500EFD6AD00EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B0000000000948C8C009C9C9C00F7EFEF00FFFF
      FF00EFEFEF00CECECE009C9C9C008C8C8C009494940084848400636363003939
      39001821210021182100737373000000000000000000AD7B6B00EFC69400F7C6
      8C00EFB57B00EFC6A500F7E7CE00F7D6B500C69C84007B4A4A007B4A4200CEA5
      7B00EFC68C00D6A58400AD7B6B000000000000000000000000000000D6000000
      BD000000B5000000B500000000000000000000000000000000000000B5000000
      B500000000000000000000000000000000000000000000000000A5635A0031A5
      FF001073D6005A638400F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B00000000009C9C9C00EFE7E700E7E7E700BDBD
      BD00A5A5A500B5B5B500C6C6C600A5A5A5009494940094949400949494009C9C
      9C008C8C8C006B6B6B008484840000000000AD7B6B00F7CE9C00FFD69400F7C6
      8C00EFB57B00F7CEAD00FFEFDE00FFE7C600CEA58C007B4A42007B4A4A00CEA5
      7B00EFBD8C00E7B58C00AD7B6B00000000000000000000000000000000000000
      00000000B5000000B5000000B500000000000000B5000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000A5736B00FFFF
      F70031A5FF00427BAD008C635A00AD7B730094635A00AD7B6B00CEA58400EFC6
      9400EFC68C00EFC68400A5636B000000000094949400ADADAD00A5A5A500B5AD
      AD00CECECE00D6D6D600EFEFEF00F7EFF700DEDEDE00C6C6C600ADADAD009C9C
      9C0094949400949494008C8C8C0000000000AD7B6B00FFDE9C00F7D69400F7C6
      8C00F7B57300F7D6AD00FFFFF700FFF7DE00CEAD9C00734242007B4A4200CEA5
      7B00EFBD8C00DEB58400AD7B6B00000000000000000000000000000000000000
      0000000000000000B5000000C6000000C6000000CE000000B500000000000000
      0000000000000000000000000000000000000000000000000000A5736B00FFFF
      FF00FFF7E700AD8C8C00B58C8400DEBDA500EFD6B500D6B59C00B58C7300CEA5
      8400EFC69400F7CE8C00A5636B0000000000948C8C00ADADAD00CEC6C600CECE
      CE00CECECE00E7E7E700D6CECE00A5ADA500BDBDBD00CECECE00D6D6D600D6D6
      D600C6C6C600B5B5B5009C94940000000000AD7B6B00F7D69C00FFD69400E7C6
      9400B5A59400F7D6AD00FFFFFF00FFFFEF00DEC6B50094635A0084524A00CEA5
      8400EFBD8C00DEB58400AD7B6B00000000000000000000000000000000000000
      000000000000000000000000C6000000C6000000DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000BD846B00FFFF
      FF00FFF7F700AD847B00DEC6B500F7E7CE00F7E7C600FFFFF700D6B59C00AD7B
      6B00EFCE9C00F7CE9400A5636B0000000000000000009C9C9C00D6D6D600CECE
      CE00DEDEDE00CEC6C600B5B5B500A5D6A500BDC6BD00C6A5A500ADA5A500ADA5
      A500B5B5B500C6C6C600ADA5A50000000000AD7B6B00FFDE9C00D6CEA50052A5
      E7002184F70084ADDE00FFFFF700FFFFEF00FFF7E700F7E7CE00E7C6A500E7C6
      9C00E7BD9400DEB58400AD7B6B00000000000000000000000000000000000000
      0000000000000000B5000000D6000000CE000000DE000000EF00000000000000
      0000000000000000000000000000000000000000000000000000BD846B00FFFF
      FF00FFFFFF0094636300F7EFE700F7EFDE00F7E7CE00FFFFEF00EFD6B5009463
      5A00F7D6A500F7D6A500A5636B000000000000000000000000009C9C9C00C6BD
      BD00ADADAD00B5B5B500E7E7E700F7F7F700EFEFEF00EFE7DE00DEDEDE00CECE
      CE00B5B5B500949494000000000000000000AD7B6B009CC6C60042B5FF0031AD
      FF00299CFF001884FF0084BDF700FFFFEF00FFFFEF00FFF7E700FFE7CE00F7D6
      B500EFCEA500DEB58C00A57B7B00000000000000000000000000000000000000
      00000000E7000000DE000000D60000000000000000000000E7000000EF000000
      0000000000000000000000000000000000000000000000000000D6946B00FFFF
      FF00FFFFFF00B58C8400DECEC600FFEFE700FFEFDE00FFFFD600DEBDA500AD7B
      7300F7DEB500EFCEA500A5636B00000000000000000000000000000000009C9C
      9C00DEDEDE00CECECE009C9CA500BDBDC600D6D6D600D6DEDE00D6D6D600C6C6
      C600ADADAD00000000000000000000000000429CF70039A5FF0042ADFF0042B5
      FF0039ADFF002994FF001884FF008CC6F700FFFFEF00FFF7EF00FFEFDE00FFE7
      CE00E7CEB500948C94009C7B8400000000000000000000000000000000000000
      FF000000DE000000EF00000000000000000000000000000000000000FF000000
      F700000000000000000000000000000000000000000000000000D6946B00FFFF
      FF00FFFFFF00D6BDBD00BD949400DECEC600F7EFDE00DEC6B500B58C8400B58C
      7B00DECEB500B5AD9400A5636B00000000000000000000000000000000000000
      0000FFE7E700FFE7D600EFCEBD00E7C6BD00E7CEC600DED6CE00D6CECE009494
      94000000000000000000000000000000000000000000429CFF0042A5FF0042B5
      FF0042B5FF0039A5FF002994FF001884FF008CC6F700FFFFEF00FFFFF700D6D6
      D600737BAD007B739400000000000000000000000000000000000000F7000000
      F7000000FF000000000000000000000000000000000000000000000000000000
      F7000000F7000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00D6BDBD00B58C840094636300AD847B00CEA59C00A56B
      5A00A56B5A00A56B5A00A5636B00000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFB59C00000000000000
      000000000000000000000000000000000000000000000000000042A5FF0042AD
      FF0042B5FF0042B5FF0031A5FF002994FF001884FF0094C6FF00B5CEE7004A6B
      BD00526BA500000000000000000000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000F70000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD00A56B
      5A00E79C5200E78C3100B56B4A00000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6B500FFBDA500F7AD9400000000000000
      00000000000000000000000000000000000000000000000000000000000042A5
      FF0042ADFF0042B5FF0042ADFF00319CFF00218CFF001884FF00316BE7003163
      C600000000000000000000000000000000000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600A56B
      5A00FFB55A00BD7B5A0000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6B500FFBDA500FFB59C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042A5FF0042ADFF0042B5FF0039ADFF003994F7001831B5003952DE000000
      0000000000000000000000000000000000000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00F7F7EF00DEC6C600A56B
      5A00C6846B00000000000000000000000000000000000000000000000000CE9C
      9C00FFE7D600FFDECE00FFCEBD00FFC6B500FFBDA500FFAD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042A5FF0042B5FF00000000000000000018109400394ADE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00A56B
      5A0000000000000000000000000000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018189C00394ADE000000
      000000000000000000000000000000000000000000000000000000000000A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00000000000000
      000000000000000000000000000000000000000000000000000000000000A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00000000000000
      000000000000000000000000000000000000000000000000000000000000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000000000000000
      0000000000000000000000000000000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B0000000000000000000000000000000000A563
      6B00F7DEC600F7DEB500EFCEA500E7BD9C00D6AD8C00CE9C8400A5636B00A563
      6B00A5636B00A5636B000000000000000000000000000000000000000000A563
      6B00EFCEB500FFE7C6009CC68400C6CE9400E7CEA500EFC69C00A5636B00A563
      6B00A5636B00A5636B000000000000000000000000000000000000000000BD4A
      0000FFF7D600FFEFC600FFF7BD00ADA5C6000021F700FFDE9400BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000000000000000000000000000B5948400FFEF
      C600F7DEB500F7D6AD00F7D6A500EFCE9400EFC68C00EFC68400EFC67B00EFC6
      8400EFC68400F7C68400A5636B0000000000000000000000000000000000A563
      6B00F7DEC600F7E7C600F7DEBD00F7DEB500DECEB500F7D6A500EFCE9C00EFC6
      9400E7BD8400DEAD7B00A5636B00A5636B00000000000000000000000000A563
      6B00EFCEB500F7E7C600109429001894310039A54200D6CE9C00FFD6A500E7CE
      9400D6C68400DEC68400A5636B00A5636B00000000000000000000000000BD4A
      00000021F7000021F7000021F7000021F7000021F700FFDEA500F7D69C00BDAD
      AD000021F700FFDE8400FFD68C00BD4A00000000000000000000B5948400FFEF
      CE00F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B0000000000000000000000000000000000A573
      6B00F7E7CE00F7E7C600F7DEBD00005AFF000863F700005AFF004284DE00E7C6
      9C00EFCE9400F7CE8C00F7CE8400A5636B00000000000000000000000000A573
      6B00F7CEB500FFE7CE00189C3100008C210010942900C6C69400FFD6AD00BDBD
      8400189431000894290094B56300A5636B00000000000000000000000000BD4A
      00009CA5E7008494DE007384DE00425AE7000021F7000021F7000021F7000021
      F7000021F7000021F7000021F700BD4A00000000000000000000B5948C00FFEF
      DE00F7E7C600F7DEBD00F7D6B500EFD6AD00EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B00000000000000000029A5CE0029A5CE00A573
      6B00F7E7D600F7E7CE00005AFF00005AFF00005AFF00005AFF00005AFF00106B
      EF00EFCE9400EFC69400EFC68C00A5636B000000000029A5CE0029A5CE00A573
      6B00F7CEB500FFEFD600BDD6A50042A552005AAD5A00EFD6AD00FFD6AD00CEC6
      9400299C3900008C210084B56300A5636B00000000000894CE000894CE00BD4A
      0000FFF7DE00FFF7CE00FFF7C600B5ADCE000021F700FFF7A500E7CEAD009C94
      BD000021F7008C94B5006B73CE00BD4A00000000000000000000BD948C00FFF7
      E700F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B000000000029A5CE0063CEEF007BDEFF00BD84
      6B00F7E7DE00FFE7D6004A94EF00005AFF00639CDE00E7D6B500005AFF00005A
      FF00EFCE9C00EFCE9C00F7CE9400A5636B0029A5CE0063CEEF007BDEFF00BD84
      6B00EFD6BD00FFEFDE00FFE7DE00D6D6AD0052AD5A00EFD6B500FFDEB500F7D6
      AD0042A54A008CB56B00EFCE9400A5636B000894CE0063CEEF007BDEFF00BD4A
      00004263F700637BEF007B8CDE005A6BE7000021F700BDB5C600C6B5BD00A59C
      BD000021F700FFE78C00FFE79400BD4A00000000000000000000C69C9400FFFF
      F700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6AD00EFCE9C00EFC6
      9400EFC68C00EFC68400A5636B000000000029A5CE007BDEF700A5EFFF00BD84
      6B00FFEFE700FFEFDE00005AFF00005AFF005294E700C6C6C600005AFF00005A
      FF00F7CEA500EFCE9C00F7CE9C00A5636B0029A5CE007BDEF700A5EFFF00BD84
      6B00F7D6C600FFF7E700F7E7D600FFE7D60094C684008CBD7B00CECEA5008CBD
      7B0063AD5A00F7CEA500F7CE9C00A5636B000894CE007BDEF700A5EFFF00BD4A
      00000021F7000021F7000021F7000021F7000021F7000021F7000021F7000021
      F7000021F7000021F7000021F700BD4A00000000000000000000C6A59C00FFFF
      FF00FFF7E700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6A500EFCE
      9C00EFC69400F7CE8C00A5636B000000000029A5CE0084DEF700C6F7FF00D694
      6B00FFF7E700FFF7E70084ADE700005AFF00005AFF00005AFF00005AFF001873
      EF00F7D6AD00F7D6A500F7D69C00A5636B0029A5CE0084DEF700C6F7FF00D694
      6B00EFD6C600FFF7EF00FFEFDE00FFE7D600EFDEC60031A542001094290039A5
      4A00E7CEA500F7D6AD00F7D6A500A5636B000894CE0084DEF700C6F7FF00BD4A
      0000FFFFFF00FFFFEF00FFFFE700B5BDE7000021F700FFFFBD00FFE7B500B5AD
      C6000021F700D6C6AD00ADA5C600BD4A00000000000000000000CEAD9C00FFFF
      FF00FFF7F700FFEFE700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6
      A500EFCE9C00F7CE9400A5636B000000000029A5CE0084DEF700CEFFFF00DE9C
      7300FFFFF700FFFFF700FFEFE700217BF700106BFF000063FF001873F700DECE
      BD00F7D6B500F7D6AD00F7D6A500A5636B0029A5CE0084DEF700CEFFFF00DE9C
      7300F7DEC600FFFFF700FFEFE700FFEFDE00E7E7C600299C3900008C1800319C
      4200E7D6AD00F7D6AD00F7D6A500A5636B000894CE0084DEF700CEFFFF00BD4A
      0000EFC69C00EFC6A500FFDEAD009494CE000021F700FFFFCE00FFEFCE00C6BD
      DE000021F700FFFFB500FFF7C600BD4A00000000000000000000CEAD9C00FFFF
      FF00FFFFFF00FFF7F700FFEFE700F7EFDE00F7E7CE00F7E7C600F7DEBD00F7D6
      B500F7D6A500F7D6A500A5636B000000000029A5CE0084DEF700CEFFFF00E7AD
      7B00F7E7DE00FFEFE700F7EFE700F7EFDE00F7E7D600F7E7D600F7E7CE00F7DE
      C600F7DEBD00F7D6B500F7D6AD00A5636B0029A5CE0084DEF700CEFFFF00E7AD
      7B00F7E7D600FFFFFF00FFFFF700FFF7EF00F7EFDE008CC68C006BBD730094C6
      8C00EFDEBD00F7DEB500F7DEB500A5636B000894CE0084DEF700CEFFFF00BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A00000000000000000000D6B5A500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7CE00F7DEC600F7DE
      BD00F7DEB500EFCEA500A5636B000000000029A5CE0084DEF700CEFFFF00E7AD
      7B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D694
      6B00D6946B00D6946B00D6946B00A5636B0029A5CE0084DEF700CEFFFF00E7AD
      7B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D694
      6B00D6946B00D6946B00D6946B00A5636B000894CE0084DEF700CEFFFF00BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A00000000000000000000DEB5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFE7D600FFEF
      CE00DECEB500B5AD9400A5636B000000000029A5CE0084E7FF00D6FFFF00C6DE
      DE0094C6C6008CC6C60073BDC60029A5CE000000000000000000000000000000
      00000000000000000000000000000000000029A5CE0084E7FF00D6FFFF00C6DE
      DE0094C6C6008CC6C60073BDC60029A5CE000000000000000000000000000000
      0000000000000000000000000000000000000894CE0084E7FF00D6FFFF00C6DE
      DE0094C6C6008CC6C60073BDC6000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEB5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7E700EFDECE00B58C
      7B00A57B6B009C736300A5636B000000000029A5CE007BDEF700B5E7F70094E7
      FF0063DEFF005ADEFF0052DEFF0029A5CE000000000000000000000000000000
      00000000000000000000000000000000000029A5CE007BDEF700B5E7F70094E7
      FF0063DEFF005ADEFF0052DEFF0029A5CE000000000000000000000000000000
      0000000000000000000000000000000000000894CE007BDEF700B5E7F70094E7
      FF0063DEFF005ADEFF0052DEFF000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7BDA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD00AD73
      5A00E79C5200E78C3100B56B4A000000000029A5CE0029A5CE0029A5CE0029A5
      CE0029A5CE0029A5CE0029A5CE0029A5CE000000000000000000000000000000
      00000000000000000000000000000000000029A5CE0029A5CE0029A5CE0029A5
      CE0029A5CE0029A5CE0029A5CE0029A5CE000000000000000000000000000000
      0000000000000000000000000000000000000894CE000894CE000894CE000894
      CE000894CE000894CE000894CE000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7BDA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600BD84
      6300FFB55A00BD7B5A00000000000000000029A5CE0029A5CE0063CEEF0063D6
      EF005AD6F7004AC6EF00219CCE0029A5CE000000000000000000000000000000
      00000000000000000000000000000000000029A5CE0029A5CE0063CEEF0063D6
      EF005AD6F7004AC6EF00219CCE0029A5CE000000000000000000000000000000
      0000000000000000000000000000000000000894CE000894CE0063CEEF0063D6
      EF005AD6F7004AC6EF000894CE000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7BDA500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00F7F7EF00DEC6C600B57B
      6300C6846B000000000000000000000000000000000029A5CE0029A5CE0029A5
      CE0029A5CE00299CCE0029A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029A5CE0029A5CE0029A5
      CE0029A5CE00299CCE0029A5CE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000894CE000894CE000894
      CE000894CE000894CE000894CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFC6AD00EFCE
      B500EFCEB500EFCEB500EFCEB500EFCEB500EFCEB500EFCEB500E7C6B500A56B
      5A0000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000000100000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE7FFE7FC001FFFFFC7FFE3FC001E007
      F87FFE1FC001DFFBF07FFE0FC001DFFBE0000007C001DC3BC0000003C001DBDB
      80000001D001D7EB00000000D001D00B00000000D001D7EB80000001D001DBDB
      C0000003D001DC3BE0000007D801DFFBF07FFE0FDE41D81BF87FFE1FDFC3E207
      FC7FFE3FC007FC3FFE7FFE7FC00FFFFFFFFFFF7FFFFFFF80FFFFFE3FFFFFFF80
      FFFFFC1FF80FFF80FDFFF80FF80FFF80F9FFF007C001FF80F1FFE003C001FF80
      E003C001E003FFB0C003C001F00700B9C003F007C0010083E003E003C00100E3
      F1FFC001E00300C1F9FFC001F0074080FDFFF80FF80F40E3FFFFF80FFC1F60E3
      FFFFFFFFFE3F79C3FFFFFFFFFF7F0307FFC7FFFFFFFFFFFF0003FFFFFFFFFFFF
      0003FFFFFFFFFFFF0003BDFFFFBDFFBF0003B9FFFF9DFF9F0003B1FFFF8DFF8F
      0003A003C005C00700038003C001C00300038003C001C0038187A003C005C007
      C3C7B1FFFF8DFF8FFE44B9FFFF9DFF9FFC00BDFFFFBDFFBFFC00FFFFFFFFFFFF
      FC01FFFFFFFFFFFFFE43FFFFFFFFFFFFFFFFF81FE000FFFFF80FF81FE000FFFF
      F003F81FE000FFFFE003F81FE00080018000FC3F000080010000FC3F00008001
      0000FC3F000080010000FC3F000080010000FC3F000080010000FC3E00008001
      0000981C000080018001000000008001F80F000100008001F80F000300018001
      F81F0007E003FFFFF83F981FE007FFFFFC00FE3FFFFBFCFF0000E007FFF1FC0F
      0000E007FFE0FC0300008003FFC1FC0300008001FF83F00100008001F307E000
      00008001F20FC00000008001F01F800100008001C03F00010000C003C07F0003
      0007E007001F00030007F81F001F00070007F81FC0FF000F000FF81FC0FF801F
      001FF81FF3FFC03F003FFC3FF3FFE07FFFFFFE1FFE7FE000FF9FFC0FF07FE000
      FC03FC0FC001E000FC03FC0FC001E000F800DC0EC001E000F800E805C0010000
      F800F003C0010000F801B003C00100008003C000C00100008003E001C0010000
      801FC000C0010000001FA001C0010000001FF003C0010000803FF003C0010001
      C07FCC0CF001E003E0FFFFFFFC7FE007C001FFFFFE3FFFFFC0013FFFE007FFFF
      C0011FFFE007FC3FC0010FF38003F81FC00100338001F00FC001003F8001E007
      C0011C738001C003C00118F38001C003C00111F98001C003C001039CC003C003
      C001079CE007C003C0010F9CF81FE007C0011FC0F81FF00FC0033FFFF81FF81F
      C0077FFFF81FFFFFC00FFFFFFC3FFFFFFFFF800080018001003F000000000000
      001F000000000000001F000000000000801F000000000000801F000000000000
      C03F000000000000E07F000000000000C07F0000000000008041000000000000
      80550000000000008049000000000000805D000000000000C0C0000000000000
      E1FE000000000000FFFF800080018001FFFFF81FE07FFFFF8FFFE007C01FE03F
      807FC003C00FC01F800FC003C007C01F80078001C007C01F80078001C007C01F
      80038001C007C01F80038001C007C01F80018001E007C0038001C003FC07C001
      8001C003FF9FC0018003E007F39FC0008007F00FF39FC000E3C7FC3FF39FC000
      FE0FF81FF83FC000FFFFF81FFC7FE001C387E0018007FF80D937C0010007FF80
      DD7780010007FF80CD6780010007FF80E10F80010007FF80F01F80010007FF80
      FC7F80010007FF80F83F800100070081F81F800100070083F01F8003000700E3
      E10F8003000300C1E38F800300010080E38F8003000000E3E7CF8003000000E3
      EFEFC007001001C3FFFFE00F80390307FC3FF3FFFFFFF801F81FE1FFFFFFF801
      F00FE0FFFC1FF801E007F07FF00FF801C003F83FC00380018001FC1FC0018001
      0000FE0F800080010000E707800080010000C383800080010000E7C180018001
      8001FD6100018003C003FC730F038007E007F83FFFC3801FF00FF01FFFF7801F
      F81FFC7FFFFF803FFC3FFEFFFFFF807FF000F81FF81FF81FF000E007E007E007
      F000C003C003C003C000800180018001C000800180018001C000000000000000
      0000000000000000000000000000000000000000000000000001000000000000
      000300000000000000038001800180010007800180018001000FC003C003C003
      000FE007E007E007801FF81FF81FF81F8FFFC0018000FFFF87FF800000008001
      83FF800000008001C1FF800000008001E0FF800000008001F003800000008001
      F801800000008001FC00800000008000FC00800000008000FC00800000000001
      FC00800000000001FC00800080010003FC008000E007003FFE018000F00F007F
      FF038000FC3F80FFFFFFC001FFFFC1FFFFFCC001FDC7F0FF9FF9C001F003E00F
      8FF38001C001C00387E7C00100018001C3CFC00100010001F11FC00100010001
      F83FC00100010001FC7FC00180010001F83FC001C0030001F19FC001E0070001
      E3CFC001F00F8003C7E7C001F03FC0078FFBC001F03FE00F1FFFC003F03FF01F
      3FFFC007E03FF99FFFFFC00FE07FFF9FE03FE03FE03FC001E003E003E001C001
      E000E000E000C001E000E000E000C001800080008000C001000000000000C001
      000000000000C001000000000000C001000000000000C001000000000000C001
      000000000000C00100FF00FF00FFC00100FF00FF00FFC00100FF00FF00FFC003
      00FF00FF00FFC00781FF81FF81FFC00F00000000000000000000000000000000
      000000000000}
  end
  object dxBarManager1: TdxBarManager
    AutoHideEmptyBars = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      #24037#20855#26639)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = ImageListMainForm
    ImageOptions.LargeImages = ImageListMainForm
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    Style = bmsOffice11
    UseSystemFont = False
    Left = 600
    Top = 279
    DockControlHeights = (
      0
      0
      53
      0)
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #24037#20855#26465
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 27
      DockingStyle = dsTop
      FloatLeft = 1010
      FloatTop = -3
      FloatClientWidth = 79
      FloatClientHeight = 328
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'barbtnNew'
        end
        item
          Visible = True
          ItemName = 'dxBarbtnEdit'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarBtnFirst'
        end
        item
          Visible = True
          ItemName = 'dxBarBtnPrior'
        end
        item
          Visible = True
          ItemName = 'dxBarbtnNext'
        end
        item
          Visible = True
          ItemName = 'dxBarbtnlast'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbarbtnStart'
        end
        item
          Visible = True
          ItemName = 'dxBarbtnForbit'
        end
        item
          Visible = True
          ItemName = 'btn_Print'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarButton9'
        end>
      OldName = 'LargeButton'
      OneOnRow = True
      Row = 1
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #33756#21333#26639
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 209
      FloatTop = 96
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem7'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem8'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem9'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = #20445#23384
      Category = 0
      Visible = ivAlways
      ImageIndex = 9
      OnClick = dxBarButton2Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #21024#38500
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      OnClick = dxBarButton4Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #23457#26680
      Category = 0
      Visible = ivAlways
      ImageIndex = 28
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end>
    end
    object dxBarButton5: TdxBarButton
      Caption = #23457#26680
      Category = 0
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #21453#23457#26680
      Category = 0
      Visible = ivAlways
      OnClick = dxBarButton6Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #25171#21360
      Category = 0
      Visible = ivAlways
      ImageIndex = 44
      ItemLinks = <>
    end
    object dxBarButton7: TdxBarButton
      Caption = #35774#35745#27169#29256
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Caption = #25171#21360#39044#35272
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton9: TdxBarButton
      Caption = #36820#22238
      Category = 0
      Visible = ivAlways
      ImageIndex = 38
      OnClick = dxBarButton9Click
    end
    object b_system: TdxBarButton
      Caption = #31995#32479'(&S)'
      Category = 0
      Hint = #31995#32479'(S)'
      Visible = ivAlways
    end
    object B_tool: TdxBarButton
      Caption = #25805#20316'(&P)'
      Category = 0
      Hint = #25805#20316'(P)'
      Visible = ivAlways
    end
    object B_Help: TdxBarButton
      Caption = #24110#21161'(&H)'
      Category = 0
      Hint = #24110#21161'(H)'
      Visible = ivAlways
    end
    object barbtnNew: TdxBarButton
      Caption = #26032#22686
      Category = 0
      Hint = #26032#22686
      Visible = ivAlways
      ImageIndex = 3
      LargeImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = barbtnNewClick
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #26597#35810'(&F)'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end>
    end
    object dxBarButton11: TdxBarButton
      Caption = #29289#26009#23646#24615
      Category = 0
      Hint = #29289#26009#23646#24615
      Visible = ivAlways
      ImageIndex = 17
      LargeImageIndex = 17
      ShortCut = 119
      OnClick = dxBarButton11Click
    end
    object dxBarBntAddRow: TdxBarButton
      Caption = #26032#22686#20998#24405#34892
      Category = 0
      Visible = ivAlways
      ImageIndex = 17
      LargeImageIndex = 17
      ShortCut = 45
    end
    object bb_exit: TdxBarButton
      Caption = #36864#20986
      Category = 0
      Hint = #36864#20986
      Visible = ivAlways
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = #31995#32479'(&S)'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bt_sendMsg'
        end
        item
          Visible = True
          ItemName = 'dxBarFindEnviron'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end>
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = #25805#20316'(&P)'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'btn_Print'
        end>
    end
    object dxBarSubItem9: TdxBarSubItem
      Caption = #24110#21161'(&H)'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end>
    end
    object dxBarButton16: TdxBarButton
      Caption = #36864#20986
      Category = 0
      Hint = #36864#20986
      Visible = ivAlways
      ImageIndex = 38
      LargeImageIndex = 38
      ShortCut = 16453
    end
    object dxBarButton17: TdxBarButton
      Caption = #26032#22686
      Category = 0
      Hint = #26032#22686
      Visible = ivAlways
      ImageIndex = 3
      LargeImageIndex = 3
      ShortCut = 16462
      OnClick = barbtnNewClick
    end
    object dxBarButton18: TdxBarButton
      Caption = #20445#23384
      Category = 0
      Visible = ivAlways
      ImageIndex = 9
      LargeImageIndex = 9
      ShortCut = 16467
    end
    object dxBarButton20: TdxBarButton
      Caption = #21024#38500
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      LargeImageIndex = 4
      ShortCut = 16452
      OnClick = dxBarButton4Click
    end
    object dxBarButton21: TdxBarButton
      Caption = #23457#26680
      Category = 0
      Visible = ivAlways
      ImageIndex = 28
      ShortCut = 16449
      OnClick = dxBarButton5Click
    end
    object dxBarButton23: TdxBarButton
      Caption = #25171#21360#35774#35745
      Category = 0
      Hint = #25171#21360#35774#35745
      Visible = ivAlways
      ImageIndex = 45
      LargeImageIndex = 45
      ShortCut = 16468
    end
    object dxBarButton24: TdxBarButton
      Caption = #25171#21360#39044#35272
      Category = 0
      Hint = #25171#21360#39044#35272
      Visible = ivAlways
      ImageIndex = 8
      LargeImageIndex = 8
      ShortCut = 16464
    end
    object dxBarButton25: TdxBarButton
      Caption = #24110#21161
      Category = 0
      Hint = #24110#21161
      Visible = ivAlways
      ImageIndex = 13
      LargeImageIndex = 13
      ShortCut = 112
    end
    object dxBarCodeSM1: TdxBarButton
      Category = 0
      Visible = ivAlways
      ShortCut = 115
    end
    object dxBarFindEnviron: TdxBarButton
      Caption = #26816#27979#29615#22659
      Category = 0
      Hint = #26816#27979#29615#22659
      Visible = ivAlways
      ImageIndex = 8
      ShortCut = 49219
      OnClick = dxBarFindEnvironClick
    end
    object bt_CtrlB: TdxBarButton
      Caption = #23450#20301#21040#26465#30721#26694
      Category = 0
      Hint = #23450#20301#21040#26465#30721#26694
      Visible = ivAlways
      ShortCut = 16450
    end
    object bt_CtrlJ: TdxBarButton
      Caption = #23450#20301#21040#22522#25968#26694
      Category = 0
      Hint = #23450#20301#21040#22522#25968#26694
      Visible = ivAlways
      ShortCut = 16458
    end
    object bt_sendMsg: TdxBarButton
      Caption = #21457#36865#28040#24687'...'
      Category = 0
      Hint = #21457#36865#28040#24687'...'
      Visible = ivAlways
      ImageIndex = 47
      LargeImageIndex = 47
      OnClick = bt_sendMsgClick
    end
    object dxBarBtnFirst: TdxBarButton
      Caption = #31532#19968
      Category = 0
      Hint = #31532#19968
      Visible = ivAlways
      ImageIndex = 49
      LargeImageIndex = 49
      OnClick = dxBarBtnFirstClick
    end
    object dxBarBtnPrior: TdxBarButton
      Caption = #21069#19968
      Category = 0
      Hint = #21069#19968
      Visible = ivAlways
      ImageIndex = 52
      LargeImageIndex = 52
      OnClick = dxBarBtnPriorClick
    end
    object dxBarbtnNext: TdxBarButton
      Caption = #21518#19968
      Category = 0
      Visible = ivAlways
      ImageIndex = 51
      LargeImageIndex = 51
      OnClick = dxBarbtnNextClick
    end
    object dxBarbtnlast: TdxBarButton
      Caption = #26368#21518
      Category = 0
      Hint = #26368#21518
      Visible = ivAlways
      ImageIndex = 50
      LargeImageIndex = 50
      OnClick = dxBarbtnlastClick
    end
    object dxBarbtnEdit: TdxBarButton
      Caption = #20462#25913
      Category = 0
      Hint = #20462#25913
      Visible = ivAlways
      ImageIndex = 22
      LargeImageIndex = 22
      PaintStyle = psCaptionGlyph
      OnClick = dxBarbtnEditClick
    end
    object btn_Print: TdxBarButton
      Caption = #25171#21360
      Category = 0
      Hint = #25171#21360
      Visible = ivAlways
      ImageIndex = 44
      LargeImageIndex = 44
      PaintStyle = psCaptionGlyph
      ShortCut = 16464
    end
    object dxBarButton3: TdxBarButton
      Caption = #21453#23457#26680
      Category = 0
      Hint = #21453#23457#26680
      Visible = ivAlways
      ImageIndex = 26
      LargeImageIndex = 26
      ShortCut = 16466
      OnClick = dxBarButton6Click
    end
    object dxbarbtnStart: TdxBarButton
      Caption = #21551#29992
      Category = 0
      Hint = #21551#29992
      Visible = ivAlways
      ImageIndex = 58
      LargeImageIndex = 58
      PaintStyle = psCaptionGlyph
      OnClick = dxbarbtnStartClick
    end
    object dxBarbtnForbit: TdxBarButton
      Caption = #31105#29992
      Category = 0
      Hint = #31105#29992
      Visible = ivAlways
      ImageIndex = 59
      LargeImageIndex = 59
      PaintStyle = psCaptionGlyph
      OnClick = dxBarbtnForbitClick
    end
  end
  object actlst1: TActionList
    Images = ImageListMainForm
    Left = 640
    Top = 288
    object actNewBill: TAction
      Caption = #26032#22686'&I'
      ImageIndex = 3
    end
    object actSaveBill: TAction
      Caption = #20445#23384'&S'
      ImageIndex = 9
    end
    object actCancel: TAction
      Caption = #21462#28040'&C'
      ImageIndex = 23
    end
    object actDelete: TAction
      Caption = #21024#38500'&D'
      ImageIndex = 4
    end
    object actAudit: TAction
      Caption = #23457#26680'&R'
      ImageIndex = 28
    end
    object actUnAudit: TAction
      Caption = #21453#23457#26680'&U'
      ImageIndex = 26
    end
    object actReportDesign: TAction
      Caption = #35774#35745#27169#29256'&T'
      ImageIndex = 45
    end
    object actReportView: TAction
      Caption = #25171#21360#39044#35272'&P'
      ImageIndex = 8
    end
    object actQuit: TAction
      Caption = #36820#22238'&Q'
      ImageIndex = 38
    end
    object actDetailAdd: TAction
      Caption = #26032#22686#20998#24405#34892
      ImageIndex = 17
    end
    object actDetailDel: TAction
      Caption = #21024#38500
    end
    object actSetBillStatus: TAction
      Caption = #35774#32622#21333#25454#29366#24577
      OnExecute = actSetBillStatusExecute
    end
    object actGetBillStatus: TAction
      Caption = #33719#21462#21333#25454#29366#24577
    end
    object actToExcel: TAction
      Caption = #23548#20986'EXCEL'
    end
    object actImportExcel: TAction
      Caption = #23548#20837'EXCEL'
    end
    object actF11: TAction
      Caption = #24555#36895#24405#20837'(F11)'
    end
    object actCodeSM_F12: TAction
      Caption = #26465#30721#25195#25551#24405#20837
    end
    object Ctrl_Q_downCopy: TAction
      Caption = 'Ctrl_Q_downCopy'
    end
    object actFirst: TAction
      Caption = #31532#19968
      ImageIndex = 49
    end
    object actPrior: TAction
      Caption = #21069#19968
      ImageIndex = 52
    end
    object actNext: TAction
      Caption = #21518#19968't'
      ImageIndex = 51
    end
    object actlast: TAction
      Caption = #26368#21518
      ImageIndex = 50
    end
    object actUp: TAction
      Caption = #19978#26597
      ImageIndex = 54
    end
    object actDown: TAction
      Caption = #19979#26597
      ImageIndex = 53
    end
    object actPull: TAction
      Caption = #25289#21333#29983#25104
      ImageIndex = 56
    end
    object actPush: TAction
      Caption = #25512#21333#29983#25104
      ImageIndex = 57
    end
    object actEdit: TAction
      Caption = #20462#25913
      ImageIndex = 22
    end
    object actStart: TAction
      Caption = #21551#29992
      ImageIndex = 58
    end
    object actForbit: TAction
      Caption = #31105#29992
      ImageIndex = 59
    end
  end
  object cdsMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsMasterAfterInsert
    BeforePost = cdsMasterBeforePost
    OnCalcFields = cdsMasterCalcFields
    Left = 744
    Top = 29
    object cdsMasterFFIVOUCHERED: TFloatField
      FieldName = 'FFIVOUCHERED'
    end
    object cdsMasterFDAYOFWEEK1: TFloatField
      FieldName = 'FDAYOFWEEK1'
    end
    object cdsMasterFDAYOFWEEK2: TFloatField
      FieldName = 'FDAYOFWEEK2'
    end
    object cdsMasterFENDTIME: TDateTimeField
      FieldName = 'FENDTIME'
    end
    object cdsMasterFBEGTIME: TDateTimeField
      FieldName = 'FBEGTIME'
    end
    object cdsMasterFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 200
    end
    object cdsMasterFNAME: TWideStringField
      FieldName = 'FNAME'
      Size = 100
    end
    object cdsMasterFBEG_TIMEOFDAY: TWideStringField
      FieldName = 'FBEG_TIMEOFDAY'
      Size = 160
    end
    object cdsMasterFDAYOFWEEK7: TFloatField
      FieldName = 'FDAYOFWEEK7'
    end
    object cdsMasterFDAYOFWEEK6: TFloatField
      FieldName = 'FDAYOFWEEK6'
    end
    object cdsMasterFDAYOFWEEK5: TFloatField
      FieldName = 'FDAYOFWEEK5'
    end
    object cdsMasterFDAYOFWEEK4: TFloatField
      FieldName = 'FDAYOFWEEK4'
    end
    object cdsMasterFDAYOFWEEK3: TFloatField
      FieldName = 'FDAYOFWEEK3'
    end
    object cdsMasterFEND_TIMEOFDAY: TWideStringField
      FieldName = 'FEND_TIMEOFDAY'
      Size = 160
    end
    object cdsMasterFCX_TYPE: TFloatField
      FieldName = 'FCX_TYPE'
    end
    object cdsMasterFCX_KIND: TFloatField
      FieldName = 'FCX_KIND'
    end
    object cdsMasterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 160
    end
    object cdsMasterFBIZDATE: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsMasterFHANDLERID: TWideStringField
      FieldName = 'FHANDLERID'
      Size = 44
    end
    object cdsMasterFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 160
    end
    object cdsMasterFHASEFFECTED: TFloatField
      FieldName = 'FHASEFFECTED'
    end
    object cdsMasterFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMasterFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsMasterFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMasterFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMasterFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMasterFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsMasterFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMasterFISENABLE: TFloatField
      FieldName = 'FISENABLE'
    end
    object cdsMasterFVIPENABLED: TFloatField
      FieldName = 'FVIPENABLED'
    end
    object cdsMasterFBASESTATUS: TWideStringField
      FieldName = 'FBASESTATUS'
      OnGetText = cdsMasterFBASESTATUSGetText
      Size = 100
    end
    object cdsMasterFENABLESTATUS: TFloatField
      FieldName = 'FENABLESTATUS'
    end
    object cdsMasterFISSTARTPROJECT: TFloatField
      FieldName = 'FISSTARTPROJECT'
    end
    object cdsMasterFFREEGOODSNUM: TIntegerField
      FieldName = 'FFREEGOODSNUM'
    end
    object cdsMasterFAUDITTIME: TDateTimeField
      FieldName = 'FAUDITTIME'
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 0
      Calculated = True
    end
    object cdsMasterFCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterFAuditorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterFSALEORGUNITID: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsMasterCFBranchName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFBranchName'
      Size = 80
      Calculated = True
    end
    object cdsMasterFBILLTYPEID: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
  end
  object dsMaster: TDataSource
    DataSet = cdsMaster
    Left = 784
    Top = 21
  end
  object cdsDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsDetailAfterInsert
    BeforePost = cdsDetailBeforePost
    AfterPost = cdsDetailAfterPost
    Left = 17
    Top = 301
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFS_MATERIALID: TWideStringField
      FieldName = 'FS_MATERIALID'
      Size = 44
    end
    object cdsDetailFS_COLORID: TWideStringField
      FieldName = 'FS_COLORID'
      Size = 44
    end
    object cdsDetailFS_SIZEID: TWideStringField
      FieldName = 'FS_SIZEID'
      Size = 44
    end
    object cdsDetailFD_MATERIALID: TWideStringField
      FieldName = 'FD_MATERIALID'
      Size = 44
    end
    object cdsDetailFBRANDID: TWideStringField
      FieldName = 'FBRANDID'
      Size = 44
    end
    object cdsDetailFS_BEGNUMER: TFloatField
      DisplayLabel = #28304#27454#36215#22987#25968#37327
      FieldName = 'FS_BEGNUMER'
    end
    object cdsDetailFS_ENDNUMER: TFloatField
      DisplayLabel = #28304#27454#25130#27490#25968#37327
      FieldName = 'FS_ENDNUMER'
    end
    object cdsDetailFS_BEGMONEY: TFloatField
      DisplayLabel = #28304#27454#36215#22987#37329#39069
      FieldName = 'FS_BEGMONEY'
    end
    object cdsDetailFD_UNITPRICE: TFloatField
      DisplayLabel = #20419#38144#21333#20215#65288#29305#20215#65289
      FieldName = 'FD_UNITPRICE'
    end
    object cdsDetailFS_ENDMONEY: TFloatField
      DisplayLabel = #28304#27454#25130#27490#37329#39069
      FieldName = 'FS_ENDMONEY'
    end
    object cdsDetailFD_AGIO: TFloatField
      DisplayLabel = #20419#38144#25240#25187
      FieldName = 'FD_AGIO'
    end
    object cdsDetailFD_MONEY: TFloatField
      DisplayLabel = #37329#39069#25240#35753
      FieldName = 'FD_MONEY'
    end
    object cdsDetailFD_OTHER: TWideStringField
      FieldName = 'FD_OTHER'
      Size = 200
    end
    object cdsDetailFCRE_TIME: TDateTimeField
      FieldName = 'FCRE_TIME'
    end
    object cdsDetailFUPD_TIME: TDateTimeField
      FieldName = 'FUPD_TIME'
    end
    object cdsDetailFCX_REMARK: TWideStringField
      FieldName = 'FCX_REMARK'
      Size = 200
    end
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFPROMTVALUE: TFloatField
      DisplayLabel = #20419#38144#26041#24335#20540
      FieldName = 'FPROMTVALUE'
    end
    object cdsDetailFPROMTKIND: TFloatField
      DisplayLabel = #20419#38144#26041#24335
      FieldName = 'FPROMTKIND'
    end
    object cdsDetailCFSMaterialNumber: TWideStringField
      DisplayLabel = #28304#27454#21495
      FieldName = 'CFSMaterialNumber'
      Size = 60
    end
    object cdsDetailCFSMaterialName: TWideStringField
      DisplayLabel = #28304#27454#21517
      FieldName = 'CFSMaterialName'
      Size = 100
    end
    object cdsDetailCFSColorCode: TWideStringField
      DisplayLabel = #28304#33394#21495
      FieldName = 'CFSColorCode'
    end
    object cdsDetailCFSColorName: TWideStringField
      DisplayLabel = #28304#39068#33394
      FieldName = 'CFSColorName'
      Size = 50
    end
    object cdsDetailCFDMaterialNumber: TWideStringField
      DisplayLabel = #20419#38144#27454#21495
      FieldName = 'CFDMaterialNumber'
      Size = 100
    end
    object cdsDetailCFDMaterialName: TWideStringField
      DisplayLabel = #20419#38144#27454#21517
      FieldName = 'CFDMaterialName'
      Size = 80
    end
  end
  object dsDetail: TDataSource
    DataSet = cdsDetail
    Left = 105
    Top = 302
  end
  object cdsPresent: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsPresentAfterInsert
    BeforePost = cdsPresentBeforePost
    AfterPost = cdsPresentAfterPost
    Left = 17
    Top = 358
    object cdsPresentFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsPresentFPROMTVALUE: TFloatField
      FieldName = 'FPROMTVALUE'
    end
    object cdsPresentFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsPresentFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsPresentFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsPresentFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsPresentFSIZEID: TWideStringField
      FieldName = 'FSIZEID'
      Size = 44
    end
    object cdsPresentFCOLORID: TWideStringField
      FieldName = 'FCOLORID'
      Size = 44
    end
    object cdsPresentFPROMTKIND: TFloatField
      FieldName = 'FPROMTKIND'
    end
    object cdsPresentCFMaterialNumber: TWideStringField
      FieldName = 'CFMaterialNumber'
      Size = 60
    end
    object cdsPresentCFMaterialName: TWideStringField
      FieldName = 'CFMaterialName'
      Size = 80
    end
    object cdsPresentCFColorCode: TWideStringField
      FieldName = 'CFColorCode'
      Size = 40
    end
    object cdsPresentCFColorName: TWideStringField
      FieldName = 'CFColorName'
      Size = 60
    end
    object cdsPresentCFSizeName: TWideStringField
      FieldName = 'CFSizeName'
      Size = 60
    end
  end
  object dsPresent: TDataSource
    DataSet = cdsPresent
    Left = 97
    Top = 358
  end
  object cdsWareDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsWareDetailAfterInsert
    Left = 25
    Top = 246
    object cdsWareDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsWareDetailFWARSEHOUSEID: TWideStringField
      FieldName = 'FWARSEHOUSEID'
      Size = 44
    end
    object cdsWareDetailFSHOPNAME: TWideStringField
      DisplayLabel = #24215#38138#21517#31216
      FieldName = 'FSHOPNAME'
      Size = 100
    end
    object cdsWareDetailFSHOPNUM: TWideStringField
      DisplayLabel = #24215#38138#32534#21495
      FieldName = 'FSHOPNUM'
      Size = 100
    end
    object cdsWareDetailFSEQ: TFloatField
      DisplayLabel = #24207#21495
      FieldName = 'FSEQ'
    end
    object cdsWareDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsWareDetailFSHOPID: TWideStringField
      FieldName = 'FSHOPID'
      Size = 50
    end
    object cdsWareDetailFREMARK: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FREMARK'
      Size = 200
    end
  end
  object dsWareDetail: TDataSource
    DataSet = cdsWareDetail
    Left = 113
    Top = 246
  end
  object cdsPromProJect: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsPromProJectAfterInsert
    AfterPost = cdsPromProJectAfterPost
    Left = 25
    Top = 422
    object cdsPromProJectFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsPromProJectFSERIESID: TWideStringField
      FieldName = 'FSERIESID'
      Size = 44
    end
    object cdsPromProJectFYEARSID: TWideStringField
      FieldName = 'FYEARSID'
      Size = 44
    end
    object cdsPromProJectFSEXID: TWideStringField
      FieldName = 'FSEXID'
      Size = 44
    end
    object cdsPromProJectFPOSTIONID: TWideStringField
      FieldName = 'FPOSTIONID'
      Size = 44
    end
    object cdsPromProJectFCATEGORYID: TWideStringField
      FieldName = 'FCATEGORYID'
      Size = 44
    end
    object cdsPromProJectFSEASONID: TWideStringField
      FieldName = 'FSEASONID'
      Size = 44
    end
    object cdsPromProJectFGENREID: TWideStringField
      FieldName = 'FGENREID'
      Size = 44
    end
    object cdsPromProJectFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsPromProJectFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsPromProJectFPROMTVALUE: TFloatField
      FieldName = 'FPROMTVALUE'
    end
    object cdsPromProJectFPROMTKIND: TFloatField
      FieldName = 'FPROMTKIND'
    end
  end
  object dsPromProJect: TDataSource
    DataSet = cdsPromProJect
    Left = 113
    Top = 414
  end
  object cdsNotMat: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsNotMatAfterInsert
    AfterPost = cdsNotMatAfterPost
    Left = 25
    Top = 478
    object cdsNotMatFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsNotMatFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsNotMatFSEQ: TFloatField
      DisplayLabel = #24207#21495
      FieldName = 'FSEQ'
    end
    object cdsNotMatFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsNotMatCFMaterialNumber: TWideStringField
      DisplayLabel = #27454#21495
      FieldName = 'CFMaterialNumber'
      Size = 60
    end
    object cdsNotMatCFMaterialName: TWideStringField
      DisplayLabel = #27454#21517
      FieldName = 'CFMaterialName'
      Size = 80
    end
  end
  object dsNotMat: TDataSource
    DataSet = cdsNotMat
    Left = 113
    Top = 470
  end
  object cdsComPromt: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsComPromtAfterInsert
    BeforePost = cdsComPromtBeforePost
    AfterPost = cdsComPromtAfterPost
    Left = 209
    Top = 248
    object cdsComPromtFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsComPromtFDAGIO: TFloatField
      DisplayLabel = #20419#38144#25240#25187
      FieldName = 'FDAGIO'
    end
    object cdsComPromtFDMONEY: TFloatField
      DisplayLabel = #37329#39069#25240#35753
      FieldName = 'FDMONEY'
    end
    object cdsComPromtFDUNITPRICE: TFloatField
      DisplayLabel = #20419#38144#21333#20215#65288#29305#20215#65289
      FieldName = 'FDUNITPRICE'
    end
    object cdsComPromtFDOTHER: TWideStringField
      DisplayLabel = #35828#26126
      FieldName = 'FDOTHER'
      Size = 200
    end
    object cdsComPromtFCREMARK: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FCREMARK'
      Size = 200
    end
    object cdsComPromtFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsComPromtFSEQ: TFloatField
      DisplayLabel = #24207#21495
      FieldName = 'FSEQ'
    end
    object cdsComPromtFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsComPromtCFMaterialNumber: TWideStringField
      DisplayLabel = #27454#21495
      FieldName = 'CFMaterialNumber'
      Size = 60
    end
    object cdsComPromtCFMaterialName: TWideStringField
      DisplayLabel = #27454#21517
      FieldName = 'CFMaterialName'
      Size = 80
    end
  end
  object dsComPromt: TDataSource
    DataSet = cdsComPromt
    Left = 289
    Top = 246
  end
  object cdsDetailSave: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 401
    Top = 302
    object cdsDetailSaveFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailSaveFS_MATERIALID: TWideStringField
      FieldName = 'FS_MATERIALID'
      Size = 44
    end
    object cdsDetailSaveFS_COLORID: TWideStringField
      FieldName = 'FS_COLORID'
      Size = 44
    end
    object cdsDetailSaveFS_SIZEID: TWideStringField
      FieldName = 'FS_SIZEID'
      Size = 44
    end
    object cdsDetailSaveFD_MATERIALID: TWideStringField
      FieldName = 'FD_MATERIALID'
      Size = 44
    end
    object cdsDetailSaveFBRANDID: TWideStringField
      FieldName = 'FBRANDID'
      Size = 44
    end
    object cdsDetailSaveFS_BEGNUMER: TFloatField
      FieldName = 'FS_BEGNUMER'
    end
    object cdsDetailSaveFS_ENDNUMER: TFloatField
      FieldName = 'FS_ENDNUMER'
    end
    object cdsDetailSaveFS_BEGMONEY: TFloatField
      FieldName = 'FS_BEGMONEY'
    end
    object cdsDetailSaveFD_UNITPRICE: TFloatField
      FieldName = 'FD_UNITPRICE'
    end
    object cdsDetailSaveFS_ENDMONEY: TFloatField
      FieldName = 'FS_ENDMONEY'
    end
    object cdsDetailSaveFD_AGIO: TFloatField
      FieldName = 'FD_AGIO'
    end
    object cdsDetailSaveFD_MONEY: TFloatField
      FieldName = 'FD_MONEY'
    end
    object cdsDetailSaveFD_OTHER: TWideStringField
      FieldName = 'FD_OTHER'
      Size = 200
    end
    object cdsDetailSaveFCRE_TIME: TDateTimeField
      FieldName = 'FCRE_TIME'
    end
    object cdsDetailSaveFUPD_TIME: TDateTimeField
      FieldName = 'FUPD_TIME'
    end
    object cdsDetailSaveFCX_REMARK: TWideStringField
      FieldName = 'FCX_REMARK'
      Size = 200
    end
    object cdsDetailSaveFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailSaveFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailSaveFPROMTVALUE: TFloatField
      FieldName = 'FPROMTVALUE'
    end
    object cdsDetailSaveFPROMTKIND: TFloatField
      FieldName = 'FPROMTKIND'
    end
  end
  object cdspresentSave: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 401
    Top = 358
    object cdspresentSaveFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdspresentSaveFPROMTVALUE: TFloatField
      FieldName = 'FPROMTVALUE'
    end
    object cdspresentSaveFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdspresentSaveFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdspresentSaveFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdspresentSaveFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdspresentSaveFSIZEID: TWideStringField
      FieldName = 'FSIZEID'
      Size = 44
    end
    object cdspresentSaveFCOLORID: TWideStringField
      FieldName = 'FCOLORID'
      Size = 44
    end
    object cdspresentSaveFPROMTKIND: TFloatField
      FieldName = 'FPROMTKIND'
    end
  end
  object cdsNotMatSave: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 401
    Top = 414
    object cdsNotMatSaveFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsNotMatSaveFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsNotMatSaveFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsNotMatSaveFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
  end
  object cdsCompromtSave: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 401
    Top = 478
    object cdsCompromtSaveFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsCompromtSaveFDAGIO: TFloatField
      FieldName = 'FDAGIO'
    end
    object cdsCompromtSaveFDMONEY: TFloatField
      FieldName = 'FDMONEY'
    end
    object cdsCompromtSaveFDUNITPRICE: TFloatField
      FieldName = 'FDUNITPRICE'
    end
    object cdsCompromtSaveFDOTHER: TWideStringField
      FieldName = 'FDOTHER'
      Size = 200
    end
    object cdsCompromtSaveFCREMARK: TWideStringField
      FieldName = 'FCREMARK'
      Size = 200
    end
    object cdsCompromtSaveFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsCompromtSaveFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsCompromtSaveFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
  end
  object cdsTmpKind: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 133
    object cdsTmpKindFnumber: TIntegerField
      FieldName = 'Fnumber'
    end
    object cdsTmpKindFname: TStringField
      FieldName = 'Fname'
    end
  end
  object dsTmpKind: TDataSource
    DataSet = cdsTmpKind
    Left = 304
    Top = 133
  end
  object cdsTmpType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 125
    object cdsTmpTypeFnumber: TIntegerField
      FieldName = 'Fnumber'
    end
    object cdsTmpTypeFname: TStringField
      FieldName = 'Fname'
    end
  end
  object dsTmpType: TDataSource
    DataSet = cdsTmpType
    Left = 136
    Top = 125
  end
  object cdsTmpVIP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 624
    Top = 125
    object cdsTmpVIPFnumber: TIntegerField
      FieldName = 'Fnumber'
    end
    object cdsTmpVIPFname: TStringField
      FieldName = 'Fname'
    end
  end
  object dsTmpVIP: TDataSource
    DataSet = cdsTmpVIP
    Left = 680
    Top = 125
  end
  object dsYear: TDataSource
    DataSet = CliDM.cdsYear
    Left = 568
    Top = 240
  end
  object dsSeason: TDataSource
    DataSet = CliDM.cdsSeason
    Left = 553
    Top = 301
  end
  object dsSex: TDataSource
    DataSet = CliDM.cdsSex
    Left = 577
    Top = 365
  end
  object dsPosition: TDataSource
    DataSet = CliDM.cdsPosition
    Left = 577
    Top = 421
  end
  object dsCATEGORY: TDataSource
    DataSet = CliDM.cdsCATEGORY
    Left = 585
    Top = 477
  end
  object dsGENRE: TDataSource
    DataSet = CliDM.cdsGENRE
    Left = 769
    Top = 261
  end
  object QrySelect: TADOQuery
    Connection = CliDM.conClient
    Parameters = <>
    Left = 200
    Top = 217
  end
  object cdsSelect: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 273
    Top = 224
  end
  object dsSelect: TDataSource
    DataSet = QrySelect
    Left = 72
    Top = 225
  end
end
