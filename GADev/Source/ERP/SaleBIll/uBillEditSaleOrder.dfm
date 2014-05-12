inherited FM_BillEditSaleOrder: TFM_BillEditSaleOrder
  Left = 195
  Top = 54
  Height = 637
  Caption = #38144#21806#35746#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    Height = 253
    inherited cxPageDetail: TcxPageControl
      Height = 253
      OnChange = cxPageDetailChange
      ClientRectBottom = 253
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Height = 205
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
              Width = 80
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
              Options.Editing = False
              Options.Filtering = False
            end
            object dbgList2FPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FPRICE'
              Options.Editing = False
              Width = 60
            end
            object dbgList2FDISCOUNTRATE: TcxGridDBColumn
              DataBinding.FieldName = 'FDISCOUNTRATE'
              Width = 60
            end
            object dbgList2FACTUALPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FACTUALPRICE'
              Width = 60
            end
            object dbgList2fAmount_1: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_1'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_2: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_2'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_3: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_3'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_4: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_4'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_5: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_5'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_6: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_6'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_7: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_7'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_8: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_8'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_9: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_9'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_10: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_10'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_11: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_11'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_12: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_12'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_13: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_13'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_14: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_14'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_15: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_15'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_16: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_16'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_17: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_17'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_18: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_18'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_19: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_19'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_20: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_20'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_21: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_21'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_22: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_22'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_23: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_23'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_24: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_24'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_25: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_25'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_26: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_26'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_27: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_27'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_28: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_28'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_29: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_29'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2fAmount_30: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_30'
              Options.Editing = False
              Options.Filtering = False
              Width = 40
            end
            object dbgList2FTotalQty: TcxGridDBColumn
              DataBinding.FieldName = 'FTotalQty'
            end
            object dbgList2FAmount: TcxGridDBColumn
              DataBinding.FieldName = 'FAmount'
            end
            object dbgList2FISPRESENT: TcxGridDBColumn
              DataBinding.FieldName = 'FISPRESENT'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
            end
            object dbgList2CFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Options.Editing = False
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
            object dbgList2CFMUTILSOURCEBILL: TcxGridDBColumn
              Caption = #22810#32500#26469#28304#21333#25454#21495
              DataBinding.FieldName = 'CFMUTILSOURCEBILL'
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
          Height = 208
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
                Column = cxgridDetialFAMOUNT
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialCFINITQTY
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTOTALSHIPPINGQTY
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTOTALISSUEBASEQTY
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTOTALUNSHIPBASEQTY
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTOTALUNISSUEQTY
              end>
            object cxgridDetialFSEQ: TcxGridDBColumn
              Caption = #24207#21495
              DataBinding.FieldName = 'FSEQ'
              Options.Editing = False
              Width = 50
            end
            object cxgridDetialcfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              Options.Editing = False
              Width = 100
            end
            object cxgridDetialcfMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialName'
              Options.Editing = False
              Width = 120
            end
            object cxgridDetialCFColorCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorCode'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFSizeCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeCode'
              Width = 59
            end
            object cxgridDetialCFSizeName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeName'
              Width = 40
            end
            object cxgridDetialCFCupName: TcxGridDBColumn
              DataBinding.FieldName = 'CFCupName'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFPackName: TcxGridDBColumn
              DataBinding.FieldName = 'CFPackName'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFPACKNUM: TcxGridDBColumn
              Caption = #31665#25968
              DataBinding.FieldName = 'CFPACKNUM'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFQTY: TcxGridDBColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'FQTY'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFDPPRICE: TcxGridDBColumn
              Caption = #21514#29260#20215
              DataBinding.FieldName = 'CFDPPRICE'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFPRICE: TcxGridDBColumn
              Caption = #26631#20934#20215
              DataBinding.FieldName = 'FPRICE'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFTAXRATE: TcxGridDBColumn
              Caption = #31246#29575
              DataBinding.FieldName = 'FTAXRATE'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFDISCOUNT: TcxGridDBColumn
              Caption = #25240#25187
              DataBinding.FieldName = 'FDISCOUNT'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFACTUALPRICE: TcxGridDBColumn
              Caption = #25240#21518#21333#20215
              DataBinding.FieldName = 'FACTUALPRICE'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFACTUALTAXPRICE: TcxGridDBColumn
              Caption = #25240#21518#21547#31246#20215
              DataBinding.FieldName = 'FACTUALTAXPRICE'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFAMOUNT: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'FAMOUNT'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFTOTALSHIPPINGQTY: TcxGridDBColumn
              Caption = #24050#37197#36135#25968
              DataBinding.FieldName = 'FTOTALSHIPPINGQTY'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFTOTALISSUEBASEQTY: TcxGridDBColumn
              Caption = #24050#20986#24211#25968
              DataBinding.FieldName = 'FTOTALISSUEBASEQTY'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFTOTALUNSHIPBASEQTY: TcxGridDBColumn
              Caption = #26410#37197#36135#25968
              DataBinding.FieldName = 'FTOTALUNSHIPBASEQTY'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFTOTALUNISSUEQTY: TcxGridDBColumn
              Caption = #26410#20986#24211#25968
              DataBinding.FieldName = 'FTOTALUNISSUEQTY'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFINITQTY: TcxGridDBColumn
              Caption = #21407#22987#25968
              DataBinding.FieldName = 'CFINITQTY'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFINITPACKNUM: TcxGridDBColumn
              Caption = #21407#22987#31665#25968
              DataBinding.FieldName = 'CFINITPACKNUM'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialFBASESTATUS: TcxGridDBColumn
              Caption = #29366#24577
              DataBinding.FieldName = 'FBASESTATUS'
              Options.Editing = False
            end
            object cxgridDetialFREMARK: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'FREMARK'
              Options.Editing = False
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
      Left = 1
      Top = 71
      Height = 212
    end
  end
  inherited p_bt: TPanel
    Top = 569
  end
  inherited pnl_top: TPanel
    inherited pnlCodeSM: TPanel
      Top = 125
      Height = 3
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Height = 124
      HideTabs = False
      ClientRectBottom = 124
      ClientRectTop = 18
      inherited cxTabBaseInfo: TcxTabSheet
        Caption = #22522#26412#20449#24687
        inherited pnlTop: TPanel
          Height = 106
          inherited im_Audit: TImage
            Left = 952
          end
          inherited img_NewBill: TImage
            Left = 952
          end
          inherited lbDescription: TLabel
            Left = 518
            Top = 83
          end
          inherited Label2: TLabel
            Left = 1
            Top = 6
          end
          inherited Label5: TLabel
            Left = 758
            Top = 6
          end
          inherited imgTJ: TImage
            Left = 952
          end
          object Label7: TLabel [7]
            Left = 759
            Top = 29
            Width = 52
            Height = 13
            Caption = #20132#36135#26085#26399
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          inherited imgGB: TImage
            Left = 952
          end
          inherited txDescription: TcxDBTextEdit
            Left = 576
            Top = 78
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 10
            Width = 405
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 814
            Top = 3
            Hint = #19994#21153#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 3
            Width = 136
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 58
            Top = 3
            DataBinding.DataField = 'FNUMBER'
            Width = 182
          end
          inherited lblNumber: TcxLabel
            Left = 245
            Caption = #35746#36135#23458#25143
          end
          inherited txtName: TcxDBTextEdit
            Left = 395
            Top = 3
            DataBinding.DataField = 'CFCustName'
            TabOrder = 11
            Width = 118
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 307
            Top = 28
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            Width = 206
          end
          inherited cxLabel1: TcxLabel
            Left = 245
            Top = 29
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 307
            Top = 3
            Hint = #35746#36135#23458#25143
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 1
            OnKeyPress = cxbtnNUmberKeyPress
            Width = 90
          end
          object cxLabel2: TcxLabel
            Left = 516
            Top = 6
            Caption = #35746#21333#31867#22411
          end
          object cxLabel3: TcxLabel
            Left = 516
            Top = 29
            Caption = #20215#26684#31867#22411
            Transparent = True
          end
          object cxcmbOrderType: TcxDBLookupComboBox
            Tag = 100
            Left = 576
            Top = 3
            Hint = #35746#21333#31867#22411
            DataBinding.DataField = 'CFORDERTYPEID'
            DataBinding.DataSource = dsMaster
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'Fname_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsorderType
            TabOrder = 2
            Width = 177
          end
          object cxcmbpriceType: TcxDBLookupComboBox
            Tag = 100
            Left = 576
            Top = 28
            Hint = #20215#26684#31867#22411
            DataBinding.DataField = 'CFPRICETYPEID'
            DataBinding.DataSource = dsMaster
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'Fname_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dspriceType
            Properties.OnCloseUp = cxcmbpriceTypePropertiesCloseUp
            TabOrder = 5
            Width = 177
          end
          object cxLabel4: TcxLabel
            Left = 1
            Top = 80
            Caption = #35746#36135#20250
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 245
            Top = 80
            Caption = #21457#36135#20179#24211
            Transparent = True
          end
          object cxbtnSendWareNum: TcxButtonEdit
            Left = 307
            Top = 79
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnSendWareNumPropertiesButtonClick
            Properties.OnChange = cxbtnSendWareNumPropertiesChange
            TabOrder = 7
            OnEnter = cxbtnSendWareNumEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            OnKeyPress = cxbtnSendWareNumKeyPress
            Width = 78
          end
          object cxbtnSendWareName: TcxDBTextEdit
            Left = 383
            Top = 79
            DataBinding.DataField = 'CFSendWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 18
            Width = 129
          end
          object cxLabel6: TcxLabel
            Left = 516
            Top = 56
            Caption = #25910#36135#21333#20301
            Transparent = True
          end
          object cxbtnReceivOrgNum: TcxButtonEdit
            Left = 576
            Top = 53
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxbtnReceivOrgNumPropertiesButtonClick
            Properties.OnChange = cxbtnReceivOrgNumPropertiesChange
            TabOrder = 8
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            OnKeyPress = cxbtnReceivOrgNumKeyPress
            Width = 72
          end
          object CFReceivOrgName: TcxDBTextEdit
            Left = 646
            Top = 53
            DataBinding.DataField = 'CFReceivOrgName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 20
            Width = 107
          end
          object cxLabel7: TcxLabel
            Left = 759
            Top = 56
            Caption = #25910#36135#20179#24211
            Transparent = True
          end
          object cxbtnReceivWareNum: TcxButtonEdit
            Left = 814
            Top = 53
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnReceivWareNumPropertiesButtonClick
            Properties.OnChange = cxbtnReceivWareNumPropertiesChange
            TabOrder = 9
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            OnKeyPress = cxbtnReceivWareNumKeyPress
            Width = 71
          end
          object cxbtnReceivWareName: TcxDBTextEdit
            Left = 883
            Top = 53
            DataBinding.DataField = 'CFReceivWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 22
            Width = 98
          end
          object cxDelivery: TcxDBDateEdit
            Left = 814
            Top = 28
            DataBinding.DataField = 'CFDELIVERYDATE'
            DataBinding.DataSource = dsMaster
            Properties.SaveTime = False
            Properties.ShowTime = False
            TabOrder = 6
            Width = 136
          end
          object cxbtnOrderingDef: TcxButtonEdit
            Left = 58
            Top = 79
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnOrderingDefPropertiesButtonClick
            Properties.OnChange = cxbtnOrderingDefPropertiesChange
            TabOrder = 23
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = cxbtnOrderingDefKeyDown
            OnKeyPress = cxbtnOrderingDefKeyPress
            Width = 78
          end
          object txtOrderingDef: TcxDBTextEdit
            Left = 133
            Top = 79
            DataBinding.DataField = 'CFOrderingDefName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 24
            Width = 107
          end
          object cxLabel13: TcxLabel
            Left = 1
            Top = 29
            Caption = #38144#21806#32452#32455
            Transparent = True
          end
          object txtSaleOrg: TcxDBTextEdit
            Left = 133
            Top = 28
            DataBinding.DataField = 'CFSaleOrgName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 26
            Width = 107
          end
          object cxLabel14: TcxLabel
            Left = 1
            Top = 56
            Caption = #37319#36141#32452#32455
            Transparent = True
          end
          object btnPurOrg: TcxButtonEdit
            Left = 58
            Top = 53
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ReadOnly = True
            Properties.ValidateOnEnter = False
            Properties.OnButtonClick = btnPurOrgPropertiesButtonClick
            Properties.OnChange = btnPurOrgPropertiesChange
            TabOrder = 28
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            OnKeyPress = btnPurOrgKeyPress
            Width = 78
          end
          object txtPurOrg: TcxDBTextEdit
            Left = 133
            Top = 53
            DataBinding.DataField = 'CFPurOrgName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 29
            Width = 107
          end
          object cxLabel15: TcxLabel
            Left = 244
            Top = 56
            Caption = #21457#36135#32452#32455
            Transparent = True
          end
          object cxbtnStorageOrg: TcxButtonEdit
            Tag = 100
            Left = 307
            Top = 53
            Hint = #21457#36135#32452#32455
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnStorageOrgPropertiesButtonClick
            Properties.OnChange = cxbtnStorageOrgPropertiesChange
            TabOrder = 31
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            OnKeyPress = cxbtnStorageOrgKeyPress
            Width = 78
          end
          object txtStorageOrg: TcxDBTextEdit
            Left = 383
            Top = 53
            DataBinding.DataField = 'CFStorageOrgName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 32
            Width = 129
          end
          object btnSaleOrg: TcxButtonEdit
            Tag = 100
            Left = 58
            Top = 28
            Hint = #38144#21806#32452#32455
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = btnSaleOrgPropertiesButtonClick
            Properties.OnChange = btnSaleOrgPropertiesChange
            TabOrder = 33
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnSaleOrgKeyDown
            OnKeyPress = btnSaleOrgKeyPress
            Width = 78
          end
        end
      end
      object cxTabOtherInfo: TcxTabSheet
        Caption = #20854#20182#20449#24687
        ImageIndex = 1
        object cxLabel9: TcxLabel
          Left = 1
          Top = 6
          Caption = #38144#21806#21592
          Transparent = True
        end
        object cxbtnSalorNum: TcxButtonEdit
          Left = 58
          Top = 4
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxbtnSalorNumPropertiesButtonClick
          Properties.OnChange = cxbtnSalorNumPropertiesChange
          TabOrder = 1
          OnEnter = btnEnter
          OnExit = btnExit
          OnKeyDown = btnKeyDown
          OnKeyPress = cxbtnSalorNumKeyPress
          Width = 78
        end
        object cxbtnSalorName: TcxDBTextEdit
          Left = 134
          Top = 5
          DataBinding.DataField = 'CFSalorName'
          DataBinding.DataSource = dsMaster
          Enabled = False
          TabOrder = 2
          Width = 106
        end
        object cxLabel8: TcxLabel
          Left = 290
          Top = 6
          Caption = #23458#25143#35746#21333
          Transparent = True
        end
        object cxedtSC: TcxDBTextEdit
          Left = 344
          Top = 4
          DataBinding.DataField = 'FCUSTOMERORDERNUMBER'
          DataBinding.DataSource = dsMaster
          TabOrder = 4
          Width = 136
        end
        object cxLabel12: TcxLabel
          Left = 512
          Top = 6
          Caption = #20316#29992#33539#22260
        end
        object cxbtnedtScopetype: TcxDBLookupComboBox
          Left = 566
          Top = 4
          AutoSize = False
          DataBinding.DataField = 'CFRangeID'
          DataBinding.DataSource = dsMaster
          Properties.KeyFieldNames = 'FID'
          Properties.ListColumns = <
            item
              FieldName = 'Fname_l2'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsRange
          TabOrder = 6
          Height = 21
          Width = 136
        end
      end
    end
  end
  inherited pnlStock: TPanel
    Top = 435
  end
  inherited girdList: TDBGrid
    Left = 309
    Top = 94
  end
  inherited ImageListMainForm: TImageList
    Left = 872
    Top = 0
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      53
      0)
    inherited dxBarbtnImpFromTxt: TdxBarButton
      Action = ActImpFromTxt
    end
  end
  inherited actlst1: TActionList
    inherited ActImpFromTxt: TAction
      OnExecute = ActImpFromTxtExecute
    end
  end
  inherited cdsMaster: TClientDataSet
    Left = 536
    Top = 2
    object cdsMasterFCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 60
      Calculated = True
    end
    object cdsMasterFAuditorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 50
      Calculated = True
    end
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
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
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
      Size = 160
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
    object cdsMasterFISINNERSALE: TFloatField
      FieldName = 'FISINNERSALE'
    end
    object cdsMasterFCUSTOMERORDERNUMBER: TWideStringField
      FieldName = 'FCUSTOMERORDERNUMBER'
      Size = 160
    end
    object cdsMasterFORDERCUSTOMERID: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      OnChange = cdsMasterFORDERCUSTOMERIDChange
      Size = 44
    end
    object cdsMasterFDIRECTSUPPLIERID: TWideStringField
      FieldName = 'FDIRECTSUPPLIERID'
      Size = 44
    end
    object cdsMasterFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
      Size = 44
    end
    object cdsMasterFDELIVERYTYPEID: TWideStringField
      FieldName = 'FDELIVERYTYPEID'
      Size = 44
    end
    object cdsMasterFTRANSLEADTIME: TFloatField
      FieldName = 'FTRANSLEADTIME'
    end
    object cdsMasterFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFPAYMENTTYPEID: TWideStringField
      FieldName = 'FPAYMENTTYPEID'
      Size = 44
    end
    object cdsMasterFCASHDISCOUNTID: TWideStringField
      FieldName = 'FCASHDISCOUNTID'
      Size = 44
    end
    object cdsMasterFSETTLEMENTTYPEID: TWideStringField
      FieldName = 'FSETTLEMENTTYPEID'
      Size = 44
    end
    object cdsMasterFPREPAYMENT: TFloatField
      FieldName = 'FPREPAYMENT'
    end
    object cdsMasterFPREPAYMENTRATE: TFloatField
      FieldName = 'FPREPAYMENTRATE'
    end
    object cdsMasterFSALEORGUNITID: TWideStringField
      FieldName = 'FSALEORGUNITID'
      OnChange = cdsMasterFSALEORGUNITIDChange
      Size = 44
    end
    object cdsMasterFSALEGROUPID: TWideStringField
      FieldName = 'FSALEGROUPID'
      Size = 44
    end
    object cdsMasterFSALEPERSONID: TWideStringField
      FieldName = 'FSALEPERSONID'
      Size = 44
    end
    object cdsMasterFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsMasterFTOTALAMOUNT: TFloatField
      FieldName = 'FTOTALAMOUNT'
    end
    object cdsMasterFTOTALTAX: TFloatField
      FieldName = 'FTOTALTAX'
    end
    object cdsMasterFTOTALTAXAMOUNT: TFloatField
      FieldName = 'FTOTALTAXAMOUNT'
    end
    object cdsMasterFPRERECEIVED: TFloatField
      FieldName = 'FPRERECEIVED'
    end
    object cdsMasterFUNPRERECEIVEDAMOUNT: TFloatField
      FieldName = 'FUNPRERECEIVEDAMOUNT'
    end
    object cdsMasterFSENDADDRESS: TWideStringField
      FieldName = 'FSENDADDRESS'
      Size = 510
    end
    object cdsMasterFISSYSBILL: TFloatField
      FieldName = 'FISSYSBILL'
    end
    object cdsMasterFCONVERTMODE: TFloatField
      FieldName = 'FCONVERTMODE'
    end
    object cdsMasterFLOCALTOTALAMOUNT: TFloatField
      FieldName = 'FLOCALTOTALAMOUNT'
    end
    object cdsMasterFLOCALTOTALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTOTALTAXAMOUNT'
    end
    object cdsMasterFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFISINTAX: TFloatField
      FieldName = 'FISINTAX'
    end
    object cdsMasterFCUSTOMERPHONE: TWideStringField
      FieldName = 'FCUSTOMERPHONE'
      Size = 255
    end
    object cdsMasterFLINKMAN: TWideStringField
      FieldName = 'FLINKMAN'
      Size = 255
    end
    object cdsMasterFALTERDATE: TDateTimeField
      FieldName = 'FALTERDATE'
    end
    object cdsMasterFVERSION: TFloatField
      FieldName = 'FVERSION'
    end
    object cdsMasterFOLDSTATUS: TFloatField
      FieldName = 'FOLDSTATUS'
    end
    object cdsMasterFOLDID: TWideStringField
      FieldName = 'FOLDID'
      Size = 44
    end
    object cdsMasterFALTERPERSON: TWideStringField
      FieldName = 'FALTERPERSON'
      Size = 44
    end
    object cdsMasterFISCENTRALBALANCE: TFloatField
      FieldName = 'FISCENTRALBALANCE'
    end
    object cdsMasterFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      OnChange = cdsMasterFSTORAGEORGUNITIDChange
      Size = 44
    end
    object cdsMasterFISREVERSE: TFloatField
      FieldName = 'FISREVERSE'
    end
    object cdsMasterFBEENPAIDPREPAYMENT: TFloatField
      FieldName = 'FBEENPAIDPREPAYMENT'
    end
    object cdsMasterFRECEIVECONDITIONID: TWideStringField
      FieldName = 'FRECEIVECONDITIONID'
      Size = 44
    end
    object cdsMasterFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      OnChange = cdsMasterFWAREHOUSEIDChange
      Size = 44
    end
    object cdsMasterFISMATCHED: TFloatField
      FieldName = 'FISMATCHED'
    end
    object cdsMasterFISSQUAREBALANCE: TFloatField
      FieldName = 'FISSQUAREBALANCE'
    end
    object cdsMasterFBALANCECOMPANYORGUNITID: TWideStringField
      FieldName = 'FBALANCECOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFBALANCESTORAGEORGUNITID: TWideStringField
      FieldName = 'FBALANCESTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFBALANCEWAREHOUSEID: TWideStringField
      FieldName = 'FBALANCEWAREHOUSEID'
      Size = 44
    end
    object cdsMasterCFTYPINFORMATION: TWideStringField
      FieldName = 'CFTYPINFORMATION'
      Size = 100
    end
    object cdsMasterCFPRICETYPEID: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterCFORDERTYPEID: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterCFRECEIVESTOREUNIT: TWideStringField
      FieldName = 'CFRECEIVESTOREUNIT'
      OnChange = cdsMasterCFRECEIVESTOREUNITChange
      Size = 44
    end
    object cdsMasterFBALANCESALEORGUNITID: TWideStringField
      FieldName = 'FBALANCESALEORGUNITID'
      Size = 44
    end
    object cdsMasterCFORDERINGDEFID: TWideStringField
      FieldName = 'CFORDERINGDEFID'
      Size = 44
    end
    object cdsMasterCFINWAREHOUSEID: TWideStringField
      FieldName = 'CFINWAREHOUSEID'
      OnChange = cdsMasterCFINWAREHOUSEIDChange
      Size = 44
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 100
    end
    object cdsMasterCFSALETYPE: TWideStringField
      FieldName = 'CFSALETYPE'
      Size = 10
    end
    object cdsMasterCFDELIVERYDATE: TDateTimeField
      FieldName = 'CFDELIVERYDATE'
    end
    object cdsMasterCFCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFCustName'
      Size = 100
      Calculated = True
    end
    object cdsMasterCFSendWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSendWareName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFReceivOrgName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivOrgName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFReceivWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivWareName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFSalorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSalorName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFRANGEID: TWideStringField
      FieldName = 'CFRANGEID'
      Size = 44
    end
    object cdsMasterCFOrderingDefName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFOrderingDefName'
      Size = 100
      Calculated = True
    end
    object cdsMasterCFSaleOrgName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSaleOrgName'
      Size = 50
      Calculated = True
    end
    object cdsMasterCFPurOrgName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFPurOrgName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFStorageOrgName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFStorageOrgName'
      Size = 80
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 600
    Top = 65535
  end
  inherited cdsDetail: TClientDataSet
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
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
    object cdsDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
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
    object cdsDetailFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailFASSISTUNITID: TWideStringField
      FieldName = 'FASSISTUNITID'
      Size = 44
    end
    object cdsDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFQTY: TFloatField
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailFDISCOUNTCONDITION: TFloatField
      FieldName = 'FDISCOUNTCONDITION'
    end
    object cdsDetailFDISCOUNTTYPE: TFloatField
      FieldName = 'FDISCOUNTTYPE'
    end
    object cdsDetailFDISCOUNT: TFloatField
      FieldName = 'FDISCOUNT'
    end
    object cdsDetailFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailFSENDDATE: TDateTimeField
      FieldName = 'FSENDDATE'
    end
    object cdsDetailFDELIVERYDATE: TDateTimeField
      FieldName = 'FDELIVERYDATE'
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
    object cdsDetailFSENDOVERRATE: TFloatField
      FieldName = 'FSENDOVERRATE'
    end
    object cdsDetailFSENDOWINGRATE: TFloatField
      FieldName = 'FSENDOWINGRATE'
    end
    object cdsDetailFSENDADVANCEDAY: TFloatField
      FieldName = 'FSENDADVANCEDAY'
    end
    object cdsDetailFSENDDEFERRALDAY: TFloatField
      FieldName = 'FSENDDEFERRALDAY'
    end
    object cdsDetailFTOTALISSUEQTY: TFloatField
      FieldName = 'FTOTALISSUEQTY'
    end
    object cdsDetailFTOTALRETURNEDQTY: TFloatField
      FieldName = 'FTOTALRETURNEDQTY'
    end
    object cdsDetailFTOTALINVOICEDQTY: TFloatField
      FieldName = 'FTOTALINVOICEDQTY'
    end
    object cdsDetailFTOTALSHIPPINGQTY: TFloatField
      FieldName = 'FTOTALSHIPPINGQTY'
    end
    object cdsDetailFTOTALRECEIVEDAMOUNT: TFloatField
      FieldName = 'FTOTALRECEIVEDAMOUNT'
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFTOTALISSUEBASEQTY: TFloatField
      FieldName = 'FTOTALISSUEBASEQTY'
    end
    object cdsDetailFTOTALSHIPBASEQTY: TFloatField
      FieldName = 'FTOTALSHIPBASEQTY'
    end
    object cdsDetailFTOTALUNISSUEBASEQTY: TFloatField
      FieldName = 'FTOTALUNISSUEBASEQTY'
    end
    object cdsDetailFTOTALUNSHIPBASEQTY: TFloatField
      FieldName = 'FTOTALUNSHIPBASEQTY'
    end
    object cdsDetailFTOTALUNISSUEQTY: TFloatField
      FieldName = 'FTOTALUNISSUEQTY'
    end
    object cdsDetailFISLOCKED: TFloatField
      FieldName = 'FISLOCKED'
    end
    object cdsDetailFLOCKQTY: TFloatField
      FieldName = 'FLOCKQTY'
    end
    object cdsDetailFLOCKBASEQTY: TFloatField
      FieldName = 'FLOCKBASEQTY'
    end
    object cdsDetailFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailFISBYSALEORDER: TFloatField
      FieldName = 'FISBYSALEORDER'
    end
    object cdsDetailFORDEREDQTY: TFloatField
      FieldName = 'FORDEREDQTY'
    end
    object cdsDetailFUNORDEREDQTY: TFloatField
      FieldName = 'FUNORDEREDQTY'
    end
    object cdsDetailFPREPAYMENTRATE: TFloatField
      FieldName = 'FPREPAYMENTRATE'
    end
    object cdsDetailFPREPAYMENT: TFloatField
      FieldName = 'FPREPAYMENT'
    end
    object cdsDetailFPRERECEIVED: TFloatField
      FieldName = 'FPRERECEIVED'
    end
    object cdsDetailFUNPRERECEIVEDAMOUNT: TFloatField
      FieldName = 'FUNPRERECEIVEDAMOUNT'
    end
    object cdsDetailFQUANTITYUNCTRL: TFloatField
      FieldName = 'FQUANTITYUNCTRL'
    end
    object cdsDetailFTIMEUNCTRL: TFloatField
      FieldName = 'FTIMEUNCTRL'
    end
    object cdsDetailFDELIVERYDATEQTY: TFloatField
      FieldName = 'FDELIVERYDATEQTY'
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFTOTALINVOICEDAMT: TFloatField
      FieldName = 'FTOTALINVOICEDAMT'
    end
    object cdsDetailFTOTALARAMOUNT: TFloatField
      FieldName = 'FTOTALARAMOUNT'
    end
    object cdsDetailFVERSION: TFloatField
      FieldName = 'FVERSION'
    end
    object cdsDetailFOLDSTATUS: TFloatField
      FieldName = 'FOLDSTATUS'
    end
    object cdsDetailFOLDID: TWideStringField
      FieldName = 'FOLDID'
      Size = 44
    end
    object cdsDetailFISBETWEENCOMPANYSEND: TFloatField
      FieldName = 'FISBETWEENCOMPANYSEND'
    end
    object cdsDetailFTOTALREVERSEDQTY: TFloatField
      FieldName = 'FTOTALREVERSEDQTY'
    end
    object cdsDetailFTOTALREVERSEDBASEQTY: TFloatField
      FieldName = 'FTOTALREVERSEDBASEQTY'
    end
    object cdsDetailFPLANDELIVERYQTY: TFloatField
      FieldName = 'FPLANDELIVERYQTY'
    end
    object cdsDetailFTOTALCANCELLINGSTOCKQTY: TFloatField
      FieldName = 'FTOTALCANCELLINGSTOCKQTY'
    end
    object cdsDetailFTOTALSUPPLYSTOCKQTY: TFloatField
      FieldName = 'FTOTALSUPPLYSTOCKQTY'
    end
    object cdsDetailFDELIVERYCUSTOMERID: TWideStringField
      FieldName = 'FDELIVERYCUSTOMERID'
      Size = 44
    end
    object cdsDetailFPAYMENTCUSTOMERID: TWideStringField
      FieldName = 'FPAYMENTCUSTOMERID'
      Size = 44
    end
    object cdsDetailFRECEIVECUSTOMERID: TWideStringField
      FieldName = 'FRECEIVECUSTOMERID'
      Size = 44
    end
    object cdsDetailFSENDADDRESS: TWideStringField
      FieldName = 'FSENDADDRESS'
      Size = 510
    end
    object cdsDetailFARCLOSEDSTATUS: TFloatField
      FieldName = 'FARCLOSEDSTATUS'
    end
    object cdsDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 160
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
    object cdsDetailFTOTALPRODUCTQTY: TFloatField
      FieldName = 'FTOTALPRODUCTQTY'
    end
    object cdsDetailFTOTALBASEPRODUCTQTY: TFloatField
      FieldName = 'FTOTALBASEPRODUCTQTY'
    end
    object cdsDetailFTOTALUNPRODUCTQTY: TFloatField
      FieldName = 'FTOTALUNPRODUCTQTY'
    end
    object cdsDetailFTOTALBASEUNPRODUCTQTY: TFloatField
      FieldName = 'FTOTALBASEUNPRODUCTQTY'
    end
    object cdsDetailFMATCHEDAMOUNT: TFloatField
      FieldName = 'FMATCHEDAMOUNT'
    end
    object cdsDetailFLOCKASSISTQTY: TFloatField
      FieldName = 'FLOCKASSISTQTY'
    end
    object cdsDetailFCHEAPRATE: TFloatField
      FieldName = 'FCHEAPRATE'
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailCFTOTALSALEOUTQTY: TFloatField
      FieldName = 'CFTOTALSALEOUTQTY'
    end
    object cdsDetailCFPRUORDERNUM: TFloatField
      FieldName = 'CFPRUORDERNUM'
    end
    object cdsDetailCFISPURORDER: TFloatField
      FieldName = 'CFISPURORDER'
    end
    object cdsDetailCFTOTALSALEPOSTQTY: TFloatField
      FieldName = 'CFTOTALSALEPOSTQTY'
    end
    object cdsDetailCFSRCPURORDERID: TWideStringField
      FieldName = 'CFSRCPURORDERID'
      Size = 44
    end
    object cdsDetailCFSRCPURORDERENTRYID: TWideStringField
      FieldName = 'CFSRCPURORDERENTRYID'
      Size = 44
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetailCFSUPPLIERID: TWideStringField
      FieldName = 'CFSUPPLIERID'
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
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailCFASSISTNUM: TWideStringField
      FieldName = 'CFASSISTNUM'
      Size = 200
    end
    object cdsDetailCFINITQTY: TFloatField
      FieldName = 'CFINITQTY'
    end
    object cdsDetailCFINITPACKNUM: TFloatField
      FieldName = 'CFINITPACKNUM'
    end
    object cdsDetailCFADJUSTQTY: TFloatField
      FieldName = 'CFADJUSTQTY'
    end
    object cdsDetailCFADJUSTPACKNUM: TFloatField
      FieldName = 'CFADJUSTPACKNUM'
    end
    object cdsDetailcfMaterialNumber: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'cfMaterialNumber'
      Size = 100
      Calculated = True
    end
    object cdsDetailFTotalUnReturnBaseQty: TFloatField
      FieldName = 'FTotalUnReturnBaseQty'
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    BeforeEdit = cdsDetailAmountBeforeEdit
    Top = 280
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
      OnChange = cdsDetailAmountFPRICEChange
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
      FieldName = 'fremark'
      Size = 400
    end
    object cdsDetailAmountFISPRESENT: TFloatField
      DisplayLabel = #36192#21697
      FieldName = 'FISPRESENT'
    end
    object cdsDetailAmountCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 100
    end
  end
  inherited SaveDg: TSaveDialog
    Left = 923
    Top = 2
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 800
    Top = 16
  end
  inherited qrytempsize: TADOQuery
    Left = 184
    Top = 449
  end
  inherited QrySelect: TADOQuery
    Left = 200
    Top = 169
  end
  inherited dsSelect: TDataSource
    Left = 168
    Top = 169
  end
  inherited cdsSelect: TClientDataSet
    Left = 297
    Top = 176
  end
  inherited dsHeadSel: TDataSource
    Left = 289
    Top = 65529
  end
  inherited cdsHeadSel: TClientDataSet
    Left = 329
    Top = 1
  end
  inherited dsInputWay: TDataSource
    Top = 33
  end
  inherited cdsDetailTracy: TClientDataSet
    object cdsDetailTracyFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailTracyFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailTracyFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsDetailTracyFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailTracyFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailTracyFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailTracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailTracyFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetailTracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailTracyFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailTracyFDISCOUNT: TFloatField
      FieldName = 'FDISCOUNT'
    end
    object cdsDetailTracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailTracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailTracyFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailTracyFTOTALISSUEQTY: TFloatField
      FieldName = 'FTOTALISSUEQTY'
    end
    object cdsDetailTracyFTOTALSHIPPINGQTY: TFloatField
      FieldName = 'FTOTALSHIPPINGQTY'
    end
    object cdsDetailTracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailTracyFTOTALISSUEBASEQTY: TFloatField
      FieldName = 'FTOTALISSUEBASEQTY'
    end
    object cdsDetailTracyFTOTALUNSHIPBASEQTY: TFloatField
      FieldName = 'FTOTALUNSHIPBASEQTY'
    end
    object cdsDetailTracyFTOTALUNISSUEQTY: TFloatField
      FieldName = 'FTOTALUNISSUEQTY'
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
    object cdsDetailTracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailTracyCFINITQTY: TFloatField
      FieldName = 'CFINITQTY'
    end
    object cdsDetailTracyCFINITPACKNUM: TFloatField
      FieldName = 'CFINITPACKNUM'
    end
    object cdsDetailTracyCFADJUSTQTY: TFloatField
      FieldName = 'CFADJUSTQTY'
    end
    object cdsDetailTracyCFADJUSTPACKNUM: TFloatField
      FieldName = 'CFADJUSTPACKNUM'
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
  inherited dsDetailTracy: TDataSource
    Left = 264
    Top = 175
  end
  inherited cdstracy: TClientDataSet
    object cdstracyFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdstracyFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdstracyFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdstracyFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdstracyFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdstracyFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdstracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdstracyFQTY: TFloatField
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
    object cdstracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdstracyFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdstracyFDISCOUNT: TFloatField
      FieldName = 'FDISCOUNT'
    end
    object cdstracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdstracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdstracyFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdstracyFTOTALISSUEQTY: TFloatField
      FieldName = 'FTOTALISSUEQTY'
    end
    object cdstracyFTOTALSHIPPINGQTY: TFloatField
      FieldName = 'FTOTALSHIPPINGQTY'
    end
    object cdstracyFTOTALISSUEBASEQTY: TFloatField
      FieldName = 'FTOTALISSUEBASEQTY'
    end
    object cdstracyFTOTALUNSHIPBASEQTY: TFloatField
      FieldName = 'FTOTALUNSHIPBASEQTY'
    end
    object cdstracyFTOTALUNISSUEQTY: TFloatField
      FieldName = 'FTOTALUNISSUEQTY'
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
    object cdstracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdstracyCFINITQTY: TFloatField
      FieldName = 'CFINITQTY'
    end
    object cdstracyCFINITPACKNUM: TFloatField
      FieldName = 'CFINITPACKNUM'
    end
    object cdstracyCFADJUSTQTY: TFloatField
      FieldName = 'CFADJUSTQTY'
    end
    object cdstracyCFADJUSTPACKNUM: TFloatField
      FieldName = 'CFADJUSTPACKNUM'
    end
  end
  object cdsPerSon: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 905
    Top = 57
  end
  object cdsInWarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsInWarehouseFilterRecord
    Left = 705
    Top = 65531
  end
  object dsRange: TDataSource
    DataSet = CliDM.cdsRange
    Left = 905
    Top = 153
  end
  object cdsFindwarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 190
  end
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsCustomerFilterRecord
    Left = 409
    Top = 1
  end
  object cdswarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdswarehouseFilterRecord
    Left = 233
    Top = 65531
  end
  object dspriceType: TDataSource
    DataSet = CliDM.cdsPriceType
    Left = 769
    Top = 3
  end
  object dsorderType: TDataSource
    DataSet = CliDM.cdsOrderType
    Left = 473
    Top = 65531
  end
  object cdsSaleOrg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 81
    Top = 88
  end
  object cdsPurOrg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 120
  end
  object cdsStorageOrg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 425
    Top = 128
  end
end
