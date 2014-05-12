inherited FM_BillEditMoveIssue: TFM_BillEditMoveIssue
  Left = 209
  Top = 10
  Width = 933
  Height = 621
  Caption = #35843#25320#20986#24211#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    Width = 917
    Height = 237
    TabOrder = 4
    inherited cxPageDetail: TcxPageControl
      Width = 917
      Height = 237
      OnChange = cxPageDetailChange
      ClientRectBottom = 237
      ClientRectRight = 917
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 917
          Height = 189
          inherited dbgList: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
              end>
          end
          inherited dbgList2: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2Column3
              end
              item
                Kind = skSum
                Column = dbgList2Column2
              end
              item
                Format = '#,##'
                Kind = skSum
                FieldName = 'cfdpamount'
                Column = dbgList2Column5
              end>
            OptionsBehavior.FocusCellOnCycle = True
            object dbgList2cfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = dbgList2cfMaterialNumberPropertiesButtonClick
              Width = 92
            end
            object dbgList2cfMaterialName: TcxGridDBColumn
              Caption = #21830#21697#21517#31216
              DataBinding.FieldName = 'cfMaterialName'
              Options.Editing = False
              Width = 86
            end
            object dbgList2CFColorCode: TcxGridDBColumn
              Caption = #39068#33394#32534#21495
              DataBinding.FieldName = 'CFColorCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFCOLORNamePropertiesButtonClick
              Width = 65
            end
            object dbgList2CFCOLORName: TcxGridDBColumn
              DataBinding.FieldName = 'CFCOLORName'
              Options.Editing = False
              Width = 71
            end
            object dbgList2CFCUPName: TcxGridDBColumn
              DataBinding.FieldName = 'CFCUPName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = dbgList2CFCUPNamePropertiesButtonClick
              Width = 64
            end
            object dbgList2Column1: TcxGridDBColumn
              DataBinding.FieldName = 'CFPACKName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2Column1PropertiesButtonClick
              Visible = False
              Width = 60
            end
            object dbgList2Column2: TcxGridDBColumn
              DataBinding.FieldName = 'CFPacknum'
              Visible = False
              Width = 60
            end
            object dbgList2Column4: TcxGridDBColumn
              DataBinding.FieldName = 'cfdpprice'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
            end
            object dbgList2Column6: TcxGridDBColumn
              DataBinding.FieldName = 'Fprice'
              Options.Editing = False
              Width = 60
            end
            object dbgList2CFOutLocName: TcxGridDBColumn
              DataBinding.FieldName = 'CFOutLocName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFOutLocNamePropertiesButtonClick
              Width = 60
            end
            object dbgList2CFInLocName: TcxGridDBColumn
              DataBinding.FieldName = 'CFInLocName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFInLocNamePropertiesButtonClick
              Width = 60
            end
            object dbgList2fAmount_1: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_1'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_2: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_2'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_3: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_3'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_4: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_4'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_5: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_5'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_6: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_6'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_7: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_7'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_8: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_8'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_9: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_9'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_10: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_10'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_11: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_11'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_12: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_12'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_13: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_13'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_14: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_14'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_15: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_15'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_16: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_16'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_17: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_17'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_18: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_18'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_19: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_19'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_20: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_20'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_21: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_21'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_22: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_22'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_23: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_23'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_24: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_24'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_25: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_25'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_26: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_26'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_27: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_27'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_28: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_28'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_29: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_29'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2fAmount_30: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_30'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 40
            end
            object dbgList2Column3: TcxGridDBColumn
              Caption = #25968#37327#21512#35745
              DataBinding.FieldName = 'fTotaLQty'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 58
            end
            object dbgList2Column5: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'FAmount'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object dbgList2CFUnitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Width = 60
            end
            object dbgList2cfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Width = 60
            end
            object dbgList2CFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Width = 60
            end
            object dbgList2FRemark: TcxGridDBColumn
              DataBinding.FieldName = 'FRemark'
              Width = 100
            end
          end
        end
        inherited Panel3: TPanel
          Width = 917
          inherited lblStockQty: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblUseStockQty: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblRecStockqty: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblSaleQtyQty: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
      inherited cxTabTractDetail: TcxTabSheet
        inherited cxGrid4: TcxGrid
          Width = 917
          Height = 192
          inherited cxgridDetial: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFAMOUNT
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTOTALINWAREHSQTY
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialCFCHECKINPUTQTY
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialCFCHECKDIFFQTY
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFQTY
              end>
            object cxgridDetialFSEQ: TcxGridDBColumn
              Caption = #24207#21495
              DataBinding.FieldName = 'FSEQ'
              Width = 40
            end
            object cxgridDetialcfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              Width = 120
            end
            object cxgridDetialcfMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialName'
              Width = 120
            end
            object cxgridDetialCFColorCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorCode'
              Width = 50
            end
            object cxgridDetialCFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Width = 60
            end
            object cxgridDetialCFSizeCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeCode'
              Width = 50
            end
            object cxgridDetialCFSizeName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeName'
              Width = 50
            end
            object cxgridDetialCFCupName: TcxGridDBColumn
              DataBinding.FieldName = 'CFCupName'
              Width = 60
            end
            object cxgridDetialCFPACKName: TcxGridDBColumn
              DataBinding.FieldName = 'CFPACKName'
              Width = 50
            end
            object cxgridDetialCFPACKNUM: TcxGridDBColumn
              Caption = #31665#25968
              DataBinding.FieldName = 'CFPACKNUM'
              Width = 50
            end
            object cxgridDetialcfdpprice: TcxGridDBColumn
              DataBinding.FieldName = 'cfdpprice'
              Width = 60
            end
            object cxgridDetialFPRICE: TcxGridDBColumn
              Caption = #26631#20934#20215
              DataBinding.FieldName = 'FPRICE'
              Width = 60
            end
            object cxgridDetialFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'FQTY'
              Width = 60
            end
            object cxgridDetialFAMOUNT: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'FAMOUNT'
              Width = 60
            end
            object cxgridDetialFTOTALINWAREHSQTY: TcxGridDBColumn
              Caption = #24050#35843#20837#25968
              DataBinding.FieldName = 'FTOTALINWAREHSQTY'
            end
            object cxgridDetialCFCHECKINPUTQTY: TcxGridDBColumn
              Caption = #25195#25551#25968
              DataBinding.FieldName = 'CFCHECKINPUTQTY'
            end
            object cxgridDetialCFCHECKDIFFQTY: TcxGridDBColumn
              Caption = #24046#24322#25968
              DataBinding.FieldName = 'CFCHECKDIFFQTY'
            end
            object cxgridDetialCFUnitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Width = 60
            end
            object cxgridDetialCFInLocName: TcxGridDBColumn
              DataBinding.FieldName = 'CFInLocName'
              Width = 60
            end
            object cxgridDetialCFOutLocName: TcxGridDBColumn
              DataBinding.FieldName = 'CFOutLocName'
              Width = 60
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Width = 60
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Width = 60
            end
            object cxgridDetialFRemark: TcxGridDBColumn
              DataBinding.FieldName = 'FRemark'
              Width = 100
            end
          end
        end
        inherited Panel4: TPanel
          Width = 917
          inherited lblStock_DetailQty: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblUseStock_DetailQty: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblRecStock_Detailqty: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited lblSaleQty_DetailQty: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
    end
  end
  inherited p_bt: TPanel
    Top = 553
    Width = 917
    TabOrder = 0
  end
  inherited pnl_top: TPanel
    Width = 917
    TabOrder = 2
    inherited pnlCodeSM: TPanel
      Width = 915
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Width = 915
      ClientRectRight = 915
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Width = 915
          inherited im_Audit: TImage
            Left = 847
          end
          inherited img_NewBill: TImage
            Left = 847
          end
          inherited lbDescription: TLabel
            Left = 3
            Top = 56
            Width = 26
            Caption = #22791#27880
          end
          inherited Label2: TLabel
            Left = 3
            Top = 6
          end
          inherited Label5: TLabel
            Left = 615
            Top = 6
          end
          inherited Image4: TImage
            Top = 88
          end
          inherited imgTJ: TImage
            Left = 847
          end
          inherited imgGB: TImage
            Left = 920
          end
          inherited txDescription: TcxDBTextEdit
            Left = 68
            Top = 54
            DataBinding.DataField = 'FDESCRIPTION'
            Width = 517
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 679
            Hint = #19994#21153#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 2
            Width = 138
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 68
            DataBinding.DataField = 'FNUMBER'
            Width = 198
          end
          inherited lblNumber: TcxLabel
            Left = 3
            Top = 33
            Caption = #35843#20986#20179#24211
          end
          inherited txtName: TcxDBTextEdit
            Left = 151
            Top = 29
            DataBinding.DataField = 'CFReceivWareName'
            TabOrder = 8
            Width = 115
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 369
            Top = 4
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 1
            Width = 216
          end
          inherited cxLabel1: TcxLabel
            Left = 304
            Top = 6
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 68
            Top = 29
            Hint = #35843#20986#20179#24211
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 3
            Width = 85
          end
          object cxLabel2: TcxLabel
            Left = 304
            Top = 33
            Caption = #35843#20837#20179#24211
          end
          object cxbtnInWare: TcxButtonEdit
            Tag = 100
            Left = 369
            Top = 29
            Hint = #35843#20837#20179#24211
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnInWarePropertiesButtonClick
            Properties.OnChange = cxbtnInWarePropertiesChange
            TabOrder = 4
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 96
          end
          object cxedtInware: TcxDBTextEdit
            Left = 463
            Top = 29
            DataBinding.DataField = 'CFSendWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 11
            Width = 122
          end
          object cxLabel3: TcxLabel
            Left = 615
            Top = 100
            Hint = #35746#21333#31867#22411
            Caption = #35746#21333#31867#22411
          end
          object cxcmbOrderType: TcxDBLookupComboBox
            Left = 679
            Top = 29
            DataBinding.DataField = 'CFORDERTYPEID'
            DataBinding.DataSource = dsMaster
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'Fname_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsOrderType
            TabOrder = 5
            Width = 138
          end
          object cxDBCheckBox3: TcxDBCheckBox
            Left = 617
            Top = 56
            AutoSize = False
            Caption = #39035#35013#31665
            DataBinding.DataField = 'CFISPACKING'
            DataBinding.DataSource = dsMaster
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueGrayed = 'Shortint'
            Properties.ValueUnchecked = 0
            TabOrder = 13
            Height = 21
            Width = 120
          end
          object cxLabel4: TcxLabel
            Left = 615
            Top = 33
            Caption = #35746#21333#31867#22411
          end
        end
      end
    end
  end
  inherited pnlStock: TPanel
    Top = 419
    Width = 917
    inherited Panel2: TPanel
      Width = 404
      inherited cxpageReceive: TcxPageControl
        Width = 402
        ClientRectRight = 402
        inherited cxTabRecStock: TcxTabSheet
          inherited cxGrid5: TcxGrid
            Width = 399
          end
        end
        inherited cxTabRecSale: TcxTabSheet
          inherited cxGrid6: TcxGrid
            Width = 410
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Left = 378
    Top = 113
  end
  inherited ImageListMainForm: TImageList
    Left = 632
    Top = 0
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 560
    Top = 359
    DockControlHeights = (
      0
      0
      53
      0)
    inherited dxBarManager1Bar2: TdxBar
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
          Visible = False
          ItemName = 'dxBarButton3'
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
          ItemName = 'dxBarbtnUP'
        end
        item
          Visible = True
          ItemName = 'dxBarbtnDown'
        end
        item
          Visible = True
          ItemName = 'dxBarbtnPull'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxbarbtnPush'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'btn_PackingList'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    inherited dxBarSubItem3: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton12'
        end>
    end
    inherited dxBarSubItem8: TdxBarSubItem
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
          Visible = False
          ItemName = 'dxBarButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarF11Imput'
        end
        item
          Visible = True
          ItemName = 'dxBarCodeSM'
        end
        item
          Visible = True
          ItemName = 'bt_CtrlQ'
        end
        item
          Visible = True
          ItemName = 'bt_Ctrl_B'
        end
        item
          Visible = True
          ItemName = 'bt_Ctrl_J'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'bbtCheck'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarToExcel'
        end
        item
          Visible = True
          ItemName = 'dxBarImportXls'
        end>
    end
    object bt_CtrlQ: TdxBarButton
      Caption = #20999#25442#22522#25968#27491#36127#21495
      Category = 0
      Hint = #20999#25442#22522#25968#27491#36127#21495
      Visible = ivAlways
      ShortCut = 16465
      OnClick = bt_CtrlQClick
    end
    object bt_Ctrl_B: TdxBarButton
      Caption = #23450#20301#21040#26465#30721#26694
      Category = 0
      Hint = #23450#20301#21040#26465#30721#26694
      Visible = ivAlways
      ShortCut = 16450
      OnClick = bt_Ctrl_BClick
    end
    object bt_Ctrl_J: TdxBarButton
      Caption = #23450#20301#21040#22522#25968#26694
      Category = 0
      Hint = #23450#20301#21040#22522#25968#26694
      Visible = ivAlways
      ShortCut = 16458
      OnClick = bt_Ctrl_JClick
    end
    object btn_PackingList: TdxBarButton
      Caption = #35013#31665#31649#29702
      Category = 0
      Hint = #35013#31665#31649#29702
      Visible = ivAlways
      ImageIndex = 1
      LargeImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = btn_PackingListClick
    end
  end
  inherited actlst1: TActionList
    object actFindShuPai: TAction [18]
      Caption = #26597#30475#31446#25490#26126#32454
    end
  end
  inherited cdsMaster: TClientDataSet
    Left = 472
    Top = 10
    object cdsMasterFCreatorName: TStringField
      DisplayLabel = #24320#21333#20154
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 200
      Calculated = True
    end
    object cdsMasterFAuditorName: TStringField
      DisplayLabel = #23457#26680#20154
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 200
      Calculated = True
    end
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
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
    object cdsMasterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
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
      Size = 300
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
      Size = 80
    end
    object cdsMasterFSOURCEFUNCTION: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 80
    end
    object cdsMasterFAUDITTIME: TDateTimeField
      FieldName = 'FAUDITTIME'
    end
    object cdsMasterFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsMasterFBIZTYPEID: TWideStringField
      FieldName = 'FBIZTYPEID'
      Size = 44
    end
    object cdsMasterFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsMasterFBILLTYPEID: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
    object cdsMasterFYEAR: TFloatField
      FieldName = 'FYEAR'
    end
    object cdsMasterFPERIOD: TFloatField
      FieldName = 'FPERIOD'
    end
    object cdsMasterFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsMasterFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Size = 44
    end
    object cdsMasterFVOUCHERID: TWideStringField
      FieldName = 'FVOUCHERID'
      Size = 44
    end
    object cdsMasterFTOTALQTY: TFloatField
      FieldName = 'FTOTALQTY'
    end
    object cdsMasterFTOTALAMOUNT: TFloatField
      FieldName = 'FTOTALAMOUNT'
    end
    object cdsMasterFFIVOUCHERED: TFloatField
      FieldName = 'FFIVOUCHERED'
    end
    object cdsMasterFTOTALSTANDARDCOST: TFloatField
      FieldName = 'FTOTALSTANDARDCOST'
    end
    object cdsMasterFTOTALACTUALCOST: TFloatField
      FieldName = 'FTOTALACTUALCOST'
    end
    object cdsMasterFISREVERSED: TFloatField
      FieldName = 'FISREVERSED'
    end
    object cdsMasterFTRANSACTIONTYPEID: TWideStringField
      FieldName = 'FTRANSACTIONTYPEID'
      Size = 44
    end
    object cdsMasterFISINITBILL: TFloatField
      FieldName = 'FISINITBILL'
    end
    object cdsMasterFRECEIPTSTORAGEORGUNITID: TWideStringField
      FieldName = 'FRECEIPTSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFISSUECOMPANYORGUNITID: TWideStringField
      FieldName = 'FISSUECOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFRECEIPTCOMPANYORGUNITID: TWideStringField
      FieldName = 'FRECEIPTCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMONTH: TFloatField
      FieldName = 'FMONTH'
    end
    object cdsMasterFDAY: TFloatField
      FieldName = 'FDAY'
    end
    object cdsMasterCFISBADSHOE: TFloatField
      FieldName = 'CFISBADSHOE'
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 100
    end
    object cdsMasterCFINWAREHOUSEID: TWideStringField
      DisplayWidth = 44
      FieldName = 'CFINWAREHOUSEID'
      OnChange = cdsMasterCFINWAREHOUSEIDChange
      Size = 44
    end
    object cdsMasterCFOutWAREHOUSEID: TWideStringField
      FieldName = 'CFOutWAREHOUSEID'
      OnChange = cdsMasterCFOutWAREHOUSEIDChange
      Size = 44
    end
    object cdsMasterCFORDERTYPEID: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 10
    end
    object cdsMasterCFSendWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSendWareName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFReceivWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivWareName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFISPROCDUCT: TIntegerField
      FieldName = 'CFISPROCDUCT'
    end
    object cdsMasterCFISPACKING: TFloatField
      FieldName = 'CFISPACKING'
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 80
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 568
    Top = 7
  end
  inherited cdsDetail: TClientDataSet
    IndexFieldNames = 'FID'
    MasterFields = 'FID'
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdsDetailFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      OnChange = cdsDetailFMATERIALIDChange
      Size = 44
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      DisplayLabel = #20986#24211#20179#24211'ID'
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      DisplayLabel = #34892#21495
      FieldName = 'FSEQ'
    end
    object cdsDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 80
    end
    object cdsDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 80
    end
    object cdsDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 80
    end
    object cdsDetailFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetailFASSCOEFFICIENT: TFloatField
      FieldName = 'FASSCOEFFICIENT'
    end
    object cdsDetailFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailFUNITID: TWideStringField
      FieldName = 'FUNITID'
      Size = 44
    end
    object cdsDetailFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailFASSISTUNITID: TWideStringField
      FieldName = 'FASSISTUNITID'
      Size = 44
    end
    object cdsDetailFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object cdsDetailFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdsDetailFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Size = 44
    end
    object cdsDetailFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 80
    end
    object cdsDetailFQTY: TFloatField
      Tag = 1
      DisplayLabel = #25968#37327
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFREVERSEQTY: TFloatField
      FieldName = 'FREVERSEQTY'
    end
    object cdsDetailFRETURNSQTY: TFloatField
      FieldName = 'FRETURNSQTY'
    end
    object cdsDetailFPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'FPRICE'
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFUNITSTANDARDCOST: TFloatField
      FieldName = 'FUNITSTANDARDCOST'
    end
    object cdsDetailFSTANDARDCOST: TFloatField
      FieldName = 'FSTANDARDCOST'
    end
    object cdsDetailFUNITACTUALCOST: TFloatField
      FieldName = 'FUNITACTUALCOST'
    end
    object cdsDetailFACTUALCOST: TFloatField
      FieldName = 'FACTUALCOST'
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSBILLENTRYID: TWideStringField
      FieldName = 'FSTOCKTRANSBILLENTRYID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLNUM: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLNUM'
      Size = 80
    end
    object cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField
      FieldName = 'FSTOCKTRANSFERBILLENTRYSEQ'
    end
    object cdsDetailFEXP: TDateTimeField
      FieldName = 'FEXP'
    end
    object cdsDetailFMFG: TDateTimeField
      FieldName = 'FMFG'
    end
    object cdsDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 200
    end
    object cdsDetailFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
    end
    object cdsDetailFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
    end
    object cdsDetailFBASEUNITACTUALCOST: TFloatField
      FieldName = 'FBASEUNITACTUALCOST'
    end
    object cdsDetailFTOTALINWAREHSQTY: TFloatField
      FieldName = 'FTOTALINWAREHSQTY'
    end
    object cdsDetailFCANINWAREHSBASEQTY: TFloatField
      FieldName = 'FCANINWAREHSBASEQTY'
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailFCUSTOMERID: TWideStringField
      FieldName = 'FCUSTOMERID'
      Size = 44
    end
    object cdsDetailFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdsDetailFSTORETYPEID: TWideStringField
      FieldName = 'FSTORETYPEID'
      Size = 44
    end
    object cdsDetailCFCHECKINPUTQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdsDetailCFCHECKDIFFQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdsDetailCFINLOCATIONID: TWideStringField
      FieldName = 'CFINLOCATIONID'
      Size = 44
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailCFINWAREHOUSEID: TWideStringField
      DisplayLabel = #20837#24211#20179#24211'ID'
      FieldName = 'CFINWAREHOUSEID'
      Size = 44
    end
    object cdsDetailCFAssistNum: TWideStringField
      DisplayLabel = #36741#21161#23646#24615#32534#21495
      FieldName = 'CFAssistNum'
    end
    object cdsDetailcfdpprice: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'cfdpprice'
    end
    object cdsDetailcfdpamount: TFloatField
      DisplayLabel = #21514#29260#37329#39069
      FieldName = 'cfdpamount'
    end
    object cdsDetailCFOldPackID: TWideStringField
      FieldName = 'CFOldPackID'
    end
  end
  inherited pmDetail: TPopupMenu
    OnPopup = pmDetailPopup
    Top = 305
    object n_alterInWhs: TMenuItem [3]
      Caption = #25209#37327#20462#25913#20837#24211#20179
      OnClick = n_alterInWhsClick
    end
    object updateQty: TMenuItem [6]
      Caption = #29992#26657#39564#25968#26356#26032#25968#37327
      OnClick = updateQtyClick
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    BeforeEdit = cdsDetailAmountBeforeEdit
    AfterDelete = cdsDetailAmountAfterDelete
    OnNewRecord = cdsDetailAmountNewRecord
    Top = 280
    object cdsDetailAmountCFOldPackID: TStringField
      FieldName = 'CFOldPackID'
      Size = 44
    end
    object cdsDetailAmountcfoldPackNum: TIntegerField
      FieldName = 'cfoldPackNum'
    end
    object cdsDetailAmountCFSIZEGROUPID: TStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailAmountfTotaLQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'fTotaLQty'
      Calculated = True
    end
    object cdsDetailAmountCFCOLORID: TWideStringField
      DisplayLabel = #39068#33394'ID'
      FieldName = 'CFCOLORID'
      Size = 200
    end
    object cdsDetailAmountCFCUPID: TWideStringField
      DisplayLabel = #20869#38271'ID'
      FieldName = 'CFCUPID'
      Size = 200
    end
    object cdsDetailAmountcfMaterialName: TStringField
      FieldName = 'cfMaterialName'
      Size = 200
    end
    object cdsDetailAmountCFColorCode: TStringField
      DisplayLabel = #39068#33394#32534#30721
      FieldName = 'CFColorCode'
      Size = 80
    end
    object cdsDetailAmountCFCOLORName: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsDetailAmountCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsDetailAmountfkCalculated: TStringField
      DisplayLabel = #21830#21697#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailAmountFWAREHOUSEID2: TWideStringField
      DisplayLabel = #20986#24211#20179#24211'ID'
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailAmountCFInWarehouseID: TStringField
      DisplayLabel = #20837#24211#20179#24211'ID'
      FieldName = 'CFInWarehouseID'
      Size = 200
    end
    object cdsDetailAmountCFPackID: TStringField
      FieldName = 'CFPackID'
      OnChange = cdsDetailAmountCFPackIDChange
      Size = 44
    end
    object cdsDetailAmountCFPACKName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPACKName'
      Size = 80
    end
    object cdsDetailAmountCFPacknum: TIntegerField
      DisplayLabel = #31665#25968
      FieldName = 'CFPacknum'
      OnChange = cdsDetailAmountCFPacknumChange
    end
    object cdsDetailAmountFSourceBillID: TStringField
      FieldName = 'FSourceBillID'
      Size = 44
    end
    object cdsDetailAmountFSourceBillNumber: TStringField
      FieldName = 'FSourceBillNumber'
      Size = 80
    end
    object cdsDetailAmountFSOURCEBILLENTRYID: TStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 44
    end
    object cdsDetailAmountFMATERIALID: TWideStringField
      DisplayLabel = #21830#21697'ID'
      FieldName = 'FMATERIALID'
      Size = 200
    end
    object cdsDetailAmountcfdpprice: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'cfdpprice'
    end
    object cdsDetailAmountcfdpamount: TFloatField
      DisplayLabel = #21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'cfdpamount'
      Calculated = True
    end
    object cdsDetailAmountfAmount_1: TFloatField
      FieldName = 'fAmount_1'
    end
    object cdsDetailAmountfAmount_2: TFloatField
      FieldName = 'fAmount_2'
    end
    object cdsDetailAmountfAmount_3: TFloatField
      FieldName = 'fAmount_3'
    end
    object cdsDetailAmountfAmount_4: TFloatField
      FieldName = 'fAmount_4'
    end
    object cdsDetailAmountfAmount_5: TFloatField
      FieldName = 'fAmount_5'
    end
    object cdsDetailAmountfAmount_6: TFloatField
      FieldName = 'fAmount_6'
    end
    object cdsDetailAmountfAmount_7: TFloatField
      FieldName = 'fAmount_7'
    end
    object cdsDetailAmountfAmount_8: TFloatField
      FieldName = 'fAmount_8'
    end
    object cdsDetailAmountfAmount_9: TFloatField
      FieldName = 'fAmount_9'
    end
    object cdsDetailAmountfAmount_10: TFloatField
      FieldName = 'fAmount_10'
    end
    object cdsDetailAmountfAmount_11: TFloatField
      FieldName = 'fAmount_11'
    end
    object cdsDetailAmountfAmount_12: TFloatField
      FieldName = 'fAmount_12'
    end
    object cdsDetailAmountfAmount_13: TFloatField
      FieldName = 'fAmount_13'
    end
    object cdsDetailAmountfAmount_14: TFloatField
      FieldName = 'fAmount_14'
    end
    object cdsDetailAmountfAmount_15: TFloatField
      FieldName = 'fAmount_15'
    end
    object cdsDetailAmountfAmount_16: TFloatField
      FieldName = 'fAmount_16'
    end
    object cdsDetailAmountfAmount_17: TFloatField
      FieldName = 'fAmount_17'
    end
    object cdsDetailAmountfAmount_18: TFloatField
      FieldName = 'fAmount_18'
    end
    object cdsDetailAmountfAmount_19: TFloatField
      FieldName = 'fAmount_19'
    end
    object cdsDetailAmountfAmount_20: TFloatField
      FieldName = 'fAmount_20'
    end
    object cdsDetailAmountfAmount_21: TFloatField
      FieldName = 'fAmount_21'
    end
    object cdsDetailAmountfAmount_22: TFloatField
      FieldName = 'fAmount_22'
    end
    object cdsDetailAmountfAmount_23: TFloatField
      FieldName = 'fAmount_23'
    end
    object cdsDetailAmountfAmount_24: TFloatField
      FieldName = 'fAmount_24'
    end
    object cdsDetailAmountfAmount_25: TFloatField
      FieldName = 'fAmount_25'
    end
    object cdsDetailAmountfAmount_26: TFloatField
      FieldName = 'fAmount_26'
    end
    object cdsDetailAmountfAmount_27: TFloatField
      FieldName = 'fAmount_27'
    end
    object cdsDetailAmountfAmount_28: TFloatField
      FieldName = 'fAmount_28'
    end
    object cdsDetailAmountfAmount_29: TFloatField
      FieldName = 'fAmount_29'
    end
    object cdsDetailAmountfAmount_30: TFloatField
      FieldName = 'fAmount_30'
    end
    object cdsDetailAmountFRemark: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FRemark'
      Size = 200
    end
    object cdsDetailAmountCFNUnitName: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFNUitName'
      Size = 60
    end
    object cdsDetailAmountCFInLocName: TWideStringField
      DisplayLabel = #35843#20837#24211#20301
      FieldName = 'CFInLocName'
      Size = 60
    end
    object cdsDetailAmountCFLocName: TStringField
      DisplayLabel = #35843#20986#24211#20301
      FieldName = 'CFOutLocName'
      Size = 60
    end
    object cdsDetailAmountFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdsDetailAmountcfattributeid: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailAmountCfbrandid: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsDetailAmountcfattributeName: TWideStringField
      DisplayLabel = #27874#27573
      FieldName = 'cfattributeName'
      Size = 60
    end
    object cdsDetailAmountCFBrandName: TWideStringField
      DisplayLabel = #21697#29260
      FieldName = 'CFBrandName'
      Size = 60
    end
    object cdsDetailAmountFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailAmountFprice: TFloatField
      DisplayLabel = #26631#20934#20215
      FieldName = 'Fprice'
    end
    object cdsDetailAmountFAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FAmount'
      Calculated = True
    end
    object cdsDetailAmountCFINLOCATIONID: TWideStringField
      FieldName = 'CFINLOCATIONID'
      Size = 44
    end
  end
  inherited dsHeadSel: TDataSource
    Left = 337
    Top = 97
  end
  inherited cdsHeadSel: TClientDataSet
    Left = 393
    Top = 105
  end
  inherited dsInputWay: TDataSource
    DataSet = CliDM.cdsInputWay
    Left = 513
    Top = 49
  end
  inherited cdsDetailTracy: TClientDataSet
    object cdsDetailTracyFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdsDetailTracyFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      OnChange = cdsDetailFMATERIALIDChange
      Size = 44
    end
    object cdsDetailTracyFWAREHOUSEID: TWideStringField
      DisplayLabel = #20986#24211#20179#24211'ID'
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailTracyFSEQ: TFloatField
      DisplayLabel = #34892#21495
      FieldName = 'FSEQ'
    end
    object cdsDetailTracyFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 80
    end
    object cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 80
    end
    object cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 80
    end
    object cdsDetailTracyFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetailTracyFASSCOEFFICIENT: TFloatField
      FieldName = 'FASSCOEFFICIENT'
    end
    object cdsDetailTracyFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailTracyFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailTracyFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailTracyFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailTracyFUNITID: TWideStringField
      FieldName = 'FUNITID'
      Size = 44
    end
    object cdsDetailTracyFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailTracyFASSISTUNITID: TWideStringField
      FieldName = 'FASSISTUNITID'
      Size = 44
    end
    object cdsDetailTracyFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object cdsDetailTracyFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdsDetailTracyFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Size = 44
    end
    object cdsDetailTracyFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 80
    end
    object cdsDetailTracyFQTY: TFloatField
      Tag = 1
      DisplayLabel = #25968#37327
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
    object cdsDetailTracyFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailTracyFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailTracyFREVERSEQTY: TFloatField
      FieldName = 'FREVERSEQTY'
    end
    object cdsDetailTracyFRETURNSQTY: TFloatField
      FieldName = 'FRETURNSQTY'
    end
    object cdsDetailTracyFPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'FPRICE'
    end
    object cdsDetailTracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailTracyFUNITSTANDARDCOST: TFloatField
      FieldName = 'FUNITSTANDARDCOST'
    end
    object cdsDetailTracyFSTANDARDCOST: TFloatField
      FieldName = 'FSTANDARDCOST'
    end
    object cdsDetailTracyFUNITACTUALCOST: TFloatField
      FieldName = 'FUNITACTUALCOST'
    end
    object cdsDetailTracyFACTUALCOST: TFloatField
      FieldName = 'FACTUALCOST'
    end
    object cdsDetailTracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailTracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailTracyFSTOCKTRANSFERBILLID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLID'
      Size = 44
    end
    object cdsDetailTracyFSTOCKTRANSBILLENTRYID: TWideStringField
      FieldName = 'FSTOCKTRANSBILLENTRYID'
      Size = 44
    end
    object cdsDetailTracyFSTOCKTRANSFERBILLNUM: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLNUM'
      Size = 80
    end
    object cdsDetailTracyFSTOCKTRANSFERBILLENTRYSEQ: TFloatField
      FieldName = 'FSTOCKTRANSFERBILLENTRYSEQ'
    end
    object cdsDetailTracyFEXP: TDateTimeField
      FieldName = 'FEXP'
    end
    object cdsDetailTracyFMFG: TDateTimeField
      FieldName = 'FMFG'
    end
    object cdsDetailTracyFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
    end
    object cdsDetailTracyFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
    end
    object cdsDetailTracyFBASEUNITACTUALCOST: TFloatField
      FieldName = 'FBASEUNITACTUALCOST'
    end
    object cdsDetailTracyFTOTALINWAREHSQTY: TFloatField
      FieldName = 'FTOTALINWAREHSQTY'
    end
    object cdsDetailTracyFCANINWAREHSBASEQTY: TFloatField
      FieldName = 'FCANINWAREHSBASEQTY'
    end
    object cdsDetailTracyFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailTracyFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailTracyFCUSTOMERID: TWideStringField
      FieldName = 'FCUSTOMERID'
      Size = 44
    end
    object cdsDetailTracyFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdsDetailTracyFSTORETYPEID: TWideStringField
      FieldName = 'FSTORETYPEID'
      Size = 44
    end
    object cdsDetailTracyCFCHECKINPUTQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdsDetailTracycfMaterialName: TStringField
      FieldName = 'cfMaterialName'
      Size = 200
    end
    object cdsDetailTracyCFColorCode: TStringField
      DisplayLabel = #39068#33394#32534#30721
      FieldName = 'CFColorCode'
      Size = 80
    end
    object cdsDetailTracyCFColorName: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsDetailTracyCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsDetailTracycfMaterialNumber: TStringField
      DisplayLabel = #21830#21697#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailTracyCFPACKName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPACKName'
      Size = 80
    end
    object cdsDetailTracyFRemark: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FRemark'
      Size = 200
    end
    object cdsDetailTracyCFUnitName: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFNUitName'
      Size = 60
    end
    object cdsDetailTracyCFInLocName: TWideStringField
      DisplayLabel = #35843#20837#24211#20301
      FieldName = 'CFInLocName'
      Size = 60
    end
    object cdsDetailTracyCFOutLocName: TStringField
      DisplayLabel = #35843#20986#24211#20301
      FieldName = 'CFOutLocName'
      Size = 60
    end
    object cdsDetailTracycfattributeid: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailTracyCfbrandid: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsDetailTracycfattributeName: TWideStringField
      DisplayLabel = #27874#27573
      FieldName = 'cfattributeName'
      Size = 60
    end
    object cdsDetailTracyCFBrandName: TWideStringField
      DisplayLabel = #21697#29260
      FieldName = 'CFBrandName'
      Size = 60
    end
    object cdsDetailTracyCFCHECKDIFFQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdsDetailTracyCFINLOCATIONID: TWideStringField
      FieldName = 'CFINLOCATIONID'
      Size = 44
    end
    object cdsDetailTracyCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailTracyCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailTracyCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailTracyCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailTracyCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailTracyCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailTracyCFINWAREHOUSEID: TWideStringField
      DisplayLabel = #20837#24211#20179#24211'ID'
      FieldName = 'CFINWAREHOUSEID'
      Size = 44
    end
    object cdsDetailTracyCFSizeCode: TWideStringField
      DisplayLabel = #23610#30721#32534#21495
      FieldName = 'CFSizeCode'
      Size = 40
    end
    object cdsDetailTracyCFSizeName: TWideStringField
      DisplayLabel = #23610#30721
      FieldName = 'CFSizeName'
      Size = 40
    end
    object cdsDetailTracyCFAssistNum: TWideStringField
      DisplayLabel = #36741#21161#23646#24615#32534#21495
      FieldName = 'CFAssistNum'
    end
    object cdsDetailTracycfdpprice: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'cfdpprice'
    end
    object cdsDetailTracycfdpamount: TFloatField
      DisplayLabel = #21514#29260#37329#39069
      FieldName = 'cfdpamount'
    end
    object cdsDetailTracyCFOldPackID: TWideStringField
      FieldName = 'CFOldPackID'
    end
  end
  object cdswarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdswarehouseFilterRecord
    Left = 673
    Top = 107
  end
  object cdsInStorageOrg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 237
  end
  object dsInStorageORg: TDataSource
    DataSet = cdsInStorageOrg
    Left = 552
    Top = 237
  end
  object dsOrderType: TDataSource
    DataSet = CliDM.cdsOrderType
    Left = 761
    Top = 105
  end
end
