inherited FM_BillEditPurOrder: TFM_BillEditPurOrder
  Left = 164
  Top = 84
  Width = 1045
  Height = 650
  Caption = #37319#36141#35746#21333#32534#36753
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    Top = 204
    Width = 1029
    Height = 244
    inherited cxPageDetail: TcxPageControl
      Width = 1029
      Height = 244
      OnChange = cxPageDetailChange
      ClientRectBottom = 244
      ClientRectRight = 1029
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 1029
          Height = 196
          inherited dbgList2: TcxGridDBTableView
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,##'
                Position = spFooter
                Column = dbgList2fTotaLQty
              end
              item
                Format = '#,##'
                Position = spFooter
                Column = dbgList2fAmount
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = dbgList2fTotaLQty
              end
              item
                Kind = skSum
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
              Width = 65
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
              Width = 49
            end
            object dbgList2CFPACKNUM: TcxGridDBColumn
              DataBinding.FieldName = 'CFPACKNUM'
              Visible = False
              Width = 42
            end
            object dbgList2CFDPPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFDPPRICE'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 53
            end
            object dbgList2FPRICE: TcxGridDBColumn
              Caption = #26631#20934#21333#20215
              DataBinding.FieldName = 'FPRICE'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object dbgList2FDISCOUNTRATE: TcxGridDBColumn
              Caption = #25240#25187
              DataBinding.FieldName = 'FDISCOUNTRATE'
              Width = 41
            end
            object dbgList2FACTUALPRICE: TcxGridDBColumn
              Caption = #25240#21518#21333#20215
              DataBinding.FieldName = 'FACTUALPRICE'
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
              DataBinding.FieldName = 'fAmount'
            end
            object dbgList2CFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 46
            end
            object dbgList2CFBrandName: TcxGridDBColumn
              Caption = #21697#29260
              DataBinding.FieldName = 'CFBrandName'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 80
            end
            object dbgList2cfattributeName: TcxGridDBColumn
              Caption = #27874#27573
              DataBinding.FieldName = 'cfattributeName'
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.FilteringMRUItemsList = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 80
            end
            object dbgList2FREMARK: TcxGridDBColumn
              DataBinding.FieldName = 'FREMARK'
              Width = 100
            end
          end
        end
        inherited Panel3: TPanel
          Width = 1029
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
      object cxTabSourceBill: TcxTabSheet [1]
        Caption = #26469#28304#21333#25454#20449#24687
        ImageIndex = 1
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1029
          Height = 226
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Black'
          object cxGridSourceBill: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsSourceBill
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridSourceBillColumn1: TcxGridDBColumn
              Caption = #38144#21806#35746#21333#21495
              Width = 106
            end
            object cxGridSourceBillColumn2: TcxGridDBColumn
              Caption = #23458#25143#21517#31216
              Width = 187
            end
            object cxGridSourceBillColumn3: TcxGridDBColumn
              Caption = #26469#28304#21333#25454#31867#22411
              Width = 128
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGridSourceBill
          end
        end
      end
      inherited cxTabTractDetail: TcxTabSheet
        Caption = #37319#36141#35746#21333#36827#24230#36319#36394
        inherited cxGrid4: TcxGrid
          Width = 1029
          Height = 199
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
                Column = cxgridDetialFTOTALRECEIVEQTY
              end
              item
                Format = '#,##'
                Kind = skSum
                Column = cxgridDetialFTOTALRECEIPTQTY
              end>
            object cxgridDetialFSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'FSEQ'
              Width = 35
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
              Width = 48
            end
            object cxgridDetialCFColorName: TcxGridDBColumn
              DataBinding.FieldName = 'CFColorName'
              Width = 60
            end
            object cxgridDetialCFCupName: TcxGridDBColumn
              DataBinding.FieldName = 'CFCupName'
              Width = 50
            end
            object cxgridDetialCFSizeCode: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeCode'
              Width = 58
            end
            object cxgridDetialCFSizeName: TcxGridDBColumn
              DataBinding.FieldName = 'CFSizeName'
              Width = 50
            end
            object cxgridDetialCFPackName: TcxGridDBColumn
              DataBinding.FieldName = 'CFPackName'
              Width = 49
            end
            object cxgridDetialCFPACKNUM: TcxGridDBColumn
              Caption = #31665#25968
              DataBinding.FieldName = 'CFPACKNUM'
              Width = 50
            end
            object cxgridDetialFQTY: TcxGridDBColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'FQTY'
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
            object cxgridDetialFDISCOUNTRATE: TcxGridDBColumn
              Caption = #25240#25187
              DataBinding.FieldName = 'FDISCOUNTRATE'
            end
            object cxgridDetialFACTUALPRICE: TcxGridDBColumn
              Caption = #25240#21518#21333#20215
              DataBinding.FieldName = 'FACTUALPRICE'
            end
            object cxgridDetialFAMOUNT: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'FAMOUNT'
            end
            object cxgridDetialFTOTALRECEIVEQTY: TcxGridDBColumn
              Caption = #24050#25910#36135#25968
              DataBinding.FieldName = 'FTOTALRECEIVEQTY'
            end
            object cxgridDetialFTOTALRECEIPTQTY: TcxGridDBColumn
              Caption = #24050#20837#24211#25968
              DataBinding.FieldName = 'FTOTALRECEIPTQTY'
            end
            object cxgridDetialFBASESTATUS: TcxGridDBColumn
              Caption = #34892#29366#24577
              DataBinding.FieldName = 'FBASESTATUS'
            end
            object cxgridDetialCFBrandName: TcxGridDBColumn
              Caption = #21697#29260
              DataBinding.FieldName = 'CFBrandName'
              Width = 80
            end
            object cxgridDetialcfattributeName: TcxGridDBColumn
              Caption = #27874#27573
              DataBinding.FieldName = 'cfattributeName'
              Width = 80
            end
            object cxgridDetialCFNUitName: TcxGridDBColumn
              DataBinding.FieldName = 'CFNUitName'
            end
            object cxgridDetialFREMARK: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'FREMARK'
              Width = 80
            end
          end
        end
        inherited Panel4: TPanel
          Width = 1029
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
      Top = 72
    end
  end
  inherited p_bt: TPanel
    Top = 582
    Width = 1029
  end
  inherited pnl_top: TPanel
    Width = 1029
    Height = 151
    inherited pnlCodeSM: TPanel
      Top = 96
      Width = 1027
      Height = 54
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Width = 1027
      Height = 95
      HideTabs = False
      ClientRectBottom = 95
      ClientRectRight = 1027
      ClientRectTop = 18
      inherited cxTabBaseInfo: TcxTabSheet
        Caption = #22522#26412#20449#24687
        inherited pnlTop: TPanel
          Width = 1027
          Height = 77
          inherited im_Audit: TImage
            Left = 968
          end
          inherited img_NewBill: TImage
            Left = 968
          end
          inherited lbDescription: TLabel
            Left = 248
            Top = 56
          end
          inherited Label2: TLabel
            Left = 2
            Top = 6
          end
          inherited Label5: TLabel
            Left = 554
            Top = 6
          end
          inherited imgTJ: TImage
            Left = 968
          end
          object Label7: TLabel [7]
            Left = 554
            Top = 29
            Width = 78
            Height = 13
            Caption = #39044#35745#25910#36135#26085#26399
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          inherited imgGB: TImage
            Left = 920
          end
          inherited txDescription: TcxDBTextEdit
            Left = 308
            Top = 51
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 9
            Width = 458
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 642
            Top = 1
            Hint = #19994#21153#26085#26399
            AutoSize = False
            DataBinding.DataField = 'FBIZDATE'
            TabOrder = 2
            Width = 124
          end
          inherited cxFNumber: TcxDBMaskEdit
            Top = 1
            AutoSize = False
            DataBinding.DataField = 'FNUMBER'
            Width = 170
          end
          inherited lblNumber: TcxLabel
            Left = 248
            Caption = #20379#24212#21830
          end
          object cxbtnedtPurType: TcxDBLookupComboBox [13]
            Tag = 100
            Left = 74
            Top = 26
            Hint = #37319#36141#31867#22411
            AutoSize = False
            DataBinding.DataField = 'CFPURTYPEID'
            DataBinding.DataSource = dsMaster
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'Fname_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsPurType
            TabOrder = 4
            Height = 21
            Width = 170
          end
          object cxbtnedtScopetype: TcxDBLookupComboBox [14]
            Left = 308
            Top = 26
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
            TabOrder = 5
            Height = 21
            Width = 231
          end
          inherited txtName: TcxDBTextEdit
            Left = 415
            Top = 1
            AutoSize = False
            DataBinding.DataField = 'CFSupplierName'
            TabOrder = 10
            Width = 125
          end
          inherited cxdblookupInputway: TcxDBLookupComboBox
            Left = 845
            Top = 1
            Hint = #24405#20837#26041#24335
            AutoSize = False
            DataBinding.DataField = 'CFINPUTWAY'
            TabOrder = 3
            Width = 125
          end
          object cxLabel2: TcxLabel [17]
            Left = 2
            Top = 29
            Caption = #37319#36141#31867#22411
          end
          object cxLabel3: TcxLabel [18]
            Left = 248
            Top = 29
            Caption = #20316#29992#33539#22260
          end
          object cxDeliveryData: TcxDBDateEdit [19]
            Tag = 100
            Left = 642
            Top = 26
            Hint = #39044#35745#25910#36135#26085#26399
            AutoSize = False
            DataBinding.DataField = 'CFReceiveDate'
            DataBinding.DataSource = dsMaster
            Properties.SaveTime = False
            Properties.ShowTime = False
            TabOrder = 6
            Height = 21
            Width = 124
          end
          object cxLabel4: TcxLabel [20]
            Left = 2
            Top = 56
            Caption = #20379#24212#21830#35746#21333
          end
          object cxDBTextEdit1: TcxDBTextEdit [21]
            Left = 74
            Top = 51
            AutoSize = False
            DataBinding.DataField = 'FSUPPLIERORDERNUMBER'
            DataBinding.DataSource = dsMaster
            TabOrder = 8
            Height = 21
            Width = 170
          end
          object cxLabel5: TcxLabel [22]
            Left = 790
            Top = 29
            Caption = #37319#36141#21592
          end
          object cxSalePerson: TcxDBButtonEdit [23]
            Left = 845
            Top = 26
            AutoSize = False
            DataBinding.DataField = 'CFSalePerson'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxSalePersonPropertiesButtonClick
            TabOrder = 7
            Height = 21
            Width = 125
          end
          inherited cxLabel1: TcxLabel
            Left = 790
            Top = 6
          end
          inherited cxbtnNUmber: TcxButtonEdit
            Left = 308
            Top = 1
            Hint = #20379#24212#21830
            AutoSize = False
            Properties.OnButtonClick = cxbtnNUmberPropertiesButtonClick
            Properties.OnChange = cxbtnNUmberPropertiesChange
            TabOrder = 1
            OnEnter = cxbtnNUmberEnter
            OnKeyPress = cxbtnNUmberKeyPress
            Width = 109
          end
        end
      end
    end
  end
  inherited pnlStock: TPanel
    Top = 448
    Width = 1029
    inherited Panel2: TPanel
      Width = 516
      inherited cxpageReceive: TcxPageControl
        Width = 514
        ClientRectRight = 514
        inherited cxTabRecStock: TcxTabSheet
          inherited cxGrid5: TcxGrid
            Width = 511
          end
        end
        inherited cxTabRecSale: TcxTabSheet
          inherited cxGrid6: TcxGrid
            Width = 522
          end
        end
      end
    end
  end
  inherited girdList: TDBGrid
    Left = 310
    Top = 91
  end
  inherited ImageListMainForm: TImageList
    Left = 448
    Top = 0
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
          Visible = True
          ItemName = 'dxBarbtnSumImp'
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
          Visible = True
          ItemName = 'dxBarbtnImpFromTxt'
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
    object dxBarImportPOS: TdxBarButton [41]
      Caption = #23548#20837'POS'
      Category = 0
      Visible = ivAlways
      ImageIndex = 2
    end
    object dxBarButton27: TdxBarButton [42]
      Caption = #23548#20837'POS'
      Category = 0
      Visible = ivAlways
      ImageIndex = 2
    end
    object dxBarButton28: TdxBarButton [43]
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object bt_CtrlQ: TdxBarButton [47]
      Caption = #20999#25442#22522#25968#27491#36127#21495
      Category = 0
      Hint = #20999#25442#22522#25968#27491#36127#21495
      Visible = ivAlways
      ShortCut = 16465
      OnClick = bt_CtrlQClick
    end
    object dxBarButton32: TdxBarButton [49]
      Caption = #23450#20301#21040#26465#30721#26694
      Category = 0
      Hint = #23450#20301#21040#26465#30721#26694
      Visible = ivAlways
      ShortCut = 16450
    end
    object bt_Ctrl_J: TdxBarButton [50]
      Caption = #23450#23450#20301#21040#22522#25968#26694
      Category = 0
      Hint = #23450#23450#20301#21040#22522#25968#26694
      Visible = ivAlways
      ShortCut = 16458
      OnClick = bt_Ctrl_JClick
    end
    object bt_Ctrl_B: TdxBarButton [51]
      Caption = #23450#20301#21040#26465#30721#26694
      Category = 0
      Hint = #23450#20301#21040#26465#30721#26694
      Visible = ivAlways
      ShortCut = 16450
      OnClick = bt_Ctrl_BClick
    end
    object dxBarbtnSumImp: TdxBarButton
      Caption = #27719#24635#23548#20837
      Category = 0
      Hint = #27719#24635#23548#20837
      Visible = ivAlways
      ImageIndex = 55
      LargeImageIndex = 55
      PaintStyle = psCaptionGlyph
      OnClick = dxBarbtnSumImpClick
    end
  end
  inherited actlst1: TActionList
    Left = 200
    object actSumImp: TAction
      Caption = #27719#24635#23548#20837
      ImageIndex = 55
    end
  end
  inherited cdsMaster: TClientDataSet
    ProviderName = 'DataSetProvider1'
    RemoteServer = CliDM.SckCon
    Left = 624
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
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
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
    object cdsMasterFPURCHASEORGUNITID: TWideStringField
      FieldName = 'FPURCHASEORGUNITID'
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
    object cdsMasterFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdsMasterFSUPPLIERADDRESS: TWideStringField
      FieldName = 'FSUPPLIERADDRESS'
      Size = 510
    end
    object cdsMasterFSUPPLIERORDERNUMBER: TWideStringField
      FieldName = 'FSUPPLIERORDERNUMBER'
      Size = 160
    end
    object cdsMasterFSALEORGUNITID: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsMasterFSALEORDERID: TWideStringField
      FieldName = 'FSALEORDERID'
      Size = 44
    end
    object cdsMasterFPAYMENTTYPEID: TWideStringField
      FieldName = 'FPAYMENTTYPEID'
      Size = 44
    end
    object cdsMasterFSETTLEMENTTYPEID: TWideStringField
      FieldName = 'FSETTLEMENTTYPEID'
      Size = 44
    end
    object cdsMasterFCASHDISCOUNTID: TWideStringField
      FieldName = 'FCASHDISCOUNTID'
      Size = 44
    end
    object cdsMasterFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterFPREPAYMENTDATE: TDateTimeField
      FieldName = 'FPREPAYMENTDATE'
    end
    object cdsMasterFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsMasterFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFALTERDATE: TDateTimeField
      FieldName = 'FALTERDATE'
    end
    object cdsMasterFALTERPERSON: TWideStringField
      FieldName = 'FALTERPERSON'
      Size = 44
    end
    object cdsMasterFPAYMENTCONDITIONID: TWideStringField
      FieldName = 'FPAYMENTCONDITIONID'
      Size = 44
    end
    object cdsMasterFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsMasterCFRECEIVEDATE: TDateTimeField
      FieldName = 'CFRECEIVEDATE'
    end
    object cdsMasterCFTYPEINFORMATION: TWideStringField
      FieldName = 'CFTYPEINFORMATION'
      Size = 100
    end
    object cdsMasterCFPRICETYPEID: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterCFORDERTYPEID: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterFYEAR: TFloatField
      FieldName = 'FYEAR'
    end
    object cdsMasterFHASEFFECTED: TFloatField
      FieldName = 'FHASEFFECTED'
    end
    object cdsMasterFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsMasterFISAPPROVEDMATERIAL: TFloatField
      FieldName = 'FISAPPROVEDMATERIAL'
    end
    object cdsMasterCFISCRATESALEORDER: TFloatField
      FieldName = 'CFISCRATESALEORDER'
    end
    object cdsMasterCFHASPURPRICE: TFloatField
      FieldName = 'CFHASPURPRICE'
    end
    object cdsMasterFISPRICEINTAX: TFloatField
      FieldName = 'FISPRICEINTAX'
    end
    object cdsMasterFISQUICKEN: TFloatField
      FieldName = 'FISQUICKEN'
    end
    object cdsMasterFISINTAX: TFloatField
      FieldName = 'FISINTAX'
    end
    object cdsMasterFISCENTRALBALANCE: TFloatField
      FieldName = 'FISCENTRALBALANCE'
    end
    object cdsMasterFLOCALTOTALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTOTALTAXAMOUNT'
    end
    object cdsMasterFLOCALTOTALAMOUNT: TFloatField
      FieldName = 'FLOCALTOTALAMOUNT'
    end
    object cdsMasterFISSYSBILL: TFloatField
      FieldName = 'FISSYSBILL'
    end
    object cdsMasterFUNPREPAIDAMOUNT: TFloatField
      FieldName = 'FUNPREPAIDAMOUNT'
    end
    object cdsMasterFTOTALTAXAMOUNT: TFloatField
      FieldName = 'FTOTALTAXAMOUNT'
    end
    object cdsMasterFTOTALTAX: TFloatField
      FieldName = 'FTOTALTAX'
    end
    object cdsMasterFTOTALAMOUNT: TFloatField
      FieldName = 'FTOTALAMOUNT'
    end
    object cdsMasterFISINNERSALE: TFloatField
      FieldName = 'FISINNERSALE'
    end
    object cdsMasterFPAIDAMOUNT: TFloatField
      FieldName = 'FPAIDAMOUNT'
    end
    object cdsMasterFINVOICEDAMOUNT: TFloatField
      FieldName = 'FINVOICEDAMOUNT'
    end
    object cdsMasterFPREPAYMENT: TFloatField
      FieldName = 'FPREPAYMENT'
    end
    object cdsMasterFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFPERIOD: TFloatField
      FieldName = 'FPERIOD'
    end
    object cdsMasterFPREPAYMENTRATE: TFloatField
      FieldName = 'FPREPAYMENTRATE'
    end
    object cdsMasterFPREPAID: TFloatField
      FieldName = 'FPREPAID'
    end
    object cdsMasterFSUPPLIERCONFIRM: TFloatField
      FieldName = 'FSUPPLIERCONFIRM'
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
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 0
      Calculated = True
    end
    object cdsMasterCFSalePerson: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSalePerson'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFPURTYPEID: TWideStringField
      FieldName = 'CFPURTYPEID'
      Size = 44
    end
    object cdsMasterCFRageID: TWideStringField
      FieldName = 'CFRangeID'
      Size = 44
    end
    object cdsMasterCFISProcduct: TIntegerField
      FieldName = 'CFISProcduct'
    end
    object cdsMasterCFSupplierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSupplierName'
      Size = 80
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 688
    Top = 15
  end
  inherited cdsDetail: TClientDataSet
    ProviderName = 'DataSetProvider2'
    RemoteServer = CliDM.SckCon
    Left = 48
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
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
      Size = 160
    end
    object cdsDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object cdsDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 160
    end
    object cdsDetailFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      OnChange = cdsDetailFBASEUNITIDChange
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
    object cdsDetailFSUPPLIERMATERIALNUMBER: TWideStringField
      FieldName = 'FSUPPLIERMATERIALNUMBER'
      Size = 160
    end
    object cdsDetailFSUPPLIERMATERIALNAME: TWideStringField
      FieldName = 'FSUPPLIERMATERIALNAME'
      Size = 160
    end
    object cdsDetailFSUPPLIERMATERIALMODEL: TWideStringField
      FieldName = 'FSUPPLIERMATERIALMODEL'
      Size = 160
    end
    object cdsDetailFASSETNUMBER: TWideStringField
      FieldName = 'FASSETNUMBER'
      Size = 160
    end
    object cdsDetailFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsDetailFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFDELIVERYDATE: TDateTimeField
      FieldName = 'FDELIVERYDATE'
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFDELIVERYADDRESS: TWideStringField
      FieldName = 'FDELIVERYADDRESS'
      Size = 510
    end
    object cdsDetailFCLOSEDATE: TDateTimeField
      FieldName = 'FCLOSEDATE'
    end
    object cdsDetailFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 100
    end
    object cdsDetailFREQUESTORGUNITID: TWideStringField
      FieldName = 'FREQUESTORGUNITID'
      Size = 44
    end
    object cdsDetailFREQUESTCOMPANYORGUNITID: TWideStringField
      FieldName = 'FREQUESTCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFOLDID: TWideStringField
      FieldName = 'FOLDID'
      Size = 44
    end
    object cdsDetailFROWTYPEID: TWideStringField
      FieldName = 'FROWTYPEID'
      Size = 44
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFDESTINATIONTYPE: TWideStringField
      FieldName = 'FDESTINATIONTYPE'
      Size = 44
    end
    object cdsDetailFMATERIALNAME: TWideStringField
      FieldName = 'FMATERIALNAME'
      Size = 510
    end
    object cdsDetailFNONUMMATERIALMODEL: TWideStringField
      FieldName = 'FNONUMMATERIALMODEL'
      Size = 510
    end
    object cdsDetailFQCSTANDARDID: TWideStringField
      FieldName = 'FQCSTANDARDID'
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
    object cdsDetailCFCUSTOMERORDERID: TWideStringField
      FieldName = 'CFCUSTOMERORDERID'
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
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFCUSTOMERDISID: TWideStringField
      FieldName = 'CFCUSTOMERDISID'
      Size = 44
    end
    object cdsDetailCFRECEIVESTOREUNIT: TWideStringField
      FieldName = 'CFRECEIVESTOREUNIT'
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
    object cdsDetailCFLOCATION: TWideStringField
      FieldName = 'CFLOCATION'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailCFSOASSOCIATEQTY: TFloatField
      FieldName = 'CFSOASSOCIATEQTY'
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailFMATCHEDAMOUNT: TFloatField
      FieldName = 'FMATCHEDAMOUNT'
    end
    object cdsDetailFTOTALREQPAYAMT: TFloatField
      FieldName = 'FTOTALREQPAYAMT'
    end
    object cdsDetailFISREQPREPAYGTPREPAY: TFloatField
      FieldName = 'FISREQPREPAYGTPREPAY'
    end
    object cdsDetailFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetailFCANINVMOVEQTY: TFloatField
      FieldName = 'FCANINVMOVEQTY'
    end
    object cdsDetailFUNORDEREDQTY: TFloatField
      FieldName = 'FUNORDEREDQTY'
    end
    object cdsDetailFISBETWEENCOMPANYREC: TFloatField
      FieldName = 'FISBETWEENCOMPANYREC'
    end
    object cdsDetailFPLANRECEIVEQTY: TFloatField
      FieldName = 'FPLANRECEIVEQTY'
    end
    object cdsDetailFTOTALSUPPLYSTOCKQTY: TFloatField
      FieldName = 'FTOTALSUPPLYSTOCKQTY'
    end
    object cdsDetailFTOTALCANCELLEDSTOCKQTY: TFloatField
      FieldName = 'FTOTALCANCELLEDSTOCKQTY'
    end
    object cdsDetailFTOTALSUPPLYSTOCKBASEQTY: TFloatField
      FieldName = 'FTOTALSUPPLYSTOCKBASEQTY'
    end
    object cdsDetailFTOTALPREPAYAMT: TFloatField
      FieldName = 'FTOTALPREPAYAMT'
    end
    object cdsDetailFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailFASSCOEFFICIENT: TFloatField
      FieldName = 'FASSCOEFFICIENT'
    end
    object cdsDetailFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailFDEMANDQTY: TFloatField
      FieldName = 'FDEMANDQTY'
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailFDISCOUNTRATE: TFloatField
      FieldName = 'FDISCOUNTRATE'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailFISREQCOMEQLRECCOM: TFloatField
      FieldName = 'FISREQCOMEQLRECCOM'
    end
    object cdsDetailFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetailFTOTALUNRECEIVEQTY: TFloatField
      FieldName = 'FTOTALUNRECEIVEQTY'
    end
    object cdsDetailFCURSEORDERQTY: TFloatField
      FieldName = 'FCURSEORDERQTY'
    end
    object cdsDetailFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailFTOTALMOVEQTY: TFloatField
      FieldName = 'FTOTALMOVEQTY'
    end
    object cdsDetailFTOTALRECEIVEQTY: TFloatField
      FieldName = 'FTOTALRECEIVEQTY'
    end
    object cdsDetailFTOTALRECEIPTQTY: TFloatField
      FieldName = 'FTOTALRECEIPTQTY'
    end
    object cdsDetailFRECEIVEOVERRATE: TFloatField
      FieldName = 'FRECEIVEOVERRATE'
    end
    object cdsDetailFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailFTOTALRETURNEDQTY: TFloatField
      FieldName = 'FTOTALRETURNEDQTY'
    end
    object cdsDetailFTOTALRECEIVEBASEQTY: TFloatField
      FieldName = 'FTOTALRECEIVEBASEQTY'
    end
    object cdsDetailFTOTALINVOICEDQTY: TFloatField
      FieldName = 'FTOTALINVOICEDQTY'
    end
    object cdsDetailFTOTALINVOICEDAMOUNT: TFloatField
      FieldName = 'FTOTALINVOICEDAMOUNT'
    end
    object cdsDetailFTOTALRECEIPTBASEQTY: TFloatField
      FieldName = 'FTOTALRECEIPTBASEQTY'
    end
    object cdsDetailFTOTALRETURNEDBASEQTY: TFloatField
      FieldName = 'FTOTALRETURNEDBASEQTY'
    end
    object cdsDetailFISTIMEUNCTRL: TFloatField
      FieldName = 'FISTIMEUNCTRL'
    end
    object cdsDetailFTOTALINVOICEDBASEQTY: TFloatField
      FieldName = 'FTOTALINVOICEDBASEQTY'
    end
    object cdsDetailFTOTALUNRETURNBASEQTY: TFloatField
      FieldName = 'FTOTALUNRETURNBASEQTY'
    end
    object cdsDetailFTOTALUNRECEIVEBASEQTY: TFloatField
      FieldName = 'FTOTALUNRECEIVEBASEQTY'
    end
    object cdsDetailFRECEIVEOWINGRATE: TFloatField
      FieldName = 'FRECEIVEOWINGRATE'
    end
    object cdsDetailFDELIVERADVANCEDAY: TFloatField
      FieldName = 'FDELIVERADVANCEDAY'
    end
    object cdsDetailFTOTALPAIDAMOUNT: TFloatField
      FieldName = 'FTOTALPAIDAMOUNT'
    end
    object cdsDetailFDELIVERDEFERRALDAY: TFloatField
      FieldName = 'FDELIVERDEFERRALDAY'
    end
    object cdsDetailFISREQUESTTORECEIVED: TFloatField
      FieldName = 'FISREQUESTTORECEIVED'
    end
    object cdsDetailFISQUANTITYUNCTRL: TFloatField
      FieldName = 'FISQUANTITYUNCTRL'
    end
    object cdsDetailFTOTALEXPENSE: TFloatField
      FieldName = 'FTOTALEXPENSE'
    end
    object cdsDetailFISSUPINFO: TFloatField
      FieldName = 'FISSUPINFO'
    end
    object cdsDetailFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailFQTY: TFloatField
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
    object cdsDetailFTOTALINVOICEDAMT: TFloatField
      FieldName = 'FTOTALINVOICEDAMT'
    end
    object cdsDetailFPREPAIDAMOUNT: TFloatField
      FieldName = 'FPREPAIDAMOUNT'
    end
    object cdsDetailFPREPAYMENT: TFloatField
      FieldName = 'FPREPAYMENT'
    end
    object cdsDetailFPRERECEIVED: TFloatField
      FieldName = 'FPRERECEIVED'
    end
    object cdsDetailFOLDSTATUS: TFloatField
      FieldName = 'FOLDSTATUS'
    end
    object cdsDetailFUNPRERECEIVEDAM: TFloatField
      FieldName = 'FUNPRERECEIVEDAM'
    end
    object cdsDetailFVERSION: TFloatField
      FieldName = 'FVERSION'
    end
    object wdstrngfldDetailCFAssistNum: TWideStringField
      DisplayLabel = #36741#21161#23646#24615#32534#21495
      FieldName = 'CFAssistNum'
      Size = 100
    end
  end
  inherited pmDetail: TPopupMenu
    OnPopup = pmDetailPopup
    Left = 352
    Top = 273
    object nCopy: TMenuItem
      Caption = #21521#19979#22797#21046' "'#20132#36135#26085#26399'"(Ctrl+Q)'
      OnClick = nCopyClick
    end
  end
  inherited cdsDetailAmount: TClientDataSet
    BeforeEdit = cdsDetailAmountBeforeEdit
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
      OnChange = cdsDetailAmountCFPACKNUMChange
    end
    object cdsDetailAmountFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      OnChange = cdsDetailAmountFMATERIALIDChange
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
    object cdsDetailAmountCFPACKID: TStringField
      FieldName = 'CFPACKID'
      OnChange = cdsDetailAmountCFPACKIDChange
      Size = 44
    end
    object cdsDetailAmountFDELIVERYDATE: TDateTimeField
      DisplayLabel = #20132#36135#26085#26399
      FieldName = 'FDELIVERYDATE'
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
    object cdsDetailAmountFPRICE: TFloatField
      DisplayLabel = #21333#20215
      FieldName = 'FPRICE'
    end
    object cdsDetailAmountFACTUALPRICE: TFloatField
      DisplayLabel = #23454#38469#21333#20215
      FieldName = 'FACTUALPRICE'
      OnChange = cdsDetailAmountFACTUALPRICEChange
    end
    object cdsDetailAmountFDISCOUNTRATE: TFloatField
      DisplayLabel = #25240#25187#29575
      FieldName = 'FDISCOUNTRATE'
      OnChange = cdsDetailAmountFDISCOUNTRATEChange
    end
    object cdsDetailAmountfTotaLQty: TIntegerField
      DisplayLabel = #25968#37327#21512#35745
      FieldKind = fkCalculated
      FieldName = 'fTotaLQty'
      Calculated = True
    end
    object cdsDetailAmountCFCustomerOrderID: TStringField
      FieldName = 'CFCustomerOrderID'
      Size = 44
    end
    object cdsDetailAmountCFReceiveStoreUnit: TStringField
      FieldName = 'CFReceiveStoreUnit'
      Size = 44
    end
    object cdsDetailAmountCFColorCode: TStringField
      FieldName = 'CFColorCode'
      Size = 60
    end
    object cdsDetailAmountCFBrandName: TWideStringField
      FieldName = 'CFBrandName'
      Size = 60
    end
    object cdsDetailAmountcfattributeName: TWideStringField
      FieldName = 'cfattributeName'
      Size = 60
    end
    object cdsDetailAmountCFNUitName: TWideStringField
      DisplayLabel = #21333#20301
      FieldName = 'CFNUitName'
      Size = 10
    end
    object cdsDetailAmountFREMARK: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailAmountcfattributeid: TWideStringField
      FieldName = 'cfattributeid'
      Size = 44
    end
    object cdsDetailAmountCfbrandid: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsDetailAmountFsourcebillnumber: TWideStringField
      FieldName = 'Fsourcebillnumber'
      Size = 60
    end
  end
  inherited SaveDg: TSaveDialog
    Left = 739
    Top = 170
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 792
  end
  inherited cdsSizeGroupTitle: TClientDataSet
    Left = 64
    Top = 496
  end
  inherited QrySelect: TADOQuery
    Left = 280
    Top = 177
  end
  inherited dsSelect: TDataSource
    Left = 192
    Top = 177
  end
  inherited cdsSelect: TClientDataSet
    Left = 249
  end
  inherited dsHeadSel: TDataSource
    Top = 113
  end
  inherited cdsHeadSel: TClientDataSet
    Left = 417
    Top = 113
  end
  inherited dsInputWay: TDataSource
    Left = 928
    Top = 129
  end
  inherited cdsDetailTracy: TClientDataSet
    Left = 168
    Top = 207
    object cdsDetailTracyFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
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
      Size = 160
    end
    object cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 160
    end
    object cdsDetailTracyFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailTracyFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      OnChange = cdsDetailFBASEUNITIDChange
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
    object cdsDetailTracyFSUPPLIERMATERIALNUMBER: TWideStringField
      FieldName = 'FSUPPLIERMATERIALNUMBER'
      Size = 160
    end
    object cdsDetailTracyFSUPPLIERMATERIALNAME: TWideStringField
      FieldName = 'FSUPPLIERMATERIALNAME'
      Size = 160
    end
    object cdsDetailTracyFSUPPLIERMATERIALMODEL: TWideStringField
      FieldName = 'FSUPPLIERMATERIALMODEL'
      Size = 160
    end
    object cdsDetailTracyFASSETNUMBER: TWideStringField
      FieldName = 'FASSETNUMBER'
      Size = 160
    end
    object cdsDetailTracyFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFDELIVERYDATE: TDateTimeField
      FieldName = 'FDELIVERYDATE'
    end
    object cdsDetailTracyFTRACKNUMBER: TWideStringField
      FieldName = 'FTRACKNUMBER'
      Size = 160
    end
    object cdsDetailTracyFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailTracyFDELIVERYADDRESS: TWideStringField
      FieldName = 'FDELIVERYADDRESS'
      Size = 510
    end
    object cdsDetailTracyFCLOSEDATE: TDateTimeField
      FieldName = 'FCLOSEDATE'
    end
    object cdsDetailTracyFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 100
    end
    object cdsDetailTracyFREQUESTORGUNITID: TWideStringField
      FieldName = 'FREQUESTORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFREQUESTCOMPANYORGUNITID: TWideStringField
      FieldName = 'FREQUESTCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailTracyFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailTracyFOLDID: TWideStringField
      FieldName = 'FOLDID'
      Size = 44
    end
    object cdsDetailTracyFROWTYPEID: TWideStringField
      FieldName = 'FROWTYPEID'
      Size = 44
    end
    object cdsDetailTracyFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailTracyFDESTINATIONTYPE: TWideStringField
      FieldName = 'FDESTINATIONTYPE'
      Size = 44
    end
    object cdsDetailTracyFMATERIALNAME: TWideStringField
      FieldName = 'FMATERIALNAME'
      Size = 510
    end
    object cdsDetailTracyFNONUMMATERIALMODEL: TWideStringField
      FieldName = 'FNONUMMATERIALMODEL'
      Size = 510
    end
    object cdsDetailTracyFQCSTANDARDID: TWideStringField
      FieldName = 'FQCSTANDARDID'
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
    object cdsDetailTracyFCONTRACTNUMBER: TWideStringField
      FieldName = 'FCONTRACTNUMBER'
      Size = 44
    end
    object cdsDetailTracyFPURCONTRACTID: TWideStringField
      FieldName = 'FPURCONTRACTID'
      Size = 44
    end
    object cdsDetailTracyCFCUSTOMERORDERID: TWideStringField
      FieldName = 'CFCUSTOMERORDERID'
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
    object cdsDetailTracyCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailTracyCFCUSTOMERDISID: TWideStringField
      FieldName = 'CFCUSTOMERDISID'
      Size = 44
    end
    object cdsDetailTracyCFRECEIVESTOREUNIT: TWideStringField
      FieldName = 'CFRECEIVESTOREUNIT'
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
    object cdsDetailTracyCFLOCATION: TWideStringField
      FieldName = 'CFLOCATION'
      Size = 44
    end
    object cdsDetailTracyFPURREQUESTID: TWideStringField
      FieldName = 'FPURREQUESTID'
      Size = 44
    end
    object cdsDetailTracyFPURREQUESTENTRYID: TWideStringField
      FieldName = 'FPURREQUESTENTRYID'
      Size = 44
    end
    object cdsDetailTracyFSEQ: TFloatField
      DisplayLabel = #24207#21495
      FieldName = 'FSEQ'
    end
    object cdsDetailTracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailTracyCFSOASSOCIATEQTY: TFloatField
      FieldName = 'CFSOASSOCIATEQTY'
    end
    object cdsDetailTracyCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailTracyFMATCHEDAMOUNT: TFloatField
      FieldName = 'FMATCHEDAMOUNT'
    end
    object cdsDetailTracyFTOTALREQPAYAMT: TFloatField
      FieldName = 'FTOTALREQPAYAMT'
    end
    object cdsDetailTracyFISREQPREPAYGTPREPAY: TFloatField
      FieldName = 'FISREQPREPAYGTPREPAY'
    end
    object cdsDetailTracyFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetailTracyFCANINVMOVEQTY: TFloatField
      FieldName = 'FCANINVMOVEQTY'
    end
    object cdsDetailTracyFUNORDEREDQTY: TFloatField
      FieldName = 'FUNORDEREDQTY'
    end
    object cdsDetailTracyFISBETWEENCOMPANYREC: TFloatField
      FieldName = 'FISBETWEENCOMPANYREC'
    end
    object cdsDetailTracyFPLANRECEIVEQTY: TFloatField
      FieldName = 'FPLANRECEIVEQTY'
    end
    object cdsDetailTracyFTOTALSUPPLYSTOCKQTY: TFloatField
      FieldName = 'FTOTALSUPPLYSTOCKQTY'
    end
    object cdsDetailTracyFTOTALCANCELLEDSTOCKQTY: TFloatField
      FieldName = 'FTOTALCANCELLEDSTOCKQTY'
    end
    object cdsDetailTracyFTOTALSUPPLYSTOCKBASEQTY: TFloatField
      FieldName = 'FTOTALSUPPLYSTOCKBASEQTY'
    end
    object cdsDetailTracyFTOTALPREPAYAMT: TFloatField
      FieldName = 'FTOTALPREPAYAMT'
    end
    object cdsDetailTracyFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailTracyFASSCOEFFICIENT: TFloatField
      FieldName = 'FASSCOEFFICIENT'
    end
    object cdsDetailTracyFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailTracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailTracyFDEMANDQTY: TFloatField
      FieldName = 'FDEMANDQTY'
    end
    object cdsDetailTracyFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailTracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailTracyFDISCOUNTRATE: TFloatField
      FieldName = 'FDISCOUNTRATE'
    end
    object cdsDetailTracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailTracyFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetailTracyFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetailTracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailTracyFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailTracyFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailTracyFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetailTracyFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetailTracyFISREQCOMEQLRECCOM: TFloatField
      FieldName = 'FISREQCOMEQLRECCOM'
    end
    object cdsDetailTracyFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetailTracyFTOTALUNRECEIVEQTY: TFloatField
      FieldName = 'FTOTALUNRECEIVEQTY'
    end
    object cdsDetailTracyFCURSEORDERQTY: TFloatField
      FieldName = 'FCURSEORDERQTY'
    end
    object cdsDetailTracyFTAXAMOUNT: TFloatField
      FieldName = 'FTAXAMOUNT'
    end
    object cdsDetailTracyFTOTALMOVEQTY: TFloatField
      FieldName = 'FTOTALMOVEQTY'
    end
    object cdsDetailTracyFTOTALRECEIVEQTY: TFloatField
      FieldName = 'FTOTALRECEIVEQTY'
    end
    object cdsDetailTracyFTOTALRECEIPTQTY: TFloatField
      FieldName = 'FTOTALRECEIPTQTY'
    end
    object cdsDetailTracyFRECEIVEOVERRATE: TFloatField
      FieldName = 'FRECEIVEOVERRATE'
    end
    object cdsDetailTracyFLOCALTAXAMOUNT: TFloatField
      FieldName = 'FLOCALTAXAMOUNT'
    end
    object cdsDetailTracyFTOTALRETURNEDQTY: TFloatField
      FieldName = 'FTOTALRETURNEDQTY'
    end
    object cdsDetailTracyFTOTALRECEIVEBASEQTY: TFloatField
      FieldName = 'FTOTALRECEIVEBASEQTY'
    end
    object cdsDetailTracyFTOTALINVOICEDQTY: TFloatField
      FieldName = 'FTOTALINVOICEDQTY'
    end
    object cdsDetailTracyFTOTALINVOICEDAMOUNT: TFloatField
      FieldName = 'FTOTALINVOICEDAMOUNT'
    end
    object cdsDetailTracyFTOTALRECEIPTBASEQTY: TFloatField
      FieldName = 'FTOTALRECEIPTBASEQTY'
    end
    object cdsDetailTracyFTOTALRETURNEDBASEQTY: TFloatField
      FieldName = 'FTOTALRETURNEDBASEQTY'
    end
    object cdsDetailTracyFISTIMEUNCTRL: TFloatField
      FieldName = 'FISTIMEUNCTRL'
    end
    object cdsDetailTracyFTOTALINVOICEDBASEQTY: TFloatField
      FieldName = 'FTOTALINVOICEDBASEQTY'
    end
    object cdsDetailTracyFTOTALUNRETURNBASEQTY: TFloatField
      FieldName = 'FTOTALUNRETURNBASEQTY'
    end
    object cdsDetailTracyFTOTALUNRECEIVEBASEQTY: TFloatField
      FieldName = 'FTOTALUNRECEIVEBASEQTY'
    end
    object cdsDetailTracyFRECEIVEOWINGRATE: TFloatField
      FieldName = 'FRECEIVEOWINGRATE'
    end
    object cdsDetailTracyFDELIVERADVANCEDAY: TFloatField
      FieldName = 'FDELIVERADVANCEDAY'
    end
    object cdsDetailTracyFTOTALPAIDAMOUNT: TFloatField
      FieldName = 'FTOTALPAIDAMOUNT'
    end
    object cdsDetailTracyFDELIVERDEFERRALDAY: TFloatField
      FieldName = 'FDELIVERDEFERRALDAY'
    end
    object cdsDetailTracyFISREQUESTTORECEIVED: TFloatField
      FieldName = 'FISREQUESTTORECEIVED'
    end
    object cdsDetailTracyFISQUANTITYUNCTRL: TFloatField
      FieldName = 'FISQUANTITYUNCTRL'
    end
    object cdsDetailTracyFTOTALEXPENSE: TFloatField
      FieldName = 'FTOTALEXPENSE'
    end
    object cdsDetailTracyFISSUPINFO: TFloatField
      FieldName = 'FISSUPINFO'
    end
    object cdsDetailTracyFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetailTracyFQTY: TFloatField
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
    object cdsDetailTracyFTOTALINVOICEDAMT: TFloatField
      FieldName = 'FTOTALINVOICEDAMT'
    end
    object cdsDetailTracyFPREPAIDAMOUNT: TFloatField
      FieldName = 'FPREPAIDAMOUNT'
    end
    object cdsDetailTracyFPREPAYMENT: TFloatField
      FieldName = 'FPREPAYMENT'
    end
    object cdsDetailTracyFPRERECEIVED: TFloatField
      FieldName = 'FPRERECEIVED'
    end
    object cdsDetailTracyFOLDSTATUS: TFloatField
      FieldName = 'FOLDSTATUS'
    end
    object cdsDetailTracyFUNPRERECEIVEDAM: TFloatField
      FieldName = 'FUNPRERECEIVEDAM'
    end
    object cdsDetailTracyFVERSION: TFloatField
      FieldName = 'FVERSION'
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
    object cdsDetailTracyCFColorCode: TStringField
      FieldName = 'CFColorCode'
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
    object cdsDetailTracyCFBrandName: TWideStringField
      FieldName = 'CFBrandName'
      Size = 60
    end
    object cdsDetailTracycfattributeName: TWideStringField
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
    object cdsDetailTracyCFAssistNum: TWideStringField
      DisplayLabel = #36741#21161#23646#24615#32534#21495
      FieldName = 'CFAssistNum'
      Size = 100
    end
  end
  inherited dsDetailTracy: TDataSource
    Left = 288
    Top = 207
  end
  inherited cdstracy: TClientDataSet
    object cdstracyFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdstracyFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdstracyFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      OnChange = cdsDetailFBASEUNITIDChange
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
    object cdstracyCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdstracyCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
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
    object cdstracyFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdstracyCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdstracyCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdstracyFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdstracyFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdstracyFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdstracyFDISCOUNTRATE: TFloatField
      FieldName = 'FDISCOUNTRATE'
    end
    object cdstracyFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdstracyFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdstracyFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdstracyFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdstracyFTOTALRECEIVEQTY: TFloatField
      FieldName = 'FTOTALRECEIVEQTY'
    end
    object cdstracyFTOTALRECEIPTQTY: TFloatField
      FieldName = 'FTOTALRECEIPTQTY'
    end
    object cdstracyFQTY: TFloatField
      FieldName = 'FQTY'
      OnChange = cdsDetailFQTYChange
    end
  end
  object cdsSupplier: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsSupplierFilterRecord
    Left = 425
    Top = 25
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
  object cdsPurType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 97
    Top = 83
  end
  object dsPurType: TDataSource
    DataSet = cdsPurType
    Left = 129
    Top = 91
  end
  object cdsSourceBill: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 319
    Data = {
      E30000009619E0BD010000001800000006000000000003000000E30003464944
      0100490000000100055749445448020002002C000946504152454E5449440100
      490000000100055749445448020002002C000D46534F5552434542494C4C4944
      0100490000000100055749445448020002002C001146534F5552434542494C4C
      4E554D42455201004900000001000557494454480200020050001146534F5552
      434542494C4C5459504549440100490000000100055749445448020002002C00
      10464F52444552435553544F4D45524944010049000000010005574944544802
      0002002C000000}
  end
  object dsSourceBill: TDataSource
    DataSet = cdsSourceBill
    Left = 264
    Top = 311
  end
  object cdstemp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 252
  end
  object dsRange: TDataSource
    DataSet = CliDM.cdsRange
    Left = 529
    Top = 89
  end
end
