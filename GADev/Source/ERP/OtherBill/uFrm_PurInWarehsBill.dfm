inherited FM_BillEditMoveinwarehs: TFM_BillEditMoveinwarehs
  Left = 173
  Top = 60
  Width = 1003
  Height = 652
  Caption = #35843#25320#20837#24211#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    Width = 987
    Height = 268
    inherited cxPageDetail: TcxPageControl
      Width = 987
      Height = 268
      OnChange = cxPageDetailChange
      ClientRectBottom = 268
      ClientRectRight = 987
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 987
          Height = 220
          inherited dbgList: TcxGridDBTableView
            object dbgListFSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'FSEQ'
              Options.Editing = False
              Width = 50
            end
            object dbgListcfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              Options.Editing = False
              Width = 58
            end
            object dbgListcfMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialName'
              Options.Editing = False
              Width = 64
            end
            object dbgListcfColorName: TcxGridDBColumn
              DataBinding.FieldName = 'cfColorName'
              Options.Editing = False
              Width = 61
            end
            object dbgListcfCupName: TcxGridDBColumn
              DataBinding.FieldName = 'cfCupName'
              Options.Editing = False
              Width = 47
            end
            object dbgListcfSIZEName: TcxGridDBColumn
              DataBinding.FieldName = 'cfSIZEName'
              Options.Editing = False
              Width = 50
            end
            object dbgListFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'FQTY'
              Width = 50
            end
            object dbgListFPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FPRICE'
              Options.Editing = False
              Width = 50
            end
            object dbgListFWareHouseNumber: TcxGridDBColumn
              DataBinding.FieldName = 'FWareHouseNumber'
              Options.Editing = False
              Width = 99
            end
            object dbgListFWareHouseName: TcxGridDBColumn
              DataBinding.FieldName = 'FWareHouseName'
              Options.Editing = False
              Width = 84
            end
            object dbgListCFAssistNum: TcxGridDBColumn
              DataBinding.FieldName = 'CFAssistNum'
              Options.Editing = False
              Width = 127
            end
          end
          inherited dbgList2: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = dbgList2Column3
              end
              item
                Kind = skSum
                FieldName = 'cfdpamount'
                Column = dbgList2Column5
              end>
            OptionsBehavior.FocusCellOnCycle = True
            OptionsData.Inserting = True
            object dbgList2cfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2cfMaterialNumberPropertiesButtonClick
              Width = 58
            end
            object dbgList2cfMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialName'
              Options.Editing = False
              Width = 97
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
              Properties.OnButtonClick = dbgList2CFColorNamePropertiesButtonClick
              Width = 75
            end
            object dbgList2CFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
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
              Width = 50
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
            object dbgList2cfpackNum: TcxGridDBColumn
              DataBinding.FieldName = 'cfpackNum'
              Visible = False
            end
            object dbgList2Column6: TcxGridDBColumn
              DataBinding.FieldName = 'CFInLocName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Width = 60
            end
            object dbgList2CFOutLocationName: TcxGridDBColumn
              Caption = #20986#24211#24211#20301
              DataBinding.FieldName = 'CFOutLocName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Options.Editing = False
              Width = 77
            end
            object dbgList2Column4: TcxGridDBColumn
              DataBinding.FieldName = 'cfdpprice'
              Options.Editing = False
            end
            object dbgList2Fprice: TcxGridDBColumn
              Caption = #26631#20934#20215
              DataBinding.FieldName = 'Fprice'
              Options.Editing = False
            end
            object dbgList2fAmount_1: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_1'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 38
            end
            object dbgList2fAmount_2: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_2'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_3: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_3'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_4: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_4'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_5: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_5'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_6: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_6'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_7: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_7'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_8: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_8'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_9: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_9'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_10: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_10'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_11: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_11'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_12: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_12'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_13: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_13'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_14: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_14'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_15: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_15'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_16: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_16'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_17: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_17'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_18: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_18'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_19: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_19'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_20: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_20'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_21: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_21'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_22: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_22'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_23: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_23'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_24: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_24'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_25: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_25'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_26: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_26'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_27: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_27'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_28: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_28'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_29: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_29'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2fAmount_30: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_30'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
            end
            object dbgList2Column3: TcxGridDBColumn
              Caption = #21512#35745#25968#37327
              DataBinding.FieldName = 'FTotalQty'
              Options.Editing = False
              Width = 60
            end
            object dbgList2Column5: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'FAmount'
              Options.Editing = False
            end
            object dbgList2CFUnitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Options.Editing = False
              Width = 60
            end
            object dbgList2cfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Options.Editing = False
              Width = 80
            end
            object dbgList2CFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Options.Editing = False
              Width = 80
            end
            object dbgList2FRemark: TcxGridDBColumn
              DataBinding.FieldName = 'FRemark'
              Width = 100
            end
          end
        end
        inherited Panel3: TPanel
          Width = 987
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
          Width = 987
          Height = 223
          inherited cxgridDetial: TcxGridDBTableView
            object cxgridDetialFSEQ: TcxGridDBColumn
              Caption = #24207#21495
              DataBinding.FieldName = 'FSEQ'
              Width = 44
            end
            object cxgridDetialcfMaterialNumber: TcxGridDBColumn
              Caption = #29289#26009#32534#21495
              DataBinding.FieldName = 'cfMaterialNumber'
              Width = 100
            end
            object cxgridDetialcfMaterialName: TcxGridDBColumn
              Caption = #29289#26009#21517#31216
              DataBinding.FieldName = 'cfMaterialName'
              Width = 120
            end
            object cxgridDetialCFColorCode: TcxGridDBColumn
              Caption = #33394#21495
              DataBinding.FieldName = 'CFColorCode'
              Width = 60
            end
            object cxgridDetialCFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
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
            object cxgridDetialcfdpprice: TcxGridDBColumn
              DataBinding.FieldName = 'cfdpprice'
            end
            object cxgridDetialFPRICE: TcxGridDBColumn
              Caption = #26631#20934#20215
              DataBinding.FieldName = 'FPRICE'
            end
            object cxgridDetialFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'FQTY'
            end
            object cxgridDetialFAMOUNT: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'FAMOUNT'
            end
            object cxgridDetialCFInLocName: TcxGridDBColumn
              DataBinding.FieldName = 'CFInLocName'
              Width = 60
            end
            object cxgridDetialCFOutLocName: TcxGridDBColumn
              DataBinding.FieldName = 'CFOutLocName'
              Width = 60
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
              Width = 62
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Width = 80
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Width = 80
            end
            object cxgridDetialFREMARK: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'FREMARK'
              Width = 100
            end
          end
        end
        inherited Panel4: TPanel
          Width = 987
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
    Top = 584
    Width = 987
    inherited cxFmodifieridName: TcxDBMaskEdit
      DataBinding.DataField = 'CFINPUTWAY'
    end
  end
  inherited pnl_top: TPanel
    Width = 987
    inherited pnlCodeSM: TPanel
      Top = 79
      Width = 985
      Height = 49
      inherited lb_msg: TLabel
        Height = 35
      end
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Width = 985
      Height = 78
      ClientRectBottom = 78
      ClientRectRight = 985
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Width = 985
          Height = 78
          DesignSize = (
            985
            78)
          inherited im_Audit: TImage
            Left = 913
          end
          inherited img_NewBill: TImage
            Left = 913
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
            Left = 585
            Top = 6
          end
          inherited Image4: TImage
            Left = 21
            Top = 73
          end
          inherited imgTJ: TImage
            Left = 911
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000038
              0000002008060000004703BBE8000000017352474200AECE1CE9000000046741
              4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
              80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
              0AF600000AF601C2AF7003000003C0494441545847DD99318B144110850F4110
              04C14438C544C4C844440CCE443436112395431013CD0C049333393030335241
              448D44F007282667202226462226A282C9812018C9FA3E98B7D4353DDD3D7BAB
              C8048FB99BEEAE7AAFAAA6BA67766132992C8C1953712B5B17173681ED5A7B44
              382FDC101E082F84F7C237E1A7F03B01F718630E7359C35A6C600B9B337372D2
              3623F090085C111E0B1F84C99C814D6CE3035F83C4CE2A70B71C5D149E0A3F12
              4164E48DF0505811968513C24161B1CBC8165D01D9E11E63CC612E6B588B0D6C
              C580E10B9FF8864355EC50817B65F4AAF03A71FC4EFFDF16CE0A075A1C37CEC1
              1636B18D8F28160E708153AFD02102CFC9D0CBE0E4ABFEBE279C16763412AE46
              BC60071FF8C227BE2D164E70CBDA6E114809DD147E75463FEB7A4B38FA0F44F5
              0504DF70800B42E10647B86E585313B85F0BE86A8ED623FD7D5C38D9DDBBF397
              449E91DD75E15AC53E5CE0647E7085F35464496014471BC7D9B66E714E20E3B5
              0EFABC3120B685C87D953570623E1CF1BF41649FC05D9A78BF5BF05157BA5B4C
              7D492059C5610A9CB70AC4D7A7CE7F2D8BE60547B8E207EE68986E7FE93E48AB
              66E277E1422682F3C820626B19AF8DA701832B9C598786ACC0250D7CE92671A2
              8899BBD4438A68BBAC5A3388AD5CA687DCC346DA88E08C40342CE54A74B59BF0
              4AD73D8981C31D294460E46D42927B6437D7FD6A25BAB3B347374CD79329C09C
              DA560367B8E36F352770AD1BBC5E30368F128D446924040B5254432A228E11E4
              9A48B8636B2D2790CEC5E0B106814F34876C721D5AA22609613794BE2C91D5F8
              3CF655896DC29DF9EB2581A5727006ED1471DCE3DAD7D6194B9F19F63BDB4024
              C83D570E3A818C3EFB3209F79905C6FD8ED249C5D63A1FE388880DCB017289C6
              E07A9E4B37AEEBCB6493C05C895A9C4B8AF2C458AEF3F9B9A1BCD2713F47908D
              249DA1D868EC2B6696CC97CAB458A2A52603311B27DAF1A8E6E7C48EDD696B27
              91B4D9B81CF113035A6B2C71BCD8644ADB848DE4BAA833E6EC58605AB2B5F36B
              7C2EBD967BAD02ABDB4469A3EF1348965232169896688D2CC173B06A7B674E74
              75A367D1D0A35AEC6E9418591C5AA2088B76DC557DA0A80506DE4D473526D60E
              DB2E2367C7DD2FEDB0DC2F3D836E506E24D18EB3136DFA152AD76096E5ABF9B0
              8DF1DCEBD2E5508A90891BB09D223E12CE6D1B74C4740EB64A9D913531C30EC6
              4CAF4B8E5EFAC2FB4C4EEE86B6CFBCBE96ED736B6E0B21AB80B196A357FAACF9
              A07E4AEB677EE1B5D1517FB288911BED47A72872D49F0DA3D0D17EF8CD6DACA3
              FC74DF776CFAFF7F7C19EB4F687F003BC7949C48000E020000000049454E44AE
              426082}
          end
          inherited imgGB: TImage
            Left = 920
          end
          inherited txDescription: TcxDBTextEdit
            Left = 66
            Top = 54
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 5
            Width = 491
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 646
            Hint = #19994#21153#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 2
            Width = 121
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 66
            DataBinding.DataField = 'FNUMBER'
            Width = 184
          end
          inherited lblNumber: TcxLabel
            Left = 3
            Top = 29
            Caption = #35843#20837#20179#24211
          end
          inherited txtName: TcxDBTextEdit
            Left = 150
            Top = 29
            DataBinding.DataField = 'CFReceivWareName'
            TabOrder = 8
            Width = 100
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 342
            Top = 4
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 1
            Width = 215
          end
          inherited cxLabel1: TcxLabel
            Left = 279
            Top = 6
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 66
            Top = 29
            Hint = #35843#20837#20179#24211
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 3
            Width = 87
          end
          object cxLabel2: TcxLabel
            Left = 279
            Top = 33
            Caption = #35843#20986#20179#24211
          end
          object cxbtnInWare: TcxButtonEdit
            Tag = 100
            Left = 341
            Top = 29
            Enabled = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnChange = cxbtnInWarePropertiesChange
            TabOrder = 10
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 96
          end
          object cxedtInware: TcxDBTextEdit
            Left = 435
            Top = 29
            DataBinding.DataField = 'CFSendWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 11
            Width = 122
          end
          object cxLabel3: TcxLabel
            Left = 585
            Top = 29
            Caption = #35746#21333#31867#22411
          end
          object cxcmbOrderType: TcxDBLookupComboBox
            Left = 646
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
            TabOrder = 4
            Width = 121
          end
        end
      end
    end
  end
  inherited pnlStock: TPanel
    Top = 450
    Width = 987
    inherited Panel2: TPanel
      Width = 474
      inherited cxpageReceive: TcxPageControl
        Width = 472
        ClientRectRight = 472
        inherited cxTabRecStock: TcxTabSheet
          inherited cxGrid5: TcxGrid
            Width = 469
          end
        end
        inherited cxTabRecSale: TcxTabSheet
          inherited cxGrid6: TcxGrid
            Width = 337
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Top = 97
  end
  inherited ImageListMainForm: TImageList
    Left = 464
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 568
    Top = 407
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
    inherited barbtnNew: TdxBarButton
      Enabled = False
      Visible = ivNever
    end
    inherited dxBarSubItem3: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'btn_TsCiew'
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
          Visible = False
          ItemName = 'dxBarF11Imput'
        end
        item
          Visible = False
          ItemName = 'dxBarCodeSM1'
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
    inherited dxBarButton20: TdxBarButton
      Visible = ivNever
    end
    object btn_TsCiew: TdxBarButton
      Caption = #36884#25439#21333#26126#32454'...'
      Category = 0
      Hint = #36884#25439#21333#26126#32454
      Visible = ivAlways
      ImageIndex = 31
      LargeImageIndex = 31
      ShortCut = 122
      OnClick = btn_TsCiewClick
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
    inherited actImportExcel: TAction
      Visible = False
    end
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'DataSetProvider1'
    RemoteServer = CliDM.SckCon
    Left = 608
    Top = 2
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
      Size = 80
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
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
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
    ProviderName = 'DataSetProvider2'
    RemoteServer = CliDM.SckCon
    object cdsDetailcfMaterialNumber: TStringField
      Tag = 1
      DisplayLabel = #21830#21697#32534#30721
      FieldKind = fkCalculated
      FieldName = 'cfMaterialNumber'
      Calculated = True
    end
    object cdsDetailcfMaterialName: TStringField
      Tag = 1
      DisplayLabel = #21830#21697#21517#31216
      FieldKind = fkCalculated
      FieldName = 'cfMaterialName'
      Calculated = True
    end
    object cdsDetailcfColorName: TStringField
      Tag = 1
      DisplayLabel = #39068#33394
      FieldKind = fkCalculated
      FieldName = 'cfColorName'
      Calculated = True
    end
    object cdsDetailcfColorCode: TStringField
      Tag = 1
      FieldKind = fkCalculated
      FieldName = 'cfColorCode'
      Size = 60
      Calculated = True
    end
    object cdsDetailcfSIZECode: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'cfSIZECode'
      Size = 80
      Calculated = True
    end
    object cdsDetailcfSIZEName: TStringField
      Tag = 1
      DisplayLabel = #23610#30721
      FieldKind = fkCalculated
      FieldName = 'cfSIZEName'
      Calculated = True
    end
    object cdsDetailcfCupName: TStringField
      Tag = 1
      DisplayLabel = #20869#38271
      FieldKind = fkCalculated
      FieldName = 'cfCupName'
      Calculated = True
    end
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      Visible = False
      Size = 44
    end
    object cdsDetailFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Visible = False
      Size = 44
    end
    object cdsDetailFLOT: TWideStringField
      FieldName = 'FLOT'
      Visible = False
      Size = 80
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
      Visible = False
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
      Visible = False
    end
    object cdsDetailFREVERSEQTY: TFloatField
      FieldName = 'FREVERSEQTY'
      Visible = False
    end
    object cdsDetailFRETURNSQTY: TFloatField
      FieldName = 'FRETURNSQTY'
      Visible = False
    end
    object cdsDetailFPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'FPRICE'
      Visible = False
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
      Visible = False
    end
    object cdsDetailFUNITSTANDARDCOST: TFloatField
      FieldName = 'FUNITSTANDARDCOST'
      Visible = False
    end
    object cdsDetailFSTANDARDCOST: TFloatField
      FieldName = 'FSTANDARDCOST'
      Visible = False
    end
    object cdsDetailFUNITACTUALCOST: TFloatField
      FieldName = 'FUNITACTUALCOST'
      Visible = False
    end
    object cdsDetailFACTUALCOST: TFloatField
      FieldName = 'FACTUALCOST'
      Visible = False
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
      Visible = False
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Visible = False
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLID'
      Visible = False
      Size = 44
    end
    object cdsDetailFSTOCKTRANSBILLENTRYID: TWideStringField
      FieldName = 'FSTOCKTRANSBILLENTRYID'
      Visible = False
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERNUM: TWideStringField
      FieldName = 'FSTOCKTRANSFERNUM'
      Visible = False
      Size = 80
    end
    object cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField
      FieldName = 'FSTOCKTRANSFERBILLENTRYSEQ'
      Visible = False
    end
    object cdsDetailFMFG: TDateTimeField
      FieldName = 'FMFG'
      Visible = False
    end
    object cdsDetailFEXP: TDateTimeField
      FieldName = 'FEXP'
      Visible = False
    end
    object cdsDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Visible = False
      Size = 200
    end
    object cdsDetailFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
      Visible = False
    end
    object cdsDetailFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
      Visible = False
    end
    object cdsDetailFBASEUNITACTUALCOST: TFloatField
      FieldName = 'FBASEUNITACTUALCOST'
      Visible = False
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Visible = False
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Visible = False
      Size = 44
    end
    object cdsDetailFCUSTOMERID: TWideStringField
      FieldName = 'FCUSTOMERID'
      Visible = False
      Size = 44
    end
    object cdsDetailFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Visible = False
      Size = 44
    end
    object cdsDetailFSTORETYPEID: TWideStringField
      FieldName = 'FSTORETYPEID'
      Visible = False
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
    object cdsDetailFWareHouseName: TStringField
      DisplayLabel = #25910#36135#20179#24211#21517#31216
      FieldKind = fkCalculated
      FieldName = 'FWareHouseName'
      Calculated = True
    end
    object cdsDetailFWareHouseNumber: TStringField
      DisplayLabel = #25910#36135#20179#24211#32534#30721
      FieldKind = fkCalculated
      FieldName = 'FWareHouseNumber'
      Calculated = True
    end
    object cdsDetailCFAssistNum: TWideStringField
      DisplayLabel = #36741#21161#23646#24615#32534#21495
      FieldName = 'CFAssistNum'
    end
    object cdsDetailFQTY: TFloatField
      Tag = 1
      DisplayLabel = #25968#37327
      FieldName = 'FQTY'
      Visible = False
      OnChange = cdsDetailFQTYChange
    end
    object cdsDetailCFCHECKDIFFQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKDIFFQTY'
      Visible = False
    end
    object cdsDetailCFCHECKINPUTQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKINPUTQTY'
      Visible = False
    end
    object cdsDetailCFOLDPackNum: TFloatField
      FieldName = 'CFOLDPackNum'
    end
    object cdsDetailCFOLdPackID: TWideStringField
      FieldName = 'CFOLdPackID'
      Size = 44
    end
    object cdsDetailCFTOUTWAREHOUSEID: TWideStringField
      FieldName = 'CFTOUTWAREHOUSEID'
      Size = 44
    end
    object cdsDetailcfdpprice: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'cfdpprice'
    end
    object cdsDetailcfdpamount: TFloatField
      DisplayLabel = #21514#29260#37329#39069
      FieldName = 'cfdpamount'
    end
    object cdsDetailCFOutLocationID: TWideStringField
      FieldName = 'CFOutLocationID'
      Size = 60
    end
  end
  inherited pmDetail: TPopupMenu
    OnPopup = pmDetailPopup
    inherited NewListRow: TMenuItem
      Visible = False
    end
    inherited DelListRow: TMenuItem
      Visible = False
    end
    inherited DelAllList: TMenuItem
      Visible = False
    end
    object updateQty: TMenuItem [4]
      Caption = #29992#26657#39564#25968#26356#26032#25968#37327
      OnClick = updateQtyClick
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    BeforeEdit = cdsDetailAmountBeforeEdit
    OnNewRecord = cdsDetailAmountNewRecord
    object cdsDetailAmountCFTOUTWAREHOUSEID: TWideStringField
      FieldName = 'CFTOUTWAREHOUSEID'
      Size = 44
    end
    object cdsDetailAmountFMATERIALID: TWideStringField
      DisplayLabel = #21830#21697'ID'
      FieldName = 'FMATERIALID'
      Size = 200
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
      DisplayLabel = #21830#21697#21517#31216
      FieldName = 'cfMaterialName'
      Size = 200
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
    object cdsDetailAmountcfMaterialNumber: TStringField
      DisplayLabel = #21830#21697#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailAmountFTIPWAREHOUSEID: TStringField
      DisplayLabel = #35843#25320#20837#24211#20179#24211'ID'
      FieldName = 'FWAREHOUSEID'
      Size = 200
    end
    object cdsDetailAmountCFOLDPackNum: TIntegerField
      FieldName = 'CFOLDPackNum'
    end
    object cdsDetailAmountCFOLDPackID: TStringField
      FieldName = 'CFOLDPackID'
      Size = 44
    end
    object cdsDetailAmountFSourceBillID: TStringField
      FieldName = 'FSourceBillID'
      Size = 44
    end
    object cdsDetailAmountFSourceBillNumber: TStringField
      FieldName = 'FSourceBillNumber'
      Size = 44
    end
    object cdsDetailAmountCFPackID: TStringField
      FieldName = 'CFPackID'
      Size = 44
    end
    object cdsDetailAmountCFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 80
    end
    object cdsDetailAmountcfpackNum: TIntegerField
      DisplayLabel = #31665#25968
      FieldName = 'cfpackNum'
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
    object cdsDetailAmountiTotalQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'FTotalQty'
      Calculated = True
    end
    object cdsDetailAmountCFColorCode: TStringField
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsDetailAmountcfdpprice: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'cfdpprice'
    end
    object cdsDetailAmountcfdpamount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cfdpamount'
      Calculated = True
    end
    object cdsDetailAmountFRemark: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FRemark'
      Size = 200
    end
    object cdsDetailAmountCFUnitName: TStringField
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
    object cdsDetailAmountCFOutLocationID: TWideStringField
      FieldName = 'CFOutLocationID'
      Size = 60
    end
    object cdsDetailAmountFAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FAmount'
      Calculated = True
    end
    object cdsDetailAmountFprice: TFloatField
      FieldName = 'Fprice'
    end
    object cdsDetailAmountFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
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
      Visible = False
      Size = 44
    end
    object cdsDetailTracyFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Visible = False
      Size = 44
    end
    object cdsDetailTracyFLOT: TWideStringField
      FieldName = 'FLOT'
      Visible = False
      Size = 80
    end
    object cdsDetailTracyFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
      Visible = False
    end
    object cdsDetailTracyFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
      Visible = False
    end
    object cdsDetailTracyFREVERSEQTY: TFloatField
      FieldName = 'FREVERSEQTY'
      Visible = False
    end
    object cdsDetailTracyFRETURNSQTY: TFloatField
      FieldName = 'FRETURNSQTY'
      Visible = False
    end
    object cdsDetailTracyFPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'FPRICE'
      Visible = False
    end
    object cdsDetailTracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
      Visible = False
    end
    object cdsDetailTracyFUNITSTANDARDCOST: TFloatField
      FieldName = 'FUNITSTANDARDCOST'
      Visible = False
    end
    object cdsDetailTracyFSTANDARDCOST: TFloatField
      FieldName = 'FSTANDARDCOST'
      Visible = False
    end
    object cdsDetailTracyFUNITACTUALCOST: TFloatField
      FieldName = 'FUNITACTUALCOST'
      Visible = False
    end
    object cdsDetailTracyFACTUALCOST: TFloatField
      FieldName = 'FACTUALCOST'
      Visible = False
    end
    object cdsDetailTracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
      Visible = False
    end
    object cdsDetailTracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Visible = False
      Size = 44
    end
    object cdsDetailTracyFSTOCKTRANSFERBILLID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLID'
      Visible = False
      Size = 44
    end
    object cdsDetailTracyFSTOCKTRANSBILLENTRYID: TWideStringField
      FieldName = 'FSTOCKTRANSBILLENTRYID'
      Visible = False
      Size = 44
    end
    object cdsDetailTracyFSTOCKTRANSFERNUM: TWideStringField
      FieldName = 'FSTOCKTRANSFERNUM'
      Visible = False
      Size = 80
    end
    object cdsDetailTracyFSTOCKTRANSFERBILLENTRYSEQ: TFloatField
      FieldName = 'FSTOCKTRANSFERBILLENTRYSEQ'
      Visible = False
    end
    object cdsDetailTracyFMFG: TDateTimeField
      FieldName = 'FMFG'
      Visible = False
    end
    object cdsDetailTracyFEXP: TDateTimeField
      FieldName = 'FEXP'
      Visible = False
    end
    object cdsDetailTracyFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Visible = False
      Size = 200
    end
    object cdsDetailTracyFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
      Visible = False
    end
    object cdsDetailTracyFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
      Visible = False
    end
    object cdsDetailTracyFBASEUNITACTUALCOST: TFloatField
      FieldName = 'FBASEUNITACTUALCOST'
      Visible = False
    end
    object cdsDetailTracyFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Visible = False
      Size = 44
    end
    object cdsDetailTracyFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Visible = False
      Size = 44
    end
    object cdsDetailTracyFCUSTOMERID: TWideStringField
      FieldName = 'FCUSTOMERID'
      Visible = False
      Size = 44
    end
    object cdsDetailTracyFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Visible = False
      Size = 44
    end
    object cdsDetailTracyFSTORETYPEID: TWideStringField
      FieldName = 'FSTORETYPEID'
      Visible = False
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
    object cdsDetailTracyFWareHouseName: TStringField
      DisplayLabel = #25910#36135#20179#24211#21517#31216
      FieldKind = fkCalculated
      FieldName = 'FWareHouseName'
      Calculated = True
    end
    object cdsDetailTracyFWareHouseNumber: TStringField
      DisplayLabel = #25910#36135#20179#24211#32534#30721
      FieldKind = fkCalculated
      FieldName = 'FWareHouseNumber'
      Calculated = True
    end
    object cdsDetailTracyCFAssistNum: TWideStringField
      DisplayLabel = #36741#21161#23646#24615#32534#21495
      FieldName = 'CFAssistNum'
    end
    object cdsDetailTracyFQTY: TFloatField
      Tag = 1
      DisplayLabel = #25968#37327
      FieldName = 'FQTY'
      Visible = False
      OnChange = cdsDetailFQTYChange
    end
    object cdsDetailTracyCFCHECKDIFFQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKDIFFQTY'
      Visible = False
    end
    object cdsDetailTracyCFCHECKINPUTQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKINPUTQTY'
      Visible = False
    end
    object cdsDetailTracyCFOLDPackNum: TFloatField
      FieldName = 'CFOLDPackNum'
    end
    object cdsDetailTracyCFOLdPackID: TWideStringField
      FieldName = 'CFOLdPackID'
      Size = 44
    end
    object cdsDetailTracyCFTOUTWAREHOUSEID: TWideStringField
      FieldName = 'CFTOUTWAREHOUSEID'
      Size = 44
    end
    object cdsDetailTracycfdpprice: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'cfdpprice'
    end
    object cdsDetailTracycfdpamount: TFloatField
      DisplayLabel = #21514#29260#37329#39069
      FieldName = 'cfdpamount'
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
    object cdsDetailTracycfMaterialNumber: TStringField
      DisplayLabel = #21830#21697#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailTracyCFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldName = 'CFPackName'
      Size = 80
    end
    object cdsDetailTracyCFColorCode: TStringField
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsDetailTracyCFNUitName: TStringField
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
    object cdsDetailTracyCFOutLocationID: TWideStringField
      FieldName = 'CFOutLocationID'
      Size = 60
    end
  end
  inherited cdstracy: TClientDataSet
    object cdstracyFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdstracyFSEQ: TFloatField
      DisplayLabel = #34892#21495
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
    object cdstracyFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Visible = False
      Size = 44
    end
    object cdstracyFPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'FPRICE'
      Visible = False
    end
    object cdstracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
      Visible = False
    end
    object cdstracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Visible = False
      Size = 44
    end
    object cdstracyFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Visible = False
      Size = 200
    end
    object cdstracyCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdstracyCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdstracyCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdstracyCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdstracyCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdstracyCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdstracyFQTY: TFloatField
      Tag = 1
      DisplayLabel = #25968#37327
      FieldName = 'FQTY'
      Visible = False
      OnChange = cdsDetailFQTYChange
    end
    object cdstracyCFCHECKDIFFQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKDIFFQTY'
      Visible = False
    end
    object cdstracyCFCHECKINPUTQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKINPUTQTY'
      Visible = False
    end
    object cdstracycfdpprice: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'cfdpprice'
    end
    object cdstracyCFOutLocationID: TWideStringField
      FieldName = 'CFOutLocationID'
      Size = 60
    end
  end
  object cdswarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdswarehouseFilterRecord
    Left = 497
    Top = 99
  end
  object dsOrderType: TDataSource
    DataSet = CliDM.cdsOrderType
    Left = 761
    Top = 105
  end
  object cdstemp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 405
  end
end
