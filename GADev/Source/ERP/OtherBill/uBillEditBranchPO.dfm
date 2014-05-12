inherited FM_BillEditBranchPO: TFM_BillEditBranchPO
  Caption = #28192#36947#37319#36141#35746#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    inherited cxPageDetail: TcxPageControl
      OnChange = cxPageDetailChange
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          inherited dbgList2: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2fAmount
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2fTotaLQty
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
              Width = 80
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
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 60
            end
            object dbgList2FPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FPRICE'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
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
            object dbgList2fTotaLQty: TcxGridDBColumn
              DataBinding.FieldName = 'fTotaLQty'
              Options.Editing = False
              Width = 60
            end
            object dbgList2fAmount: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount'
              Options.Editing = False
              Width = 60
            end
            object dbgList2CFUnitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFUnitName'
              Options.Editing = False
              Width = 48
            end
            object dbgList2CFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 80
            end
            object dbgList2cfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 80
            end
            object dbgList2FREMARK: TcxGridDBColumn
              DataBinding.FieldName = 'FREMARK'
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
                Column = cxgridDetialFTOTALRECEIVEQTY
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTOTALRECEIPTQTY
              end>
            object cxgridDetialFSEQ: TcxGridDBColumn
              Caption = #24207#21495
              DataBinding.FieldName = 'FSEQ'
              Width = 45
            end
            object cxgridDetialcfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              Width = 120
            end
            object cxgridDetialcfMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialName'
              Options.Editing = False
              Width = 120
            end
            object cxgridDetialCFColorCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorCode'
              Width = 60
            end
            object cxgridDetialCFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Options.Editing = False
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
              Caption = #31665#25968
              DataBinding.FieldName = 'CFPACKNUM'
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
            object cxgridDetialFQTY: TcxGridDBColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'FQTY'
              Width = 60
            end
            object cxgridDetialCFDPPRICE: TcxGridDBColumn
              Caption = #21514#29260#20215
              DataBinding.FieldName = 'CFDPPRICE'
              Width = 60
            end
            object cxgridDetialFPRICE: TcxGridDBColumn
              Caption = #26631#20934#20215
              DataBinding.FieldName = 'FPRICE'
              Width = 60
            end
            object cxgridDetialFDISCOUNTRATE: TcxGridDBColumn
              Caption = #25240#25187
              DataBinding.FieldName = 'FDISCOUNTRATE'
              Width = 60
            end
            object cxgridDetialFACTUALPRICE: TcxGridDBColumn
              Caption = #25240#21518#21333#20215
              DataBinding.FieldName = 'FACTUALPRICE'
              Width = 60
            end
            object cxgridDetialFAMOUNT: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'FAMOUNT'
              Width = 60
            end
            object cxgridDetialFTOTALRECEIVEQTY: TcxGridDBColumn
              Caption = #24050#25910#36135#25968
              DataBinding.FieldName = 'FTOTALRECEIVEQTY'
              Width = 60
            end
            object cxgridDetialFTOTALRECEIPTQTY: TcxGridDBColumn
              Caption = #24050#20837#24211#25968
              DataBinding.FieldName = 'FTOTALRECEIPTQTY'
              Width = 60
            end
            object cxgridDetialFBASESTATUS: TcxGridDBColumn
              Caption = #34892#29366#24577
              DataBinding.FieldName = 'FBASESTATUS'
              Width = 60
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              Caption = #21697#29260
              DataBinding.FieldName = 'CFBrandName'
              Width = 80
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              Caption = #27874#27573
              DataBinding.FieldName = 'cfattributeName'
              Width = 80
            end
            object cxgridDetialCFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Width = 44
            end
            object cxgridDetialFREMARK: TcxGridDBColumn
              Caption = #22791#27880
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
      Top = 72
    end
  end
  inherited pnl_top: TPanel
    inherited pnlCodeSM: TPanel
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          inherited lbDescription: TLabel
            Left = 3
            Top = 56
          end
          inherited Label2: TLabel
            Left = 3
            Top = 6
          end
          inherited Label5: TLabel
            Top = 6
          end
          object Label7: TLabel [7]
            Left = 696
            Top = 56
            Width = 52
            Height = 13
            Caption = #25910#36135#26085#26399
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          inherited txDescription: TcxDBTextEdit
            Left = 66
            Top = 54
            DataBinding.DataField = 'FDESCRIPTION'
            Width = 540
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Hint = #19994#21153#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 2
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 66
            DataBinding.DataField = 'FNUMBER'
            Width = 180
          end
          inherited lblNumber: TcxLabel
            Left = 302
            Caption = #20379#24212#21830
          end
          inherited txtName: TcxDBTextEdit
            Left = 471
            Top = 4
            DataBinding.DataField = 'CFSupplierName'
            TabOrder = 8
            Width = 135
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Top = 29
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 5
          end
          inherited cxLabel1: TcxLabel
            Top = 29
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 366
            Top = 4
            Hint = #20379#24212#21830
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 1
            Width = 107
          end
          object cxDeliveryData: TcxDBDateEdit
            Tag = 100
            Left = 762
            Top = 54
            Hint = #39044#35745#25910#33719#26085#26399
            AutoSize = False
            DataBinding.DataField = 'CFReceiveDate'
            DataBinding.DataSource = dsMaster
            Properties.SaveTime = False
            Properties.ShowTime = False
            TabOrder = 7
            Height = 21
            Width = 167
          end
          object cxLabel3: TcxLabel
            Left = 3
            Top = 29
            Caption = #20215#26684#31867#22411
            Transparent = True
          end
          object cxcmbpriceType: TcxDBLookupComboBox
            Tag = 100
            Left = 66
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
            Width = 179
          end
          object cxLabel2: TcxLabel
            Left = 302
            Top = 29
            Caption = #35746#21333#31867#22411
          end
          object cxcmbOrderType: TcxDBLookupComboBox
            Tag = 100
            Left = 366
            Top = 29
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
            Width = 240
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Left = 368
    Top = 80
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
  end
  inherited cdsMaster: TClientDataSet
    Top = 82
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
    object cdsMasterFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
      Size = 44
    end
    object cdsMasterFPURCHASEGROUPID: TWideStringField
      FieldName = 'FPURCHASEGROUPID'
      Size = 44
    end
    object cdsMasterFPURCHASEPERSONID: TWideStringField
      FieldName = 'FPURCHASEPERSONID'
      Size = 44
    end
    object cdsMasterFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      OnChange = cdsMasterFSUPPLIERIDChange
      Size = 44
    end
    object cdsMasterFSUPPLIERADDRESS: TWideStringField
      FieldName = 'FSUPPLIERADDRESS'
      Size = 510
    end
    object cdsMasterFSUPPLIERORDERNUMBER: TWideStringField
      FieldName = 'FSUPPLIERORDERNUMBER'
      Size = 160
    end
    object cdsMasterFSALEORGUNITID: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsMasterFSALEORDERID: TWideStringField
      FieldName = 'FSALEORDERID'
      Size = 44
    end
    object cdsMasterFISDIRECTSEND: TFloatField
      FieldName = 'FISDIRECTSEND'
    end
    object cdsMasterFPAYMENTTYPEID: TWideStringField
      FieldName = 'FPAYMENTTYPEID'
      Size = 44
    end
    object cdsMasterFSETTLEMENTTYPEID: TWideStringField
      FieldName = 'FSETTLEMENTTYPEID'
      Size = 44
    end
    object cdsMasterFCASHDISCOUNTID: TWideStringField
      FieldName = 'FCASHDISCOUNTID'
      Size = 44
    end
    object cdsMasterFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFPREPAYMENTRATE: TFloatField
      FieldName = 'FPREPAYMENTRATE'
    end
    object cdsMasterFPREPAYMENT: TFloatField
      FieldName = 'FPREPAYMENT'
    end
    object cdsMasterFPREPAID: TFloatField
      FieldName = 'FPREPAID'
    end
    object cdsMasterFPREPAYMENTDATE: TDateTimeField
      FieldName = 'FPREPAYMENTDATE'
    end
    object cdsMasterFSUPPLIERCONFIRM: TFloatField
      FieldName = 'FSUPPLIERCONFIRM'
    end
    object cdsMasterFINVOICEDAMOUNT: TFloatField
      FieldName = 'FINVOICEDAMOUNT'
    end
    object cdsMasterFPAIDAMOUNT: TFloatField
      FieldName = 'FPAIDAMOUNT'
    end
    object cdsMasterFISINNERSALE: TFloatField
      FieldName = 'FISINNERSALE'
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
    object cdsMasterFUNPREPAIDAMOUNT: TFloatField
      FieldName = 'FUNPREPAIDAMOUNT'
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
    object cdsMasterFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFISCENTRALBALANCE: TFloatField
      FieldName = 'FISCENTRALBALANCE'
    end
    object cdsMasterFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFISINTAX: TFloatField
      FieldName = 'FISINTAX'
    end
    object cdsMasterFISQUICKEN: TFloatField
      FieldName = 'FISQUICKEN'
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
    object cdsMasterFISPRICEINTAX: TFloatField
      FieldName = 'FISPRICEINTAX'
    end
    object cdsMasterFPAYMENTCONDITIONID: TWideStringField
      FieldName = 'FPAYMENTCONDITIONID'
      Size = 44
    end
    object cdsMasterFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsMasterFISMATCHED: TFloatField
      FieldName = 'FISMATCHED'
    end
    object cdsMasterFISAPPROVEDMATERIAL: TFloatField
      FieldName = 'FISAPPROVEDMATERIAL'
    end
    object cdsMasterCFISCOOPERATION: TFloatField
      FieldName = 'CFISCOOPERATION'
    end
    object cdsMasterCFRECEIVEDATE: TDateTimeField
      FieldName = 'CFRECEIVEDATE'
    end
    object cdsMasterCFTYPEINFORMATION: TWideStringField
      FieldName = 'CFTYPEINFORMATION'
      Size = 100
    end
    object cdsMasterCFHASPURPRICE: TFloatField
      FieldName = 'CFHASPURPRICE'
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
    object cdsMasterCFISCRATESALEORDER: TFloatField
      FieldName = 'CFISCRATESALEORDER'
    end
    object cdsMasterCFORDERINGDEFID: TWideStringField
      FieldName = 'CFORDERINGDEFID'
      Size = 44
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 44
    end
    object cdsMasterCFBARGAINCONTENT: TWideStringField
      FieldName = 'CFBARGAINCONTENT'
      Size = 4000
    end
    object cdsMasterCFCONTRACTID: TWideStringField
      FieldName = 'CFCONTRACTID'
      Size = 44
    end
    object cdsMasterCFCONTRATID: TWideStringField
      FieldName = 'CFCONTRATID'
      Size = 44
    end
    object cdsMasterCFCONTRACECONTENT: TWideStringField
      FieldName = 'CFCONTRACECONTENT'
      Size = 4000
    end
    object cdsMasterCFRANGEID: TWideStringField
      FieldName = 'CFRANGEID'
      Size = 44
    end
    object cdsMasterCFISPROCDUCT: TIntegerField
      FieldName = 'CFISPROCDUCT'
    end
    object cdsMasterCFPURTYPEID: TWideStringField
      FieldName = 'CFPURTYPEID'
      Size = 44
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
      Size = 0
      Calculated = True
    end
    object cdsMasterCFSupplierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSupplierName'
      Size = 80
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 664
    Top = 39
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
    object cdsDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
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
    object cdsDetailFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      OnChange = cdsDetailFBASEUNITIDChange
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
    object cdsDetailFSUPPLIERMATERIALNUMBER: TWideStringField
      FieldName = 'FSUPPLIERMATERIALNUMBER'
      Size = 160
    end
    object cdsDetailFSUPPLIERMATERIALNAME: TWideStringField
      FieldName = 'FSUPPLIERMATERIALNAME'
      Size = 160
    end
    object cdsDetailFSUPPLIERMATERIALMODEL: TWideStringField
      FieldName = 'FSUPPLIERMATERIALMODEL'
      Size = 160
    end
    object cdsDetailFASSETNUMBER: TWideStringField
      FieldName = 'FASSETNUMBER'
      Size = 160
    end
    object cdsDetailFDEMANDQTY: TFloatField
      FieldName = 'FDEMANDQTY'
    end
    object cdsDetailFQTY: TFloatField
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
    object cdsDetailFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsDetailFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailFDISCOUNTRATE: TFloatField
      FieldName = 'FDISCOUNTRATE'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetailFDELIVERYDATE: TDateTimeField
      FieldName = 'FDELIVERYDATE'
    end
    object cdsDetailFRECEIVEOVERRATE: TFloatField
      FieldName = 'FRECEIVEOVERRATE'
    end
    object cdsDetailFRECEIVEOWINGRATE: TFloatField
      FieldName = 'FRECEIVEOWINGRATE'
    end
    object cdsDetailFDELIVERADVANCEDAY: TFloatField
      FieldName = 'FDELIVERADVANCEDAY'
    end
    object cdsDetailFDELIVERDEFERRALDAY: TFloatField
      FieldName = 'FDELIVERDEFERRALDAY'
    end
    object cdsDetailFTRACKNUMBER: TWideStringField
      FieldName = 'FTRACKNUMBER'
      Size = 160
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFTOTALRECEIVEQTY: TFloatField
      FieldName = 'FTOTALRECEIVEQTY'
    end
    object cdsDetailFTOTALRECEIPTQTY: TFloatField
      FieldName = 'FTOTALRECEIPTQTY'
    end
    object cdsDetailFTOTALRETURNEDQTY: TFloatField
      FieldName = 'FTOTALRETURNEDQTY'
    end
    object cdsDetailFTOTALINVOICEDQTY: TFloatField
      FieldName = 'FTOTALINVOICEDQTY'
    end
    object cdsDetailFTOTALINVOICEDAMOUNT: TFloatField
      FieldName = 'FTOTALINVOICEDAMOUNT'
    end
    object cdsDetailFTOTALPAIDAMOUNT: TFloatField
      FieldName = 'FTOTALPAIDAMOUNT'
    end
    object cdsDetailFTOTALEXPENSE: TFloatField
      FieldName = 'FTOTALEXPENSE'
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFISQUANTITYUNCTRL: TFloatField
      FieldName = 'FISQUANTITYUNCTRL'
    end
    object cdsDetailFISTIMEUNCTRL: TFloatField
      FieldName = 'FISTIMEUNCTRL'
    end
    object cdsDetailFTOTALRECEIVEBASEQTY: TFloatField
      FieldName = 'FTOTALRECEIVEBASEQTY'
    end
    object cdsDetailFTOTALRECEIPTBASEQTY: TFloatField
      FieldName = 'FTOTALRECEIPTBASEQTY'
    end
    object cdsDetailFTOTALRETURNEDBASEQTY: TFloatField
      FieldName = 'FTOTALRETURNEDBASEQTY'
    end
    object cdsDetailFTOTALINVOICEDBASEQTY: TFloatField
      FieldName = 'FTOTALINVOICEDBASEQTY'
    end
    object cdsDetailFTOTALUNRETURNBASEQTY: TFloatField
      FieldName = 'FTOTALUNRETURNBASEQTY'
    end
    object cdsDetailFTOTALUNRECEIVEBASEQTY: TFloatField
      FieldName = 'FTOTALUNRECEIVEBASEQTY'
    end
    object cdsDetailFTOTALUNRECEIVEQTY: TFloatField
      FieldName = 'FTOTALUNRECEIVEQTY'
    end
    object cdsDetailFDELIVERYADDRESS: TWideStringField
      FieldName = 'FDELIVERYADDRESS'
      Size = 510
    end
    object cdsDetailFCLOSEDATE: TDateTimeField
      FieldName = 'FCLOSEDATE'
    end
    object cdsDetailFISSUPINFO: TFloatField
      FieldName = 'FISSUPINFO'
    end
    object cdsDetailFCURSEORDERQTY: TFloatField
      FieldName = 'FCURSEORDERQTY'
    end
    object cdsDetailFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 100
    end
    object cdsDetailFPREPAIDAMOUNT: TFloatField
      FieldName = 'FPREPAIDAMOUNT'
    end
    object cdsDetailFREQUESTORGUNITID: TWideStringField
      FieldName = 'FREQUESTORGUNITID'
      Size = 44
    end
    object cdsDetailFREQUESTCOMPANYORGUNITID: TWideStringField
      FieldName = 'FREQUESTCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFISREQUESTTORECEIVED: TFloatField
      FieldName = 'FISREQUESTTORECEIVED'
    end
    object cdsDetailFTOTALMOVEQTY: TFloatField
      FieldName = 'FTOTALMOVEQTY'
    end
    object cdsDetailFTOTALINVOICEDAMT: TFloatField
      FieldName = 'FTOTALINVOICEDAMT'
    end
    object cdsDetailFPREPAYMENT: TFloatField
      FieldName = 'FPREPAYMENT'
    end
    object cdsDetailFPRERECEIVED: TFloatField
      FieldName = 'FPRERECEIVED'
    end
    object cdsDetailFUNPRERECEIVEDAM: TFloatField
      FieldName = 'FUNPRERECEIVEDAM'
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
    object cdsDetailFCANINVMOVEQTY: TFloatField
      FieldName = 'FCANINVMOVEQTY'
    end
    object cdsDetailFUNORDEREDQTY: TFloatField
      FieldName = 'FUNORDEREDQTY'
    end
    object cdsDetailFISBETWEENCOMPANYREC: TFloatField
      FieldName = 'FISBETWEENCOMPANYREC'
    end
    object cdsDetailFROWTYPEID: TWideStringField
      FieldName = 'FROWTYPEID'
      Size = 44
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFDESTINATIONTYPE: TWideStringField
      FieldName = 'FDESTINATIONTYPE'
      Size = 44
    end
    object cdsDetailFMATERIALNAME: TWideStringField
      FieldName = 'FMATERIALNAME'
      Size = 510
    end
    object cdsDetailFISREQCOMEQLRECCOM: TFloatField
      FieldName = 'FISREQCOMEQLRECCOM'
    end
    object cdsDetailFPLANRECEIVEQTY: TFloatField
      FieldName = 'FPLANRECEIVEQTY'
    end
    object cdsDetailFTOTALSUPPLYSTOCKQTY: TFloatField
      FieldName = 'FTOTALSUPPLYSTOCKQTY'
    end
    object cdsDetailFTOTALCANCELLEDSTOCKQTY: TFloatField
      FieldName = 'FTOTALCANCELLEDSTOCKQTY'
    end
    object cdsDetailFTOTALSUPPLYSTOCKBASEQTY: TFloatField
      FieldName = 'FTOTALSUPPLYSTOCKBASEQTY'
    end
    object cdsDetailFTOTALPREPAYAMT: TFloatField
      FieldName = 'FTOTALPREPAYAMT'
    end
    object cdsDetailFTOTALREQPAYAMT: TFloatField
      FieldName = 'FTOTALREQPAYAMT'
    end
    object cdsDetailFISREQPREPAYGTPREPAY: TFloatField
      FieldName = 'FISREQPREPAYGTPREPAY'
    end
    object cdsDetailFNONUMMATERIALMODEL: TWideStringField
      FieldName = 'FNONUMMATERIALMODEL'
      Size = 510
    end
    object cdsDetailFQCSTANDARDID: TWideStringField
      FieldName = 'FQCSTANDARDID'
      Size = 44
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNOID: TWideStringField
      FieldName = 'FTRACKNOID'
      Size = 44
    end
    object cdsDetailFCONTRACTNUMBER: TWideStringField
      FieldName = 'FCONTRACTNUMBER'
      Size = 44
    end
    object cdsDetailFPURCONTRACTID: TWideStringField
      FieldName = 'FPURCONTRACTID'
      Size = 44
    end
    object cdsDetailFMATCHEDAMOUNT: TFloatField
      FieldName = 'FMATCHEDAMOUNT'
    end
    object cdsDetailFPURREQUESTID: TWideStringField
      FieldName = 'FPURREQUESTID'
      Size = 44
    end
    object cdsDetailFPURREQUESTENTRYID: TWideStringField
      FieldName = 'FPURREQUESTENTRYID'
      Size = 44
    end
    object cdsDetailCFCUSTOMERORDERID: TWideStringField
      FieldName = 'CFCUSTOMERORDERID'
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
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFCUSTOMERDISID: TWideStringField
      FieldName = 'CFCUSTOMERDISID'
      Size = 44
    end
    object cdsDetailCFRECEIVESTOREUNIT: TWideStringField
      FieldName = 'CFRECEIVESTOREUNIT'
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
    object cdsDetailCFSOASSOCIATEQTY: TFloatField
      FieldName = 'CFSOASSOCIATEQTY'
    end
    object cdsDetailCFLOCATION: TWideStringField
      FieldName = 'CFLOCATION'
      Size = 44
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailCFASSISTNUM: TWideStringField
      FieldName = 'CFASSISTNUM'
      Size = 200
    end
    object cdsDetailCFBOXQTY: TFloatField
      FieldName = 'CFBOXQTY'
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    BeforeEdit = cdsDetailAmountBeforeEdit
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
      Size = 44
    end
    object cdsDetailAmountFPRICE: TFloatField
      DisplayLabel = #26631#20934#21333#20215
      FieldName = 'FPRICE'
    end
    object cdsDetailAmountFACTUALPRICE: TFloatField
      DisplayLabel = #23454#38469#21333#20215
      FieldName = 'FACTUALPRICE'
      OnChange = cdsDetailAmountFACTUALPRICEChange
    end
    object cdsDetailAmountFDISCOUNTRATE: TFloatField
      DisplayLabel = #25240#25187
      FieldName = 'FDISCOUNTRATE'
      OnChange = cdsDetailAmountFDISCOUNTRATEChange
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
    object cdsDetailAmountfAmount: TFloatField
      DisplayLabel = #37329#39069
      FieldKind = fkCalculated
      FieldName = 'fAmount'
      Calculated = True
    end
    object cdsDetailAmountfTotaLQty: TIntegerField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'fTotaLQty'
      Calculated = True
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
    object cdsDetailAmountCFUnitName: TWideStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFUnitName'
      Size = 60
    end
    object cdsDetailAmountFREMARK: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailAmountFsourcebillnumber: TWideStringField
      FieldName = 'Fsourcebillnumber'
      Size = 60
    end
  end
  inherited SaveDg: TSaveDialog
    Top = 282
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 704
    Top = 128
  end
  inherited dsHeadSel: TDataSource
    Left = 353
    Top = 105
  end
  inherited cdsHeadSel: TClientDataSet
    Left = 393
    Top = 105
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
    object cdsDetailTracyFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailTracyFUNITID: TWideStringField
      FieldName = 'FUNITID'
      Size = 44
    end
    object cdsDetailTracyFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 44
    end
    object cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
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
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailTracyFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailTracyFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
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
    object cdsDetailTracyFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailTracyFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object cdsDetailTracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailTracyFSUPPLIERMATERIALNUMBER: TWideStringField
      FieldName = 'FSUPPLIERMATERIALNUMBER'
      Size = 160
    end
    object cdsDetailTracyFSUPPLIERMATERIALNAME: TWideStringField
      FieldName = 'FSUPPLIERMATERIALNAME'
      Size = 160
    end
    object cdsDetailTracyFSUPPLIERMATERIALMODEL: TWideStringField
      FieldName = 'FSUPPLIERMATERIALMODEL'
      Size = 160
    end
    object cdsDetailTracyFASSETNUMBER: TWideStringField
      FieldName = 'FASSETNUMBER'
      Size = 160
    end
    object cdsDetailTracyFDEMANDQTY: TFloatField
      FieldName = 'FDEMANDQTY'
    end
    object cdsDetailTracyFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetailTracyFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailTracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailTracyFDISCOUNTRATE: TFloatField
      FieldName = 'FDISCOUNTRATE'
    end
    object cdsDetailTracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailTracyFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailTracyFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailTracyFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailTracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailTracyFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailTracyFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailTracyFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailTracyFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetailTracyFDELIVERYDATE: TDateTimeField
      FieldName = 'FDELIVERYDATE'
    end
    object cdsDetailTracyFRECEIVEOVERRATE: TFloatField
      FieldName = 'FRECEIVEOVERRATE'
    end
    object cdsDetailTracyFRECEIVEOWINGRATE: TFloatField
      FieldName = 'FRECEIVEOWINGRATE'
    end
    object cdsDetailTracyFDELIVERADVANCEDAY: TFloatField
      FieldName = 'FDELIVERADVANCEDAY'
    end
    object cdsDetailTracyFDELIVERDEFERRALDAY: TFloatField
      FieldName = 'FDELIVERDEFERRALDAY'
    end
    object cdsDetailTracyFTRACKNUMBER: TWideStringField
      FieldName = 'FTRACKNUMBER'
      Size = 160
    end
    object cdsDetailTracyFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailTracyFTOTALRECEIVEQTY: TFloatField
      FieldName = 'FTOTALRECEIVEQTY'
    end
    object cdsDetailTracyFTOTALRECEIPTQTY: TFloatField
      FieldName = 'FTOTALRECEIPTQTY'
    end
    object cdsDetailTracyFTOTALRETURNEDQTY: TFloatField
      FieldName = 'FTOTALRETURNEDQTY'
    end
    object cdsDetailTracyFTOTALINVOICEDQTY: TFloatField
      FieldName = 'FTOTALINVOICEDQTY'
    end
    object cdsDetailTracyFTOTALINVOICEDAMOUNT: TFloatField
      FieldName = 'FTOTALINVOICEDAMOUNT'
    end
    object cdsDetailTracyFTOTALPAIDAMOUNT: TFloatField
      FieldName = 'FTOTALPAIDAMOUNT'
    end
    object cdsDetailTracyFTOTALEXPENSE: TFloatField
      FieldName = 'FTOTALEXPENSE'
    end
    object cdsDetailTracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailTracyFISQUANTITYUNCTRL: TFloatField
      FieldName = 'FISQUANTITYUNCTRL'
    end
    object cdsDetailTracyFISTIMEUNCTRL: TFloatField
      FieldName = 'FISTIMEUNCTRL'
    end
    object cdsDetailTracyFTOTALRECEIVEBASEQTY: TFloatField
      FieldName = 'FTOTALRECEIVEBASEQTY'
    end
    object cdsDetailTracyFTOTALRECEIPTBASEQTY: TFloatField
      FieldName = 'FTOTALRECEIPTBASEQTY'
    end
    object cdsDetailTracyFTOTALRETURNEDBASEQTY: TFloatField
      FieldName = 'FTOTALRETURNEDBASEQTY'
    end
    object cdsDetailTracyFTOTALINVOICEDBASEQTY: TFloatField
      FieldName = 'FTOTALINVOICEDBASEQTY'
    end
    object cdsDetailTracyFTOTALUNRETURNBASEQTY: TFloatField
      FieldName = 'FTOTALUNRETURNBASEQTY'
    end
    object cdsDetailTracyFTOTALUNRECEIVEBASEQTY: TFloatField
      FieldName = 'FTOTALUNRECEIVEBASEQTY'
    end
    object cdsDetailTracyFTOTALUNRECEIVEQTY: TFloatField
      FieldName = 'FTOTALUNRECEIVEQTY'
    end
    object cdsDetailTracyFDELIVERYADDRESS: TWideStringField
      FieldName = 'FDELIVERYADDRESS'
      Size = 510
    end
    object cdsDetailTracyFCLOSEDATE: TDateTimeField
      FieldName = 'FCLOSEDATE'
    end
    object cdsDetailTracyFISSUPINFO: TFloatField
      FieldName = 'FISSUPINFO'
    end
    object cdsDetailTracyFCURSEORDERQTY: TFloatField
      FieldName = 'FCURSEORDERQTY'
    end
    object cdsDetailTracyFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailTracyFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailTracyFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 100
    end
    object cdsDetailTracyFPREPAIDAMOUNT: TFloatField
      FieldName = 'FPREPAIDAMOUNT'
    end
    object cdsDetailTracyFREQUESTORGUNITID: TWideStringField
      FieldName = 'FREQUESTORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFREQUESTCOMPANYORGUNITID: TWideStringField
      FieldName = 'FREQUESTCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailTracyFISREQUESTTORECEIVED: TFloatField
      FieldName = 'FISREQUESTTORECEIVED'
    end
    object cdsDetailTracyFTOTALMOVEQTY: TFloatField
      FieldName = 'FTOTALMOVEQTY'
    end
    object cdsDetailTracyFTOTALINVOICEDAMT: TFloatField
      FieldName = 'FTOTALINVOICEDAMT'
    end
    object cdsDetailTracyFPREPAYMENT: TFloatField
      FieldName = 'FPREPAYMENT'
    end
    object cdsDetailTracyFPRERECEIVED: TFloatField
      FieldName = 'FPRERECEIVED'
    end
    object cdsDetailTracyFUNPRERECEIVEDAM: TFloatField
      FieldName = 'FUNPRERECEIVEDAM'
    end
    object cdsDetailTracyFVERSION: TFloatField
      FieldName = 'FVERSION'
    end
    object cdsDetailTracyFOLDSTATUS: TFloatField
      FieldName = 'FOLDSTATUS'
    end
    object cdsDetailTracyFOLDID: TWideStringField
      FieldName = 'FOLDID'
      Size = 44
    end
    object cdsDetailTracyFCANINVMOVEQTY: TFloatField
      FieldName = 'FCANINVMOVEQTY'
    end
    object cdsDetailTracyFUNORDEREDQTY: TFloatField
      FieldName = 'FUNORDEREDQTY'
    end
    object cdsDetailTracyFISBETWEENCOMPANYREC: TFloatField
      FieldName = 'FISBETWEENCOMPANYREC'
    end
    object cdsDetailTracyFROWTYPEID: TWideStringField
      FieldName = 'FROWTYPEID'
      Size = 44
    end
    object cdsDetailTracyFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailTracyFDESTINATIONTYPE: TWideStringField
      FieldName = 'FDESTINATIONTYPE'
      Size = 44
    end
    object cdsDetailTracyFMATERIALNAME: TWideStringField
      FieldName = 'FMATERIALNAME'
      Size = 510
    end
    object cdsDetailTracyFISREQCOMEQLRECCOM: TFloatField
      FieldName = 'FISREQCOMEQLRECCOM'
    end
    object cdsDetailTracyFPLANRECEIVEQTY: TFloatField
      FieldName = 'FPLANRECEIVEQTY'
    end
    object cdsDetailTracyFTOTALSUPPLYSTOCKQTY: TFloatField
      FieldName = 'FTOTALSUPPLYSTOCKQTY'
    end
    object cdsDetailTracyFTOTALCANCELLEDSTOCKQTY: TFloatField
      FieldName = 'FTOTALCANCELLEDSTOCKQTY'
    end
    object cdsDetailTracyFTOTALSUPPLYSTOCKBASEQTY: TFloatField
      FieldName = 'FTOTALSUPPLYSTOCKBASEQTY'
    end
    object cdsDetailTracyFTOTALPREPAYAMT: TFloatField
      FieldName = 'FTOTALPREPAYAMT'
    end
    object cdsDetailTracyFTOTALREQPAYAMT: TFloatField
      FieldName = 'FTOTALREQPAYAMT'
    end
    object cdsDetailTracyFISREQPREPAYGTPREPAY: TFloatField
      FieldName = 'FISREQPREPAYGTPREPAY'
    end
    object cdsDetailTracyFNONUMMATERIALMODEL: TWideStringField
      FieldName = 'FNONUMMATERIALMODEL'
      Size = 510
    end
    object cdsDetailTracyFQCSTANDARDID: TWideStringField
      FieldName = 'FQCSTANDARDID'
      Size = 44
    end
    object cdsDetailTracyFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailTracyFTRACKNOID: TWideStringField
      FieldName = 'FTRACKNOID'
      Size = 44
    end
    object cdsDetailTracyFCONTRACTNUMBER: TWideStringField
      FieldName = 'FCONTRACTNUMBER'
      Size = 44
    end
    object cdsDetailTracyFPURCONTRACTID: TWideStringField
      FieldName = 'FPURCONTRACTID'
      Size = 44
    end
    object cdsDetailTracyFMATCHEDAMOUNT: TFloatField
      FieldName = 'FMATCHEDAMOUNT'
    end
    object cdsDetailTracyFPURREQUESTID: TWideStringField
      FieldName = 'FPURREQUESTID'
      Size = 44
    end
    object cdsDetailTracyFPURREQUESTENTRYID: TWideStringField
      FieldName = 'FPURREQUESTENTRYID'
      Size = 44
    end
    object cdsDetailTracyCFCUSTOMERORDERID: TWideStringField
      FieldName = 'CFCUSTOMERORDERID'
      Size = 44
    end
    object cdsDetailTracyCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailTracyCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetailTracyCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailTracyCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailTracyCFCUSTOMERDISID: TWideStringField
      FieldName = 'CFCUSTOMERDISID'
      Size = 44
    end
    object cdsDetailTracyCFRECEIVESTOREUNIT: TWideStringField
      FieldName = 'CFRECEIVESTOREUNIT'
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
    object cdsDetailTracyCFSOASSOCIATEQTY: TFloatField
      FieldName = 'CFSOASSOCIATEQTY'
    end
    object cdsDetailTracyCFLOCATION: TWideStringField
      FieldName = 'CFLOCATION'
      Size = 44
    end
    object cdsDetailTracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailTracyCFASSISTNUM: TWideStringField
      FieldName = 'CFASSISTNUM'
      Size = 200
    end
    object cdsDetailTracycfMaterialNumber: TStringField
      DisplayLabel = #21830#21697#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailTracycfMaterialName: TStringField
      DisplayLabel = #21830#21697#21517#31216
      FieldName = 'cfMaterialName'
      Size = 200
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
    object cdsDetailTracyCFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 50
    end
    object cdsDetailTracyCFColorCode: TStringField
      DisplayLabel = #33394#21495
      FieldName = 'CFColorCode'
      Size = 60
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
    object cdsDetailTracyCFBrandName: TWideStringField
      FieldName = 'CFBrandName'
      Size = 60
    end
    object cdsDetailTracycfattributeName: TWideStringField
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
    object cdsDetailTracyCFBOXQTY: TFloatField
      FieldName = 'CFBOXQTY'
    end
  end
  inherited dsDetailTracy: TDataSource
    Left = 256
    Top = 207
  end
  inherited cdstracy: TClientDataSet
    object cdstracyFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdstracyFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdstracyFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      OnChange = cdsDetailFBASEUNITIDChange
      Size = 44
    end
    object cdstracyFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdstracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdstracyCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdstracyCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
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
    object cdstracyFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdstracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdstracyCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdstracyFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdstracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdstracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdstracyFDISCOUNTRATE: TFloatField
      FieldName = 'FDISCOUNTRATE'
    end
    object cdstracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdstracyFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdstracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdstracyFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdstracyFTOTALRECEIVEQTY: TFloatField
      FieldName = 'FTOTALRECEIVEQTY'
    end
    object cdstracyFTOTALRECEIPTQTY: TFloatField
      FieldName = 'FTOTALRECEIPTQTY'
    end
    object cdstracyFQTY: TFloatField
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
  end
  object dsOrderType: TDataSource
    DataSet = CliDM.cdsOrderType
    Left = 409
    Top = 73
  end
  object dsPriceType: TDataSource
    DataSet = CliDM.cdsPriceType
    Left = 137
    Top = 73
  end
  object cdsSupplier: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsSupplierFilterRecord
    Left = 465
    Top = 49
    object cdsSupplierFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsSupplierfnumber: TWideStringField
      FieldName = 'fnumber'
      Size = 80
    end
    object cdsSupplierfname_l2: TWideStringField
      FieldName = 'fname_l2'
      Size = 100
    end
    object cdsSupplierFinternalCompanyID: TWideStringField
      FieldName = 'FinternalCompanyID'
      Size = 44
    end
    object cdsSupplierFtaxRate: TFloatField
      FieldName = 'FtaxRate'
    end
    object cdsSupplierFHelpCode: TWideStringField
      FieldName = 'FHelpCode'
      Size = 0
    end
  end
end
