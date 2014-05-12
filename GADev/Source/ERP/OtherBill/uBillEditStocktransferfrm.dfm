inherited FM_BillEditStockTransFerForm: TFM_BillEditStockTransFerForm
  Left = 235
  Top = 143
  Caption = #24211#23384#35843#25320#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    inherited cxPageDetail: TcxPageControl
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          inherited dbgList2: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2cfdpamount
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2fTotaLQty
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = dbgList2FAmount
              end>
            object dbgList2cfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              Width = 120
            end
            object dbgList2cfMaterialName: TcxGridDBColumn
              Caption = #29289#26009#21517#31216
              DataBinding.FieldName = 'cfMaterialName'
              Width = 120
            end
            object dbgList2CFColorCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorCode'
              Width = 60
            end
            object dbgList2CFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Width = 60
            end
            object dbgList2CFCupName: TcxGridDBColumn
              DataBinding.FieldName = 'CFCupName'
              Width = 60
            end
            object dbgList2CFPACKName: TcxGridDBColumn
              DataBinding.FieldName = 'CFPACKName'
              Width = 60
            end
            object dbgList2CFPACKNUM: TcxGridDBColumn
              Caption = #31665#25968
              DataBinding.FieldName = 'CFPACKNUM'
            end
            object dbgList2cfdpprice: TcxGridDBColumn
              DataBinding.FieldName = 'cfdpprice'
            end
            object dbgList2cfdpamount: TcxGridDBColumn
              DataBinding.FieldName = 'cfdpamount'
            end
            object dbgList2Fprice: TcxGridDBColumn
              DataBinding.FieldName = 'Fprice'
            end
            object dbgList2CFInLocName: TcxGridDBColumn
              DataBinding.FieldName = 'CFInLocName'
              Width = 60
            end
            object dbgList2CFOutLocName: TcxGridDBColumn
              DataBinding.FieldName = 'CFOutLocName'
              Width = 60
            end
            object dbgList2fAmount_1: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_1'
              Width = 35
            end
            object dbgList2fAmount_2: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_2'
              Width = 35
            end
            object dbgList2fAmount_3: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_3'
              Width = 35
            end
            object dbgList2fAmount_4: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_4'
              Width = 35
            end
            object dbgList2fAmount_5: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_5'
              Width = 35
            end
            object dbgList2fAmount_6: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_6'
              Width = 35
            end
            object dbgList2fAmount_7: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_7'
              Width = 35
            end
            object dbgList2fAmount_8: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_8'
              Width = 35
            end
            object dbgList2fAmount_9: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_9'
              Width = 35
            end
            object dbgList2fAmount_10: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_10'
              Width = 35
            end
            object dbgList2fAmount_11: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_11'
              Width = 35
            end
            object dbgList2fAmount_12: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_12'
              Width = 35
            end
            object dbgList2fAmount_13: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_13'
              Width = 35
            end
            object dbgList2fAmount_14: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_14'
              Width = 35
            end
            object dbgList2fAmount_15: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_15'
              Width = 35
            end
            object dbgList2fAmount_16: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_16'
              Width = 35
            end
            object dbgList2fAmount_17: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_17'
              Width = 35
            end
            object dbgList2fAmount_18: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_18'
              Width = 35
            end
            object dbgList2fAmount_19: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_19'
              Width = 35
            end
            object dbgList2fAmount_20: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_20'
              Width = 35
            end
            object dbgList2fAmount_21: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_21'
              Width = 35
            end
            object dbgList2fAmount_22: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_22'
              Width = 35
            end
            object dbgList2fAmount_23: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_23'
              Width = 35
            end
            object dbgList2fAmount_24: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_24'
              Width = 35
            end
            object dbgList2fAmount_25: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_25'
              Width = 35
            end
            object dbgList2fAmount_26: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_26'
              Width = 35
            end
            object dbgList2fAmount_27: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_27'
              Width = 35
            end
            object dbgList2fAmount_28: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_28'
              Width = 35
            end
            object dbgList2fAmount_29: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_29'
              Width = 35
            end
            object dbgList2fAmount_30: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_30'
              Width = 35
            end
            object dbgList2fTotaLQty: TcxGridDBColumn
              DataBinding.FieldName = 'fTotaLQty'
            end
            object dbgList2FAmount: TcxGridDBColumn
              DataBinding.FieldName = 'FAmount'
            end
            object dbgList2CFNUitName: TcxGridDBColumn
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
      Top = 82
      Height = 46
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Height = 81
      ClientRectBottom = 81
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Height = 81
          inherited lbDescription: TLabel
            Left = 666
            Top = 58
          end
          inherited Label2: TLabel
            Left = -1
            Top = 6
          end
          inherited Label5: TLabel
            Left = 666
            Top = 6
          end
          inherited txDescription: TcxDBTextEdit
            Left = 730
            Top = 58
            DataBinding.DataField = 'FDESCRIPTION'
            Width = 263
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 732
            DataBinding.DataField = 'FBIZDATE'
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 81
            DataBinding.DataField = 'FNUMBER'
            Width = 230
          end
          inherited lblNumber: TcxLabel
            Left = -1
            Top = 31
            Caption = #35843#20986#24211#23384#32452#32455
          end
          inherited txtName: TcxDBTextEdit
            Left = 184
            Top = 31
            Width = 126
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 733
            Top = 31
            DataBinding.DataField = 'CFINPUTWAY'
          end
          inherited cxLabel1: TcxLabel
            Left = 666
            Top = 31
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 81
            Top = 31
            Width = 105
          end
          object cxLabel2: TcxLabel
            Left = 350
            Top = 31
            Caption = #35843#20986#20179#24211
          end
          object cxbtnOutWare: TcxButtonEdit
            Tag = 100
            Left = 411
            Top = 31
            Hint = #35843#20986#20179#24211
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            TabOrder = 9
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 89
          end
          object txtOutWareName: TcxDBTextEdit
            Left = 498
            Top = 31
            DataBinding.DataField = 'CFOutWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 10
            Width = 116
          end
          object cxLabel3: TcxLabel
            Left = 349
            Top = 58
            Caption = #35843#20837#20179#24211
          end
          object cxbtnInWare: TcxButtonEdit
            Tag = 100
            Left = 411
            Top = 58
            Hint = #35843#20837#20179#24211
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            TabOrder = 12
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 89
          end
          object cxedtInware: TcxDBTextEdit
            Left = 498
            Top = 58
            DataBinding.DataField = 'CFInWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 13
            Width = 116
          end
          object cxLabel4: TcxLabel
            Left = -1
            Top = 58
            Caption = #35843#20837#24211#23384#32452#32455
          end
          object cxbtnInOrg: TcxButtonEdit
            Tag = 100
            Left = 81
            Top = 58
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnChange = cxbtnNUmber1PropertiesChange
            TabOrder = 15
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 105
          end
          object txtInOrgName: TcxDBTextEdit
            Left = 184
            Top = 58
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 16
            Width = 125
          end
          object cxLabel5: TcxLabel
            Left = 352
            Top = 6
            Caption = #19994#21153#31867#22411
          end
          object cxdblookupBizType: TcxDBLookupComboBox
            Tag = 100
            Left = 411
            Top = 6
            DataBinding.DataField = 'FBIZTYPEID'
            DataBinding.DataSource = dsMaster
            Properties.KeyFieldNames = 'FNUMBER'
            Properties.ListColumns = <
              item
                FieldName = 'fName_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsInputWay
            Properties.OnCloseUp = cxdblookupInputwayPropertiesCloseUp
            TabOrder = 18
            Width = 203
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Left = 386
    Top = 137
  end
  inherited ImageListMainForm: TImageList
    Left = 624
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
    Left = 656
    Top = 10
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
    object cdsMasterFISSUECOMPANYORGUNITID: TWideStringField
      FieldName = 'FISSUECOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFRECEIPTCOMPANYORGUNITID: TWideStringField
      FieldName = 'FRECEIPTCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFISSUESTORAGEORGUNITID: TWideStringField
      FieldName = 'FISSUESTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFRECEIPTSTORAGEORGUNITID: TWideStringField
      FieldName = 'FRECEIPTSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFISSUEADMINORGUNITID: TWideStringField
      FieldName = 'FISSUEADMINORGUNITID'
      Size = 44
    end
    object cdsMasterFRECEIPTADMINORGUNITID: TWideStringField
      FieldName = 'FRECEIPTADMINORGUNITID'
      Size = 44
    end
    object cdsMasterFISSHIPMENT: TFloatField
      FieldName = 'FISSHIPMENT'
    end
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFISINITBILL: TFloatField
      FieldName = 'FISINITBILL'
    end
    object cdsMasterFISINTAX: TFloatField
      FieldName = 'FISINTAX'
    end
    object cdsMasterCFISBADSHOE: TFloatField
      FieldName = 'CFISBADSHOE'
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterCFISISSUE: TFloatField
      FieldName = 'CFISISSUE'
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 44
    end
    object cdsMasterRANGESTOCKINGID: TWideStringField
      FieldName = 'RANGESTOCKINGID'
      Size = 44
    end
    object cdsMasterCFRANGESTOCKINGID: TWideStringField
      FieldName = 'CFRANGESTOCKINGID'
      Size = 44
    end
    object cdsMasterCFINWAREHOUSEID: TWideStringField
      FieldName = 'CFINWAREHOUSEID'
      Size = 44
    end
    object cdsMasterCFOUTWAREHOUSEID: TWideStringField
      FieldName = 'CFOUTWAREHOUSEID'
      Size = 44
    end
    object cdsMasterCFISPROCDUCT: TIntegerField
      FieldName = 'CFISPROCDUCT'
    end
    object cdsMasterCFInWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFInWareName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFOutWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFOutWareName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFInOrgName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFInOrgName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFOutOrgName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFOutOrgName'
      Size = 80
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 616
    Top = 7
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
    object cdsDetailFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
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
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFISSUEWAREHOUSEID: TWideStringField
      FieldName = 'FISSUEWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFRECEIPTWAREHOUSEID: TWideStringField
      FieldName = 'FRECEIPTWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 160
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
    object cdsDetailFRECEIPTPLANDATE: TDateTimeField
      FieldName = 'FRECEIPTPLANDATE'
    end
    object cdsDetailFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFISSUEQTY: TFloatField
      FieldName = 'FISSUEQTY'
    end
    object cdsDetailFRECEIPTQTY: TFloatField
      FieldName = 'FRECEIPTQTY'
    end
    object cdsDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailFSALEINVOICEQTY: TFloatField
      FieldName = 'FSALEINVOICEQTY'
    end
    object cdsDetailFPURINVOICEQTY: TFloatField
      FieldName = 'FPURINVOICEQTY'
    end
    object cdsDetailFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailFISSUEBASEQTY: TFloatField
      FieldName = 'FISSUEBASEQTY'
    end
    object cdsDetailFRECEIPTBASEQTY: TFloatField
      FieldName = 'FRECEIPTBASEQTY'
    end
    object cdsDetailFSALEINVOICEBASEQTY: TFloatField
      FieldName = 'FSALEINVOICEBASEQTY'
    end
    object cdsDetailFPURINVOICEBASEQTY: TFloatField
      FieldName = 'FPURINVOICEBASEQTY'
    end
    object cdsDetailFUNISSUEBASEQTY: TFloatField
      FieldName = 'FUNISSUEBASEQTY'
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFPURINVOICEAMOUNT: TFloatField
      FieldName = 'FPURINVOICEAMOUNT'
    end
    object cdsDetailFSALEINVOICEAMOUNT: TFloatField
      FieldName = 'FSALEINVOICEAMOUNT'
    end
    object cdsDetailFTOTALACCOUNTPAYABLE: TFloatField
      FieldName = 'FTOTALACCOUNTPAYABLE'
    end
    object cdsDetailFTOTALACCOUNTRECEIVABLE: TFloatField
      FieldName = 'FTOTALACCOUNTRECEIVABLE'
    end
    object cdsDetailFISSUELOCATIONID: TWideStringField
      FieldName = 'FISSUELOCATIONID'
      Size = 44
    end
    object cdsDetailFRECEIPTLOCATIONID: TWideStringField
      FieldName = 'FRECEIPTLOCATIONID'
      Size = 44
    end
    object cdsDetailFISSUESTORAGEORGUNITID: TWideStringField
      FieldName = 'FISSUESTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailFISSUECOMPANYORGUNITID: TWideStringField
      FieldName = 'FISSUECOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFISSUESALEORGUNITID: TWideStringField
      FieldName = 'FISSUESALEORGUNITID'
      Size = 44
    end
    object cdsDetailFRECEIVESTORAGEORGUNITID: TWideStringField
      FieldName = 'FRECEIVESTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailFRECEIVECOMPANYORGUNITID: TWideStringField
      FieldName = 'FRECEIVECOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFSUPPLYRELATIONID: TWideStringField
      FieldName = 'FSUPPLYRELATIONID'
      Size = 44
    end
    object cdsDetailFSUPPLYSALEORGUNITID: TWideStringField
      FieldName = 'FSUPPLYSALEORGUNITID'
      Size = 44
    end
    object cdsDetailFREQUIRESALEORGUNITID: TWideStringField
      FieldName = 'FREQUIRESALEORGUNITID'
      Size = 44
    end
    object cdsDetailFTOTALISSUEQTY: TFloatField
      FieldName = 'FTOTALISSUEQTY'
    end
    object cdsDetailFBALANCECOSTPRICE: TFloatField
      FieldName = 'FBALANCECOSTPRICE'
    end
    object cdsDetailFBALANCECOSTRATE: TFloatField
      FieldName = 'FBALANCECOSTRATE'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailFDISCOUNTTYPE: TFloatField
      FieldName = 'FDISCOUNTTYPE'
    end
    object cdsDetailFDISCOUNTRATE: TFloatField
      FieldName = 'FDISCOUNTRATE'
    end
    object cdsDetailFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
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
    object cdsDetailFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetailFLOCALDISCOUNTAMOUNT: TFloatField
      FieldName = 'FLOCALDISCOUNTAMOUNT'
    end
    object cdsDetailFARASSOCIATEBASEQTY: TFloatField
      FieldName = 'FARASSOCIATEBASEQTY'
    end
    object cdsDetailFAPASSOCIATEBASEQTY: TFloatField
      FieldName = 'FAPASSOCIATEBASEQTY'
    end
    object cdsDetailFTOTALPLANDQTY: TFloatField
      FieldName = 'FTOTALPLANDQTY'
    end
    object cdsDetailFISSUEPLANDATE: TDateTimeField
      FieldName = 'FISSUEPLANDATE'
    end
    object cdsDetailFMANUWAREHOUSEID: TWideStringField
      FieldName = 'FMANUWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFQUARITYUNCTRL: TFloatField
      FieldName = 'FQUARITYUNCTRL'
    end
    object cdsDetailFQUARITYOVERRATE: TFloatField
      FieldName = 'FQUARITYOVERRATE'
    end
    object cdsDetailFQUARITYARRERATE: TFloatField
      FieldName = 'FQUARITYARRERATE'
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailFSTORETYPEID: TWideStringField
      FieldName = 'FSTORETYPEID'
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
    object cdsDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 200
    end
    object cdsDetailCFSTOPNUM: TFloatField
      FieldName = 'CFSTOPNUM'
    end
  end
  inherited qryStylePack: TADOQuery
    Left = 882
    Top = 264
  end
  inherited qryStyleColor: TADOQuery
    Left = 808
    Top = 264
  end
  inherited dsStyleColor: TDataSource
    Left = 808
    Top = 320
  end
  inherited dsStylePack: TDataSource
    Left = 881
    Top = 320
  end
  inherited dsStyleSize: TDataSource
    Left = 958
    Top = 320
  end
  inherited qryStyleSize: TADOQuery
    Left = 956
    Top = 264
  end
  inherited cdsDetailAmount: TClientDataSet
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
    object cdsDetailAmountFprice: TFloatField
      DisplayLabel = #26631#20934#20215
      FieldName = 'Fprice'
    end
    object cdsDetailAmountCFPACKName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPACKName'
      Size = 80
    end
    object cdsDetailAmountCFPACKNUM: TIntegerField
      FieldName = 'CFPACKNUM'
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
    object cdsDetailAmountCFNUitName: TStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFNUitName'
      Size = 60
    end
    object cdsDetailAmountCFInLocName: TWideStringField
      DisplayLabel = #35843#20837#24211#20301
      FieldName = 'CFInLocName'
      Size = 60
    end
    object cdsDetailAmountCFOutLocName: TStringField
      DisplayLabel = #35843#20986#24211#20301
      FieldName = 'CFOutLocName'
      Size = 60
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
    object cdsDetailAmountFAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FAmount'
      Calculated = True
    end
    object cdsDetailAmountCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailAmountFISSUELOCATIONID: TWideStringField
      FieldName = 'FISSUELOCATIONID'
      Size = 44
    end
    object cdsDetailAmountFRECEIPTLOCATIONID: TWideStringField
      FieldName = 'FRECEIPTLOCATIONID'
      Size = 44
    end
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 728
    Top = 80
  end
  inherited dsHeadSel: TDataSource
    Left = 169
    Top = 97
  end
  inherited cdsHeadSel: TClientDataSet
    Left = 209
    Top = 97
  end
  object cdsBizType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 545
    Top = 46
  end
  object dsBizType: TDataSource
    DataSet = cdsBizType
    Left = 449
    Top = 54
  end
end
