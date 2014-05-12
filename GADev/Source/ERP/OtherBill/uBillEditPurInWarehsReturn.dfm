inherited FM_BillEditPurInWarehsReturn: TFM_BillEditPurInWarehsReturn
  Left = 212
  Caption = #37319#36141#36864#36135#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    Top = 200
    Height = 268
    inherited cxPageDetail: TcxPageControl
      Height = 268
      OnChange = cxPageDetailChange
      ClientRectBottom = 268
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Height = 220
          inherited dbgList2: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'fTotaLQty'
                Column = dbgList2fAmount
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
              Width = 75
            end
            object dbgList2cfMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialName'
              Options.Editing = False
              Width = 119
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
              Properties.OnButtonClick = dbgList2CFColorCodePropertiesButtonClick
              Width = 80
            end
            object dbgList2CFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Options.Editing = False
              Width = 64
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
            object dbgList2FDISCOUNTRATE: TcxGridDBColumn
              DataBinding.FieldName = 'FDISCOUNTRATE'
              Width = 60
            end
            object dbgList2FACTUALPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FACTUALPRICE'
              Width = 60
            end
            object dbgList2Ftaxrate: TcxGridDBColumn
              DataBinding.FieldName = 'Ftaxrate'
              Width = 50
            end
            object dbgList2FACTUALTAXPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'FACTUALTAXPRICE'
              Width = 80
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
            object dbgList2fTotaLQty: TcxGridDBColumn
              DataBinding.FieldName = 'fTotaLQty'
            end
            object dbgList2fAmount: TcxGridDBColumn
              Caption = #37329#39069#21512#35745
              DataBinding.FieldName = 'fTotaLQty'
              Options.Editing = False
            end
            object dbgList2Ftax: TcxGridDBColumn
              DataBinding.FieldName = 'Ftax'
            end
            object dbgList2FtaxAmount: TcxGridDBColumn
              DataBinding.FieldName = 'FtaxAmount'
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
            object dbgList2CFUnitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFUnitName'
              Options.Editing = False
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
        inherited cxGrid4: TcxGrid
          Height = 223
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
              Width = 60
            end
            object cxgridDetialCFSizeName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeName'
              Width = 40
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
              DataBinding.FieldName = 'CFDPPRICE'
            end
            object cxgridDetialFPRICE: TcxGridDBColumn
              Caption = #26631#20934#20215
              DataBinding.FieldName = 'FPRICE'
            end
            object cxgridDetialFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'FQTY'
            end
            object cxgridDetialFDISCOUNTRATE: TcxGridDBColumn
              Caption = #25240#25187
              DataBinding.FieldName = 'FDISCOUNTRATE'
            end
            object cxgridDetialFACTUALPRICE: TcxGridDBColumn
              Caption = #23454#38469#21333#20215
              DataBinding.FieldName = 'FACTUALPRICE'
            end
            object cxgridDetialFTAXRATE: TcxGridDBColumn
              Caption = #31246#29575
              DataBinding.FieldName = 'FTAXRATE'
            end
            object cxgridDetialFACTUALTAXPRICE: TcxGridDBColumn
              Caption = #25240#21518#21547#31246#21333#20215
              DataBinding.FieldName = 'FACTUALTAXPRICE'
            end
            object cxgridDetialFAMOUNT: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'FAMOUNT'
            end
            object cxgridDetialFTAX: TcxGridDBColumn
              Caption = #31246#39069
              DataBinding.FieldName = 'FTAX'
            end
            object cxgridDetialFTAXAMOUNT: TcxGridDBColumn
              Caption = #20215#31246#21512#35745
              DataBinding.FieldName = 'FTAXAMOUNT'
            end
            object cxgridDetialCFCHECKINPUTQTY: TcxGridDBColumn
              Caption = #25195#25551#25968
              DataBinding.FieldName = 'CFCHECKINPUTQTY'
            end
            object cxgridDetialCFCHECKDIFFQTY: TcxGridDBColumn
              Caption = #24046#24322#25968
              DataBinding.FieldName = 'CFCHECKDIFFQTY'
            end
            object cxgridDetialFBASESTATUS: TcxGridDBColumn
              Caption = #34892#29366#24577
              DataBinding.FieldName = 'FBASESTATUS'
            end
            object cxgridDetialFISPRESENT: TcxGridDBColumn
              Caption = #36192#21697
              DataBinding.FieldName = 'FISPRESENT'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 50
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Width = 80
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Width = 80
            end
            object cxgridDetialCFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
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
    TabOrder = 6
  end
  inherited pnl_top: TPanel
    Height = 147
    inherited pnlCodeSM: TPanel
      Top = 106
      Height = 40
      inherited lb_msg: TLabel
        Left = 70
      end
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Height = 105
      ClientRectBottom = 105
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Height = 105
          inherited lbDescription: TLabel
            Left = 3
            Top = 83
            Width = 47
            Caption = #22791'   '#27880
          end
          inherited Label2: TLabel
            Left = 3
            Top = 6
          end
          inherited Label5: TLabel
            Left = 663
            Top = 6
          end
          inherited imgTJ: TImage
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
          object lbCaption: TLabel [7]
            Left = 592
            Top = 10
            Width = 48
            Height = 12
            Caption = #26639#20301#35828#26126
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = True
            Visible = False
          end
          inherited txDescription: TcxDBTextEdit
            Left = 64
            Top = 78
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 4
            Width = 522
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 725
            Hint = #19994#21153#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            Width = 177
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 64
            DataBinding.DataField = 'FNUMBER'
          end
          inherited lblNumber: TcxLabel
            Left = 289
            Caption = #20379#24212#21830
          end
          inherited txtName: TcxDBTextEdit
            Left = 465
            Top = 4
            DataBinding.DataField = 'CFSupplierName'
            TabOrder = 2
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 725
            Top = 28
            Hint = #24405#20837#26041#24335
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 3
            Width = 177
          end
          inherited cxLabel1: TcxLabel
            Left = 663
            Top = 32
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 346
            Top = 4
            Hint = #20379#24212#21830
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 7
          end
          object cxLabel2: TcxLabel
            Left = 3
            Top = 29
            Caption = #25910#36135#31867#22411
            Transparent = True
          end
          object cxbtnedtRecType: TcxDBLookupComboBox
            Left = 64
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
            Style.Color = clWindow
            TabOrder = 9
            Height = 21
            Width = 175
          end
          object cxLabel3: TcxLabel
            Left = 289
            Top = 33
            Caption = #20316#29992#33539#22260
            Transparent = True
          end
          object cxbtnedtScopetype: TcxDBLookupComboBox
            Left = 346
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
            TabOrder = 11
            Height = 21
            Width = 240
          end
          object cxLabel7: TcxLabel
            Left = 663
            Top = 59
            Caption = #20837#24211#20179#24211
            Transparent = True
          end
          object cxbtnReceivWareNum: TcxButtonEdit
            Tag = 100
            Left = 725
            Top = 53
            Hint = #20837#24211#20179#24211
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxbtnReceivWareNumPropertiesButtonClick
            Properties.OnChange = cxbtnReceivWareNumPropertiesChange
            TabOrder = 13
            OnEnter = btnEnter
            OnExit = btnExit
            OnKeyDown = btnKeyDown
            Width = 81
          end
          object cxbtnReceivWareName: TcxDBTextEdit
            Left = 804
            Top = 53
            DataBinding.DataField = 'CFReceivWareName'
            DataBinding.DataSource = dsMaster
            Enabled = False
            TabOrder = 14
            Width = 98
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 663
            Top = 84
            AutoSize = False
            Caption = #21547#31246
            DataBinding.DataField = 'FISINTAX'
            DataBinding.DataSource = dsMaster
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 15
            Height = 21
            Width = 73
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 740
            Top = 84
            AutoSize = False
            Caption = #21021#22987#21270#21333#25454
            DataBinding.DataField = 'FISINITBILL'
            DataBinding.DataSource = dsMaster
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 16
            Height = 21
            Width = 121
          end
          object cxDBCheckBox3: TcxDBCheckBox
            Left = 868
            Top = 84
            AutoSize = False
            Caption = #24050#32463#29983#25104#24212#20184#21333
            DataBinding.DataField = 'CFCOPE'
            DataBinding.DataSource = dsMaster
            Enabled = False
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 17
            Height = 21
            Width = 137
          end
          object cxLabel4: TcxLabel
            Left = 3
            Top = 56
            Caption = #37319#36141#35746#21333
            Transparent = True
          end
          object cxbtnPO: TcxButtonEdit
            Left = 64
            Top = 53
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            TabOrder = 19
            Width = 175
          end
          object cxLabel5: TcxLabel
            Left = 289
            Top = 60
            Caption = #25910#36135#21333
            Transparent = True
          end
          object cxbtnRecNO: TcxButtonEdit
            Left = 346
            Top = 53
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            TabOrder = 21
            Width = 240
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Left = 348
    Top = 77
    Columns = <
      item
        Color = clGradientActiveCaption
        Expanded = False
        FieldName = 'FNUMBER'
        Title.Caption = #32534#21495
        Title.Color = clSkyBlue
        Width = 128
        Visible = True
      end
      item
        Color = clGradientActiveCaption
        Expanded = False
        FieldName = 'FNAME_L2'
        Title.Caption = #21517#31216
        Title.Color = clSkyBlue
        Width = 125
        Visible = True
      end>
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
          ItemName = 'dxBarF11Imput'
        end
        item
          Visible = True
          ItemName = 'dxBarCodeSM'
        end
        item
          Visible = True
          ItemName = 'bt_CtrlQ'
        end
        item
          Visible = True
          ItemName = 'bt_BarCode'
        end
        item
          Visible = True
          ItemName = 'bt_JS'
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
          BeginGroup = True
          Visible = True
          ItemName = 'bbtCheck'
        end
        item
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
    inherited bbtCheck: TdxBarButton
      Enabled = True
    end
    object bt_CtrlQ: TdxBarButton
      Caption = #20999#25442#22522#25968#27491#36127#21495
      Category = 0
      Hint = #20999#25442#22522#25968#27491#36127#21495
      Visible = ivAlways
      ShortCut = 16465
      OnClick = bt_CtrlQClick
    end
    object bt_BarCode: TdxBarButton
      Caption = #23450#20301#21040#26465#30721#26694
      Category = 0
      Hint = #23450#20301#21040#26465#30721#26694
      Visible = ivAlways
      ShortCut = 16450
      OnClick = bt_BarCodeClick
    end
    object bt_JS: TdxBarButton
      Caption = #23450#20301#21040#22522#25968#26694
      Category = 0
      Hint = #23450#20301#21040#22522#25968#26694
      Visible = ivAlways
      ShortCut = 16458
      OnClick = bt_JSClick
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
  inherited cdsMaster: TClientDataSet
    ProviderName = 'DataSetProvider3'
    RemoteServer = CliDM.SckCon
    Left = 504
    Top = 2
    object cdsMasterCFInWAREHOUSEID: TWideStringField
      DisplayLabel = #25910#36135#20179#24211'ID'
      FieldName = 'CFInWAREHOUSEID'
      OnChange = cdsMasterCFInWAREHOUSEIDChange
      Size = 44
    end
    object wdstrngfldMasterFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object wdstrngfldMasterFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMasterFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object wdstrngfldMasterFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMasterFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object wdstrngfldMasterFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object wdstrngfldMasterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 160
    end
    object cdsMasterFBIZDATE: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object wdstrngfldMasterFHANDLERID: TWideStringField
      FieldName = 'FHANDLERID'
      Size = 44
    end
    object wdstrngfldMasterFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 160
    end
    object wdstrngfldMasterFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object wdstrngfldMasterFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object wdstrngfldMasterFSOURCEFUNCTION: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 160
    end
    object cdsMasterFAUDITTIME: TDateTimeField
      FieldName = 'FAUDITTIME'
    end
    object wdstrngfldMasterFBIZTYPEID: TWideStringField
      FieldName = 'FBIZTYPEID'
      Size = 44
    end
    object wdstrngfldMasterFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object wdstrngfldMasterFBILLTYPEID: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
    object wdstrngfldMasterFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object wdstrngfldMasterFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object wdstrngfldMasterFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Size = 44
    end
    object wdstrngfldMasterFVOUCHERID: TWideStringField
      FieldName = 'FVOUCHERID'
      Size = 44
    end
    object wdstrngfldMasterFTRANSACTIONTYPEID: TWideStringField
      FieldName = 'FTRANSACTIONTYPEID'
      Size = 44
    end
    object wdstrngfldMasterFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      OnChange = wdstrngfldMasterFSUPPLIERIDChange
      Size = 44
    end
    object wdstrngfldMasterFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object wdstrngfldMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object wdstrngfldMasterFPAYMENTTYPEID: TWideStringField
      FieldName = 'FPAYMENTTYPEID'
      Size = 44
    end
    object wdstrngfldMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object wdstrngfldMasterCFPRICETYPEID: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object wdstrngfldMasterCFSUPPLIERSTORAGEID: TWideStringField
      FieldName = 'CFSUPPLIERSTORAGEID'
      Size = 44
    end
    object wdstrngfldMasterCFORDERTYPEID: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterFHASEFFECTED: TFloatField
      FieldName = 'FHASEFFECTED'
    end
    object cdsMasterFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsMasterFYEAR: TFloatField
      FieldName = 'FYEAR'
    end
    object cdsMasterFPERIOD: TFloatField
      FieldName = 'FPERIOD'
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
    object cdsMasterFISINITBILL: TFloatField
      FieldName = 'FISINITBILL'
    end
    object cdsMasterFRECEIPTAMOUNT: TFloatField
      FieldName = 'FRECEIPTAMOUNT'
    end
    object cdsMasterFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFCONVERTMODE: TFloatField
      FieldName = 'FCONVERTMODE'
    end
    object cdsMasterFISSYSBILL: TFloatField
      FieldName = 'FISSYSBILL'
    end
    object cdsMasterFISCENTRALBALANCE: TFloatField
      FieldName = 'FISCENTRALBALANCE'
    end
    object cdsMasterFTOTALLOCALAMOUNT: TFloatField
      FieldName = 'FTOTALLOCALAMOUNT'
    end
    object cdsMasterFPURCHASETYPE: TFloatField
      FieldName = 'FPURCHASETYPE'
    end
    object cdsMasterFISINTAX: TFloatField
      FieldName = 'FISINTAX'
    end
    object cdsMasterFISPRICEINTAX: TFloatField
      FieldName = 'FISPRICEINTAX'
    end
    object cdsMasterFDISCHARGETYPE: TFloatField
      FieldName = 'FDISCHARGETYPE'
    end
    object cdsMasterFISGENBIZAP: TFloatField
      FieldName = 'FISGENBIZAP'
    end
    object cdsMasterFSPLITNUMCOUNT: TFloatField
      FieldName = 'FSPLITNUMCOUNT'
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
    object cdsMasterCFRANGEID: TWideStringField
      FieldName = 'CFRANGEID'
      Size = 44
    end
    object cdsMasterCFMATERIALTYPE: TWideStringField
      FieldName = 'CFMATERIALTYPE'
      Size = 100
    end
    object cdsMasterCFORDERDEFID: TWideStringField
      FieldName = 'CFORDERDEFID'
      Size = 44
    end
    object cdsMasterCFCOPE: TFloatField
      FieldName = 'CFCOPE'
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
    object cdsMasterCFReceivWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivWareName'
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
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 10
    end
  end
  inherited dsMaster: TDataSource
    Left = 566
    Top = 3
  end
  inherited cdsDetail: TClientDataSet
    ProviderName = 'DataSetProvider4'
    RemoteServer = CliDM.SckCon
    object cdsDetailcfMaterialNumber: TStringField
      Tag = 1
      DisplayLabel = #21830#21697#32534#21495
      FieldKind = fkCalculated
      FieldName = 'cfMaterialNumber'
      Size = 200
      Calculated = True
    end
    object cdsDetailcfMaterialName: TStringField
      Tag = 1
      DisplayLabel = #21830#21697#21517#31216
      FieldKind = fkCalculated
      FieldName = 'cfMaterialName'
      Size = 200
      Calculated = True
    end
    object cdsDetailcfColorCode: TStringField
      Tag = 1
      DisplayLabel = #39068#33394#32534#21495
      FieldKind = fkCalculated
      FieldName = 'cfColorCode'
      Size = 100
      Calculated = True
    end
    object cdsDetailcfColorName: TStringField
      Tag = 1
      DisplayLabel = #39068#33394
      FieldKind = fkCalculated
      FieldName = 'cfColorName'
      Calculated = True
    end
    object cdsDetailcfSIZECode: TStringField
      Tag = 1
      DisplayLabel = #23610#30721#32534#21495
      FieldKind = fkCalculated
      FieldName = 'cfSIZECode'
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
      Size = 50
      Calculated = True
    end
    object wdstrngfldDetailCFAssistNum: TWideStringField
      DisplayLabel = #36741#21161#23646#24615#32534#21495
      FieldName = 'CFAssistNum'
      Size = 100
    end
    object wdstrngfldDetailFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object wdstrngfldDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object wdstrngfldDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object wdstrngfldDetailFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object wdstrngfldDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 160
    end
    object wdstrngfldDetailFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object wdstrngfldDetailFUNITID: TWideStringField
      FieldName = 'FUNITID'
      Size = 44
    end
    object wdstrngfldDetailFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      OnChange = wdstrngfldDetailFBASEUNITIDChange
      Size = 44
    end
    object wdstrngfldDetailFASSISTUNITID: TWideStringField
      FieldName = 'FASSISTUNITID'
      Size = 44
    end
    object wdstrngfldDetailFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object wdstrngfldDetailFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object wdstrngfldDetailFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object wdstrngfldDetailFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object wdstrngfldDetailFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object wdstrngfldDetailFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Size = 44
    end
    object wdstrngfldDetailFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 160
    end
    object wdstrngfldDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object wdstrngfldDetailFPURORDERID: TWideStringField
      FieldName = 'FPURORDERID'
      Size = 44
    end
    object wdstrngfldDetailFPURORDERENTRYID: TWideStringField
      FieldName = 'FPURORDERENTRYID'
      Size = 44
    end
    object wdstrngfldDetailFPURORDERNUMBER: TWideStringField
      FieldName = 'FPURORDERNUMBER'
      Size = 160
    end
    object wdstrngfldDetailFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailFMFG: TDateTimeField
      FieldName = 'FMFG'
    end
    object cdsDetailFEXP: TDateTimeField
      FieldName = 'FEXP'
    end
    object wdstrngfldDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object wdstrngfldDetailFCOREBILLTYPEID: TWideStringField
      FieldName = 'FCOREBILLTYPEID'
      Size = 44
    end
    object wdstrngfldDetailFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
      Size = 44
    end
    object wdstrngfldDetailFPURCHASEPERSONID: TWideStringField
      FieldName = 'FPURCHASEPERSONID'
      Size = 44
    end
    object wdstrngfldDetailFPURCHASEGROUPID: TWideStringField
      FieldName = 'FPURCHASEGROUPID'
      Size = 44
    end
    object wdstrngfldDetailFBALANCESUPPLIERID: TWideStringField
      FieldName = 'FBALANCESUPPLIERID'
      Size = 44
    end
    object wdstrngfldDetailFRECEIVESTORAGEORGUNITID: TWideStringField
      FieldName = 'FRECEIVESTORAGEORGUNITID'
      Size = 44
    end
    object wdstrngfldDetailFPRODUCTTASKNUMBER: TWideStringField
      FieldName = 'FPRODUCTTASKNUMBER'
      Size = 80
    end
    object wdstrngfldDetailFSUPPLIERLOTNO: TWideStringField
      FieldName = 'FSUPPLIERLOTNO'
      Size = 510
    end
    object wdstrngfldDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object wdstrngfldDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object wdstrngfldDetailFCONTRACTNUMBER: TWideStringField
      FieldName = 'FCONTRACTNUMBER'
      Size = 255
    end
    object wdstrngfldDetailFMOTHERENTRYID: TWideStringField
      FieldName = 'FMOTHERENTRYID'
      Size = 44
    end
    object wdstrngfldDetailFCUSTOMERID: TWideStringField
      FieldName = 'FCUSTOMERID'
      Size = 44
    end
    object wdstrngfldDetailFOUTLOCATIONID: TWideStringField
      FieldName = 'FOUTLOCATIONID'
      Size = 44
    end
    object wdstrngfldDetailFOUTWAREHOUSEID: TWideStringField
      FieldName = 'FOUTWAREHOUSEID'
      Size = 44
    end
    object wdstrngfldDetailREMARK: TWideStringField
      FieldName = 'REMARK'
      Size = 400
    end
    object wdstrngfldDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object wdstrngfldDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object wdstrngfldDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object wdstrngfldDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object wdstrngfldDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object wdstrngfldDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object wdstrngfldDetailCFSRCSALESORDERID: TWideStringField
      FieldName = 'CFSRCSALESORDERID'
      Size = 44
    end
    object wdstrngfldDetailCFSRCSALESORDERENTRYID: TWideStringField
      FieldName = 'CFSRCSALESORDERENTRYID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
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
    object cdsDetailFQTY: TFloatField
      Tag = 1
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
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
    object cdsDetailFWRITTENOFFQTY: TFloatField
      FieldName = 'FWRITTENOFFQTY'
    end
    object cdsDetailFWRITTENOFFAMOUNT: TFloatField
      FieldName = 'FWRITTENOFFAMOUNT'
    end
    object cdsDetailFACTUALCOST: TFloatField
      FieldName = 'FACTUALCOST'
    end
    object cdsDetailFUNWRITEOFFQTY: TFloatField
      FieldName = 'FUNWRITEOFFQTY'
    end
    object cdsDetailFUNWRITEOFFAMOUNT: TFloatField
      FieldName = 'FUNWRITEOFFAMOUNT'
    end
    object cdsDetailFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
    end
    object cdsDetailFPURORDERENTRYSEQ: TFloatField
      FieldName = 'FPURORDERENTRYSEQ'
    end
    object cdsDetailFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
    end
    object cdsDetailCFNOTICAMOUNT: TFloatField
      FieldName = 'CFNOTICAMOUNT'
    end
    object cdsDetailCFCHECKINPUTQTY: TFloatField
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdsDetailCFCHECKDIFFQTY: TFloatField
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetailFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailFDISCOUNTRATE: TFloatField
      FieldName = 'FDISCOUNTRATE'
    end
    object cdsDetailFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailFDOSINGTYPE: TFloatField
      FieldName = 'FDOSINGTYPE'
    end
    object cdsDetailFSCUNWRITTENOFFBASEQTY: TFloatField
      FieldName = 'FSCUNWRITTENOFFBASEQTY'
    end
    object cdsDetailFSCUNWRITTENOFFQTY: TFloatField
      FieldName = 'FSCUNWRITTENOFFQTY'
    end
    object cdsDetailFUNWRITEOFFBASEQTY: TFloatField
      FieldName = 'FUNWRITEOFFBASEQTY'
    end
    object cdsDetailFWRITTENOFFBASEQTY: TFloatField
      FieldName = 'FWRITTENOFFBASEQTY'
    end
    object cdsDetailFUNRETURNEDBASEQTY: TFloatField
      FieldName = 'FUNRETURNEDBASEQTY'
    end
    object cdsDetailFORDERPRICE: TFloatField
      FieldName = 'FORDERPRICE'
    end
    object cdsDetailFISBETWEENCOMPANYSEND: TFloatField
      FieldName = 'FISBETWEENCOMPANYSEND'
    end
    object cdsDetailFISCENTERBALANCE: TFloatField
      FieldName = 'FISCENTERBALANCE'
    end
    object cdsDetailFDREWBASEQTY: TFloatField
      FieldName = 'FDREWBASEQTY'
    end
    object cdsDetailFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailFISREQUESTTORECEIVED: TFloatField
      FieldName = 'FISREQUESTTORECEIVED'
    end
    object cdsDetailFLOCALPRICE: TFloatField
      FieldName = 'FLOCALPRICE'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailFPURCHASECOST: TFloatField
      FieldName = 'FPURCHASECOST'
    end
    object cdsDetailFPURCHASEFEE: TFloatField
      FieldName = 'FPURCHASEFEE'
    end
    object cdsDetailFTOTALMOVEQTY: TFloatField
      FieldName = 'FTOTALMOVEQTY'
    end
    object cdsDetailFISFULLWRITEOFF: TFloatField
      FieldName = 'FISFULLWRITEOFF'
    end
    object cdsDetailFUNITPURCHASECOST: TFloatField
      FieldName = 'FUNITPURCHASECOST'
    end
    object cdsDetailFDREWQTY: TFloatField
      FieldName = 'FDREWQTY'
    end
    object cdsDetailFCANDIRECTREQQTY: TFloatField
      FieldName = 'FCANDIRECTREQQTY'
    end
    object cdsDetailFCANDIRECTREQBASEQTY: TFloatField
      FieldName = 'FCANDIRECTREQBASEQTY'
    end
    object cdsDetailFMATERIALCOST: TFloatField
      FieldName = 'FMATERIALCOST'
    end
    object cdsDetailFIMPUTEDCOST: TFloatField
      FieldName = 'FIMPUTEDCOST'
    end
    object cdsDetailFUNITMATERIALCOST: TFloatField
      FieldName = 'FUNITMATERIALCOST'
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailFHASSAMECOU: TFloatField
      FieldName = 'FHASSAMECOU'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailFSCWRITTENOFFQTY: TFloatField
      FieldName = 'FSCWRITTENOFFQTY'
    end
    object cdsDetailFSCWRITTENOFFBASEQTY: TFloatField
      FieldName = 'FSCWRITTENOFFBASEQTY'
    end
    object cdsDetailFRECEIVEAMOUNT: TFloatField
      FieldName = 'FRECEIVEAMOUNT'
    end
  end
  inherited pmDetail: TPopupMenu
    OnPopup = pmDetailPopup
    object updateQty: TMenuItem [4]
      Caption = #29992#26657#39564#25968#26356#26032#25968#37327
      OnClick = updateQtyClick
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    object cdsDetailAmountCFDPPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object wdstrngfldDetailAmountCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object wdstrngfldDetailAmountFBASEUNITID: TWideStringField
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
    object wdstrngfldDetailAmountFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object wdstrngfldDetailAmountCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object wdstrngfldDetailAmountCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
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
    object cdsDetailAmountfTotaLQty: TIntegerField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'fTotaLQty'
      ReadOnly = True
      Calculated = True
    end
    object cdsDetailAmountFAmount: TFloatField
      DisplayLabel = #37329#39069#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FAmount'
      Calculated = True
    end
    object cdsDetailAmountFPRICE: TFloatField
      DisplayLabel = #26631#20934#20215
      FieldName = 'FPRICE'
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
      FieldName = 'CFUnitName'
      Size = 60
    end
    object cdsDetailAmountFRemark: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FRemark'
      Size = 200
    end
    object cdsDetailAmountFtaxrate: TFloatField
      DisplayLabel = #31246#29575
      FieldName = 'Ftaxrate'
      OnChange = cdsDetailAmountFtaxrateChange
    end
    object cdsDetailAmountFtaxAmount: TFloatField
      DisplayLabel = #21547#31246#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FtaxAmount'
      Calculated = True
    end
    object cdsDetailAmountFtax: TFloatField
      DisplayLabel = #31246#39069
      FieldKind = fkCalculated
      FieldName = 'Ftax'
      Calculated = True
    end
    object cdsDetailAmountCFColorCode: TStringField
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsDetailAmountFACTUALTAXPRICE: TFloatField
      DisplayLabel = #25240#21518#21547#31246#21333#20215
      FieldName = 'FACTUALTAXPRICE'
      OnChange = cdsDetailAmountFACTUALTAXPRICEChange
    end
    object cdsDetailAmountCFPackID: TWideStringField
      FieldName = 'CFPackID'
      Size = 44
    end
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 696
  end
  inherited cdsSizeGroupTitle: TClientDataSet
    Left = 776
    Top = 464
  end
  inherited dsHeadSel: TDataSource
    Left = 369
    Top = 57
  end
  inherited cdsHeadSel: TClientDataSet
    Top = 81
  end
  inherited dsInputWay: TDataSource
    Left = 769
    Top = 73
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
    object cdsDetailTracyFQTY: TFloatField
      DisplayLabel = #25968#37327
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
    object cdsDetailTracyFWRITTENOFFQTY: TFloatField
      FieldName = 'FWRITTENOFFQTY'
    end
    object cdsDetailTracyFWRITTENOFFAMOUNT: TFloatField
      FieldName = 'FWRITTENOFFAMOUNT'
    end
    object cdsDetailTracyFUNWRITEOFFQTY: TFloatField
      FieldName = 'FUNWRITEOFFQTY'
    end
    object cdsDetailTracyFUNWRITEOFFAMOUNT: TFloatField
      FieldName = 'FUNWRITEOFFAMOUNT'
    end
    object cdsDetailTracyFRECEIVEAMOUNT: TFloatField
      FieldName = 'FRECEIVEAMOUNT'
    end
    object cdsDetailTracyFPURORDERNUMBER: TWideStringField
      FieldName = 'FPURORDERNUMBER'
      Size = 160
    end
    object cdsDetailTracyFPURORDERENTRYSEQ: TFloatField
      FieldName = 'FPURORDERENTRYSEQ'
    end
    object cdsDetailTracyFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailTracyFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailTracyFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailTracyFLOCALPRICE: TFloatField
      FieldName = 'FLOCALPRICE'
    end
    object cdsDetailTracyFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailTracyFDREWQTY: TFloatField
      FieldName = 'FDREWQTY'
    end
    object cdsDetailTracyFIMPUTEDCOST: TFloatField
      FieldName = 'FIMPUTEDCOST'
    end
    object cdsDetailTracyFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailTracyFMFG: TDateTimeField
      FieldName = 'FMFG'
    end
    object cdsDetailTracyFEXP: TDateTimeField
      FieldName = 'FEXP'
    end
    object cdsDetailTracyFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailTracyFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
    end
    object cdsDetailTracyFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
    end
    object cdsDetailTracyFWRITTENOFFBASEQTY: TFloatField
      FieldName = 'FWRITTENOFFBASEQTY'
    end
    object cdsDetailTracyFUNWRITEOFFBASEQTY: TFloatField
      FieldName = 'FUNWRITEOFFBASEQTY'
    end
    object cdsDetailTracyFCOREBILLTYPEID: TWideStringField
      FieldName = 'FCOREBILLTYPEID'
      Size = 44
    end
    object cdsDetailTracyFUNRETURNEDBASEQTY: TFloatField
      FieldName = 'FUNRETURNEDBASEQTY'
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
    object cdsDetailTracyFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFPURCHASEPERSONID: TWideStringField
      FieldName = 'FPURCHASEPERSONID'
      Size = 44
    end
    object cdsDetailTracyFPURCHASEGROUPID: TWideStringField
      FieldName = 'FPURCHASEGROUPID'
      Size = 44
    end
    object cdsDetailTracyFDREWBASEQTY: TFloatField
      FieldName = 'FDREWBASEQTY'
    end
    object cdsDetailTracyFTOTALMOVEQTY: TFloatField
      FieldName = 'FTOTALMOVEQTY'
    end
    object cdsDetailTracyFISREQUESTTORECEIVED: TFloatField
      FieldName = 'FISREQUESTTORECEIVED'
    end
    object cdsDetailTracyFISFULLWRITEOFF: TFloatField
      FieldName = 'FISFULLWRITEOFF'
    end
    object cdsDetailTracyFCANDIRECTREQQTY: TFloatField
      FieldName = 'FCANDIRECTREQQTY'
    end
    object cdsDetailTracyFCANDIRECTREQBASEQTY: TFloatField
      FieldName = 'FCANDIRECTREQBASEQTY'
    end
    object cdsDetailTracyFBALANCESUPPLIERID: TWideStringField
      FieldName = 'FBALANCESUPPLIERID'
      Size = 44
    end
    object cdsDetailTracyFISCENTERBALANCE: TFloatField
      FieldName = 'FISCENTERBALANCE'
    end
    object cdsDetailTracyFISBETWEENCOMPANYSEND: TFloatField
      FieldName = 'FISBETWEENCOMPANYSEND'
    end
    object cdsDetailTracyFHASSAMECOU: TFloatField
      FieldName = 'FHASSAMECOU'
    end
    object cdsDetailTracyFRECEIVESTORAGEORGUNITID: TWideStringField
      FieldName = 'FRECEIVESTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFPURCHASECOST: TFloatField
      FieldName = 'FPURCHASECOST'
    end
    object cdsDetailTracyFPURCHASEFEE: TFloatField
      FieldName = 'FPURCHASEFEE'
    end
    object cdsDetailTracyFUNITPURCHASECOST: TFloatField
      FieldName = 'FUNITPURCHASECOST'
    end
    object cdsDetailTracyFMATERIALCOST: TFloatField
      FieldName = 'FMATERIALCOST'
    end
    object cdsDetailTracyFUNITMATERIALCOST: TFloatField
      FieldName = 'FUNITMATERIALCOST'
    end
    object cdsDetailTracyFSCWRITTENOFFQTY: TFloatField
      FieldName = 'FSCWRITTENOFFQTY'
    end
    object cdsDetailTracyFSCWRITTENOFFBASEQTY: TFloatField
      FieldName = 'FSCWRITTENOFFBASEQTY'
    end
    object cdsDetailTracyFSCUNWRITTENOFFQTY: TFloatField
      FieldName = 'FSCUNWRITTENOFFQTY'
    end
    object cdsDetailTracyFSCUNWRITTENOFFBASEQTY: TFloatField
      FieldName = 'FSCUNWRITTENOFFBASEQTY'
    end
    object cdsDetailTracyFDOSINGTYPE: TFloatField
      FieldName = 'FDOSINGTYPE'
    end
    object cdsDetailTracyFPRODUCTTASKNUMBER: TWideStringField
      FieldName = 'FPRODUCTTASKNUMBER'
      Size = 80
    end
    object cdsDetailTracyFSUPPLIERLOTNO: TWideStringField
      FieldName = 'FSUPPLIERLOTNO'
      Size = 510
    end
    object cdsDetailTracyFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailTracyFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailTracyFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailTracyFDISCOUNTRATE: TFloatField
      FieldName = 'FDISCOUNTRATE'
    end
    object cdsDetailTracyFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
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
    object cdsDetailTracyFMOTHERENTRYID: TWideStringField
      FieldName = 'FMOTHERENTRYID'
      Size = 44
    end
    object cdsDetailTracyFCUSTOMERID: TWideStringField
      FieldName = 'FCUSTOMERID'
      Size = 44
    end
    object cdsDetailTracyFOUTLOCATIONID: TWideStringField
      FieldName = 'FOUTLOCATIONID'
      Size = 44
    end
    object cdsDetailTracyFOUTWAREHOUSEID: TWideStringField
      FieldName = 'FOUTWAREHOUSEID'
      Size = 44
    end
    object cdsDetailTracyREMARK: TWideStringField
      FieldName = 'REMARK'
      Size = 400
    end
    object cdsDetailTracyCFNOTICAMOUNT: TFloatField
      FieldName = 'CFNOTICAMOUNT'
    end
    object cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
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
    object cdsDetailTracyCFCHECKINPUTQTY: TFloatField
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdsDetailTracyCFCHECKDIFFQTY: TFloatField
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdsDetailTracyCFSRCSALESORDERID: TWideStringField
      FieldName = 'CFSRCSALESORDERID'
      Size = 44
    end
    object cdsDetailTracyCFSRCSALESORDERENTRYID: TWideStringField
      FieldName = 'CFSRCSALESORDERENTRYID'
      Size = 44
    end
    object cdsDetailTracyCFDPPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailTracyCFASSISTNUM: TWideStringField
      FieldName = 'CFASSISTNUM'
      Size = 200
    end
    object cdsDetailTracyALLOTNUM: TFloatField
      FieldName = 'ALLOTNUM'
    end
    object cdsDetailTracyCFBOXQTY: TFloatField
      FieldName = 'CFBOXQTY'
    end
    object cdsDetailTracyCFSTYLEID: TWideStringField
      FieldName = 'CFSTYLEID'
      Size = 44
    end
    object cdsDetailTracyCFOTHERBILLNUMBER: TWideStringField
      FieldName = 'CFOTHERBILLNUMBER'
      Size = 200
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
    object cdsDetailTracyCFOTHERBILLREC: TFloatField
      FieldName = 'CFOTHERBILLREC'
    end
  end
  object cdsSupplier: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsSupplierFilterRecord
    Left = 433
    Top = 57
  end
  object cdsWareHouse: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsWareHouseFilterRecord
    Left = 625
    Top = 145
  end
  object dsPurRecType: TDataSource
    DataSet = CliDM.cdsPurRecType
    Left = 161
    Top = 73
  end
  object dsRange: TDataSource
    Left = 529
    Top = 81
  end
end
