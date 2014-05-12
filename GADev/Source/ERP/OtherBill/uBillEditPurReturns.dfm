inherited FM_BillEditPurRetuens: TFM_BillEditPurRetuens
  Top = 121
  Caption = #37319#36141#36864#36135#30003#35831#21333#32534#36753
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
                Column = dbgList2fTotaLQty
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2Ftax
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2fAmount
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2FTAXAMOUNT
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
              Caption = #33394#21495
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
              Width = 60
            end
            object dbgList2FPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FPRICE'
              Options.Editing = False
              Width = 60
            end
            object dbgList2CFDISCOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'CFDISCOUNT'
              Width = 60
            end
            object dbgList2CFACTUALPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFACTUALPRICE'
              Width = 60
            end
            object dbgList2FTAXRATE: TcxGridDBColumn
              Caption = #31246#29575
              DataBinding.FieldName = 'FTAXRATE'
            end
            object dbgList2CFACTUALTAXPRICE: TcxGridDBColumn
              Caption = #25240#21518#21547#31246#20215
              DataBinding.FieldName = 'CFACTUALTAXPRICE'
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
            end
            object dbgList2Ftax: TcxGridDBColumn
              Caption = #31246#39069
              DataBinding.FieldName = 'FTAX'
            end
            object dbgList2fAmount: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount'
              Options.Editing = False
            end
            object dbgList2FTAXAMOUNT: TcxGridDBColumn
              Caption = #20215#31246#21512#35745
              DataBinding.FieldName = 'FTAXAMOUNT'
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
              Width = 80
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
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTAX
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTAXAMOUNT
              end>
            object cxgridDetialFSEQ: TcxGridDBColumn
              Caption = #24207#21495
              DataBinding.FieldName = 'FSEQ'
              Options.Editing = False
              Width = 50
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
              Caption = #33394#21495
              DataBinding.FieldName = 'CFColorCode'
              Width = 50
            end
            object cxgridDetialCFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFSizeCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeCode'
              Width = 50
            end
            object cxgridDetialCFSizeName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeName'
              Options.Editing = False
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
              Width = 60
            end
            object cxgridDetialCFACTUALPRICE: TcxGridDBColumn
              Caption = #25240#21518#21333#20215
              DataBinding.FieldName = 'CFACTUALPRICE'
              Width = 60
            end
            object cxgridDetialFTAXRATE: TcxGridDBColumn
              Caption = #31246#29575
              DataBinding.FieldName = 'FTAXRATE'
              Width = 60
            end
            object cxgridDetialCFACTUALTAXPRICE: TcxGridDBColumn
              Caption = #25240#21518#21547#31246#20215
              DataBinding.FieldName = 'CFACTUALTAXPRICE'
              Width = 60
            end
            object cxgridDetialFAMOUNT: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'FAMOUNT'
              Width = 60
            end
            object cxgridDetialFTAX: TcxGridDBColumn
              Caption = #31246#39069
              DataBinding.FieldName = 'FTAX'
              Width = 60
            end
            object cxgridDetialFTAXAMOUNT: TcxGridDBColumn
              Caption = #20215#31246#21512#35745
              DataBinding.FieldName = 'FTAXAMOUNT'
              Width = 60
            end
            object cxgridDetialCFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Options.Editing = False
              Width = 60
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Options.Editing = False
              Width = 70
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Options.Editing = False
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
      Top = 96
      Height = 32
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Height = 95
      ClientRectBottom = 95
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Height = 95
          inherited lbDescription: TLabel
            Left = 256
            Top = 60
          end
          inherited Label2: TLabel
            Left = 3
            Top = 6
          end
          inherited Label5: TLabel
            Left = 671
            Top = 6
          end
          inherited txDescription: TcxDBTextEdit
            Left = 322
            Top = 56
            DataBinding.DataField = 'FDESCRIPTION'
            Width = 284
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 737
            Hint = #19994#21153#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 2
            Width = 194
          end
          inherited cxFNumber: TcxDBMaskEdit
            DataBinding.DataField = 'FNUMBER'
          end
          inherited lblNumber: TcxLabel
            Caption = #20379#24212#21830
          end
          inherited txtName: TcxDBTextEdit
            Left = 423
            Top = 4
            DataBinding.DataField = 'CFSupplierName'
            TabOrder = 7
            Width = 183
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 738
            Top = 29
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 5
            Width = 106
          end
          inherited cxLabel1: TcxLabel
            Left = 671
            Top = 29
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Top = 4
            Hint = #20379#24212#21830
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 1
            Width = 104
          end
          object RGReturnType: TcxRadioGroup
            Left = 3
            Top = 50
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = #23395#20869#36864#36135
              end
              item
                Caption = #23395#22806#36864#36135
              end>
            ItemIndex = 1
            TabOrder = 10
            Transparent = True
            Height = 39
            Width = 246
          end
          object cxcmblookupType: TcxDBLookupComboBox
            Left = 74
            Top = 29
            Hint = #36864#36135#31867#22411
            DataBinding.DataField = 'cfreturntypeid'
            DataBinding.DataSource = dsMaster
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'fname_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsRetuenType
            TabOrder = 3
            Width = 175
          end
          object cxLabel3: TcxLabel
            Left = 3
            Top = 29
            Caption = #36864#36135#31867#22411
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 256
            Top = 33
            Caption = #20215#26684#31867#22411
            Transparent = True
          end
          object cxbtnedtPriceType: TcxDBLookupComboBox
            Left = 321
            Top = 29
            DataBinding.DataField = 'CFPRICETYPEID'
            DataBinding.DataSource = dsMaster
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'fName_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dspriceType
            TabOrder = 4
            Width = 285
          end
          object cxLabel5: TcxLabel
            Left = 671
            Top = 60
            Caption = #20179'    '#24211
            Transparent = True
          end
          object cxbtnSendWareNum: TcxButtonEdit
            Left = 736
            Top = 56
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnSendWareNumPropertiesButtonClick
            Properties.OnChange = cxbtnSendWareNumPropertiesChange
            TabOrder = 14
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 97
          end
          object cxbtnSendWareName: TcxDBTextEdit
            Left = 831
            Top = 56
            DataBinding.DataField = 'CFWAREName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 15
            Width = 100
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 848
            Top = 29
            AutoSize = False
            Caption = #21547#31246'  '
            DataBinding.DataField = 'FISINTAX'
            DataBinding.DataSource = dsMaster
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 16
            Height = 21
            Width = 82
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Top = 78
  end
  inherited ImageListMainForm: TImageList
    Left = 616
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
  inherited actlst1: TActionList
    Left = 304
    Top = 272
  end
  inherited cdsMaster: TClientDataSet
    object cdsMasterfCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'fCreatorName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 0
      Calculated = True
    end
    object cdsMasterFAuditorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFSupplierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSupplierName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFWAREHOUSEID: TWideStringField
      FieldName = 'CFWAREHOUSEID'
      OnChange = cdsMasterCFWAREHOUSEIDChange
      Size = 44
    end
    object cdsMasterCFWAREName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFWAREName'
      Size = 80
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
    object cdsMasterFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
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
    object cdsMasterFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
      Size = 44
    end
    object cdsMasterFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
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
    object cdsMasterFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
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
    object cdsMasterFLOCALTOTALTAX: TFloatField
      FieldName = 'FLOCALTOTALTAX'
    end
    object cdsMasterFLOCALTOTALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTOTALTAXAMOUNT'
    end
    object cdsMasterFISINTAX: TFloatField
      FieldName = 'FISINTAX'
    end
    object cdsMasterFISCENTRALBALANCE: TFloatField
      FieldName = 'FISCENTRALBALANCE'
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterCFPRICETYPEID: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterCFSUPPLIERSTORAGEID: TWideStringField
      FieldName = 'CFSUPPLIERSTORAGEID'
      Size = 44
    end
    object cdsMasterCFISTRANSFERORDER: TFloatField
      FieldName = 'CFISTRANSFERORDER'
    end
    object cdsMasterCFISCOMPLEATED: TFloatField
      FieldName = 'CFISCOMPLEATED'
    end
    object cdsMasterCFORDERINGDEFID: TWideStringField
      FieldName = 'CFORDERINGDEFID'
      Size = 44
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 44
    end
    object cdsMasterCFSUPPLIERSALEORGID: TWideStringField
      FieldName = 'CFSUPPLIERSALEORGID'
      Size = 44
    end
    object cdsMasterCFRANGEID: TWideStringField
      FieldName = 'CFRANGEID'
      Size = 44
    end
    object cdsMasterCFINSEASONBOUNDS: TFloatField
      FieldName = 'CFINSEASONBOUNDS'
    end
    object cdsMasterCFINSEASONBOUND: TFloatField
      FieldName = 'CFINSEASONBOUND'
    end
    object cdsMasterCFRETURNTYPEID: TWideStringField
      FieldName = 'CFRETURNTYPEID'
      Size = 44
    end
    object cdsMasterCFISPROCDUCT: TIntegerField
      FieldName = 'CFISPROCDUCT'
    end
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
    object cdsDetailFPURORDERNUMBER: TWideStringField
      FieldName = 'FPURORDERNUMBER'
      Size = 160
    end
    object cdsDetailFPURORDERENTRYSEQ: TFloatField
      FieldName = 'FPURORDERENTRYSEQ'
    end
    object cdsDetailFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 160
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
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
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
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
    object cdsDetailFRETURNSDATE: TDateTimeField
      FieldName = 'FRETURNSDATE'
    end
    object cdsDetailFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetailFUNRETURNEDQTY: TFloatField
      FieldName = 'FUNRETURNEDQTY'
    end
    object cdsDetailFINVOICEDQTY: TFloatField
      FieldName = 'FINVOICEDQTY'
    end
    object cdsDetailFUNINVOICEDQTY: TFloatField
      FieldName = 'FUNINVOICEDQTY'
    end
    object cdsDetailFINVOICEDAMOUNT: TFloatField
      FieldName = 'FINVOICEDAMOUNT'
    end
    object cdsDetailFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
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
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFRETURNEDQTY: TFloatField
      FieldName = 'FRETURNEDQTY'
    end
    object cdsDetailFRETURNSREASONID: TWideStringField
      FieldName = 'FRETURNSREASONID'
      Size = 44
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFINVOICEDBASEQTY: TFloatField
      FieldName = 'FINVOICEDBASEQTY'
    end
    object cdsDetailFUNINVOICEDBASEQTY: TFloatField
      FieldName = 'FUNINVOICEDBASEQTY'
    end
    object cdsDetailFUNRETURNEDBASEQTY: TFloatField
      FieldName = 'FUNRETURNEDBASEQTY'
    end
    object cdsDetailFRETURNEDBASEQTY: TFloatField
      FieldName = 'FRETURNEDBASEQTY'
    end
    object cdsDetailFPURORDERID: TWideStringField
      FieldName = 'FPURORDERID'
      Size = 44
    end
    object cdsDetailFPURORDERENTRYID: TWideStringField
      FieldName = 'FPURORDERENTRYID'
      Size = 44
    end
    object cdsDetailFCLOSEDDATE: TDateTimeField
      FieldName = 'FCLOSEDDATE'
    end
    object cdsDetailFTOTALRETURNAMT: TFloatField
      FieldName = 'FTOTALRETURNAMT'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFNEWRETURNSREASON: TWideStringField
      FieldName = 'FNEWRETURNSREASON'
      Size = 160
    end
    object cdsDetailFTOTALINVOICEDAMT: TFloatField
      FieldName = 'FTOTALINVOICEDAMT'
    end
    object cdsDetailFCOREBILLTYPEID: TWideStringField
      FieldName = 'FCOREBILLTYPEID'
      Size = 44
    end
    object cdsDetailFCOREBILLID: TWideStringField
      FieldName = 'FCOREBILLID'
      Size = 44
    end
    object cdsDetailFCOREBILLNUMBER: TWideStringField
      FieldName = 'FCOREBILLNUMBER'
      Size = 160
    end
    object cdsDetailFCOREBILLENTRYID: TWideStringField
      FieldName = 'FCOREBILLENTRYID'
      Size = 44
    end
    object cdsDetailFCOREBILLENTRYSEQ: TFloatField
      FieldName = 'FCOREBILLENTRYSEQ'
    end
    object cdsDetailFISBETWEENCOMPANYREC: TFloatField
      FieldName = 'FISBETWEENCOMPANYREC'
    end
    object cdsDetailFSUPPLIERLOTNO: TWideStringField
      FieldName = 'FSUPPLIERLOTNO'
      Size = 250
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailFPURCONTRACTID: TWideStringField
      FieldName = 'FPURCONTRACTID'
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
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailCFSALEPRICE: TFloatField
      FieldName = 'CFSALEPRICE'
    end
    object cdsDetailCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailCFACTUALPRICE: TFloatField
      FieldName = 'CFACTUALPRICE'
    end
    object cdsDetailCFDISCOUNTAMOUNT: TFloatField
      FieldName = 'CFDISCOUNTAMOUNT'
    end
    object cdsDetailCFACTUALTAXPRICE: TFloatField
      FieldName = 'CFACTUALTAXPRICE'
    end
    object cdsDetailCFASSISTNUM: TWideStringField
      FieldName = 'CFASSISTNUM'
      Size = 200
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    object cdsDetailAmountFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailAmountcfMaterialNumber: TStringField
      DisplayLabel = #21830#21697#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailAmountcfMaterialName: TStringField
      DisplayLabel = #21830#21697#21517#31216
      FieldName = 'cfMaterialName'
      Size = 200
    end
    object cdsDetailAmountCFColorCode: TStringField
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
    object cdsDetailAmountCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
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
    object cdsDetailAmountFPRICE: TFloatField
      DisplayLabel = #21333#20215
      FieldName = 'FPRICE'
    end
    object cdsDetailAmountCFDISCOUNT: TFloatField
      DisplayLabel = #25240#25187
      FieldName = 'CFDISCOUNT'
      OnChange = cdsDetailAmountCFDISCOUNTChange
    end
    object cdsDetailAmountCFACTUALPRICE: TFloatField
      DisplayLabel = #25240#21518#21333#20215
      FieldName = 'CFACTUALPRICE'
      OnChange = cdsDetailAmountCFACTUALPRICEChange
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
    object cdsDetailAmountCfbrandid: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsDetailAmountCFPACKID: TStringField
      FieldName = 'CFPACKID'
      OnChange = cdsDetailAmountCFPACKIDChange
      Size = 44
    end
    object cdsDetailAmountcfattributeid: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailAmountFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdsDetailAmountFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
      OnChange = cdsDetailAmountFTAXRATEChange
    end
    object cdsDetailAmountFTAX: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FTAX'
      Calculated = True
    end
    object cdsDetailAmountFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailAmountCFACTUALTAXPRICE: TFloatField
      FieldName = 'CFACTUALTAXPRICE'
      OnChange = cdsDetailAmountCFACTUALTAXPRICEChange
    end
    object cdsDetailAmountFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
  end
  inherited SaveDg: TSaveDialog
    Top = 250
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 704
    Top = 64
  end
  inherited cdsSizeGroupTitle: TClientDataSet
    Top = 408
  end
  inherited dsHeadSel: TDataSource
    Top = 81
  end
  inherited cdsHeadSel: TClientDataSet
    Top = 81
  end
  inherited dsInputWay: TDataSource
    DataSet = CliDM.cdsInputWay
    Left = 761
    Top = 113
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
    object cdsDetailTracyFPURORDERNUMBER: TWideStringField
      FieldName = 'FPURORDERNUMBER'
      Size = 160
    end
    object cdsDetailTracyFPURORDERENTRYSEQ: TFloatField
      FieldName = 'FPURORDERENTRYSEQ'
    end
    object cdsDetailTracyFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 160
    end
    object cdsDetailTracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailTracyFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailTracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailTracyFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailTracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailTracyFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailTracyFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailTracyFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailTracyFRETURNSDATE: TDateTimeField
      FieldName = 'FRETURNSDATE'
    end
    object cdsDetailTracyFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetailTracyFUNRETURNEDQTY: TFloatField
      FieldName = 'FUNRETURNEDQTY'
    end
    object cdsDetailTracyFINVOICEDQTY: TFloatField
      FieldName = 'FINVOICEDQTY'
    end
    object cdsDetailTracyFUNINVOICEDQTY: TFloatField
      FieldName = 'FUNINVOICEDQTY'
    end
    object cdsDetailTracyFINVOICEDAMOUNT: TFloatField
      FieldName = 'FINVOICEDAMOUNT'
    end
    object cdsDetailTracyFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
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
    object cdsDetailTracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailTracyFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFRETURNEDQTY: TFloatField
      FieldName = 'FRETURNEDQTY'
    end
    object cdsDetailTracyFRETURNSREASONID: TWideStringField
      FieldName = 'FRETURNSREASONID'
      Size = 44
    end
    object cdsDetailTracyFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailTracyFINVOICEDBASEQTY: TFloatField
      FieldName = 'FINVOICEDBASEQTY'
    end
    object cdsDetailTracyFUNINVOICEDBASEQTY: TFloatField
      FieldName = 'FUNINVOICEDBASEQTY'
    end
    object cdsDetailTracyFUNRETURNEDBASEQTY: TFloatField
      FieldName = 'FUNRETURNEDBASEQTY'
    end
    object cdsDetailTracyFRETURNEDBASEQTY: TFloatField
      FieldName = 'FRETURNEDBASEQTY'
    end
    object cdsDetailTracyFPURORDERID: TWideStringField
      FieldName = 'FPURORDERID'
      Size = 44
    end
    object cdsDetailTracyFPURORDERENTRYID: TWideStringField
      FieldName = 'FPURORDERENTRYID'
      Size = 44
    end
    object cdsDetailTracyFCLOSEDDATE: TDateTimeField
      FieldName = 'FCLOSEDDATE'
    end
    object cdsDetailTracyFTOTALRETURNAMT: TFloatField
      FieldName = 'FTOTALRETURNAMT'
    end
    object cdsDetailTracyFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailTracyFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailTracyFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailTracyFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailTracyFNEWRETURNSREASON: TWideStringField
      FieldName = 'FNEWRETURNSREASON'
      Size = 160
    end
    object cdsDetailTracyFTOTALINVOICEDAMT: TFloatField
      FieldName = 'FTOTALINVOICEDAMT'
    end
    object cdsDetailTracyFCOREBILLTYPEID: TWideStringField
      FieldName = 'FCOREBILLTYPEID'
      Size = 44
    end
    object cdsDetailTracyFCOREBILLID: TWideStringField
      FieldName = 'FCOREBILLID'
      Size = 44
    end
    object cdsDetailTracyFCOREBILLNUMBER: TWideStringField
      FieldName = 'FCOREBILLNUMBER'
      Size = 160
    end
    object cdsDetailTracyFCOREBILLENTRYID: TWideStringField
      FieldName = 'FCOREBILLENTRYID'
      Size = 44
    end
    object cdsDetailTracyFCOREBILLENTRYSEQ: TFloatField
      FieldName = 'FCOREBILLENTRYSEQ'
    end
    object cdsDetailTracyFISBETWEENCOMPANYREC: TFloatField
      FieldName = 'FISBETWEENCOMPANYREC'
    end
    object cdsDetailTracyFSUPPLIERLOTNO: TWideStringField
      FieldName = 'FSUPPLIERLOTNO'
      Size = 250
    end
    object cdsDetailTracyFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailTracyFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
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
    object cdsDetailTracyCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailTracyCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailTracyCFSALEPRICE: TFloatField
      FieldName = 'CFSALEPRICE'
    end
    object cdsDetailTracyCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailTracyCFACTUALPRICE: TFloatField
      FieldName = 'CFACTUALPRICE'
    end
    object cdsDetailTracyCFDISCOUNTAMOUNT: TFloatField
      FieldName = 'CFDISCOUNTAMOUNT'
    end
    object cdsDetailTracyCFACTUALTAXPRICE: TFloatField
      FieldName = 'CFACTUALTAXPRICE'
    end
    object cdsDetailTracycfMaterialNumber: TStringField
      DisplayLabel = #21830#21697#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailTracycfMaterialName: TStringField
      DisplayLabel = #21830#21697#21517#31216
      FieldKind = fkCalculated
      FieldName = 'cfMaterialName'
      Size = 200
      Calculated = True
    end
    object cdsDetailTracyCFColorCode: TStringField
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsDetailTracyCFColorName: TStringField
      DisplayLabel = #39068#33394
      FieldKind = fkCalculated
      FieldName = 'CFColorName'
      Size = 200
      Calculated = True
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
    object cdsDetailTracyCFNUitName: TWideStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFNUitName'
      Size = 10
    end
    object cdsDetailTracyCfbrandid: TWideStringField
      FieldName = 'Cfbrandid'
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
    object cdsDetailTracycfattributeid: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailTracyCFASSISTNUM: TWideStringField
      FieldName = 'CFASSISTNUM'
      Size = 200
    end
    object cdsDetailTracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  inherited dsDetailTracy: TDataSource
    Left = 240
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
    object cdstracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdstracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdstracyFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdstracyFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdstracyFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdstracyFQTY: TFloatField
      FieldName = 'FQTY'
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
    object cdstracyCFACTUALPRICE: TFloatField
      FieldName = 'CFACTUALPRICE'
    end
    object cdstracyCFACTUALTAXPRICE: TFloatField
      FieldName = 'CFACTUALTAXPRICE'
    end
    object cdstracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  object cdsSupplier: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 457
    Top = 41
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
  object cdsReturnType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 105
    Top = 105
  end
  object dsRetuenType: TDataSource
    DataSet = cdsReturnType
    Left = 153
    Top = 105
  end
  object dspriceType: TDataSource
    DataSet = CliDM.cdsPriceType
    Left = 553
    Top = 59
  end
end
