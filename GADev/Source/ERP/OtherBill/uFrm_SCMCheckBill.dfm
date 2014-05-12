inherited Frm_SCMCheckBill: TFrm_SCMCheckBill
  Left = 178
  Top = 73
  Width = 1036
  Height = 641
  Caption = #30424#28857#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    Width = 1020
    Height = 257
    inherited cxPageDetail: TcxPageControl
      Width = 1020
      Height = 257
      OnChange = cxPageDetailChange
      ClientRectBottom = 257
      ClientRectRight = 1020
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 1020
          Height = 209
          inherited dbgList: TcxGridDBTableView
            PopupMenu = nil
            DataController.DataModeController.GridMode = False
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'CFSTORAGEQTY'
                Column = dbgListCFSTORAGEQTY
              end
              item
                Kind = skSum
                FieldName = 'CFQTY'
                Column = dbgListFQTY
              end
              item
                Kind = skSum
                FieldName = 'CFLPQTY'
              end
              item
                Kind = skSum
                FieldName = 'CFPQTY'
              end
              item
                Kind = skSum
                FieldName = 'CFLQTY'
              end>
            OptionsCustomize.DataRowSizing = True
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsSelection.CellMultiSelect = True
            OptionsView.Indicator = True
            object dbgListFSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'FSEQ'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Width = 46
            end
            object dbgListcfMaterialNumber: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialNumber'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgListcfMaterialNumberPropertiesButtonClick
              Options.Filtering = False
            end
            object dbgListcfMaterialName: TcxGridDBColumn
              DataBinding.FieldName = 'cfMaterialName'
              Options.Editing = False
              Options.Filtering = False
              Width = 87
            end
            object dbgListcfColorName: TcxGridDBColumn
              DataBinding.FieldName = 'cfColorName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgListcfColorNamePropertiesButtonClick
              Options.Filtering = False
              Width = 64
            end
            object dbgListcfSIZEName: TcxGridDBColumn
              DataBinding.FieldName = 'cfSIZEName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgListcfSIZENamePropertiesButtonClick
              Options.Filtering = False
              Width = 52
            end
            object dbgListcfCupName: TcxGridDBColumn
              DataBinding.FieldName = 'cfCupName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = dbgListcfCupNamePropertiesButtonClick
              Options.Filtering = False
              Width = 52
            end
            object dbgListCFSTORAGEQTY: TcxGridDBColumn
              DataBinding.FieldName = 'CFSTORAGEQTY'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
            end
            object dbgListFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'CFQTY'
              Options.Filtering = False
              Width = 92
            end
          end
          inherited dbgList2: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'cfMaterialNumber'
                Column = dbgList2cfMaterialNumber
              end
              item
                Kind = skSum
                FieldName = 'fTotalQty'
                Column = dbgList2fTotalQty
              end>
            OptionsView.IndicatorWidth = 15
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
              Width = 74
            end
            object dbgList2CFColorCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = dbgList2CFColorCodePropertiesButtonClick
              Width = 67
            end
            object dbgList2CFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Options.Editing = False
              Width = 74
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
              Width = 51
            end
            object dbgList2CFPACKNAME: TcxGridDBColumn
              Caption = #37197#30721
              DataBinding.FieldName = 'CFPACKNAME'
              Width = 60
            end
            object dbgList2CFPACKNUM: TcxGridDBColumn
              Caption = #31665#25968
              DataBinding.FieldName = 'CFPACKNUM'
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
            object dbgList2fTotalQty: TcxGridDBColumn
              DataBinding.FieldName = 'fTotalQty'
              Options.Editing = False
              Width = 70
            end
          end
        end
        inherited Panel3: TPanel
          Width = 1020
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
          Width = 1020
          Height = 212
          inherited cxgridDetial: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialCFQTY
              end>
            OptionsView.DataRowHeight = 22
            OptionsView.HeaderHeight = 22
            object cxgridDetialFSEQ: TcxGridDBColumn
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
              Caption = #33394#21495
              DataBinding.FieldName = 'CFColorCode'
              Width = 60
            end
            object cxgridDetialCFColorName: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'CFColorName'
              Width = 60
            end
            object cxgridDetialCFSizeCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeCode'
              Width = 60
            end
            object cxgridDetialCFSizeName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeName'
              Width = 50
            end
            object cxgridDetialCFCupName: TcxGridDBColumn
              DataBinding.FieldName = 'CFCupName'
              Width = 60
            end
            object cxgridDetialCFPACKNAME: TcxGridDBColumn
              Caption = #37197#30721
              DataBinding.FieldName = 'CFPACKNAME'
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
            object cxgridDetialCFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'CFQTY'
              Width = 60
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              DataBinding.FieldName = 'CFBrandName'
              Width = 70
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              DataBinding.FieldName = 'cfattributeName'
              Width = 70
            end
          end
        end
        inherited Panel4: TPanel
          Width = 1020
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
    Top = 573
    Width = 1020
    inherited cxFAUDITORdate: TcxDBMaskEdit
      DataBinding.DataField = 'CFAUDITORTIME'
    end
  end
  inherited pnl_top: TPanel
    Width = 1020
    inherited pnlCodeSM: TPanel
      Width = 1018
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Width = 1018
      ClientRectRight = 1018
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Width = 1018
          inherited im_Audit: TImage
            Left = 950
            Picture.Data = {00}
          end
          inherited img_NewBill: TImage
            Left = 950
            Picture.Data = {00}
          end
          inherited lbDescription: TLabel
            Left = 9
            Top = 35
          end
          inherited Label2: TLabel
            Left = 9
            Top = 6
          end
          inherited Label5: TLabel
            Left = 596
            Top = 6
          end
          inherited Image4: TImage
            Top = 88
          end
          inherited imgTJ: TImage
            Left = 944
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000038
              0000002008060000004703BBE8000000017352474200AECE1CE9000000046741
              4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
              80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
              0AFA00000AFA0119D8FF74000003C0494441545847DD99318B144110850F4110
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
            Left = 620
            Top = 35
            Width = 24
            Height = 12
            Caption = #30424#27425
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object imgUp: TImage [8]
            Left = 939
            Top = 3
            Width = 51
            Height = 29
            Anchors = [akTop, akRight]
            AutoSize = True
            Center = True
          end
          object Label10: TLabel [9]
            Left = 3
            Top = 64
            Width = 66
            Height = 12
            Caption = #23450#20301#21830#21697'&G'#65306
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Image3: TImage [10]
            Left = 934
            Top = 3
            Width = 52
            Height = 29
            Anchors = [akTop, akRight]
            AutoSize = True
            Center = True
          end
          object Label12: TLabel [11]
            Left = 773
            Top = 6
            Width = 48
            Height = 12
            Caption = #30424#28857#26041#24335
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          inherited imgGB: TImage
            Left = 920
          end
          inherited txDescription: TcxDBTextEdit
            Top = 32
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 10
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 653
            Top = 3
            Hint = #19994#21153#26085#26399
            DataBinding.DataField = 'FBIZDATE'
            Width = 100
          end
          inherited cxFNumber: TcxDBMaskEdit
            Top = 3
            DataBinding.DataField = 'FNUMBER'
          end
          inherited lblNumber: TcxLabel
            Left = 265
            Caption = #30424#28857#20179#24211
          end
          inherited txtName: TcxDBTextEdit
            Top = 3
            DataBinding.DataField = 'CFWareName'
            TabOrder = 8
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 833
            Top = 32
            Hint = #24405#20837#26041#24335' '
            DataBinding.DataField = 'CFINPUTWAY'
            Width = 99
          end
          inherited cxLabel1: TcxLabel
            Left = 773
            Top = 35
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 328
            Top = 3
            Hint = #30424#28857#20179#24211
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 7
            Width = 114
          end
          object CFCHECKTYPEName: TcxDBButtonEdit
            Tag = 100
            Left = 653
            Top = 32
            Hint = #30424#27425
            DataBinding.DataField = 'CFCHECKTYPEName'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
            TabOrder = 2
            Width = 100
          end
          object edFindStyle: TcxTextEdit
            Left = 68
            Top = 85
            TabOrder = 5
            OnKeyDown = edFindStyleKeyDown
            Width = 125
          end
          object btFind: TcxButton
            Left = 196
            Top = 83
            Width = 48
            Height = 23
            Caption = #23450#20301
            TabOrder = 6
            OnClick = btFindClick
            LookAndFeel.Kind = lfOffice11
          end
          object cxTop: TcxButton
            Left = 255
            Top = 83
            Width = 78
            Height = 23
            Caption = #36339#22238#31532#19968#34892
            TabOrder = 11
            OnClick = cxTopClick
            LookAndFeel.Kind = lfOffice11
          end
          object dbCHECKFULLTAKENAME: TcxDBButtonEdit
            Tag = 100
            Left = 833
            Top = 3
            Hint = #30424#28857#26041#24335
            DataBinding.DataField = 'CFCHECKFULLTAKENAME'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = dbCHECKFULLTAKENAMEPropertiesButtonClick
            TabOrder = 3
            Width = 100
          end
        end
      end
    end
  end
  inherited pnlStock: TPanel
    Top = 439
    Width = 1020
    inherited Panel2: TPanel
      Width = 507
      inherited cxpageReceive: TcxPageControl
        Width = 505
        ClientRectRight = 505
        inherited cxTabRecStock: TcxTabSheet
          inherited cxGrid5: TcxGrid
            Width = 502
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Left = 330
    Top = 81
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 592
    Top = 439
    DockControlHeights = (
      0
      0
      53
      0)
    inherited dxBarManager1Bar2: TdxBar
      FloatClientWidth = 88
    end
    inherited dxBarSubItem1: TdxBarSubItem
      Caption = #30424#28857#25805#20316
    end
    inherited dxBarSubItem8: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton40'
        end
        item
          Visible = True
          ItemName = 'bt_formtxtimport'
        end
        item
          BeginGroup = True
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
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarCodeSM'
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
          Visible = True
          ItemName = 'dxBarButton35'
        end
        item
          Visible = True
          ItemName = 'dxBarButton41'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end>
    end
    object dxBarButton27: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton28: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton32: TdxBarButton
      Action = actCPup
      Category = 0
    end
    object dxBarSubItem12: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object bt_formtxtimport: TdxBarButton
      Caption = #20174#26465#30721#25991#20214#23548#20837'...'
      Category = 0
      Hint = #20174#26465#30721#25991#20214#23548#20837
      Visible = ivAlways
      OnClick = bt_formtxtimportClick
    end
    object dxBarButton33: TdxBarButton
      Action = actCheckBillState
      Category = 0
    end
    object dxBarButton34: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton35: TdxBarButton
      Action = actToExcel
      Category = 0
      ShortCut = 49221
    end
    object dxBarButton36: TdxBarButton
      Action = acBatckUpCheck
      Category = 0
    end
    object dxBarButton37: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton38: TdxBarButton
      Action = actFindDiff
      Category = 0
    end
    object dxBarButton39: TdxBarButton
      Action = actCPup
      Caption = #20445#23384#24403#21069#24211#23384
      Category = 0
    end
    object dxBarButton40: TdxBarButton
      Action = actAcrossInput
      Category = 0
    end
    object dxBarButton41: TdxBarButton
      Action = actImportExcel
      Category = 0
      ShortCut = 49225
    end
    object dxBarButtonCodeSM: TdxBarButton
      Caption = #26465#30721#25195#25551#24405#20837
      Category = 0
      Visible = ivAlways
      ShortCut = 115
      OnClick = dxBarButtonCodeSMClick
    end
    object bt_CtrlQ: TdxBarButton
      Caption = #20999#25442#22522#25968#27491#36127#21495
      Category = 0
      Hint = #20999#25442#22522#25968#27491#36127#21495
      Visible = ivAlways
      ShortCut = 16465
      OnClick = bt_CtrlQClick
    end
    object bt_Ctrl_J: TdxBarButton
      Caption = #23450#20301#21040#22522#25968#26694
      Category = 0
      Hint = #23450#20301#21040#22522#25968#26694
      Visible = ivAlways
      ShortCut = 16458
      OnClick = bt_Ctrl_JClick
    end
    object bt_Ctrl_B: TdxBarButton
      Caption = #23450#20301#21040#26465#30721#26694
      Category = 0
      Hint = #23450#20301#21040#26465#30721#26694
      Visible = ivAlways
      ShortCut = 16450
      OnClick = bt_Ctrl_BClick
    end
  end
  inherited actlst1: TActionList
    inherited actAudit: TAction
      Caption = #23457#26680
    end
    object actCPup: TAction [15]
      Caption = #20445#23384#30424#28857#26102#24211#23384
      OnExecute = actCPupExecute
    end
    object actImportStorage: TAction [16]
      Caption = #23548#20837#24211#23384#21040#30424#28857#21333
    end
    object actUpStorage: TAction [17]
      Caption = #20914#36134
      OnExecute = actUpStorageExecute
    end
    object actCheckBillState: TAction [18]
      Caption = #26816#26597#26410#22788#29702#21333#25454
      OnExecute = actCheckBillStateExecute
    end
    object actUpdateStorage: TAction [19]
      Caption = #37325#26032#35745#31639#24215#38138#24211#23384
      OnExecute = actUpdateStorageExecute
    end
    object acBatckUpCheck: TAction [20]
      Caption = #25209#37327#26356#26032#30424#28857#25968'='#36134#38754#24211#23384
      OnExecute = acBatckUpCheckExecute
    end
    object actFindDiff: TAction [21]
      Caption = #26597#25214#30424#28857#24046#24322#35760#24405
      OnExecute = actFindDiffExecute
    end
    object actAcrossInput: TAction [22]
      Caption = #24555#36895#24405#20837' F11'
      ShortCut = 122
      OnExecute = actAcrossInputExecute
    end
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'DataSetProvider1'
    RemoteServer = CliDM.SckCon
    Left = 544
    Top = 10
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
      DisplayLabel = #22791#27880
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
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdsMasterCFSTORAGEID: TWideStringField
      FieldName = 'CFSTORAGEID'
      Size = 44
    end
    object cdsMasterCFWAREHOUSEID: TWideStringField
      FieldName = 'CFWAREHOUSEID'
      Size = 44
    end
    object cdsMasterCFCHECKTYPE: TFloatField
      DisplayLabel = #30424#27425#20195#30721
      FieldName = 'CFCHECKTYPE'
      OnChange = cdsMasterCFCHECKTYPEChange
    end
    object cdsMasterCFBASESTATUS: TFloatField
      FieldName = 'CFBASESTATUS'
    end
    object cdsMasterCFAUDITORTIME: TDateTimeField
      FieldName = 'CFAUDITORTIME'
    end
    object cdsMasterCFCOMPANYORGID: TWideStringField
      FieldName = 'CFCOMPANYORGID'
      Size = 44
    end
    object cdsMasterCFCHECKTYPEName: TStringField
      DisplayLabel = #30424#27425
      FieldKind = fkCalculated
      FieldName = 'CFCHECKTYPEName'
      Calculated = True
    end
    object cdsMasterCFCHECKFULLTAKEOUT: TFloatField
      DisplayLabel = #30424#28857#26041#24335#31867#22411' 0 '#20840#30424'1'#25277#30424
      FieldName = 'CFCHECKFULLTAKEOUT'
    end
    object cdsMasterCFCHECKFULLTAKENAME: TStringField
      DisplayLabel = #30424#28857#26041#24335#21517#31216
      FieldKind = fkCalculated
      FieldName = 'CFCHECKFULLTAKENAME'
      Size = 200
      Calculated = True
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 0
      Calculated = True
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 40
    end
    object cdsMasterCFWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFWareName'
      Size = 80
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 600
    Top = 7
  end
  inherited cdsDetail: TClientDataSet
    ProviderName = 'DataSetProvider2'
    RemoteServer = CliDM.SckCon
    OnCalcFields = nil
    object cdsDetailFSEQ: TFloatField
      DisplayLabel = #24207#21495
      FieldName = 'FSEQ'
    end
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
      Size = 44
    end
    object cdsDetailCFASSISTPROPERTYID: TWideStringField
      FieldName = 'CFASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFSIZEID: TWideStringField
      FieldName = 'CFSIZEID'
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
    object cdsDetailCFSTORAGEORGUNITID: TWideStringField
      FieldName = 'CFSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailCFCOMPANYORGUNITID: TWideStringField
      FieldName = 'CFCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailCFSTORAGEQTY: TFloatField
      DisplayLabel = #36134#38754#24211#23384#25968
      FieldName = 'CFSTORAGEQTY'
    end
    object cdsDetailCFQTY: TFloatField
      DisplayLabel = #30424#28857#25968#37327
      FieldName = 'CFQTY'
    end
    object cdsDetailCFLPQTY: TFloatField
      DisplayLabel = #30424#30408#25968
      FieldName = 'CFLPQTY'
    end
    object cdsDetailCFLQTY: TFloatField
      DisplayLabel = #30424#20111#25968
      FieldName = 'CFLQTY'
    end
    object cdsDetailCFPQTY: TFloatField
      DisplayLabel = #30408#20111#25968
      FieldName = 'CFPQTY'
    end
    object cdsDetailCFASSISTPROPERTYNUM: TWideStringField
      DisplayLabel = #36741#21161#23646#24615#32534#30721
      FieldName = 'CFASSISTNUM'
      Size = 200
    end
    object cdsDetailCFWAREHOUSEID: TWideStringField
      DisplayLabel = #20179#24211'ID'
      FieldName = 'CFWAREHOUSEID'
      Size = 200
    end
    object cdsDetailCFQTY2: TFloatField
      DisplayLabel = #22797#30424#25968#37327
      FieldName = 'CFQTY2'
    end
    object cdsDetailCFQTY3: TFloatField
      DisplayLabel = #22797#26816#25968#37327
      FieldName = 'CFQTY3'
    end
    object cdsDetailCFDIFF: TFloatField
      DisplayLabel = #26159#21542#26377#24046#24322
      FieldName = 'CFDIFF'
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
  end
  inherited pmDetail: TPopupMenu
    Top = 272
    object F111: TMenuItem [0]
      Action = actAcrossInput
      Caption = #24555#36895#24405#20837
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    RemoteServer = CliDM.SckCon
    AfterEdit = cdsDetailAmountAfterEdit
    AfterDelete = cdsDetailAmountAfterDelete
    object cdsDetailAmountCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
      OnChange = cdsDetailAmountCFMATERIALIDChange
      Size = 44
    end
    object cdsDetailAmountCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      OnChange = cdsDetailAmountCFCOLORIDChange
      Size = 44
    end
    object cdsDetailAmountCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      OnChange = cdsDetailAmountCFCUPIDChange
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
    object cdsDetailAmountCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      OnChange = cdsDetailAmountCFPACKIDChange
      Size = 44
    end
    object cdsDetailAmountCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
      OnChange = cdsDetailAmountCFPACKNUMChange
    end
    object cdsDetailAmountCFColorCode: TStringField
      DisplayLabel = #39068#33394#32534#30721
      FieldName = 'CFColorCode'
      Size = 200
    end
    object cdsDetailAmountCFColorName: TStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsDetailAmountCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsDetailAmountfAmount_1: TFloatField
      FieldName = 'fAmount_1'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_2: TFloatField
      FieldName = 'fAmount_2'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_3: TFloatField
      FieldName = 'fAmount_3'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_4: TFloatField
      FieldName = 'fAmount_4'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_5: TFloatField
      FieldName = 'fAmount_5'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_6: TFloatField
      FieldName = 'fAmount_6'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_7: TFloatField
      FieldName = 'fAmount_7'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_8: TFloatField
      FieldName = 'fAmount_8'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_9: TFloatField
      FieldName = 'fAmount_9'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_10: TFloatField
      FieldName = 'fAmount_10'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_11: TFloatField
      FieldName = 'fAmount_11'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_12: TFloatField
      FieldName = 'fAmount_12'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_13: TFloatField
      FieldName = 'fAmount_13'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_14: TFloatField
      FieldName = 'fAmount_14'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_15: TFloatField
      FieldName = 'fAmount_15'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_16: TFloatField
      FieldName = 'fAmount_16'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_17: TFloatField
      FieldName = 'fAmount_17'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_18: TFloatField
      FieldName = 'fAmount_18'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_19: TFloatField
      FieldName = 'fAmount_19'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_20: TFloatField
      FieldName = 'fAmount_20'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_21: TFloatField
      FieldName = 'fAmount_21'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_22: TFloatField
      FieldName = 'fAmount_22'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_23: TFloatField
      FieldName = 'fAmount_23'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_24: TFloatField
      FieldName = 'fAmount_24'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_25: TFloatField
      FieldName = 'fAmount_25'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_26: TFloatField
      FieldName = 'fAmount_26'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_27: TFloatField
      FieldName = 'fAmount_27'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_28: TFloatField
      FieldName = 'fAmount_28'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_29: TFloatField
      FieldName = 'fAmount_29'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfAmount_30: TFloatField
      FieldName = 'fAmount_30'
      OnChange = cdsDetailAmountfAmount_1Change
    end
    object cdsDetailAmountfTotalQty: TIntegerField
      DisplayLabel = #25968#37327#21512#35745
      FieldName = 'fTotalQty'
    end
    object cdsDetailAmountCFSizeGroupID: TWideStringField
      FieldName = 'CFSizeGroupID'
      Size = 44
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
    object cdsDetailAmountCFLocName: TStringField
      DisplayLabel = #24211#20301
      FieldName = 'CFLocName'
      Size = 60
    end
    object cdsDetailAmountCFPACKNAME: TStringField
      FieldName = 'CFPACKNAME'
      Size = 60
    end
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 792
    Top = 112
  end
  inherited dsInputWay: TDataSource
    DataSet = CliDM.cdsInputWay
    Left = 873
    Top = 105
  end
  inherited cdsDetailTracy: TClientDataSet
    Left = 176
    Top = 191
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
    object cdsDetailTracyFSEQ: TFloatField
      DisplayLabel = #24207#21495
      FieldName = 'FSEQ'
    end
    object cdsDetailTracyFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdsDetailTracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailTracyCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
      Size = 44
    end
    object cdsDetailTracyCFASSISTPROPERTYID: TWideStringField
      FieldName = 'CFASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailTracyCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailTracyCFSIZEID: TWideStringField
      FieldName = 'CFSIZEID'
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
    object cdsDetailTracyCFSTORAGEORGUNITID: TWideStringField
      FieldName = 'CFSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyCFCOMPANYORGUNITID: TWideStringField
      FieldName = 'CFCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailTracyCFSTORAGEQTY: TFloatField
      DisplayLabel = #36134#38754#24211#23384#25968
      FieldName = 'CFSTORAGEQTY'
    end
    object cdsDetailTracyCFQTY: TFloatField
      DisplayLabel = #30424#28857#25968#37327
      FieldName = 'CFQTY'
    end
    object cdsDetailTracyCFLPQTY: TFloatField
      DisplayLabel = #30424#30408#25968
      FieldName = 'CFLPQTY'
    end
    object cdsDetailTracyCFLQTY: TFloatField
      DisplayLabel = #30424#20111#25968
      FieldName = 'CFLQTY'
    end
    object cdsDetailTracyCFPQTY: TFloatField
      DisplayLabel = #30408#20111#25968
      FieldName = 'CFPQTY'
    end
    object cdsDetailTracyCFASSISTNUM: TWideStringField
      DisplayLabel = #36741#21161#23646#24615#32534#30721
      FieldName = 'CFASSISTNUM'
      Size = 200
    end
    object cdsDetailTracyCFWAREHOUSEID: TWideStringField
      DisplayLabel = #20179#24211'ID'
      FieldName = 'CFWAREHOUSEID'
      Size = 200
    end
    object cdsDetailTracyCFQTY2: TFloatField
      DisplayLabel = #22797#30424#25968#37327
      FieldName = 'CFQTY2'
    end
    object cdsDetailTracyCFQTY3: TFloatField
      DisplayLabel = #22797#26816#25968#37327
      FieldName = 'CFQTY3'
    end
    object cdsDetailTracyCFDIFF: TFloatField
      DisplayLabel = #26159#21542#26377#24046#24322
      FieldName = 'CFDIFF'
    end
    object cdsDetailTracyCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
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
      DisplayLabel = #39068#33394#32534#30721
      FieldName = 'CFColorCode'
      Size = 200
    end
    object cdsDetailTracyCFColorName: TStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'CFColorName'
      Size = 200
    end
    object cdsDetailTracyCFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'CFCupName'
      Size = 200
    end
    object cdsDetailTracyCFPACKNAME: TStringField
      FieldName = 'CFPACKNAME'
      Size = 60
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
    object cdsDetailTracyCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
  end
  inherited dsDetailTracy: TDataSource
    Left = 256
    Top = 167
  end
  object dsStyle: TDataSource
    DataSet = qryStyle
    Left = 392
    Top = 200
  end
  object cdsMastrial: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 840
    Top = 16
    object cdsMastrialFID: TStringField
      FieldName = 'FID'
      KeyFields = 'FID'
      Size = 44
    end
    object cdsMastrialFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsMastrialFNAME_L2: TWideStringField
      FieldName = 'FNAME_L2'
      Size = 255
    end
    object cdsMastrialcfSizeGroupID: TWideStringField
      FieldName = 'cfSizeGroupID'
      Size = 44
    end
  end
  object DataSetProv_pub: TDataSetProvider
    Left = 936
    Top = 96
  end
  object cdsStorage: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 145
  end
  object cdsCheckBill: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 41
  end
  object qryStyle: TADOQuery
    Connection = CliDM.conClient
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select FID,FNUMBER,FNAME_L2 from T_BD_Material')
    Left = 344
    Top = 184
    object qryStyleFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object qryStyleFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object qryStyleFNAME_L2: TWideStringField
      FieldName = 'FNAME_L2'
      Size = 255
    end
  end
  object cdswarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 89
    Top = 99
  end
end
