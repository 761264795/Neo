inherited FM_BillEditPurReceive: TFM_BillEditPurReceive
  Left = 175
  Top = 0
  Caption = #37319#36141#25910#36135#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    TabOrder = 4
    inherited cxPageDetail: TcxPageControl
      OnChange = cxPageDetailChange
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          inherited dbgList2: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2FAmount
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2fTotalQty
              end>
            object dbgList2cfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Width = 120
            end
            object dbgList2cfMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialName'
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
              Width = 60
            end
            object dbgList2CFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
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
            object dbgList2FDISCOUNTRATE: TcxGridDBColumn
              DataBinding.FieldName = 'CFDISCOUNT'
              Width = 60
            end
            object dbgList2FACTUALPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FACTUALPRICE'
              Width = 60
            end
            object dbgList2CFLocName: TcxGridDBColumn
              DataBinding.FieldName = 'CFLocName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFLocNamePropertiesButtonClick
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
            object dbgList2FAmount: TcxGridDBColumn
              DataBinding.FieldName = 'FAmount'
            end
            object dbgList2fTotalQty: TcxGridDBColumn
              DataBinding.FieldName = 'fTotalQty'
            end
            object dbgList2CFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Width = 80
            end
            object dbgList2cfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Width = 80
            end
            object dbgList2CFUnitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Width = 60
            end
            object dbgList2FRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'FRemark'
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
                Column = cxgridDetialFRECEIPTQTY
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
              Width = 44
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
              Width = 53
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
            object cxgridDetialCFLocName: TcxGridDBColumn
              DataBinding.FieldName = 'CFLocName'
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
            object cxgridDetialFQTY: TcxGridDBColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'FQTY'
              Width = 60
            end
            object cxgridDetialCFDISCOUNT: TcxGridDBColumn
              Caption = #25240#25187
              DataBinding.FieldName = 'CFDISCOUNT'
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
              Width = 55
            end
            object cxgridDetialFRECEIPTQTY: TcxGridDBColumn
              Caption = #24050#20837#24211#25968
              DataBinding.FieldName = 'FRECEIPTQTY'
            end
            object cxgridDetialCFCHECKINPUTQTY: TcxGridDBColumn
              Caption = #25195#25551#25968
              DataBinding.FieldName = 'CFCHECKINPUTQTY'
            end
            object cxgridDetialCFCHECKDIFFQTY: TcxGridDBColumn
              Caption = #24046#24322#25968
              DataBinding.FieldName = 'CFCHECKDIFFQTY'
            end
            object cxgridDetialCFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
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
  end
  inherited p_bt: TPanel
    TabOrder = 2
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
            Left = 307
            Top = 56
          end
          inherited Label2: TLabel
            Left = 3
            Top = 6
          end
          inherited Label5: TLabel
            Left = 680
            Top = 6
          end
          inherited txDescription: TcxDBTextEdit
            Left = 364
            Top = 53
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 7
            Width = 232
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 746
            Top = 3
            Hint = #19994#21153#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 2
          end
          inherited cxFNumber: TcxDBMaskEdit
            Top = 3
            DataBinding.DataField = 'FNUMBER'
            Width = 179
          end
          inherited lblNumber: TcxLabel
            Left = 307
            Caption = #20379#24212#21830
          end
          inherited txtName: TcxDBTextEdit
            Left = 483
            Top = 3
            DataBinding.DataField = 'CFSupplierName'
            TabOrder = 9
            Width = 113
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 747
            Top = 28
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 5
          end
          inherited cxLabel1: TcxLabel
            Left = 680
            Top = 29
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 364
            Top = 3
            Hint = #20379#24212#21830
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 1
          end
          object cxLabel2: TcxLabel
            Left = 3
            Top = 29
            Caption = #25910#36135#31867#22411
          end
          object cxbtnedtRecType: TcxDBLookupComboBox
            Tag = 100
            Left = 74
            Top = 28
            Hint = #25910#36135#31867#22411
            AutoSize = False
            DataBinding.DataField = 'CFPURRECTYPEID'
            DataBinding.DataSource = dsMaster
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'Fname_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsPurRecType
            TabOrder = 3
            Height = 21
            Width = 178
          end
          object cxLabel3: TcxLabel
            Left = 307
            Top = 29
            Caption = #20316#29992#33539#22260
          end
          object cxbtnedtScopetype: TcxDBLookupComboBox
            Left = 364
            Top = 28
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
            TabOrder = 4
            Height = 21
            Width = 232
          end
          object cxLabel4: TcxLabel
            Left = 680
            Top = 56
            Caption = #37319#36141#35746#21333
          end
          object cxbtnPO: TcxButtonEdit
            Left = 747
            Top = 53
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            TabOrder = 8
            Width = 166
          end
          object cxLabel7: TcxLabel
            Left = 3
            Top = 56
            Caption = #20837#24211#20179#24211
            Transparent = True
          end
          object cxbtnReceivWareNum: TcxButtonEdit
            Tag = 100
            Left = 74
            Top = 53
            Hint = #25910#36135#20179#24211
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnReceivWareNumPropertiesButtonClick
            Properties.OnChange = cxbtnReceivWareNumPropertiesChange
            TabOrder = 6
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 81
          end
          object cxbtnReceivWareName: TcxDBTextEdit
            Left = 153
            Top = 53
            DataBinding.DataField = 'CFInWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 16
            Width = 99
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Left = 366
    Top = 76
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
    object cdsMasterFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFCONVERTMODE: TFloatField
      FieldName = 'FCONVERTMODE'
    end
    object cdsMasterFISCENTRALBALANCE: TFloatField
      FieldName = 'FISCENTRALBALANCE'
    end
    object cdsMasterFPURCHASETYPE: TFloatField
      FieldName = 'FPURCHASETYPE'
    end
    object cdsMasterFCUSTOMERID: TWideStringField
      FieldName = 'FCUSTOMERID'
      Size = 44
    end
    object cdsMasterFMONTH: TFloatField
      FieldName = 'FMONTH'
    end
    object cdsMasterFDAY: TFloatField
      FieldName = 'FDAY'
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterCFPRICETYPEID: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterCFORDERTYPEID: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterCFISCOMPLETED: TFloatField
      FieldName = 'CFISCOMPLETED'
    end
    object cdsMasterCFORDERINGDEFID: TWideStringField
      FieldName = 'CFORDERINGDEFID'
      Size = 44
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 44
    end
    object cdsMasterCFRANGEID: TWideStringField
      FieldName = 'CFRANGEID'
      Size = 44
    end
    object cdsMasterCFISPROCDUCT: TIntegerField
      FieldName = 'CFISPROCDUCT'
    end
    object cdsMasterCFPURRECTYPEID: TWideStringField
      FieldName = 'CFPURRECTYPEID'
      Size = 44
    end
    object cdsMasterCFSupplierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSupplierName'
      Size = 100
      Calculated = True
    end
    object cdsMasterCFINWAREHOUSEID: TWideStringField
      FieldName = 'CFINWAREHOUSEID'
      OnChange = cdsMasterCFINWAREHOUSEIDChange
      Size = 44
    end
    object cdsMasterCFInWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFInWareName'
      Size = 60
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 640
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
    object cdsDetailFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailFQTY: TFloatField
      FieldName = 'FQTY'
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
    object cdsDetailFPURORDERID: TWideStringField
      FieldName = 'FPURORDERID'
      Size = 44
    end
    object cdsDetailFPURORDERENTRYID: TWideStringField
      FieldName = 'FPURORDERENTRYID'
      Size = 44
    end
    object cdsDetailFRECEIPTQTY: TFloatField
      FieldName = 'FRECEIPTQTY'
    end
    object cdsDetailFPURORDERNUM: TWideStringField
      FieldName = 'FPURORDERNUM'
      Size = 160
    end
    object cdsDetailFPURORDERENTRYSEQ: TFloatField
      FieldName = 'FPURORDERENTRYSEQ'
    end
    object cdsDetailFEXP: TDateTimeField
      FieldName = 'FEXP'
    end
    object cdsDetailFMFG: TDateTimeField
      FieldName = 'FMFG'
    end
    object cdsDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
    end
    object cdsDetailFRECEIPTBASEQTY: TFloatField
      FieldName = 'FRECEIPTBASEQTY'
    end
    object cdsDetailFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
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
    object cdsDetailFISREQUESTTORECEIVED: TFloatField
      FieldName = 'FISREQUESTTORECEIVED'
    end
    object cdsDetailFQUALIFIEDQTY: TFloatField
      FieldName = 'FQUALIFIEDQTY'
    end
    object cdsDetailFUNQUALIFIEDQTY: TFloatField
      FieldName = 'FUNQUALIFIEDQTY'
    end
    object cdsDetailFCONCESSIVERECQTY: TFloatField
      FieldName = 'FCONCESSIVERECQTY'
    end
    object cdsDetailFQUALIFIEDBASEQTY: TFloatField
      FieldName = 'FQUALIFIEDBASEQTY'
    end
    object cdsDetailFUNQUALIFIEDBASEQTY: TFloatField
      FieldName = 'FUNQUALIFIEDBASEQTY'
    end
    object cdsDetailFCONCESSIVERECBASEQTY: TFloatField
      FieldName = 'FCONCESSIVERECBASEQTY'
    end
    object cdsDetailFBILLROWTYPEID: TWideStringField
      FieldName = 'FBILLROWTYPEID'
      Size = 44
    end
    object cdsDetailFNONUMMATERIALNAME: TWideStringField
      FieldName = 'FNONUMMATERIALNAME'
      Size = 510
    end
    object cdsDetailFTOFIXASSETSQTY: TFloatField
      FieldName = 'FTOFIXASSETSQTY'
    end
    object cdsDetailFUNTOFIXASSETSQTY: TFloatField
      FieldName = 'FUNTOFIXASSETSQTY'
    end
    object cdsDetailFPRODUCTTASKNUMBER: TWideStringField
      FieldName = 'FPRODUCTTASKNUMBER'
      Size = 80
    end
    object cdsDetailFCOREBILLID: TWideStringField
      FieldName = 'FCOREBILLID'
      Size = 44
    end
    object cdsDetailFCOREBILLENTRYID: TWideStringField
      FieldName = 'FCOREBILLENTRYID'
      Size = 44
    end
    object cdsDetailFSUPPLIERLOTNO: TWideStringField
      FieldName = 'FSUPPLIERLOTNO'
      Size = 510
    end
    object cdsDetailFNONUMMATERIALMODEL: TWideStringField
      FieldName = 'FNONUMMATERIALMODEL'
      Size = 160
    end
    object cdsDetailFCHECKRETURNEDQTY: TFloatField
      FieldName = 'FCHECKRETURNEDQTY'
    end
    object cdsDetailFCHECKRETURNEDBASEQTY: TFloatField
      FieldName = 'FCHECKRETURNEDBASEQTY'
    end
    object cdsDetailFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
      Size = 44
    end
    object cdsDetailFQUALITYORGUNITID: TWideStringField
      FieldName = 'FQUALITYORGUNITID'
      Size = 44
    end
    object cdsDetailFISCHECK: TFloatField
      FieldName = 'FISCHECK'
    end
    object cdsDetailFISURGENTPASS: TFloatField
      FieldName = 'FISURGENTPASS'
    end
    object cdsDetailFCHECKQTY: TFloatField
      FieldName = 'FCHECKQTY'
    end
    object cdsDetailFUNCHECKQTY: TFloatField
      FieldName = 'FUNCHECKQTY'
    end
    object cdsDetailFCHECKBASEQTY: TFloatField
      FieldName = 'FCHECKBASEQTY'
    end
    object cdsDetailFUNCHECKBASEQTY: TFloatField
      FieldName = 'FUNCHECKBASEQTY'
    end
    object cdsDetailFPURCONTRACTNUMBER: TWideStringField
      FieldName = 'FPURCONTRACTNUMBER'
      Size = 80
    end
    object cdsDetailFPURCONTRACTSEQ: TFloatField
      FieldName = 'FPURCONTRACTSEQ'
    end
    object cdsDetailFQISTANDARDID: TWideStringField
      FieldName = 'FQISTANDARDID'
      Size = 44
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
    object cdsDetailCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailCFSRCSALESORDERID: TWideStringField
      FieldName = 'CFSRCSALESORDERID'
      Size = 44
    end
    object cdsDetailCFSRCSALESORDERENTRYID: TWideStringField
      FieldName = 'CFSRCSALESORDERENTRYID'
      Size = 44
    end
    object cdsDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetailCFCHECKINPUTQTY: TFloatField
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdsDetailCFCHECKDIFFQTY: TFloatField
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdsDetailCFSTOPNUM: TFloatField
      FieldName = 'CFSTOPNUM'
    end
    object cdsDetailCFBOXQTY: TFloatField
      FieldName = 'CFBOXQTY'
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
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
    object cdsDetailAmountcfMaterialNumber2: TStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailAmountcfMaterialName2: TStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'cfMaterialName'
      Size = 200
    end
    object cdsDetailAmountCFColorCode2: TStringField
      DisplayLabel = #33394#21495
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsDetailAmountCFColorName2: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsDetailAmountCFCupName2: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsDetailAmountCFPackName2: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 50
    end
    object cdsDetailAmountCFPACKNUM2: TFloatField
      DisplayLabel = #31665#25968
      FieldName = 'CFPACKNUM'
      OnChange = cdsDetailAmountCFPACKNUM2Change
    end
    object cdsDetailAmountFMATERIALID2: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsDetailAmountCFCOLORID2: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailAmountCFCUPID2: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailAmountCFDPPRICE2: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailAmountCFPACKID2: TStringField
      FieldName = 'CFPACKID'
      OnChange = cdsDetailAmountCFPACKID2Change
      Size = 44
    end
    object cdsDetailAmountFDELIVERYDATE2: TDateTimeField
      FieldName = 'FDELIVERYDATE'
    end
    object cdsDetailAmountfAmount_110: TFloatField
      FieldName = 'fAmount_1'
    end
    object cdsDetailAmountfAmount_210: TFloatField
      FieldName = 'fAmount_2'
    end
    object cdsDetailAmountfAmount_32: TFloatField
      FieldName = 'fAmount_3'
    end
    object cdsDetailAmountfAmount_42: TFloatField
      FieldName = 'fAmount_4'
    end
    object cdsDetailAmountfAmount_52: TFloatField
      FieldName = 'fAmount_5'
    end
    object cdsDetailAmountfAmount_62: TFloatField
      FieldName = 'fAmount_6'
    end
    object cdsDetailAmountfAmount_72: TFloatField
      FieldName = 'fAmount_7'
    end
    object cdsDetailAmountfAmount_82: TFloatField
      FieldName = 'fAmount_8'
    end
    object cdsDetailAmountfAmount_92: TFloatField
      FieldName = 'fAmount_9'
    end
    object cdsDetailAmountfAmount_102: TFloatField
      FieldName = 'fAmount_10'
    end
    object cdsDetailAmountfAmount_112: TFloatField
      FieldName = 'fAmount_11'
    end
    object cdsDetailAmountfAmount_122: TFloatField
      FieldName = 'fAmount_12'
    end
    object cdsDetailAmountfAmount_132: TFloatField
      FieldName = 'fAmount_13'
    end
    object cdsDetailAmountfAmount_142: TFloatField
      FieldName = 'fAmount_14'
    end
    object cdsDetailAmountfAmount_152: TFloatField
      FieldName = 'fAmount_15'
    end
    object cdsDetailAmountfAmount_162: TFloatField
      FieldName = 'fAmount_16'
    end
    object cdsDetailAmountfAmount_172: TFloatField
      FieldName = 'fAmount_17'
    end
    object cdsDetailAmountfAmount_182: TFloatField
      FieldName = 'fAmount_18'
    end
    object cdsDetailAmountfAmount_192: TFloatField
      FieldName = 'fAmount_19'
    end
    object cdsDetailAmountfAmount_202: TFloatField
      FieldName = 'fAmount_20'
    end
    object cdsDetailAmountfAmount_212: TFloatField
      FieldName = 'fAmount_21'
    end
    object cdsDetailAmountfAmount_222: TFloatField
      FieldName = 'fAmount_22'
    end
    object cdsDetailAmountfAmount_232: TFloatField
      FieldName = 'fAmount_23'
    end
    object cdsDetailAmountfAmount_242: TFloatField
      FieldName = 'fAmount_24'
    end
    object cdsDetailAmountfAmount_252: TFloatField
      FieldName = 'fAmount_25'
    end
    object cdsDetailAmountfAmount_262: TFloatField
      FieldName = 'fAmount_26'
    end
    object cdsDetailAmountfAmount_272: TFloatField
      FieldName = 'fAmount_27'
    end
    object cdsDetailAmountfAmount_282: TFloatField
      FieldName = 'fAmount_28'
    end
    object cdsDetailAmountfAmount_292: TFloatField
      FieldName = 'fAmount_29'
    end
    object cdsDetailAmountfAmount_302: TFloatField
      FieldName = 'fAmount_30'
    end
    object cdsDetailAmountFPRICE2: TFloatField
      DisplayLabel = #26631#20934#20215
      FieldName = 'FPRICE'
    end
    object cdsDetailAmountFACTUALPRICE2: TFloatField
      DisplayLabel = #25240#21518#21333#20215
      FieldName = 'FACTUALPRICE'
      OnChange = cdsDetailAmountFACTUALPRICE2Change
    end
    object cdsDetailAmountFDISCOUNTRATE2: TFloatField
      DisplayLabel = #25240#25187
      FieldName = 'CFDISCOUNT'
      OnChange = cdsDetailAmountFDISCOUNTRATE2Change
    end
    object cdsDetailAmountCFBrandName2: TWideStringField
      DisplayLabel = #21697#29260
      FieldName = 'CFBrandName'
      Size = 60
    end
    object cdsDetailAmountcfattributeName2: TWideStringField
      DisplayLabel = #27874#27573
      FieldName = 'cfattributeName'
      Size = 60
    end
    object cdsDetailAmountCfbrandid2: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsDetailAmountcfattributeid2: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailAmountfTotalQty: TFloatField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'fTotalQty'
      Calculated = True
    end
    object cdsDetailAmountFAmount: TFloatField
      DisplayLabel = #37329#39069#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FAmount'
      Calculated = True
    end
    object cdsDetailAmountFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdsDetailAmountCFLocName: TStringField
      DisplayLabel = #24211#20301
      FieldName = 'CFLocName'
      Size = 60
    end
    object cdsDetailAmountCFUnitName: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFNUitName'
      Size = 60
    end
    object cdsDetailAmountFRemark: TWideStringField
      DefaultExpression = #22791#27880
      FieldName = 'FRemark'
      Size = 200
    end
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 728
    Top = 112
  end
  inherited dsHeadSel: TDataSource
    Left = 393
    Top = 65
  end
  inherited cdsHeadSel: TClientDataSet
    Left = 441
    Top = 73
  end
  inherited dsInputWay: TDataSource
    Top = 57
  end
  inherited cdsDetailTracy: TClientDataSet
    object cdsDetailTracyFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailTracyFSEQ: TFloatField
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
    object cdsDetailTracyFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailTracyFQTY: TFloatField
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
    object cdsDetailTracyFPURORDERID: TWideStringField
      FieldName = 'FPURORDERID'
      Size = 44
    end
    object cdsDetailTracyFPURORDERENTRYID: TWideStringField
      FieldName = 'FPURORDERENTRYID'
      Size = 44
    end
    object cdsDetailTracyFRECEIPTQTY: TFloatField
      FieldName = 'FRECEIPTQTY'
    end
    object cdsDetailTracyFPURORDERNUM: TWideStringField
      FieldName = 'FPURORDERNUM'
      Size = 160
    end
    object cdsDetailTracyFPURORDERENTRYSEQ: TFloatField
      FieldName = 'FPURORDERENTRYSEQ'
    end
    object cdsDetailTracyFEXP: TDateTimeField
      FieldName = 'FEXP'
    end
    object cdsDetailTracyFMFG: TDateTimeField
      FieldName = 'FMFG'
    end
    object cdsDetailTracyFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailTracyFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
    end
    object cdsDetailTracyFRECEIPTBASEQTY: TFloatField
      FieldName = 'FRECEIPTBASEQTY'
    end
    object cdsDetailTracyFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
    end
    object cdsDetailTracyFORDERPRICE: TFloatField
      FieldName = 'FORDERPRICE'
    end
    object cdsDetailTracyFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailTracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailTracyFISREQUESTTORECEIVED: TFloatField
      FieldName = 'FISREQUESTTORECEIVED'
    end
    object cdsDetailTracyFQUALIFIEDQTY: TFloatField
      FieldName = 'FQUALIFIEDQTY'
    end
    object cdsDetailTracyFUNQUALIFIEDQTY: TFloatField
      FieldName = 'FUNQUALIFIEDQTY'
    end
    object cdsDetailTracyFCONCESSIVERECQTY: TFloatField
      FieldName = 'FCONCESSIVERECQTY'
    end
    object cdsDetailTracyFQUALIFIEDBASEQTY: TFloatField
      FieldName = 'FQUALIFIEDBASEQTY'
    end
    object cdsDetailTracyFUNQUALIFIEDBASEQTY: TFloatField
      FieldName = 'FUNQUALIFIEDBASEQTY'
    end
    object cdsDetailTracyFCONCESSIVERECBASEQTY: TFloatField
      FieldName = 'FCONCESSIVERECBASEQTY'
    end
    object cdsDetailTracyFBILLROWTYPEID: TWideStringField
      FieldName = 'FBILLROWTYPEID'
      Size = 44
    end
    object cdsDetailTracyFNONUMMATERIALNAME: TWideStringField
      FieldName = 'FNONUMMATERIALNAME'
      Size = 510
    end
    object cdsDetailTracyFTOFIXASSETSQTY: TFloatField
      FieldName = 'FTOFIXASSETSQTY'
    end
    object cdsDetailTracyFUNTOFIXASSETSQTY: TFloatField
      FieldName = 'FUNTOFIXASSETSQTY'
    end
    object cdsDetailTracyFPRODUCTTASKNUMBER: TWideStringField
      FieldName = 'FPRODUCTTASKNUMBER'
      Size = 80
    end
    object cdsDetailTracyFCOREBILLID: TWideStringField
      FieldName = 'FCOREBILLID'
      Size = 44
    end
    object cdsDetailTracyFCOREBILLENTRYID: TWideStringField
      FieldName = 'FCOREBILLENTRYID'
      Size = 44
    end
    object cdsDetailTracyFSUPPLIERLOTNO: TWideStringField
      FieldName = 'FSUPPLIERLOTNO'
      Size = 510
    end
    object cdsDetailTracyFNONUMMATERIALMODEL: TWideStringField
      FieldName = 'FNONUMMATERIALMODEL'
      Size = 160
    end
    object cdsDetailTracyFCHECKRETURNEDQTY: TFloatField
      FieldName = 'FCHECKRETURNEDQTY'
    end
    object cdsDetailTracyFCHECKRETURNEDBASEQTY: TFloatField
      FieldName = 'FCHECKRETURNEDBASEQTY'
    end
    object cdsDetailTracyFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFQUALITYORGUNITID: TWideStringField
      FieldName = 'FQUALITYORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFISCHECK: TFloatField
      FieldName = 'FISCHECK'
    end
    object cdsDetailTracyFISURGENTPASS: TFloatField
      FieldName = 'FISURGENTPASS'
    end
    object cdsDetailTracyFCHECKQTY: TFloatField
      FieldName = 'FCHECKQTY'
    end
    object cdsDetailTracyFUNCHECKQTY: TFloatField
      FieldName = 'FUNCHECKQTY'
    end
    object cdsDetailTracyFCHECKBASEQTY: TFloatField
      FieldName = 'FCHECKBASEQTY'
    end
    object cdsDetailTracyFUNCHECKBASEQTY: TFloatField
      FieldName = 'FUNCHECKBASEQTY'
    end
    object cdsDetailTracyFPURCONTRACTNUMBER: TWideStringField
      FieldName = 'FPURCONTRACTNUMBER'
      Size = 80
    end
    object cdsDetailTracyFPURCONTRACTSEQ: TFloatField
      FieldName = 'FPURCONTRACTSEQ'
    end
    object cdsDetailTracyFQISTANDARDID: TWideStringField
      FieldName = 'FQISTANDARDID'
      Size = 44
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
    object cdsDetailTracyCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailTracyCFSRCSALESORDERID: TWideStringField
      FieldName = 'CFSRCSALESORDERID'
      Size = 44
    end
    object cdsDetailTracyCFSRCSALESORDERENTRYID: TWideStringField
      FieldName = 'CFSRCSALESORDERENTRYID'
      Size = 44
    end
    object cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetailTracyCFCHECKINPUTQTY: TFloatField
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdsDetailTracyCFCHECKDIFFQTY: TFloatField
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdsDetailTracyCFSTOPNUM: TFloatField
      FieldName = 'CFSTOPNUM'
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
    object cdsDetailTracyCFLocName: TStringField
      DisplayLabel = #24211#20301
      FieldName = 'CFLocName'
      Size = 60
    end
    object cdsDetailTracyCFNUitName: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFNUitName'
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
    object cdsDetailTracyCFBOXQTY: TFloatField
      FieldName = 'CFBOXQTY'
    end
    object cdsDetailTracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
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
    object cdstracyFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdstracyFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdstracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdstracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdstracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdstracyFRECEIPTQTY: TFloatField
      FieldName = 'FRECEIPTQTY'
    end
    object cdstracyFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdstracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
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
    object cdstracyCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdstracyCFCHECKINPUTQTY: TFloatField
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdstracyCFCHECKDIFFQTY: TFloatField
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdstracyCFSTOPNUM: TFloatField
      FieldName = 'CFSTOPNUM'
    end
    object cdstracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  object cdswarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdswarehouseFilterRecord
    Left = 177
    Top = 99
  end
  object dsPurRecType: TDataSource
    DataSet = CliDM.cdsPurRecType
    Left = 145
    Top = 81
  end
  object dsRange: TDataSource
    DataSet = CliDM.cdsRange
    Left = 513
    Top = 81
  end
  object cdsSupplier: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsSupplierFilterRecord
    Left = 281
    Top = 57
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
