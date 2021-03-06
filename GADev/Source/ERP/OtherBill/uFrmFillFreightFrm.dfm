inherited FrmFillFreight: TFrmFillFreight
  Left = 193
  Top = 128
  Caption = #34917#36135#30003#35831#21333'_'#32534#36753#30028#38754
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    Top = 201
    Height = 267
    inherited cxPageDetail: TcxPageControl
      Height = 267
      ClientRectBottom = 267
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Height = 219
          inherited dbgList: TcxGridDBTableView
            object dbgListFSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'FSEQ'
              Options.Editing = False
              Width = 42
            end
            object dbgListcfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              Options.Editing = False
              Width = 83
            end
            object dbgListcfColorName: TcxGridDBColumn
              DataBinding.FieldName = 'cfColorName'
              Options.Editing = False
              Width = 60
            end
            object dbgListcfSIZEName: TcxGridDBColumn
              DataBinding.FieldName = 'cfSIZEName'
              Options.Editing = False
              Width = 51
            end
            object dbgListFWareHouseNumber: TcxGridDBColumn
              DataBinding.FieldName = 'FWareHouseNumber'
              Options.Editing = False
              Width = 83
            end
            object dbgListFWareHouseName: TcxGridDBColumn
              DataBinding.FieldName = 'FWareHouseName'
              Options.Editing = False
              Width = 100
            end
            object dbgListFWareHouseSeNumber: TcxGridDBColumn
              DataBinding.FieldName = 'FTIPWAREHOUSENumber'
              Visible = False
              Options.Editing = False
              Width = 94
            end
            object dbgListFWareHouseSeName: TcxGridDBColumn
              DataBinding.FieldName = 'FTIPWAREHOUSEName'
              Visible = False
              Options.Editing = False
              Width = 104
            end
            object dbgListFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'FQTY'
              Width = 94
            end
            object dbgListFPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FPRICE'
              Options.Editing = False
              Width = 80
            end
          end
          inherited dbgList2: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = dbgList2fAmount
              end
              item
                Format = '#.#'
                Kind = skSum
                Column = dbgList2CFPackNum
              end
              item
                Format = '#.#'
                Kind = skSum
                Column = dbgList2fTotalQty
              end>
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.GroupFooters = gfAlwaysVisible
            object dbgList2cfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = dbgList2cfMaterialNumberPropertiesButtonClick
              Width = 74
            end
            object dbgList2cfMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialName'
              Options.Editing = False
              Options.Focusing = False
              Width = 100
            end
            object dbgList2cfColorNumber: TcxGridDBColumn
              Caption = #39068#33394#32534#21495
              DataBinding.FieldName = 'CFColorCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2CFColorNamePropertiesButtonClick
              Width = 67
            end
            object dbgList2CFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Options.Editing = False
              Width = 52
            end
            object dbgList2CFCupName: TcxGridDBColumn
              DataBinding.FieldName = 'CFCupName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = dbgList2CFCupNamePropertiesButtonClick
              Width = 50
            end
            object dbgList2FTIPWAREHOUSENumber: TcxGridDBColumn
              DataBinding.FieldName = 'FTIPWAREHOUSENumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = dbgList2FTIPWAREHOUSENumberPropertiesButtonClick
              Visible = False
              Width = 83
            end
            object dbgList2FTIPWAREHOUSEName: TcxGridDBColumn
              DataBinding.FieldName = 'FTIPWAREHOUSEName'
              Visible = False
              Options.Editing = False
              Options.Focusing = False
              Width = 83
            end
            object dbgList2FWAREHOUSENumber: TcxGridDBColumn
              DataBinding.FieldName = 'FWAREHOUSENumber'
              Options.Editing = False
              Options.Focusing = False
              Width = 83
            end
            object dbgList2FWAREHOUSEName: TcxGridDBColumn
              DataBinding.FieldName = 'FWAREHOUSEName'
              Options.Editing = False
              Options.Focusing = False
              Width = 98
            end
            object dbgList2fPrice: TcxGridDBColumn
              DataBinding.FieldName = 'fPrice'
              Options.Editing = False
              Width = 51
            end
            object dbgList2fAmount: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount'
              Options.Editing = False
              Width = 63
            end
            object dbgList2CFPackName: TcxGridDBColumn
              DataBinding.FieldName = 'CFPackName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgList2Column1PropertiesButtonClick
              Visible = False
              Width = 60
            end
            object dbgList2CFPackNum: TcxGridDBColumn
              DataBinding.FieldName = 'CFPackNum'
              Visible = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 60
            end
            object dbgList2fAmount_1: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_1'
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 50
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
            object dbgList2fTotalQty: TcxGridDBColumn
              DataBinding.FieldName = 'fTotalQty'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 63
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
          Height = 222
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
      Height = 406
    end
  end
  inherited pnl_top: TPanel
    Height = 148
    inherited pnlCodeSM: TPanel
      Top = 102
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Height = 101
      ClientRectBottom = 101
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Height = 101
          inherited lbDescription: TLabel
            Left = 255
            Top = 61
            Width = 60
            Caption = #22791'   '#27880#65306
          end
          inherited Label5: TLabel
            Left = 6
            Top = 39
          end
          inherited Image4: TImage
            Left = 649
          end
          inherited imgTJ: TImage
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000038
              0000002008060000004703BBE8000000017352474200AECE1CE9000000046741
              4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
              80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
              0AF900000AF901B461DE19000003C0494441545847DD99318B144110850F4110
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
          object Label7: TLabel [7]
            Left = 493
            Top = 39
            Width = 59
            Height = 13
            Caption = #30003#35831#32452#32455':'
            Transparent = True
          end
          object Label10: TLabel [8]
            Left = 6
            Top = 61
            Width = 65
            Height = 13
            Caption = #24405#20837#26041#24335#65306
            Transparent = True
          end
          inherited imgGB: TImage
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000038
              0000002008060000004703BBE8000000017352474200AECE1CE9000000046741
              4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
              80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
              0B0C00000B0C013F4022C800000393494441545847DD99CF8B8F5114C627A594
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
            Left = 317
            Top = 56
            DataBinding.DataField = 'FDESCRIPTION'
            Width = 393
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 70
            Top = 34
            DataBinding.DataField = 'FBIZDATE'
            Width = 175
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 70
            DataBinding.DataField = 'FNUMBER'
          end
          object cxedtApplyOrg: TcxTextEdit
            Left = 555
            Top = 34
            Enabled = False
            Properties.ReadOnly = True
            TabOrder = 8
            Width = 156
          end
          object cxSupplyOrg: TcxDBLookupComboBox
            Left = 317
            Top = 9
            DataBinding.DataField = 'FSCMSTORAGEORGUNITID'
            DataBinding.DataSource = dsMaster
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'fName_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsSupplyOrg
            TabOrder = 9
            Width = 155
          end
          object cxbtnedtordertype: TcxDBLookupComboBox
            Left = 317
            Top = 34
            DataBinding.DataField = 'CFORDERTYPEID'
            DataBinding.DataSource = dsMaster
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'fName_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsOrderType
            TabOrder = 10
            Width = 157
          end
          object cxLabel3: TcxLabel
            Left = 249
            Top = 39
            Caption = #35746#21333#31867#22411#65306
            Transparent = True
          end
        end
      end
    end
  end
  inherited ImageListMainForm: TImageList
    Left = 544
    Top = 8
    Bitmap = {
      494C010138003B00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000F0000000010020000000000000F0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C31630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD848400BD848400BD84
      8400BD848400BD848400BD848400BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C316300CE9C9C009C316300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD848400F7DEB500F7D6
      AD00F7D6A500F7CE9C00F7CE8C00BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C316300CE9C9C00CE9C9C00CE9C9C009C3163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3163009C3163009C3163009C3163009C3163009C3163009C31
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C8400FFE7CE008C94
      DE001842F7008C8CCE00F7D69C00BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400FFEFDE00184A
      FF000031FF00184AF700F7DEAD00BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C316300CE9C9C00CE9C9C00CE9C9C009C316300CE9C9C00CE9C9C00CE9C
      9C009C31630000000000000000000000000000000000000000009C3163009C31
      63009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      63009C3163009C3163009C316300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEAD8400FFF7EF008C9C
      EF00184AFF008C94E700F7E7BD00BD8484000000000000000000000000000000
      000000000000FF94290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C31
      6300CE9C9C00CE9C9C00CE9C9C009C316300CE9C9C009C316300CE9C9C00CE9C
      9C00CE9C9C009C316300000000000000000000000000000000009C316300CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C009C316300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7B58C00FFFFF700FFF7
      EF00FFF7E700FFEFDE00FFEFCE00BD8484000000000000000000000000000000
      0000FF942900FF94290000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C316300CE9C
      9C00CE9C9C00CE9C9C009C316300CE9C9C00CE9C9C00CE9C9C009C316300CE9C
      9C00CE9C9C00CE9C9C009C316300000000000000000000000000000000009C31
      6300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C009C31630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400000000000000
      0000FFFFF700BD848400BD848400BD847300000000000000000000000000FF94
      2900FFCE2900FF942900FF942900FF942900FF942900FF942900FF942900FF94
      2900FF94290000000000000000000000000000000000000000009C3163009C31
      63009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      63009C3163009C3163009C316300000000000000000000000000000000000000
      00009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C009C316300000000000000000000000000B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B584840000000000EFBD9400000000000000
      000000000000BD848400D6946B00000000000000000000000000FF632900FFFF
      9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF
      9400FF9429000000000000000000000000000000000000000000000000000000
      00009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C009C31630000000000000000000000000000000000000000009C3163009C31
      63009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      63009C3163009C3163009C31630000000000B5848400EFD6B500E7BD9400E7B5
      8C00DEB58400DEAD7300EFC68400B584840000000000EFBD9400DEAD8400DEAD
      8400428C3900BD8484000000000000000000000000000000000000000000FF63
      2900FFFF9400FFFF940000000000FF632900FF632900FF632900FF632900FF63
      2900FF6329000000000000000000000000000000000000000000000000009C31
      6300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C009C316300000000000000000000000000000000009C316300CE9C
      9C00CE9C9C00CE9C9C009C316300CE9C9C00CE9C9C00CE9C9C009C316300CE9C
      9C00CE9C9C00CE9C9C009C31630000000000B5848400CE8C6B00942900009C31
      00009C3100009C310000E7B57B00B58484000000000000000000000000000073
      080042D6730031AD4A0000000000000000000000000000000000000000000000
      0000FF632900FFFF940000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C316300CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C009C316300000000000000000000000000000000009C31
      6300CE9C9C00CE9C9C00CE9C9C009C316300CE9C9C009C316300CE9C9C00CE9C
      9C00CE9C9C009C3163000000000000000000BD8C8400FFEFE700A54210009429
      000094290000BD734A00FFE7B500B58484000000000000000000007B08004ACE
      73005AE78C0039C65A00108C2100000000000000000000000000000000000000
      000000000000FF63290000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3163009C31
      63009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      63009C3163009C3163009C316300000000000000000000000000000000000000
      00009C316300CE9C9C00CE9C9C00CE9C9C009C316300CE9C9C00CE9C9C00CE9C
      9C009C316300000000000000000000000000CE9C840000000000D6AD94009421
      0000A5421000EFCEAD00FFEFC600B584840000000000428429001094210029AD
      4A0039CE630021AD3900189C2900087B10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C31
      630000000000000000000000000000000000DEAD840000000000FFF7F700AD5A
      3100CE947300FFF7DE00DECEB500B58484000000000000000000000000000073
      080021BD4200088C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3163009C3163009C3163009C3163009C3163009C3163009C31
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C316300CE9C9C00CE9C9C00CE9C9C009C3163000000
      000000000000000000000000000000000000E7B58C000000000000000000EFDE
      D600FFF7EF00B5848400B5848400B5847300000000000000000000000000087B
      100010AD21000884100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C316300CE9C9C009C316300000000000000
      000000000000000000000000000000000000EFBD940000000000000000000000
      000000000000B5848400DE9C6300000000000000000000000000088C10000894
      100008A51800007B080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C31630000000000000000000000
      000000000000000000000000000000000000EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400B58484000000000000000000008408000084080000941000089C
      1800008408000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003163000031
      6300003163000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B000000FF000031
      940000007B000031630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063630000FFFF0000CEFF0000FF
      FF0000CEFF000094CE0000CEFF000094CE000094CE000031CE0063CEFF000063
      FF00003194000031630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063630094FFFF0094FFFF0000CE
      FF0094FFFF0000CEFF000094CE0000CEFF000094CE000031CE0063CEFF000063
      FF000031940000316300000000000000000000000000FF632900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF632900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063630094FFFF0000CEFF0094FF
      FF0000CEFF0094FFFF0000CEFF000094CE0000CEFF000031CE0063CEFF000063
      FF000031940000316300000000000000000000000000FF632900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF632900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063630094FFFF00FFFFFF0000CE
      FF0094FFFF0000CEFF0094FFFF0000CEFF000094CE000031CE0063CEFF000063
      FF000031940000316300000000000000000000000000FF632900000000000000
      000000000000FF94290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF6329000000
      00000000000000000000FF632900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF6329000000
      0000000000000000000000000000000000000063630094FFFF0000CEFF00FFFF
      FF0000CEFF0094FFFF0000CEFF0094FFFF0000CEFF000031CE0063CEFF000063
      FF000031940000316300000000000000000000000000FF632900000000000000
      0000FF942900FF94290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF942900FF63
      29000000000000000000FF632900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF942900FF63
      2900000000000000000000000000000000000063630094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0000FFFF000031CE0094FFFF000063
      FF000031940000316300000000000000000000000000FF63290000000000FF94
      2900FFCE2900FF942900FF942900FF942900FF942900FF942900FF942900FF94
      2900FF9429000000000000000000000000000000000000000000FF632900FF94
      2900FF942900FF942900FF942900FF942900FF942900FF942900FF942900FFCE
      2900FF63290000000000FF632900000000000000000000000000FF632900FF94
      2900FF942900FF942900FF942900FF942900FF942900FF942900FF942900FFCE
      2900FF6329000000000000000000000000000063630000636300006363000063
      630000636300006363000063630000636300006363000031CE0094FFFF0063CE
      FF000031940000007B00000000000000000000000000FF632900FF632900FFFF
      9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF
      9400FF9429000000000000000000000000000000000000000000FF632900FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      9400FFCE290000000000FF632900000000000000000000000000FF632900FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFFCE00FFFF
      9400FFCE29000000000000000000000000000000000000636300EFFFFF0094FF
      FF0094FFFF000094CE00000000000000000000000000007B7B006363CE006363
      CE000031940000000000000000000000000000000000FF63290000000000FF63
      2900FFFF9400FFFF940000000000FF632900FF632900FF632900FF632900FF63
      2900FF6329000000000000000000000000000000000000000000FF632900FF63
      2900FF632900FF632900FF632900FF632900FF632900FF632900FFFFCE00FFCE
      29000000000000000000FF632900000000000000000000000000FF632900FF63
      2900FF632900FF632900FF632900FF632900FF632900FF632900FFFFCE00FFCE
      2900000000000000000000000000000000000000000000000000006363000063
      630000636300000000000000000000000000000000000000000039423900EFCE
      A5000000000000000000000000000000000000000000FF632900000000000000
      0000FF632900FFFF940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900FFCE29000000
      00000000000000000000FF632900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900FFCE29000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000073737300394239000000000039423900EFCE
      A5000000000000000000000000000000000000000000FF632900000000000000
      000000000000FF63290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900000000000000
      00000000000000000000FF632900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300FFEFCE00394239003942390084848400EFCE
      A5009431290000000000943129000000000000000000FF632900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900000000000000
      00000000000000000000FF632900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF632900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300FFFFFF00BDBDBD00BDBDBD00BDBDBD00FFFF
      FF00BDBDBD00BDBDBD00EFCEA500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300FFFFFF00EFCEA50000000000FFFFFF00FFFF
      FF00FFEFCE00FFEFCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000737373007373730000000000737373007373
      7300737373007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A5008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042182100EFEFEF00F7F7F700B5BDBD00C6C6C600B5B5B500FFFFFF00C6C6
      C600421821006B6B6B0000000000000000000000000000000000000000000000
      0000000000007B635200F7BD7B00DE843100DE733100D6731800734A39000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      520042182100EFEFEF00F7F7F700CEC6C600D6CECE00C6C6C600FFFFFF00C6C6
      CE00421821005252520000000000000000000000000000000000000000000000
      000000000000848484007B6352007B6352007B6352007B635200848484000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B004A4A4A004A4A
      4A004A4A4A00DEE7E700CED6D600848C8C008C8C8C00B5B5B500EFEFEF00C6CE
      CE004A4A4A004A4A4A00421821006B6B63000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000FF00000000000000FF00
      000000000000FF00000000000000FF00000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00000000000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630000000000000000007B7B7B004A4A4A005A5252005252
      52004A4A4A009C9C9C00ADADAD00ADB5B500B5B5B500B5B5B500A5A5A5009494
      9C004A4A4A0052525A004A525200421821000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CECECE00CECE
      CE00CECECE00FFFFFF00CECECE00000000000000000063636300CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE0063636300000000000000000052525200847B8400949C9C008C9C
      9C008C9C9400949C9C00949494008C8C8C007B847B0084948C008C949400949C
      9C008C849C00B5B5B5008CFF7B00421821000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FF00
      0000FFFFFF00FF00000000000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE0000000000000000006363630000636300CECE
      CE00CECECE00CECECE00006363000063630000636300CECECE00CECECE00CECE
      CE0000636300636363000000000000000000525252009C9C9C00BDBDBD00ADAD
      AD00948C8C00846B7300846B6B0084636B00845A6B007B636B008C6B6B008C63
      7300A57BA5008C4A5A00B5B5B500421821000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      000000000000000000000000000000000000FF000000FFFFFF00FF0000000000
      0000CECECE0000000000FF000000CECECE00FFFFFF0000000000CECECE00CECE
      CE00CECECE00FFFFFF00CECECE0000000000000000006363630000FFFF000063
      6300CECECE000063630000000000000000000000000000636300CECECE000063
      6300CECECE0063636300000000000000000063636300ADADAD00D6DEDE008C6B
      73009C6B7300A57B7B00BD8C8C00C68C9400BD8C9400BD8C9400C68C8C00A573
      7B00A56B7B008C4A5A00BDD6BD00525252000000000000000000000000000000
      0000000000000000000084848400FFFFFF00C6C6C6005A525200000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FF00
      000000000000FF00000000000000FF000000FFFFFF00FF000000CECECE00FFFF
      FF00CECECE00FFFFFF00CECECE00000000000000000063636300FFFFFF00FFFF
      FF000063630000000000FFFFFF00FFFFFF0000FFFF000000000000636300CECE
      CE00CECECE006363630000000000000000008C8C8C00B5B5B500CECECE007B4A
      5200844A52004A4A4A0042182100421821004218210042182100421821004A4A
      4A00844A52008C4A5A00C6C6CE00525252000000000000000000000000000000
      000000000000000000005A5252005A5252005A5252005A525200000000000000
      00000000000000000000000000005A525200FF000000FFFFFF00FF000000FFFF
      FF00FF00000000000000FFFFFF0000000000CECECE0000000000CECECE00FFFF
      FF00CECECE00FFFFFF00CECECE0000000000000000006363630000FFFF00CECE
      CE0000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00000000000063
      6300CECECE006363630000000000000000008C8C8C00B5B5B500CECECE004218
      21004A4A4A00A5A5A500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00A5A5
      A500393939004A212100CECECE0063636300000000005A5252005A5252000000
      0000000000005A525200848484008484840084848400848484005A5252000000
      000000000000000000005A5252005A52520000000000FF00000000000000FFFF
      FF0000000000FF000000FFFFFF00FF00000000000000FF000000FFFFFF00FFFF
      FF00CECECE00FFFFFF00CECECE00000000000000000063636300CECECE000000
      000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      00000063630063636300000000000000000000000000A5A5A500ADB5B5009C94
      940084737300BDBDBD00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7
      F7007B636B009C8C8C00ADB5B50000000000527B840084848400848484005A52
      52005A52520084848400C6C6C600C6C6C600C6C6C600848484005A5252005A52
      52005A5252005A525200C6C6C6005A525200FF00000000000000FF0000000000
      0000FF00000000000000FF00000000000000FF00000000000000CECECE00CECE
      CE00CECECE00FFFFFF00CECECE0000000000000000006363630000000000FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000006363630000000000000000000000000000000000000000000000
      000000000000BDBDBD00FFFFFF00FFFFFF00F7F7F700A5A5A500A5A5A500A5A5
      A5000000000000000000000000000000000063636300FFFFFF00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      840084848400C6C6C6005A5252000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000063636300FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00F7FFFF00FFFFFF00F7F7F700A5A5A500DEDEDE00A5A5
      A50000000000000000000000000000000000527B8400FFFFFF00C6C6C600C6C6
      C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600848484000000000000000000FF00000000000000FF0000000000
      0000FF00000000000000FF00000000000000FF00000000000000FFFFFF00FFFF
      FF009C9C9C00FFFFFF0000000000000000000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630000000000000000000000000000000000000000000000
      000000000000BDBDBD00F7F7F700F7F7F700F7F7F700A5A5A500A5A5A5000000
      00000000000000000000000000000000000063636300FFFFFF00FFFFFF008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400848484000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00A5A5A500A5A5A500A5A5A500A5A5A500000000000000
      0000000000000000000000000000000000000000000084848400848484000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD5A5A00AD5A5A00E7C6C600E7C6C600E7C6C600C6CE
      C600C6CEC600C6CEC600AD5A5A00943131000000000000000000000000000000
      000000000000000000000000000021A5CE0029ADCE001084AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000029ADD60021ADD6000000000000000000000000000000
      000000000000000000000000000000000000B58C8C008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A00BD7B7300C65A5A00E7C6C6009C393900B5737300C6CE
      C600F7F7F700F7F7F700C65A5A009431310000000000000000000000000029A5
      CE0021A5CE000884AD00109CC60021ADD60031B5D600188CB5001084AD0042AD
      CE0039ADCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000636B6B009494940094949400000000000000000000000000000000000000
      0000000000000000000029ADD60084EFFF004AC6E7004AC6E70031B5DE0021AD
      D60000000000000000000000000000000000B58C8C00FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500BD7B7300C65A5A00C6948C009C3939009C4A4A00E7C6
      C600C6C6C600F7F7F700C65A5A009431310000000000000000000000000031A5
      CE0031BDDE0010ADDE0010A5CE0018C6F7004AD6FF0031A5CE005AC6DE0063C6
      DE0039A5C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      520094949400FFFFFF00EFEFEF00A5A5A5000000000000000000000000000000
      0000000000000000000029ADD600ADFFFF008CF7FF008CF7FF008CF7FF0063DE
      F70031B5DE0031B5DE000000000000000000B58C8C00FFD6A500FFD6A500FFD6
      A500FFD6A500FFD6A500BD7B7300C65A5A00C6948C00C6948C00BDA5A500BDA5
      A500E7C6C600C6CEC600C65A5A009431310000000000218CB500299CBD004AB5
      D60084DEEF0052C6DE0039CEEF0018D6FF0039DEFF005AD6F70073C6DE00B5E7
      EF0094CEE700188CB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010001010
      10007B7B7B00E7E7E700A5A5A500000000000000000000000000000000000000
      0000000000000000000029ADD600ADEFF70094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF0031B5DE000000000000000000B58C8C00F7DEC600F7DEC600F7DE
      C600F7DEC600F7DEC600BD7B7300AD524A00B55A5A00C65A5A00C65A5A00C65A
      5A00C65A5A00C65A5A00C65A5A00943131000000000063BDD6004AB5D60052BD
      E70094EFFF008CEFFF005AE7FF0021DEFF0018DEFF0052E7FF007BEFFF007BEF
      FF0039CEEF0031B5DE0029A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010101000101010004242
      42007B7B7B008C8C8C0000000000000000000000000000000000000000000000
      0000A5947B00AD847B0029ADD60029ADD600A5EFF700A5EFF700A5F7FF008CEF
      FF008CEFFF00005A000031B5DE0000000000B58C8C00F7DEC600F7DEC600F7DE
      C6008484840000000000BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700C65A5A0094313100000000001094C60021A5D6004AC6
      EF0084DEF70094EFFF0073D6EF005ABDCE0052B5CE0029C6EF0000D6FF0000CE
      FF0008D6FF0008CEF70008B5E700000000000000000000000000000000000000
      00000010E700D6D6D60000000000000000001010100010101000424A52008484
      84006B6B6B00000000000000000000000000000000000000000000000000A57B
      6300BD633900C663420029ADD60084EFFF0029ADD60029ADD60029ADD600ADEF
      F700005A000042E77300005A000031B5DE00B58C8C00F7EFDE00F7EFDE008484
      840084000000FF000000BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7
      F700FFFFF700FFF7F700C65A5A009431310000000000188CBD0029ADDE0039BD
      E7006BD6F70094C6D6009494940094949400949494009494940042BDDE0000D6
      FF0010D6FF0018D6FF00089CCE00000000000000000000000000000000000000
      00003139BD00ADCEE700000000001010100010101000424A5200848484006B6B
      6B00000000000000000000000000000000000000000000000000BD734A00C65A
      1800A54218008C52210029ADD60094F7FF0094F7FF008CF7FF006BDEF700005A
      000031CE5A0029C6520018B53100005A0000B58C8C00F7EFDE00F7EFDE008484
      0000FF00000084840000BD7B7300AD524A00FFF7F700FFF7F700FFF7F700FFF7
      F700FFFFF700FFF7F700C65A5A0094313100000000001894BD0021ADDE0031B5
      E7005ACEF70094949400EFE7E700B5B5B500ADA5A500E7B5B500949494005ADE
      FF009CF7FF00B5EFFF00399CBD00000000000000000000000000000000000000
      00003139BD005A73E70021080000101010004242420084848400737373000000
      00000000000000000000000000000000000000000000BD734A00BD521000A539
      0000AD4200003163000029ADD60094FFFF0094F7FF008CEFFF008CEFFF0094EF
      FF000873100018B531000884100000000000B58C8C00FFF7EF00FFF7EF008484
      0000C6C6C600C6C6C600BD7B7300AD524A00FFF7F700FFF7F700FFFFF700FFFF
      F700FFFFF700FFF7F700C65A5A009431310000000000108CBD00189CCE0021AD
      DE0042C6EF0094949400EFE7E700B5B5B500ADA5A500DEB5B500949494007BE7
      FF00ADEFFF008CCEE7004AA5C6000000000000000000000000000010E7007B94
      C60018A5FF001052BD000008A5003139BD008C847B006B6B6300000000000000
      000000000000000000000000000000000000B58473009C524200AD420000CE5A
      0000BD6B0000007B000021ADD6009CF7FF009CF7FF006BDEF7006BDEF70029AD
      D60000630800089C1800006B080000000000B58C8C00FFF7EF00FFF7EF008484
      0000C6C6C60084840000BD7B7300AD524A00D6D6D600CEB5B500CEB5B500CEB5
      B500CEB5B500D6D6D600AD524A009431310000000000000000000884AD0021A5
      D60031BDEF0094949400EFE7E700B5B5B500ADA5A500DEB5B5009494940063E7
      FF006BCEE700007BA500000000000000000000000000000000005A73E700089C
      FF0042E7F70042E7F7002973F700394A9400635A4A0000000000000000000000
      000000000000000000000000000000000000B58473009C524200CE5A0000D67B
      0000848C000039940000C68400001894CE001894CE001894CE00B58C0000B58C
      0000005A0000008C08000000000000000000B58C8C00FFF7EF00FFF7EF00C6C6
      C6008484000084848400FF0000000084000084840000C6C6C600FFF7EF00BDAD
      AD00A57B7300000000000000000000000000000000000000000000000000108C
      B500088CBD0094949400EFE7E700B5B5B500ADA5A500E7BDB50094949400189C
      C6002194BD0000000000000000000000000042A5DE002973F700089CFF0042E7
      F700CEF7FF008CF7FF004ABDFF002973F7002973F70094A5EF00ADCEE7000000
      000000000000000000000000000000000000B58473009C524200C673000029A5
      180031AD2100D6AD1800FF9C0800E78C0000E78C0000B58C0000C6840800005A
      0000008C0800005A00000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600848400008484000084840000C6C6C600FFFFFF00FFFFFF00BDAD
      AD00B58473000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700ADADAD00ADA5A500DEB5B500949494000000
      000000000000000000000000000000000000ADCEE7002973F700299CEF0042E7
      F700CEF7FF008CF7FF004ABDFF00299CEF002973F7007B94C600ADB5CE000000
      000000000000000000000000000000000000B5847300BD734A007B94080010C6
      4A0031CE63007BCE6B00FFCE5A00FFA51000B58C0000005A0000005A0000005A
      0000005A0000000000000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00B58C8C00B58C
      8C00B58C8C000000000000000000000000000000000000000000000000000000
      00000000000094949400B5B5B500A5A5A5009C949400ADA5A500949494000000
      00000000000000000000000000000000000000000000000000005A73E70018A5
      FF0042E7F70042E7F7000094F70094A5EF000000000000000000000000000000
      000000000000000000000000000000000000B5847300BD734A0031BD390042D6
      7300A5E79C00A5F7B500D6E79400D6B52900B58C0000B58C0000C6840800A594
      7B0000000000000000000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00BD84
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700C6C6C600A5A5A500B5A5A500949494000000
      00000000000000000000000000000000000000000000000000002973F70094A5
      EF0031ADFF001094EF0094A5EF0042A5DE000000000000000000000000000000
      00000000000000000000000000000000000000000000A5947B0084C6730063DE
      7B00BDF7AD00D6FFBD005ADE840039B53100F78C0000C6840800A5947B000000
      000000000000000000000000000000000000B58C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C8C00BD8484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700EFEFEF00BDBDBD00A59C9C00949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002973F70042A5DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5947B00ADC6
      8C00A5D6840094DE8C0052CE63004AB53900D69C4200A5947B00000000000000
      000000000000000000000000000000000000B58C8C00B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00BD848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094949400949494009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADCEE7007B94C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B584
      7300B5847300B5847300B5847300B5847300B584730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242004242420042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6363006B31310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073849C0000428C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00C6C6C600FFFFFF0084848400848484004242
      4200000000000000000000000000000000000000000000000000000000000000
      00009C6363009C636300BD636300BD6B6B006B31310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00000000000000000000000000000000000000
      000000000000000000002173AD001873AD0029528400297BB50029A5D600295A
      8C00005294000863A50000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00424242004242420042424200424242004242
      42000000000000000000000000000000000000000000000000009C6363009C63
      6300C66B6B00D66B6B00D66B6B00C66B6B006B3131009C6363009C6363009C63
      63009C6363009C6363009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00000000000000000000000000000000000000
      000000000000000000004AADDE0042B5E7000863A5002994CE0031ADDE00086B
      AD001094C6001094CE0000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00C6C6C600FFFFFF0084848400848484004242
      42000000000000000000000000000000000000000000000000009C636300DE73
      7300D6737300D66B7300D66B6B00C66B6B006B313100FFA5A500FFADB500FFBD
      BD00FFC6C600FFC6C6009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00CECECE00CECECE00CECECE00CECECE00FFFFFF00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE00000000000000000000000000000000000000
      00000000000021529400298CC6004ABDEF0042BDEF0042B5E70031ADDE0029A5
      DE0018A5D6001094C60000428C0052638400000000000000000000ADFF000000
      000000000000000000008C8C8C00848484008484840084848400848484004242
      420000000000000000000000000000ADFF0000000000000000009C636300E773
      7B00DE737300DE737300DE737300CE6B73006B31310039C6630021CE630029CE
      630018CE5A00FFC6C6009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00009C00009C9C9C00009C00009C9C9C00FFFF
      FF00CECECE00FFFFFF00CECECE00000000000000000000000000000000000000
      000000000000214A940042ADE70052C6F7004ABDEF0063BDE7004A849C001873
      A5001094CE001094C600006BA50021639400000000000000000000000000006B
      FF00000000000084FF000084840000FFFF0000FFFF0000CEFF0000FFFF000084
      8400426BB50000000000006BFF000000000000000000000000009C636300E77B
      7B00E77B7B00DE7B7B00DE737B00D67373006B31310042C66B0031CE630031CE
      630021CE6300FFC6C6009C63630000000000009C00009C9C9C00009C00009C9C
      9C00009C00009C9C9C00009C0000FFFFFF00009C00009C9C9C00009C0000FFFF
      FF00CECECE00FFFFFF00CECECE00000000000000000000000000000000000000
      0000000000006BC6E70052C6EF004ABDEF006BC6EF00DEDEDE006B6B6B00295A
      73001094C6000894CE00109CCE0063ADBD000000000000000000000000000000
      000000ADFF000084FF0000FFFF0000E7F70000E7FF0000E7FF0000E7F70000FF
      FF00426BB50000ADFF00000000000000000000000000000000009C636300EF84
      8400E77B8400E77B7B00E7848400D67373006B31310039C6630029CE630029CE
      630021CE5A00FFC6C6009C636300000000009C9C9C00009C00009C9C9C00009C
      00009C9C9C00009C0000FFFFFF00009C00009C9C9C00009C0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00000000000000000000000000000000000000
      000000000000218C390039A5B5004ABDEF006BC6EF00DEDEDE006B6B6B00316B
      7B0018A5D600189CCE00189CCE00000000000000000000ADFF00000000000000
      00005ABDFF0000FFFF0000E7FF0000EFFF0000EFFF0000E7FF0000E7FF0000DE
      FF0000FFFF00426BB500000000000000000000000000000000009C636300F784
      8C00EF848400EF949400FFDEDE00DE8C8C006B313100BDE7AD006BDE8C005AD6
      840042D67300FFC6C6009C63630000000000009C00009C9C9C00009C00009C9C
      9C00009C0000FFFFFF00009C00009C9C9C00009C00009C9C9C00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE00000000000000000063A55A00088C1000007B
      00003994290039CE520031AD9C0042B5DE0063C6D600D6D6D60063636300426B
      7B0029A5D60029A5D60000000000000000000000000000000000006BFF005ABD
      FF00C6FFFF0029EFFF0000EFFF0000F7FF0000FFFF0000FFFF0000E7FF0000E7
      FF0000DEFF0000FFFF00426BB500006BFF0000000000000000009C636300F78C
      8C00EF848400F79C9C00FFDEDE00DE8C8C006B313100FFF7DE00FFFFE700FFFF
      DE00EFFFD600FFC6C6009C63630000000000FFFFFF00009C00009C9C9C00009C
      0000FFFFFF00009C00009C9C9C00009C00009C9C9C00009C0000FFFFFF00FFFF
      FF00CECECE00FFFFFF00CECECE000000000000000000299C29004ADE6B0021B5
      310018AD290039CE520018A5390018A55A0042B54200C6B59C00525252008C73
      630042A5C600189CCE0000000000000000000000000000000000000000005ABD
      FF00C6FFFF006BFFFF0021FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000EF
      FF0000E7FF0000CEFF00426BB5000000000000000000000000009C636300FF94
      9400F78C8C00F78C8C00F78C8C00DE7B84006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFE700FFC6C6009C63630000000000FFFFFF00FFFFFF00009C0000FFFF
      FF00009C00009C9C9C00009C00009C9C9C00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE000000000000000000318C18004ADE6B004AE7
      730039D65A0039CE520029C6420021BD310018A51800219418006B8442000000
      0000000000000000000000000000000000000000000000000000006BFF005ABD
      FF00C6FFFF00E7FFFF0031FFFF0008FFFF0000FFFF0000FFFF0000FFFF0000F7
      FF0000E7FF0000FFFF00426BB500006BFF0000000000000000009C636300FF94
      9C00FF949400FF949400FF949400E78484006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C63630000000000FFFFFF00009C0000FFFFFF00009C
      00009C9C9C00009C00009C9C9C00009C00009C9C9C00CECECE00FFFFFF00FFFF
      FF00CECECE00FFFFFF00CECECE000000000039A5390021B531004AE773004AE7
      730073D6840073B584001894210010A5180010A51800089C0800529429000000
      0000000000000000000000000000000000000000000000ADFF00000000005ABD
      FF00C6FFFF00E7FFFF006BFFFF0031FFFF0000FFFF0000FFFF0000FFFF0000F7
      FF0000FFFF0000CEFF00426BB5000000000000000000000000009C636300FF9C
      9C00FF949C00FF949400FF949C00E78C8C006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C63630000000000009C0000FFFFFF00009C00009C9C
      9C00009C00009C9C9C00009C00009C9C9C00009C00009C9C9C00CECECE00CECE
      CE00CECECE00FFFFFF00CECECE000000000094E7A5006BF7940052EF7B004ADE
      6B00D6D6D600A5A5A500217B29000894080008A5100010A5180073C663000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005ABDFF00C6FFFF00E7FFFF0073FFFF0021FFFF0000FFFF0000FFFF0000FF
      FF0000CEFF00426BB500000000000000000000000000000000009C636300FF9C
      A500FF9C9C00FF9C9C00FF9C9C00E78C8C006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C636300000000009C9C9C00009C00009C9C9C00009C
      00009C9C9C00FFFFFF009C9C9C00009C00009C9C9C00009C0000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000042D663004ADE6B004ADE
      6B00D6D6D600A5A5A500399C420021BD310018A518004AA52900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000006BFF005ABDFF00C6FFFF00E7FFFF00E7FFFF0000FFFF0000FFFF0000CE
      FF00426BB500006BFF00000000000000000000000000000000009C6363009C63
      6300EF8C8C00FF9C9C00FF9C9C00EF8C94006B313100FFF7D600FFFFDE00FFFF
      DE00FFFFDE00FFC6C6009C63630000000000009C00009C9C9C00009C00009C9C
      9C00FFFFFF00FFFFFF00FFFFFF009C9C9C00009C00009C9C9C00FFFFFF00FFFF
      FF009C9C9C00FFFFFF00000000000000000000000000000000005AE77B004ADE
      6B00CECECE008C8C8C005A944A0052BD4A0063C6630000000000000000000000
      0000000000000000000000000000000000000000000000000000006BFF0000AD
      FF0000000000000000005ABDFF005ABDFF0010B5FF0010B5FF0010B5FF0010B5
      FF00000000000000000000ADFF00006BFF000000000000000000000000000000
      00009C636300B5737300D6848400DE8C8C006B3131009C6363009C6363009C63
      63009C6363009C6363009C636300000000000000000000000000000000009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C9C9C0000000000000000000000000000000000000000000000000042D6
      6300B5A58C00736B63008CB54A0021B529000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C6363009C6363006B31310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000021A5CE0029ADCE001084AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400FFEF
      D600D6DEAD00DEDEAD00F7DEB500EFD6A500EFD69C00F7CE9C00F7CE9400F7CE
      9C00F7CE9C00F7D69C00B58484000000000073DE940018633100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000029A5
      CE0021A5CE000884AD00109CC60021ADD60031B5D600188CB5001084AD0042AD
      CE0039ADCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400FFEF
      DE00ADCE940042AD39008CBD6B0031A5290031A529007BB55200D6C68C00EFCE
      9400EFCE9400F7D69C00B58484000000000073DE940021844200186331000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000031A5
      CE0031BDDE0010ADDE0010A5CE0018C6F7004AD6FF0031A5CE005AC6DE0063C6
      DE0039A5C6000000000000000000000000000000000000000000000000000000
      00000000000000000000A5947B00AD847B009C636300BD734A00000000000000
      0000000000000000000000000000000000000000000000000000B5847300FFF7
      E700CEDEAD0021A51800009C0000009C0000009C0000009C000042AD2900E7CE
      9400EFCE9400F7D69C00B58484000000000073DE940029A5520029A552001863
      3100000000000000000000000000000000000000000000000000000000000000
      000031CE630018633100000000000000000000000000218CB500299CBD004AB5
      D60084DEEF0052C6DE0039CEEF0018D6FF0039DEFF005AD6F70073C6DE00B5E7
      EF0094CEE700188CB50000000000000000000000000000000000000000000000
      000000000000A57B6300BD633900C6634200C66342009C52420084736B000000
      0000000000000000000000000000000000000000000000000000B5847300FFF7
      EF00CEDEB50021A51800009C000029A52100BDCE8C008CBD6B00089C080094BD
      6300EFCE9C00F7D69C00B58484000000000073DE94002184420029A552002184
      4200186331001863310018633100186331001863310018633100000000000000
      000031CE63001863310000000000000000000000000063BDD6004AB5D60052BD
      E70094EFFF008CEFFF005AE7FF0021DEFF0018DEFF0052E7FF007BEFFF007BEF
      FF0039CEEF0031B5DE0029A5CE00000000000000000000000000000000000000
      0000BD734A00C65A1800A54218008C522100B5421800BD522900CE6339008442
      3100000000000000000000000000000000000000000000000000BD8C8400FFFF
      F700CEDEBD0010A51000009C0000089C08009CC67B00F7DEBD00BDC68C0084BD
      6B00F7D6A500F7D69C00B58484000000000073DE9400218442001863310029A5
      520029A5520029A5520029A5520029A5520029A5520018633100000000000000
      000000000000000000000000000000000000000000001094C60021A5D6004AC6
      EF0084DEF70094EFFF0073D6EF005ABDCE0052B5CE0029C6EF0000D6FF0000CE
      FF0008D6FF0008CEF70008B5E70000000000000000000000000000000000BD73
      4A00BD521000A5390000AD420000316300006B4A0000AD390000A5390800BD5A
      3900735242000000000000000000000000000000000000000000BD8C8400FFFF
      FF00EFEFDE00B5DEA500ADD69C00ADCE9400ADCE9400F7DEC600F7DEBD00B5D6
      9400F7D6AD00F7D6A500B58484000000000073DE940021844200186331000000
      0000000000000000000073DE940029A552002184420000000000000000000000
      000031CE630018633100000000000000000000000000188CBD0029ADDE0039BD
      E7006BD6F70094C6D6009494940094949400949494009494940042BDDE0000D6
      FF0010D6FF0018D6FF00089CCE00000000000000000000000000BD734A009C52
      4200AD420000CE5A0000BD6B0000007B000021730000C65A0000B54A00007363
      2100845A31007352420000000000000000000000000000000000CE9C8400FFFF
      FF00BDE7B500FFF7EF00F7EFDE00B5D69C00ADCE9400ADCE8C00B5CE8C00EFDE
      B500F7DEB500F7DEAD00B58484000000000073DE940021844200186331000000
      00000000000031CE630029A55200186331000000000000000000000000000000
      000031CE6300186331000000000000000000000000001894BD0021ADDE0031B5
      E7005ACEF70094949400EFE7E700B5B5B500ADA5A500E7B5B500949494005ADE
      FF009CF7FF00B5EFFF00399CBD00000000000000000000000000BD734A009C52
      4200CE5A0000D67B0000848C000039940000C6840000BD7B000021730000086B
      0800636B2900BD734A0000000000000000000000000000000000CE9C8400FFFF
      FF008CD68C00C6E7BD00FFF7EF009CCE8C00089C0800009C000010A51000F7DE
      C600F7DEBD00FFDEB500B58484000000000073DE940021844200186331000000
      000073DE940029A5520021844200000000000000000000000000000000000000
      00000000000021844200186331000000000000000000108CBD00189CCE0021AD
      DE0042C6EF0094949400EFE7E700B5B5B500ADA5A500DEB5B500949494007BE7
      FF00ADEFFF008CCEE7004AA5C600000000000000000000000000BD734A009C52
      4200C673000029A5180031AD2100D6AD1800FF9C0800E78C0000318400000073
      0000426B1000636B290000000000000000000000000000000000DEAD8400FFFF
      FF009CD69C00089C080094D68C00C6DEB50031AD2900009C000021A51800F7E7
      CE00F7E7C600F7DEB500B58484000000000073DE9400218442001863310031CE
      630029A552001863310000000000000000000000000031CE6300186331000000
      0000000000000000000031CE63001863310000000000000000000884AD0021A5
      D60031BDEF0094949400EFE7E700B5B5B500ADA5A500DEB5B5009494940063E7
      FF006BCEE700007BA500000000000000000000000000000000009C524200BD73
      4A007B94080010C64A0031CE63007BCE6B00FFCE5A00FFA510006B8C00000084
      0000296B0000296B000000000000000000000000000000000000DEAD8400FFFF
      FF00F7FFF70042B54200009C0000009C0000009C0000009C000021A51800FFEF
      DE00E7DEC600C6BDAD00B58484000000000073DE940029A5520073DE940029A5
      5200218442000000000000000000000000000000000031CE6300218442000000
      0000000000000000000031CE630021844200000000000000000000000000108C
      B500088CBD0094949400EFE7E700B5B5B500ADA5A500E7BDB50094949400189C
      C6002194BD000000000000000000000000000000000000000000A5947B00BD73
      4A0031BD390042D67300A5E79C00A5F7B500D6E79400D6B52900B58C00003184
      00005A7B2900A5947B0000000000000000000000000000000000E7B58C00FFFF
      FF00FFFFFF00E7F7E70084CE840039B5390039AD31008CCE840042AD3900AD84
      7300BD847B00BD847B00B58484000000000073DE940029A5520029A552001863
      3100000000000000000000000000000000000000000031CE630029A552000000
      0000000000000000000031CE6300218442000000000000000000000000000000
      00000000000094949400E7E7E700ADADAD00ADA5A500DEB5B500949494000000
      000000000000000000000000000000000000000000000000000000000000A594
      7B0084C6730063DE7B00BDF7AD00D6FFBD005ADE840039B53100F78C0000C684
      0800A5947B000000000000000000000000000000000000000000E7B58C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFF7EF00E7F7E700FFFFFF00BDC6AD00A58C
      6B00EFB57300EFA54A00C6846B000000000073DE940029A55200218442000000
      000000000000000000000000000000000000000000000000000031CE63001863
      3100186331001863310031CE6300186331000000000000000000000000000000
      00000000000094949400B5B5B500A5A5A5009C949400ADA5A500949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5947B00ADC68C00A5D6840094DE8C0052CE63004AB53900D69C4200A594
      7B00000000000000000000000000000000000000000000000000EFBD9400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600BD84
      7B00FFC67300CE947300000000000000000073DE940018633100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700C6C6C600A5A5A500B5A5A500949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5947B00A5947B00AD847B00A5947B00A5947B00A5947B000000
      0000000000000000000000000000000000000000000000000000EFBD9400FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00BD84
      7B00CE9C840000000000000000000000000073DE940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400E7E7E700EFEFEF00BDBDBD00A59C9C00949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFBD9400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094949400949494009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001073FF001073FF001073
      FF001073FF001073FF001073FF001073FF001073FF001073FF001073FF001073
      FF001073FF001073FF001073FF000852FF00000000001073FF001073FF001073
      FF001073FF001073FF001073FF001073FF001073FF001073FF001073FF001073
      FF001073FF001073FF001073FF0000000000000000001073FF001073FF001073
      FF001073FF001073FF001073FF001073FF001073FF001073FF001073FF001073
      FF001073FF001073FF001073FF0000000000AD4A1000AD4A1000AD4A1000B54A
      1000B54A1000B54A1000B54A1000B54A1000AD4A1000AD4A1000000000000000
      000000000000000000000000000000000000106BFF0021A5FF0021A5FF0021A5
      FF00218CFF003184FF00217BFF001884FF001894FF00219CFF0021A5FF0021A5
      FF0021A5FF0021A5FF0021A5FF00106BFF00106BFF0021A5FF0021A5FF00219C
      FF001873FF00186BFF001073FF001884FF00219CFF00219CFF00188CFF00219C
      FF00219CFF00188CFF00219CFF00106BFF00106BFF0021A5FF0021A5FF0021A5
      FF002194FF00217BFF00187BFF00188CFF002994FF00297BFF00188CFF0021A5
      FF0021A5FF0021A5FF0021A5FF00106BFF00AD4A1000AD4A1000D6522100F763
      4A00FF6B5200FF7B5A00FF846300FF735A00F7634A00C6522900AD4A10000000
      000000000000000000000000000000000000106BFF00219CFF00219CFF0094CE
      FF00F7F7FF00A5D6FF0073C6FF00CEDEFF00C6CEFF00297BFF00219CFF00219C
      FF00219CFF00219CFF00219CFF00106BFF00106BFF00219CFF0031A5FF00B5CE
      FF00E7F7FF0094D6FF00BDDEFF00ADBDFF001873FF0094C6FF00A5B5FF00106B
      FF009CC6FF009CADFF001884FF00106BFF00106BFF00219CFF00219CFF0084C6
      FF00E7EFFF00B5DEFF007BC6FF0052ADFF00F7FFFF00FFFFFF003184FF00219C
      FF00219CFF00219CFF00219CFF00106BFF00AD4A1000AD4A1000DE522900F773
      5200FF8C6B00FF7B5A00FFBDB500FFC6C600F7634200CE523100AD4A18000000
      0000000000000000000000000000000000001063FF00219CFF0084C6FF00FFFF
      FF0073ADFF00219CFF00219CFF00FFFFFF00FFFFFF00297BFF00219CFF00219C
      FF00219CFF00219CFF00219CFF001063FF001063FF00219CFF00D6EFFF00EFF7
      FF0039A5FF00219CFF00C6E7FF00FFFFFF00217BFF00FFFFFF00FFFFFF003173
      FF00DEEFFF00E7E7FF00187BFF001063FF001063FF00219CFF007BC6FF00FFFF
      FF007BB5FF00219CFF00219CFF00219CFF00F7FFFF00FFFFFF00317BFF00219C
      FF00219CFF00219CFF00219CFF001063FF0000000000B54A1800E7633900FF8C
      6B00FF8C6300FF947300FFEFEF00FFEFEF00F77B6300C6522900AD4A18000000
      0000000000000000000000000000000000001063FF001894FF00DEEFFF00F7F7
      FF00187BFF001894FF002194FF00FFFFFF00FFFFFF00296BFF001873FF00186B
      FF00188CFF001894FF001894FF001063FF001063FF0052ADFF00FFFFFF0094B5
      FF001894FF001894FF00C6E7FF00FFFFFF00528CFF00FFFFFF00FFFFFF006B8C
      FF00DEEFFF00E7E7FF001073FF001063FF001063FF001894FF00DEEFFF00F7F7
      FF00187BFF001894FF001894FF001894FF00F7FFFF00FFFFFF00317BFF001894
      FF001894FF001894FF001894FF001063FF0000000000AD4A1800DE634200FF8C
      5A00F7845A00DEB5AD00EFF7F700FFDECE00FF946B00CE633900AD4A10000000
      0000000000000000000000000000000000000863FF00188CFF00FFFFFF00DEE7
      FF001073FF00188CFF00188CFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6CE
      FF00107BFF00188CFF00188CFF000863FF000863FF0073B5FF00FFFFFF00739C
      FF00188CFF00188CFF00C6E7FF00FFFFFF008CA5FF00EFF7FF00D6DEFF00ADBD
      FF00D6DEFF00E7E7FF001073FF000863FF000863FF00188CFF00FFFFFF00DEE7
      FF001073FF00188CFF00188CFF00188CFF00F7FFFF00FFFFFF00317BFF002994
      FF001884FF00188CFF00188CFF000863FF000000000000000000E76B3900944A
      42004A396B0029428400314A8C006B526B00DE6B4200CE632900000000000000
      000000000000000000000000000000000000085AFF001884FF00F7FFFF00F7F7
      FF001063FF001884FF001884FF00FFFFFF00FFFFFF0073A5FF006BB5FF005AA5
      FF003184FF001884FF001884FF00085AFF00085AFF006BB5FF00FFFFFF0094A5
      FF00187BFF001884FF00C6DEFF00FFFFFF00C6D6FF00B5C6FF009CC6FF00EFEF
      FF00DEE7FF00E7E7FF00106BFF00085AFF00085AFF001884FF00F7FFFF00F7F7
      FF001063FF001884FF001873FF00106BFF00F7FFFF00FFFFFF00296BFF00186B
      FF002973FF001884FF001884FF00085AFF000000000000000000000000001831
      94000039AD000839A50000319C0000218C0029297B0000000000000000000000
      000000000000000000000000000000000000085AFF00187BFF00C6DEFF00FFFF
      FF004A7BFF00187BFF00187BFF00FFFFFF00FFFFFF0084A5FF007B9CFF007B9C
      FF005A8CFF00106BFF00187BFF00085AFF00085AFF004294FF00FFFFFF00DEE7
      FF00085AFF00187BFF00C6DEFF00FFFFFF00FFFFFF007BA5FF005AA5FF00FFFF
      FF00FFFFFF00E7E7FF00106BFF00085AFF00085AFF00187BFF00CEE7FF00FFFF
      FF004A73FF00298CFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084ADFF00106BFF00187BFF00085AFF00000000000000000000104200105A
      CE001852BD001852BD001852BD001852BD000039AD0000000000000000000000
      0000000000000000000000000000000000000852FF001073FF0073ADFF00FFFF
      FF00C6D6FF00085AFF00187BFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0073A5FF00296BFF001073FF000852FF000852FF00107BFF00DEEFFF00FFFF
      FF00527BFF00106BFF00C6DEFF00FFFFFF00FFFFFF004284FF00217BFF00FFFF
      FF00FFFFFF00E7EFFF00106BFF000852FF000852FF001073FF007BB5FF00FFFF
      FF00BDCEFF00186BFF00BDD6FF00BDD6FF00BDD6FF00BDD6FF00BDD6FF00BDD6
      FF007BADFF00296BFF001073FF000852FF000000000000000000103984002173
      F700216BDE001863CE001863CE00216BD600185AC60000000000000000000000
      0000000000000000000000000000000000000852FF001073FF001873FF00E7F7
      FF00FFFFFF007394FF000863FF001873FF001873FF001873FF001873FF001873
      FF004A94FF00638CFF001073FF000852FF000852FF001073FF006BA5FF00FFFF
      FF00E7EFFF001852FF002173FF00297BFF00297BFF001073FF001073FF00297B
      FF00A5C6FF002163FF001073FF000852FF000852FF001073FF00217BFF00EFF7
      FF00FFFFFF00638CFF001063FF001073FF001073FF001073FF001073FF001073
      FF004A94FF005A84FF001073FF000852FF000000000000000000103973002173
      DE002163BD001863CE00185AC6002173DE00216BDE0000000000000010000000
      00000039FF00000000000008290000000000084AFF00106BFF00106BFF005A9C
      FF00FFFFFF00FFFFFF006B8CFF00085AFF00106BFF00106BFF00106BFF00106B
      FF0084B5FF00739CFF00106BFF00084AFF00084AFF00106BFF00106BFF00CEDE
      FF00FFFFFF00D6DEFF001852FF000863FF00106BFF00106BFF00106BFF00106B
      FF00DEE7FF00185AFF00106BFF00084AFF00084AFF00106BFF00106BFF006BA5
      FF00FFFFFF00FFFFFF005A7BFF00085AFF00106BFF00106BFF00106BFF00106B
      FF007BADFF00739CFF00106BFF00084AFF000000000000000000081010000008
      1000104273003194F700298CF7003194FF00217BEF0000000000000831000039
      FF00000000000039FF000021940000000000084AFF001063FF001063FF001063
      FF008CB5FF00FFFFFF00FFFFFF00ADBDFF003163FF000852FF000852FF005284
      FF00F7F7FF00638CFF001063FF00084AFF00084AFF001063FF001063FF002973
      FF00E7EFFF00FFFFFF00E7EFFF006384FF00084AFF000852FF000852FF008CAD
      FF00F7F7FF00105AFF001063FF00084AFF00084AFF001063FF001063FF001063
      FF00A5C6FF00FFFFFF00FFFFFF009CADFF00215AFF000852FF00085AFF00397B
      FF00EFF7FF00638CFF001063FF00084AFF000000000039393100393931003931
      290010315200298CD60031A5F700319CEF001852B50000000000000831000000
      000000000000000000000039F70000000000004AFF00085AFF00085AFF00085A
      FF00085AFF0084ADFF00FFFFFF00FFFFFF00FFFFFF00EFEFFF00EFEFFF00FFFF
      FF00F7F7FF001863FF00085AFF00004AFF00004AFF00085AFF00085AFF00085A
      FF003173FF00DEE7FF00FFFFFF00FFFFFF00F7F7FF00CEDEFF00EFEFFF00FFFF
      FF00ADC6FF00085AFF00085AFF00004AFF00004AFF00085AFF00085AFF00085A
      FF00105AFF009CBDFF00FFFFFF00FFFFFF00FFFFFF00D6DEFF00D6DEFF00FFFF
      FF00F7FFFF002163FF00085AFF00004AFF000000000000000000393939007373
      73006B6B630039424A0010293900102131000000000000000000000000000000
      08000000000000000800001884000039FF000042FF00085AFF000852FF000852
      FF00085AFF000852FF004A84FF00CEDEFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      FF005A8CFF000852FF000852FF000042FF000042FF00085AFF000852FF000852
      FF00085AFF001863FF0094B5FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00DEE7
      FF00216BFF000852FF000852FF000042FF000042FF00085AFF000852FF000852
      FF00085AFF00085AFF005A8CFF00DEE7FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006B94FF000852FF000852FF000042FF000000000000000000000000009494
      8C0094948C00847B7B0031292900000000000000000000000000000000000000
      00000000000000000000000000000031E7000042FF000852FF000852FF000852
      FF000852FF000852FF000852FF000852FF00316BFF00638CFF005A8CFF001863
      FF000852FF000852FF000852FF000042FF000042FF000852FF000852FF000852
      FF000852FF000852FF000852FF00185AFF005A8CFF007B9CFF005A8CFF00105A
      FF000852FF000852FF000852FF000042FF000042FF000852FF000852FF000852
      FF000852FF000852FF000852FF000852FF00427BFF00739CFF006B9CFF00296B
      FF000852FF000852FF000852FF000042FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000042FF000042FF000042
      FF000042FF000042FF000042FF000042FF000042FF000042FF000042FF000042
      FF000042FF000042FF000042FF000039FF00000000000042FF000042FF000042
      FF000042FF000042FF000042FF000042FF000042FF000042FF000042FF000042
      FF000042FF000042FF000042FF0000000000000000000042FF000042FF000042
      FF000042FF000042FF000042FF000042FF000042FF000042FF000042FF000042
      FF000042FF000042FF000042FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD521000C66B2900C65A0800BD520800B5520800B55210000000
      000000000000000000000000000000000000000000000000000000000000009C
      CE004AB5E70063C6EF0052BDE70039B5DE004ABDE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C39
      0000D6844200DE8C4A00E7A55A000039FF00BD9C8400DE945A00CE732100C65A
      08009C390000000000000000000000000000000000000000000008A5CE0008A5
      D6007BD6F700A5DEFF0094DEFF0094DEFF007BCEEF0073CEEF004AB5E7000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D600000000000000
      0000000000000000000000000000000000000000000029ADD600ADF7FF0084EF
      FF004AC6E7004AC6E7004AC6E70031B5DE0021ADD60000000000000000000000
      00000000000000000000000000000000000000000000000000009C390000DE94
      5A00DE9C5A00DEB59400FFF7E7000039FF00CECEDE00FFFFEF00EFDECE00CE84
      3900C65A0800A53900000000000000000000000000000000000010ADD60018AD
      DE0084DEEF00A5E7FF0094DEFF0084D6F7005ABDE7008CD6F7009CDEFF0073CE
      F70000000000000000000000000000000000000000000000000018A5D60084DE
      F7008CD6EF006BA5B50052ADC60042C6EF0042BDEF0039BDE70018A5D6000000
      0000000000000000000000000000000000000000000029ADD600A5EFF7009CFF
      FF0094FFFF009CFFFF0094F7FF008CF7FF0084EFFF004AC6E7004AC6E70039BD
      DE00000000000000000000000000000000000000000000000000C6733900E7A5
      6B00DEBD9400FFF7DE00F7D6AD00FFCE9400F7BD8400F7C69400FFEFD600F7EF
      E700CE732900B54A00000000000000000000000000000000000021ADDE0029B5
      DE0094DEEF00B5EFFF00A5E7FF0063B5D600319CC6006BC6EF0094DEFF009CDE
      FF0031B5DE00000000000000000000000000000000000000000018A5D600A5EF
      FF008C949C00AD9C9C007B6B6B004AA5BD0042C6EF0042BDEF0018A5D6000000
      0000000000000000000000000000000000000000000029ADD6008CD6EF00ADFF
      FF0094FFFF0094F7FF0094F7FF008CF7FF008CF7FF0094F7FF0094F7FF0073DE
      F70029ADDE0000000000000000000000000000000000AD4A1000EFA57300D694
      6300FFFFE700FFFFD600FFFFCE00FFFFD600FFEFC600F7BD8C00EFBD8400FFF7
      E700DEBD9C00BD520000A539000000000000000000000000000029B5DE0039BD
      E700B5E7F700CEFFFF00B5F7FF0084CEDE00297BA5006BBDE70094DEFF0094DE
      FF0031B5DE00000000000000000000000000000000000000000018A5D600B5EF
      FF0094948C00D6CECE009C848400637B7B0052CEEF004AC6EF0018A5D6000000
      0000000000000000000000000000000000000000000029ADD60029ADD600ADF7
      FF0094FFFF0094F7FF0094F7FF008CF7FF008CF7FF008CF7FF008CF7FF0073DE
      F70052CEEF0000000000000000000000000000000000BD6B3900EFAD7300D6B5
      9400F7FFFF00FFFFE700FFFFDE00E7E7CE00DEDEC600FFEFC600F7BD8400EFCE
      AD00DEC6BD00BD5A0000A539000000000000000000000000000039BDE7004AC6
      EF00C6EFF700EFFFFF00CEF7FF00B5EFF70063ADBD008CCEEF009CDEFF0094DE
      FF0031B5DE00000000000000000000000000000000000000000018A5D600BDF7
      FF00C6DEE700A59C9C00CEC6C6007B6B630063CEE7005ACEF70018A5D6000000
      0000000000000000000000000000000000000000000029ADD6007BE7F70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF0073DE
      F7007BE7F70029B5DE00000000000000000000000000CE7B4200F7AD6B003194
      FF003194FF00FFFFFF00FFFFE7008C8C7B005A5A5A00E7EFCE00FFDEA5000039
      FF000039FF00CE630800A539000000000000000000000000000029B5DE0042C6
      E7005AC6DE006BCEE70063CEE70063C6E7006BCEE70084DEEF009CE7FF00A5E7
      FF0031B5DE00000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00ADC6C600C6BDBD00B5ADA500638C940063B5CE0018A5D6000000
      0000000000000000000000000000000000000000000029ADD60094FFFF0029AD
      D600ADEFF700ADF7FF00A5F7FF00A5F7FF008CF7FF008CF7FF008CF7FF0073DE
      F700007308005ACEEF00000000000000000000000000BD6B3100EFAD7300E7C6
      9C00FFFFFF00FFFFFF00FFFFF700E7E7CE008484730073736300F7D6AD00FFD6
      9C00E7CEB500BD5A0000A539000000000000000000000000000029B5DE0073DE
      E700318CA500399CB5006BE7F70042CEE70021B5DE0010ADD60029ADD6007BD6
      EF0031B5DE00000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF008C9C9C00DED6D600A5949400948C8C0018A5D6000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF0084F7
      FF0029ADD60029ADD60029ADD60029ADD600ADF7FF0094F7FF008CF7FF000073
      08005AE78C000073080018ADD6000000000000000000AD4A1000E7A56B00DEAD
      7B00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFF700ADAD9C00736B5200F7E7
      C600DEA57300BD5200009C3900000000000000000000000000000000000031B5
      D6004ABDD60073D6E7009CFFFF0084F7FF0052CEE70010A5CE000094C60010A5
      CE0018A5D600000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF00ADE7F7008C949400DED6D600AD9C9C009C8C84006B52
      42007B6B5A00735A520000000000000000000000000029ADD6009CFFFF0094FF
      FF0094FFFF0094FFFF0094F7FF006BDEF70029ADD6009CE7F7000073080052D6
      7B0042D66B0031C64A0000730800000000000000000000000000C6733900EFAD
      6B00E7C6A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CED6C600D6C6
      AD00CE6B1800B552000000000000000000000000000000000000000000000000
      0000000000000000000052CEE7004ACEE70042C6DE00109CC600089CC60010A5
      D60010A5CE00000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF00B5F7FF007BCEDE00ADADAD00CECEC600ADA59C00D6C6
      C600D6C6C600D6C6C600947B7300000000000000000029ADD6009CFFFF0094FF
      FF0094FFFF0094F7FF0094F7FF0094FFFF0084EFFF0029ADD60029ADD600108C
      210031C64A00109C210031ADDE000000000000000000000000009C390000D68C
      5200E7A56B00E7BD9400FFF7E7003194FF00D6EFFF00FFF7F700E7C6A500CE73
      2900BD5A08009C39000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000109CC6000894C6000000
      000000000000000000000000000000000000000000000000000018A5D600BDF7
      FF00DEF7FF00D6F7FF00B5F7FF008CEFFF0073ADBD00CEC6C600D6CEC600EFE7
      E700EFE7E700F7EFEF00C6BDB500000000000000000029ADD600A5FFFF0094FF
      FF0094FFFF0094FFFF008CEFFF0094EFFF0094EFFF0094F7FF009CF7FF000884
      100018AD29000884100000000000000000000000000000000000000000009C39
      0000D6844A00E79C5A00E79C6300B5948400CE9C7B00D6945200CE732100C663
      10009C3900000000000000000000000000000000000000000000000000000000
      0000008CBD000084B500000000000000000000000000089CC6000894BD000000
      000000000000000000000000000000000000000000000000000018A5D600BDF7
      FF00DEFFFF00DEFFFF00BDF7FF008CEFFF00739CA500D6CECE00F7EFEF00EFE7
      E700F7EFEF00F7F7F700F7F7F700736352000000000021ADD60029ADD6009CF7
      FF009CF7FF0084EFFF0029ADDE0021ADD60029ADD60029ADDE0031B5DE000894
      100008A518000000000000000000000000000000000000000000000000000000
      00009C3900009C390000C66B2900CE732900CE6B2100BD5A1000A53900009C39
      0000000000000000000000000000000000000000000000000000000000000000
      000029B5DE00189CCE00000000000000000000000000089CCE000894BD000000
      000000000000000000000000000000000000000000000000000018A5D600B5F7
      FF00CEF7FF00BDEFF7009CE7F70073D6EF009C948C00FFFFFF00F7F7F700F7F7
      F700F7F7FF00BDB5AD00CEC6C6007363520000000000000000000000000029AD
      D60031ADDE0029ADDE0000000000000000000000000000000000088C100008A5
      1800088408000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A54208009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004AB5D6006BD6EF00000000000000000000000000089CC6000894BD000000
      000000000000000000000000000000000000000000000000000018A5D6007BD6
      EF0084D6EF007BD6EF0073CEEF0063CEEF0073ADBD00D6CEC600FFFFFF00E7E7
      E700948C84007B6B6300B5ADA50084736B000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000007B
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000009C390000C6733900CE7B4200BD5A0800B54A0000A53900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005AC6DE007BDEEF004ABDD60039ADD60018A5D600000000000000
      000000000000000000000000000000000000000000000000000018A5D6009CE7
      F700ADEFFF00ADEFFF009CEFFF0094EFFF0084E7FF009C948C00DEDEDE00CEC6
      BD00A59C9400CEC6C600948C7B00736352000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A53900009C3900009C3900009C3900009C3900009C3900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052BDD60052C6D6004ABDDE0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60018A5D60018A5D60018A5D60018A5D60018A5D60018A5D60084736B008473
      6B00A59C940094847B0073635200000000000000000000000000AD4A0000B552
      0000B5520000AD4A0000000000000000000000000000AD4A0000B5520000B54A
      0000AD420000000000000000000000000000000000000000000000000000299C
      DE00299CDE00A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B73000000000000000000B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD848400BD848400BD84
      8400BD848400BD848400BD848400BD8484000000000000000000B54A00000000
      000000000000AD420000AD42000000000000AD420000AD4A0000000000000000
      0000AD4A00000000000000000000000000000000000000000000299CDE008CD6
      EF0084D6F700CEC6BD00FFEFDE00FFF7E700FFF7E700F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00FFEFDE00A57B730000000000B5848400FFEFD600F7E7C600F7DE
      BD00EFD6AD00EFD6A500F7D6A500F7CE9C00F7CE9400F7CE9C00F7CE9C00F7D6
      9C00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD848400F7DEB500F7D6
      AD00F7D6A500F7CE9C00F7CE8C00BD8484000000000000000000B54A00000000
      00000000000000000000AD42000000000000AD42000000000000000000000000
      0000AD42000000000000000000000000000000000000299CDE00A5EFFF0094F7
      FF008CF7FF00CEC6BD00F7E7DE00F7E7D600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7DEC600F7E7D600A57B730000000000B5848400FFEFDE00F7E7CE00E7CE
      B500D6BDA500CEB59C00DEC69C00E7C69C00EFCE9400EFCE9400EFCE9400F7D6
      9C00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C8400FFE7CE008C94
      DE001842F7008C8CCE00F7D69C00BD8484000000000000000000B54A0000A542
      00000000000000000000AD42000000000000AD4200000000000000000000A539
      0800AD4A000000000000000000000000000000000000299CDE00A5E7FF0094EF
      FF0084EFFF00CEC6BD00FFEFDE00FFE7CE00FFDEBD00FFDEBD00FFDEBD00FFDE
      BD00F7DEC600F7E7D600A57B730000000000B5847300FFF7E700FFE7D6004A42
      42003139390052636300AD9C8400BDAD8C00D6B58C00E7C69400EFCE9400F7D6
      9C00B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400FFEFDE00184A
      FF000031FF00184AF700F7DEAD00BD848400000000000000000000000000B552
      0000B54A0000B5520000B54A000000000000B54A0000B54A0000AD4A0000AD42
      00000000000000000000000000000000000000000000299CDE00ADEFFF00A5F7
      FF0094F7FF00CEC6BD00FFEFE700FFE7D600FFDEC600FFDEC600FFDEC600F7DE
      BD00F7DEC600F7E7D600A57B730000000000B5847300FFF7EF00FFEFDE00B5A5
      9C0018637B00087BAD0018526B0063635A00A5947B00C6AD8400DEBD8C00EFCE
      9400B58484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEAD8400FFF7EF008C9C
      EF00184AFF008C94E700F7E7BD00BD8484000000000000000000000000000000
      0000AD4A0000B54A00009C4A0800844221009C420800B5420000AD4A00000000
      00000000000000000000000000000000000000000000299CDE00B5EFFF00ADF7
      FF00A5F7FF00CEC6BD00FFEFEF00FFEFDE00FFE7D600FFE7CE00FFE7CE00FFE7
      CE00F7E7D600F7EFDE00A57B730000000000BD8C8400FFFFF700FFEFE700F7E7
      D60039738400297B9C008C7B7B00946B6B007B5A52009C8C7300BDA58400DEBD
      8C00B57B84000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7B58C00FFFFF700FFF7
      EF00FFF7E700FFEFDE00FFEFCE00BD8484000000000000000000000000000000
      0000000000000000000084635200AD9C9C00AD42000000000000000000000000
      00000000000000000000000000000000000000000000299CDE00BDEFFF00BDF7
      FF00B5F7FF00CEC6BD00FFF7F700FFEFD600FFDEBD00FFDEBD00FFDEBD00FFDE
      B500FFE7CE00F7EFE700A57B730000000000BD8C8400FFFFFF00FFF7EF00FFEF
      E700A5B5B5007B737B00E7A5A500CE949400A57373007352520094846B00AD9C
      7B00AD737B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFFFFF00FFFF
      FF00FFFFF700BD848400BD848400BD8473000000000000000000000000000000
      000000000000635A4A00C6B5B500CEB5B5008C736B00735A5200000000000000
      00000000000000000000000000000000000000000000299CDE00C6EFFF00CEF7
      FF00BDF7FF00CEC6BD00FFF7F700FFF7F700FFF7E700FFEFE700FFEFE700FFEF
      E700FFF7E700EFE7DE00A57B730000000000CE9C8400FFFFFF00FFFFF700FFF7
      EF00F7EFDE00847B7B00EFB5B500DEA5A500C68C8C009C6B6B0073524A009484
      6B009C6B6B00000000000000000000000000B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B584840000000000EFBD9400FFFFFF00FFFF
      FF00FFFFFF00BD848400D6946B00000000000000000000000000000000000000
      0000000000009C8C8C00EFDEE700947B7300BDA5A500AD94940063524A000000
      00000000000000000000000000000000000000000000299CDE00CEEFFF00DEFF
      FF00CEFFFF00CEC6BD00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7E7
      E700D6BDB500C6ADA500A57B730000000000CE9C8400FFFFFF00FFFFFF00FFFF
      F700FFF7EF00F7E7DE00A57B7B00EFB5B500DEA5A500C68C8C009C6B6B00735A
      52008C636B00000000000000000000000000B5848400EFD6B500E7BD9400E7B5
      8C00DEB58400DEAD7300EFC68400B584840000000000EFBD9400DEAD8400DEAD
      8400428C3900BD84840000000000000000000000000000000000000000000000
      0000735A4A00EFE7E700BDB5AD0063524200B59C9C00D6B5BD00846B5A000000
      00000000000000000000000000000000000000000000299CDE00D6F7FF00EFFF
      FF00DEFFFF00CEC6BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DECE
      C600E7AD7300F7945A000000000000000000DEAD8400FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7EF00EFDECE009C737300EFB5B500DEA5A500C68C8C009C6B
      6B007B525200000000000000000000000000B5848400CE8C6B00942900009C31
      00009C3100009C310000E7B57B00B58484000000000000000000000000000073
      080042D6730031AD4A000000000000000000000000000000000000000000A58C
      8C00A59C9400EFEFEF007B635200000000007B635A00CEB5B500A58C8C00A58C
      8C000000000000000000000000000000000000000000299CDE00DEF7FF00FFFF
      FF00EFFFFF00CEC6BD00FFF7EF00FFF7F700FFF7F700FFF7F700FFF7F700E7C6
      BD00C6AD8C00299CDE000000000000000000DEAD8400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7EF00E7CEC600A5737300EFBDBD00D6A5A500C68C
      8C00945A5A005A5A63000000000000000000BD8C8400FFEFE700A54210009429
      000094290000BD734A00FFE7B500B58484000000000000000000007B08004ACE
      73005AE78C0039C65A00108C210000000000000000000000000000000000735A
      5200DED6CE00ADA59C000000000000000000000000009C847B00C6ADAD00735A
      52000000000000000000000000000000000000000000299CDE00DEF7FF00FFFF
      FF00F7FFFF00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEC6
      BD0084C6DE00299CDE000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7EF00DEC6BD00AD848400F7BDBD00A584
      8C003194B50018ADCE0018ADCE0000000000CE9C8400FFFFFF00D6AD94009421
      0000A5421000EFCEAD00FFEFC600B584840000000000428429001094210029AD
      4A0039CE630021AD3900189C2900087B10000000000000000000000000008473
      6B00C6BDB5006B5A4A000000000000000000000000006B5A4A00AD9494008473
      6B000000000000000000000000000000000000000000299CDE00DEF7FF00F7F7
      F700B5C6CE00ADC6CE00A5C6CE00A5C6CE00A5C6CE00A5C6CE00B5D6D600DEFF
      FF008CDEF700299CDE000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CECE00AD7B7300B57B7300429C
      BD0008CEF70000A5E7000018AD0000009C00DEAD8400FFFFFF00FFF7F700AD5A
      3100CE947300FFF7DE00DECEB500B58484000000000000000000000000000073
      080021BD4200088C180000000000000000000000000000000000000000008473
      6B008C7B6B000000000000000000000000000000000000000000846B63008473
      63000000000000000000000000000000000000000000299CDE00E7FFFF00DECE
      C600BDA59C00CEC6BD00CEC6BD00CEC6BD00CEC6BD00CEBDB500BD9C9400E7EF
      E70094DEF700299CDE000000000000000000EFBD9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600BD847B00DEA56B0010A5
      CE0000ADE7000831CE000829C6000018AD00E7B58C00FFFFFF00FFFFFF00EFDE
      D600FFF7EF00B5848400B5848400B5847300000000000000000000000000087B
      100010AD21000884100000000000000000000000000000000000000000006B5A
      4A0000000000000000000000000000000000000000000000000000000000735A
      4A00000000000000000000000000000000000000000000000000299CDE00B5D6
      E700949C9C00E7DED600FFFFFF00FFFFF700FFFFF700D6C6BD00849CA5008CCE
      E700299CDE00000000000000000000000000EFBD9400FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00BD847B00CE9C84000000
      0000007BCE004A63F700214ADE000010AD00EFBD9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5848400DE9C6300000000000000000000000000088C10000894
      100008A51800007B080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000299C
      DE00299CDE009C948C009C948C009C948C009C948C009C948C00299CDE00299C
      DE000000000000000000000000000000000000000000DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400BD847B00000000000000
      000000000000394ADE001829C60000000000EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400B58484000000000000000000008408000084080000941000089C
      1800008408000000000000000000000000000000000000000000000000000000
      00000000000000000000D6AD9C00BDA59C00B5948C00CE9C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000063000000630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A00000000000000000000000000000000000000
      000000000000DEAD9400CEBDBD00B5BDC6009C9CA5009C8C8400DEAD94000000
      0000000000000000000000000000000000000000000000000000000000000000
      6B000018BD000010A50000006300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFFFEF00FFF7E700FFF7DE00F7EFDE00F7EFDE00F7EF
      DE00FFEFDE00F7E7D6008C5A5A00000000000000000000000000000000000000
      0000DEAD9C00E7D6CE00DEDEE700C6947B00B5847300A59C9C00A58C8C00C69C
      8C00000000000000000000000000000000000000000000000000000000000000
      6B005273FF000021D6000018AD00000063000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001873EF002973D6005284CE005A73B500215AC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700F7E7CE00F7E7CE00F7DECE00F7DEC600F7DE
      C600F7E7CE00EFDECE008C5A5A0000000000000000000000000000000000DEAD
      9400EFDEDE00F7FFFF00C67B5A00A5210000AD210000B5634A00A59CA5009C8C
      8400DEAD94000000000000000000000000000000000000000000000000000000
      0000000063005273FF000018D6000018AD000000630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A94F7007BA5DE00B5BDC600D6C6BD00E7BDA500F7AD7300B5A5A5003973
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFDECE008C5A5A00000000000000000000000000DEAD9400EFE7
      DE00FFFFFF00CE846B00B5421800DE9C8400DE9C8400BD421800B55A4200A59C
      A5009C8C8400C69C8C0000000000000000000000000000000000000000000000
      000000000000000063005273FF000018D6000018AD0000006300000000000000
      0000000000000000000000000000000000000000000000000000298CFF007BAD
      EF00FFDEB500FFE7BD00FFE7BD00FFDEB500EFB59400E79C6B00FFCEA500EFDE
      D6007BA5E700317BE700000000000000000000000000B58C8C008C5A5A008C5A
      5A008C5A5A00B58C8C00FFF7EF00FFE7CE00FFE7C600FFDEC600FFDEC600F7DE
      BD00F7E7D600EFDECE009C6B63000000000000000000DEAD9400F7E7DE00FFFF
      FF00D68C7300A5290000AD311000F7E7DE00F7E7D600AD311000AD290800B563
      4200A59CA5009C8C8400DEAD9400000000000000000000000000000000000000
      00000000000000000000000063005273FF000018D6000018A500000063000000
      00000000000000000000000000000000000000000000000000004284CE00D6C6
      B500FFEFD600FFEFD600FFEFD600F7D6BD00E7AD8400EFB58400FFDEC600FFEF
      DE00FFFFF700BDD6F700428CEF000000000000000000B58C8C00FFFFEF00FFF7
      E700FFF7DE00B58C8C00FFFFF700FFE7CE00FFE7CE00FFE7C600FFDEC600FFDE
      C600F7E7D600EFE7D6009C6B6B0000000000DEAD9400F7E7DE00FFFFFF00E7A5
      8C00B5391000B5310800AD310800F7DECE00F7D6C600AD310800AD310800AD29
      0800B55A4200A59C9C009C8C8400C69C8C000000000000000000000000000000
      0000000000000000000000000000000063005273FF000018D6000010A5000000
      63000000000000000000000000000000000000000000318CFF00BD8C5200FFE7
      B500FFF7EF00FFF7EF00FFEFDE00EFCEB500DE9C6B00EFBD9C00FFEFDE00FFF7
      EF00FFFFFF00FFFFFF00ADC6EF00217BE70000000000B58C8C00FFF7E700F7E7
      CE00F7E7CE00B58C8C00FFFFF700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500F7E7DE00A57B730000000000E7BDAD00FFFFFF00F7DEC600C65A
      2100C6522100BD4A1800B5421000F7DECE00F7D6CE00AD310800AD310800AD31
      0800AD290000B57B6B009C9CA500B5948C000000000000000000000000003963
      CE000084BD00000000000000000000000000000063005273FF000018D6000010
      A50000006300000000000000000000000000000000002984D6008CC67300FFFF
      EF00FFFFF700FFFFF700FFE7DE00E7BD9C00EFAD8400F7DEBD00C6C6BD00E7DE
      DE00FFFFFF00FFFFFF00C6A5AD004284DE0000000000B58C8C00FFF7E700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFEFDE00FFE7D600FFE7D600FFE7D600FFEF
      D600FFF7E700EFE7DE00A57B730000000000E7BDAD00FFFFFF00F7DECE00D673
      3100CE6B2900C65A2900C6522100F7E7DE00F7DECE00AD311000AD310800AD31
      0800AD290800C6948400BDBDC600C6A59C000000000000000000087BBD0000A5
      E70000A5E7000084BD00000000000000000000000000000063005273FF000010
      A50000319C00005AB500000000000000000000000000298C8C007BDE9C00FFFF
      FF00FFFFFF00FFFFFF00F7DECE00E7A58400EFB58C00FFEFDE00F7F7EF00CECE
      CE00D6D6CE00F7F7F7009C94B5003994FF0000000000B58C8C00FFF7EF00FFE7
      CE00FFE7C600B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFDE
      DE00D6C6C600BDADAD00B584730000000000DEAD9400F7E7DE00FFFFFF00EFCE
      A500D67B3900CE6B3100D67B4200F7D6BD00E7BD9C00BD421800B5310800AD29
      0800CE8C6B00DEE7E700CEBDB500D6A594000000000000000000000000000084
      BD000084BD00000000000000000000000000000000000000000000006300004A
      AD0000C6FF000094CE000084BD0000000000000000001052D600CEDEF700FFFF
      FF00FFFFFF00FFFFFF00EFD6CE00E7AD8400F7CEAD00EFE7DE00FFFFF700FFFF
      FF00EFEFEF00B5D6FF003994FF000000000000000000B58C8C00FFFFF700FFE7
      CE00FFE7CE00B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00B58C8C00B58C8C00B58C8C000000000000000000DEAD9400EFDED600FFFF
      FF00F7D6B500DE8C4200D67B3900DE8C5200D67B4A00C6522100BD421800D69C
      7B00F7FFFF00E7CECE00DEAD9400000000000000000000000000000000000000
      000000000000000000000084BD00000000000084BD0000000000000000000084
      D6000094CE0000C6FF000084BD0000000000297BEF00315AF700FFFFFF00E7EF
      FF00BDDEFF009CC6FF004AA5FF0073ADEF00DEE7E700DED6CE00C6C6C600E7E7
      E700FFFFFF0073B5FF00298CFF000000000000000000B58C8C00FFFFF700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B58C
      8C00EFB56B00C68C7B0000000000000000000000000000000000D6A59400EFDE
      D600FFFFFF00F7D6B500E7944A00FFEFDE00F7E7D600CE632900E7A58400FFFF
      FF00EFDED600D6AD940000000000000000000000000000000000000000000000
      000000000000000000000084BD000084BD000084BD0000000000000000000000
      00000084BD000084BD000000000000000000298CFF0052A5FF006BADFF0073B5
      FF0000000000000000000000000000000000298CFF00B5D6FF00F7F7F700DEDE
      CE00DEEFFF003994FF00000000000000000000000000B58C8C00FFFFFF00FFEF
      DE00FFE7D600B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C8C00B58C
      8C00BD848400000000000000000000000000000000000000000000000000DEAD
      9400EFDED600FFFFFF00F7DEBD00F7C68C00EFB57B00EFBD9400FFFFFF00F7E7
      DE00DEAD94000000000000000000000000000000000000000000000000000000
      0000000000000084BD0000BDFF0000BDFF0000B5F7000084BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000298CFF00BDDE
      FF0073B5FF00298CFF00000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFDEDE00D6C6C600BDADAD00B58473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6A59400EFDED600FFFFFF00FFEFD600F7E7C600FFFFFF00F7E7DE00DEAD
      9C00000000000000000000000000000000000000000000000000000000000000
      00000084BD000084BD000084BD0000ADEF000084C6000084BD000084BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000298CFF0000000000000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00B58C8C00B58C8C00B58C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEAD9400EFDECE00FFFFFF00FFFFFF00F7E7E700DEAD94000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000084BD0000ADEF000084BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEAD9400E7BDAD00E7BDAD00DEAD9400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00BD84840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD420000BD420000BD420000BD420000BD420000BD420000BD420000BD42
      0000BD420000BD420000BD420000BD4200000000000000000000000000000000
      000000000000DEC6B500DEBDB500D6BDB500D6B5AD00D6B5A500DEBDAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD420000FFFFFF00FFFFFF00FFFFEF00FFEFD600FFE7C600FFE7BD00FFDE
      AD00FFDEAD00FFDEA500FFEFC600BD420000000000000000000000000000E7BD
      B500E7D6D600E7E7E700DEE7E700CEC6C600C6BDBD00BDBDC600B5ADAD00BDA5
      9C00DEBDAD000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      0000BD420000FFFFFF00FFF7EF00FFF7E700FFEFD600FFE7C600FFDEB500FFD6
      A500FFCE9C00FFCE9400FFDEAD00BD4200000000000000000000E7C6B500F7EF
      EF00F7FFFF00DEBDB500CE7B5A00CE734A00C6734A00C6735200C69C8C00B5AD
      B500B5A5A500D6B5A50000000000000000000000000000000000004A08000063
      080000A5080000A5080000A50800009C0800009C080000A5080000A5080000A5
      0800006B00000031000000000000000000000000000000000000004A08000063
      080000A5080000A5080000A50800009C0800009C080000A5080000A5080000A5
      0800006B00000031000000000000000000000000000000000000BD420000BD42
      0000BD420000FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600FFDE
      B500FFD6AD00FFCE9C00FFDEAD00BD42000000000000E7BDAD00F7F7EF00FFFF
      FF00D68C6B00BD421000BD4A1800F7DECE00EFC6B500BD421000BD4A1800C67B
      5A00B5B5B500BDADA500DEBDAD000000000000000000004A0800006B100008AD
      180000A51000009C0800009C0800009C0800009C0800009C0800009C080000A5
      080000A50800006B0000004A00000000000000000000004A0800006B100008AD
      180000A51000009C0800009C0800009C0800009C0800009C0800009C080000A5
      080000A50800006B0000004A0000000000000000000000000000BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFDE00FFE7
      CE00FFDEBD00FFD6AD00FFE7B500BD42000000000000F7E7DE00FFFFFF00DE9C
      7B00BD421000BD4A1800BD4A1800E7AD8C00DE9C8400BD4A1800BD4A1800BD42
      1000C6846300BDBDC600CEB5AD000000000000000000004A080010AD310008AD
      290008A51800009C080010AD2100D6F7DE00EFFFEF004AC65200009C0800009C
      0800009C080000A50800004A00000000000000000000004A080010AD310008AD
      290008A51800009C08004AC65200EFFFEF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A0000000000000000000000000000BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEF
      DE00FFE7CE00FFDEBD00FFE7C600BD420000E7C6B500FFFFFF00F7DED600C652
      2100BD4A1800BD4A1800C6522900DE9C8400D68C6300BD4A1800BD4A1800BD4A
      1800BD4A1800CEB5A500CEC6C600DEBDAD00005200000884210010B5420008AD
      290000A51000009C080000A5100084D68C00FFFFFF00F7FFF70042BD4A00009C
      0800009C080000A50800007B080000420000005200000884210010B5420008AD
      290000A5100042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B080000420000BD420000BD420000BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      EF00FFEFDE00FFE7CE00FFEFD600BD420000EFCEC600FFFFFF00E7A58400C652
      2100C65A2900BD4A1800C65A2900FFFFF700FFEFE700C6522100BD421000BD4A
      1800BD421000CE8C6B00D6DEDE00DEBDAD000052000010A5420018B54A0010AD
      310000A51000009C0800009C0800009C080073D67B00FFFFFF00F7FFF70039BD
      4A00009C080000A5080000940800004200000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A508000094080000420000BD420000FFFFFF00BD420000FFFF
      FF00BD420000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFEF00FFFFFF00BD420000EFD6CE00FFFFFF00DE946B00CE63
      2900CE633100C65A2900C6522100E7B59C00FFFFFF00EFCEB500C65A2900BD4A
      1800BD421000CE734A00E7E7EF00DEC6B500006B080021B5520018B55200BDEF
      CE00BDEFC600B5EFC600BDEFC600B5EFC600B5EFC600F7FFF700FFFFFF00EFFF
      EF0052C65A0000A50800009C0800004A0000006B080021B5520018B5520073D6
      9400F7FFF700FFFFFF00F7FFFF00B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500B5E7B50000A50800009C0800004A0000BD420000FFFFFF00BD420000FFFF
      FF00BD420000EFA56300E79C5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C
      5A00E79C5200E79C5200EF9C5A00BD420000EFD6CE00FFFFFF00E7A57300D673
      3900D6733900CE6B3100CE632900C65A2900E7B59C00FFFFFF00F7E7D600C65A
      2900BD421000CE7B5200EFF7FF00E7C6BD000873100039BD6B0029BD5A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADE7B50000A50800009C0800005200000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000A50800009C080000520000BD420000FFFFFF00BD420000FFFF
      FF00FFFFFF00BD420000BD420000BD420000BD420000BD420000BD420000BD42
      0000BD420000BD420000BD42000000000000EFCEC600FFFFFF00EFC69C00D67B
      4200D6844A00DE845200CE733900CE633100C65A2100E7B59C00FFFFFF00DE9C
      7B00B5390800D6947300F7FFFF00E7C6B500007B080052C67B0042C6730052C6
      7B0052CE840052CE840052CE84004AC673007BD69400FFFFFF00FFFFFF0094DE
      A50018AD310000A51800009C080000420000007B080052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00FFFFFF0084DEA50039BD5A0042C65A0042BD5A0042BD
      5A0042BD520000A51800009C080000420000BD420000FFFFFF00BD420000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      EF00FFFFFF00BD4200000000000000000000EFCEC600FFFFFF00FFEFE700DE8C
      4A00F7D6B500FFFFFF00E7A57300CE6B3100C65A2100DE9C7300FFFFFF00E7AD
      8C00C64A1800EFDECE00F7F7EF00E7C6B500007B08004ABD6B0084DEA50021B5
      520018B54A0021B5520021B5520052CE7B00E7F7EF00FFFFFF008CDE9C0010AD
      290008A5210000A51000008C080000420000007B08004ABD6B0084DEA50021B5
      520018B54A0094DEB500FFFFFF00E7F7EF004AC6730010AD310008AD310008AD
      290008A5210000A51000008C080000420000BD420000FFFFFF00BD420000EFA5
      6300E79C5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C5200E79C
      5200EF9C5A00BD420000000000000000000000000000F7E7D600FFFFFF00EFC6
      9C00EFB58400FFFFFF00FFF7F700EFBD9C00EFBD9C00FFF7F700FFFFF700D67B
      4A00DEA57B00FFFFFF00EFD6CE00000000000000000021A53100ADE7C6006BD6
      8C0010AD4A0018B54A0039BD6B00F7FFF700FFFFFF0084DE9C0010AD310008A5
      290008A5210008AD1800006B0800000000000000000021A53100ADE7C6006BD6
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010AD310008A5
      290008A5210008AD1800006B080000000000BD420000FFFFFF00FFFFFF00BD42
      0000BD420000BD420000BD420000BD420000BD420000BD420000BD420000BD42
      0000BD42000000000000000000000000000000000000E7C6BD00FFEFEF00FFFF
      FF00EFC69C00EFC69400FFEFDE00FFF7F700FFF7EF00F7E7CE00E79C7300E7AD
      8400FFFFFF00F7E7E700EFD6CE00000000000000000021A5310052C67300C6F7
      DE0063CE8C0021B5520021B55200ADE7C60094DEB50018B54A0010AD390010AD
      310008B52900089C1800006B0800000000000000000021A5310052C67300C6F7
      DE0063CE8C0021B5520018B54A0094DEB500ADE7C60018B54A0010AD390010AD
      310008B52900089C1800006B080000000000BD420000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFEF00FFFFFF00BD42
      0000000000000000000000000000000000000000000000000000E7C6BD00F7EF
      EF00FFFFFF00F7E7CE00EFC6A500EFC69C00EFBD9400EFBD9400F7DEC600FFFF
      FF00F7EFE700E7C6B50000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630029BD5A0021BD
      4A0010A531000063080000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630029BD5A0021BD
      4A0010A53100006308000000000000000000BD420000EFA56300E79C5A00E79C
      5A00E79C5A00E79C5A00E79C5A00E79C5A00E79C5200E79C5200EF9C5A00BD42
      000000000000000000000000000000000000000000000000000000000000E7C6
      BD00F7E7E700FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7E7
      D600F7E7D6000000000000000000000000000000000000000000000000004ABD
      63004ABD63009CE7B500BDEFD600A5E7C60094E7B5007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000004ABD
      63004ABD63009CE7B500BDEFD600A5E7C60094E7B5007BDE9C004AC67B00189C
      3900189C390000000000000000000000000000000000BD420000BD420000BD42
      0000BD420000BD420000BD420000BD420000BD420000BD420000BD4200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6BD00E7C6BD00EFCEC600EFCEBD00E7C6BD00E7C6BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018A5310039B5520042BD630042BD630029A54A00108C29000000
      00000000000000000000000000000000000000000000ADA5A50084849400BDA5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C4239009439
      39008C313100947B7B00B5BDB500BDBDBD00C6BDBD00BDBDB500B5BDBD00A584
      84008429290084292900943131000000000000000000C68C8400DEA58400DE9C
      7B00DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C8400DE9C
      8400DE9C7B00DE9C8400C6847B00BD7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008CA5BD004A7BCE007B84
      AD00BDA5A5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200C64A4A00C64A
      4A00A542420084636300AD8C8C00DEC6C600FFF7F700FFFFFF00EFF7F700C69C
      9C007B18180084181800B54242009C393900C68C8400CE948400EFB59400FFD6
      9C00FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE9400FFCE
      9400FFD69C00EFB58C00CE8C8400C6847B0000000000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000000000000000000084C6EF0052B5FF004A7B
      CE007B84AD00BDA5A50000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200BD4A4A00C64A
      4A00A54242008463630084292900A55A5A00E7D6D600FFFFF700FFFFFF00CEA5
      A5007B18180084181800AD4242009C393900C68C8400E7B58C00C68C8400F7CE
      AD00F7D6AD00F7CEAD00F7D6AD00F7D6AD00F7D6AD00F7D6AD00F7CEAD00F7D6
      AD00EFC6A500C68C8400EFBD9C00C68C840000000000BD4A0000FFFFFF00FFFF
      FF00FFFFFF006BBD5A00FFEFCE00FFEFCE00FFEFCE00B57B4200736B1800FFCE
      A500FFCEA500FFCEA500BD4A00000000000000000000000000007BBDEF0052B5
      FF004A7BCE007B84AD00BDA5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200BD4A4A00C64A
      4A00A5424200946B6B008421210084212100BDADAD00EFEFEF00FFFFFF00DEB5
      B5007B18180084181800AD4242009C393900C68C8400F7D6B500DEA58C00CEA5
      9C00EFDECE00EFDEC600EFDEC600EFDEC600EFDEC600EFDEC600EFDEC600EFDE
      C600CE949400DEAD9400EFDEC600C684840000000000BD4A0000FFFFFF00FFFF
      FF00FFFFFF006BBD5A00FFEFCE00FFEFD600FFEFC6007B736B00084A5A00736B
      5A00D6AD8400FFCEA500BD4A0000000000000000000000000000000000007BBD
      EF0052B5FF004A7BCE007B84AD00BDADB5000000000000000000000000000000
      00000000000000000000000000000000000000000000AD5A5200BD4A4A00C64A
      4A00A54242009C7373008C2929007B18180094848400CED6CE00FFFFFF00DEBD
      BD007B1818007B181800AD3939009C393900C68C8400EFDED600F7D6B500C68C
      7B00DEC6BD00EFE7DE00EFE7D600EFE7D600EFE7D600EFE7D600F7EFDE00D6B5
      AD00CE948400F7E7CE00EFDED600C68C840000000000BD4A000073B5630063B5
      5A0063B55A00399C290063AD4A0063AD4A0063AD4A004A9C420039636B009C63
      6B005A4A310052733100BD4A0000000000000000000000000000000000000000
      00007BBDEF0052B5FF004A7BCE009CA59400BDA5A500C6948400C6948400C694
      8400C69C9400BDA5A500000000000000000000000000AD5A5200BD4A4A00C64A
      4A00AD424200B5737300B57B7B009C6B6B0094737300A58C8C00DEBDBD00D694
      94008C2121008C212100B54242009C393900C68C8C00EFE7DE00FFF7E700F7CE
      AD00BD8C8400EFD6D600F7E7DE00EFE7DE00EFE7DE00F7E7DE00E7CEC600C68C
      8400F7DEC600F7F7EF00F7E7DE00C68C8C0000000000BD4A0000EFF7E700EFF7
      EF00EFF7EF0063B55200DEE7C600EFE7CE00EFE7BD00E7DEA5005A7B3900E794
      9C00A56B6B00634A3900C64A0000000000000000000000000000000000000000
      0000000000008CC6EF00BDC6CE00C6948400D69C9C00F7CEAD00FFEFCE00F7F7
      D600F7DEBD00D6AD9C00C69C94000000000000000000AD5A5200BD4A4A00BD4A
      4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD4A4A00BD424200BD424200BD42
      4200BD4A4A00BD4A4A00C64A4A0094393900C68C8C00F7F7EF00FFFFF700D6AD
      A500C68C8400C6949400C6848400C68C8400C68C8400C68C8C00C6949400C684
      8400E7CEC600FFFFFF00F7EFEF00C68C8C0000000000BD4A0000FFFFFF00FFFF
      FF00F7F7FF0063B56300F7F7E700FFFFEF00FFF7E700FFE7C60063AD4200DE9C
      9C00DE949C00B56363006B5A3100000000000000000000000000000000000000
      00000000000000000000CEA5A500EFAD9400FFFFCE00FFFFCE00FFFFDE00FFF7
      EF00FFFFFF00FFFFFF00D6AD9C00C69C940000000000AD5A5200A53931009C42
      3900B56B6B00C68C8C00CE949400CE949400CE949400CE8C8C00CE949400CE94
      9400CE9C9400C6848400BD4A4A0094393900C68C8C00EFD6D600CE949400CEA5
      A500F7EFEF00F7F7F700E7E7E700E7E7E700E7E7E700E7EFEF00EFF7F700DED6
      D600C6949400D6A5A500F7E7E700C68C8C0000000000C64A00008C8CF7004242
      EF003131E7002129C6006363F700A5BDCE00A5D68C0094C67B004AA539009CC6
      7B0084844A0073848C000894CE000018A5000000000000000000000000000000
      00000000000000000000D69C9C00F7CEAD00FFE7B500FFFFCE00FFFFDE00FFF7
      EF00FFFFFF00FFF7F700F7DEBD00C694840000000000AD5A52009C313100DEBD
      BD00FFF7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700FFFFFF00D6ADAD00B54242009C393900BD848400BD949400E7C6C600FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00E7F7F700CEB5B500CE949400BD8484000000000063429C004242CE009494
      B500A59CB500A5A5C6005A5AC6001829BD006B9C9C009CD684004AA53900A5CE
      8C00ADC67B006BADA500005AE7000008A5000000000000000000000000000000
      00000000000000000000C6948400FFEFCE00FFDEAD00FFF7BD00FFFFD600FFFF
      E700FFF7EF00FFFFE700F7F7D600C694840000000000AD5A52009C313100E7CE
      CE00FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700D6ADAD00B54242009C393900B5847B00A5DEE700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00EFFFFF00E7F7
      F700D6EFEF00C6EFF700ADBDC600B57B7B004242FF00525AF700D6D6C600FFEF
      AD00F7BD8400FFC68C00FFFFD6006B6BBD005A52FF00EFEFF7006BBD5A00FFFF
      FF00FFEFDE00FFE7BD005A426B00000000000000000000000000000000000000
      00000000000000000000C6948400FFEFCE00FFE7B500FFFFCE00FFFFCE00FFFF
      D600FFFFD600FFFFD600FFEFCE00C694840000000000AD5A52009C313100E7CE
      C600EFEFEF00CECEC600CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00E7E7E700D6ADAD00B54242009C393900BD847B00B5A5A500FFFFFF00FFFF
      FF00FFFFFF00F7F7FF00E7EFEF00CEE7E700A5CED60094C6CE0084BDC6007BB5
      C6006BADCE0073A5BD00A5848C00BD7B7B004242FF009C9CD600FFFFD600FFFF
      CE00FFF7C600F7D69400EFBD7B00D6C6B5003939CE00B5BDEF007BC65A00FFFF
      F700FFEFD600FFE7BD00B54A0800000000000000000000000000000000000000
      00000000000000000000C6AD9400F7DEBD00FFEFDE00FFE7B500FFF7BD00FFF7
      BD00FFFFCE00FFFFCE00F7CEAD00C694840000000000AD5A52009C313100E7CE
      CE00EFEFEF00D6CECE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6CE
      CE00EFEFEF00D6ADAD00B54242009C39390000000000C6737300C6949400A5DE
      DE008CFFFF007BDEEF0073D6E7006BDEE7006BDEEF006BDEEF006BDEF7006BDE
      FF0084BDD600B58C8C00C67B7B00000000004A4AF700ADBDE700FFFFF700FFFF
      DE008484730031313100524A3900A59494004242D60094423100CE5A0000C652
      0000C6520000C652000000000000000000000000000000000000000000000000
      00000000000000000000CEA5A500D6AD9C00FFFFFF00FFF7EF00FFEFCE00FFDE
      AD00FFE7B500FFFFCE00D69C9C00BDA5A50000000000AD5A52009C313100E7CE
      CE00F7F7EF00DED6D600DEDED600DEDED600DEDED600DEDED600DEDED600DED6
      D600EFEFEF00D6ADAD00B54242009C393900000000000000000000000000B584
      840094B5BD0073F7FF006BF7FF0073F7FF0073F7FF006BF7FF0073E7FF009CAD
      B500C68484000000000000000000000000004242FF00B5B5E700FFFFFF00FFFF
      F700DEDEB5005A635200B5946B00E7CEAD003139E7008C423100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6AD9400D6AD9C00F7DEBD00FFEFCE00FFEF
      CE00F7CEAD00D69C9C00C69484000000000000000000AD5A52009C313100E7CE
      CE00EFEFEF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00E7E7E700DEADAD00B54242009C3939000000000000000000000000000000
      0000C67B7B00AD9C9C0084DEE70073F7FF0073EFFF0084D6E700AD949C00C67B
      7B00000000000000000000000000000000004242FF007B7BE700FFF7EF00FFFF
      FF00FFFFFF00F7F7DE00A5A57B00948CB5002931FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEA5A500C6948400C6948400C694
      8400C69C9400CEA5A500000000000000000000000000AD5A52009C313100E7CE
      C600FFFFFF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFEF
      EF00FFFFF700D6ADAD00B54242009C3939000000000000000000000000000000
      00000000000000000000BD848400B5949400B5949400BD848400000000000000
      000000000000000000000000000000000000000000004242FF00847BE700DEDE
      E700EFF7F700EFF7F700A5A5DE003939EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094313100BDA5
      A500C6CEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BD9C9C008C313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003131FF004239
      F7004A4AEF003939EF002929FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B5000000B5000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000848484008484
      84008C8C8C000000000000000000000000000000000000000000000000000000
      0000AD7B6B00AD7B6B00AD7B6B00AD7B6B000000000000000000000000000000
      000000000000000000000000000000000000000000000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B5000000B5000000000000000000000000004A526300FFEF
      C600F7DEB500F7D6AD00F7D6A500EFCE9400EFC68C00EFC68400EFC67B00EFC6
      8400EFC68400F7C68400A5636B00000000000000000000000000000000000000
      00009C9C9C009C9C9C00D6D6D6009494940039393900525252009C949400C6C6
      C600D6D6D600848484000000000000000000000000000000000000000000AD7B
      6B00DEA57B00EFC69400EFC6A500DEB58C00AD7B6B00AD7B6B00AD7B6B00AD7B
      6B0000000000000000000000000000000000000000000000B5000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B5000000000000000000000000004284B500186BC600636B
      8400F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B000000000000000000000000009C9C9C009C9C
      9C00FFFFFF00FFFFFF00D6D6D6009C9C9C004242420018181800181818003131
      310063636300848484008C8C8C00000000000000000000000000AD7B6B00E7B5
      8C00EFB57B00EFC69C00EFD6B500F7CE9C00C69C73007B4A42008C525200AD7B
      6B00AD7B6B00AD7B6B000000000000000000000000000000B5000000B5000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      B5000000B500000000000000000000000000000000000000000031A5FF001073
      D6006B6B8400F7DEBD00F7D6B500EFD6AD00EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B0000000000948C8C009C9C9C00F7EFEF00FFFF
      FF00EFEFEF00CECECE009C9C9C008C8C8C009494940084848400636363003939
      39001821210021182100737373000000000000000000AD7B6B00EFC69400F7C6
      8C00EFB57B00EFC6A500F7E7CE00F7D6B500C69C84007B4A4A007B4A4200CEA5
      7B00EFC68C00D6A58400AD7B6B000000000000000000000000000000D6000000
      BD000000B5000000B500000000000000000000000000000000000000B5000000
      B500000000000000000000000000000000000000000000000000A5635A0031A5
      FF001073D6005A638400F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B00000000009C9C9C00EFE7E700E7E7E700BDBD
      BD00A5A5A500B5B5B500C6C6C600A5A5A5009494940094949400949494009C9C
      9C008C8C8C006B6B6B008484840000000000AD7B6B00F7CE9C00FFD69400F7C6
      8C00EFB57B00F7CEAD00FFEFDE00FFE7C600CEA58C007B4A42007B4A4A00CEA5
      7B00EFBD8C00E7B58C00AD7B6B00000000000000000000000000000000000000
      00000000B5000000B5000000B500000000000000B5000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000A5736B00FFFF
      F70031A5FF00427BAD008C635A00AD7B730094635A00AD7B6B00CEA58400EFC6
      9400EFC68C00EFC68400A5636B000000000094949400ADADAD00A5A5A500B5AD
      AD00CECECE00D6D6D600EFEFEF00F7EFF700DEDEDE00C6C6C600ADADAD009C9C
      9C0094949400949494008C8C8C0000000000AD7B6B00FFDE9C00F7D69400F7C6
      8C00F7B57300F7D6AD00FFFFF700FFF7DE00CEAD9C00734242007B4A4200CEA5
      7B00EFBD8C00DEB58400AD7B6B00000000000000000000000000000000000000
      0000000000000000B5000000C6000000C6000000CE000000B500000000000000
      0000000000000000000000000000000000000000000000000000A5736B00FFFF
      FF00FFF7E700AD8C8C00B58C8400DEBDA500EFD6B500D6B59C00B58C7300CEA5
      8400EFC69400F7CE8C00A5636B0000000000948C8C00ADADAD00CEC6C600CECE
      CE00CECECE00E7E7E700D6CECE00A5ADA500BDBDBD00CECECE00D6D6D600D6D6
      D600C6C6C600B5B5B5009C94940000000000AD7B6B00F7D69C00FFD69400E7C6
      9400B5A59400F7D6AD00FFFFFF00FFFFEF00DEC6B50094635A0084524A00CEA5
      8400EFBD8C00DEB58400AD7B6B00000000000000000000000000000000000000
      000000000000000000000000C6000000C6000000DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000BD846B00FFFF
      FF00FFF7F700AD847B00DEC6B500F7E7CE00F7E7C600FFFFF700D6B59C00AD7B
      6B00EFCE9C00F7CE9400A5636B0000000000000000009C9C9C00D6D6D600CECE
      CE00DEDEDE00CEC6C600B5B5B500A5D6A500BDC6BD00C6A5A500ADA5A500ADA5
      A500B5B5B500C6C6C600ADA5A50000000000AD7B6B00FFDE9C00D6CEA50052A5
      E7002184F70084ADDE00FFFFF700FFFFEF00FFF7E700F7E7CE00E7C6A500E7C6
      9C00E7BD9400DEB58400AD7B6B00000000000000000000000000000000000000
      0000000000000000B5000000D6000000CE000000DE000000EF00000000000000
      0000000000000000000000000000000000000000000000000000BD846B00FFFF
      FF00FFFFFF0094636300F7EFE700F7EFDE00F7E7CE00FFFFEF00EFD6B5009463
      5A00F7D6A500F7D6A500A5636B000000000000000000000000009C9C9C00C6BD
      BD00ADADAD00B5B5B500E7E7E700F7F7F700EFEFEF00EFE7DE00DEDEDE00CECE
      CE00B5B5B500949494000000000000000000AD7B6B009CC6C60042B5FF0031AD
      FF00299CFF001884FF0084BDF700FFFFEF00FFFFEF00FFF7E700FFE7CE00F7D6
      B500EFCEA500DEB58C00A57B7B00000000000000000000000000000000000000
      00000000E7000000DE000000D60000000000000000000000E7000000EF000000
      0000000000000000000000000000000000000000000000000000D6946B00FFFF
      FF00FFFFFF00B58C8400DECEC600FFEFE700FFEFDE00FFFFD600DEBDA500AD7B
      7300F7DEB500EFCEA500A5636B00000000000000000000000000000000009C9C
      9C00DEDEDE00CECECE009C9CA500BDBDC600D6D6D600D6DEDE00D6D6D600C6C6
      C600ADADAD00000000000000000000000000429CF70039A5FF0042ADFF0042B5
      FF0039ADFF002994FF001884FF008CC6F700FFFFEF00FFF7EF00FFEFDE00FFE7
      CE00E7CEB500948C94009C7B8400000000000000000000000000000000000000
      FF000000DE000000EF00000000000000000000000000000000000000FF000000
      F700000000000000000000000000000000000000000000000000D6946B00FFFF
      FF00FFFFFF00D6BDBD00BD949400DECEC600F7EFDE00DEC6B500B58C8400B58C
      7B00DECEB500B5AD9400A5636B00000000000000000000000000000000000000
      0000FFE7E700FFE7D600EFCEBD00E7C6BD00E7CEC600DED6CE00D6CECE009494
      94000000000000000000000000000000000000000000429CFF0042A5FF0042B5
      FF0042B5FF0039A5FF002994FF001884FF008CC6F700FFFFEF00FFFFF700D6D6
      D600737BAD007B739400000000000000000000000000000000000000F7000000
      F7000000FF000000000000000000000000000000000000000000000000000000
      F7000000F7000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00D6BDBD00B58C840094636300AD847B00CEA59C00A56B
      5A00A56B5A00A56B5A00A5636B00000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFB59C00000000000000
      000000000000000000000000000000000000000000000000000042A5FF0042AD
      FF0042B5FF0042B5FF0031A5FF002994FF001884FF0094C6FF00B5CEE7004A6B
      BD00526BA500000000000000000000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000F70000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD00A56B
      5A00E79C5200E78C3100B56B4A00000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6B500FFBDA500F7AD9400000000000000
      00000000000000000000000000000000000000000000000000000000000042A5
      FF0042ADFF0042B5FF0042ADFF00319CFF00218CFF001884FF00316BE7003163
      C600000000000000000000000000000000000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600A56B
      5A00FFB55A00BD7B5A0000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6B500FFBDA500FFB59C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042A5FF0042ADFF0042B5FF0039ADFF003994F7001831B5003952DE000000
      0000000000000000000000000000000000000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00F7F7EF00DEC6C600A56B
      5A00C6846B00000000000000000000000000000000000000000000000000CE9C
      9C00FFE7D600FFDECE00FFCEBD00FFC6B500FFBDA500FFAD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042A5FF0042B5FF00000000000000000018109400394ADE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00A56B
      5A0000000000000000000000000000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018189C00394ADE000000
      000000000000000000000000000000000000000000000000000000000000A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00000000000000
      000000000000000000000000000000000000000000000000000000000000A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00000000000000
      000000000000000000000000000000000000000000000000000000000000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000000000000000
      0000000000000000000000000000000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B0000000000000000000000000000000000A563
      6B00F7DEC600F7DEB500EFCEA500E7BD9C00D6AD8C00CE9C8400A5636B00A563
      6B00A5636B00A5636B000000000000000000000000000000000000000000A563
      6B00EFCEB500FFE7C6009CC68400C6CE9400E7CEA500EFC69C00A5636B00A563
      6B00A5636B00A5636B000000000000000000000000000000000000000000BD4A
      0000FFF7D600FFEFC600FFF7BD00ADA5C6000021F700FFDE9400BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000000000000000000000000000B5948400FFEF
      C600F7DEB500F7D6AD00F7D6A500EFCE9400EFC68C00EFC68400EFC67B00EFC6
      8400EFC68400F7C68400A5636B0000000000000000000000000000000000A563
      6B00F7DEC600F7E7C600F7DEBD00F7DEB500DECEB500F7D6A500EFCE9C00EFC6
      9400E7BD8400DEAD7B00A5636B00A5636B00000000000000000000000000A563
      6B00EFCEB500F7E7C600109429001894310039A54200D6CE9C00FFD6A500E7CE
      9400D6C68400DEC68400A5636B00A5636B00000000000000000000000000BD4A
      00000021F7000021F7000021F7000021F7000021F700FFDEA500F7D69C00BDAD
      AD000021F700FFDE8400FFD68C00BD4A00000000000000000000B5948400FFEF
      CE00F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B0000000000000000000000000000000000A573
      6B00F7E7CE00F7E7C600F7DEBD00005AFF000863F700005AFF004284DE00E7C6
      9C00EFCE9400F7CE8C00F7CE8400A5636B00000000000000000000000000A573
      6B00F7CEB500FFE7CE00189C3100008C210010942900C6C69400FFD6AD00BDBD
      8400189431000894290094B56300A5636B00000000000000000000000000BD4A
      00009CA5E7008494DE007384DE00425AE7000021F7000021F7000021F7000021
      F7000021F7000021F7000021F700BD4A00000000000000000000B5948C00FFEF
      DE00F7E7C600F7DEBD00F7D6B500EFD6AD00EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B00000000000000000029A5CE0029A5CE00A573
      6B00F7E7D600F7E7CE00005AFF00005AFF00005AFF00005AFF00005AFF00106B
      EF00EFCE9400EFC69400EFC68C00A5636B000000000029A5CE0029A5CE00A573
      6B00F7CEB500FFEFD600BDD6A50042A552005AAD5A00EFD6AD00FFD6AD00CEC6
      9400299C3900008C210084B56300A5636B00000000000894CE000894CE00BD4A
      0000FFF7DE00FFF7CE00FFF7C600B5ADCE000021F700FFF7A500E7CEAD009C94
      BD000021F7008C94B5006B73CE00BD4A00000000000000000000BD948C00FFF7
      E700F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6A500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B000000000029A5CE0063CEEF007BDEFF00BD84
      6B00F7E7DE00FFE7D6004A94EF00005AFF00639CDE00E7D6B500005AFF00005A
      FF00EFCE9C00EFCE9C00F7CE9400A5636B0029A5CE0063CEEF007BDEFF00BD84
      6B00EFD6BD00FFEFDE00FFE7DE00D6D6AD0052AD5A00EFD6B500FFDEB500F7D6
      AD0042A54A008CB56B00EFCE9400A5636B000894CE0063CEEF007BDEFF00BD4A
      00004263F700637BEF007B8CDE005A6BE7000021F700BDB5C600C6B5BD00A59C
      BD000021F700FFE78C00FFE79400BD4A00000000000000000000C69C9400FFFF
      F700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6AD00EFCE9C00EFC6
      9400EFC68C00EFC68400A5636B000000000029A5CE007BDEF700A5EFFF00BD84
      6B00FFEFE700FFEFDE00005AFF00005AFF005294E700C6C6C600005AFF00005A
      FF00F7CEA500EFCE9C00F7CE9C00A5636B0029A5CE007BDEF700A5EFFF00BD84
      6B00F7D6C600FFF7E700F7E7D600FFE7D60094C684008CBD7B00CECEA5008CBD
      7B0063AD5A00F7CEA500F7CE9C00A5636B000894CE007BDEF700A5EFFF00BD4A
      00000021F7000021F7000021F7000021F7000021F7000021F7000021F7000021
      F7000021F7000021F7000021F700BD4A00000000000000000000C6A59C00FFFF
      FF00FFF7E700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6A500EFCE
      9C00EFC69400F7CE8C00A5636B000000000029A5CE0084DEF700C6F7FF00D694
      6B00FFF7E700FFF7E70084ADE700005AFF00005AFF00005AFF00005AFF001873
      EF00F7D6AD00F7D6A500F7D69C00A5636B0029A5CE0084DEF700C6F7FF00D694
      6B00EFD6C600FFF7EF00FFEFDE00FFE7D600EFDEC60031A542001094290039A5
      4A00E7CEA500F7D6AD00F7D6A500A5636B000894CE0084DEF700C6F7FF00BD4A
      0000FFFFFF00FFFFEF00FFFFE700B5BDE7000021F700FFFFBD00FFE7B500B5AD
      C6000021F700D6C6AD00ADA5C600BD4A00000000000000000000CEAD9C00FFFF
      FF00FFF7F700FFEFE700FFEFDE00F7E7CE00F7E7C600F7DEBD00F7D6B500F7D6
      A500EFCE9C00F7CE9400A5636B000000000029A5CE0084DEF700CEFFFF00DE9C
      7300FFFFF700FFFFF700FFEFE700217BF700106BFF000063FF001873F700DECE
      BD00F7D6B500F7D6AD00F7D6A500A5636B0029A5CE0084DEF700CEFFFF00DE9C
      7300F7DEC600FFFFF700FFEFE700FFEFDE00E7E7C600299C3900008C1800319C
      4200E7D6AD00F7D6AD00F7D6A500A5636B000894CE0084DEF700CEFFFF00BD4A
      0000EFC69C00EFC6A500FFDEAD009494CE000021F700FFFFCE00FFEFCE00C6BD
      DE000021F700FFFFB500FFF7C600BD4A00000000000000000000CEAD9C00FFFF
      FF00FFFFFF00FFF7F700FFEFE700F7EFDE00F7E7CE00F7E7C600F7DEBD00F7D6
      B500F7D6A500F7D6A500A5636B000000000029A5CE0084DEF700CEFFFF00E7AD
      7B00F7E7DE00FFEFE700F7EFE700F7EFDE00F7E7D600F7E7D600F7E7CE00F7DE
      C600F7DEBD00F7D6B500F7D6AD00A5636B0029A5CE0084DEF700CEFFFF00E7AD
      7B00F7E7D600FFFFFF00FFFFF700FFF7EF00F7EFDE008CC68C006BBD730094C6
      8C00EFDEBD00F7DEB500F7DEB500A5636B000894CE0084DEF700CEFFFF00BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A00000000000000000000D6B5A500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7CE00F7DEC600F7DE
      BD00F7DEB500EFCEA500A5636B000000000029A5CE0084DEF700CEFFFF00E7AD
      7B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D694
      6B00D6946B00D6946B00D6946B00A5636B0029A5CE0084DEF700CEFFFF00E7AD
      7B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D694
      6B00D6946B00D6946B00D6946B00A5636B000894CE0084DEF700CEFFFF00BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A0000BD4A
      0000BD4A0000BD4A0000BD4A0000BD4A00000000000000000000DEB5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFE7D600FFEF
      CE00DECEB500B5AD9400A5636B000000000029A5CE0084E7FF00D6FFFF00C6DE
      DE0094C6C6008CC6C60073BDC60029A5CE000000000000000000000000000000
      00000000000000000000000000000000000029A5CE0084E7FF00D6FFFF00C6DE
      DE0094C6C6008CC6C60073BDC60029A5CE000000000000000000000000000000
      0000000000000000000000000000000000000894CE0084E7FF00D6FFFF00C6DE
      DE0094C6C6008CC6C60073BDC6000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEB5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7E700EFDECE00B58C
      7B00A57B6B009C736300A5636B000000000029A5CE007BDEF700B5E7F70094E7
      FF0063DEFF005ADEFF0052DEFF0029A5CE000000000000000000000000000000
      00000000000000000000000000000000000029A5CE007BDEF700B5E7F70094E7
      FF0063DEFF005ADEFF0052DEFF0029A5CE000000000000000000000000000000
      0000000000000000000000000000000000000894CE007BDEF700B5E7F70094E7
      FF0063DEFF005ADEFF0052DEFF000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7BDA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD00AD73
      5A00E79C5200E78C3100B56B4A000000000029A5CE0029A5CE0029A5CE0029A5
      CE0029A5CE0029A5CE0029A5CE0029A5CE000000000000000000000000000000
      00000000000000000000000000000000000029A5CE0029A5CE0029A5CE0029A5
      CE0029A5CE0029A5CE0029A5CE0029A5CE000000000000000000000000000000
      0000000000000000000000000000000000000894CE000894CE000894CE000894
      CE000894CE000894CE000894CE000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7BDA500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600BD84
      6300FFB55A00BD7B5A00000000000000000029A5CE0029A5CE0063CEEF0063D6
      EF005AD6F7004AC6EF00219CCE0029A5CE000000000000000000000000000000
      00000000000000000000000000000000000029A5CE0029A5CE0063CEEF0063D6
      EF005AD6F7004AC6EF00219CCE0029A5CE000000000000000000000000000000
      0000000000000000000000000000000000000894CE000894CE0063CEEF0063D6
      EF005AD6F7004AC6EF000894CE000894CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7BDA500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00F7F7EF00F7F7EF00DEC6C600B57B
      6300C6846B000000000000000000000000000000000029A5CE0029A5CE0029A5
      CE0029A5CE00299CCE0029A5CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029A5CE0029A5CE0029A5
      CE0029A5CE00299CCE0029A5CE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000894CE000894CE000894
      CE000894CE000894CE000894CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFC6AD00EFCE
      B500EFCEB500EFCEB500EFCEB500EFCEB500EFCEB500EFCEB500E7C6B500A56B
      5A0000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000F00000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFF7FFFFFFF80FFFFFE3FFFFFFF80
      FFFFFC1FF80FFF80FDFFF80FF80FFF80F9FFF007C001FF80F1FFE003C001FF80
      E003C001E003FFB0C003C001F00700B9C003F007C0010083E003E003C00100E3
      F1FFC001E00300C1F9FFC001F0074080FDFFF80FF80F40E3FFFFF80FFC1F60E3
      FFFFFFFFFE3F79C3FFFFFFFFFF7F0307FFC7FFFFFFFFFFFF0003FFFFFFFFFFFF
      0003FFFFFFFFFFFF0003BDFFFFBDFFBF0003B9FFFF9DFF9F0003B1FFFF8DFF8F
      0003A003C005C00700038003C001C00300038003C001C0038187A003C005C007
      C3C7B1FFFF8DFF8FFE44B9FFFF9DFF9FFC00BDFFFFBDFFBFFC00FFFFFFFFFFFF
      FC01FFFFFFFFFFFFFE43FFFFFFFFFFFFFFFFF81FE000FFFFF80FF81FE000FFFF
      F003F81FE000FFFFE003F81FE00080018000FC3F000080010000FC3F00008001
      0000FC3F000080010000FC3F000080010000FC3F000080010000FC3E00008001
      0000981C000080018001000000008001F80F000100008001F80F000300018001
      F81F0007E003FFFFF83F981FE007FFFFFC00FE3FFFFBFCFF0000E007FFF1FC0F
      0000E007FFE0FC0300008003FFC1FC0300008001FF83F00100008001F307E000
      00008001F20FC00000008001F01F800100008001C03F00010000C003C07F0003
      0007E007001F00030007F81F001F00070007F81FC0FF000F000FF81FC0FF801F
      001FF81FF3FFC03F003FFC3FF3FFE07FFFFFFE1FFE7FE000FF9FFC0FF07FE000
      FC03FC0FC001E000FC03FC0FC001E000F800DC0EC001E000F800E805C0010000
      F800F003C0010000F801B003C00100008003C000C00100008003E001C0010000
      801FC000C0010000001FA001C0010000001FF003C0010000803FF003C0010001
      C07FCC0CF001E003E0FFFFFFFC7FE007C001FFFFFE3FFFFFC0013FFFE007FFFF
      C0011FFFE007FC3FC0010FF38003F81FC00100338001F00FC001003F8001E007
      C0011C738001C003C00118F38001C003C00111F98001C003C001039CC003C003
      C001079CE007C003C0010F9CF81FE007C0011FC0F81FF00FC0033FFFF81FF81F
      C0077FFFF81FFFFFC00FFFFFFC3FFFFFFFFF800080018001003F000000000000
      001F000000000000001F000000000000801F000000000000801F000000000000
      C03F000000000000E07F000000000000C07F0000000000008041000000000000
      80550000000000008049000000000000805D000000000000C0C0000000000000
      E1FE000000000000FFFF800080018001FFFFF81FE07FFFFF8FFFE007C01FE03F
      807FC003C00FC01F800FC003C007C01F80078001C007C01F80078001C007C01F
      80038001C007C01F80038001C007C01F80018001E007C0038001C003FC07C001
      8001C003FF9FC0018003E007F39FC0008007F00FF39FC000E3C7FC3FF39FC000
      FE0FF81FF83FC000FFFFF81FFC7FE001C387E0018007FF80D937C0010007FF80
      DD7780010007FF80CD6780010007FF80E10F80010007FF80F01F80010007FF80
      FC7F80010007FF80F83F800100070081F81F800100070083F01F8003000700E3
      E10F8003000300C1E38F800300010080E38F8003000000E3E7CF8003000000E3
      EFEFC007001001C3FFFFE00F80390307FC3FF3FFFFFFF801F81FE1FFFFFFF801
      F00FE0FFFC1FF801E007F07FF00FF801C003F83FC00380018001FC1FC0018001
      0000FE0F800080010000E707800080010000C383800080010000E7C180018001
      8001FD6100018003C003FC730F038007E007F83FFFC3801FF00FF01FFFF7801F
      F81FFC7FFFFF803FFC3FFEFFFFFF807FF000F81FF81FF81FF000E007E007E007
      F000C003C003C003C000800180018001C000800180018001C000000000000000
      0000000000000000000000000000000000000000000000000001000000000000
      000300000000000000038001800180010007800180018001000FC003C003C003
      000FE007E007E007801FF81FF81FF81F8FFFC0018000FFFF87FF800000008001
      83FF800000008001C1FF800000008001E0FF800000008001F003800000008001
      F801800000008001FC00800000008000FC00800000008000FC00800000000001
      FC00800000000001FC00800080010003FC008000E007003FFE018000F00F007F
      FF038000FC3F80FFFFFFC001FFFFC1FFFFFCC001FDC7F0FF9FF9C001F003E00F
      8FF38001C001C00387E7C00100018001C3CFC00100010001F11FC00100010001
      F83FC00100010001FC7FC00180010001F83FC001C0030001F19FC001E0070001
      E3CFC001F00F8003C7E7C001F03FC0078FFBC001F03FE00F1FFFC003F03FF01F
      3FFFC007E03FF99FFFFFC00FE07FFF9FE03FE03FE03FC001E003E003E001C001
      E000E000E000C001E000E000E000C001800080008000C001000000000000C001
      000000000000C001000000000000C001000000000000C001000000000000C001
      000000000000C00100FF00FF00FFC00100FF00FF00FFC00100FF00FF00FFC003
      00FF00FF00FFC00781FF81FF81FFC00F00000000000000000000000000000000
      000000000000}
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 616
    Top = 7
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'cxbtnImpPOS'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarButton9'
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton28'
        end
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton31qq'
        end
        item
          Visible = True
          ItemName = 'bt_CtrlQ'
        end
        item
          Visible = True
          ItemName = 'bt_Ctrl_B'
        end
        item
          Visible = True
          ItemName = 'bt_Ctrl_J'
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
          Visible = False
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
          ItemName = 'dxBarToExcelBH'
        end
        item
          Visible = True
          ItemName = 'dxBarBHIMPORT'
        end>
    end
    object cxbtnImpPOS: TdxBarButton
      Caption = #20174'POS'#23548#20837
      Category = 0
      Hint = #20174'POS'#23548#20837
      Visible = ivAlways
      ImageIndex = 24
      LargeImageIndex = 24
      PaintStyle = psCaptionGlyph
      OnClick = cxbtnImpPOSClick
    end
    object dxBarButton27: TdxBarButton
      Action = actImportBarCode
      Category = 0
    end
    object dxBarToExcelBH: TdxBarButton
      Action = actToExcel
      Category = 0
    end
    object dxBarBHIMPORT: TdxBarButton
      Action = actImportExcel
      Category = 0
    end
    object dxBarButton28: TdxBarButton
      Action = actF11
      Category = 0
      ShortCut = 122
    end
    object dxBarButton31qq: TdxBarButton
      Caption = #26465#30721#25195#25551#24405#20837'...'
      Category = 0
      Hint = #26465#30721#25195#25551#24405#20837
      Visible = ivAlways
      ShortCut = 115
      OnClick = dxBarCodeSMClick
    end
    object bt_CtrlQ: TdxBarButton
      Caption = #20999#25442#22522#25968#27491#36127#21495
      Category = 0
      Hint = #20999#25442#22522#25968#27491#36127#21495
      Visible = ivAlways
      ShortCut = 16465
      OnClick = bt_CtrlQClick
    end
    object bt_Ctrl_B: TdxBarButton
      Caption = #23450#20301#21040#26465#30721#26694
      Category = 0
      Hint = #23450#20301#21040#26465#30721#26694
      Visible = ivAlways
      ShortCut = 16450
      OnClick = bt_Ctrl_BClick
    end
    object bt_Ctrl_J: TdxBarButton
      Caption = #23450#20301#21040#22522#25968#26694
      Category = 0
      Hint = #23450#20301#21040#22522#25968#26694
      Visible = ivAlways
      ShortCut = 16458
      OnClick = bt_Ctrl_JClick
    end
  end
  inherited actlst1: TActionList
    Left = 240
    Top = 288
    object actBatchTipWareId: TAction
      Caption = #25209#37327#26356#26032#20986#24211#20179#24211
      OnExecute = actBatchTipWareIdExecute
    end
    object actImportBarCode: TAction
      Caption = #20174#26465#30721#25991#20214#23548#20837
      OnExecute = actImportBarCodeExecute
    end
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'DataSetProvider1'
    RemoteServer = CliDM.SckCon
    OnNewRecord = cdsMasterNewRecord
    Left = 584
    Top = 130
    object cdsMasterFAPPLYSTORAGEORGUNITID: TWideStringField
      FieldName = 'FAPPLYSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFSCMSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSCMSTORAGEORGUNITID'
      OnChange = cdsMasterFSCMSTORAGEORGUNITIDChange
      Size = 44
    end
    object cdsMasterFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 200
    end
    object cdsMasterFDISTRIBUTIONTYPE: TWideStringField
      FieldName = 'FDISTRIBUTIONTYPE'
      Size = 100
    end
    object cdsMasterFCOMANYORGID: TWideStringField
      FieldName = 'FCOMANYORGID'
      Size = 44
    end
    object cdsMasterFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
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
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
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
    object cdsMasterFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 80
    end
    object cdsMasterFSOURCEFUNCTION: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 80
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
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdsMasterFPURCHASEORGUNIT: TWideStringField
      FieldName = 'FPURCHASEORGUNIT'
      Size = 44
    end
    object cdsMasterCFSTORAGEORGID: TWideStringField
      FieldName = 'CFSTORAGEORGID'
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
    object cdsMasterCFORDERTYPEID: TWideStringField
      DisplayLabel = #37319#36141#35746#21333#31867#22411
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 100
    end
    object cdsMastercfapplywarehouseid: TWideStringField
      FieldName = 'cfapplywarehouseid'
      Size = 60
    end
  end
  inherited dsMaster: TDataSource
    Left = 656
    Top = 119
  end
  inherited cdsDetail: TClientDataSet
    Left = 40
    Top = 295
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFPRICE: TFloatField
      DisplayLabel = #21333#20215
      FieldName = 'FPRICE'
      OnChange = cdsDetailFPRICEChange
    end
    object cdsDetailFAMOUNT: TFloatField
      DisplayLabel = #21514#29260#20215#37329#39069
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFLOACLAMOUNT: TFloatField
      FieldName = 'FLOACLAMOUNT'
    end
    object cdsDetailFCOLORID: TWideStringField
      FieldName = 'FCOLORID'
      Size = 44
    end
    object cdsDetailFSIZESID: TWideStringField
      FieldName = 'FSIZESID'
      Size = 44
    end
    object cdsDetailFCUPID: TWideStringField
      FieldName = 'FCUPID'
      Size = 44
    end
    object cdsDetailFSIZEGROUPID: TWideStringField
      FieldName = 'FSIZEGROUPID'
      Size = 44
    end
    object cdsDetailFPACKID: TWideStringField
      FieldName = 'FPACKID'
      Size = 44
    end
    object cdsDetailFPACKNUM: TFloatField
      FieldName = 'FPACKNUM'
    end
    object cdsDetailFWILLWAREHOUSEID: TWideStringField
      FieldName = 'FWILLWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFTIPWAREHOUSEID: TWideStringField
      FieldName = 'FTIPWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
    object cdsDetailFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      OnChange = cdsDetailFMATERIALIDChange
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
      Size = 80
    end
    object cdsDetailFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      DisplayLabel = #24207#21495
      FieldName = 'FSEQ'
    end
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdsDetailCFISCLOSE: TFloatField
      FieldName = 'CFISCLOSE'
    end
    object cdsDetailCFTIPLOCATIONID: TWideStringField
      FieldName = 'CFTIPLOCATIONID'
      Size = 44
    end
    object cdsDetailCFWILLLOCATIONID: TWideStringField
      FieldName = 'CFWILLLOCATIONID'
      Size = 44
    end
    object cdsDetailcfMaterialNumber: TStringField
      DisplayLabel = #21830#21697#32534#30721
      FieldKind = fkCalculated
      FieldName = 'cfMaterialNumber'
      Calculated = True
    end
    object cdsDetailcfMaterialName: TStringField
      DisplayLabel = #21830#21697'mingc'
      FieldKind = fkCalculated
      FieldName = 'cfMaterialName'
      Calculated = True
    end
    object cdsDetailcfColorName: TStringField
      DisplayLabel = #39068#33394
      FieldKind = fkCalculated
      FieldName = 'cfColorName'
      Calculated = True
    end
    object cdsDetailcfSIZEName: TStringField
      DisplayLabel = #23610#30721
      FieldKind = fkCalculated
      FieldName = 'cfSIZEName'
      Calculated = True
    end
    object cdsDetailcfCupName: TStringField
      DisplayLabel = #20869#38271
      FieldKind = fkCalculated
      FieldName = 'cfCupName'
      Calculated = True
    end
    object cdsDetailFWareHouseNumber: TStringField
      DisplayLabel = #25910#36135#20179#24211#32534#30721
      FieldKind = fkCalculated
      FieldName = 'FWareHouseNumber'
      Calculated = True
    end
    object cdsDetailFWareHouseName: TStringField
      DisplayLabel = #25910#36135#20179#24211#21517#31216
      FieldKind = fkCalculated
      FieldName = 'FWareHouseName'
      Calculated = True
    end
    object cdsDetailFWareHouseSeNumber: TStringField
      DisplayLabel = #21457#36135#20179#24211#32534#30721
      FieldKind = fkCalculated
      FieldName = 'FTIPWAREHOUSENumber'
      Calculated = True
    end
    object cdsDetailFWareHouseSeName: TStringField
      DisplayLabel = #21457#36135#20179#24211#21517#31216
      FieldKind = fkCalculated
      FieldName = 'FTIPWAREHOUSEName'
      Calculated = True
    end
    object cdsDetailCFAssistNum: TWideStringField
      FieldName = 'CFAssistNum'
      Size = 80
    end
  end
  inherited dsDetail: TDataSource
    Left = 40
    Top = 359
  end
  inherited pmDetail: TPopupMenu
    OnPopup = pmDetailPopup
    Left = 360
    Top = 281
  end
  inherited qryStylePack: TADOQuery
    Left = 514
  end
  inherited qryStyleColor: TADOQuery
    Left = 464
  end
  inherited dsStyleColor: TDataSource
    Left = 464
  end
  inherited dsStylePack: TDataSource
    Left = 513
  end
  inherited dsStyleSize: TDataSource
    Left = 566
  end
  inherited qryStyleSize: TADOQuery
    Left = 564
  end
  inherited cdsDetailAmount: TClientDataSet
    AfterPost = cdsDetailAmountAfterPost
    OnNewRecord = cdsDetailAmountNewRecord
    Left = 128
    Top = 299
    object cdsDetailAmountFMATERIALID: TWideStringField
      DisplayLabel = #21830#21697'ID'
      FieldName = 'FMATERIALID'
      OnChange = cdsDetailAmountFMATERIALIDChange
      Size = 200
    end
    object cdsDetailAmountCFSizeGroupID: TStringField
      FieldName = 'CFSizeGroupID'
      Size = 44
    end
    object cdsDetailAmountCFCOLORID: TWideStringField
      DisplayLabel = #39068#33394'ID'
      FieldName = 'CFCOLORID'
      Size = 200
    end
    object cdsDetailAmountCFPACKID: TStringField
      DisplayLabel = #37197#30721'ID'
      FieldName = 'CFPACKID'
      OnChange = cdsDetailAmountCFPACKIDChange
      Size = 44
    end
    object cdsDetailAmountCFCUPID: TWideStringField
      DisplayLabel = #20869#38271'ID'
      FieldName = 'CFCUPID'
      Size = 200
    end
    object cdsDetailAmountFWAREHOUSEID: TStringField
      DisplayLabel = #25910#36135#20837#24211#20179#24211'ID'
      FieldName = 'FWILLWAREHOUSEID'
      Size = 200
    end
    object cdsDetailAmountFWAREHOUSENumber: TStringField
      DisplayLabel = #25910#36135#20179#24211#32534#21495
      FieldKind = fkCalculated
      FieldName = 'FWAREHOUSENumber'
      Size = 200
      Calculated = True
    end
    object cdsDetailAmountFWAREHOUSEName: TStringField
      DisplayLabel = #25910#36135#20179#24211#21517#31216
      FieldKind = fkCalculated
      FieldName = 'FWAREHOUSEName'
      Size = 200
      Calculated = True
    end
    object cdsDetailAmountFTIPWAREHOUSEID: TStringField
      DisplayLabel = #20986#24211#20179#24211'ID'
      FieldName = 'FTIPWAREHOUSEID'
      Size = 200
    end
    object cdsDetailAmountFTIPWAREHOUSENumber: TStringField
      DisplayLabel = #20986#24211#20179#24211#32534#21495
      FieldKind = fkCalculated
      FieldName = 'FTIPWAREHOUSENumber'
      Size = 200
      Calculated = True
    end
    object cdsDetailAmountFTIPWAREHOUSEName: TStringField
      DisplayLabel = #20986#24211#20179#24211#21517#31216
      FieldKind = fkCalculated
      FieldName = 'FTIPWAREHOUSEName'
      Size = 200
      Calculated = True
    end
    object cdsDetailAmountcfMaterialNumber: TStringField
      DisplayLabel = #21830#21697#32534#21495
      FieldName = 'cfMaterialNumber'
      Size = 200
    end
    object cdsDetailAmountcfMaterialName: TStringField
      DisplayLabel = #21830#21697#21517#31216
      FieldKind = fkCalculated
      FieldName = 'cfMaterialName'
      Size = 200
      Calculated = True
    end
    object cdsDetailAmountCFColorName: TStringField
      DisplayLabel = #39068#33394
      FieldKind = fkCalculated
      FieldName = 'CFColorName'
      Size = 200
      Calculated = True
    end
    object cdsDetailAmountCFPackName: TStringField
      DisplayLabel = #37197#30721
      FieldKind = fkCalculated
      FieldName = 'CFPackName'
      Size = 100
      Calculated = True
    end
    object cdsDetailAmountCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsDetailAmountCFPackNum: TIntegerField
      DisplayLabel = #31665#25968
      FieldName = 'CFPackNum'
      OnChange = cdsDetailAmountCFPackNumChange
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
    object cdsDetailAmountfPrice: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'fPrice'
    end
    object cdsDetailAmountfAmount: TFloatField
      DisplayLabel = #21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'fAmount'
      Calculated = True
    end
    object cdsDetailAmountfTotalQty: TIntegerField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'fTotalQty'
      Calculated = True
    end
    object cdsDetailAmountFSourceBillID: TStringField
      FieldName = 'FSourceBillID'
      Size = 44
    end
    object cdsDetailAmountFSourceBillNumber: TStringField
      FieldName = 'FSourceBillNumber'
      Size = 80
    end
    object cdsDetailAmountCFOLDPACKID: TStringField
      FieldName = 'CFOLDPACKID'
      Size = 44
    end
    object cdsDetailAmountCFColorCode: TStringField
      FieldName = 'CFColorCode'
      Size = 100
    end
  end
  inherited dsDetailAmount: TDataSource
    Left = 128
    Top = 355
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 696
  end
  object cdsSupplyOrg: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    Left = 448
    Top = 197
  end
  object dsSupplyOrg: TDataSource
    DataSet = cdsSupplyOrg
    Left = 488
    Top = 197
  end
  object cdsOrderType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 337
    Top = 121
  end
  object dsOrderType: TDataSource
    DataSet = cdsOrderType
    Left = 385
    Top = 113
  end
end
