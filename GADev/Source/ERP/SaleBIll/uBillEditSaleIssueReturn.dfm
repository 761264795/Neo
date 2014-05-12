inherited FM_BillEditSaleIssueReturn: TFM_BillEditSaleIssueReturn
  Left = 175
  Top = 47
  Caption = #38144#21806#36864#36135#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    Top = 208
    Height = 260
    inherited cxPageDetail: TcxPageControl
      Height = 260
      OnChange = cxPageDetailChange
      ClientRectBottom = 260
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Height = 212
          inherited dbgList2: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2FTotalQty
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2FTax
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2FAmount
              end>
            object dbgList2cfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2cfMaterialNumberPropertiesButtonClick
              Width = 120
            end
            object dbgList2cfMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialName'
              Options.Editing = False
              Width = 150
            end
            object dbgList2CFColorCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFColorCodePropertiesButtonClick
              Width = 60
            end
            object dbgList2CFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Options.Editing = False
              Width = 67
            end
            object dbgList2CFCupName: TcxGridDBColumn
              DataBinding.FieldName = 'CFCupName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFCupNamePropertiesButtonClick
              Width = 60
            end
            object dbgList2CFPackName: TcxGridDBColumn
              DataBinding.FieldName = 'CFPackName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFPackNamePropertiesButtonClick
              Visible = False
              Width = 60
            end
            object dbgList2CFPACKNUM: TcxGridDBColumn
              DataBinding.FieldName = 'CFPACKNUM'
              Visible = False
              Width = 60
            end
            object dbgList2CFDPPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFDPPRICE'
              Width = 60
            end
            object dbgList2FPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FPRICE'
              Width = 60
            end
            object dbgList2FACTUALPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FACTUALPRICE'
              Width = 60
            end
            object dbgList2FDISCOUNTRATE: TcxGridDBColumn
              DataBinding.FieldName = 'FDISCOUNTRATE'
              Width = 60
            end
            object dbgList2FActualTaxPrice: TcxGridDBColumn
              DataBinding.FieldName = 'FActualTaxPrice'
              Width = 60
            end
            object dbgList2FTaxRate: TcxGridDBColumn
              Caption = #31246#29575
              DataBinding.FieldName = 'FTaxRate'
              Width = 60
            end
            object dbgList2CFLocationName: TcxGridDBColumn
              DataBinding.FieldName = 'CFLocationName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFLocationNamePropertiesButtonClick
              Width = 60
            end
            object dbgList2fAmount_1: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_1'
              Width = 40
            end
            object dbgList2fAmount_2: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_2'
              Width = 40
            end
            object dbgList2fAmount_3: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_3'
              Width = 40
            end
            object dbgList2fAmount_4: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_4'
              Width = 40
            end
            object dbgList2fAmount_5: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_5'
              Width = 40
            end
            object dbgList2fAmount_6: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_6'
              Width = 40
            end
            object dbgList2fAmount_7: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_7'
              Width = 40
            end
            object dbgList2fAmount_8: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_8'
              Width = 40
            end
            object dbgList2fAmount_9: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_9'
              Width = 40
            end
            object dbgList2fAmount_10: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_10'
              Width = 40
            end
            object dbgList2fAmount_11: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_11'
              Width = 40
            end
            object dbgList2fAmount_12: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_12'
              Width = 40
            end
            object dbgList2fAmount_13: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_13'
              Width = 40
            end
            object dbgList2fAmount_14: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_14'
              Width = 40
            end
            object dbgList2fAmount_15: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_15'
              Width = 40
            end
            object dbgList2fAmount_16: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_16'
              Width = 40
            end
            object dbgList2fAmount_17: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_17'
              Width = 40
            end
            object dbgList2fAmount_18: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_18'
              Width = 40
            end
            object dbgList2fAmount_19: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_19'
              Width = 40
            end
            object dbgList2fAmount_20: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_20'
              Width = 40
            end
            object dbgList2fAmount_21: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_21'
              Width = 40
            end
            object dbgList2fAmount_22: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_22'
              Width = 40
            end
            object dbgList2fAmount_23: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_23'
              Width = 40
            end
            object dbgList2fAmount_24: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_24'
              Width = 40
            end
            object dbgList2fAmount_25: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_25'
              Width = 40
            end
            object dbgList2fAmount_26: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_26'
              Width = 40
            end
            object dbgList2fAmount_27: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_27'
              Width = 40
            end
            object dbgList2fAmount_28: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_28'
              Width = 40
            end
            object dbgList2fAmount_29: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_29'
              Width = 40
            end
            object dbgList2fAmount_30: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_30'
              Width = 40
            end
            object dbgList2FISPRESENT: TcxGridDBColumn
              DataBinding.FieldName = 'FISPRESENT'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Properties.OnChange = dbgList2FISPRESENTPropertiesChange
            end
            object dbgList2FTotalQty: TcxGridDBColumn
              DataBinding.FieldName = 'FTotalQty'
            end
            object dbgList2FTax: TcxGridDBColumn
              DataBinding.FieldName = 'FTax'
            end
            object dbgList2FAmount: TcxGridDBColumn
              DataBinding.FieldName = 'FAmount'
            end
            object dbgList2CFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Options.Editing = False
              Width = 80
            end
            object dbgList2cfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Options.Editing = False
              Width = 80
            end
            object dbgList2CFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Options.Editing = False
              Width = 60
            end
            object dbgList2fremark: TcxGridDBColumn
              DataBinding.FieldName = 'fremark'
              Width = 100
            end
          end
        end
        inherited Panel3: TPanel
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
          Height = 215
          inherited cxgridDetial: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFQTY
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTAX
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFNONTAXAMOUNT
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
              end>
            object cxgridDetialFSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'FSEQ'
              Width = 50
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
              Width = 60
            end
            object cxgridDetialCFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Width = 60
            end
            object cxgridDetialCFSizeCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeCode'
              Width = 60
            end
            object cxgridDetialCFSizeName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeName'
              Width = 60
            end
            object cxgridDetialCFCupName: TcxGridDBColumn
              DataBinding.FieldName = 'CFCupName'
              Width = 60
            end
            object cxgridDetialCFPackName: TcxGridDBColumn
              DataBinding.FieldName = 'CFPackName'
              Width = 60
            end
            object cxgridDetialCFPACKNUM: TcxGridDBColumn
              DataBinding.FieldName = 'CFPACKNUM'
              Width = 50
            end
            object cxgridDetialCFDPPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFDPPRICE'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 60
            end
            object cxgridDetialFPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FPRICE'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object cxgridDetialFDISCOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'FDISCOUNT'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object cxgridDetialFACTUALPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FACTUALPRICE'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object cxgridDetialFTAXRATE: TcxGridDBColumn
              DataBinding.FieldName = 'FTAXRATE'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 60
            end
            object cxgridDetialFACTUALTAXPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FACTUALTAXPRICE'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 60
            end
            object cxgridDetialFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'FQTY'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 60
            end
            object cxgridDetialFTAX: TcxGridDBColumn
              DataBinding.FieldName = 'FTAX'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 60
            end
            object cxgridDetialFNONTAXAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'FNONTAXAMOUNT'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 60
            end
            object cxgridDetialFISPRESENT: TcxGridDBColumn
              DataBinding.FieldName = 'FISPRESENT'
            end
            object cxgridDetialCFCHECKINPUTQTY: TcxGridDBColumn
              DataBinding.FieldName = 'CFCHECKINPUTQTY'
              Width = 60
            end
            object cxgridDetialCFCHECKDIFFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'CFCHECKDIFFQTY'
              Width = 60
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Width = 60
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Width = 60
            end
            object cxgridDetialCFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Width = 60
            end
            object cxgridDetialFBASESTATUS: TcxGridDBColumn
              DataBinding.FieldName = 'FBASESTATUS'
              Width = 60
            end
            object cxgridDetialFREMARK: TcxGridDBColumn
              DataBinding.FieldName = 'FREMARK'
              Width = 100
            end
          end
        end
        inherited Panel4: TPanel
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
    inherited selectGrid: TDBGrid
      Left = 160
      Top = 72
    end
  end
  inherited pnl_top: TPanel
    Top = 55
    Height = 153
    inherited pnlCodeSM: TPanel
      Top = 152
      Height = 0
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Height = 151
      HideTabs = False
      ClientRectBottom = 151
      ClientRectTop = 18
      inherited cxTabBaseInfo: TcxTabSheet
        Caption = #22522#26412#36164#26009
        inherited pnlTop: TPanel
          Height = 133
          inherited lbDescription: TLabel
            Left = 294
            Top = 114
          end
          inherited Label2: TLabel
            Left = 1
            Top = 6
          end
          inherited Label5: TLabel
            Top = 6
          end
          inherited txDescription: TcxDBTextEdit
            Left = 356
            Top = 106
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 12
            Width = 261
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Hint = #19994#21153#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 2
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 59
            DataBinding.DataField = 'FNUMBER'
            Width = 178
          end
          inherited lblNumber: TcxLabel
            Left = 294
            Caption = #36865#36135#23458#25143
          end
          inherited txtName: TcxDBTextEdit
            Left = 443
            DataBinding.DataField = 'CFCustName'
            TabOrder = 13
            Width = 174
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 762
            Top = 29
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 5
          end
          inherited cxLabel1: TcxLabel
            Top = 29
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 356
            Hint = #36865#36135#23458#25143
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 1
            OnKeyPress = cxbtnNUmberKeyPress
            Width = 90
          end
          object cxLabel2: TcxLabel
            Left = 294
            Top = 33
            Caption = #35746#21333#31867#22411
          end
          object cxcmbOrderType: TcxDBLookupComboBox
            Tag = 100
            Left = 356
            Top = 31
            Hint = #35746#21333#31867#22411
            DataBinding.DataField = 'CFORDERTYPEID'
            DataBinding.DataSource = dsMaster
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'Fname_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsOrderType
            TabOrder = 4
            Width = 261
          end
          object cxLabel3: TcxLabel
            Left = 1
            Top = 29
            Caption = #20215#26684#31867#22411
            Transparent = True
          end
          object cxcmbpriceType: TcxDBLookupComboBox
            Tag = 100
            Left = 59
            Top = 29
            Hint = #20215#26684#31867#22411
            DataBinding.DataField = 'CFPRICETYPEID'
            DataBinding.DataSource = dsMaster
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'Fname_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsPriceType
            TabOrder = 3
            Width = 177
          end
          object cxLabel7: TcxLabel
            Left = 1
            Top = 110
            Caption = #25910#36135#20179#24211
            Transparent = True
          end
          object cxbtnReceivWareNum: TcxButtonEdit
            Left = 59
            Top = 104
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnReceivWareNumPropertiesButtonClick
            Properties.OnChange = cxbtnReceivWareNumPropertiesChange
            TabOrder = 11
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            OnKeyPress = cxbtnReceivWareNumKeyPress
            Width = 81
          end
          object cxLabel5: TcxLabel
            Left = 1
            Top = 83
            Caption = #21457#36135#20179#24211
            Transparent = True
          end
          object cxbtnSendWareNum: TcxButtonEdit
            Left = 59
            Top = 79
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnSendWareNumPropertiesButtonClick
            Properties.OnChange = cxbtnSendWareNumPropertiesChange
            TabOrder = 9
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            OnKeyPress = cxbtnSendWareNumKeyPress
            Width = 78
          end
          object cxbtnSendWareName: TcxDBTextEdit
            Left = 134
            Top = 79
            DataBinding.DataField = 'CFSendWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 20
            Width = 102
          end
          object cxbtnReceivWareName: TcxDBTextEdit
            Left = 135
            Top = 104
            DataBinding.DataField = 'CFReceivWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 21
            Width = 100
          end
          object CFReceivOrgName: TcxDBTextEdit
            Left = 443
            Top = 81
            DataBinding.DataField = 'CFReceivOrgName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 22
            Width = 174
          end
          object cxbtnReceivOrgNum: TcxButtonEdit
            Left = 356
            Top = 81
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnReceivOrgNumPropertiesButtonClick
            Properties.OnChange = cxbtnReceivOrgNumPropertiesChange
            TabOrder = 10
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            OnKeyPress = cxbtnReceivOrgNumKeyPress
            Width = 90
          end
          object cxLabel6: TcxLabel
            Left = 294
            Top = 87
            Caption = #25910#36135#26426#26500
            Transparent = True
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 696
            Top = 84
            AutoSize = False
            Caption = #21547#31246'  '
            DataBinding.DataField = 'FISINTAX'
            DataBinding.DataSource = dsMaster
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 24
            Height = 21
            Width = 82
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 792
            Top = 84
            AutoSize = False
            Caption = #21021#22987#21270#21333#25454'  '
            DataBinding.DataField = 'FISINITBILL'
            DataBinding.DataSource = dsMaster
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 25
            Height = 21
            Width = 110
          end
          object cxDBCheckBox3: TcxDBCheckBox
            Left = 919
            Top = 84
            AutoSize = False
            Caption = #39035#35013#31665
            DataBinding.DataField = 'CFISPACKING'
            DataBinding.DataSource = dsMaster
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 26
            Height = 21
            Width = 90
          end
          object cxDBCheckBox4: TcxDBCheckBox
            Left = 792
            Top = 110
            AutoSize = False
            Caption = #24050#29983#25104#24212#25910#21333
            DataBinding.DataField = 'CFISOTHER'
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 27
            Height = 21
            Width = 110
          end
          object cxDBCheckBox5: TcxDBCheckBox
            Left = 696
            Top = 110
            AutoSize = False
            Caption = #38646#21806#21333
            DataBinding.DataField = 'CFISPOS'
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 28
            Height = 21
            Width = 82
          end
          object cxLabel4: TcxLabel
            Left = 1
            Top = 56
            Caption = #38144#21806#35746#21333
          end
          object cxbtnSO: TcxButtonEdit
            Left = 59
            Top = 54
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            TabOrder = 6
            Width = 178
          end
          object cxcmbSendType: TcxDBLookupComboBox
            Tag = 100
            Left = 762
            Top = 54
            Hint = #21457#36135#31867#22411
            DataBinding.DataField = 'CFSHIPTYPE'
            DataBinding.DataSource = dsMaster
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'Fname_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsShipType
            TabOrder = 8
            Width = 166
          end
          object cxLabel8: TcxLabel
            Left = 696
            Top = 56
            Caption = #21457#36135#31867#22411
            Transparent = True
          end
          object cxLabel9: TcxLabel
            Left = 294
            Top = 60
            Caption = #37197#36135#21333
          end
          object cxbtnAM: TcxButtonEdit
            Left = 356
            Top = 56
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            TabOrder = 7
            Width = 261
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = #20854#20182#36164#26009
        ImageIndex = 1
        object cxLabel12: TcxLabel
          Left = 6
          Top = 6
          Caption = #24212#25910#23458#25143
        end
        object cxbtnBalanceCust: TcxButtonEdit
          Left = 68
          Top = 6
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxbtnBalanceCustPropertiesButtonClick
          Properties.OnChange = cxbtnBalanceCustPropertiesChange
          TabOrder = 1
          OnEnter = btnEnter
          OnExit = btnExit
          OnKeyDown = btnKeyDown
          OnKeyPress = cxbtnBalanceCustKeyPress
          Width = 90
        end
        object cxedtBalanceCust: TcxDBTextEdit
          Left = 155
          Top = 6
          DataBinding.DataField = 'CFBalanceCustName'
          DataBinding.DataSource = dsMaster
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 166
        end
        object cxLabel14: TcxLabel
          Left = 338
          Top = 6
          Caption = #35746#36135#23458#25143
        end
        object cxbtnOrderCust: TcxButtonEdit
          Left = 400
          Top = 6
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxbtnOrderCustPropertiesButtonClick
          Properties.OnChange = cxbtnOrderCustPropertiesChange
          TabOrder = 4
          OnEnter = btnEnter
          OnExit = btnExit
          OnKeyDown = btnKeyDown
          OnKeyPress = cxbtnOrderCustKeyPress
          Width = 90
        end
        object cxedtOrderCust: TcxDBTextEdit
          Left = 487
          Top = 6
          DataBinding.DataField = 'CFOrderCustName'
          DataBinding.DataSource = dsMaster
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 5
          Width = 166
        end
        object cxLabel13: TcxLabel
          Left = 678
          Top = 6
          Caption = #25910#27454#23458#25143
        end
        object cxbtnPayCust: TcxButtonEdit
          Left = 740
          Top = 6
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxbtnPayCustPropertiesButtonClick
          Properties.OnChange = cxbtnPayCustPropertiesChange
          TabOrder = 7
          OnEnter = btnEnter
          OnExit = btnExit
          OnKeyDown = btnKeyDown
          OnKeyPress = cxbtnPayCustKeyPress
          Width = 90
        end
        object cxedtPayCust: TcxDBTextEdit
          Left = 827
          Top = 6
          DataBinding.DataField = 'CFPayCustName'
          DataBinding.DataSource = dsMaster
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 8
          Width = 166
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Left = 357
    Top = 97
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      55
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
    object btn_PackingList: TdxBarButton
      Caption = #35013#31665#31649#29702
      Category = 0
      Hint = #35013#31665#31649#29702
      Visible = ivAlways
      ImageIndex = 1
      LargeImageIndex = 1
      Lowered = True
      PaintStyle = psCaptionGlyph
      OnClick = btn_PackingListClick
    end
  end
  inherited cdsMaster: TClientDataSet
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
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
      Size = 44
    end
    object cdsMasterFSOURCEFUNCTION: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 160
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
    object cdsMasterFCUSTOMERID: TWideStringField
      FieldName = 'FCUSTOMERID'
      OnChange = cdsMasterFCUSTOMERIDChange
      Size = 44
    end
    object cdsMasterFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterFPAYMENTTYPEID: TWideStringField
      FieldName = 'FPAYMENTTYPEID'
      Size = 44
    end
    object cdsMasterFCONVERTMODE: TFloatField
      FieldName = 'FCONVERTMODE'
    end
    object cdsMasterFISSYSBILL: TFloatField
      FieldName = 'FISSYSBILL'
    end
    object cdsMasterFTOTALLOCALAMOUNT: TFloatField
      FieldName = 'FTOTALLOCALAMOUNT'
    end
    object cdsMasterFACTBIZDATE: TDateTimeField
      FieldName = 'FACTBIZDATE'
    end
    object cdsMasterFISGENBIZAR: TFloatField
      FieldName = 'FISGENBIZAR'
    end
    object cdsMasterFISINTAX: TFloatField
      FieldName = 'FISINTAX'
    end
    object cdsMasterFMONTH: TFloatField
      FieldName = 'FMONTH'
    end
    object cdsMasterFDAY: TFloatField
      FieldName = 'FDAY'
    end
    object cdsMasterCFISPOS: TFloatField
      FieldName = 'CFISPOS'
    end
    object cdsMasterCFPRICETYPEID: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterCFPOSDATE: TDateTimeField
      FieldName = 'CFPOSDATE'
    end
    object cdsMasterCFTRANSORGUNITID: TWideStringField
      FieldName = 'CFTRANSORGUNITID'
      Size = 44
    end
    object cdsMasterCFTRANSNUMBER: TWideStringField
      FieldName = 'CFTRANSNUMBER'
      Size = 200
    end
    object cdsMasterCFISBADSHOE: TFloatField
      FieldName = 'CFISBADSHOE'
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterCFSTOREID: TWideStringField
      FieldName = 'CFSTOREID'
      Size = 44
    end
    object cdsMasterCFORDERTYPEID: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterCFSPECIAL: TWideStringField
      FieldName = 'CFSPECIAL'
      Size = 44
    end
    object cdsMasterCFISOTHER: TFloatField
      FieldName = 'CFISOTHER'
    end
    object cdsMasterCFINWAREHOUSEID: TWideStringField
      FieldName = 'CFINWAREHOUSEID'
      OnChange = cdsMasterCFINWAREHOUSEIDChange
      Size = 88
    end
    object cdsMasterCFLOGISTICSSTATUS: TFloatField
      FieldName = 'CFLOGISTICSSTATUS'
    end
    object cdsMasterCFISPACKING: TFloatField
      FieldName = 'CFISPACKING'
    end
    object cdsMasterCFISPICK: TFloatField
      FieldName = 'CFISPICK'
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 100
    end
    object cdsMasterCFRECEIVESTOREUNIT: TWideStringField
      FieldName = 'CFRECEIVESTOREUNIT'
      OnChange = cdsMasterCFRECEIVESTOREUNITChange
      Size = 44
    end
    object cdsMasterCFPICKMANID: TWideStringField
      FieldName = 'CFPICKMANID'
      Size = 44
    end
    object cdsMasterCFSCANMANID: TWideStringField
      FieldName = 'CFSCANMANID'
      Size = 44
    end
    object cdsMasterCFPACKMANID: TWideStringField
      FieldName = 'CFPACKMANID'
      Size = 44
    end
    object cdsMasterCFRETURNTYPEID: TWideStringField
      FieldName = 'CFRETURNTYPEID'
      Size = 44
    end
    object cdsMasterCFSHIPTYPE: TWideStringField
      FieldName = 'CFSHIPTYPE'
      Size = 44
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
    object cdsMasterCFReceivOrgName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivOrgName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFCustName'
      Size = 80
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
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 80
      Calculated = True
    end
    object cdsMasterFBalanceCustomerID: TWideStringField
      FieldName = 'FBalanceCustomerID'
      Size = 44
    end
    object cdsMasterFOrderCustomerID: TWideStringField
      FieldName = 'FOrderCustomerID'
      Size = 44
    end
    object cdsMasterFPaymentCustomerID: TWideStringField
      FieldName = 'FPaymentCustomerID'
      Size = 44
    end
    object cdsMasterCFBalanceCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFBalanceCustName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFOrderCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFOrderCustName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFPayCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFPayCustName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFWAREHOUSEID: TWideStringField
      FieldName = 'CFWAREHOUSEID'
      OnChange = cdsMasterCFWAREHOUSEIDChange
      Size = 44
    end
  end
  inherited dsMaster: TDataSource
    Left = 592
    Top = 71
  end
  inherited cdsDetail: TClientDataSet
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object cdsDetailFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 44
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
    object cdsDetailFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
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
    object cdsDetailFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
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
      Size = 160
    end
    object cdsDetailFQTY: TFloatField
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
    object cdsDetailFSALEORDERID: TWideStringField
      FieldName = 'FSALEORDERID'
      Size = 44
    end
    object cdsDetailFSALEORDERENTRYID: TWideStringField
      FieldName = 'FSALEORDERENTRYID'
      Size = 44
    end
    object cdsDetailFWRITTENOFFQTY: TFloatField
      FieldName = 'FWRITTENOFFQTY'
    end
    object cdsDetailFWRITTENOFFAMOUNT: TFloatField
      FieldName = 'FWRITTENOFFAMOUNT'
    end
    object cdsDetailFUNWRITEOFFQTY: TFloatField
      FieldName = 'FUNWRITEOFFQTY'
    end
    object cdsDetailFUNWRITEOFFAMOUNT: TFloatField
      FieldName = 'FUNWRITEOFFAMOUNT'
    end
    object cdsDetailFORDERNUMBER: TWideStringField
      FieldName = 'FORDERNUMBER'
      Size = 160
    end
    object cdsDetailFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 160
    end
    object cdsDetailFSALEORDERENTRYSEQ: TFloatField
      FieldName = 'FSALEORDERENTRYSEQ'
    end
    object cdsDetailFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailFLOCALPRICE: TFloatField
      FieldName = 'FLOCALPRICE'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFNONTAXAMOUNT: TFloatField
      FieldName = 'FNONTAXAMOUNT'
    end
    object cdsDetailFLOCALNONTAXAMOUNT: TFloatField
      FieldName = 'FLOCALNONTAXAMOUNT'
    end
    object cdsDetailFDREWQTY: TFloatField
      FieldName = 'FDREWQTY'
    end
    object cdsDetailFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailFMFG: TDateTimeField
      FieldName = 'FMFG'
    end
    object cdsDetailFEXP: TDateTimeField
      FieldName = 'FEXP'
    end
    object cdsDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
    end
    object cdsDetailFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
    end
    object cdsDetailFWRITTENOFFBASEQTY: TFloatField
      FieldName = 'FWRITTENOFFBASEQTY'
    end
    object cdsDetailFUNWRITEOFFBASEQTY: TFloatField
      FieldName = 'FUNWRITEOFFBASEQTY'
    end
    object cdsDetailFDREWBASEQTY: TFloatField
      FieldName = 'FDREWBASEQTY'
    end
    object cdsDetailFCOREBILLTYPEID: TWideStringField
      FieldName = 'FCOREBILLTYPEID'
      Size = 44
    end
    object cdsDetailFUNRETURNEDBASEQTY: TFloatField
      FieldName = 'FUNRETURNEDBASEQTY'
    end
    object cdsDetailFISLOCKED: TFloatField
      FieldName = 'FISLOCKED'
    end
    object cdsDetailFINVENTORYID: TWideStringField
      FieldName = 'FINVENTORYID'
      Size = 44
    end
    object cdsDetailFORDERPRICE: TFloatField
      FieldName = 'FORDERPRICE'
    end
    object cdsDetailFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailFSALEORGUNITID: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsDetailFSALEGROUPID: TWideStringField
      FieldName = 'FSALEGROUPID'
      Size = 44
    end
    object cdsDetailFSALEPERSONID: TWideStringField
      FieldName = 'FSALEPERSONID'
      Size = 44
    end
    object cdsDetailFBASEUNITACTUALCOST: TFloatField
      FieldName = 'FBASEUNITACTUALCOST'
    end
    object cdsDetailFUNDELIVERQTY: TFloatField
      FieldName = 'FUNDELIVERQTY'
    end
    object cdsDetailFUNDELIVERBASEQTY: TFloatField
      FieldName = 'FUNDELIVERBASEQTY'
    end
    object cdsDetailFUNINQTY: TFloatField
      FieldName = 'FUNINQTY'
    end
    object cdsDetailFUNINBASEQTY: TFloatField
      FieldName = 'FUNINBASEQTY'
    end
    object cdsDetailFBALANCECUSTOMERID: TWideStringField
      FieldName = 'FBALANCECUSTOMERID'
      Size = 44
    end
    object cdsDetailFISCENTERBALANCE: TFloatField
      FieldName = 'FISCENTERBALANCE'
    end
    object cdsDetailFISBETWEENCOMPANYSEND: TFloatField
      FieldName = 'FISBETWEENCOMPANYSEND'
    end
    object cdsDetailFTOTALINWAREHSQTY: TFloatField
      FieldName = 'FTOTALINWAREHSQTY'
    end
    object cdsDetailFPAYMENTCUSTOMERID: TWideStringField
      FieldName = 'FPAYMENTCUSTOMERID'
      Size = 44
    end
    object cdsDetailFORDERCUSTOMERID: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsDetailFCONFIRMQTY: TFloatField
      FieldName = 'FCONFIRMQTY'
    end
    object cdsDetailFCONFIRMBASEQTY: TFloatField
      FieldName = 'FCONFIRMBASEQTY'
    end
    object cdsDetailFASSOCIATEBASEQTY: TFloatField
      FieldName = 'FASSOCIATEBASEQTY'
    end
    object cdsDetailFCONFIRMDATE: TDateTimeField
      FieldName = 'FCONFIRMDATE'
    end
    object cdsDetailFSENDADDRESS: TWideStringField
      FieldName = 'FSENDADDRESS'
      Size = 510
    end
    object cdsDetailFNETORDERBILLNUMBER: TWideStringField
      FieldName = 'FNETORDERBILLNUMBER'
      Size = 160
    end
    object cdsDetailFNETORDERBILLID: TWideStringField
      FieldName = 'FNETORDERBILLID'
      Size = 88
    end
    object cdsDetailFNETORDERBILLENTRYID: TWideStringField
      FieldName = 'FNETORDERBILLENTRYID'
      Size = 88
    end
    object cdsDetailFISSQUAREBALANCE: TFloatField
      FieldName = 'FISSQUAREBALANCE'
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailFCONTRACTNUMBER: TWideStringField
      FieldName = 'FCONTRACTNUMBER'
      Size = 255
    end
    object cdsDetailFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdsDetailFSALEPRICE: TFloatField
      FieldName = 'FSALEPRICE'
    end
    object cdsDetailFDISCOUNTTYPE: TFloatField
      FieldName = 'FDISCOUNTTYPE'
    end
    object cdsDetailFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetailFDISCOUNT: TFloatField
      FieldName = 'FDISCOUNT'
    end
    object cdsDetailFISFULLWRITEOFF: TFloatField
      FieldName = 'FISFULLWRITEOFF'
    end
    object cdsDetailCFSETTLEBACKTYPEID: TWideStringField
      FieldName = 'CFSETTLEBACKTYPEID'
      Size = 44
    end
    object cdsDetailCFSETTLEDATE: TDateTimeField
      FieldName = 'CFSETTLEDATE'
    end
    object cdsDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailCFPOSDATE: TDateTimeField
      FieldName = 'CFPOSDATE'
    end
    object cdsDetailCFCHECKINPUTQTY: TFloatField
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdsDetailCFCHECKDIFFQTY: TFloatField
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdsDetailFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailCFISOTHERREC: TFloatField
      FieldName = 'CFISOTHERREC'
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailCFASSISTNUM: TWideStringField
      FieldName = 'CFASSISTNUM'
      Size = 0
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    object cdsDetailAmountCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailAmountFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailAmountcfMaterialNumber: TStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailAmountcfMaterialName: TStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'cfMaterialName'
      Size = 200
    end
    object cdsDetailAmountCFColorCode: TStringField
      DisplayLabel = #33394#21495
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsDetailAmountCFColorName: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsDetailAmountCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsDetailAmountCFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 50
    end
    object cdsDetailAmountCFPACKNUM: TFloatField
      DisplayLabel = #31665#25968
      FieldName = 'CFPACKNUM'
      OnChange = cdsDetailAmountCFPACKNUMChange
    end
    object cdsDetailAmountFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      OnChange = cdsDetailAmountFMATERIALIDChange
      Size = 44
    end
    object cdsDetailAmountCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailAmountCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailAmountCFDPPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailAmountCFPACKID: TStringField
      FieldName = 'CFPACKID'
      OnChange = cdsDetailAmountCFPACKIDChange
      Size = 44
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
    object cdsDetailAmountFPRICE: TFloatField
      DisplayLabel = #26631#20934#20215
      FieldName = 'FPRICE'
    end
    object cdsDetailAmountFACTUALPRICE: TFloatField
      DisplayLabel = #25240#21518#21333#20215
      FieldName = 'FACTUALPRICE'
      OnChange = cdsDetailAmountFACTUALPRICEChange
    end
    object cdsDetailAmountFDISCOUNTRATE: TFloatField
      DisplayLabel = #25240#25187
      FieldName = 'FDISCOUNTRATE'
      OnChange = cdsDetailAmountFDISCOUNTRATEChange
    end
    object cdsDetailAmountCFBrandName: TWideStringField
      DisplayLabel = #21697#29260
      FieldName = 'CFBrandName'
      Size = 60
    end
    object cdsDetailAmountcfattributeName: TWideStringField
      DisplayLabel = #27874#27573
      FieldName = 'cfattributeName'
      Size = 60
    end
    object cdsDetailAmountCfbrandid: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsDetailAmountcfattributeid: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailAmountCFLocationName: TWideStringField
      DisplayLabel = #24211#20301
      FieldName = 'CFLocationName'
      Size = 60
    end
    object cdsDetailAmountFPURORDERNUMBER: TWideStringField
      FieldName = 'FPURORDERNUMBER'
      Size = 60
    end
    object cdsDetailAmountFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 60
    end
    object cdsDetailAmountCFNUitName: TWideStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFNUitName'
      Size = 10
    end
    object cdsDetailAmountFTotalQty: TFloatField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FTotalQty'
      Calculated = True
    end
    object cdsDetailAmountFAmount: TFloatField
      DisplayLabel = #37329#39069#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FAmount'
      Calculated = True
    end
    object cdsDetailAmountfremark: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'fremark'
      Size = 400
    end
    object cdsDetailAmountFISPRESENT: TFloatField
      DisplayLabel = #36192#21697
      FieldName = 'FISPRESENT'
    end
    object cdsDetailAmountFActualTaxPrice: TFloatField
      DisplayLabel = #25240#21518#21547#31246#21333#20215
      FieldName = 'FActualTaxPrice'
      OnChange = cdsDetailAmountFActualTaxPriceChange
    end
    object cdsDetailAmountFTax: TFloatField
      DisplayLabel = #31246#39069
      FieldName = 'FTax'
    end
    object cdsDetailAmountFTaxRate: TFloatField
      FieldName = 'FTaxRate'
      OnChange = cdsDetailAmountFTaxRateChange
    end
    object cdsDetailAmountFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 680
    Top = 120
  end
  inherited dsSelect: TDataSource
    Left = 88
    Top = 137
  end
  inherited cdsSelect: TClientDataSet
    Left = 257
    Top = 168
  end
  inherited dsHeadSel: TDataSource
    Left = 505
    Top = 113
  end
  inherited cdsHeadSel: TClientDataSet
    Left = 553
    Top = 113
  end
  inherited dsInputWay: TDataSource
    Top = 49
  end
  inherited cdsDetailTracy: TClientDataSet
    object cdsDetailTracyFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailTracyFSEQ: TFloatField
      DisplayLabel = #24207#21495
      FieldName = 'FSEQ'
    end
    object cdsDetailTracyFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 44
    end
    object cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object cdsDetailTracyFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 44
    end
    object cdsDetailTracyFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetailTracyFASSCOEFFICIENT: TFloatField
      FieldName = 'FASSCOEFFICIENT'
    end
    object cdsDetailTracyFBASESTATUS: TFloatField
      DisplayLabel = #34892#29366#24577
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailTracyFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
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
    object cdsDetailTracyFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailTracyFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
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
      Size = 160
    end
    object cdsDetailTracyFQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'FQTY'
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
      DisplayLabel = #26631#20934#20215
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
      DisplayLabel = #36192#21697
      FieldName = 'FISPRESENT'
    end
    object cdsDetailTracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailTracyFSALEORDERID: TWideStringField
      FieldName = 'FSALEORDERID'
      Size = 44
    end
    object cdsDetailTracyFSALEORDERENTRYID: TWideStringField
      FieldName = 'FSALEORDERENTRYID'
      Size = 44
    end
    object cdsDetailTracyFWRITTENOFFQTY: TFloatField
      FieldName = 'FWRITTENOFFQTY'
    end
    object cdsDetailTracyFWRITTENOFFAMOUNT: TFloatField
      FieldName = 'FWRITTENOFFAMOUNT'
    end
    object cdsDetailTracyFUNWRITEOFFQTY: TFloatField
      FieldName = 'FUNWRITEOFFQTY'
    end
    object cdsDetailTracyFUNWRITEOFFAMOUNT: TFloatField
      FieldName = 'FUNWRITEOFFAMOUNT'
    end
    object cdsDetailTracyFORDERNUMBER: TWideStringField
      FieldName = 'FORDERNUMBER'
      Size = 160
    end
    object cdsDetailTracyFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 160
    end
    object cdsDetailTracyFSALEORDERENTRYSEQ: TFloatField
      FieldName = 'FSALEORDERENTRYSEQ'
    end
    object cdsDetailTracyFTAXRATE: TFloatField
      DisplayLabel = #31246#29575
      FieldName = 'FTAXRATE'
    end
    object cdsDetailTracyFTAX: TFloatField
      DisplayLabel = #31246#39069
      FieldName = 'FTAX'
    end
    object cdsDetailTracyFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailTracyFLOCALPRICE: TFloatField
      FieldName = 'FLOCALPRICE'
    end
    object cdsDetailTracyFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailTracyFNONTAXAMOUNT: TFloatField
      DisplayLabel = #37329#39069
      FieldName = 'FNONTAXAMOUNT'
    end
    object cdsDetailTracyFLOCALNONTAXAMOUNT: TFloatField
      FieldName = 'FLOCALNONTAXAMOUNT'
    end
    object cdsDetailTracyFDREWQTY: TFloatField
      FieldName = 'FDREWQTY'
    end
    object cdsDetailTracyFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailTracyFMFG: TDateTimeField
      FieldName = 'FMFG'
    end
    object cdsDetailTracyFEXP: TDateTimeField
      FieldName = 'FEXP'
    end
    object cdsDetailTracyFREMARK: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailTracyFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
    end
    object cdsDetailTracyFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
    end
    object cdsDetailTracyFWRITTENOFFBASEQTY: TFloatField
      FieldName = 'FWRITTENOFFBASEQTY'
    end
    object cdsDetailTracyFUNWRITEOFFBASEQTY: TFloatField
      FieldName = 'FUNWRITEOFFBASEQTY'
    end
    object cdsDetailTracyFDREWBASEQTY: TFloatField
      FieldName = 'FDREWBASEQTY'
    end
    object cdsDetailTracyFCOREBILLTYPEID: TWideStringField
      FieldName = 'FCOREBILLTYPEID'
      Size = 44
    end
    object cdsDetailTracyFUNRETURNEDBASEQTY: TFloatField
      FieldName = 'FUNRETURNEDBASEQTY'
    end
    object cdsDetailTracyFISLOCKED: TFloatField
      FieldName = 'FISLOCKED'
    end
    object cdsDetailTracyFINVENTORYID: TWideStringField
      FieldName = 'FINVENTORYID'
      Size = 44
    end
    object cdsDetailTracyFORDERPRICE: TFloatField
      FieldName = 'FORDERPRICE'
    end
    object cdsDetailTracyFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailTracyFACTUALPRICE: TFloatField
      DisplayLabel = #25240#21518#21333#20215
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailTracyFSALEORGUNITID: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFSALEGROUPID: TWideStringField
      FieldName = 'FSALEGROUPID'
      Size = 44
    end
    object cdsDetailTracyFSALEPERSONID: TWideStringField
      FieldName = 'FSALEPERSONID'
      Size = 44
    end
    object cdsDetailTracyFBASEUNITACTUALCOST: TFloatField
      FieldName = 'FBASEUNITACTUALCOST'
    end
    object cdsDetailTracyFUNDELIVERQTY: TFloatField
      FieldName = 'FUNDELIVERQTY'
    end
    object cdsDetailTracyFUNDELIVERBASEQTY: TFloatField
      FieldName = 'FUNDELIVERBASEQTY'
    end
    object cdsDetailTracyFUNINQTY: TFloatField
      FieldName = 'FUNINQTY'
    end
    object cdsDetailTracyFUNINBASEQTY: TFloatField
      FieldName = 'FUNINBASEQTY'
    end
    object cdsDetailTracyFBALANCECUSTOMERID: TWideStringField
      FieldName = 'FBALANCECUSTOMERID'
      Size = 44
    end
    object cdsDetailTracyFISCENTERBALANCE: TFloatField
      FieldName = 'FISCENTERBALANCE'
    end
    object cdsDetailTracyFISBETWEENCOMPANYSEND: TFloatField
      FieldName = 'FISBETWEENCOMPANYSEND'
    end
    object cdsDetailTracyFTOTALINWAREHSQTY: TFloatField
      FieldName = 'FTOTALINWAREHSQTY'
    end
    object cdsDetailTracyFPAYMENTCUSTOMERID: TWideStringField
      FieldName = 'FPAYMENTCUSTOMERID'
      Size = 44
    end
    object cdsDetailTracyFORDERCUSTOMERID: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsDetailTracyFCONFIRMQTY: TFloatField
      FieldName = 'FCONFIRMQTY'
    end
    object cdsDetailTracyFCONFIRMBASEQTY: TFloatField
      FieldName = 'FCONFIRMBASEQTY'
    end
    object cdsDetailTracyFASSOCIATEBASEQTY: TFloatField
      FieldName = 'FASSOCIATEBASEQTY'
    end
    object cdsDetailTracyFCONFIRMDATE: TDateTimeField
      FieldName = 'FCONFIRMDATE'
    end
    object cdsDetailTracyFSENDADDRESS: TWideStringField
      FieldName = 'FSENDADDRESS'
      Size = 510
    end
    object cdsDetailTracyFNETORDERBILLNUMBER: TWideStringField
      FieldName = 'FNETORDERBILLNUMBER'
      Size = 160
    end
    object cdsDetailTracyFNETORDERBILLID: TWideStringField
      FieldName = 'FNETORDERBILLID'
      Size = 88
    end
    object cdsDetailTracyFNETORDERBILLENTRYID: TWideStringField
      FieldName = 'FNETORDERBILLENTRYID'
      Size = 88
    end
    object cdsDetailTracyFISSQUAREBALANCE: TFloatField
      FieldName = 'FISSQUAREBALANCE'
    end
    object cdsDetailTracyFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailTracyFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailTracyFCONTRACTNUMBER: TWideStringField
      FieldName = 'FCONTRACTNUMBER'
      Size = 255
    end
    object cdsDetailTracyFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdsDetailTracyFSALEPRICE: TFloatField
      FieldName = 'FSALEPRICE'
    end
    object cdsDetailTracyFDISCOUNTTYPE: TFloatField
      FieldName = 'FDISCOUNTTYPE'
    end
    object cdsDetailTracyFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetailTracyFDISCOUNT: TFloatField
      DisplayLabel = #25240#25187
      FieldName = 'FDISCOUNT'
    end
    object cdsDetailTracyFISFULLWRITEOFF: TFloatField
      FieldName = 'FISFULLWRITEOFF'
    end
    object cdsDetailTracyCFSETTLEBACKTYPEID: TWideStringField
      FieldName = 'CFSETTLEBACKTYPEID'
      Size = 44
    end
    object cdsDetailTracyCFSETTLEDATE: TDateTimeField
      FieldName = 'CFSETTLEDATE'
    end
    object cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetailTracyCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailTracyCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailTracyCFPACKNUM: TFloatField
      DisplayLabel = #31665#25968
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailTracyCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailTracyCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailTracyCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailTracyCFPOSDATE: TDateTimeField
      FieldName = 'CFPOSDATE'
    end
    object cdsDetailTracyCFCHECKINPUTQTY: TFloatField
      DisplayLabel = #25195#25551#25968
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdsDetailTracyCFCHECKDIFFQTY: TFloatField
      DisplayLabel = #24046#24322#25968
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdsDetailTracyFACTUALTAXPRICE: TFloatField
      DisplayLabel = #23454#38469#21547#31246#21333#20215
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailTracyCFISOTHERREC: TFloatField
      FieldName = 'CFISOTHERREC'
    end
    object cdsDetailTracyCFDPPRICE: TFloatField
      DisplayLabel = ' '#21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailTracycfMaterialNumber: TStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailTracycfMaterialName: TStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'cfMaterialName'
      Size = 200
    end
    object cdsDetailTracyCFColorCode: TStringField
      DisplayLabel = #33394#21495
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsDetailTracyCFColorName: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'CFColorName'
      Size = 200
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
    object cdsDetailTracyCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsDetailTracyCFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 50
    end
    object cdsDetailTracyCFBrandName: TWideStringField
      DisplayLabel = #21697#29260
      FieldName = 'CFBrandName'
      Size = 60
    end
    object cdsDetailTracycfattributeName: TWideStringField
      DisplayLabel = #27874#27573
      FieldName = 'cfattributeName'
      Size = 60
    end
    object cdsDetailTracyCfbrandid: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsDetailTracycfattributeid: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailTracyCFNUitName: TWideStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFNUitName'
      Size = 10
    end
  end
  inherited cdstracy: TClientDataSet
    object cdstracyFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdstracyFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdstracyFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdstracyFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdstracyFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdstracyFQTY: TFloatField
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
    object cdstracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdstracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdstracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdstracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdstracyFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdstracyFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdstracyFNONTAXAMOUNT: TFloatField
      FieldName = 'FNONTAXAMOUNT'
    end
    object cdstracyFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdstracyFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdstracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdstracyFDISCOUNT: TFloatField
      FieldName = 'FDISCOUNT'
    end
    object cdstracyCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdstracyCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdstracyCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdstracyCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdstracyCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdstracyCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdstracyCFCHECKINPUTQTY: TFloatField
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdstracyCFCHECKDIFFQTY: TFloatField
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdstracyFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdstracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsCustomerFilterRecord
    Left = 521
    Top = 49
  end
  object cdswarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 153
    Top = 139
  end
  object cdsBranch: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 633
    Top = 129
  end
  object dsPriceType: TDataSource
    DataSet = CliDM.cdsPriceType
    Left = 137
    Top = 73
  end
  object dsOrderType: TDataSource
    DataSet = CliDM.cdsOrderType
    Left = 409
    Top = 73
  end
  object dsShipType: TDataSource
    DataSet = CliDM.cdsShipType
    Left = 889
    Top = 97
  end
  object cdsInWarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsInWarehouseFilterRecord
    Left = 633
    Top = 131
  end
end
