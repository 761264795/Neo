inherited FM_BillEditChanelTrans: TFM_BillEditChanelTrans
  Left = 172
  Top = 80
  Caption = #28192#36947#35843#25320#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    inherited cxPageDetail: TcxPageControl
      OnChange = cxPageDetailChange
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          inherited dbgList2: TcxGridDBTableView
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
              Width = 60
            end
            object dbgList2CFPACKNUM: TcxGridDBColumn
              DataBinding.FieldName = 'CFPACKNUM'
              Width = 40
            end
            object dbgList2CFDPPRICE: TcxGridDBColumn
              Caption = #21514#29260#20215
              DataBinding.FieldName = 'CFDPPRICE'
              Options.Editing = False
              Width = 60
            end
            object dbgList2CFPRICE: TcxGridDBColumn
              Caption = #26631#20934#20215
              DataBinding.FieldName = 'CFPRICE'
              Options.Editing = False
              Width = 60
            end
            object dbgList2CFRETURNDISCOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'CFRETURNDISCOUNT'
              Width = 60
            end
            object dbgList2CFRETURNTAXRATE: TcxGridDBColumn
              DataBinding.FieldName = 'CFRETURNTAXRATE'
              Width = 60
            end
            object dbgList2CFRETURNACTUALPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFRETURNACTUALPRICE'
              Width = 60
            end
            object dbgList2CFSUPPLYDISCOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'CFSUPPLYDISCOUNT'
              Width = 60
            end
            object dbgList2CFSUPPLYTAXRATE: TcxGridDBColumn
              DataBinding.FieldName = 'CFSUPPLYTAXRATE'
              Width = 60
            end
            object dbgList2CFSUPPLYACTUALPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFSUPPLYACTUALPRICE'
              Width = 60
            end
            object dbgList2CFISSUELocationName: TcxGridDBColumn
              Caption = #20013#36716#20179#20301
              DataBinding.FieldName = 'CFISSUELocationName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFISSUELocationNamePropertiesButtonClick
              Width = 60
            end
            object dbgList2fAmount_1: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_1'
              Width = 30
            end
            object dbgList2fAmount_2: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_2'
              Width = 30
            end
            object dbgList2fAmount_3: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_3'
              Width = 30
            end
            object dbgList2fAmount_4: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_4'
              Width = 30
            end
            object dbgList2fAmount_5: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_5'
              Width = 30
            end
            object dbgList2fAmount_6: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_6'
              Width = 30
            end
            object dbgList2fAmount_7: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_7'
              Width = 30
            end
            object dbgList2fAmount_8: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_8'
              Width = 30
            end
            object dbgList2fAmount_9: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_9'
              Width = 30
            end
            object dbgList2fAmount_10: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_10'
              Width = 30
            end
            object dbgList2fAmount_11: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_11'
              Width = 30
            end
            object dbgList2fAmount_12: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_12'
              Width = 30
            end
            object dbgList2fAmount_13: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_13'
              Width = 30
            end
            object dbgList2fAmount_14: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_14'
              Width = 30
            end
            object dbgList2fAmount_15: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_15'
              Width = 30
            end
            object dbgList2fAmount_16: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_16'
              Width = 30
            end
            object dbgList2fAmount_17: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_17'
              Width = 30
            end
            object dbgList2fAmount_18: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_18'
              Width = 30
            end
            object dbgList2fAmount_19: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_19'
              Width = 30
            end
            object dbgList2fAmount_20: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_20'
              Width = 30
            end
            object dbgList2fAmount_21: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_21'
              Width = 30
            end
            object dbgList2fAmount_22: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_22'
              Width = 30
            end
            object dbgList2fAmount_23: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_23'
              Width = 30
            end
            object dbgList2fAmount_24: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_24'
              Width = 30
            end
            object dbgList2fAmount_25: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_25'
              Width = 30
            end
            object dbgList2fAmount_26: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_26'
              Width = 30
            end
            object dbgList2fAmount_27: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_27'
              Width = 30
            end
            object dbgList2fAmount_28: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_28'
              Width = 30
            end
            object dbgList2fAmount_29: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_29'
              Width = 30
            end
            object dbgList2fAmount_30: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_30'
              Width = 30
            end
            object dbgList2fTotaLQty: TcxGridDBColumn
              DataBinding.FieldName = 'fTotaLQty'
              Options.Editing = False
              Width = 60
            end
            object dbgList2CFRETURNAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'CFRETURNAMOUNT'
              Options.Editing = False
              Width = 60
            end
            object dbgList2CFSUPPLYAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'CFSUPPLYAMOUNT'
              Options.Editing = False
              Width = 60
            end
            object dbgList2cfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Options.Editing = False
              Width = 61
            end
            object dbgList2CFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Options.Editing = False
              Width = 80
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
              Width = 60
            end
            object cxgridDetialCFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Width = 60
            end
            object cxgridDetialCFSIZECODE: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeCode'
              Width = 50
            end
            object cxgridDetialCFSIZENAME: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeName'
              Width = 48
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
            object cxgridDetialCFQTY: TcxGridDBColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'CFQTY'
              Width = 50
            end
            object cxgridDetialCFDPPRICE: TcxGridDBColumn
              Caption = #21514#29260#20215
              DataBinding.FieldName = 'CFDPPRICE'
              Options.Editing = False
            end
            object cxgridDetialCFPRICE: TcxGridDBColumn
              Caption = #26631#20934#20215
              DataBinding.FieldName = 'CFPRICE'
              Width = 60
            end
            object cxgridDetialCFRETURNDISCOUNT: TcxGridDBColumn
              Caption = #36864#36135#25240#25187
              DataBinding.FieldName = 'CFRETURNDISCOUNT'
            end
            object cxgridDetialCFRETURNACTUALPRICE: TcxGridDBColumn
              Caption = #36864#36135#21333#20215
              DataBinding.FieldName = 'CFRETURNACTUALPRICE'
              Width = 60
            end
            object cxgridDetialCFRETURNAMOUNT: TcxGridDBColumn
              Caption = #36864#36135#37329#39069
              DataBinding.FieldName = 'CFRETURNAMOUNT'
            end
            object cxgridDetialCFRETURNTAXRATE: TcxGridDBColumn
              Caption = #36864#36135#31246#29575
              DataBinding.FieldName = 'CFRETURNTAXRATE'
            end
            object cxgridDetialCFSUPPLYDISCOUNT: TcxGridDBColumn
              Caption = #21457#36135#25240#25187
              DataBinding.FieldName = 'CFSUPPLYDISCOUNT'
            end
            object cxgridDetialCFSUPPLYACTUALPRICE: TcxGridDBColumn
              Caption = #21457#36135#21333#20215
              DataBinding.FieldName = 'CFSUPPLYACTUALPRICE'
            end
            object cxgridDetialCFSUPPLYTAXRATE: TcxGridDBColumn
              Caption = #21457#36135#31246#29575
              DataBinding.FieldName = 'CFSUPPLYTAXRATE'
            end
            object cxgridDetialCFSUPPLYAMOUNT: TcxGridDBColumn
              Caption = #21457#36135#37329#39069
              DataBinding.FieldName = 'CFSUPPLYAMOUNT'
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Width = 70
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Width = 70
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
    inherited cxFAUDITORdate: TcxDBMaskEdit
      DataBinding.DataField = 'CFAUDITDATE'
    end
  end
  inherited pnl_top: TPanel
    inherited pnlCodeSM: TPanel
      Top = 105
      Height = 23
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Height = 104
      ClientRectBottom = 104
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Height = 104
          inherited lbDescription: TLabel
            Left = 3
            Top = 83
          end
          inherited Label2: TLabel
            Left = 3
            Top = 6
          end
          inherited txDescription: TcxDBTextEdit
            Left = 66
            Top = 79
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 8
            Width = 548
          end
          inherited cxBIZDATE: TcxDBDateEdit
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 2
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 66
            DataBinding.DataField = 'FNUMBER'
            Width = 206
          end
          inherited lblNumber: TcxLabel
            Left = 327
            Caption = #20379#24212#23458#25143
          end
          inherited txtName: TcxDBTextEdit
            Left = 493
            Top = 4
            DataBinding.DataField = 'CFSupplyCust'
            TabOrder = 9
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Top = 29
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 5
          end
          inherited cxLabel1: TcxLabel
            Top = 32
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 390
            Top = 4
            Hint = #20379#24212#23458#25143
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 1
            Width = 106
          end
          object cxLabel3: TcxLabel
            Left = 327
            Top = 33
            Caption = #20215#26684#31867#22411
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 3
            Top = 29
            Caption = #35746#21333#31867#22411
          end
          object cxcmbOrderType: TcxDBLookupComboBox
            Tag = 100
            Left = 66
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
            TabOrder = 3
            Width = 206
          end
          object cxcmbpriceType: TcxDBLookupComboBox
            Tag = 100
            Left = 390
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
            TabOrder = 4
            Width = 224
          end
          object cxLabel6: TcxLabel
            Left = 3
            Top = 56
            Caption = #38656#27714#26426#26500
            Transparent = True
          end
          object cxbtnReceivOrgNum: TcxButtonEdit
            Tag = 100
            Left = 66
            Top = 54
            Hint = #38656#27714#26426#26500
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnReceivOrgNumPropertiesButtonClick
            Properties.OnChange = cxbtnReceivOrgNumPropertiesChange
            TabOrder = 6
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 90
          end
          object CFReceivOrgName: TcxDBTextEdit
            Left = 154
            Top = 54
            DataBinding.DataField = 'CFReceivOrgName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 15
            Width = 118
          end
          object cxLabel4: TcxLabel
            Left = 327
            Top = 56
            Caption = #38656#27714#23458#25143
          end
          object cxbtnDemandCust: TcxButtonEdit
            Tag = 100
            Left = 390
            Top = 54
            Hint = #38656#27714#23458#25143
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnDemandCustPropertiesButtonClick
            Properties.OnChange = cxbtnDemandCustPropertiesChange
            TabOrder = 7
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 106
          end
          object cxedtDemandCust: TcxDBTextEdit
            Left = 494
            Top = 54
            DataBinding.DataField = 'CFDemandCust'
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 17
            Width = 120
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 696
            Top = 80
            AutoSize = False
            Caption = #21547#31246'  '
            DataBinding.DataField = 'CFISINTAX'
            DataBinding.DataSource = dsMaster
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 18
            Height = 21
            Width = 82
          end
          object cxLabel5: TcxLabel
            Left = 696
            Top = 56
            Caption = #20013#36716#20179#24211
          end
          object cxbtnEditWare: TcxButtonEdit
            Left = 758
            Top = 54
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnEditWarePropertiesButtonClick
            Properties.OnChange = cxbtnEditWarePropertiesChange
            TabOrder = 20
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 106
          end
          object cxEditWareName: TcxDBTextEdit
            Left = 861
            Top = 54
            DataBinding.DataField = 'CFWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 21
            Width = 132
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Left = 407
    Top = 78
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
    Left = 592
    Top = 42
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
      Size = 160
    end
    object cdsMasterFSOURCEFUNCTION: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 160
    end
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMasterFFIVOUCHERED: TFloatField
      FieldName = 'FFIVOUCHERED'
    end
    object cdsMasterCFBILLTYPEID: TWideStringField
      FieldName = 'CFBILLTYPEID'
      Size = 44
    end
    object cdsMasterCFBASESTATUS: TFloatField
      FieldName = 'CFBASESTATUS'
    end
    object cdsMasterCFSALEORGUNITID: TWideStringField
      FieldName = 'CFSALEORGUNITID'
      Size = 44
    end
    object cdsMasterCFMOVEINCUSTOMERID: TWideStringField
      FieldName = 'CFMOVEINCUSTOMERID'
      OnChange = cdsMasterCFMOVEINCUSTOMERIDChange
      Size = 44
    end
    object cdsMasterCFMOVEOUTCUSTOMERI: TWideStringField
      FieldName = 'CFMOVEOUTCUSTOMERI'
      OnChange = cdsMasterCFMOVEOUTCUSTOMERIChange
      Size = 44
    end
    object cdsMasterCFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'CFSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsMasterCFPRICETYPEID: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterCFORDERTYPEID: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterCFCURRENCYID: TWideStringField
      FieldName = 'CFCURRENCYID'
      Size = 44
    end
    object cdsMasterCFEXCHANGERATE: TFloatField
      FieldName = 'CFEXCHANGERATE'
    end
    object cdsMasterCFREMARK: TWideStringField
      FieldName = 'CFREMARK'
      Size = 510
    end
    object cdsMasterCFBIZTYPEID: TWideStringField
      FieldName = 'CFBIZTYPEID'
      Size = 44
    end
    object cdsMasterCFAUDITDATE: TDateTimeField
      FieldName = 'CFAUDITDATE'
    end
    object cdsMasterCFMOVEINSTORAGEORG: TWideStringField
      FieldName = 'CFMOVEINSTORAGEORG'
      Size = 44
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 100
    end
    object cdsMasterCFISINTAX: TFloatField
      FieldName = 'CFISINTAX'
    end
    object cdsMasterCFSupplyCust: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSupplyCust'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFDemandCust: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFDemandCust'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFReceivOrgName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivOrgName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFwarehouseid: TWideStringField
      FieldName = 'CFwarehouseid'
      OnChange = cdsMasterCFwarehouseidChange
      Size = 44
    end
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
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFWareName'
      Size = 60
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 624
    Top = 47
  end
  inherited cdsDetail: TClientDataSet
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
      Size = 44
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailCFQTY: TFloatField
      FieldName = 'CFQTY'
    end
    object cdsDetailCFPRICE: TFloatField
      FieldName = 'CFPRICE'
    end
    object cdsDetailCFRETURNDISCOUNT: TFloatField
      FieldName = 'CFRETURNDISCOUNT'
    end
    object cdsDetailCFRETURNACTUALPRICE: TFloatField
      FieldName = 'CFRETURNACTUALPRICE'
    end
    object cdsDetailCFRETURNAMOUNT: TFloatField
      FieldName = 'CFRETURNAMOUNT'
    end
    object cdsDetailCFSUPPLYDISCOUNT: TFloatField
      FieldName = 'CFSUPPLYDISCOUNT'
    end
    object cdsDetailCFSUPPLYACTUALPRICE: TFloatField
      FieldName = 'CFSUPPLYACTUALPRICE'
    end
    object cdsDetailCFSUPPLYAMOUNT: TFloatField
      FieldName = 'CFSUPPLYAMOUNT'
    end
    object cdsDetailCFISSUESTORAGEORGI: TWideStringField
      FieldName = 'CFISSUESTORAGEORGI'
      Size = 44
    end
    object cdsDetailCFISSUEWAREHOUSEID: TWideStringField
      FieldName = 'CFISSUEWAREHOUSEID'
      Size = 44
    end
    object cdsDetailCFISSUELOCATONID: TWideStringField
      FieldName = 'CFISSUELOCATONID'
      Size = 44
    end
    object cdsDetailCFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'CFSOURCEBILLNUMBER'
      Size = 200
    end
    object cdsDetailCFSOURCEBILLID: TWideStringField
      FieldName = 'CFSOURCEBILLID'
      Size = 200
    end
    object cdsDetailCFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'CFSOURCEBILLENTRYID'
      Size = 200
    end
    object cdsDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 200
    end
    object cdsDetailCFASSISTPROPERTYID: TWideStringField
      FieldName = 'CFASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailCFRETURNTAXRATE: TFloatField
      FieldName = 'CFRETURNTAXRATE'
    end
    object cdsDetailCFSUPPLYTAXRATE: TFloatField
      FieldName = 'CFSUPPLYTAXRATE'
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    object cdsDetailAmountCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      OnChange = cdsDetailAmountCFPACKIDChange
      Size = 44
    end
    object wdstrngfldDetailAmountCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailAmountCFMaterialID: TWideStringField
      FieldName = 'CFMaterialID'
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
    object cdsDetailAmountCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailAmountCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailAmountCFPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFPRICE'
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
    object cdsDetailAmountfTotaLQty: TIntegerField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'fTotaLQty'
      Calculated = True
    end
    object cdsDetailAmountfAmount: TFloatField
      DisplayLabel = #37329#39069
      FieldKind = fkCalculated
      FieldName = 'fAmount'
      Calculated = True
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
    object cdsDetailAmountCfbrandid: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsDetailAmountcfattributeid: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailAmountCFRETURNDISCOUNT: TFloatField
      DisplayLabel = #36864#36135#25240#25187#29575
      FieldName = 'CFRETURNDISCOUNT'
      OnChange = cdsDetailAmountCFRETURNDISCOUNTChange
    end
    object cdsDetailAmountCFRETURNACTUALPRICE: TFloatField
      DisplayLabel = #36864#36135#21333#20215
      FieldName = 'CFRETURNACTUALPRICE'
      OnChange = cdsDetailAmountCFRETURNACTUALPRICEChange
    end
    object cdsDetailAmountCFRETURNAMOUNT: TFloatField
      DisplayLabel = #36864#36135#37329#39069
      FieldKind = fkCalculated
      FieldName = 'CFRETURNAMOUNT'
      Calculated = True
    end
    object cdsDetailAmountCFSUPPLYDISCOUNT: TFloatField
      DisplayLabel = #21457#36135#25240#25187#29575
      FieldName = 'CFSUPPLYDISCOUNT'
      OnChange = cdsDetailAmountCFSUPPLYDISCOUNTChange
    end
    object cdsDetailAmountCFSUPPLYACTUALPRICE: TFloatField
      DisplayLabel = #21457#36135#21333#20215
      FieldName = 'CFSUPPLYACTUALPRICE'
      OnChange = cdsDetailAmountCFSUPPLYACTUALPRICEChange
    end
    object cdsDetailAmountCFSUPPLYAMOUNT: TFloatField
      DisplayLabel = #21457#36135#37329#39069
      FieldKind = fkCalculated
      FieldName = 'CFSUPPLYAMOUNT'
      Calculated = True
    end
    object cdsDetailAmountCFRETURNTAXRATE: TFloatField
      DisplayLabel = #36864#36135#31246#29575
      FieldName = 'CFRETURNTAXRATE'
    end
    object cdsDetailAmountCFISSUEWAREHOUSEID: TWideStringField
      FieldName = 'CFISSUEWAREHOUSEID'
      Size = 44
    end
    object cdsDetailAmountCFISSUELOCATONID: TWideStringField
      FieldName = 'CFISSUELOCATONID'
      Size = 44
    end
    object cdsDetailAmountCFSUPPLYTAXRATE: TFloatField
      DisplayLabel = #21457#36135#31246#29575
      FieldName = 'CFSUPPLYTAXRATE'
    end
    object cdsDetailAmountCFISSUEWareName: TWideStringField
      FieldName = 'CFISSUEWareName'
      Size = 60
    end
    object cdsDetailAmountCFISSUELocationName: TWideStringField
      FieldName = 'CFISSUELocationName'
      Size = 60
    end
    object cdsDetailAmountCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  inherited SaveDg: TSaveDialog
    Left = 763
    Top = 282
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 768
    Top = 128
  end
  inherited cdsSelect: TClientDataSet
    Top = 136
  end
  inherited dsHeadSel: TDataSource
    Left = 401
    Top = 57
  end
  inherited cdsHeadSel: TClientDataSet
    Left = 441
    Top = 65
  end
  inherited dsInputWay: TDataSource
    DataSet = CliDM.cdsInputWay
  end
  inherited cdsDetailTracy: TClientDataSet
    Left = 176
    Top = 255
    object cdsDetailTracyFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailTracyFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailTracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailTracyCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailTracyCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
      Size = 44
    end
    object cdsDetailTracyCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailTracyCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailTracyCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailTracyCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailTracyCFQTY: TFloatField
      FieldName = 'CFQTY'
    end
    object cdsDetailTracyCFPRICE: TFloatField
      FieldName = 'CFPRICE'
    end
    object cdsDetailTracyCFRETURNDISCOUNT: TFloatField
      FieldName = 'CFRETURNDISCOUNT'
    end
    object cdsDetailTracyCFRETURNACTUALPRICE: TFloatField
      FieldName = 'CFRETURNACTUALPRICE'
    end
    object cdsDetailTracyCFRETURNAMOUNT: TFloatField
      FieldName = 'CFRETURNAMOUNT'
    end
    object cdsDetailTracyCFSUPPLYDISCOUNT: TFloatField
      FieldName = 'CFSUPPLYDISCOUNT'
    end
    object cdsDetailTracyCFSUPPLYACTUALPRICE: TFloatField
      FieldName = 'CFSUPPLYACTUALPRICE'
    end
    object cdsDetailTracyCFSUPPLYAMOUNT: TFloatField
      FieldName = 'CFSUPPLYAMOUNT'
    end
    object cdsDetailTracyCFISSUESTORAGEORGI: TWideStringField
      FieldName = 'CFISSUESTORAGEORGI'
      Size = 44
    end
    object cdsDetailTracyCFISSUEWAREHOUSEID: TWideStringField
      FieldName = 'CFISSUEWAREHOUSEID'
      Size = 44
    end
    object cdsDetailTracyCFISSUELOCATONID: TWideStringField
      FieldName = 'CFISSUELOCATONID'
      Size = 44
    end
    object cdsDetailTracyCFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'CFSOURCEBILLNUMBER'
      Size = 200
    end
    object cdsDetailTracyCFSOURCEBILLID: TWideStringField
      FieldName = 'CFSOURCEBILLID'
      Size = 200
    end
    object cdsDetailTracyCFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'CFSOURCEBILLENTRYID'
      Size = 200
    end
    object cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 200
    end
    object cdsDetailTracyCFASSISTPROPERTYID: TWideStringField
      FieldName = 'CFASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailTracyCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailTracyCFRETURNTAXRATE: TFloatField
      FieldName = 'CFRETURNTAXRATE'
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
    object cdsDetailTracyCfbrandid: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsDetailTracycfattributeid: TWideStringField
      FieldName = 'cfattributeid'
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
    object cdsDetailTracyCFSUPPLYTAXRATE: TFloatField
      FieldName = 'CFSUPPLYTAXRATE'
    end
    object cdsDetailTracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  inherited dsDetailTracy: TDataSource
    Left = 256
    Top = 271
  end
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 521
    Top = 73
  end
  object cdsBranch: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 281
    Top = 97
  end
  object dsOrderType: TDataSource
    DataSet = CliDM.cdsOrderType
    Left = 233
    Top = 73
  end
  object dsPriceType: TDataSource
    DataSet = CliDM.cdsPriceType
    Left = 281
    Top = 65
  end
  object cdswarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 185
    Top = 115
  end
end
