inherited FM_BillEditSaleReturnRequest: TFM_BillEditSaleReturnRequest
  Top = 188
  Caption = #38144#21806#36864#36135#30003#35831#21333#32534#36753
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
              end
              item
                Kind = skSum
                Column = dbgList2FTAX
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
            end
            object dbgList2CFDPPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFDPPRICE'
              Options.Editing = False
            end
            object dbgList2FPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FPRICE'
              Options.Editing = False
            end
            object dbgList2CFDISCOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'CFDISCOUNT'
            end
            object dbgList2CFACTUALPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFACTUALPRICE'
            end
            object dbgList2FTAXRATE: TcxGridDBColumn
              DataBinding.FieldName = 'FTAXRATE'
              Width = 60
            end
            object dbgList2CFACTUALTAXPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFACTUALTAXPRICE'
              Width = 79
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
            object dbgList2fAmount: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount'
              Options.Editing = False
            end
            object dbgList2FTAX: TcxGridDBColumn
              DataBinding.FieldName = 'FTAX'
              Options.Editing = False
            end
            object dbgList2fTotaLQty: TcxGridDBColumn
              DataBinding.FieldName = 'fTotaLQty'
              Options.Editing = False
            end
            object dbgList2CFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Width = 80
            end
            object dbgList2cfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Width = 80
            end
            object dbgList2CFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Width = 58
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
                Column = cxgridDetialFTAX
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFAMOUNT
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTAXAMOUNT
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
              Options.Editing = False
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
              Width = 50
            end
            object cxgridDetialCFPACKNUM: TcxGridDBColumn
              Caption = #31665#25968
              DataBinding.FieldName = 'CFPACKNUM'
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
            object cxgridDetialFTAX: TcxGridDBColumn
              Caption = #31246#39069
              DataBinding.FieldName = 'FTAX'
              Width = 60
            end
            object cxgridDetialFAMOUNT: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'FAMOUNT'
              Width = 60
            end
            object cxgridDetialFTAXAMOUNT: TcxGridDBColumn
              Caption = #20215#31246#21512#35745
              DataBinding.FieldName = 'FTAXAMOUNT'
              Width = 60
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
  inherited pnl_top: TPanel
    inherited pnlCodeSM: TPanel
      Top = 114
      Height = 14
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Height = 113
      ClientRectBottom = 113
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Height = 113
          inherited lbDescription: TLabel
            Left = 3
            Top = 56
          end
          inherited Label2: TLabel
            Left = 3
            Top = 6
          end
          inherited imgGB: TImage
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000038
              0000002008060000004703BBE8000000017352474200AECE1CE9000000046741
              4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
              80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
              0B0E00000B0E0140BEE14100000393494441545847DD99CF8B8F5114C627A594
              52366AC846B2B291643136E23F901592920D3B0B6533365316ACACA424ACE43F
              209BB190646325D90865A394B2D2D7F3D13DDFCEDCCEFDF1BE3326BD8BA7F73B
              EFBDF79CE7B9E7BCE7DCF79D85D96CB63065CCC52D6F5D5C5807B66BED11E19C
              704378203C17DE095F859FC2EF0CDC638C39CC650D6BB1812D6C8EE664415B8F
              C043227045782CBC17661B0C6C621B1FF81A2476ACC0DD727451782AFCC80411
              91D7C2436159382F9C100E0A8B29225B740544877B8C3187B9AC612D36B0E537
              0C5FF8C4371C9A62870ADC2BA357855799E3B7FAFB8E704638D0E3B8730EB6B0
              896D7C78B170800B9C8A4287083C2B432F9C932FFA7D4F3825ECE824DCDCF18A
              1D7CE00B9FF836B170825B68BB4720297453F8958C7ED2F59670741344953604
              DF70800B42E10647B8AE59D312B85F0BA86AB65B8FF4FB7832B24FD7EFC2A58A
              D09E396FB4FE99C0DCA111860B9C8C1F5CE13CB75313E8C551C6AF09DBDCE2C3
              CE3063113988E3FC6E853C0299C3669D4E7E7A2B319B0227FCC391756B449604
              EED2C4FB69C1075DA96E91000C1B1952C4CFB13188EF6C44E749B2F351D79389
              30EB4B601E7E7DD4E10857EEC31D0DF3F697F7414A3513BF09173AC941D204FA
              E81295687320870FA2CC38A9CE3A3F17B151065866E4690D5738B3060DA1C025
              0D7C4E93385144E47A53289A67F67281919FA102B10167FCA261294AD19534E1
              A5AE7B0A024BA963A9C673559AF3AF05C219EE885C8904AEA6C1EB8DD48C769C
              346B159548A045B3273348CF528A9A6DB8636B3512485160F0D8260AA408E511
              A76899609F116C624B20DCFF56E69AC056E5DBC80846B6AC7D0C29326607EEA3
              05F6A4516B0E446A4586BE890D6B07791F6D45B04B6029454BC5C3A714C46A7D
              AC26D0C411415ACC98085653746C91F1022195F7B43C0DA3085A64D820A230A6
              4DE0A75A647ADA444ED68820CC761D92B5F3A517C86F7BE6B8DAF33F4660B34D
              F4347A2FD00421CECEA4764CAB89F402ED99B5538DD91F23B0D9E831DE7B54B3
              E7C58B3372FE9C1ABD71E4118C0EEC66A3B7C8741DD520583B6C5BCFB25DB703
              7254EA89AEF5552B3CAD938C1D167C25CE37C8AAAB6F65830EDB90885E972EBB
              E60BF1D26B92170B091F698843B8D426B8EF2BB06FEC5EB4A5F3A8D7252318BD
              F0DE4E04A388D5EE59E479AE98677FD75E98FDB398B71DC6D6F5C26BC627FDC9
              C24764B21F9DBCC8497F36F44227FBE1372A2293FC745FAA96FFFF3F5FA6FA2F
              B43F39E37AB2200BABBD0000000049454E44AE426082}
          end
          inherited txDescription: TcxDBTextEdit
            Left = 65
            Top = 54
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 7
            Width = 542
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Hint = #19994#21153#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 2
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 65
            DataBinding.DataField = 'FNUMBER'
          end
          inherited lblNumber: TcxLabel
            Left = 303
            Caption = #36864#36135#23458#25143
          end
          inherited txtName: TcxDBTextEdit
            Left = 463
            Top = 4
            DataBinding.DataField = 'CFCustName'
            TabOrder = 5
            Width = 144
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 762
            Top = 29
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 6
          end
          inherited cxLabel1: TcxLabel
            Top = 32
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 368
            Top = 4
            Hint = #36864#36135#23458#25143
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 1
            OnKeyPress = cxbtnNUmberKeyPress
            Width = 97
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 696
            Top = 57
            AutoSize = False
            Caption = #21547#31246'  '
            DataBinding.DataField = 'FISINTAX'
            DataBinding.DataSource = dsMaster
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 11
            Height = 21
            Width = 82
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
            Width = 174
          end
          object cxcmblookupType: TcxDBLookupComboBox
            Tag = 100
            Left = 65
            Top = 79
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
            TabOrder = 8
            Width = 175
          end
          object RGReturnType: TcxRadioGroup
            Left = 361
            Top = 74
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = #23395#20869#36864#36135
              end
              item
                Caption = #23395#22806#36864#36135
              end>
            ItemIndex = 1
            TabOrder = 13
            Transparent = True
            Height = 39
            Width = 246
          end
          object cxLabel2: TcxLabel
            Left = 3
            Top = 79
            Caption = #36864#36135#31867#22411
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 303
            Top = 33
            Caption = #20179'    '#24211
            Transparent = True
          end
          object cxbtnSendWareNum: TcxButtonEdit
            Left = 368
            Top = 29
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnSendWareNumPropertiesButtonClick
            Properties.OnChange = cxbtnSendWareNumPropertiesChange
            TabOrder = 4
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            OnKeyPress = cxbtnSendWareNumKeyPress
            Width = 97
          end
          object cxbtnSendWareName: TcxDBTextEdit
            Left = 463
            Top = 29
            DataBinding.DataField = 'CFSendWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 16
            Width = 144
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Left = 378
    Top = 89
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
    object cdsMasterFORDERCUSTOMERID: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsMasterFRETURNSCUSTOMERID: TWideStringField
      FieldName = 'FRETURNSCUSTOMERID'
      Size = 44
    end
    object cdsMasterFINVOICECUSTOMERID: TWideStringField
      FieldName = 'FINVOICECUSTOMERID'
      Size = 44
    end
    object cdsMasterFSALEORGUNITID: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsMasterFSALESYMBOL: TWideStringField
      FieldName = 'FSALESYMBOL'
      Size = 80
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
    object cdsMasterFRETURNSREASON: TFloatField
      FieldName = 'FRETURNSREASON'
    end
    object cdsMasterFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFSALEGROUPID: TWideStringField
      FieldName = 'FSALEGROUPID'
      Size = 44
    end
    object cdsMasterFSALEPERSONID: TWideStringField
      FieldName = 'FSALEPERSONID'
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
    object cdsMasterFCONVERTMODE: TFloatField
      FieldName = 'FCONVERTMODE'
    end
    object cdsMasterFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
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
    object cdsMasterFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      OnChange = cdsMasterFWAREHOUSEIDChange
      Size = 44
    end
    object cdsMasterFISSQUAREBALANCE: TFloatField
      FieldName = 'FISSQUAREBALANCE'
    end
    object cdsMasterFBALANCECOMPANYORGUNITID: TWideStringField
      FieldName = 'FBALANCECOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFBALANCESALEORGUNITID: TWideStringField
      FieldName = 'FBALANCESALEORGUNITID'
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
    object cdsMasterCFPRICETYPEID: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 44
    end
    object cdsMasterCFRETURNTYPEID: TWideStringField
      FieldName = 'CFRETURNTYPEID'
      Size = 44
    end
    object cdsMasterCFINSEASONBOUND: TFloatField
      FieldName = 'CFINSEASONBOUND'
    end
    object cdsMasterCFSendWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSendWareName'
      Size = 80
      Calculated = True
    end
    object cdsMasterFCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 50
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
      Size = 50
      Calculated = True
    end
    object cdsMasterCFCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFCustName'
      Size = 80
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 632
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
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
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
    object cdsDetailFRETURNSQTY: TFloatField
      FieldName = 'FRETURNSQTY'
    end
    object cdsDetailFREMAININGQTY: TFloatField
      FieldName = 'FREMAININGQTY'
    end
    object cdsDetailFINVOICEDQTY: TFloatField
      FieldName = 'FINVOICEDQTY'
    end
    object cdsDetailFINVOICEPRICE: TFloatField
      FieldName = 'FINVOICEPRICE'
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
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
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFRETURNSBASEQTY: TFloatField
      FieldName = 'FRETURNSBASEQTY'
    end
    object cdsDetailFREMAININGBASEQTY: TFloatField
      FieldName = 'FREMAININGBASEQTY'
    end
    object cdsDetailFINVOICEDBASEQTY: TFloatField
      FieldName = 'FINVOICEDBASEQTY'
    end
    object cdsDetailFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailFTOTALRETURNAMT: TFloatField
      FieldName = 'FTOTALRETURNAMT'
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFTOTALINVOICEDAMT: TFloatField
      FieldName = 'FTOTALINVOICEDAMT'
    end
    object cdsDetailFPRODUCEDATE: TDateTimeField
      FieldName = 'FPRODUCEDATE'
    end
    object cdsDetailFMATURITYDATE: TDateTimeField
      FieldName = 'FMATURITYDATE'
    end
    object cdsDetailFCOREBILLTYPEID: TWideStringField
      FieldName = 'FCOREBILLTYPEID'
      Size = 44
    end
    object cdsDetailFCOREBILLID: TWideStringField
      FieldName = 'FCOREBILLID'
      Size = 160
    end
    object cdsDetailFCOREBILLNUMBER: TWideStringField
      FieldName = 'FCOREBILLNUMBER'
      Size = 160
    end
    object cdsDetailFCOREBILLENTRYID: TWideStringField
      FieldName = 'FCOREBILLENTRYID'
      Size = 160
    end
    object cdsDetailFCOREBILLENTRYSEQ: TFloatField
      FieldName = 'FCOREBILLENTRYSEQ'
    end
    object cdsDetailFRECEIVEDISPATCHERTYPE: TFloatField
      FieldName = 'FRECEIVEDISPATCHERTYPE'
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
    object cdsDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 160
    end
    object cdsDetailFISBETWEENCOMPANYSEND: TFloatField
      FieldName = 'FISBETWEENCOMPANYSEND'
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
    object cdsDetailFCHEAPRATE: TFloatField
      FieldName = 'FCHEAPRATE'
    end
    object cdsDetailFQUANTITYUNCTRL: TFloatField
      FieldName = 'FQUANTITYUNCTRL'
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
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
    object cdsDetailCFSALEPRICE: TFloatField
      FieldName = 'CFSALEPRICE'
    end
    object cdsDetailCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailCFACTUALPRICE: TFloatField
      FieldName = 'CFACTUALPRICE'
    end
    object cdsDetailCFACTUALTAXPRICE: TFloatField
      FieldName = 'CFACTUALTAXPRICE'
    end
    object cdsDetailCFDISCOUNTAMOUNT: TFloatField
      FieldName = 'CFDISCOUNTAMOUNT'
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    Top = 280
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
      DisplayLabel = #37329#39069#21512#35745
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
    object cdsDetailAmountFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      OnChange = cdsDetailAmountFMATERIALIDChange
      Size = 44
    end
    object cdsDetailAmountFTAXRATE: TFloatField
      DisplayLabel = #31246#29575
      FieldName = 'FTAXRATE'
      OnChange = cdsDetailAmountFTAXRATEChange
    end
    object cdsDetailAmountFTAX: TFloatField
      DisplayLabel = #31246#39069
      FieldKind = fkCalculated
      FieldName = 'FTAX'
      Calculated = True
    end
    object cdsDetailAmountFtaxAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FtaxAmount'
      Calculated = True
    end
    object cdsDetailAmountCFACTUALTAXPRICE: TFloatField
      DisplayLabel = #25240#21518#21547#31246#21333#20215
      FieldName = 'CFACTUALTAXPRICE'
      OnChange = cdsDetailAmountCFACTUALTAXPRICEChange
    end
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 656
  end
  inherited dsInputWay: TDataSource
    DataSet = CliDM.cdsInputWay
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
    object cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
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
    object cdsDetailTracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailTracyFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 160
    end
    object cdsDetailTracyFQTY: TFloatField
      FieldName = 'FQTY'
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
    object cdsDetailTracyFRETURNSQTY: TFloatField
      FieldName = 'FRETURNSQTY'
    end
    object cdsDetailTracyFREMAININGQTY: TFloatField
      FieldName = 'FREMAININGQTY'
    end
    object cdsDetailTracyFINVOICEDQTY: TFloatField
      FieldName = 'FINVOICEDQTY'
    end
    object cdsDetailTracyFINVOICEPRICE: TFloatField
      FieldName = 'FINVOICEPRICE'
    end
    object cdsDetailTracyFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
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
    object cdsDetailTracyFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailTracyFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailTracyFRETURNSBASEQTY: TFloatField
      FieldName = 'FRETURNSBASEQTY'
    end
    object cdsDetailTracyFREMAININGBASEQTY: TFloatField
      FieldName = 'FREMAININGBASEQTY'
    end
    object cdsDetailTracyFINVOICEDBASEQTY: TFloatField
      FieldName = 'FINVOICEDBASEQTY'
    end
    object cdsDetailTracyFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailTracyFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailTracyFTOTALRETURNAMT: TFloatField
      FieldName = 'FTOTALRETURNAMT'
    end
    object cdsDetailTracyFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailTracyFTOTALINVOICEDAMT: TFloatField
      FieldName = 'FTOTALINVOICEDAMT'
    end
    object cdsDetailTracyFPRODUCEDATE: TDateTimeField
      FieldName = 'FPRODUCEDATE'
    end
    object cdsDetailTracyFMATURITYDATE: TDateTimeField
      FieldName = 'FMATURITYDATE'
    end
    object cdsDetailTracyFCOREBILLTYPEID: TWideStringField
      FieldName = 'FCOREBILLTYPEID'
      Size = 44
    end
    object cdsDetailTracyFCOREBILLID: TWideStringField
      FieldName = 'FCOREBILLID'
      Size = 160
    end
    object cdsDetailTracyFCOREBILLNUMBER: TWideStringField
      FieldName = 'FCOREBILLNUMBER'
      Size = 160
    end
    object cdsDetailTracyFCOREBILLENTRYID: TWideStringField
      FieldName = 'FCOREBILLENTRYID'
      Size = 160
    end
    object cdsDetailTracyFCOREBILLENTRYSEQ: TFloatField
      FieldName = 'FCOREBILLENTRYSEQ'
    end
    object cdsDetailTracyFRECEIVEDISPATCHERTYPE: TFloatField
      FieldName = 'FRECEIVEDISPATCHERTYPE'
    end
    object cdsDetailTracyFDELIVERYCUSTOMERID: TWideStringField
      FieldName = 'FDELIVERYCUSTOMERID'
      Size = 44
    end
    object cdsDetailTracyFPAYMENTCUSTOMERID: TWideStringField
      FieldName = 'FPAYMENTCUSTOMERID'
      Size = 44
    end
    object cdsDetailTracyFRECEIVECUSTOMERID: TWideStringField
      FieldName = 'FRECEIVECUSTOMERID'
      Size = 44
    end
    object cdsDetailTracyFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 160
    end
    object cdsDetailTracyFISBETWEENCOMPANYSEND: TFloatField
      FieldName = 'FISBETWEENCOMPANYSEND'
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
    object cdsDetailTracyFCHEAPRATE: TFloatField
      FieldName = 'FCHEAPRATE'
    end
    object cdsDetailTracyFQUANTITYUNCTRL: TFloatField
      FieldName = 'FQUANTITYUNCTRL'
    end
    object cdsDetailTracyCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
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
    object cdsDetailTracyCFSALEPRICE: TFloatField
      FieldName = 'CFSALEPRICE'
    end
    object cdsDetailTracyCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailTracyCFACTUALPRICE: TFloatField
      FieldName = 'CFACTUALPRICE'
    end
    object cdsDetailTracyCFACTUALTAXPRICE: TFloatField
      FieldName = 'CFACTUALTAXPRICE'
    end
    object cdsDetailTracyCFDISCOUNTAMOUNT: TFloatField
      FieldName = 'CFDISCOUNTAMOUNT'
    end
    object cdsDetailTracyStringField: TStringField
      DisplayLabel = #21830#21697#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailTracyStringField2: TStringField
      DisplayLabel = #21830#21697#21517#31216
      FieldName = 'cfMaterialName'
      Size = 200
    end
    object cdsDetailTracyStringField3: TStringField
      DisplayLabel = #33394#21495
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsDetailTracyStringField4: TStringField
      DisplayLabel = #39068#33394
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsDetailTracyStringField5: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
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
    object cdsDetailTracycfattributeid: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailTracyStringField6: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 50
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
    object cdsDetailTracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  object cdswarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 473
    Top = 75
  end
  object dsPriceType: TDataSource
    DataSet = CliDM.cdsPriceType
    Left = 257
    Top = 65
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
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 497
    Top = 49
  end
end
