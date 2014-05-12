inherited Frm_CheckBill: TFrm_CheckBill
  Left = 178
  Top = 73
  Width = 1036
  Height = 641
  Caption = #30424#28857#21333#32534#36753
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnlDetail: TPanel
    Width = 1028
    Height = 266
    inherited cxPageDetail: TcxPageControl
      Width = 1028
      Height = 266
      ClientRectBottom = 266
      ClientRectRight = 1028
      inherited cxTabDetail: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 1028
          Height = 218
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
            OptionsView.Footer = True
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
            object dbgList2fAmount_1: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_1'
            end
            object dbgList2fAmount_2: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_2'
            end
            object dbgList2fAmount_3: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_3'
            end
            object dbgList2fAmount_4: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_4'
            end
            object dbgList2fAmount_5: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_5'
            end
            object dbgList2fAmount_6: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_6'
            end
            object dbgList2fAmount_7: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_7'
            end
            object dbgList2fAmount_8: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_8'
            end
            object dbgList2fAmount_9: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_9'
            end
            object dbgList2fAmount_10: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_10'
            end
            object dbgList2fAmount_11: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_11'
            end
            object dbgList2fAmount_12: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_12'
            end
            object dbgList2fAmount_13: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_13'
            end
            object dbgList2fAmount_14: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_14'
            end
            object dbgList2fAmount_15: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_15'
            end
            object dbgList2fAmount_16: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_16'
            end
            object dbgList2fAmount_17: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_17'
            end
            object dbgList2fAmount_18: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_18'
            end
            object dbgList2fAmount_19: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_19'
            end
            object dbgList2fAmount_20: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_20'
            end
            object dbgList2fAmount_21: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_21'
            end
            object dbgList2fAmount_22: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_22'
            end
            object dbgList2fAmount_23: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_23'
            end
            object dbgList2fAmount_24: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_24'
            end
            object dbgList2fAmount_25: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_25'
            end
            object dbgList2fAmount_26: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_26'
            end
            object dbgList2fAmount_27: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_27'
            end
            object dbgList2fAmount_28: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_28'
            end
            object dbgList2fAmount_29: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_29'
              Width = 72
            end
            object dbgList2fAmount_30: TcxGridDBColumn
              DataBinding.FieldName = 'fAmount_30'
            end
            object dbgList2fTotalQty: TcxGridDBColumn
              DataBinding.FieldName = 'fTotalQty'
              Options.Editing = False
              Width = 70
            end
          end
        end
        inherited Panel3: TPanel
          Width = 1028
        end
      end
      inherited cxTabTractDetail: TcxTabSheet
        inherited cxGrid4: TcxGrid
          Width = 1028
          Height = 221
        end
        inherited Panel4: TPanel
          Width = 1028
        end
      end
    end
  end
  inherited p_bt: TPanel
    Top = 577
    Width = 1028
    inherited cxFCreatorName: TcxDBMaskEdit
      DataBinding.DataField = 'FCreatorName'
    end
    inherited cxFCreatorDate: TcxDBMaskEdit
      DataBinding.DataField = 'FCREATETIME'
    end
    inherited cxFAUDITORName: TcxDBMaskEdit
      DataBinding.DataField = 'FAuditorName'
    end
    inherited cxFAUDITORdate: TcxDBMaskEdit
      DataBinding.DataField = 'CFAUDITORTIME'
    end
  end
  inherited pnl_top: TPanel
    Width = 1028
    inherited pnlCodeSM: TPanel
      Width = 1026
      inherited cxCodeText: TcxTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxBaseQty: TcxTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited HeadPageCtrl: TcxPageControl
      Width = 1026
      ClientRectRight = 1026
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          Width = 1026
          inherited im_Audit: TImage
            Left = 958
            Picture.Data = {00}
          end
          inherited img_NewBill: TImage
            Left = 958
            Picture.Data = {00}
          end
          inherited Label2: TLabel
            Left = 9
          end
          inherited Label5: TLabel
            Left = 255
          end
          inherited Image4: TImage
            Top = 88
          end
          inherited imgTJ: TImage
            Left = 952
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000038
              0000002008060000004703BBE8000000017352474200AECE1CE9000000046741
              4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
              80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
              0AFF00000AFF0134629A82000003C1494441545847DD99C18B4F5114C7514A29
              65A3866C242B1B49166323D636B24293920D3B0B6533365316765628092B297F
              00D98C85241B2BC946289B29A5ACF4F3FDE87DA733B7FBEEBDEF19D29BFAF666
              DEBDF79CEFF79CF3CEBDEFCDC6D96CB661D23F08048B9BE7FE045BB5FE907056
              B826DC139E096F852FC277E16702EE31C61CE6B286B5D8C016364773B2AEDFE2
              460A3C2002978487C23B61B6CEC026B6F181AF4162C70ADC2947E785C7C2B744
              10197925DC17168505E198B05F98EB32B249574076B8C7187398CB1AD662035B
              3160F8C227BEE150153B54E06E19BD2CBC4C1CBFD1DF3785D3C2BE16C78D73B0
              854D6CE3238A85035CE0D42B7488C03332F43C38F9ACDFEF0827856D8D84AB11
              2FD8C107BEF0896F8B8513DCB2B65B045242D7851F9DD18FBADE100EFF03517D
              01C1371CE08250B8C111AE6BD6D404EED502BA9AA3F540BF1F158E77F76EFD25
              91A7647745B852B10F1738991F5CE1BC2AB224308AA38DE36C4BB7382790F15A
              077DDA1810DB42E49ECA1A38311F8EF85F23B24FE00E4DBCDB2D78AF2BDD2DA6
              BE2490ACE23005CE5B05E2EB43E7BF9645F382235CF1037734AC6E7FE93E48AB
              66E257E15C2682EB9141C4D6325E1B4F03065738B30E0D5981F31AF8D44DE244
              113377A18714D17659B566105BB94C0FB9878DB411C119816898CF95E85237E1
              85AEBB1203073B5288C0C8EB8424F7C86EAEFBD54A747B678F6E98AE27538039
              B5AD06CE70C7DF524EE0723778B5606C3D4A3412A591102C48510DA988384690
              6B22E18EADE59C403A1783471A043ED21CB2C97568899A2484DD50FAB24456E3
              F3D85725B60977E6AF940496CAC119B453C4718F6B5F5B672C7D66D8EF6C0391
              20F75C39E80432FAECCB24DC470B8CFB1DA5938AAD753EC611111B9603E4128D
              C1F53C976E5CD797C92681B912B5389714E589B15CE7F3734379A5E37E8E201B
              493A43B1D1D857CC2C992F9569B1444B4D0662364EB4E351CDCF891DBBD3D64E
              2269B37139E22706B4D658E278B1C994B6091BC9755167CCD9B1C0B4646BE7D7
              F85C7A2DF75A0556B789D246DF27902CA5642C302DD11A5982E760D5F6CE9CE8
              EA46CFA2A147B5D8DD2831B238B4441116EDB8ABFA40510B0CBC9B8E6A4CAC1D
              B65D46CE8EBB5FDA61B95F7A06DDA0DC48A21D6727DAF42B54AEC12CC857F361
              1BE3B9D7A58BA114211337603B457C249CDB36E888E91C6C953A236B62861D8C
              51AF4B8E5EFAC2FB444E6E87B6CFBCBE96ED736B6E0B21AB80B196A357FAACF9
              A07E42EB47BFF0DAE8A43F59C4C84DF6A3531439E9CF8651E8643FFCE636D649
              7EBAEF3B36FDFFFF7CF10BE2D4AEBF00FE64F03364B293CC0000000049454E44
              AE426082}
          end
          object Label7: TLabel [7]
            Left = 423
            Top = 13
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
          object Label11: TLabel [10]
            Left = 738
            Top = 13
            Width = 65
            Height = 13
            Caption = #21333#25454#29366#24577#65306
            Transparent = True
          end
          object lbStatus: TLabel [11]
            Left = 798
            Top = 11
            Width = 96
            Height = 19
            AutoSize = False
            Caption = #26032#21333
            Font.Charset = GB2312_CHARSET
            Font.Color = clRed
            Font.Height = -17
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Image3: TImage [12]
            Left = 934
            Top = 3
            Width = 52
            Height = 29
            Anchors = [akTop, akRight]
            AutoSize = True
            Center = True
          end
          object Label12: TLabel [13]
            Left = 552
            Top = 13
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
          inherited txDescription: TcxDBTextEdit
            DataBinding.DataField = 'FDESCRIPTION'
            TabOrder = 10
            Width = 928
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 312
            DataBinding.DataField = 'FBIZDATE'
            Width = 95
          end
          inherited cxFNumber: TcxDBMaskEdit
            DataBinding.DataField = 'FNUMBER'
          end
          inherited txtName: TcxDBTextEdit
            TabOrder = 8
          end
          inherited cxbtnNUmber: TcxButtonEdit
            TabOrder = 7
          end
          object CFCHECKTYPEName: TcxDBButtonEdit
            Left = 454
            Top = 9
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
            Width = 85
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
            Left = 604
            Top = 9
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
            Width = 85
          end
        end
      end
    end
  end
  inherited pnlStock: TPanel
    Top = 443
    Width = 1028
    inherited Panel2: TPanel
      Width = 515
      inherited cxpageReceive: TcxPageControl
        Width = 513
        ClientRectRight = 513
        inherited cxTabRecStock: TcxTabSheet
          inherited cxGrid5: TcxGrid
            Width = 510
          end
        end
      end
    end
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
      48
      0)
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
  end
  inherited dsMaster: TDataSource
    Left = 600
    Top = 7
  end
  inherited cdsDetail: TClientDataSet
    ProviderName = 'DataSetProvider2'
    RemoteServer = CliDM.SckCon
    AfterInsert = cdsDetailAfterInsert
    AfterDelete = cdsDetailAfterDelete
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
      OnChange = cdsDetailCFMATERIALIDChange
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
      FieldName = 'CFASSISTPROPERTYNUM'
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
    AfterInsert = cdsDetailAmountAfterInsert
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
  end
  inherited cdsSizeGE: TClientDataSet
    Left = 784
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
    Left = 864
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
end
