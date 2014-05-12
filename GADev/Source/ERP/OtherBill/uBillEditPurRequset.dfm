inherited FM_BillEditPurRequest: TFM_BillEditPurRequest
  Caption = #37319#36141#30003#35831#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    TabOrder = 1
    inherited cxPageDetail: TcxPageControl
      OnChange = cxPageDetailChange
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
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
              Width = 60
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
            object dbgList2CFDISCOUNT: TcxGridDBColumn
              Caption = #25240#25187
              DataBinding.FieldName = 'CFDISCOUNT'
              Width = 60
            end
            object dbgList2FACTUALPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FACTUALPRICE'
              Width = 60
            end
            object dbgList2CFSupplierName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSupplierName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFSupplierNamePropertiesButtonClick
              Width = 80
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
            object dbgList2FTotalQty: TcxGridDBColumn
              DataBinding.FieldName = 'FTotalQty'
              Options.Editing = False
              Width = 60
            end
            object dbgList2FAmount: TcxGridDBColumn
              DataBinding.FieldName = 'FAmount'
              Options.Editing = False
              Width = 60
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
              end>
            object cxgridDetialFSEQ: TcxGridDBColumn
              Caption = #24207#21495
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
              Width = 52
            end
            object cxgridDetialCFSizeName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeName'
              Width = 50
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
              Width = 50
            end
            object cxgridDetialCFDPPRICE: TcxGridDBColumn
              Caption = #21514#29260#20215
              DataBinding.FieldName = 'CFDPPRICE'
            end
            object cxgridDetialFPRICE: TcxGridDBColumn
              Caption = #26631#20934#20215
              DataBinding.FieldName = 'FPRICE'
            end
            object cxgridDetialFQTY: TcxGridDBColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'FQTY'
            end
            object cxgridDetialCFDISCOUNT: TcxGridDBColumn
              Caption = #25240#25187
              DataBinding.FieldName = 'CFDISCOUNT'
            end
            object cxgridDetialFACTUALPRICE: TcxGridDBColumn
              Caption = #25240#21518#21333#20215
              DataBinding.FieldName = 'FACTUALPRICE'
              Width = 60
            end
            object cxgridDetialFAMOUNT: TcxGridDBColumn
              Caption = #25240#21518#37329#39069
              DataBinding.FieldName = 'FAMOUNT'
              Width = 60
            end
            object cxgridDetialCFSupplierName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSupplierName'
              Width = 70
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Width = 70
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Width = 70
            end
            object cxgridDetialCFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Width = 70
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
  inherited pnl_top: TPanel
    inherited pnlCodeSM: TPanel
      Top = 66
      Height = 62
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Height = 65
      ClientRectBottom = 65
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Height = 65
          inherited lbDescription: TLabel
            Left = 321
            Top = 32
            Width = 26
            Caption = #22791#27880
          end
          inherited Label2: TLabel
            Left = 3
          end
          inherited Label5: TLabel
            Caption = #30003#35831#26085#26399
          end
          inherited txDescription: TcxDBTextEdit
            Left = 370
            Top = 31
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 4
            Width = 240
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Top = 6
            Hint = #30003#35831#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 2
          end
          inherited cxFNumber: TcxDBMaskEdit
            Top = 6
            DataBinding.DataField = 'FNUMBER'
            Width = 202
          end
          inherited lblNumber: TcxLabel
            Left = 321
            Caption = #30003#35831#20154
          end
          inherited txtName: TcxDBTextEdit
            Left = 489
            DataBinding.DataField = 'CFApplierName'
            TabOrder = 6
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Top = 31
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 5
          end
          inherited cxLabel1: TcxLabel
            Top = 32
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Tag = 0
            Left = 370
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 1
          end
          object cxLabel7: TcxLabel
            Left = 3
            Top = 32
            Caption = #20837#24211#20179#24211
            Transparent = True
          end
          object cxbtnReceivWareNum: TcxButtonEdit
            Tag = 100
            Left = 74
            Top = 31
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnReceivWareNumPropertiesButtonClick
            Properties.OnChange = cxbtnReceivWareNumPropertiesChange
            TabOrder = 3
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 81
          end
          object cxbtnReceivWareName: TcxDBTextEdit
            Left = 153
            Top = 31
            DataBinding.DataField = 'CFWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 10
            Width = 122
          end
        end
      end
    end
  end
  inherited pnlStock: TPanel
    TabOrder = 2
  end
  inherited girdList: TDBGrid
    Left = 379
    Top = 99
    Hint = 'FPERSONID'
    TabOrder = 6
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
    object cdsMasterFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFTOTALAMOUNT: TFloatField
      FieldName = 'FTOTALAMOUNT'
    end
    object cdsMasterFLOCALTOTALAMOUNT: TFloatField
      FieldName = 'FLOCALTOTALAMOUNT'
    end
    object cdsMasterFBIZTYPEID: TWideStringField
      FieldName = 'FBIZTYPEID'
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
    object cdsMasterFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsMasterFPERSONID: TWideStringField
      FieldName = 'FPERSONID'
      Size = 44
    end
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterFISURGENT: TFloatField
      FieldName = 'FISURGENT'
    end
    object cdsMasterFISMERGEBILL: TFloatField
      FieldName = 'FISMERGEBILL'
    end
    object cdsMasterFPURCHASETYPE: TFloatField
      FieldName = 'FPURCHASETYPE'
    end
    object cdsMasterFISAPPROVEDSUPPLIER: TFloatField
      FieldName = 'FISAPPROVEDSUPPLIER'
    end
    object cdsMasterFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterFINVQTY: TFloatField
      FieldName = 'FINVQTY'
    end
    object cdsMasterFENTRYHASATTACHMENT: TFloatField
      FieldName = 'FENTRYHASATTACHMENT'
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 44
    end
    object cdsMasterCFISPROCDUCT: TIntegerField
      FieldName = 'CFISPROCDUCT'
    end
    object cdsMasterCFWAREHOUSEID: TWideStringField
      FieldName = 'CFWAREHOUSEID'
      OnChange = cdsMasterCFWAREHOUSEIDChange
      Size = 44
    end
    object cdsMasterCFWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFWareName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFApplierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFApplierName'
      Size = 80
      Calculated = True
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
    object cdsMasterCFPURRECTYPEID: TWideStringField
      FieldName = 'CFPURRECTYPEID'
      Size = 44
    end
  end
  inherited dsMaster: TDataSource
    Left = 616
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
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdsDetailFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsDetailFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsDetailFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
      Size = 44
    end
    object cdsDetailFMATERIALBASECLASS: TWideStringField
      FieldName = 'FMATERIALBASECLASS'
      Size = 160
    end
    object cdsDetailFREQUIREMENTDATE: TDateTimeField
      FieldName = 'FREQUIREMENTDATE'
    end
    object cdsDetailFPROPOSEDELIVERYDATE: TDateTimeField
      FieldName = 'FPROPOSEDELIVERYDATE'
    end
    object cdsDetailFPROPOSEPURCHASEDATE: TDateTimeField
      FieldName = 'FPROPOSEPURCHASEDATE'
    end
    object cdsDetailFPURPOSE: TWideStringField
      FieldName = 'FPURPOSE'
      Size = 160
    end
    object cdsDetailFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFORDEREDQTY: TFloatField
      FieldName = 'FORDEREDQTY'
    end
    object cdsDetailFUNORDEREDQTY: TFloatField
      FieldName = 'FUNORDEREDQTY'
    end
    object cdsDetailFTRACKNUMBER: TWideStringField
      FieldName = 'FTRACKNUMBER'
      Size = 160
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFORDEREDBASEQTY: TFloatField
      FieldName = 'FORDEREDBASEQTY'
    end
    object cdsDetailFUNORDEREDBASEQTY: TFloatField
      FieldName = 'FUNORDEREDBASEQTY'
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFMERGEBILLNUMBER: TWideStringField
      FieldName = 'FMERGEBILLNUMBER'
      Size = 160
    end
    object cdsDetailFUSEADMINORGUNITID: TWideStringField
      FieldName = 'FUSEADMINORGUNITID'
      Size = 44
    end
    object cdsDetailFROWTYPEID: TWideStringField
      FieldName = 'FROWTYPEID'
      Size = 44
    end
    object cdsDetailFRECEIVEDORGUNITID: TWideStringField
      FieldName = 'FRECEIVEDORGUNITID'
      Size = 44
    end
    object cdsDetailFDESTINATIONTYPE: TWideStringField
      FieldName = 'FDESTINATIONTYPE'
      Size = 80
    end
    object cdsDetailFWAREHOSUEID: TWideStringField
      FieldName = 'FWAREHOSUEID'
      Size = 44
    end
    object cdsDetailFDELIVERYADDRESS: TWideStringField
      FieldName = 'FDELIVERYADDRESS'
      Size = 510
    end
    object cdsDetailFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsDetailFSOURCETYPE: TWideStringField
      FieldName = 'FSOURCETYPE'
      Size = 80
    end
    object cdsDetailFSOURCESTORAGEORGUNITID: TWideStringField
      FieldName = 'FSOURCESTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailFSOURCEWAREHOUSEID: TWideStringField
      FieldName = 'FSOURCEWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFMATERIALNAME: TWideStringField
      FieldName = 'FMATERIALNAME'
      Size = 510
    end
    object cdsDetailFMERGEBILLSEQ: TFloatField
      FieldName = 'FMERGEBILLSEQ'
    end
    object cdsDetailFPURCHASEPERSONID: TWideStringField
      FieldName = 'FPURCHASEPERSONID'
      Size = 44
    end
    object cdsDetailFISQUANTITYUNCTRL: TFloatField
      FieldName = 'FISQUANTITYUNCTRL'
    end
    object cdsDetailFPROCESSREQUIREMENT: TWideStringField
      FieldName = 'FPROCESSREQUIREMENT'
      Size = 510
    end
    object cdsDetailFOPERATIONNO: TWideStringField
      FieldName = 'FOPERATIONNO'
      Size = 80
    end
    object cdsDetailFPLANORDERNUMBER: TWideStringField
      FieldName = 'FPLANORDERNUMBER'
      Size = 80
    end
    object cdsDetailFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 80
    end
    object cdsDetailFMATERIALGROUPID: TWideStringField
      FieldName = 'FMATERIALGROUPID'
      Size = 44
    end
    object cdsDetailFDOSINGTYPE: TFloatField
      FieldName = 'FDOSINGTYPE'
    end
    object cdsDetailFBOMID: TWideStringField
      FieldName = 'FBOMID'
      Size = 44
    end
    object cdsDetailFQUOTATIONTIMES: TFloatField
      FieldName = 'FQUOTATIONTIMES'
    end
    object cdsDetailFTOTALREQQTY: TFloatField
      FieldName = 'FTOTALREQQTY'
    end
    object cdsDetailFTOTALREQUQTY: TFloatField
      FieldName = 'FTOTALREQUQTY'
    end
    object cdsDetailFUNTOTALREQQTY: TFloatField
      FieldName = 'FUNTOTALREQQTY'
    end
    object cdsDetailFREQUESTQTY: TFloatField
      FieldName = 'FREQUESTQTY'
    end
    object cdsDetailFNONUMMATERIALMODEL: TWideStringField
      FieldName = 'FNONUMMATERIALMODEL'
      Size = 510
    end
    object cdsDetailFPURCHASEGROUPID: TWideStringField
      FieldName = 'FPURCHASEGROUPID'
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
    object cdsDetailFPURCONTRACTID: TWideStringField
      FieldName = 'FPURCONTRACTID'
      Size = 44
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      OnChange = cdsDetailCFPACKIDChange
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
    object cdsDetailCFDIAOPRICE: TFloatField
      FieldName = 'CFDIAOPRICE'
    end
    object cdsDetailCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    BeforeEdit = cdsDetailAmountBeforeEdit
    object cdsDetailAmountCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
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
    object cdsDetailAmountCFColorCode2: TStringField
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
    object cdsDetailAmountCFPACKID2: TStringField
      FieldName = 'CFPACKID'
      Size = 44
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
    object cdsDetailAmountCFSupplierName: TWideStringField
      DisplayLabel = #20379#24212#21830
      FieldName = 'CFSupplierName'
      Size = 100
    end
    object cdsDetailAmountCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
      OnChange = cdsDetailAmountCFDISCOUNTChange
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
    object cdsDetailAmountCfbrandid2: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsDetailAmountcfattributeid2: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailAmountFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailAmountCFNUitName: TWideStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFNUitName'
      Size = 10
    end
    object cdsDetailAmountfremark: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'fremark'
      Size = 400
    end
    object cdsDetailAmountFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 760
  end
  inherited dsHeadSel: TDataSource
    Left = 353
    Top = 97
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
    object cdsDetailTracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailTracyFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdsDetailTracyFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsDetailTracyFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsDetailTracyFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFMATERIALBASECLASS: TWideStringField
      FieldName = 'FMATERIALBASECLASS'
      Size = 160
    end
    object cdsDetailTracyFREQUIREMENTDATE: TDateTimeField
      FieldName = 'FREQUIREMENTDATE'
    end
    object cdsDetailTracyFPROPOSEDELIVERYDATE: TDateTimeField
      FieldName = 'FPROPOSEDELIVERYDATE'
    end
    object cdsDetailTracyFPROPOSEPURCHASEDATE: TDateTimeField
      FieldName = 'FPROPOSEPURCHASEDATE'
    end
    object cdsDetailTracyFPURPOSE: TWideStringField
      FieldName = 'FPURPOSE'
      Size = 160
    end
    object cdsDetailTracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailTracyFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetailTracyFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailTracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailTracyFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailTracyFORDEREDQTY: TFloatField
      FieldName = 'FORDEREDQTY'
    end
    object cdsDetailTracyFUNORDEREDQTY: TFloatField
      FieldName = 'FUNORDEREDQTY'
    end
    object cdsDetailTracyFTRACKNUMBER: TWideStringField
      FieldName = 'FTRACKNUMBER'
      Size = 160
    end
    object cdsDetailTracyFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailTracyFORDEREDBASEQTY: TFloatField
      FieldName = 'FORDEREDBASEQTY'
    end
    object cdsDetailTracyFUNORDEREDBASEQTY: TFloatField
      FieldName = 'FUNORDEREDBASEQTY'
    end
    object cdsDetailTracyFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailTracyFMERGEBILLNUMBER: TWideStringField
      FieldName = 'FMERGEBILLNUMBER'
      Size = 160
    end
    object cdsDetailTracyFUSEADMINORGUNITID: TWideStringField
      FieldName = 'FUSEADMINORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFROWTYPEID: TWideStringField
      FieldName = 'FROWTYPEID'
      Size = 44
    end
    object cdsDetailTracyFRECEIVEDORGUNITID: TWideStringField
      FieldName = 'FRECEIVEDORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFDESTINATIONTYPE: TWideStringField
      FieldName = 'FDESTINATIONTYPE'
      Size = 80
    end
    object cdsDetailTracyFWAREHOSUEID: TWideStringField
      FieldName = 'FWAREHOSUEID'
      Size = 44
    end
    object cdsDetailTracyFDELIVERYADDRESS: TWideStringField
      FieldName = 'FDELIVERYADDRESS'
      Size = 510
    end
    object cdsDetailTracyFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFSOURCETYPE: TWideStringField
      FieldName = 'FSOURCETYPE'
      Size = 80
    end
    object cdsDetailTracyFSOURCESTORAGEORGUNITID: TWideStringField
      FieldName = 'FSOURCESTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFSOURCEWAREHOUSEID: TWideStringField
      FieldName = 'FSOURCEWAREHOUSEID'
      Size = 44
    end
    object cdsDetailTracyFMATERIALNAME: TWideStringField
      FieldName = 'FMATERIALNAME'
      Size = 510
    end
    object cdsDetailTracyFMERGEBILLSEQ: TFloatField
      FieldName = 'FMERGEBILLSEQ'
    end
    object cdsDetailTracyFPURCHASEPERSONID: TWideStringField
      FieldName = 'FPURCHASEPERSONID'
      Size = 44
    end
    object cdsDetailTracyFISQUANTITYUNCTRL: TFloatField
      FieldName = 'FISQUANTITYUNCTRL'
    end
    object cdsDetailTracyFPROCESSREQUIREMENT: TWideStringField
      FieldName = 'FPROCESSREQUIREMENT'
      Size = 510
    end
    object cdsDetailTracyFOPERATIONNO: TWideStringField
      FieldName = 'FOPERATIONNO'
      Size = 80
    end
    object cdsDetailTracyFPLANORDERNUMBER: TWideStringField
      FieldName = 'FPLANORDERNUMBER'
      Size = 80
    end
    object cdsDetailTracyFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 80
    end
    object cdsDetailTracyFMATERIALGROUPID: TWideStringField
      FieldName = 'FMATERIALGROUPID'
      Size = 44
    end
    object cdsDetailTracyFDOSINGTYPE: TFloatField
      FieldName = 'FDOSINGTYPE'
    end
    object cdsDetailTracyFBOMID: TWideStringField
      FieldName = 'FBOMID'
      Size = 44
    end
    object cdsDetailTracyFQUOTATIONTIMES: TFloatField
      FieldName = 'FQUOTATIONTIMES'
    end
    object cdsDetailTracyFTOTALREQQTY: TFloatField
      FieldName = 'FTOTALREQQTY'
    end
    object cdsDetailTracyFTOTALREQUQTY: TFloatField
      FieldName = 'FTOTALREQUQTY'
    end
    object cdsDetailTracyFUNTOTALREQQTY: TFloatField
      FieldName = 'FUNTOTALREQQTY'
    end
    object cdsDetailTracyFREQUESTQTY: TFloatField
      FieldName = 'FREQUESTQTY'
    end
    object cdsDetailTracyFNONUMMATERIALMODEL: TWideStringField
      FieldName = 'FNONUMMATERIALMODEL'
      Size = 510
    end
    object cdsDetailTracyFPURCHASEGROUPID: TWideStringField
      FieldName = 'FPURCHASEGROUPID'
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
    object cdsDetailTracyFPURCONTRACTID: TWideStringField
      FieldName = 'FPURCONTRACTID'
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
    object cdsDetailTracyCFDIAOPRICE: TFloatField
      FieldName = 'CFDIAOPRICE'
    end
    object cdsDetailTracyCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailTracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailTracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
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
    object cdsDetailTracyCFSupplierName: TWideStringField
      DisplayLabel = #20379#24212#21830
      FieldName = 'CFSupplierName'
      Size = 100
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
    object cdstracyFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdstracyFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
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
    object cdstracyFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdstracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdstracyFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdstracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdstracyFWAREHOSUEID: TWideStringField
      FieldName = 'FWAREHOSUEID'
      Size = 44
    end
    object cdstracyCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      OnChange = cdsDetailCFPACKIDChange
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
    object cdstracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdstracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
  end
  object cdswarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 177
    Top = 99
  end
  object cdsPerSon: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 473
    Top = 57
  end
end
